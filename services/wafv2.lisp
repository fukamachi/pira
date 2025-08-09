(uiop/package:define-package #:pira/wafv2 (:use)
                             (:export #:apikey #:apikey-summaries
                              #:apikey-summary #:apikey-token-domains
                              #:apikey-version #:asn
                              #:awsmanaged-rules-acfprule-set
                              #:awsmanaged-rules-atprule-set
                              #:awsmanaged-rules-anti-ddo-srule-set
                              #:awsmanaged-rules-bot-control-rule-set
                              #:awswaf-20190729 #:action #:action-condition
                              #:action-value #:address-field #:address-fields
                              #:all #:all-query-arguments #:allow-action
                              #:and-statement #:application-attribute
                              #:application-attributes #:application-config
                              #:asn-list #:asn-match-statement
                              #:associate-web-acl #:associate-web-aclrequest
                              #:associate-web-aclresponse
                              #:associated-resource-type #:association-config
                              #:attribute-name #:attribute-value
                              #:attribute-values #:block-action #:body
                              #:body-parsing-fallback-behavior #:boolean
                              #:byte-match-statement #:capacity-unit
                              #:captcha-action #:captcha-config
                              #:captcha-response #:challenge-action
                              #:challenge-config #:challenge-response
                              #:check-capacity #:check-capacity-request
                              #:check-capacity-response #:client-side-action
                              #:client-side-action-config #:comparison-operator
                              #:condition #:conditions #:consumed-capacity
                              #:cookie-match-pattern #:cookie-names #:cookies
                              #:count-action #:country #:country-code
                              #:country-codes #:create-apikey
                              #:create-apikey-request #:create-apikey-response
                              #:create-ipset #:create-ipset-request
                              #:create-ipset-response
                              #:create-regex-pattern-set
                              #:create-regex-pattern-set-request
                              #:create-regex-pattern-set-response
                              #:create-rule-group #:create-rule-group-request
                              #:create-rule-group-response #:create-web-acl
                              #:create-web-aclrequest #:create-web-aclresponse
                              #:creation-path-string #:custom-httpheader
                              #:custom-httpheader-name
                              #:custom-httpheader-value #:custom-httpheaders
                              #:custom-request-handling #:custom-response
                              #:custom-response-bodies #:custom-response-body
                              #:data-protection #:data-protection-action
                              #:data-protection-config #:data-protections
                              #:default-action #:delete-apikey
                              #:delete-apikey-request #:delete-apikey-response
                              #:delete-firewall-manager-rule-groups
                              #:delete-firewall-manager-rule-groups-request
                              #:delete-firewall-manager-rule-groups-response
                              #:delete-ipset #:delete-ipset-request
                              #:delete-ipset-response
                              #:delete-logging-configuration
                              #:delete-logging-configuration-request
                              #:delete-logging-configuration-response
                              #:delete-permission-policy
                              #:delete-permission-policy-request
                              #:delete-permission-policy-response
                              #:delete-regex-pattern-set
                              #:delete-regex-pattern-set-request
                              #:delete-regex-pattern-set-response
                              #:delete-rule-group #:delete-rule-group-request
                              #:delete-rule-group-response #:delete-web-acl
                              #:delete-web-aclrequest #:delete-web-aclresponse
                              #:describe-all-managed-products
                              #:describe-all-managed-products-request
                              #:describe-all-managed-products-response
                              #:describe-managed-products-by-vendor
                              #:describe-managed-products-by-vendor-request
                              #:describe-managed-products-by-vendor-response
                              #:describe-managed-rule-group
                              #:describe-managed-rule-group-request
                              #:describe-managed-rule-group-response
                              #:disassociate-web-acl
                              #:disassociate-web-aclrequest
                              #:disassociate-web-aclresponse #:download-url
                              #:email-field #:enable-machine-learning
                              #:entity-description #:entity-id #:entity-name
                              #:error-message #:error-reason
                              #:evaluation-window-sec #:excluded-rule
                              #:excluded-rules #:failure-code #:failure-reason
                              #:failure-value #:fallback-behavior
                              #:field-identifier #:field-to-match
                              #:field-to-match-data #:field-to-protect
                              #:field-to-protect-key-name
                              #:field-to-protect-keys #:field-to-protect-type
                              #:filter #:filter-behavior #:filter-requirement
                              #:filters #:firewall-manager-rule-group
                              #:firewall-manager-rule-groups
                              #:firewall-manager-statement #:forwarded-ipconfig
                              #:forwarded-ipheader-name #:forwarded-ipposition
                              #:generate-mobile-sdk-release-url
                              #:generate-mobile-sdk-release-url-request
                              #:generate-mobile-sdk-release-url-response
                              #:geo-match-statement #:get-decrypted-apikey
                              #:get-decrypted-apikey-request
                              #:get-decrypted-apikey-response #:get-ipset
                              #:get-ipset-request #:get-ipset-response
                              #:get-logging-configuration
                              #:get-logging-configuration-request
                              #:get-logging-configuration-response
                              #:get-managed-rule-set
                              #:get-managed-rule-set-request
                              #:get-managed-rule-set-response
                              #:get-mobile-sdk-release
                              #:get-mobile-sdk-release-request
                              #:get-mobile-sdk-release-response
                              #:get-permission-policy
                              #:get-permission-policy-request
                              #:get-permission-policy-response
                              #:get-rate-based-statement-managed-keys
                              #:get-rate-based-statement-managed-keys-request
                              #:get-rate-based-statement-managed-keys-response
                              #:get-regex-pattern-set
                              #:get-regex-pattern-set-request
                              #:get-regex-pattern-set-response #:get-rule-group
                              #:get-rule-group-request
                              #:get-rule-group-response #:get-sampled-requests
                              #:get-sampled-requests-request
                              #:get-sampled-requests-response #:get-web-acl
                              #:get-web-aclfor-resource
                              #:get-web-aclfor-resource-request
                              #:get-web-aclfor-resource-response
                              #:get-web-aclrequest #:get-web-aclresponse
                              #:httpheader #:httpheaders #:httpmethod
                              #:httprequest #:httpversion
                              #:header-match-pattern #:header-name
                              #:header-names #:header-order #:header-value
                              #:headers #:ipaddress #:ipaddress-version
                              #:ipaddresses #:ipset #:ipset-forwarded-ipconfig
                              #:ipset-reference-statement #:ipset-summaries
                              #:ipset-summary #:ipstring
                              #:immunity-time-property #:inspection-level
                              #:ja3fingerprint #:ja4fingerprint #:json-body
                              #:json-match-pattern #:json-match-scope
                              #:json-pointer-path #:json-pointer-paths #:label
                              #:label-match-key #:label-match-scope
                              #:label-match-statement #:label-name
                              #:label-name-condition #:label-namespace
                              #:label-summaries #:label-summary #:labels
                              #:list-apikeys #:list-apikeys-request
                              #:list-apikeys-response
                              #:list-available-managed-rule-group-versions
                              #:list-available-managed-rule-group-versions-request
                              #:list-available-managed-rule-group-versions-response
                              #:list-available-managed-rule-groups
                              #:list-available-managed-rule-groups-request
                              #:list-available-managed-rule-groups-response
                              #:list-ipsets #:list-ipsets-request
                              #:list-ipsets-response
                              #:list-logging-configurations
                              #:list-logging-configurations-request
                              #:list-logging-configurations-response
                              #:list-managed-rule-sets
                              #:list-managed-rule-sets-request
                              #:list-managed-rule-sets-response
                              #:list-max-items #:list-mobile-sdk-releases
                              #:list-mobile-sdk-releases-request
                              #:list-mobile-sdk-releases-response
                              #:list-regex-pattern-sets
                              #:list-regex-pattern-sets-request
                              #:list-regex-pattern-sets-response
                              #:list-resources-for-web-acl
                              #:list-resources-for-web-aclrequest
                              #:list-resources-for-web-aclresponse
                              #:list-rule-groups #:list-rule-groups-request
                              #:list-rule-groups-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:list-web-acls
                              #:list-web-acls-request #:list-web-acls-response
                              #:lock-token #:log-destination-configs
                              #:log-scope #:log-type #:logging-configuration
                              #:logging-configurations #:logging-filter
                              #:login-path-string #:low-reputation-mode
                              #:managed-product-descriptor
                              #:managed-product-descriptors
                              #:managed-rule-group-config
                              #:managed-rule-group-configs
                              #:managed-rule-group-statement
                              #:managed-rule-group-summaries
                              #:managed-rule-group-summary
                              #:managed-rule-group-version
                              #:managed-rule-group-versions #:managed-rule-set
                              #:managed-rule-set-summaries
                              #:managed-rule-set-summary
                              #:managed-rule-set-version #:map-match-scope
                              #:method #:metric-name #:mobile-sdk-release
                              #:next-marker #:none-action #:not-statement
                              #:on-source-ddo-sprotection-config #:or-statement
                              #:output-url #:override-action
                              #:oversize-handling #:pagination-limit
                              #:parameter-exception-field
                              #:parameter-exception-parameter #:password-field
                              #:payload-type #:phone-number-field
                              #:phone-number-fields #:platform #:policy-string
                              #:population-size #:positional-constraint
                              #:product-description #:product-id #:product-link
                              #:product-title #:published-versions
                              #:put-logging-configuration
                              #:put-logging-configuration-request
                              #:put-logging-configuration-response
                              #:put-managed-rule-set-versions
                              #:put-managed-rule-set-versions-request
                              #:put-managed-rule-set-versions-response
                              #:put-permission-policy
                              #:put-permission-policy-request
                              #:put-permission-policy-response #:query-string
                              #:rate-based-statement
                              #:rate-based-statement-aggregate-key-type
                              #:rate-based-statement-custom-key
                              #:rate-based-statement-custom-keys
                              #:rate-based-statement-managed-keys-ipset
                              #:rate-limit #:rate-limit-asn #:rate-limit-cookie
                              #:rate-limit-forwarded-ip #:rate-limit-httpmethod
                              #:rate-limit-header #:rate-limit-ip
                              #:rate-limit-ja3fingerprint
                              #:rate-limit-ja4fingerprint
                              #:rate-limit-label-namespace
                              #:rate-limit-query-argument
                              #:rate-limit-query-string #:rate-limit-uri-path
                              #:redacted-fields #:regex #:regex-match-statement
                              #:regex-pattern-set
                              #:regex-pattern-set-reference-statement
                              #:regex-pattern-set-summaries
                              #:regex-pattern-set-summary
                              #:regex-pattern-string
                              #:registration-page-path-string
                              #:regular-expression-list #:release-notes
                              #:release-summaries #:release-summary
                              #:request-body
                              #:request-body-associated-resource-type-config
                              #:request-inspection #:request-inspection-acfp
                              #:resource-arn #:resource-arns #:resource-type
                              #:response-code #:response-content
                              #:response-content-type #:response-inspection
                              #:response-inspection-body-contains
                              #:response-inspection-body-contains-failure-strings
                              #:response-inspection-body-contains-success-strings
                              #:response-inspection-header
                              #:response-inspection-header-failure-values
                              #:response-inspection-header-name
                              #:response-inspection-header-success-values
                              #:response-inspection-json
                              #:response-inspection-json-failure-values
                              #:response-inspection-json-success-values
                              #:response-inspection-status-code
                              #:response-inspection-status-code-failure-codes
                              #:response-inspection-status-code-success-codes
                              #:response-status-code #:rule #:rule-action
                              #:rule-action-override #:rule-action-overrides
                              #:rule-group #:rule-group-reference-statement
                              #:rule-group-summaries #:rule-group-summary
                              #:rule-priority #:rule-summaries #:rule-summary
                              #:rules #:sample-weight #:sampled-httprequest
                              #:sampled-httprequests #:scope #:search-string
                              #:sensitivity-level #:sensitivity-to-act
                              #:single-cookie-name #:single-header
                              #:single-query-argument #:size
                              #:size-constraint-statement
                              #:size-inspection-limit #:solve-timestamp
                              #:source-type #:sqli-match-statement #:statement
                              #:statements #:string #:success-code
                              #:success-value #:tag #:tag-info-for-resource
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value
                              #:text-transformation
                              #:text-transformation-priority
                              #:text-transformation-type #:text-transformations
                              #:time-window #:time-window-day
                              #:time-window-second #:timestamp #:token-domain
                              #:token-domains #:uristring #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-ipset
                              #:update-ipset-request #:update-ipset-response
                              #:update-managed-rule-set-version-expiry-date
                              #:update-managed-rule-set-version-expiry-date-request
                              #:update-managed-rule-set-version-expiry-date-response
                              #:update-regex-pattern-set
                              #:update-regex-pattern-set-request
                              #:update-regex-pattern-set-response
                              #:update-rule-group #:update-rule-group-request
                              #:update-rule-group-response #:update-web-acl
                              #:update-web-aclrequest #:update-web-aclresponse
                              #:uri-fragment #:uri-path #:usage-of-action
                              #:username-field #:vendor-name
                              #:version-key-string #:version-to-publish
                              #:versions-to-publish #:visibility-config
                              #:wafassociated-item-exception
                              #:wafconfiguration-warning-exception
                              #:wafduplicate-item-exception
                              #:wafexpired-managed-rule-group-version-exception
                              #:wafinternal-error-exception
                              #:wafinvalid-operation-exception
                              #:wafinvalid-parameter-exception
                              #:wafinvalid-permission-policy-exception
                              #:wafinvalid-resource-exception
                              #:waflimits-exceeded-exception
                              #:waflog-destination-permission-issue-exception
                              #:wafnonexistent-item-exception
                              #:wafoptimistic-lock-exception
                              #:wafservice-linked-role-error-exception
                              #:wafsubscription-not-found-exception
                              #:waftag-operation-exception
                              #:waftag-operation-internal-error-exception
                              #:wafunavailable-entity-exception
                              #:wafunsupported-aggregate-key-type-exception
                              #:web-acl #:web-aclsummaries #:web-aclsummary
                              #:xss-match-statement))
(common-lisp:in-package #:pira/wafv2)

(smithy/sdk/service:define-service awswaf-20190729 :shape-name
                                   "AWSWAF_20190729" :version "2019-07-29"
                                   :title "AWS WAFV2" :xml-namespace
                                   '(:uri
                                     "http://waf.amazonaws.com/doc/2019-07-29/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "WAFV2")
                                      ("arnNamespace" . "wafv2")
                                      ("cloudFormationName" . "WAFv2")
                                      ("cloudTrailEventSource"
                                       . "wafv2.amazonaws.com")
                                      ("endpointPrefix" . "wafv2"))
                                     ("aws.auth#sigv4" ("name" . "wafv2"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type apikey smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list apikey-summaries :member apikey-summary)

(smithy/sdk/shapes:define-structure apikey-summary common-lisp:nil
                                    ((token-domains :target-type token-domains
                                      :member-name "TokenDomains")
                                     (apikey :target-type apikey :member-name
                                      "APIKey")
                                     (creation-timestamp :target-type timestamp
                                      :member-name "CreationTimestamp")
                                     (version :target-type apikey-version
                                      :member-name "Version"))
                                    (:shape-name "APIKeySummary"))

(smithy/sdk/shapes:define-list apikey-token-domains :member token-domain)

(smithy/sdk/shapes:define-type apikey-version smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type asn smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure awsmanaged-rules-acfprule-set
                                    common-lisp:nil
                                    ((creation-path :target-type
                                      creation-path-string :required
                                      common-lisp:t :member-name
                                      "CreationPath")
                                     (registration-page-path :target-type
                                      registration-page-path-string :required
                                      common-lisp:t :member-name
                                      "RegistrationPagePath")
                                     (request-inspection :target-type
                                      request-inspection-acfp :required
                                      common-lisp:t :member-name
                                      "RequestInspection")
                                     (response-inspection :target-type
                                      response-inspection :member-name
                                      "ResponseInspection")
                                     (enable-regex-in-path :target-type boolean
                                      :member-name "EnableRegexInPath"))
                                    (:shape-name "AWSManagedRulesACFPRuleSet"))

(smithy/sdk/shapes:define-structure awsmanaged-rules-atprule-set
                                    common-lisp:nil
                                    ((login-path :target-type string :required
                                      common-lisp:t :member-name "LoginPath")
                                     (request-inspection :target-type
                                      request-inspection :member-name
                                      "RequestInspection")
                                     (response-inspection :target-type
                                      response-inspection :member-name
                                      "ResponseInspection")
                                     (enable-regex-in-path :target-type boolean
                                      :member-name "EnableRegexInPath"))
                                    (:shape-name "AWSManagedRulesATPRuleSet"))

(smithy/sdk/shapes:define-structure awsmanaged-rules-anti-ddo-srule-set
                                    common-lisp:nil
                                    ((client-side-action-config :target-type
                                      client-side-action-config :required
                                      common-lisp:t :member-name
                                      "ClientSideActionConfig")
                                     (sensitivity-to-block :target-type
                                      sensitivity-to-act :member-name
                                      "SensitivityToBlock"))
                                    (:shape-name
                                     "AWSManagedRulesAntiDDoSRuleSet"))

(smithy/sdk/shapes:define-structure awsmanaged-rules-bot-control-rule-set
                                    common-lisp:nil
                                    ((inspection-level :target-type
                                      inspection-level :required common-lisp:t
                                      :member-name "InspectionLevel")
                                     (enable-machine-learning :target-type
                                      enable-machine-learning :member-name
                                      "EnableMachineLearning"))
                                    (:shape-name
                                     "AWSManagedRulesBotControlRuleSet"))

(smithy/sdk/shapes:define-type action smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure action-condition common-lisp:nil
                                    ((action :target-type action-value
                                      :required common-lisp:t :member-name
                                      "Action"))
                                    (:shape-name "ActionCondition"))

(smithy/sdk/shapes:define-enum action-value
    common-lisp:nil
  (:allow "ALLOW")
  (:block "BLOCK")
  (:count "COUNT")
  (:captcha "CAPTCHA")
  (:challenge "CHALLENGE")
  (:excluded-as-count "EXCLUDED_AS_COUNT"))

(smithy/sdk/shapes:define-structure address-field common-lisp:nil
                                    ((identifier :target-type field-identifier
                                      :required common-lisp:t :member-name
                                      "Identifier"))
                                    (:shape-name "AddressField"))

(smithy/sdk/shapes:define-list address-fields :member address-field)

(smithy/sdk/shapes:define-structure all common-lisp:nil common-lisp:nil
                                    (:shape-name "All"))

(smithy/sdk/shapes:define-structure all-query-arguments common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "AllQueryArguments"))

(smithy/sdk/shapes:define-structure allow-action common-lisp:nil
                                    ((custom-request-handling :target-type
                                      custom-request-handling :member-name
                                      "CustomRequestHandling"))
                                    (:shape-name "AllowAction"))

(smithy/sdk/shapes:define-structure and-statement common-lisp:nil
                                    ((statements :target-type statements
                                      :required common-lisp:t :member-name
                                      "Statements"))
                                    (:shape-name "AndStatement"))

(smithy/sdk/shapes:define-structure application-attribute common-lisp:nil
                                    ((name :target-type attribute-name
                                      :member-name "Name")
                                     (values :target-type attribute-values
                                      :member-name "Values"))
                                    (:shape-name "ApplicationAttribute"))

(smithy/sdk/shapes:define-list application-attributes :member
                               application-attribute)

(smithy/sdk/shapes:define-structure application-config common-lisp:nil
                                    ((attributes :target-type
                                      application-attributes :member-name
                                      "Attributes"))
                                    (:shape-name "ApplicationConfig"))

(smithy/sdk/shapes:define-list asn-list :member asn)

(smithy/sdk/shapes:define-structure asn-match-statement common-lisp:nil
                                    ((asn-list :target-type asn-list :required
                                      common-lisp:t :member-name "AsnList")
                                     (forwarded-ipconfig :target-type
                                      forwarded-ipconfig :member-name
                                      "ForwardedIPConfig"))
                                    (:shape-name "AsnMatchStatement"))

(smithy/sdk/shapes:define-input associate-web-aclrequest common-lisp:nil
                                ((web-aclarn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "WebACLArn")
                                 (resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "AssociateWebACLRequest"))

(smithy/sdk/shapes:define-output associate-web-aclresponse common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AssociateWebACLResponse"))

(smithy/sdk/shapes:define-enum associated-resource-type
    common-lisp:nil
  (:cloudfront "CLOUDFRONT")
  (:api-gateway "API_GATEWAY")
  (:cognito-user-pool "COGNITO_USER_POOL")
  (:app-runner-service "APP_RUNNER_SERVICE")
  (:verified-access-instance "VERIFIED_ACCESS_INSTANCE"))

(smithy/sdk/shapes:define-structure association-config common-lisp:nil
                                    ((request-body :target-type request-body
                                      :member-name "RequestBody"))
                                    (:shape-name "AssociationConfig"))

(smithy/sdk/shapes:define-type attribute-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list attribute-values :member attribute-value)

(smithy/sdk/shapes:define-structure block-action common-lisp:nil
                                    ((custom-response :target-type
                                      custom-response :member-name
                                      "CustomResponse"))
                                    (:shape-name "BlockAction"))

(smithy/sdk/shapes:define-structure body common-lisp:nil
                                    ((oversize-handling :target-type
                                      oversize-handling :member-name
                                      "OversizeHandling"))
                                    (:shape-name "Body"))

(smithy/sdk/shapes:define-enum body-parsing-fallback-behavior
    common-lisp:nil
  (:match "MATCH")
  (:no-match "NO_MATCH")
  (:evaluate-as-string "EVALUATE_AS_STRING"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure byte-match-statement common-lisp:nil
                                    ((search-string :target-type search-string
                                      :required common-lisp:t :member-name
                                      "SearchString")
                                     (field-to-match :target-type
                                      field-to-match :required common-lisp:t
                                      :member-name "FieldToMatch")
                                     (text-transformations :target-type
                                      text-transformations :required
                                      common-lisp:t :member-name
                                      "TextTransformations")
                                     (positional-constraint :target-type
                                      positional-constraint :required
                                      common-lisp:t :member-name
                                      "PositionalConstraint"))
                                    (:shape-name "ByteMatchStatement"))

(smithy/sdk/shapes:define-type capacity-unit smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure captcha-action common-lisp:nil
                                    ((custom-request-handling :target-type
                                      custom-request-handling :member-name
                                      "CustomRequestHandling"))
                                    (:shape-name "CaptchaAction"))

(smithy/sdk/shapes:define-structure captcha-config common-lisp:nil
                                    ((immunity-time-property :target-type
                                      immunity-time-property :member-name
                                      "ImmunityTimeProperty"))
                                    (:shape-name "CaptchaConfig"))

(smithy/sdk/shapes:define-structure captcha-response common-lisp:nil
                                    ((response-code :target-type response-code
                                      :member-name "ResponseCode")
                                     (solve-timestamp :target-type
                                      solve-timestamp :member-name
                                      "SolveTimestamp")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "FailureReason"))
                                    (:shape-name "CaptchaResponse"))

(smithy/sdk/shapes:define-structure challenge-action common-lisp:nil
                                    ((custom-request-handling :target-type
                                      custom-request-handling :member-name
                                      "CustomRequestHandling"))
                                    (:shape-name "ChallengeAction"))

(smithy/sdk/shapes:define-structure challenge-config common-lisp:nil
                                    ((immunity-time-property :target-type
                                      immunity-time-property :member-name
                                      "ImmunityTimeProperty"))
                                    (:shape-name "ChallengeConfig"))

(smithy/sdk/shapes:define-structure challenge-response common-lisp:nil
                                    ((response-code :target-type response-code
                                      :member-name "ResponseCode")
                                     (solve-timestamp :target-type
                                      solve-timestamp :member-name
                                      "SolveTimestamp")
                                     (failure-reason :target-type
                                      failure-reason :member-name
                                      "FailureReason"))
                                    (:shape-name "ChallengeResponse"))

(smithy/sdk/shapes:define-input check-capacity-request common-lisp:nil
                                ((scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (rules :target-type rules :required
                                  common-lisp:t :member-name "Rules"))
                                (:shape-name "CheckCapacityRequest"))

(smithy/sdk/shapes:define-output check-capacity-response common-lisp:nil
                                 ((capacity :target-type consumed-capacity
                                   :member-name "Capacity"))
                                 (:shape-name "CheckCapacityResponse"))

(smithy/sdk/shapes:define-structure client-side-action common-lisp:nil
                                    ((usage-of-action :target-type
                                      usage-of-action :required common-lisp:t
                                      :member-name "UsageOfAction")
                                     (sensitivity :target-type
                                      sensitivity-to-act :member-name
                                      "Sensitivity")
                                     (exempt-uri-regular-expressions
                                      :target-type regular-expression-list
                                      :member-name
                                      "ExemptUriRegularExpressions"))
                                    (:shape-name "ClientSideAction"))

(smithy/sdk/shapes:define-structure client-side-action-config common-lisp:nil
                                    ((challenge :target-type client-side-action
                                      :required common-lisp:t :member-name
                                      "Challenge"))
                                    (:shape-name "ClientSideActionConfig"))

(smithy/sdk/shapes:define-enum comparison-operator
    common-lisp:nil
  (:eq "EQ")
  (:ne "NE")
  (:le "LE")
  (:lt "LT")
  (:ge "GE")
  (:gt "GT"))

(smithy/sdk/shapes:define-structure condition common-lisp:nil
                                    ((action-condition :target-type
                                      action-condition :member-name
                                      "ActionCondition")
                                     (label-name-condition :target-type
                                      label-name-condition :member-name
                                      "LabelNameCondition"))
                                    (:shape-name "Condition"))

(smithy/sdk/shapes:define-list conditions :member condition)

(smithy/sdk/shapes:define-type consumed-capacity smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure cookie-match-pattern common-lisp:nil
                                    ((all :target-type all :member-name "All")
                                     (included-cookies :target-type
                                      cookie-names :member-name
                                      "IncludedCookies")
                                     (excluded-cookies :target-type
                                      cookie-names :member-name
                                      "ExcludedCookies"))
                                    (:shape-name "CookieMatchPattern"))

(smithy/sdk/shapes:define-list cookie-names :member single-cookie-name)

(smithy/sdk/shapes:define-structure cookies common-lisp:nil
                                    ((match-pattern :target-type
                                      cookie-match-pattern :required
                                      common-lisp:t :member-name
                                      "MatchPattern")
                                     (match-scope :target-type map-match-scope
                                      :required common-lisp:t :member-name
                                      "MatchScope")
                                     (oversize-handling :target-type
                                      oversize-handling :required common-lisp:t
                                      :member-name "OversizeHandling"))
                                    (:shape-name "Cookies"))

(smithy/sdk/shapes:define-structure count-action common-lisp:nil
                                    ((custom-request-handling :target-type
                                      custom-request-handling :member-name
                                      "CustomRequestHandling"))
                                    (:shape-name "CountAction"))

(smithy/sdk/shapes:define-type country smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum country-code
    common-lisp:nil
  (:af "AF")
  (:ax "AX")
  (:al "AL")
  (:dz "DZ")
  (:as "AS")
  (:ad "AD")
  (:ao "AO")
  (:ai "AI")
  (:aq "AQ")
  (:ag "AG")
  (:ar "AR")
  (:am "AM")
  (:aw "AW")
  (:au "AU")
  (:at "AT")
  (:az "AZ")
  (:bs "BS")
  (:bh "BH")
  (:bd "BD")
  (:bb "BB")
  (:by "BY")
  (:be "BE")
  (:bz "BZ")
  (:bj "BJ")
  (:bm "BM")
  (:bt "BT")
  (:bo "BO")
  (:bq "BQ")
  (:ba "BA")
  (:bw "BW")
  (:bv "BV")
  (:br "BR")
  (:io "IO")
  (:bn "BN")
  (:bg "BG")
  (:bf "BF")
  (:bi "BI")
  (:kh "KH")
  (:cm "CM")
  (:ca "CA")
  (:cv "CV")
  (:ky "KY")
  (:cf "CF")
  (:td "TD")
  (:cl "CL")
  (:cn "CN")
  (:cx "CX")
  (:cc "CC")
  (:co "CO")
  (:km "KM")
  (:cg "CG")
  (:cd "CD")
  (:ck "CK")
  (:cr "CR")
  (:ci "CI")
  (:hr "HR")
  (:cu "CU")
  (:cw "CW")
  (:cy "CY")
  (:cz "CZ")
  (:dk "DK")
  (:dj "DJ")
  (:dm "DM")
  (:do "DO")
  (:ec "EC")
  (:eg "EG")
  (:sv "SV")
  (:gq "GQ")
  (:er "ER")
  (:ee "EE")
  (:et "ET")
  (:fk "FK")
  (:fo "FO")
  (:fj "FJ")
  (:fi "FI")
  (:fr "FR")
  (:gf "GF")
  (:pf "PF")
  (:tf "TF")
  (:ga "GA")
  (:gm "GM")
  (:ge "GE")
  (:de "DE")
  (:gh "GH")
  (:gi "GI")
  (:gr "GR")
  (:gl "GL")
  (:gd "GD")
  (:gp "GP")
  (:gu "GU")
  (:gt "GT")
  (:gg "GG")
  (:gn "GN")
  (:gw "GW")
  (:gy "GY")
  (:ht "HT")
  (:hm "HM")
  (:va "VA")
  (:hn "HN")
  (:hk "HK")
  (:hu "HU")
  (:is "IS")
  (:in "IN")
  (:id "ID")
  (:ir "IR")
  (:iq "IQ")
  (:ie "IE")
  (:im "IM")
  (:il "IL")
  (:it "IT")
  (:jm "JM")
  (:jp "JP")
  (:je "JE")
  (:jo "JO")
  (:kz "KZ")
  (:ke "KE")
  (:ki "KI")
  (:kp "KP")
  (:kr "KR")
  (:kw "KW")
  (:kg "KG")
  (:la "LA")
  (:lv "LV")
  (:lb "LB")
  (:ls "LS")
  (:lr "LR")
  (:ly "LY")
  (:li "LI")
  (:lt "LT")
  (:lu "LU")
  (:mo "MO")
  (:mk "MK")
  (:mg "MG")
  (:mw "MW")
  (:my "MY")
  (:mv "MV")
  (:ml "ML")
  (:mt "MT")
  (:mh "MH")
  (:mq "MQ")
  (:mr "MR")
  (:mu "MU")
  (:yt "YT")
  (:mx "MX")
  (:fm "FM")
  (:md "MD")
  (:mc "MC")
  (:mn "MN")
  (:me "ME")
  (:ms "MS")
  (:ma "MA")
  (:mz "MZ")
  (:mm "MM")
  (:na "NA")
  (:nr "NR")
  (:np "NP")
  (:nl "NL")
  (:nc "NC")
  (:nz "NZ")
  (:ni "NI")
  (:ne "NE")
  (:ng "NG")
  (:nu "NU")
  (:nf "NF")
  (:mp "MP")
  (:no "NO")
  (:om "OM")
  (:pk "PK")
  (:pw "PW")
  (:ps "PS")
  (:pa "PA")
  (:pg "PG")
  (:py "PY")
  (:pe "PE")
  (:ph "PH")
  (:pn "PN")
  (:pl "PL")
  (:pt "PT")
  (:pr "PR")
  (:qa "QA")
  (:re "RE")
  (:ro "RO")
  (:ru "RU")
  (:rw "RW")
  (:bl "BL")
  (:sh "SH")
  (:kn "KN")
  (:lc "LC")
  (:mf "MF")
  (:pm "PM")
  (:vc "VC")
  (:ws "WS")
  (:sm "SM")
  (:st "ST")
  (:sa "SA")
  (:sn "SN")
  (:rs "RS")
  (:sc "SC")
  (:sl "SL")
  (:sg "SG")
  (:sx "SX")
  (:sk "SK")
  (:si "SI")
  (:sb "SB")
  (:so "SO")
  (:za "ZA")
  (:gs "GS")
  (:ss "SS")
  (:es "ES")
  (:lk "LK")
  (:sd "SD")
  (:sr "SR")
  (:sj "SJ")
  (:sz "SZ")
  (:se "SE")
  (:ch "CH")
  (:sy "SY")
  (:tw "TW")
  (:tj "TJ")
  (:tz "TZ")
  (:th "TH")
  (:tl "TL")
  (:tg "TG")
  (:tk "TK")
  (:to "TO")
  (:tt "TT")
  (:tn "TN")
  (:tr "TR")
  (:tm "TM")
  (:tc "TC")
  (:tv "TV")
  (:ug "UG")
  (:ua "UA")
  (:ae "AE")
  (:gb "GB")
  (:us "US")
  (:um "UM")
  (:uy "UY")
  (:uz "UZ")
  (:vu "VU")
  (:ve "VE")
  (:vn "VN")
  (:vg "VG")
  (:vi "VI")
  (:wf "WF")
  (:eh "EH")
  (:ye "YE")
  (:zm "ZM")
  (:zw "ZW")
  (:xk "XK"))

(smithy/sdk/shapes:define-list country-codes :member country-code)

(smithy/sdk/shapes:define-input create-apikey-request common-lisp:nil
                                ((scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (token-domains :target-type
                                  apikey-token-domains :required common-lisp:t
                                  :member-name "TokenDomains"))
                                (:shape-name "CreateAPIKeyRequest"))

(smithy/sdk/shapes:define-output create-apikey-response common-lisp:nil
                                 ((apikey :target-type apikey :member-name
                                   "APIKey"))
                                 (:shape-name "CreateAPIKeyResponse"))

(smithy/sdk/shapes:define-input create-ipset-request common-lisp:nil
                                ((name :target-type entity-name :required
                                  common-lisp:t :member-name "Name")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (description :target-type entity-description
                                  :member-name "Description")
                                 (ipaddress-version :target-type
                                  ipaddress-version :required common-lisp:t
                                  :member-name "IPAddressVersion")
                                 (addresses :target-type ipaddresses :required
                                  common-lisp:t :member-name "Addresses")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateIPSetRequest"))

(smithy/sdk/shapes:define-output create-ipset-response common-lisp:nil
                                 ((summary :target-type ipset-summary
                                   :member-name "Summary"))
                                 (:shape-name "CreateIPSetResponse"))

(smithy/sdk/shapes:define-input create-regex-pattern-set-request
                                common-lisp:nil
                                ((name :target-type entity-name :required
                                  common-lisp:t :member-name "Name")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (description :target-type entity-description
                                  :member-name "Description")
                                 (regular-expression-list :target-type
                                  regular-expression-list :required
                                  common-lisp:t :member-name
                                  "RegularExpressionList")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateRegexPatternSetRequest"))

(smithy/sdk/shapes:define-output create-regex-pattern-set-response
                                 common-lisp:nil
                                 ((summary :target-type
                                   regex-pattern-set-summary :member-name
                                   "Summary"))
                                 (:shape-name "CreateRegexPatternSetResponse"))

(smithy/sdk/shapes:define-input create-rule-group-request common-lisp:nil
                                ((name :target-type entity-name :required
                                  common-lisp:t :member-name "Name")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (capacity :target-type capacity-unit :required
                                  common-lisp:t :member-name "Capacity")
                                 (description :target-type entity-description
                                  :member-name "Description")
                                 (rules :target-type rules :member-name
                                  "Rules")
                                 (visibility-config :target-type
                                  visibility-config :required common-lisp:t
                                  :member-name "VisibilityConfig")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (custom-response-bodies :target-type
                                  custom-response-bodies :member-name
                                  "CustomResponseBodies"))
                                (:shape-name "CreateRuleGroupRequest"))

(smithy/sdk/shapes:define-output create-rule-group-response common-lisp:nil
                                 ((summary :target-type rule-group-summary
                                   :member-name "Summary"))
                                 (:shape-name "CreateRuleGroupResponse"))

(smithy/sdk/shapes:define-input create-web-aclrequest common-lisp:nil
                                ((name :target-type entity-name :required
                                  common-lisp:t :member-name "Name")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (default-action :target-type default-action
                                  :required common-lisp:t :member-name
                                  "DefaultAction")
                                 (description :target-type entity-description
                                  :member-name "Description")
                                 (rules :target-type rules :member-name
                                  "Rules")
                                 (visibility-config :target-type
                                  visibility-config :required common-lisp:t
                                  :member-name "VisibilityConfig")
                                 (data-protection-config :target-type
                                  data-protection-config :member-name
                                  "DataProtectionConfig")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (custom-response-bodies :target-type
                                  custom-response-bodies :member-name
                                  "CustomResponseBodies")
                                 (captcha-config :target-type captcha-config
                                  :member-name "CaptchaConfig")
                                 (challenge-config :target-type
                                  challenge-config :member-name
                                  "ChallengeConfig")
                                 (token-domains :target-type token-domains
                                  :member-name "TokenDomains")
                                 (association-config :target-type
                                  association-config :member-name
                                  "AssociationConfig")
                                 (on-source-ddo-sprotection-config :target-type
                                  on-source-ddo-sprotection-config :member-name
                                  "OnSourceDDoSProtectionConfig")
                                 (application-config :target-type
                                  application-config :member-name
                                  "ApplicationConfig"))
                                (:shape-name "CreateWebACLRequest"))

(smithy/sdk/shapes:define-output create-web-aclresponse common-lisp:nil
                                 ((summary :target-type web-aclsummary
                                   :member-name "Summary"))
                                 (:shape-name "CreateWebACLResponse"))

(smithy/sdk/shapes:define-type creation-path-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure custom-httpheader common-lisp:nil
                                    ((name :target-type custom-httpheader-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type
                                      custom-httpheader-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "CustomHTTPHeader"))

(smithy/sdk/shapes:define-type custom-httpheader-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-httpheader-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list custom-httpheaders :member custom-httpheader)

(smithy/sdk/shapes:define-structure custom-request-handling common-lisp:nil
                                    ((insert-headers :target-type
                                      custom-httpheaders :required
                                      common-lisp:t :member-name
                                      "InsertHeaders"))
                                    (:shape-name "CustomRequestHandling"))

(smithy/sdk/shapes:define-structure custom-response common-lisp:nil
                                    ((response-code :target-type
                                      response-status-code :required
                                      common-lisp:t :member-name
                                      "ResponseCode")
                                     (custom-response-body-key :target-type
                                      entity-name :member-name
                                      "CustomResponseBodyKey")
                                     (response-headers :target-type
                                      custom-httpheaders :member-name
                                      "ResponseHeaders"))
                                    (:shape-name "CustomResponse"))

(smithy/sdk/shapes:define-map custom-response-bodies :key entity-name :value
                              custom-response-body)

(smithy/sdk/shapes:define-structure custom-response-body common-lisp:nil
                                    ((content-type :target-type
                                      response-content-type :required
                                      common-lisp:t :member-name "ContentType")
                                     (content :target-type response-content
                                      :required common-lisp:t :member-name
                                      "Content"))
                                    (:shape-name "CustomResponseBody"))

(smithy/sdk/shapes:define-structure data-protection common-lisp:nil
                                    ((field :target-type field-to-protect
                                      :required common-lisp:t :member-name
                                      "Field")
                                     (action :target-type
                                      data-protection-action :required
                                      common-lisp:t :member-name "Action")
                                     (exclude-rule-match-details :target-type
                                      boolean :member-name
                                      "ExcludeRuleMatchDetails")
                                     (exclude-rate-based-details :target-type
                                      boolean :member-name
                                      "ExcludeRateBasedDetails"))
                                    (:shape-name "DataProtection"))

(smithy/sdk/shapes:define-enum data-protection-action
    common-lisp:nil
  (:substitution "SUBSTITUTION")
  (:hash "HASH"))

(smithy/sdk/shapes:define-structure data-protection-config common-lisp:nil
                                    ((data-protections :target-type
                                      data-protections :required common-lisp:t
                                      :member-name "DataProtections"))
                                    (:shape-name "DataProtectionConfig"))

(smithy/sdk/shapes:define-list data-protections :member data-protection)

(smithy/sdk/shapes:define-structure default-action common-lisp:nil
                                    ((block :target-type block-action
                                      :member-name "Block")
                                     (allow :target-type allow-action
                                      :member-name "Allow"))
                                    (:shape-name "DefaultAction"))

(smithy/sdk/shapes:define-input delete-apikey-request common-lisp:nil
                                ((scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (apikey :target-type apikey :required
                                  common-lisp:t :member-name "APIKey"))
                                (:shape-name "DeleteAPIKeyRequest"))

(smithy/sdk/shapes:define-output delete-apikey-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteAPIKeyResponse"))

(smithy/sdk/shapes:define-input delete-firewall-manager-rule-groups-request
                                common-lisp:nil
                                ((web-aclarn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "WebACLArn")
                                 (web-acllock-token :target-type lock-token
                                  :required common-lisp:t :member-name
                                  "WebACLLockToken"))
                                (:shape-name
                                 "DeleteFirewallManagerRuleGroupsRequest"))

(smithy/sdk/shapes:define-output delete-firewall-manager-rule-groups-response
                                 common-lisp:nil
                                 ((next-web-acllock-token :target-type
                                   lock-token :member-name
                                   "NextWebACLLockToken"))
                                 (:shape-name
                                  "DeleteFirewallManagerRuleGroupsResponse"))

(smithy/sdk/shapes:define-input delete-ipset-request common-lisp:nil
                                ((name :target-type entity-name :required
                                  common-lisp:t :member-name "Name")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (id :target-type entity-id :required
                                  common-lisp:t :member-name "Id")
                                 (lock-token :target-type lock-token :required
                                  common-lisp:t :member-name "LockToken"))
                                (:shape-name "DeleteIPSetRequest"))

(smithy/sdk/shapes:define-output delete-ipset-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteIPSetResponse"))

(smithy/sdk/shapes:define-input delete-logging-configuration-request
                                common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (log-type :target-type log-type :member-name
                                  "LogType")
                                 (log-scope :target-type log-scope :member-name
                                  "LogScope"))
                                (:shape-name
                                 "DeleteLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-logging-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-permission-policy-request
                                common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "DeletePermissionPolicyRequest"))

(smithy/sdk/shapes:define-output delete-permission-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeletePermissionPolicyResponse"))

(smithy/sdk/shapes:define-input delete-regex-pattern-set-request
                                common-lisp:nil
                                ((name :target-type entity-name :required
                                  common-lisp:t :member-name "Name")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (id :target-type entity-id :required
                                  common-lisp:t :member-name "Id")
                                 (lock-token :target-type lock-token :required
                                  common-lisp:t :member-name "LockToken"))
                                (:shape-name "DeleteRegexPatternSetRequest"))

(smithy/sdk/shapes:define-output delete-regex-pattern-set-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteRegexPatternSetResponse"))

(smithy/sdk/shapes:define-input delete-rule-group-request common-lisp:nil
                                ((name :target-type entity-name :required
                                  common-lisp:t :member-name "Name")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (id :target-type entity-id :required
                                  common-lisp:t :member-name "Id")
                                 (lock-token :target-type lock-token :required
                                  common-lisp:t :member-name "LockToken"))
                                (:shape-name "DeleteRuleGroupRequest"))

(smithy/sdk/shapes:define-output delete-rule-group-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteRuleGroupResponse"))

(smithy/sdk/shapes:define-input delete-web-aclrequest common-lisp:nil
                                ((name :target-type entity-name :required
                                  common-lisp:t :member-name "Name")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (id :target-type entity-id :required
                                  common-lisp:t :member-name "Id")
                                 (lock-token :target-type lock-token :required
                                  common-lisp:t :member-name "LockToken"))
                                (:shape-name "DeleteWebACLRequest"))

(smithy/sdk/shapes:define-output delete-web-aclresponse common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteWebACLResponse"))

(smithy/sdk/shapes:define-input describe-all-managed-products-request
                                common-lisp:nil
                                ((scope :target-type scope :required
                                  common-lisp:t :member-name "Scope"))
                                (:shape-name
                                 "DescribeAllManagedProductsRequest"))

(smithy/sdk/shapes:define-output describe-all-managed-products-response
                                 common-lisp:nil
                                 ((managed-products :target-type
                                   managed-product-descriptors :member-name
                                   "ManagedProducts"))
                                 (:shape-name
                                  "DescribeAllManagedProductsResponse"))

(smithy/sdk/shapes:define-input describe-managed-products-by-vendor-request
                                common-lisp:nil
                                ((vendor-name :target-type vendor-name
                                  :required common-lisp:t :member-name
                                  "VendorName")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope"))
                                (:shape-name
                                 "DescribeManagedProductsByVendorRequest"))

(smithy/sdk/shapes:define-output describe-managed-products-by-vendor-response
                                 common-lisp:nil
                                 ((managed-products :target-type
                                   managed-product-descriptors :member-name
                                   "ManagedProducts"))
                                 (:shape-name
                                  "DescribeManagedProductsByVendorResponse"))

(smithy/sdk/shapes:define-input describe-managed-rule-group-request
                                common-lisp:nil
                                ((vendor-name :target-type vendor-name
                                  :required common-lisp:t :member-name
                                  "VendorName")
                                 (name :target-type entity-name :required
                                  common-lisp:t :member-name "Name")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (version-name :target-type version-key-string
                                  :member-name "VersionName"))
                                (:shape-name "DescribeManagedRuleGroupRequest"))

(smithy/sdk/shapes:define-output describe-managed-rule-group-response
                                 common-lisp:nil
                                 ((version-name :target-type version-key-string
                                   :member-name "VersionName")
                                  (sns-topic-arn :target-type resource-arn
                                   :member-name "SnsTopicArn")
                                  (capacity :target-type capacity-unit
                                   :member-name "Capacity")
                                  (rules :target-type rule-summaries
                                   :member-name "Rules")
                                  (label-namespace :target-type label-name
                                   :member-name "LabelNamespace")
                                  (available-labels :target-type
                                   label-summaries :member-name
                                   "AvailableLabels")
                                  (consumed-labels :target-type label-summaries
                                   :member-name "ConsumedLabels"))
                                 (:shape-name
                                  "DescribeManagedRuleGroupResponse"))

(smithy/sdk/shapes:define-input disassociate-web-aclrequest common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "DisassociateWebACLRequest"))

(smithy/sdk/shapes:define-output disassociate-web-aclresponse common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DisassociateWebACLResponse"))

(smithy/sdk/shapes:define-type download-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure email-field common-lisp:nil
                                    ((identifier :target-type field-identifier
                                      :required common-lisp:t :member-name
                                      "Identifier"))
                                    (:shape-name "EmailField"))

(smithy/sdk/shapes:define-type enable-machine-learning
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type entity-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type evaluation-window-sec
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure excluded-rule common-lisp:nil
                                    ((name :target-type entity-name :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "ExcludedRule"))

(smithy/sdk/shapes:define-list excluded-rules :member excluded-rule)

(smithy/sdk/shapes:define-type failure-code smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum failure-reason
    common-lisp:nil
  (:token-missing "TOKEN_MISSING")
  (:token-expired "TOKEN_EXPIRED")
  (:token-invalid "TOKEN_INVALID")
  (:token-domain-mismatch "TOKEN_DOMAIN_MISMATCH"))

(smithy/sdk/shapes:define-type failure-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum fallback-behavior
    common-lisp:nil
  (:match "MATCH")
  (:no-match "NO_MATCH"))

(smithy/sdk/shapes:define-type field-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure field-to-match common-lisp:nil
                                    ((single-header :target-type single-header
                                      :member-name "SingleHeader")
                                     (single-query-argument :target-type
                                      single-query-argument :member-name
                                      "SingleQueryArgument")
                                     (all-query-arguments :target-type
                                      all-query-arguments :member-name
                                      "AllQueryArguments")
                                     (uri-path :target-type uri-path
                                      :member-name "UriPath")
                                     (query-string :target-type query-string
                                      :member-name "QueryString")
                                     (body :target-type body :member-name
                                      "Body")
                                     (method :target-type method :member-name
                                      "Method")
                                     (json-body :target-type json-body
                                      :member-name "JsonBody")
                                     (headers :target-type headers :member-name
                                      "Headers")
                                     (cookies :target-type cookies :member-name
                                      "Cookies")
                                     (header-order :target-type header-order
                                      :member-name "HeaderOrder")
                                     (ja3fingerprint :target-type
                                      ja3fingerprint :member-name
                                      "JA3Fingerprint")
                                     (ja4fingerprint :target-type
                                      ja4fingerprint :member-name
                                      "JA4Fingerprint")
                                     (uri-fragment :target-type uri-fragment
                                      :member-name "UriFragment"))
                                    (:shape-name "FieldToMatch"))

(smithy/sdk/shapes:define-type field-to-match-data
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure field-to-protect common-lisp:nil
                                    ((field-type :target-type
                                      field-to-protect-type :required
                                      common-lisp:t :member-name "FieldType")
                                     (field-keys :target-type
                                      field-to-protect-keys :member-name
                                      "FieldKeys"))
                                    (:shape-name "FieldToProtect"))

(smithy/sdk/shapes:define-type field-to-protect-key-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list field-to-protect-keys :member
                               field-to-protect-key-name)

(smithy/sdk/shapes:define-enum field-to-protect-type
    common-lisp:nil
  (:single-header "SINGLE_HEADER")
  (:single-cookie "SINGLE_COOKIE")
  (:single-query-argument "SINGLE_QUERY_ARGUMENT")
  (:query-string "QUERY_STRING")
  (:body "BODY"))

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((behavior :target-type filter-behavior
                                      :required common-lisp:t :member-name
                                      "Behavior")
                                     (requirement :target-type
                                      filter-requirement :required
                                      common-lisp:t :member-name "Requirement")
                                     (conditions :target-type conditions
                                      :required common-lisp:t :member-name
                                      "Conditions"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-enum filter-behavior
    common-lisp:nil
  (:keep "KEEP")
  (:drop "DROP"))

(smithy/sdk/shapes:define-enum filter-requirement
    common-lisp:nil
  (:meets-all "MEETS_ALL")
  (:meets-any "MEETS_ANY"))

(smithy/sdk/shapes:define-list filters :member filter)

(smithy/sdk/shapes:define-structure firewall-manager-rule-group common-lisp:nil
                                    ((name :target-type entity-name :required
                                      common-lisp:t :member-name "Name")
                                     (priority :target-type rule-priority
                                      :required common-lisp:t :member-name
                                      "Priority")
                                     (firewall-manager-statement :target-type
                                      firewall-manager-statement :required
                                      common-lisp:t :member-name
                                      "FirewallManagerStatement")
                                     (override-action :target-type
                                      override-action :required common-lisp:t
                                      :member-name "OverrideAction")
                                     (visibility-config :target-type
                                      visibility-config :required common-lisp:t
                                      :member-name "VisibilityConfig"))
                                    (:shape-name "FirewallManagerRuleGroup"))

(smithy/sdk/shapes:define-list firewall-manager-rule-groups :member
                               firewall-manager-rule-group)

(smithy/sdk/shapes:define-structure firewall-manager-statement common-lisp:nil
                                    ((managed-rule-group-statement :target-type
                                      managed-rule-group-statement :member-name
                                      "ManagedRuleGroupStatement")
                                     (rule-group-reference-statement
                                      :target-type
                                      rule-group-reference-statement
                                      :member-name
                                      "RuleGroupReferenceStatement"))
                                    (:shape-name "FirewallManagerStatement"))

(smithy/sdk/shapes:define-structure forwarded-ipconfig common-lisp:nil
                                    ((header-name :target-type
                                      forwarded-ipheader-name :required
                                      common-lisp:t :member-name "HeaderName")
                                     (fallback-behavior :target-type
                                      fallback-behavior :required common-lisp:t
                                      :member-name "FallbackBehavior"))
                                    (:shape-name "ForwardedIPConfig"))

(smithy/sdk/shapes:define-type forwarded-ipheader-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum forwarded-ipposition
    common-lisp:nil
  (:first "FIRST")
  (:last "LAST")
  (:any "ANY"))

(smithy/sdk/shapes:define-input generate-mobile-sdk-release-url-request
                                common-lisp:nil
                                ((platform :target-type platform :required
                                  common-lisp:t :member-name "Platform")
                                 (release-version :target-type
                                  version-key-string :required common-lisp:t
                                  :member-name "ReleaseVersion"))
                                (:shape-name
                                 "GenerateMobileSdkReleaseUrlRequest"))

(smithy/sdk/shapes:define-output generate-mobile-sdk-release-url-response
                                 common-lisp:nil
                                 ((url :target-type download-url :member-name
                                   "Url"))
                                 (:shape-name
                                  "GenerateMobileSdkReleaseUrlResponse"))

(smithy/sdk/shapes:define-structure geo-match-statement common-lisp:nil
                                    ((country-codes :target-type country-codes
                                      :member-name "CountryCodes")
                                     (forwarded-ipconfig :target-type
                                      forwarded-ipconfig :member-name
                                      "ForwardedIPConfig"))
                                    (:shape-name "GeoMatchStatement"))

(smithy/sdk/shapes:define-input get-decrypted-apikey-request common-lisp:nil
                                ((scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (apikey :target-type apikey :required
                                  common-lisp:t :member-name "APIKey"))
                                (:shape-name "GetDecryptedAPIKeyRequest"))

(smithy/sdk/shapes:define-output get-decrypted-apikey-response common-lisp:nil
                                 ((token-domains :target-type token-domains
                                   :member-name "TokenDomains")
                                  (creation-timestamp :target-type timestamp
                                   :member-name "CreationTimestamp"))
                                 (:shape-name "GetDecryptedAPIKeyResponse"))

(smithy/sdk/shapes:define-input get-ipset-request common-lisp:nil
                                ((name :target-type entity-name :required
                                  common-lisp:t :member-name "Name")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (id :target-type entity-id :required
                                  common-lisp:t :member-name "Id"))
                                (:shape-name "GetIPSetRequest"))

(smithy/sdk/shapes:define-output get-ipset-response common-lisp:nil
                                 ((ipset :target-type ipset :member-name
                                   "IPSet")
                                  (lock-token :target-type lock-token
                                   :member-name "LockToken"))
                                 (:shape-name "GetIPSetResponse"))

(smithy/sdk/shapes:define-input get-logging-configuration-request
                                common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (log-type :target-type log-type :member-name
                                  "LogType")
                                 (log-scope :target-type log-scope :member-name
                                  "LogScope"))
                                (:shape-name "GetLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-output get-logging-configuration-response
                                 common-lisp:nil
                                 ((logging-configuration :target-type
                                   logging-configuration :member-name
                                   "LoggingConfiguration"))
                                 (:shape-name
                                  "GetLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-input get-managed-rule-set-request common-lisp:nil
                                ((name :target-type entity-name :required
                                  common-lisp:t :member-name "Name")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (id :target-type entity-id :required
                                  common-lisp:t :member-name "Id"))
                                (:shape-name "GetManagedRuleSetRequest"))

(smithy/sdk/shapes:define-output get-managed-rule-set-response common-lisp:nil
                                 ((managed-rule-set :target-type
                                   managed-rule-set :member-name
                                   "ManagedRuleSet")
                                  (lock-token :target-type lock-token
                                   :member-name "LockToken"))
                                 (:shape-name "GetManagedRuleSetResponse"))

(smithy/sdk/shapes:define-input get-mobile-sdk-release-request common-lisp:nil
                                ((platform :target-type platform :required
                                  common-lisp:t :member-name "Platform")
                                 (release-version :target-type
                                  version-key-string :required common-lisp:t
                                  :member-name "ReleaseVersion"))
                                (:shape-name "GetMobileSdkReleaseRequest"))

(smithy/sdk/shapes:define-output get-mobile-sdk-release-response
                                 common-lisp:nil
                                 ((mobile-sdk-release :target-type
                                   mobile-sdk-release :member-name
                                   "MobileSdkRelease"))
                                 (:shape-name "GetMobileSdkReleaseResponse"))

(smithy/sdk/shapes:define-input get-permission-policy-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "GetPermissionPolicyRequest"))

(smithy/sdk/shapes:define-output get-permission-policy-response common-lisp:nil
                                 ((policy :target-type policy-string
                                   :member-name "Policy"))
                                 (:shape-name "GetPermissionPolicyResponse"))

(smithy/sdk/shapes:define-input get-rate-based-statement-managed-keys-request
                                common-lisp:nil
                                ((scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (web-aclname :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "WebACLName")
                                 (web-aclid :target-type entity-id :required
                                  common-lisp:t :member-name "WebACLId")
                                 (rule-group-rule-name :target-type entity-name
                                  :member-name "RuleGroupRuleName")
                                 (rule-name :target-type entity-name :required
                                  common-lisp:t :member-name "RuleName"))
                                (:shape-name
                                 "GetRateBasedStatementManagedKeysRequest"))

(smithy/sdk/shapes:define-output get-rate-based-statement-managed-keys-response
                                 common-lisp:nil
                                 ((managed-keys-ipv4 :target-type
                                   rate-based-statement-managed-keys-ipset
                                   :member-name "ManagedKeysIPV4")
                                  (managed-keys-ipv6 :target-type
                                   rate-based-statement-managed-keys-ipset
                                   :member-name "ManagedKeysIPV6"))
                                 (:shape-name
                                  "GetRateBasedStatementManagedKeysResponse"))

(smithy/sdk/shapes:define-input get-regex-pattern-set-request common-lisp:nil
                                ((name :target-type entity-name :required
                                  common-lisp:t :member-name "Name")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (id :target-type entity-id :required
                                  common-lisp:t :member-name "Id"))
                                (:shape-name "GetRegexPatternSetRequest"))

(smithy/sdk/shapes:define-output get-regex-pattern-set-response common-lisp:nil
                                 ((regex-pattern-set :target-type
                                   regex-pattern-set :member-name
                                   "RegexPatternSet")
                                  (lock-token :target-type lock-token
                                   :member-name "LockToken"))
                                 (:shape-name "GetRegexPatternSetResponse"))

(smithy/sdk/shapes:define-input get-rule-group-request common-lisp:nil
                                ((name :target-type entity-name :member-name
                                  "Name")
                                 (scope :target-type scope :member-name
                                  "Scope")
                                 (id :target-type entity-id :member-name "Id")
                                 (arn :target-type resource-arn :member-name
                                  "ARN"))
                                (:shape-name "GetRuleGroupRequest"))

(smithy/sdk/shapes:define-output get-rule-group-response common-lisp:nil
                                 ((rule-group :target-type rule-group
                                   :member-name "RuleGroup")
                                  (lock-token :target-type lock-token
                                   :member-name "LockToken"))
                                 (:shape-name "GetRuleGroupResponse"))

(smithy/sdk/shapes:define-input get-sampled-requests-request common-lisp:nil
                                ((web-acl-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "WebAclArn")
                                 (rule-metric-name :target-type metric-name
                                  :required common-lisp:t :member-name
                                  "RuleMetricName")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (time-window :target-type time-window
                                  :required common-lisp:t :member-name
                                  "TimeWindow")
                                 (max-items :target-type list-max-items
                                  :required common-lisp:t :member-name
                                  "MaxItems"))
                                (:shape-name "GetSampledRequestsRequest"))

(smithy/sdk/shapes:define-output get-sampled-requests-response common-lisp:nil
                                 ((sampled-requests :target-type
                                   sampled-httprequests :member-name
                                   "SampledRequests")
                                  (population-size :target-type population-size
                                   :member-name "PopulationSize")
                                  (time-window :target-type time-window
                                   :member-name "TimeWindow"))
                                 (:shape-name "GetSampledRequestsResponse"))

(smithy/sdk/shapes:define-input get-web-aclfor-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "GetWebACLForResourceRequest"))

(smithy/sdk/shapes:define-output get-web-aclfor-resource-response
                                 common-lisp:nil
                                 ((web-acl :target-type web-acl :member-name
                                   "WebACL"))
                                 (:shape-name "GetWebACLForResourceResponse"))

(smithy/sdk/shapes:define-input get-web-aclrequest common-lisp:nil
                                ((name :target-type entity-name :member-name
                                  "Name")
                                 (scope :target-type scope :member-name
                                  "Scope")
                                 (id :target-type entity-id :member-name "Id")
                                 (arn :target-type resource-arn :member-name
                                  "ARN"))
                                (:shape-name "GetWebACLRequest"))

(smithy/sdk/shapes:define-output get-web-aclresponse common-lisp:nil
                                 ((web-acl :target-type web-acl :member-name
                                   "WebACL")
                                  (lock-token :target-type lock-token
                                   :member-name "LockToken")
                                  (application-integration-url :target-type
                                   output-url :member-name
                                   "ApplicationIntegrationURL"))
                                 (:shape-name "GetWebACLResponse"))

(smithy/sdk/shapes:define-structure httpheader common-lisp:nil
                                    ((name :target-type header-name
                                      :member-name "Name")
                                     (value :target-type header-value
                                      :member-name "Value"))
                                    (:shape-name "HTTPHeader"))

(smithy/sdk/shapes:define-list httpheaders :member httpheader)

(smithy/sdk/shapes:define-type httpmethod smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure httprequest common-lisp:nil
                                    ((client-ip :target-type ipstring
                                      :member-name "ClientIP")
                                     (country :target-type country :member-name
                                      "Country")
                                     (uri :target-type uristring :member-name
                                      "URI")
                                     (method :target-type httpmethod
                                      :member-name "Method")
                                     (httpversion :target-type httpversion
                                      :member-name "HTTPVersion")
                                     (headers :target-type httpheaders
                                      :member-name "Headers"))
                                    (:shape-name "HTTPRequest"))

(smithy/sdk/shapes:define-type httpversion smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure header-match-pattern common-lisp:nil
                                    ((all :target-type all :member-name "All")
                                     (included-headers :target-type
                                      header-names :member-name
                                      "IncludedHeaders")
                                     (excluded-headers :target-type
                                      header-names :member-name
                                      "ExcludedHeaders"))
                                    (:shape-name "HeaderMatchPattern"))

(smithy/sdk/shapes:define-type header-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list header-names :member field-to-match-data)

(smithy/sdk/shapes:define-structure header-order common-lisp:nil
                                    ((oversize-handling :target-type
                                      oversize-handling :required common-lisp:t
                                      :member-name "OversizeHandling"))
                                    (:shape-name "HeaderOrder"))

(smithy/sdk/shapes:define-type header-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure headers common-lisp:nil
                                    ((match-pattern :target-type
                                      header-match-pattern :required
                                      common-lisp:t :member-name
                                      "MatchPattern")
                                     (match-scope :target-type map-match-scope
                                      :required common-lisp:t :member-name
                                      "MatchScope")
                                     (oversize-handling :target-type
                                      oversize-handling :required common-lisp:t
                                      :member-name "OversizeHandling"))
                                    (:shape-name "Headers"))

(smithy/sdk/shapes:define-type ipaddress smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum ipaddress-version
    common-lisp:nil
  (:ipv4 "IPV4")
  (:ipv6 "IPV6"))

(smithy/sdk/shapes:define-list ipaddresses :member ipaddress)

(smithy/sdk/shapes:define-structure ipset common-lisp:nil
                                    ((name :target-type entity-name :required
                                      common-lisp:t :member-name "Name")
                                     (id :target-type entity-id :required
                                      common-lisp:t :member-name "Id")
                                     (arn :target-type resource-arn :required
                                      common-lisp:t :member-name "ARN")
                                     (description :target-type
                                      entity-description :member-name
                                      "Description")
                                     (ipaddress-version :target-type
                                      ipaddress-version :required common-lisp:t
                                      :member-name "IPAddressVersion")
                                     (addresses :target-type ipaddresses
                                      :required common-lisp:t :member-name
                                      "Addresses"))
                                    (:shape-name "IPSet"))

(smithy/sdk/shapes:define-structure ipset-forwarded-ipconfig common-lisp:nil
                                    ((header-name :target-type
                                      forwarded-ipheader-name :required
                                      common-lisp:t :member-name "HeaderName")
                                     (fallback-behavior :target-type
                                      fallback-behavior :required common-lisp:t
                                      :member-name "FallbackBehavior")
                                     (position :target-type
                                      forwarded-ipposition :required
                                      common-lisp:t :member-name "Position"))
                                    (:shape-name "IPSetForwardedIPConfig"))

(smithy/sdk/shapes:define-structure ipset-reference-statement common-lisp:nil
                                    ((arn :target-type resource-arn :required
                                      common-lisp:t :member-name "ARN")
                                     (ipset-forwarded-ipconfig :target-type
                                      ipset-forwarded-ipconfig :member-name
                                      "IPSetForwardedIPConfig"))
                                    (:shape-name "IPSetReferenceStatement"))

(smithy/sdk/shapes:define-list ipset-summaries :member ipset-summary)

(smithy/sdk/shapes:define-structure ipset-summary common-lisp:nil
                                    ((name :target-type entity-name
                                      :member-name "Name")
                                     (id :target-type entity-id :member-name
                                      "Id")
                                     (description :target-type
                                      entity-description :member-name
                                      "Description")
                                     (lock-token :target-type lock-token
                                      :member-name "LockToken")
                                     (arn :target-type resource-arn
                                      :member-name "ARN"))
                                    (:shape-name "IPSetSummary"))

(smithy/sdk/shapes:define-type ipstring smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure immunity-time-property common-lisp:nil
                                    ((immunity-time :target-type
                                      time-window-second :required
                                      common-lisp:t :member-name
                                      "ImmunityTime"))
                                    (:shape-name "ImmunityTimeProperty"))

(smithy/sdk/shapes:define-enum inspection-level
    common-lisp:nil
  (:common "COMMON")
  (:targeted "TARGETED"))

(smithy/sdk/shapes:define-structure ja3fingerprint common-lisp:nil
                                    ((fallback-behavior :target-type
                                      fallback-behavior :required common-lisp:t
                                      :member-name "FallbackBehavior"))
                                    (:shape-name "JA3Fingerprint"))

(smithy/sdk/shapes:define-structure ja4fingerprint common-lisp:nil
                                    ((fallback-behavior :target-type
                                      fallback-behavior :required common-lisp:t
                                      :member-name "FallbackBehavior"))
                                    (:shape-name "JA4Fingerprint"))

(smithy/sdk/shapes:define-structure json-body common-lisp:nil
                                    ((match-pattern :target-type
                                      json-match-pattern :required
                                      common-lisp:t :member-name
                                      "MatchPattern")
                                     (match-scope :target-type json-match-scope
                                      :required common-lisp:t :member-name
                                      "MatchScope")
                                     (invalid-fallback-behavior :target-type
                                      body-parsing-fallback-behavior
                                      :member-name "InvalidFallbackBehavior")
                                     (oversize-handling :target-type
                                      oversize-handling :member-name
                                      "OversizeHandling"))
                                    (:shape-name "JsonBody"))

(smithy/sdk/shapes:define-structure json-match-pattern common-lisp:nil
                                    ((all :target-type all :member-name "All")
                                     (included-paths :target-type
                                      json-pointer-paths :member-name
                                      "IncludedPaths"))
                                    (:shape-name "JsonMatchPattern"))

(smithy/sdk/shapes:define-enum json-match-scope
    common-lisp:nil
  (:all "ALL")
  (:key "KEY")
  (:value "VALUE"))

(smithy/sdk/shapes:define-type json-pointer-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list json-pointer-paths :member json-pointer-path)

(smithy/sdk/shapes:define-structure label common-lisp:nil
                                    ((name :target-type label-name :required
                                      common-lisp:t :member-name "Name"))
                                    (:shape-name "Label"))

(smithy/sdk/shapes:define-type label-match-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum label-match-scope
    common-lisp:nil
  (:label "LABEL")
  (:namespace "NAMESPACE"))

(smithy/sdk/shapes:define-structure label-match-statement common-lisp:nil
                                    ((scope :target-type label-match-scope
                                      :required common-lisp:t :member-name
                                      "Scope")
                                     (key :target-type label-match-key
                                      :required common-lisp:t :member-name
                                      "Key"))
                                    (:shape-name "LabelMatchStatement"))

(smithy/sdk/shapes:define-type label-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure label-name-condition common-lisp:nil
                                    ((label-name :target-type label-name
                                      :required common-lisp:t :member-name
                                      "LabelName"))
                                    (:shape-name "LabelNameCondition"))

(smithy/sdk/shapes:define-type label-namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list label-summaries :member label-summary)

(smithy/sdk/shapes:define-structure label-summary common-lisp:nil
                                    ((name :target-type label-name :member-name
                                      "Name"))
                                    (:shape-name "LabelSummary"))

(smithy/sdk/shapes:define-list labels :member label)

(smithy/sdk/shapes:define-input list-apikeys-request common-lisp:nil
                                ((scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name "ListAPIKeysRequest"))

(smithy/sdk/shapes:define-output list-apikeys-response common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (apikey-summaries :target-type
                                   apikey-summaries :member-name
                                   "APIKeySummaries")
                                  (application-integration-url :target-type
                                   output-url :member-name
                                   "ApplicationIntegrationURL"))
                                 (:shape-name "ListAPIKeysResponse"))

(smithy/sdk/shapes:define-input
 list-available-managed-rule-group-versions-request common-lisp:nil
 ((vendor-name :target-type vendor-name :required common-lisp:t :member-name
   "VendorName")
  (name :target-type entity-name :required common-lisp:t :member-name "Name")
  (scope :target-type scope :required common-lisp:t :member-name "Scope")
  (next-marker :target-type next-marker :member-name "NextMarker")
  (limit :target-type pagination-limit :member-name "Limit"))
 (:shape-name "ListAvailableManagedRuleGroupVersionsRequest"))

(smithy/sdk/shapes:define-output
 list-available-managed-rule-group-versions-response common-lisp:nil
 ((next-marker :target-type next-marker :member-name "NextMarker")
  (versions :target-type managed-rule-group-versions :member-name "Versions")
  (current-default-version :target-type version-key-string :member-name
   "CurrentDefaultVersion"))
 (:shape-name "ListAvailableManagedRuleGroupVersionsResponse"))

(smithy/sdk/shapes:define-input list-available-managed-rule-groups-request
                                common-lisp:nil
                                ((scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name
                                 "ListAvailableManagedRuleGroupsRequest"))

(smithy/sdk/shapes:define-output list-available-managed-rule-groups-response
                                 common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (managed-rule-groups :target-type
                                   managed-rule-group-summaries :member-name
                                   "ManagedRuleGroups"))
                                 (:shape-name
                                  "ListAvailableManagedRuleGroupsResponse"))

(smithy/sdk/shapes:define-input list-ipsets-request common-lisp:nil
                                ((scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name "ListIPSetsRequest"))

(smithy/sdk/shapes:define-output list-ipsets-response common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (ipsets :target-type ipset-summaries
                                   :member-name "IPSets"))
                                 (:shape-name "ListIPSetsResponse"))

(smithy/sdk/shapes:define-input list-logging-configurations-request
                                common-lisp:nil
                                ((scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit")
                                 (log-scope :target-type log-scope :member-name
                                  "LogScope"))
                                (:shape-name
                                 "ListLoggingConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-logging-configurations-response
                                 common-lisp:nil
                                 ((logging-configurations :target-type
                                   logging-configurations :member-name
                                   "LoggingConfigurations")
                                  (next-marker :target-type next-marker
                                   :member-name "NextMarker"))
                                 (:shape-name
                                  "ListLoggingConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-managed-rule-sets-request common-lisp:nil
                                ((scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name "ListManagedRuleSetsRequest"))

(smithy/sdk/shapes:define-output list-managed-rule-sets-response
                                 common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (managed-rule-sets :target-type
                                   managed-rule-set-summaries :member-name
                                   "ManagedRuleSets"))
                                 (:shape-name "ListManagedRuleSetsResponse"))

(smithy/sdk/shapes:define-type list-max-items smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input list-mobile-sdk-releases-request
                                common-lisp:nil
                                ((platform :target-type platform :required
                                  common-lisp:t :member-name "Platform")
                                 (next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name "ListMobileSdkReleasesRequest"))

(smithy/sdk/shapes:define-output list-mobile-sdk-releases-response
                                 common-lisp:nil
                                 ((release-summaries :target-type
                                   release-summaries :member-name
                                   "ReleaseSummaries")
                                  (next-marker :target-type next-marker
                                   :member-name "NextMarker"))
                                 (:shape-name "ListMobileSdkReleasesResponse"))

(smithy/sdk/shapes:define-input list-regex-pattern-sets-request common-lisp:nil
                                ((scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name "ListRegexPatternSetsRequest"))

(smithy/sdk/shapes:define-output list-regex-pattern-sets-response
                                 common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (regex-pattern-sets :target-type
                                   regex-pattern-set-summaries :member-name
                                   "RegexPatternSets"))
                                 (:shape-name "ListRegexPatternSetsResponse"))

(smithy/sdk/shapes:define-input list-resources-for-web-aclrequest
                                common-lisp:nil
                                ((web-aclarn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "WebACLArn")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType"))
                                (:shape-name "ListResourcesForWebACLRequest"))

(smithy/sdk/shapes:define-output list-resources-for-web-aclresponse
                                 common-lisp:nil
                                 ((resource-arns :target-type resource-arns
                                   :member-name "ResourceArns"))
                                 (:shape-name "ListResourcesForWebACLResponse"))

(smithy/sdk/shapes:define-input list-rule-groups-request common-lisp:nil
                                ((scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name "ListRuleGroupsRequest"))

(smithy/sdk/shapes:define-output list-rule-groups-response common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (rule-groups :target-type
                                   rule-group-summaries :member-name
                                   "RuleGroups"))
                                 (:shape-name "ListRuleGroupsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit")
                                 (resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (tag-info-for-resource :target-type
                                   tag-info-for-resource :member-name
                                   "TagInfoForResource"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-web-acls-request common-lisp:nil
                                ((scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (next-marker :target-type next-marker
                                  :member-name "NextMarker")
                                 (limit :target-type pagination-limit
                                  :member-name "Limit"))
                                (:shape-name "ListWebACLsRequest"))

(smithy/sdk/shapes:define-output list-web-acls-response common-lisp:nil
                                 ((next-marker :target-type next-marker
                                   :member-name "NextMarker")
                                  (web-acls :target-type web-aclsummaries
                                   :member-name "WebACLs"))
                                 (:shape-name "ListWebACLsResponse"))

(smithy/sdk/shapes:define-type lock-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list log-destination-configs :member resource-arn)

(smithy/sdk/shapes:define-enum log-scope
    common-lisp:nil
  (:customer "CUSTOMER")
  (:security-lake "SECURITY_LAKE"))

(smithy/sdk/shapes:define-enum log-type
    common-lisp:nil
  (:waf-logs "WAF_LOGS"))

(smithy/sdk/shapes:define-structure logging-configuration common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceArn")
                                     (log-destination-configs :target-type
                                      log-destination-configs :required
                                      common-lisp:t :member-name
                                      "LogDestinationConfigs")
                                     (redacted-fields :target-type
                                      redacted-fields :member-name
                                      "RedactedFields")
                                     (managed-by-firewall-manager :target-type
                                      boolean :member-name
                                      "ManagedByFirewallManager")
                                     (logging-filter :target-type
                                      logging-filter :member-name
                                      "LoggingFilter")
                                     (log-type :target-type log-type
                                      :member-name "LogType")
                                     (log-scope :target-type log-scope
                                      :member-name "LogScope"))
                                    (:shape-name "LoggingConfiguration"))

(smithy/sdk/shapes:define-list logging-configurations :member
                               logging-configuration)

(smithy/sdk/shapes:define-structure logging-filter common-lisp:nil
                                    ((filters :target-type filters :required
                                      common-lisp:t :member-name "Filters")
                                     (default-behavior :target-type
                                      filter-behavior :required common-lisp:t
                                      :member-name "DefaultBehavior"))
                                    (:shape-name "LoggingFilter"))

(smithy/sdk/shapes:define-type login-path-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum low-reputation-mode
    common-lisp:nil
  (:active-under-ddos "ACTIVE_UNDER_DDOS")
  (:always-on "ALWAYS_ON"))

(smithy/sdk/shapes:define-structure managed-product-descriptor common-lisp:nil
                                    ((vendor-name :target-type vendor-name
                                      :member-name "VendorName")
                                     (managed-rule-set-name :target-type
                                      entity-name :member-name
                                      "ManagedRuleSetName")
                                     (product-id :target-type product-id
                                      :member-name "ProductId")
                                     (product-link :target-type product-link
                                      :member-name "ProductLink")
                                     (product-title :target-type product-title
                                      :member-name "ProductTitle")
                                     (product-description :target-type
                                      product-description :member-name
                                      "ProductDescription")
                                     (sns-topic-arn :target-type resource-arn
                                      :member-name "SnsTopicArn")
                                     (is-versioning-supported :target-type
                                      boolean :member-name
                                      "IsVersioningSupported")
                                     (is-advanced-managed-rule-set :target-type
                                      boolean :member-name
                                      "IsAdvancedManagedRuleSet"))
                                    (:shape-name "ManagedProductDescriptor"))

(smithy/sdk/shapes:define-list managed-product-descriptors :member
                               managed-product-descriptor)

(smithy/sdk/shapes:define-structure managed-rule-group-config common-lisp:nil
                                    ((login-path :target-type login-path-string
                                      :member-name "LoginPath")
                                     (payload-type :target-type payload-type
                                      :member-name "PayloadType")
                                     (username-field :target-type
                                      username-field :member-name
                                      "UsernameField")
                                     (password-field :target-type
                                      password-field :member-name
                                      "PasswordField")
                                     (awsmanaged-rules-bot-control-rule-set
                                      :target-type
                                      awsmanaged-rules-bot-control-rule-set
                                      :member-name
                                      "AWSManagedRulesBotControlRuleSet")
                                     (awsmanaged-rules-atprule-set :target-type
                                      awsmanaged-rules-atprule-set :member-name
                                      "AWSManagedRulesATPRuleSet")
                                     (awsmanaged-rules-acfprule-set
                                      :target-type
                                      awsmanaged-rules-acfprule-set
                                      :member-name
                                      "AWSManagedRulesACFPRuleSet")
                                     (awsmanaged-rules-anti-ddo-srule-set
                                      :target-type
                                      awsmanaged-rules-anti-ddo-srule-set
                                      :member-name
                                      "AWSManagedRulesAntiDDoSRuleSet"))
                                    (:shape-name "ManagedRuleGroupConfig"))

(smithy/sdk/shapes:define-list managed-rule-group-configs :member
                               managed-rule-group-config)

(smithy/sdk/shapes:define-structure managed-rule-group-statement
                                    common-lisp:nil
                                    ((vendor-name :target-type vendor-name
                                      :required common-lisp:t :member-name
                                      "VendorName")
                                     (name :target-type entity-name :required
                                      common-lisp:t :member-name "Name")
                                     (version :target-type version-key-string
                                      :member-name "Version")
                                     (excluded-rules :target-type
                                      excluded-rules :member-name
                                      "ExcludedRules")
                                     (scope-down-statement :target-type
                                      statement :member-name
                                      "ScopeDownStatement")
                                     (managed-rule-group-configs :target-type
                                      managed-rule-group-configs :member-name
                                      "ManagedRuleGroupConfigs")
                                     (rule-action-overrides :target-type
                                      rule-action-overrides :member-name
                                      "RuleActionOverrides"))
                                    (:shape-name "ManagedRuleGroupStatement"))

(smithy/sdk/shapes:define-list managed-rule-group-summaries :member
                               managed-rule-group-summary)

(smithy/sdk/shapes:define-structure managed-rule-group-summary common-lisp:nil
                                    ((vendor-name :target-type vendor-name
                                      :member-name "VendorName")
                                     (name :target-type entity-name
                                      :member-name "Name")
                                     (versioning-supported :target-type boolean
                                      :member-name "VersioningSupported")
                                     (description :target-type
                                      entity-description :member-name
                                      "Description"))
                                    (:shape-name "ManagedRuleGroupSummary"))

(smithy/sdk/shapes:define-structure managed-rule-group-version common-lisp:nil
                                    ((name :target-type version-key-string
                                      :member-name "Name")
                                     (last-update-timestamp :target-type
                                      timestamp :member-name
                                      "LastUpdateTimestamp"))
                                    (:shape-name "ManagedRuleGroupVersion"))

(smithy/sdk/shapes:define-list managed-rule-group-versions :member
                               managed-rule-group-version)

(smithy/sdk/shapes:define-structure managed-rule-set common-lisp:nil
                                    ((name :target-type entity-name :required
                                      common-lisp:t :member-name "Name")
                                     (id :target-type entity-id :required
                                      common-lisp:t :member-name "Id")
                                     (arn :target-type resource-arn :required
                                      common-lisp:t :member-name "ARN")
                                     (description :target-type
                                      entity-description :member-name
                                      "Description")
                                     (published-versions :target-type
                                      published-versions :member-name
                                      "PublishedVersions")
                                     (recommended-version :target-type
                                      version-key-string :member-name
                                      "RecommendedVersion")
                                     (label-namespace :target-type label-name
                                      :member-name "LabelNamespace"))
                                    (:shape-name "ManagedRuleSet"))

(smithy/sdk/shapes:define-list managed-rule-set-summaries :member
                               managed-rule-set-summary)

(smithy/sdk/shapes:define-structure managed-rule-set-summary common-lisp:nil
                                    ((name :target-type entity-name
                                      :member-name "Name")
                                     (id :target-type entity-id :member-name
                                      "Id")
                                     (description :target-type
                                      entity-description :member-name
                                      "Description")
                                     (lock-token :target-type lock-token
                                      :member-name "LockToken")
                                     (arn :target-type resource-arn
                                      :member-name "ARN")
                                     (label-namespace :target-type label-name
                                      :member-name "LabelNamespace"))
                                    (:shape-name "ManagedRuleSetSummary"))

(smithy/sdk/shapes:define-structure managed-rule-set-version common-lisp:nil
                                    ((associated-rule-group-arn :target-type
                                      resource-arn :member-name
                                      "AssociatedRuleGroupArn")
                                     (capacity :target-type capacity-unit
                                      :member-name "Capacity")
                                     (forecasted-lifetime :target-type
                                      time-window-day :member-name
                                      "ForecastedLifetime")
                                     (publish-timestamp :target-type timestamp
                                      :member-name "PublishTimestamp")
                                     (last-update-timestamp :target-type
                                      timestamp :member-name
                                      "LastUpdateTimestamp")
                                     (expiry-timestamp :target-type timestamp
                                      :member-name "ExpiryTimestamp"))
                                    (:shape-name "ManagedRuleSetVersion"))

(smithy/sdk/shapes:define-enum map-match-scope
    common-lisp:nil
  (:all "ALL")
  (:key "KEY")
  (:value "VALUE"))

(smithy/sdk/shapes:define-structure method common-lisp:nil common-lisp:nil
                                    (:shape-name "Method"))

(smithy/sdk/shapes:define-type metric-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure mobile-sdk-release common-lisp:nil
                                    ((release-version :target-type
                                      version-key-string :member-name
                                      "ReleaseVersion")
                                     (timestamp :target-type timestamp
                                      :member-name "Timestamp")
                                     (release-notes :target-type release-notes
                                      :member-name "ReleaseNotes")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "MobileSdkRelease"))

(smithy/sdk/shapes:define-type next-marker smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure none-action common-lisp:nil common-lisp:nil
                                    (:shape-name "NoneAction"))

(smithy/sdk/shapes:define-structure not-statement common-lisp:nil
                                    ((statement :target-type statement
                                      :required common-lisp:t :member-name
                                      "Statement"))
                                    (:shape-name "NotStatement"))

(smithy/sdk/shapes:define-structure on-source-ddo-sprotection-config
                                    common-lisp:nil
                                    ((alblow-reputation-mode :target-type
                                      low-reputation-mode :required
                                      common-lisp:t :member-name
                                      "ALBLowReputationMode"))
                                    (:shape-name
                                     "OnSourceDDoSProtectionConfig"))

(smithy/sdk/shapes:define-structure or-statement common-lisp:nil
                                    ((statements :target-type statements
                                      :required common-lisp:t :member-name
                                      "Statements"))
                                    (:shape-name "OrStatement"))

(smithy/sdk/shapes:define-type output-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure override-action common-lisp:nil
                                    ((count :target-type count-action
                                      :member-name "Count")
                                     (none :target-type none-action
                                      :member-name "None"))
                                    (:shape-name "OverrideAction"))

(smithy/sdk/shapes:define-enum oversize-handling
    common-lisp:nil
  (:continue "CONTINUE")
  (:match "MATCH")
  (:no-match "NO_MATCH"))

(smithy/sdk/shapes:define-type pagination-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum parameter-exception-field
    common-lisp:nil
  (:web-acl "WEB_ACL")
  (:rule-group "RULE_GROUP")
  (:regex-pattern-set "REGEX_PATTERN_SET")
  (:ip-set "IP_SET")
  (:managed-rule-set "MANAGED_RULE_SET")
  (:rule "RULE")
  (:excluded-rule "EXCLUDED_RULE")
  (:statement "STATEMENT")
  (:byte-match-statement "BYTE_MATCH_STATEMENT")
  (:sqli-match-statement "SQLI_MATCH_STATEMENT")
  (:xss-match-statement "XSS_MATCH_STATEMENT")
  (:size-constraint-statement "SIZE_CONSTRAINT_STATEMENT")
  (:geo-match-statement "GEO_MATCH_STATEMENT")
  (:rate-based-statement "RATE_BASED_STATEMENT")
  (:rule-group-reference-statement "RULE_GROUP_REFERENCE_STATEMENT")
  (:regex-pattern-reference-statement "REGEX_PATTERN_REFERENCE_STATEMENT")
  (:ip-set-reference-statement "IP_SET_REFERENCE_STATEMENT")
  (:managed-rule-set-statement "MANAGED_RULE_SET_STATEMENT")
  (:label-match-statement "LABEL_MATCH_STATEMENT")
  (:and-statement "AND_STATEMENT")
  (:or-statement "OR_STATEMENT")
  (:not-statement "NOT_STATEMENT")
  (:ip-address "IP_ADDRESS")
  (:ip-address-version "IP_ADDRESS_VERSION")
  (:field-to-match "FIELD_TO_MATCH")
  (:text-transformation "TEXT_TRANSFORMATION")
  (:single-query-argument "SINGLE_QUERY_ARGUMENT")
  (:single-header "SINGLE_HEADER")
  (:default-action "DEFAULT_ACTION")
  (:rule-action "RULE_ACTION")
  (:entity-limit "ENTITY_LIMIT")
  (:override-action "OVERRIDE_ACTION")
  (:scope-value "SCOPE_VALUE")
  (:resource-arn "RESOURCE_ARN")
  (:resource-type "RESOURCE_TYPE")
  (:tags "TAGS")
  (:tag-keys "TAG_KEYS")
  (:metric-name "METRIC_NAME")
  (:firewall-manager-statement "FIREWALL_MANAGER_STATEMENT")
  (:fallback-behavior "FALLBACK_BEHAVIOR")
  (:position "POSITION")
  (:forwarded-ip-config "FORWARDED_IP_CONFIG")
  (:ip-set-forwarded-ip-config "IP_SET_FORWARDED_IP_CONFIG")
  (:header-name "HEADER_NAME")
  (:custom-request-handling "CUSTOM_REQUEST_HANDLING")
  (:response-content-type "RESPONSE_CONTENT_TYPE")
  (:custom-response "CUSTOM_RESPONSE")
  (:custom-response-body "CUSTOM_RESPONSE_BODY")
  (:json-match-pattern "JSON_MATCH_PATTERN")
  (:json-match-scope "JSON_MATCH_SCOPE")
  (:body-parsing-fallback-behavior "BODY_PARSING_FALLBACK_BEHAVIOR")
  (:logging-filter "LOGGING_FILTER")
  (:filter-condition "FILTER_CONDITION")
  (:expire-timestamp "EXPIRE_TIMESTAMP")
  (:change-propagation-status "CHANGE_PROPAGATION_STATUS")
  (:associable-resource "ASSOCIABLE_RESOURCE")
  (:log-destination "LOG_DESTINATION")
  (:managed-rule-group-config "MANAGED_RULE_GROUP_CONFIG")
  (:payload-type "PAYLOAD_TYPE")
  (:header-match-pattern "HEADER_MATCH_PATTERN")
  (:cookie-match-pattern "COOKIE_MATCH_PATTERN")
  (:map-match-scope "MAP_MATCH_SCOPE")
  (:oversize-handling "OVERSIZE_HANDLING")
  (:challenge-config "CHALLENGE_CONFIG")
  (:token-domain "TOKEN_DOMAIN")
  (:atp-rule-set-response-inspection "ATP_RULE_SET_RESPONSE_INSPECTION")
  (:associated-resource-type "ASSOCIATED_RESOURCE_TYPE")
  (:scope-down "SCOPE_DOWN")
  (:custom-keys "CUSTOM_KEYS")
  (:acp-rule-set-response-inspection "ACP_RULE_SET_RESPONSE_INSPECTION")
  (:data-protection-config "DATA_PROTECTION_CONFIG")
  (:low-reputation-mode "LOW_REPUTATION_MODE"))

(smithy/sdk/shapes:define-type parameter-exception-parameter
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure password-field common-lisp:nil
                                    ((identifier :target-type field-identifier
                                      :required common-lisp:t :member-name
                                      "Identifier"))
                                    (:shape-name "PasswordField"))

(smithy/sdk/shapes:define-enum payload-type
    common-lisp:nil
  (:json "JSON")
  (:form-encoded "FORM_ENCODED"))

(smithy/sdk/shapes:define-structure phone-number-field common-lisp:nil
                                    ((identifier :target-type field-identifier
                                      :required common-lisp:t :member-name
                                      "Identifier"))
                                    (:shape-name "PhoneNumberField"))

(smithy/sdk/shapes:define-list phone-number-fields :member phone-number-field)

(smithy/sdk/shapes:define-enum platform
    common-lisp:nil
  (:ios "IOS")
  (:android "ANDROID"))

(smithy/sdk/shapes:define-type policy-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type population-size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-enum positional-constraint
    common-lisp:nil
  (:exactly "EXACTLY")
  (:starts-with "STARTS_WITH")
  (:ends-with "ENDS_WITH")
  (:contains "CONTAINS")
  (:contains-word "CONTAINS_WORD"))

(smithy/sdk/shapes:define-type product-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type product-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type product-link smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type product-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map published-versions :key version-key-string :value
                              managed-rule-set-version)

(smithy/sdk/shapes:define-input put-logging-configuration-request
                                common-lisp:nil
                                ((logging-configuration :target-type
                                  logging-configuration :required common-lisp:t
                                  :member-name "LoggingConfiguration"))
                                (:shape-name "PutLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-output put-logging-configuration-response
                                 common-lisp:nil
                                 ((logging-configuration :target-type
                                   logging-configuration :member-name
                                   "LoggingConfiguration"))
                                 (:shape-name
                                  "PutLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-input put-managed-rule-set-versions-request
                                common-lisp:nil
                                ((name :target-type entity-name :required
                                  common-lisp:t :member-name "Name")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (id :target-type entity-id :required
                                  common-lisp:t :member-name "Id")
                                 (lock-token :target-type lock-token :required
                                  common-lisp:t :member-name "LockToken")
                                 (recommended-version :target-type
                                  version-key-string :member-name
                                  "RecommendedVersion")
                                 (versions-to-publish :target-type
                                  versions-to-publish :member-name
                                  "VersionsToPublish"))
                                (:shape-name
                                 "PutManagedRuleSetVersionsRequest"))

(smithy/sdk/shapes:define-output put-managed-rule-set-versions-response
                                 common-lisp:nil
                                 ((next-lock-token :target-type lock-token
                                   :member-name "NextLockToken"))
                                 (:shape-name
                                  "PutManagedRuleSetVersionsResponse"))

(smithy/sdk/shapes:define-input put-permission-policy-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (policy :target-type policy-string :required
                                  common-lisp:t :member-name "Policy"))
                                (:shape-name "PutPermissionPolicyRequest"))

(smithy/sdk/shapes:define-output put-permission-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutPermissionPolicyResponse"))

(smithy/sdk/shapes:define-structure query-string common-lisp:nil
                                    common-lisp:nil (:shape-name "QueryString"))

(smithy/sdk/shapes:define-structure rate-based-statement common-lisp:nil
                                    ((limit :target-type rate-limit :required
                                      common-lisp:t :member-name "Limit")
                                     (evaluation-window-sec :target-type
                                      evaluation-window-sec :member-name
                                      "EvaluationWindowSec")
                                     (aggregate-key-type :target-type
                                      rate-based-statement-aggregate-key-type
                                      :required common-lisp:t :member-name
                                      "AggregateKeyType")
                                     (scope-down-statement :target-type
                                      statement :member-name
                                      "ScopeDownStatement")
                                     (forwarded-ipconfig :target-type
                                      forwarded-ipconfig :member-name
                                      "ForwardedIPConfig")
                                     (custom-keys :target-type
                                      rate-based-statement-custom-keys
                                      :member-name "CustomKeys"))
                                    (:shape-name "RateBasedStatement"))

(smithy/sdk/shapes:define-enum rate-based-statement-aggregate-key-type
    common-lisp:nil
  (:ip "IP")
  (:forwarded-ip "FORWARDED_IP")
  (:custom-keys "CUSTOM_KEYS")
  (:constant "CONSTANT"))

(smithy/sdk/shapes:define-structure rate-based-statement-custom-key
                                    common-lisp:nil
                                    ((header :target-type rate-limit-header
                                      :member-name "Header")
                                     (cookie :target-type rate-limit-cookie
                                      :member-name "Cookie")
                                     (query-argument :target-type
                                      rate-limit-query-argument :member-name
                                      "QueryArgument")
                                     (query-string :target-type
                                      rate-limit-query-string :member-name
                                      "QueryString")
                                     (httpmethod :target-type
                                      rate-limit-httpmethod :member-name
                                      "HTTPMethod")
                                     (forwarded-ip :target-type
                                      rate-limit-forwarded-ip :member-name
                                      "ForwardedIP")
                                     (ip :target-type rate-limit-ip
                                      :member-name "IP")
                                     (label-namespace :target-type
                                      rate-limit-label-namespace :member-name
                                      "LabelNamespace")
                                     (uri-path :target-type rate-limit-uri-path
                                      :member-name "UriPath")
                                     (ja3fingerprint :target-type
                                      rate-limit-ja3fingerprint :member-name
                                      "JA3Fingerprint")
                                     (ja4fingerprint :target-type
                                      rate-limit-ja4fingerprint :member-name
                                      "JA4Fingerprint")
                                     (asn :target-type rate-limit-asn
                                      :member-name "ASN"))
                                    (:shape-name "RateBasedStatementCustomKey"))

(smithy/sdk/shapes:define-list rate-based-statement-custom-keys :member
                               rate-based-statement-custom-key)

(smithy/sdk/shapes:define-structure rate-based-statement-managed-keys-ipset
                                    common-lisp:nil
                                    ((ipaddress-version :target-type
                                      ipaddress-version :member-name
                                      "IPAddressVersion")
                                     (addresses :target-type ipaddresses
                                      :member-name "Addresses"))
                                    (:shape-name
                                     "RateBasedStatementManagedKeysIPSet"))

(smithy/sdk/shapes:define-type rate-limit smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure rate-limit-asn common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "RateLimitAsn"))

(smithy/sdk/shapes:define-structure rate-limit-cookie common-lisp:nil
                                    ((name :target-type field-to-match-data
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (text-transformations :target-type
                                      text-transformations :required
                                      common-lisp:t :member-name
                                      "TextTransformations"))
                                    (:shape-name "RateLimitCookie"))

(smithy/sdk/shapes:define-structure rate-limit-forwarded-ip common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "RateLimitForwardedIP"))

(smithy/sdk/shapes:define-structure rate-limit-httpmethod common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "RateLimitHTTPMethod"))

(smithy/sdk/shapes:define-structure rate-limit-header common-lisp:nil
                                    ((name :target-type field-to-match-data
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (text-transformations :target-type
                                      text-transformations :required
                                      common-lisp:t :member-name
                                      "TextTransformations"))
                                    (:shape-name "RateLimitHeader"))

(smithy/sdk/shapes:define-structure rate-limit-ip common-lisp:nil
                                    common-lisp:nil (:shape-name "RateLimitIP"))

(smithy/sdk/shapes:define-structure rate-limit-ja3fingerprint common-lisp:nil
                                    ((fallback-behavior :target-type
                                      fallback-behavior :required common-lisp:t
                                      :member-name "FallbackBehavior"))
                                    (:shape-name "RateLimitJA3Fingerprint"))

(smithy/sdk/shapes:define-structure rate-limit-ja4fingerprint common-lisp:nil
                                    ((fallback-behavior :target-type
                                      fallback-behavior :required common-lisp:t
                                      :member-name "FallbackBehavior"))
                                    (:shape-name "RateLimitJA4Fingerprint"))

(smithy/sdk/shapes:define-structure rate-limit-label-namespace common-lisp:nil
                                    ((namespace :target-type label-namespace
                                      :required common-lisp:t :member-name
                                      "Namespace"))
                                    (:shape-name "RateLimitLabelNamespace"))

(smithy/sdk/shapes:define-structure rate-limit-query-argument common-lisp:nil
                                    ((name :target-type field-to-match-data
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (text-transformations :target-type
                                      text-transformations :required
                                      common-lisp:t :member-name
                                      "TextTransformations"))
                                    (:shape-name "RateLimitQueryArgument"))

(smithy/sdk/shapes:define-structure rate-limit-query-string common-lisp:nil
                                    ((text-transformations :target-type
                                      text-transformations :required
                                      common-lisp:t :member-name
                                      "TextTransformations"))
                                    (:shape-name "RateLimitQueryString"))

(smithy/sdk/shapes:define-structure rate-limit-uri-path common-lisp:nil
                                    ((text-transformations :target-type
                                      text-transformations :required
                                      common-lisp:t :member-name
                                      "TextTransformations"))
                                    (:shape-name "RateLimitUriPath"))

(smithy/sdk/shapes:define-list redacted-fields :member field-to-match)

(smithy/sdk/shapes:define-structure regex common-lisp:nil
                                    ((regex-string :target-type
                                      regex-pattern-string :member-name
                                      "RegexString"))
                                    (:shape-name "Regex"))

(smithy/sdk/shapes:define-structure regex-match-statement common-lisp:nil
                                    ((regex-string :target-type
                                      regex-pattern-string :required
                                      common-lisp:t :member-name "RegexString")
                                     (field-to-match :target-type
                                      field-to-match :required common-lisp:t
                                      :member-name "FieldToMatch")
                                     (text-transformations :target-type
                                      text-transformations :required
                                      common-lisp:t :member-name
                                      "TextTransformations"))
                                    (:shape-name "RegexMatchStatement"))

(smithy/sdk/shapes:define-structure regex-pattern-set common-lisp:nil
                                    ((name :target-type entity-name
                                      :member-name "Name")
                                     (id :target-type entity-id :member-name
                                      "Id")
                                     (arn :target-type resource-arn
                                      :member-name "ARN")
                                     (description :target-type
                                      entity-description :member-name
                                      "Description")
                                     (regular-expression-list :target-type
                                      regular-expression-list :member-name
                                      "RegularExpressionList"))
                                    (:shape-name "RegexPatternSet"))

(smithy/sdk/shapes:define-structure regex-pattern-set-reference-statement
                                    common-lisp:nil
                                    ((arn :target-type resource-arn :required
                                      common-lisp:t :member-name "ARN")
                                     (field-to-match :target-type
                                      field-to-match :required common-lisp:t
                                      :member-name "FieldToMatch")
                                     (text-transformations :target-type
                                      text-transformations :required
                                      common-lisp:t :member-name
                                      "TextTransformations"))
                                    (:shape-name
                                     "RegexPatternSetReferenceStatement"))

(smithy/sdk/shapes:define-list regex-pattern-set-summaries :member
                               regex-pattern-set-summary)

(smithy/sdk/shapes:define-structure regex-pattern-set-summary common-lisp:nil
                                    ((name :target-type entity-name
                                      :member-name "Name")
                                     (id :target-type entity-id :member-name
                                      "Id")
                                     (description :target-type
                                      entity-description :member-name
                                      "Description")
                                     (lock-token :target-type lock-token
                                      :member-name "LockToken")
                                     (arn :target-type resource-arn
                                      :member-name "ARN"))
                                    (:shape-name "RegexPatternSetSummary"))

(smithy/sdk/shapes:define-type regex-pattern-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type registration-page-path-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list regular-expression-list :member regex)

(smithy/sdk/shapes:define-type release-notes smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list release-summaries :member release-summary)

(smithy/sdk/shapes:define-structure release-summary common-lisp:nil
                                    ((release-version :target-type
                                      version-key-string :member-name
                                      "ReleaseVersion")
                                     (timestamp :target-type timestamp
                                      :member-name "Timestamp"))
                                    (:shape-name "ReleaseSummary"))

(smithy/sdk/shapes:define-map request-body :key associated-resource-type :value
                              request-body-associated-resource-type-config)

(smithy/sdk/shapes:define-structure
 request-body-associated-resource-type-config common-lisp:nil
 ((default-size-inspection-limit :target-type size-inspection-limit :required
   common-lisp:t :member-name "DefaultSizeInspectionLimit"))
 (:shape-name "RequestBodyAssociatedResourceTypeConfig"))

(smithy/sdk/shapes:define-structure request-inspection common-lisp:nil
                                    ((payload-type :target-type payload-type
                                      :required common-lisp:t :member-name
                                      "PayloadType")
                                     (username-field :target-type
                                      username-field :required common-lisp:t
                                      :member-name "UsernameField")
                                     (password-field :target-type
                                      password-field :required common-lisp:t
                                      :member-name "PasswordField"))
                                    (:shape-name "RequestInspection"))

(smithy/sdk/shapes:define-structure request-inspection-acfp common-lisp:nil
                                    ((payload-type :target-type payload-type
                                      :required common-lisp:t :member-name
                                      "PayloadType")
                                     (username-field :target-type
                                      username-field :member-name
                                      "UsernameField")
                                     (password-field :target-type
                                      password-field :member-name
                                      "PasswordField")
                                     (email-field :target-type email-field
                                      :member-name "EmailField")
                                     (phone-number-fields :target-type
                                      phone-number-fields :member-name
                                      "PhoneNumberFields")
                                     (address-fields :target-type
                                      address-fields :member-name
                                      "AddressFields"))
                                    (:shape-name "RequestInspectionACFP"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-arns :member resource-arn)

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:application-load-balancer "APPLICATION_LOAD_BALANCER")
  (:api-gateway "API_GATEWAY")
  (:appsync "APPSYNC")
  (:cognitio-user-pool "COGNITO_USER_POOL")
  (:app-runner-service "APP_RUNNER_SERVICE")
  (:verified-access-instance "VERIFIED_ACCESS_INSTANCE")
  (:amplify "AMPLIFY"))

(smithy/sdk/shapes:define-type response-code smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type response-content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum response-content-type
    common-lisp:nil
  (:text-plain "TEXT_PLAIN")
  (:text-html "TEXT_HTML")
  (:application-json "APPLICATION_JSON"))

(smithy/sdk/shapes:define-structure response-inspection common-lisp:nil
                                    ((status-code :target-type
                                      response-inspection-status-code
                                      :member-name "StatusCode")
                                     (header :target-type
                                      response-inspection-header :member-name
                                      "Header")
                                     (body-contains :target-type
                                      response-inspection-body-contains
                                      :member-name "BodyContains")
                                     (json :target-type
                                      response-inspection-json :member-name
                                      "Json"))
                                    (:shape-name "ResponseInspection"))

(smithy/sdk/shapes:define-structure response-inspection-body-contains
                                    common-lisp:nil
                                    ((success-strings :target-type
                                      response-inspection-body-contains-success-strings
                                      :required common-lisp:t :member-name
                                      "SuccessStrings")
                                     (failure-strings :target-type
                                      response-inspection-body-contains-failure-strings
                                      :required common-lisp:t :member-name
                                      "FailureStrings"))
                                    (:shape-name
                                     "ResponseInspectionBodyContains"))

(smithy/sdk/shapes:define-list
 response-inspection-body-contains-failure-strings :member failure-value)

(smithy/sdk/shapes:define-list
 response-inspection-body-contains-success-strings :member success-value)

(smithy/sdk/shapes:define-structure response-inspection-header common-lisp:nil
                                    ((name :target-type
                                      response-inspection-header-name :required
                                      common-lisp:t :member-name "Name")
                                     (success-values :target-type
                                      response-inspection-header-success-values
                                      :required common-lisp:t :member-name
                                      "SuccessValues")
                                     (failure-values :target-type
                                      response-inspection-header-failure-values
                                      :required common-lisp:t :member-name
                                      "FailureValues"))
                                    (:shape-name "ResponseInspectionHeader"))

(smithy/sdk/shapes:define-list response-inspection-header-failure-values
                               :member failure-value)

(smithy/sdk/shapes:define-type response-inspection-header-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list response-inspection-header-success-values
                               :member success-value)

(smithy/sdk/shapes:define-structure response-inspection-json common-lisp:nil
                                    ((identifier :target-type field-identifier
                                      :required common-lisp:t :member-name
                                      "Identifier")
                                     (success-values :target-type
                                      response-inspection-json-success-values
                                      :required common-lisp:t :member-name
                                      "SuccessValues")
                                     (failure-values :target-type
                                      response-inspection-json-failure-values
                                      :required common-lisp:t :member-name
                                      "FailureValues"))
                                    (:shape-name "ResponseInspectionJson"))

(smithy/sdk/shapes:define-list response-inspection-json-failure-values :member
                               failure-value)

(smithy/sdk/shapes:define-list response-inspection-json-success-values :member
                               success-value)

(smithy/sdk/shapes:define-structure response-inspection-status-code
                                    common-lisp:nil
                                    ((success-codes :target-type
                                      response-inspection-status-code-success-codes
                                      :required common-lisp:t :member-name
                                      "SuccessCodes")
                                     (failure-codes :target-type
                                      response-inspection-status-code-failure-codes
                                      :required common-lisp:t :member-name
                                      "FailureCodes"))
                                    (:shape-name
                                     "ResponseInspectionStatusCode"))

(smithy/sdk/shapes:define-list response-inspection-status-code-failure-codes
                               :member failure-code)

(smithy/sdk/shapes:define-list response-inspection-status-code-success-codes
                               :member success-code)

(smithy/sdk/shapes:define-type response-status-code
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure rule common-lisp:nil
                                    ((name :target-type entity-name :required
                                      common-lisp:t :member-name "Name")
                                     (priority :target-type rule-priority
                                      :required common-lisp:t :member-name
                                      "Priority")
                                     (statement :target-type statement
                                      :required common-lisp:t :member-name
                                      "Statement")
                                     (action :target-type rule-action
                                      :member-name "Action")
                                     (override-action :target-type
                                      override-action :member-name
                                      "OverrideAction")
                                     (rule-labels :target-type labels
                                      :member-name "RuleLabels")
                                     (visibility-config :target-type
                                      visibility-config :required common-lisp:t
                                      :member-name "VisibilityConfig")
                                     (captcha-config :target-type
                                      captcha-config :member-name
                                      "CaptchaConfig")
                                     (challenge-config :target-type
                                      challenge-config :member-name
                                      "ChallengeConfig"))
                                    (:shape-name "Rule"))

(smithy/sdk/shapes:define-structure rule-action common-lisp:nil
                                    ((block :target-type block-action
                                      :member-name "Block")
                                     (allow :target-type allow-action
                                      :member-name "Allow")
                                     (count :target-type count-action
                                      :member-name "Count")
                                     (captcha :target-type captcha-action
                                      :member-name "Captcha")
                                     (challenge :target-type challenge-action
                                      :member-name "Challenge"))
                                    (:shape-name "RuleAction"))

(smithy/sdk/shapes:define-structure rule-action-override common-lisp:nil
                                    ((name :target-type entity-name :required
                                      common-lisp:t :member-name "Name")
                                     (action-to-use :target-type rule-action
                                      :required common-lisp:t :member-name
                                      "ActionToUse"))
                                    (:shape-name "RuleActionOverride"))

(smithy/sdk/shapes:define-list rule-action-overrides :member
                               rule-action-override)

(smithy/sdk/shapes:define-structure rule-group common-lisp:nil
                                    ((name :target-type entity-name :required
                                      common-lisp:t :member-name "Name")
                                     (id :target-type entity-id :required
                                      common-lisp:t :member-name "Id")
                                     (capacity :target-type capacity-unit
                                      :required common-lisp:t :member-name
                                      "Capacity")
                                     (arn :target-type resource-arn :required
                                      common-lisp:t :member-name "ARN")
                                     (description :target-type
                                      entity-description :member-name
                                      "Description")
                                     (rules :target-type rules :member-name
                                      "Rules")
                                     (visibility-config :target-type
                                      visibility-config :required common-lisp:t
                                      :member-name "VisibilityConfig")
                                     (label-namespace :target-type label-name
                                      :member-name "LabelNamespace")
                                     (custom-response-bodies :target-type
                                      custom-response-bodies :member-name
                                      "CustomResponseBodies")
                                     (available-labels :target-type
                                      label-summaries :member-name
                                      "AvailableLabels")
                                     (consumed-labels :target-type
                                      label-summaries :member-name
                                      "ConsumedLabels"))
                                    (:shape-name "RuleGroup"))

(smithy/sdk/shapes:define-structure rule-group-reference-statement
                                    common-lisp:nil
                                    ((arn :target-type resource-arn :required
                                      common-lisp:t :member-name "ARN")
                                     (excluded-rules :target-type
                                      excluded-rules :member-name
                                      "ExcludedRules")
                                     (rule-action-overrides :target-type
                                      rule-action-overrides :member-name
                                      "RuleActionOverrides"))
                                    (:shape-name "RuleGroupReferenceStatement"))

(smithy/sdk/shapes:define-list rule-group-summaries :member rule-group-summary)

(smithy/sdk/shapes:define-structure rule-group-summary common-lisp:nil
                                    ((name :target-type entity-name
                                      :member-name "Name")
                                     (id :target-type entity-id :member-name
                                      "Id")
                                     (description :target-type
                                      entity-description :member-name
                                      "Description")
                                     (lock-token :target-type lock-token
                                      :member-name "LockToken")
                                     (arn :target-type resource-arn
                                      :member-name "ARN"))
                                    (:shape-name "RuleGroupSummary"))

(smithy/sdk/shapes:define-type rule-priority smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list rule-summaries :member rule-summary)

(smithy/sdk/shapes:define-structure rule-summary common-lisp:nil
                                    ((name :target-type entity-name
                                      :member-name "Name")
                                     (action :target-type rule-action
                                      :member-name "Action"))
                                    (:shape-name "RuleSummary"))

(smithy/sdk/shapes:define-list rules :member rule)

(smithy/sdk/shapes:define-type sample-weight smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure sampled-httprequest common-lisp:nil
                                    ((request :target-type httprequest
                                      :required common-lisp:t :member-name
                                      "Request")
                                     (weight :target-type sample-weight
                                      :required common-lisp:t :member-name
                                      "Weight")
                                     (timestamp :target-type timestamp
                                      :member-name "Timestamp")
                                     (action :target-type action :member-name
                                      "Action")
                                     (rule-name-within-rule-group :target-type
                                      entity-name :member-name
                                      "RuleNameWithinRuleGroup")
                                     (request-headers-inserted :target-type
                                      httpheaders :member-name
                                      "RequestHeadersInserted")
                                     (response-code-sent :target-type
                                      response-status-code :member-name
                                      "ResponseCodeSent")
                                     (labels :target-type labels :member-name
                                      "Labels")
                                     (captcha-response :target-type
                                      captcha-response :member-name
                                      "CaptchaResponse")
                                     (challenge-response :target-type
                                      challenge-response :member-name
                                      "ChallengeResponse")
                                     (overridden-action :target-type action
                                      :member-name "OverriddenAction"))
                                    (:shape-name "SampledHTTPRequest"))

(smithy/sdk/shapes:define-list sampled-httprequests :member sampled-httprequest)

(smithy/sdk/shapes:define-enum scope
    common-lisp:nil
  (:cloudfront "CLOUDFRONT")
  (:regional "REGIONAL"))

(smithy/sdk/shapes:define-type search-string smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-enum sensitivity-level
    common-lisp:nil
  (:low "LOW")
  (:high "HIGH"))

(smithy/sdk/shapes:define-enum sensitivity-to-act
    common-lisp:nil
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH"))

(smithy/sdk/shapes:define-type single-cookie-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure single-header common-lisp:nil
                                    ((name :target-type field-to-match-data
                                      :required common-lisp:t :member-name
                                      "Name"))
                                    (:shape-name "SingleHeader"))

(smithy/sdk/shapes:define-structure single-query-argument common-lisp:nil
                                    ((name :target-type field-to-match-data
                                      :required common-lisp:t :member-name
                                      "Name"))
                                    (:shape-name "SingleQueryArgument"))

(smithy/sdk/shapes:define-type size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure size-constraint-statement common-lisp:nil
                                    ((field-to-match :target-type
                                      field-to-match :required common-lisp:t
                                      :member-name "FieldToMatch")
                                     (comparison-operator :target-type
                                      comparison-operator :required
                                      common-lisp:t :member-name
                                      "ComparisonOperator")
                                     (size :target-type size :required
                                      common-lisp:t :member-name "Size")
                                     (text-transformations :target-type
                                      text-transformations :required
                                      common-lisp:t :member-name
                                      "TextTransformations"))
                                    (:shape-name "SizeConstraintStatement"))

(smithy/sdk/shapes:define-enum size-inspection-limit
    common-lisp:nil
  (:kb-16 "KB_16")
  (:kb-32 "KB_32")
  (:kb-48 "KB_48")
  (:kb-64 "KB_64"))

(smithy/sdk/shapes:define-type solve-timestamp smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type source-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sqli-match-statement common-lisp:nil
                                    ((field-to-match :target-type
                                      field-to-match :required common-lisp:t
                                      :member-name "FieldToMatch")
                                     (text-transformations :target-type
                                      text-transformations :required
                                      common-lisp:t :member-name
                                      "TextTransformations")
                                     (sensitivity-level :target-type
                                      sensitivity-level :member-name
                                      "SensitivityLevel"))
                                    (:shape-name "SqliMatchStatement"))

(smithy/sdk/shapes:define-structure statement common-lisp:nil
                                    ((byte-match-statement :target-type
                                      byte-match-statement :member-name
                                      "ByteMatchStatement")
                                     (sqli-match-statement :target-type
                                      sqli-match-statement :member-name
                                      "SqliMatchStatement")
                                     (xss-match-statement :target-type
                                      xss-match-statement :member-name
                                      "XssMatchStatement")
                                     (size-constraint-statement :target-type
                                      size-constraint-statement :member-name
                                      "SizeConstraintStatement")
                                     (geo-match-statement :target-type
                                      geo-match-statement :member-name
                                      "GeoMatchStatement")
                                     (rule-group-reference-statement
                                      :target-type
                                      rule-group-reference-statement
                                      :member-name
                                      "RuleGroupReferenceStatement")
                                     (ipset-reference-statement :target-type
                                      ipset-reference-statement :member-name
                                      "IPSetReferenceStatement")
                                     (regex-pattern-set-reference-statement
                                      :target-type
                                      regex-pattern-set-reference-statement
                                      :member-name
                                      "RegexPatternSetReferenceStatement")
                                     (rate-based-statement :target-type
                                      rate-based-statement :member-name
                                      "RateBasedStatement")
                                     (and-statement :target-type and-statement
                                      :member-name "AndStatement")
                                     (or-statement :target-type or-statement
                                      :member-name "OrStatement")
                                     (not-statement :target-type not-statement
                                      :member-name "NotStatement")
                                     (managed-rule-group-statement :target-type
                                      managed-rule-group-statement :member-name
                                      "ManagedRuleGroupStatement")
                                     (label-match-statement :target-type
                                      label-match-statement :member-name
                                      "LabelMatchStatement")
                                     (regex-match-statement :target-type
                                      regex-match-statement :member-name
                                      "RegexMatchStatement")
                                     (asn-match-statement :target-type
                                      asn-match-statement :member-name
                                      "AsnMatchStatement"))
                                    (:shape-name "Statement"))

(smithy/sdk/shapes:define-list statements :member statement)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type success-code smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type success-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-structure tag-info-for-resource common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "ResourceARN")
                                     (tag-list :target-type tag-list
                                      :member-name "TagList"))
                                    (:shape-name "TagInfoForResource"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure text-transformation common-lisp:nil
                                    ((priority :target-type
                                      text-transformation-priority :required
                                      common-lisp:t :member-name "Priority")
                                     (type :target-type
                                      text-transformation-type :required
                                      common-lisp:t :member-name "Type"))
                                    (:shape-name "TextTransformation"))

(smithy/sdk/shapes:define-type text-transformation-priority
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum text-transformation-type
    common-lisp:nil
  (:none "NONE")
  (:compress-white-space "COMPRESS_WHITE_SPACE")
  (:html-entity-decode "HTML_ENTITY_DECODE")
  (:lowercase "LOWERCASE")
  (:cmd-line "CMD_LINE")
  (:url-decode "URL_DECODE")
  (:base64-decode "BASE64_DECODE")
  (:hex-decode "HEX_DECODE")
  (:md5 "MD5")
  (:replace-comments "REPLACE_COMMENTS")
  (:escape-seq-decode "ESCAPE_SEQ_DECODE")
  (:sql-hex-decode "SQL_HEX_DECODE")
  (:css-decode "CSS_DECODE")
  (:js-decode "JS_DECODE")
  (:normalize-path "NORMALIZE_PATH")
  (:normalize-path-win "NORMALIZE_PATH_WIN")
  (:remove-nulls "REMOVE_NULLS")
  (:replace-nulls "REPLACE_NULLS")
  (:base64-decode-ext "BASE64_DECODE_EXT")
  (:url-decode-uni "URL_DECODE_UNI")
  (:utf8-to-unicode "UTF8_TO_UNICODE"))

(smithy/sdk/shapes:define-list text-transformations :member text-transformation)

(smithy/sdk/shapes:define-structure time-window common-lisp:nil
                                    ((start-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "StartTime")
                                     (end-time :target-type timestamp :required
                                      common-lisp:t :member-name "EndTime"))
                                    (:shape-name "TimeWindow"))

(smithy/sdk/shapes:define-type time-window-day smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type time-window-second smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type token-domain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list token-domains :member token-domain)

(smithy/sdk/shapes:define-type uristring smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-ipset-request common-lisp:nil
                                ((name :target-type entity-name :required
                                  common-lisp:t :member-name "Name")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (id :target-type entity-id :required
                                  common-lisp:t :member-name "Id")
                                 (description :target-type entity-description
                                  :member-name "Description")
                                 (addresses :target-type ipaddresses :required
                                  common-lisp:t :member-name "Addresses")
                                 (lock-token :target-type lock-token :required
                                  common-lisp:t :member-name "LockToken"))
                                (:shape-name "UpdateIPSetRequest"))

(smithy/sdk/shapes:define-output update-ipset-response common-lisp:nil
                                 ((next-lock-token :target-type lock-token
                                   :member-name "NextLockToken"))
                                 (:shape-name "UpdateIPSetResponse"))

(smithy/sdk/shapes:define-input
 update-managed-rule-set-version-expiry-date-request common-lisp:nil
 ((name :target-type entity-name :required common-lisp:t :member-name "Name")
  (scope :target-type scope :required common-lisp:t :member-name "Scope")
  (id :target-type entity-id :required common-lisp:t :member-name "Id")
  (lock-token :target-type lock-token :required common-lisp:t :member-name
   "LockToken")
  (version-to-expire :target-type version-key-string :required common-lisp:t
   :member-name "VersionToExpire")
  (expiry-timestamp :target-type timestamp :required common-lisp:t :member-name
   "ExpiryTimestamp"))
 (:shape-name "UpdateManagedRuleSetVersionExpiryDateRequest"))

(smithy/sdk/shapes:define-output
 update-managed-rule-set-version-expiry-date-response common-lisp:nil
 ((expiring-version :target-type version-key-string :member-name
   "ExpiringVersion")
  (expiry-timestamp :target-type timestamp :member-name "ExpiryTimestamp")
  (next-lock-token :target-type lock-token :member-name "NextLockToken"))
 (:shape-name "UpdateManagedRuleSetVersionExpiryDateResponse"))

(smithy/sdk/shapes:define-input update-regex-pattern-set-request
                                common-lisp:nil
                                ((name :target-type entity-name :required
                                  common-lisp:t :member-name "Name")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (id :target-type entity-id :required
                                  common-lisp:t :member-name "Id")
                                 (description :target-type entity-description
                                  :member-name "Description")
                                 (regular-expression-list :target-type
                                  regular-expression-list :required
                                  common-lisp:t :member-name
                                  "RegularExpressionList")
                                 (lock-token :target-type lock-token :required
                                  common-lisp:t :member-name "LockToken"))
                                (:shape-name "UpdateRegexPatternSetRequest"))

(smithy/sdk/shapes:define-output update-regex-pattern-set-response
                                 common-lisp:nil
                                 ((next-lock-token :target-type lock-token
                                   :member-name "NextLockToken"))
                                 (:shape-name "UpdateRegexPatternSetResponse"))

(smithy/sdk/shapes:define-input update-rule-group-request common-lisp:nil
                                ((name :target-type entity-name :required
                                  common-lisp:t :member-name "Name")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (id :target-type entity-id :required
                                  common-lisp:t :member-name "Id")
                                 (description :target-type entity-description
                                  :member-name "Description")
                                 (rules :target-type rules :member-name
                                  "Rules")
                                 (visibility-config :target-type
                                  visibility-config :required common-lisp:t
                                  :member-name "VisibilityConfig")
                                 (lock-token :target-type lock-token :required
                                  common-lisp:t :member-name "LockToken")
                                 (custom-response-bodies :target-type
                                  custom-response-bodies :member-name
                                  "CustomResponseBodies"))
                                (:shape-name "UpdateRuleGroupRequest"))

(smithy/sdk/shapes:define-output update-rule-group-response common-lisp:nil
                                 ((next-lock-token :target-type lock-token
                                   :member-name "NextLockToken"))
                                 (:shape-name "UpdateRuleGroupResponse"))

(smithy/sdk/shapes:define-input update-web-aclrequest common-lisp:nil
                                ((name :target-type entity-name :required
                                  common-lisp:t :member-name "Name")
                                 (scope :target-type scope :required
                                  common-lisp:t :member-name "Scope")
                                 (id :target-type entity-id :required
                                  common-lisp:t :member-name "Id")
                                 (default-action :target-type default-action
                                  :required common-lisp:t :member-name
                                  "DefaultAction")
                                 (description :target-type entity-description
                                  :member-name "Description")
                                 (rules :target-type rules :member-name
                                  "Rules")
                                 (visibility-config :target-type
                                  visibility-config :required common-lisp:t
                                  :member-name "VisibilityConfig")
                                 (data-protection-config :target-type
                                  data-protection-config :member-name
                                  "DataProtectionConfig")
                                 (lock-token :target-type lock-token :required
                                  common-lisp:t :member-name "LockToken")
                                 (custom-response-bodies :target-type
                                  custom-response-bodies :member-name
                                  "CustomResponseBodies")
                                 (captcha-config :target-type captcha-config
                                  :member-name "CaptchaConfig")
                                 (challenge-config :target-type
                                  challenge-config :member-name
                                  "ChallengeConfig")
                                 (token-domains :target-type token-domains
                                  :member-name "TokenDomains")
                                 (association-config :target-type
                                  association-config :member-name
                                  "AssociationConfig")
                                 (on-source-ddo-sprotection-config :target-type
                                  on-source-ddo-sprotection-config :member-name
                                  "OnSourceDDoSProtectionConfig"))
                                (:shape-name "UpdateWebACLRequest"))

(smithy/sdk/shapes:define-output update-web-aclresponse common-lisp:nil
                                 ((next-lock-token :target-type lock-token
                                   :member-name "NextLockToken"))
                                 (:shape-name "UpdateWebACLResponse"))

(smithy/sdk/shapes:define-structure uri-fragment common-lisp:nil
                                    ((fallback-behavior :target-type
                                      fallback-behavior :member-name
                                      "FallbackBehavior"))
                                    (:shape-name "UriFragment"))

(smithy/sdk/shapes:define-structure uri-path common-lisp:nil common-lisp:nil
                                    (:shape-name "UriPath"))

(smithy/sdk/shapes:define-enum usage-of-action
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure username-field common-lisp:nil
                                    ((identifier :target-type field-identifier
                                      :required common-lisp:t :member-name
                                      "Identifier"))
                                    (:shape-name "UsernameField"))

(smithy/sdk/shapes:define-type vendor-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version-key-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure version-to-publish common-lisp:nil
                                    ((associated-rule-group-arn :target-type
                                      resource-arn :member-name
                                      "AssociatedRuleGroupArn")
                                     (forecasted-lifetime :target-type
                                      time-window-day :member-name
                                      "ForecastedLifetime"))
                                    (:shape-name "VersionToPublish"))

(smithy/sdk/shapes:define-map versions-to-publish :key version-key-string
                              :value version-to-publish)

(smithy/sdk/shapes:define-structure visibility-config common-lisp:nil
                                    ((sampled-requests-enabled :target-type
                                      boolean :required common-lisp:t
                                      :member-name "SampledRequestsEnabled")
                                     (cloud-watch-metrics-enabled :target-type
                                      boolean :required common-lisp:t
                                      :member-name "CloudWatchMetricsEnabled")
                                     (metric-name :target-type metric-name
                                      :required common-lisp:t :member-name
                                      "MetricName"))
                                    (:shape-name "VisibilityConfig"))

(smithy/sdk/shapes:define-error wafassociated-item-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "WAFAssociatedItemException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error wafconfiguration-warning-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "WAFConfigurationWarningException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error wafduplicate-item-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "WAFDuplicateItemException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error wafexpired-managed-rule-group-version-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "WAFExpiredManagedRuleGroupVersionException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error wafinternal-error-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "WAFInternalErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error wafinvalid-operation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "WAFInvalidOperationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error wafinvalid-parameter-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (field :target-type parameter-exception-field
                                  :member-name "Field")
                                 (parameter :target-type
                                  parameter-exception-parameter :member-name
                                  "Parameter")
                                 (reason :target-type error-reason :member-name
                                  "Reason"))
                                (:shape-name "WAFInvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error wafinvalid-permission-policy-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "WAFInvalidPermissionPolicyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error wafinvalid-resource-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "WAFInvalidResourceException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error waflimits-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (source-type :target-type source-type
                                  :member-name "SourceType"))
                                (:shape-name "WAFLimitsExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error waflog-destination-permission-issue-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "WAFLogDestinationPermissionIssueException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error wafnonexistent-item-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "WAFNonexistentItemException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error wafoptimistic-lock-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "WAFOptimisticLockException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error wafservice-linked-role-error-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "WAFServiceLinkedRoleErrorException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error wafsubscription-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "WAFSubscriptionNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error waftag-operation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "WAFTagOperationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error waftag-operation-internal-error-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "WAFTagOperationInternalErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error wafunavailable-entity-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "WAFUnavailableEntityException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error wafunsupported-aggregate-key-type-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "WAFUnsupportedAggregateKeyTypeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure web-acl common-lisp:nil
                                    ((name :target-type entity-name :required
                                      common-lisp:t :member-name "Name")
                                     (id :target-type entity-id :required
                                      common-lisp:t :member-name "Id")
                                     (arn :target-type resource-arn :required
                                      common-lisp:t :member-name "ARN")
                                     (default-action :target-type
                                      default-action :required common-lisp:t
                                      :member-name "DefaultAction")
                                     (description :target-type
                                      entity-description :member-name
                                      "Description")
                                     (rules :target-type rules :member-name
                                      "Rules")
                                     (visibility-config :target-type
                                      visibility-config :required common-lisp:t
                                      :member-name "VisibilityConfig")
                                     (data-protection-config :target-type
                                      data-protection-config :member-name
                                      "DataProtectionConfig")
                                     (capacity :target-type consumed-capacity
                                      :member-name "Capacity")
                                     (pre-process-firewall-manager-rule-groups
                                      :target-type firewall-manager-rule-groups
                                      :member-name
                                      "PreProcessFirewallManagerRuleGroups")
                                     (post-process-firewall-manager-rule-groups
                                      :target-type firewall-manager-rule-groups
                                      :member-name
                                      "PostProcessFirewallManagerRuleGroups")
                                     (managed-by-firewall-manager :target-type
                                      boolean :member-name
                                      "ManagedByFirewallManager")
                                     (label-namespace :target-type label-name
                                      :member-name "LabelNamespace")
                                     (custom-response-bodies :target-type
                                      custom-response-bodies :member-name
                                      "CustomResponseBodies")
                                     (captcha-config :target-type
                                      captcha-config :member-name
                                      "CaptchaConfig")
                                     (challenge-config :target-type
                                      challenge-config :member-name
                                      "ChallengeConfig")
                                     (token-domains :target-type token-domains
                                      :member-name "TokenDomains")
                                     (association-config :target-type
                                      association-config :member-name
                                      "AssociationConfig")
                                     (retrofitted-by-firewall-manager
                                      :target-type boolean :member-name
                                      "RetrofittedByFirewallManager")
                                     (on-source-ddo-sprotection-config
                                      :target-type
                                      on-source-ddo-sprotection-config
                                      :member-name
                                      "OnSourceDDoSProtectionConfig")
                                     (application-config :target-type
                                      application-config :member-name
                                      "ApplicationConfig"))
                                    (:shape-name "WebACL"))

(smithy/sdk/shapes:define-list web-aclsummaries :member web-aclsummary)

(smithy/sdk/shapes:define-structure web-aclsummary common-lisp:nil
                                    ((name :target-type entity-name
                                      :member-name "Name")
                                     (id :target-type entity-id :member-name
                                      "Id")
                                     (description :target-type
                                      entity-description :member-name
                                      "Description")
                                     (lock-token :target-type lock-token
                                      :member-name "LockToken")
                                     (arn :target-type resource-arn
                                      :member-name "ARN"))
                                    (:shape-name "WebACLSummary"))

(smithy/sdk/shapes:define-structure xss-match-statement common-lisp:nil
                                    ((field-to-match :target-type
                                      field-to-match :required common-lisp:t
                                      :member-name "FieldToMatch")
                                     (text-transformations :target-type
                                      text-transformations :required
                                      common-lisp:t :member-name
                                      "TextTransformations"))
                                    (:shape-name "XssMatchStatement"))

(smithy/sdk/operation:define-operation associate-web-acl :shape-name
                                       "AssociateWebACL" :input
                                       associate-web-aclrequest :output
                                       associate-web-aclresponse :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception
                                        wafunavailable-entity-exception))

(smithy/sdk/operation:define-operation check-capacity :shape-name
                                       "CheckCapacity" :input
                                       check-capacity-request :output
                                       check-capacity-response :errors
                                       (wafexpired-managed-rule-group-version-exception
                                        wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafinvalid-resource-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-item-exception
                                        wafsubscription-not-found-exception
                                        wafunavailable-entity-exception))

(smithy/sdk/operation:define-operation create-apikey :shape-name "CreateAPIKey"
                                       :input create-apikey-request :output
                                       create-apikey-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception))

(smithy/sdk/operation:define-operation create-ipset :shape-name "CreateIPSet"
                                       :input create-ipset-request :output
                                       create-ipset-response :errors
                                       (wafduplicate-item-exception
                                        wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafoptimistic-lock-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception))

(smithy/sdk/operation:define-operation create-regex-pattern-set :shape-name
                                       "CreateRegexPatternSet" :input
                                       create-regex-pattern-set-request :output
                                       create-regex-pattern-set-response
                                       :errors
                                       (wafduplicate-item-exception
                                        wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafoptimistic-lock-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception))

(smithy/sdk/operation:define-operation create-rule-group :shape-name
                                       "CreateRuleGroup" :input
                                       create-rule-group-request :output
                                       create-rule-group-response :errors
                                       (wafduplicate-item-exception
                                        wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-item-exception
                                        wafoptimistic-lock-exception
                                        wafsubscription-not-found-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception
                                        wafunavailable-entity-exception))

(smithy/sdk/operation:define-operation create-web-acl :shape-name
                                       "CreateWebACL" :input
                                       create-web-aclrequest :output
                                       create-web-aclresponse :errors
                                       (wafconfiguration-warning-exception
                                        wafduplicate-item-exception
                                        wafexpired-managed-rule-group-version-exception
                                        wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafinvalid-resource-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-item-exception
                                        wafoptimistic-lock-exception
                                        wafsubscription-not-found-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception
                                        wafunavailable-entity-exception))

(smithy/sdk/operation:define-operation delete-apikey :shape-name "DeleteAPIKey"
                                       :input delete-apikey-request :output
                                       delete-apikey-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception
                                        wafoptimistic-lock-exception))

(smithy/sdk/operation:define-operation delete-firewall-manager-rule-groups
                                       :shape-name
                                       "DeleteFirewallManagerRuleGroups" :input
                                       delete-firewall-manager-rule-groups-request
                                       :output
                                       delete-firewall-manager-rule-groups-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception
                                        wafoptimistic-lock-exception))

(smithy/sdk/operation:define-operation delete-ipset :shape-name "DeleteIPSet"
                                       :input delete-ipset-request :output
                                       delete-ipset-response :errors
                                       (wafassociated-item-exception
                                        wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception
                                        wafoptimistic-lock-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception))

(smithy/sdk/operation:define-operation delete-logging-configuration :shape-name
                                       "DeleteLoggingConfiguration" :input
                                       delete-logging-configuration-request
                                       :output
                                       delete-logging-configuration-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception
                                        wafoptimistic-lock-exception))

(smithy/sdk/operation:define-operation delete-permission-policy :shape-name
                                       "DeletePermissionPolicy" :input
                                       delete-permission-policy-request :output
                                       delete-permission-policy-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation delete-regex-pattern-set :shape-name
                                       "DeleteRegexPatternSet" :input
                                       delete-regex-pattern-set-request :output
                                       delete-regex-pattern-set-response
                                       :errors
                                       (wafassociated-item-exception
                                        wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception
                                        wafoptimistic-lock-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception))

(smithy/sdk/operation:define-operation delete-rule-group :shape-name
                                       "DeleteRuleGroup" :input
                                       delete-rule-group-request :output
                                       delete-rule-group-response :errors
                                       (wafassociated-item-exception
                                        wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception
                                        wafoptimistic-lock-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception))

(smithy/sdk/operation:define-operation delete-web-acl :shape-name
                                       "DeleteWebACL" :input
                                       delete-web-aclrequest :output
                                       delete-web-aclresponse :errors
                                       (wafassociated-item-exception
                                        wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception
                                        wafoptimistic-lock-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception))

(smithy/sdk/operation:define-operation describe-all-managed-products
                                       :shape-name "DescribeAllManagedProducts"
                                       :input
                                       describe-all-managed-products-request
                                       :output
                                       describe-all-managed-products-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception))

(smithy/sdk/operation:define-operation describe-managed-products-by-vendor
                                       :shape-name
                                       "DescribeManagedProductsByVendor" :input
                                       describe-managed-products-by-vendor-request
                                       :output
                                       describe-managed-products-by-vendor-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception))

(smithy/sdk/operation:define-operation describe-managed-rule-group :shape-name
                                       "DescribeManagedRuleGroup" :input
                                       describe-managed-rule-group-request
                                       :output
                                       describe-managed-rule-group-response
                                       :errors
                                       (wafexpired-managed-rule-group-version-exception
                                        wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafinvalid-resource-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation disassociate-web-acl :shape-name
                                       "DisassociateWebACL" :input
                                       disassociate-web-aclrequest :output
                                       disassociate-web-aclresponse :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation generate-mobile-sdk-release-url
                                       :shape-name
                                       "GenerateMobileSdkReleaseUrl" :input
                                       generate-mobile-sdk-release-url-request
                                       :output
                                       generate-mobile-sdk-release-url-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-decrypted-apikey :shape-name
                                       "GetDecryptedAPIKey" :input
                                       get-decrypted-apikey-request :output
                                       get-decrypted-apikey-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafinvalid-resource-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-ipset :shape-name "GetIPSet" :input
                                       get-ipset-request :output
                                       get-ipset-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-logging-configuration :shape-name
                                       "GetLoggingConfiguration" :input
                                       get-logging-configuration-request
                                       :output
                                       get-logging-configuration-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-managed-rule-set :shape-name
                                       "GetManagedRuleSet" :input
                                       get-managed-rule-set-request :output
                                       get-managed-rule-set-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-mobile-sdk-release :shape-name
                                       "GetMobileSdkRelease" :input
                                       get-mobile-sdk-release-request :output
                                       get-mobile-sdk-release-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-permission-policy :shape-name
                                       "GetPermissionPolicy" :input
                                       get-permission-policy-request :output
                                       get-permission-policy-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-rate-based-statement-managed-keys
                                       :shape-name
                                       "GetRateBasedStatementManagedKeys"
                                       :input
                                       get-rate-based-statement-managed-keys-request
                                       :output
                                       get-rate-based-statement-managed-keys-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception
                                        wafunsupported-aggregate-key-type-exception))

(smithy/sdk/operation:define-operation get-regex-pattern-set :shape-name
                                       "GetRegexPatternSet" :input
                                       get-regex-pattern-set-request :output
                                       get-regex-pattern-set-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-rule-group :shape-name
                                       "GetRuleGroup" :input
                                       get-rule-group-request :output
                                       get-rule-group-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-sampled-requests :shape-name
                                       "GetSampledRequests" :input
                                       get-sampled-requests-request :output
                                       get-sampled-requests-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-web-acl :shape-name "GetWebACL"
                                       :input get-web-aclrequest :output
                                       get-web-aclresponse :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation get-web-aclfor-resource :shape-name
                                       "GetWebACLForResource" :input
                                       get-web-aclfor-resource-request :output
                                       get-web-aclfor-resource-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception
                                        wafunavailable-entity-exception))

(smithy/sdk/operation:define-operation list-apikeys :shape-name "ListAPIKeys"
                                       :input list-apikeys-request :output
                                       list-apikeys-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafinvalid-resource-exception))

(smithy/sdk/operation:define-operation
 list-available-managed-rule-group-versions :shape-name
 "ListAvailableManagedRuleGroupVersions" :input
 list-available-managed-rule-group-versions-request :output
 list-available-managed-rule-group-versions-response :errors
 (wafinternal-error-exception wafinvalid-operation-exception
  wafinvalid-parameter-exception wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation list-available-managed-rule-groups
                                       :shape-name
                                       "ListAvailableManagedRuleGroups" :input
                                       list-available-managed-rule-groups-request
                                       :output
                                       list-available-managed-rule-groups-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception))

(smithy/sdk/operation:define-operation list-ipsets :shape-name "ListIPSets"
                                       :input list-ipsets-request :output
                                       list-ipsets-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception))

(smithy/sdk/operation:define-operation list-logging-configurations :shape-name
                                       "ListLoggingConfigurations" :input
                                       list-logging-configurations-request
                                       :output
                                       list-logging-configurations-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception))

(smithy/sdk/operation:define-operation list-managed-rule-sets :shape-name
                                       "ListManagedRuleSets" :input
                                       list-managed-rule-sets-request :output
                                       list-managed-rule-sets-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception))

(smithy/sdk/operation:define-operation list-mobile-sdk-releases :shape-name
                                       "ListMobileSdkReleases" :input
                                       list-mobile-sdk-releases-request :output
                                       list-mobile-sdk-releases-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception))

(smithy/sdk/operation:define-operation list-regex-pattern-sets :shape-name
                                       "ListRegexPatternSets" :input
                                       list-regex-pattern-sets-request :output
                                       list-regex-pattern-sets-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception))

(smithy/sdk/operation:define-operation list-resources-for-web-acl :shape-name
                                       "ListResourcesForWebACL" :input
                                       list-resources-for-web-aclrequest
                                       :output
                                       list-resources-for-web-aclresponse
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation list-rule-groups :shape-name
                                       "ListRuleGroups" :input
                                       list-rule-groups-request :output
                                       list-rule-groups-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception))

(smithy/sdk/operation:define-operation list-web-acls :shape-name "ListWebACLs"
                                       :input list-web-acls-request :output
                                       list-web-acls-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception))

(smithy/sdk/operation:define-operation put-logging-configuration :shape-name
                                       "PutLoggingConfiguration" :input
                                       put-logging-configuration-request
                                       :output
                                       put-logging-configuration-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        waflog-destination-permission-issue-exception
                                        wafnonexistent-item-exception
                                        wafoptimistic-lock-exception
                                        wafservice-linked-role-error-exception))

(smithy/sdk/operation:define-operation put-managed-rule-set-versions
                                       :shape-name "PutManagedRuleSetVersions"
                                       :input
                                       put-managed-rule-set-versions-request
                                       :output
                                       put-managed-rule-set-versions-response
                                       :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception
                                        wafoptimistic-lock-exception))

(smithy/sdk/operation:define-operation put-permission-policy :shape-name
                                       "PutPermissionPolicy" :input
                                       put-permission-policy-request :output
                                       put-permission-policy-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-parameter-exception
                                        wafinvalid-permission-policy-exception
                                        wafnonexistent-item-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-item-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafnonexistent-item-exception
                                        waftag-operation-exception
                                        waftag-operation-internal-error-exception))

(smithy/sdk/operation:define-operation update-ipset :shape-name "UpdateIPSet"
                                       :input update-ipset-request :output
                                       update-ipset-response :errors
                                       (wafduplicate-item-exception
                                        wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-item-exception
                                        wafoptimistic-lock-exception))

(smithy/sdk/operation:define-operation
 update-managed-rule-set-version-expiry-date :shape-name
 "UpdateManagedRuleSetVersionExpiryDate" :input
 update-managed-rule-set-version-expiry-date-request :output
 update-managed-rule-set-version-expiry-date-response :errors
 (wafinternal-error-exception wafinvalid-operation-exception
  wafinvalid-parameter-exception wafnonexistent-item-exception
  wafoptimistic-lock-exception))

(smithy/sdk/operation:define-operation update-regex-pattern-set :shape-name
                                       "UpdateRegexPatternSet" :input
                                       update-regex-pattern-set-request :output
                                       update-regex-pattern-set-response
                                       :errors
                                       (wafduplicate-item-exception
                                        wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-item-exception
                                        wafoptimistic-lock-exception))

(smithy/sdk/operation:define-operation update-rule-group :shape-name
                                       "UpdateRuleGroup" :input
                                       update-rule-group-request :output
                                       update-rule-group-response :errors
                                       (wafconfiguration-warning-exception
                                        wafduplicate-item-exception
                                        wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-item-exception
                                        wafoptimistic-lock-exception
                                        wafsubscription-not-found-exception
                                        wafunavailable-entity-exception))

(smithy/sdk/operation:define-operation update-web-acl :shape-name
                                       "UpdateWebACL" :input
                                       update-web-aclrequest :output
                                       update-web-aclresponse :errors
                                       (wafconfiguration-warning-exception
                                        wafduplicate-item-exception
                                        wafexpired-managed-rule-group-version-exception
                                        wafinternal-error-exception
                                        wafinvalid-operation-exception
                                        wafinvalid-parameter-exception
                                        wafinvalid-resource-exception
                                        waflimits-exceeded-exception
                                        wafnonexistent-item-exception
                                        wafoptimistic-lock-exception
                                        wafsubscription-not-found-exception
                                        wafunavailable-entity-exception))
