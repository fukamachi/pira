(uiop/package:define-package #:pira/cloudfront (:use)
                             (:export #:access-control-allow-headers-list
                              #:access-control-allow-methods-list
                              #:access-control-allow-origins-list
                              #:access-control-expose-headers-list
                              #:active-trusted-key-groups
                              #:active-trusted-signers #:alias-icprecordal
                              #:alias-icprecordals #:alias-list #:aliases
                              #:allowed-methods #:anycast-ip-list
                              #:anycast-ip-list-collection
                              #:anycast-ip-list-name
                              #:anycast-ip-list-summaries
                              #:anycast-ip-list-summary #:anycast-ips
                              #:associate-alias
                              #:associate-distribution-tenant-web-acl
                              #:associate-distribution-web-acl
                              #:aws-account-number-list #:cache-behavior
                              #:cache-behavior-list #:cache-behaviors
                              #:cache-policy #:cache-policy-config
                              #:cache-policy-cookie-behavior
                              #:cache-policy-cookies-config
                              #:cache-policy-header-behavior
                              #:cache-policy-headers-config #:cache-policy-list
                              #:cache-policy-query-string-behavior
                              #:cache-policy-query-strings-config
                              #:cache-policy-summary
                              #:cache-policy-summary-list #:cache-policy-type
                              #:cached-methods #:certificate
                              #:certificate-source
                              #:certificate-transparency-logging-preference
                              #:cloud-front-origin-access-identity
                              #:cloud-front-origin-access-identity-config
                              #:cloud-front-origin-access-identity-list
                              #:cloud-front-origin-access-identity-summary
                              #:cloud-front-origin-access-identity-summary-list
                              #:cloudfront2020-05-31 #:comment-type
                              #:conflicting-alias #:conflicting-aliases
                              #:conflicting-aliases-list #:connection-group
                              #:connection-group-association-filter
                              #:connection-group-summary
                              #:connection-group-summary-list #:connection-mode
                              #:content-type-profile
                              #:content-type-profile-config
                              #:content-type-profile-list
                              #:content-type-profiles
                              #:continuous-deployment-policy
                              #:continuous-deployment-policy-config
                              #:continuous-deployment-policy-list
                              #:continuous-deployment-policy-summary
                              #:continuous-deployment-policy-summary-list
                              #:continuous-deployment-policy-type
                              #:continuous-deployment-single-header-config
                              #:continuous-deployment-single-weight-config
                              #:cookie-name-list #:cookie-names
                              #:cookie-preference #:copy-distribution
                              #:create-anycast-ip-list #:create-cache-policy
                              #:create-cloud-front-origin-access-identity
                              #:create-connection-group
                              #:create-continuous-deployment-policy
                              #:create-distribution
                              #:create-distribution-tenant
                              #:create-distribution-with-tags
                              #:create-field-level-encryption-config
                              #:create-field-level-encryption-profile
                              #:create-function #:create-invalidation
                              #:create-invalidation-for-distribution-tenant
                              #:create-key-group #:create-key-value-store
                              #:create-monitoring-subscription
                              #:create-origin-access-control
                              #:create-origin-request-policy
                              #:create-public-key #:create-realtime-log-config
                              #:create-response-headers-policy
                              #:create-streaming-distribution
                              #:create-streaming-distribution-with-tags
                              #:create-vpc-origin #:custom-error-response
                              #:custom-error-response-list
                              #:custom-error-responses #:custom-headers
                              #:custom-origin-config
                              #:customization-action-type #:customizations
                              #:default-cache-behavior #:delete-anycast-ip-list
                              #:delete-cache-policy
                              #:delete-cloud-front-origin-access-identity
                              #:delete-connection-group
                              #:delete-continuous-deployment-policy
                              #:delete-distribution
                              #:delete-distribution-tenant
                              #:delete-field-level-encryption-config
                              #:delete-field-level-encryption-profile
                              #:delete-function #:delete-key-group
                              #:delete-key-value-store
                              #:delete-monitoring-subscription
                              #:delete-origin-access-control
                              #:delete-origin-request-policy
                              #:delete-public-key #:delete-realtime-log-config
                              #:delete-response-headers-policy
                              #:delete-streaming-distribution
                              #:delete-vpc-origin #:describe-function
                              #:describe-key-value-store
                              #:disassociate-distribution-tenant-web-acl
                              #:disassociate-distribution-web-acl
                              #:distribution #:distribution-config
                              #:distribution-config-with-tags
                              #:distribution-id-list
                              #:distribution-id-list-summary
                              #:distribution-list #:distribution-resource-id
                              #:distribution-resource-type
                              #:distribution-summary
                              #:distribution-summary-list #:distribution-tenant
                              #:distribution-tenant-association-filter
                              #:distribution-tenant-list
                              #:distribution-tenant-summary #:dns-configuration
                              #:dns-configuration-list
                              #:dns-configuration-status #:domain-conflict
                              #:domain-conflicts-list #:domain-item
                              #:domain-list #:domain-result
                              #:domain-result-list #:domain-status
                              #:encryption-entities #:encryption-entity
                              #:encryption-entity-list #:end-point
                              #:end-point-list #:event-type
                              #:field-level-encryption
                              #:field-level-encryption-config
                              #:field-level-encryption-list
                              #:field-level-encryption-profile
                              #:field-level-encryption-profile-config
                              #:field-level-encryption-profile-list
                              #:field-level-encryption-profile-summary
                              #:field-level-encryption-profile-summary-list
                              #:field-level-encryption-summary
                              #:field-level-encryption-summary-list
                              #:field-list #:field-pattern-list
                              #:field-patterns #:format #:forwarded-values
                              #:frame-options-list #:function-arn
                              #:function-association
                              #:function-association-list
                              #:function-associations #:function-blob
                              #:function-config #:function-event-object
                              #:function-execution-log-list #:function-list
                              #:function-metadata #:function-name
                              #:function-runtime #:function-stage
                              #:function-summary #:function-summary-list
                              #:geo-restriction #:geo-restriction-customization
                              #:geo-restriction-type #:get-anycast-ip-list
                              #:get-cache-policy #:get-cache-policy-config
                              #:get-cloud-front-origin-access-identity
                              #:get-cloud-front-origin-access-identity-config
                              #:get-connection-group
                              #:get-connection-group-by-routing-endpoint
                              #:get-continuous-deployment-policy
                              #:get-continuous-deployment-policy-config
                              #:get-distribution #:get-distribution-config
                              #:get-distribution-tenant
                              #:get-distribution-tenant-by-domain
                              #:get-field-level-encryption
                              #:get-field-level-encryption-config
                              #:get-field-level-encryption-profile
                              #:get-field-level-encryption-profile-config
                              #:get-function #:get-invalidation
                              #:get-invalidation-for-distribution-tenant
                              #:get-key-group #:get-key-group-config
                              #:get-managed-certificate-details
                              #:get-monitoring-subscription
                              #:get-origin-access-control
                              #:get-origin-access-control-config
                              #:get-origin-request-policy
                              #:get-origin-request-policy-config
                              #:get-public-key #:get-public-key-config
                              #:get-realtime-log-config
                              #:get-response-headers-policy
                              #:get-response-headers-policy-config
                              #:get-streaming-distribution
                              #:get-streaming-distribution-config
                              #:get-vpc-origin #:grpc-config #:header-list
                              #:headers #:http-version #:icprecordal-status
                              #:import-source #:import-source-type
                              #:invalidation #:invalidation-batch
                              #:invalidation-list #:invalidation-summary
                              #:invalidation-summary-list #:item-selection
                              #:kgkey-pair-ids #:kgkey-pair-ids-list
                              #:key-group #:key-group-config #:key-group-list
                              #:key-group-summary #:key-group-summary-list
                              #:key-pair-id-list #:key-pair-ids
                              #:key-value-store #:key-value-store-arn
                              #:key-value-store-association
                              #:key-value-store-association-list
                              #:key-value-store-associations
                              #:key-value-store-comment #:key-value-store-list
                              #:key-value-store-name
                              #:key-value-store-summary-list
                              #:kinesis-stream-config #:lambda-function-arn
                              #:lambda-function-association
                              #:lambda-function-association-list
                              #:lambda-function-associations
                              #:list-anycast-ip-lists #:list-cache-policies
                              #:list-cloud-front-origin-access-identities
                              #:list-conflicting-aliases
                              #:list-connection-groups
                              #:list-continuous-deployment-policies
                              #:list-distribution-tenants
                              #:list-distribution-tenants-by-customization
                              #:list-distributions
                              #:list-distributions-by-anycast-ip-list-id
                              #:list-distributions-by-cache-policy-id
                              #:list-distributions-by-connection-mode
                              #:list-distributions-by-key-group
                              #:list-distributions-by-origin-request-policy-id
                              #:list-distributions-by-realtime-log-config
                              #:list-distributions-by-response-headers-policy-id
                              #:list-distributions-by-vpc-origin-id
                              #:list-distributions-by-web-aclid
                              #:list-domain-conflicts
                              #:list-field-level-encryption-configs
                              #:list-field-level-encryption-profiles
                              #:list-functions #:list-invalidations
                              #:list-invalidations-for-distribution-tenant
                              #:list-key-groups #:list-key-value-stores
                              #:list-origin-access-controls
                              #:list-origin-request-policies #:list-public-keys
                              #:list-realtime-log-configs
                              #:list-response-headers-policies
                              #:list-streaming-distributions
                              #:list-tags-for-resource #:list-vpc-origins
                              #:location-list #:logging-config
                              #:managed-certificate-details
                              #:managed-certificate-request
                              #:managed-certificate-status #:method
                              #:methods-list #:minimum-protocol-version
                              #:monitoring-subscription #:origin
                              #:origin-access-control
                              #:origin-access-control-config
                              #:origin-access-control-list
                              #:origin-access-control-origin-types
                              #:origin-access-control-signing-behaviors
                              #:origin-access-control-signing-protocols
                              #:origin-access-control-summary
                              #:origin-access-control-summary-list
                              #:origin-custom-header
                              #:origin-custom-headers-list #:origin-group
                              #:origin-group-failover-criteria
                              #:origin-group-list #:origin-group-member
                              #:origin-group-member-list #:origin-group-members
                              #:origin-group-selection-criteria #:origin-groups
                              #:origin-list #:origin-protocol-policy
                              #:origin-request-policy
                              #:origin-request-policy-config
                              #:origin-request-policy-cookie-behavior
                              #:origin-request-policy-cookies-config
                              #:origin-request-policy-header-behavior
                              #:origin-request-policy-headers-config
                              #:origin-request-policy-list
                              #:origin-request-policy-query-string-behavior
                              #:origin-request-policy-query-strings-config
                              #:origin-request-policy-summary
                              #:origin-request-policy-summary-list
                              #:origin-request-policy-type #:origin-shield
                              #:origin-shield-region #:origin-ssl-protocols
                              #:origins #:parameter #:parameter-definition
                              #:parameter-definition-schema
                              #:parameter-definitions #:parameter-name
                              #:parameter-value #:parameters
                              #:parameters-in-cache-key-and-forwarded-to-origin
                              #:path-list #:paths #:price-class #:public-key
                              #:public-key-config #:public-key-id-list
                              #:public-key-list #:public-key-summary
                              #:public-key-summary-list #:publish-function
                              #:query-arg-profile #:query-arg-profile-config
                              #:query-arg-profile-list #:query-arg-profiles
                              #:query-string-cache-keys
                              #:query-string-cache-keys-list
                              #:query-string-names #:query-string-names-list
                              #:realtime-log-config #:realtime-log-config-list
                              #:realtime-log-configs
                              #:realtime-metrics-subscription-config
                              #:realtime-metrics-subscription-status
                              #:referrer-policy-list #:resource-arn
                              #:response-headers-policy
                              #:response-headers-policy-access-control-allow-headers
                              #:response-headers-policy-access-control-allow-methods
                              #:response-headers-policy-access-control-allow-methods-values
                              #:response-headers-policy-access-control-allow-origins
                              #:response-headers-policy-access-control-expose-headers
                              #:response-headers-policy-config
                              #:response-headers-policy-content-security-policy
                              #:response-headers-policy-content-type-options
                              #:response-headers-policy-cors-config
                              #:response-headers-policy-custom-header
                              #:response-headers-policy-custom-header-list
                              #:response-headers-policy-custom-headers-config
                              #:response-headers-policy-frame-options
                              #:response-headers-policy-list
                              #:response-headers-policy-referrer-policy
                              #:response-headers-policy-remove-header
                              #:response-headers-policy-remove-header-list
                              #:response-headers-policy-remove-headers-config
                              #:response-headers-policy-security-headers-config
                              #:response-headers-policy-server-timing-headers-config
                              #:response-headers-policy-strict-transport-security
                              #:response-headers-policy-summary
                              #:response-headers-policy-summary-list
                              #:response-headers-policy-type
                              #:response-headers-policy-xssprotection
                              #:restrictions #:s3origin #:s3origin-config
                              #:sslsupport-method #:sampling-rate
                              #:server-certificate-id
                              #:session-stickiness-config #:signer
                              #:signer-list #:ssl-protocol #:ssl-protocols-list
                              #:staging-distribution-dns-name-list
                              #:staging-distribution-dns-names
                              #:status-code-list #:status-codes
                              #:streaming-distribution
                              #:streaming-distribution-config
                              #:streaming-distribution-config-with-tags
                              #:streaming-distribution-list
                              #:streaming-distribution-summary
                              #:streaming-distribution-summary-list
                              #:streaming-logging-config #:string-schema-config
                              #:tag #:tag-key #:tag-key-list #:tag-keys
                              #:tag-list #:tag-resource #:tag-value #:tags
                              #:tenant-config #:test-function #:test-result
                              #:traffic-config #:trusted-key-group-id-list
                              #:trusted-key-groups #:trusted-signers
                              #:untag-resource #:update-cache-policy
                              #:update-cloud-front-origin-access-identity
                              #:update-connection-group
                              #:update-continuous-deployment-policy
                              #:update-distribution
                              #:update-distribution-tenant
                              #:update-distribution-with-staging-config
                              #:update-domain-association
                              #:update-field-level-encryption-config
                              #:update-field-level-encryption-profile
                              #:update-function #:update-key-group
                              #:update-key-value-store
                              #:update-origin-access-control
                              #:update-origin-request-policy
                              #:update-public-key #:update-realtime-log-config
                              #:update-response-headers-policy
                              #:update-streaming-distribution
                              #:update-vpc-origin #:validation-token-detail
                              #:validation-token-detail-list
                              #:validation-token-host
                              #:verify-dns-configuration #:viewer-certificate
                              #:viewer-protocol-policy #:vpc-origin
                              #:vpc-origin-config #:vpc-origin-endpoint-config
                              #:vpc-origin-list #:vpc-origin-summary
                              #:vpc-origin-summary-list #:web-acl-customization
                              #:alias-string #:boolean #:distribution-id-string
                              #:float #:integer
                              #:list-conflicting-aliases-max-items-integer
                              #:long #:sensitive-string-type #:string
                              #:timestamp))
(common-lisp:in-package #:pira/cloudfront)

(smithy/sdk/service:define-service cloudfront2020-05-31 :shape-name
                                   "Cloudfront2020_05_31" :version "2020-05-31"
                                   :title "Amazon CloudFront" :operations
                                   '(associate-alias
                                     associate-distribution-tenant-web-acl
                                     associate-distribution-web-acl
                                     copy-distribution create-anycast-ip-list
                                     create-cache-policy
                                     create-cloud-front-origin-access-identity
                                     create-connection-group
                                     create-continuous-deployment-policy
                                     create-distribution
                                     create-distribution-tenant
                                     create-distribution-with-tags
                                     create-field-level-encryption-config
                                     create-field-level-encryption-profile
                                     create-function create-invalidation
                                     create-invalidation-for-distribution-tenant
                                     create-key-group create-key-value-store
                                     create-monitoring-subscription
                                     create-origin-access-control
                                     create-origin-request-policy
                                     create-public-key
                                     create-realtime-log-config
                                     create-response-headers-policy
                                     create-streaming-distribution
                                     create-streaming-distribution-with-tags
                                     create-vpc-origin delete-anycast-ip-list
                                     delete-cache-policy
                                     delete-cloud-front-origin-access-identity
                                     delete-connection-group
                                     delete-continuous-deployment-policy
                                     delete-distribution
                                     delete-distribution-tenant
                                     delete-field-level-encryption-config
                                     delete-field-level-encryption-profile
                                     delete-function delete-key-group
                                     delete-key-value-store
                                     delete-monitoring-subscription
                                     delete-origin-access-control
                                     delete-origin-request-policy
                                     delete-public-key
                                     delete-realtime-log-config
                                     delete-response-headers-policy
                                     delete-streaming-distribution
                                     delete-vpc-origin describe-function
                                     describe-key-value-store
                                     disassociate-distribution-tenant-web-acl
                                     disassociate-distribution-web-acl
                                     get-anycast-ip-list get-cache-policy
                                     get-cache-policy-config
                                     get-cloud-front-origin-access-identity
                                     get-cloud-front-origin-access-identity-config
                                     get-connection-group
                                     get-connection-group-by-routing-endpoint
                                     get-continuous-deployment-policy
                                     get-continuous-deployment-policy-config
                                     get-distribution get-distribution-config
                                     get-distribution-tenant
                                     get-distribution-tenant-by-domain
                                     get-field-level-encryption
                                     get-field-level-encryption-config
                                     get-field-level-encryption-profile
                                     get-field-level-encryption-profile-config
                                     get-function get-invalidation
                                     get-invalidation-for-distribution-tenant
                                     get-key-group get-key-group-config
                                     get-managed-certificate-details
                                     get-monitoring-subscription
                                     get-origin-access-control
                                     get-origin-access-control-config
                                     get-origin-request-policy
                                     get-origin-request-policy-config
                                     get-public-key get-public-key-config
                                     get-realtime-log-config
                                     get-response-headers-policy
                                     get-response-headers-policy-config
                                     get-streaming-distribution
                                     get-streaming-distribution-config
                                     get-vpc-origin list-anycast-ip-lists
                                     list-cache-policies
                                     list-cloud-front-origin-access-identities
                                     list-conflicting-aliases
                                     list-connection-groups
                                     list-continuous-deployment-policies
                                     list-distributions
                                     list-distributions-by-anycast-ip-list-id
                                     list-distributions-by-cache-policy-id
                                     list-distributions-by-connection-mode
                                     list-distributions-by-key-group
                                     list-distributions-by-origin-request-policy-id
                                     list-distributions-by-realtime-log-config
                                     list-distributions-by-response-headers-policy-id
                                     list-distributions-by-vpc-origin-id
                                     list-distributions-by-web-aclid
                                     list-distribution-tenants
                                     list-distribution-tenants-by-customization
                                     list-domain-conflicts
                                     list-field-level-encryption-configs
                                     list-field-level-encryption-profiles
                                     list-functions list-invalidations
                                     list-invalidations-for-distribution-tenant
                                     list-key-groups list-key-value-stores
                                     list-origin-access-controls
                                     list-origin-request-policies
                                     list-public-keys list-realtime-log-configs
                                     list-response-headers-policies
                                     list-streaming-distributions
                                     list-tags-for-resource list-vpc-origins
                                     publish-function tag-resource
                                     test-function untag-resource
                                     update-cache-policy
                                     update-cloud-front-origin-access-identity
                                     update-connection-group
                                     update-continuous-deployment-policy
                                     update-distribution
                                     update-distribution-tenant
                                     update-distribution-with-staging-config
                                     update-domain-association
                                     update-field-level-encryption-config
                                     update-field-level-encryption-profile
                                     update-function update-key-group
                                     update-key-value-store
                                     update-origin-access-control
                                     update-origin-request-policy
                                     update-public-key
                                     update-realtime-log-config
                                     update-response-headers-policy
                                     update-streaming-distribution
                                     update-vpc-origin
                                     verify-dns-configuration)
                                   :xml-namespace
                                   (:uri
                                    "http://cloudfront.amazonaws.com/doc/2020-05-31/"
                                    :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CloudFront")
                                      ("arnNamespace" . "cloudfront")
                                      ("cloudFormationName" . "CloudFront")
                                      ("cloudTrailEventSource"
                                       . "cloudfront.amazonaws.com")
                                      ("endpointPrefix" . "cloudfront"))
                                     ("aws.auth#sigv4" ("name" . "cloudfront"))
                                     ("aws.endpoints#standardPartitionalEndpoints"
                                      ("endpointPatternType"
                                       . "service_dnsSuffix")
                                      ("partitionEndpointSpecialCases"
                                       ("aws"
                                        . #((("endpoint"
                                              . "https://cloudfront.global.api.aws")
                                             ("region" . "us-east-1")
                                             ("dualStack" . common-lisp:t))
                                            (("endpoint"
                                              . "https://cloudfront-fips.global.api.aws")
                                             ("region" . "us-east-1")
                                             ("dualStack" . common-lisp:t)
                                             ("fips" . common-lisp:t))))
                                       ("aws-cn"
                                        . #((("endpoint"
                                              . "https://cloudfront.cn-northwest-1.amazonaws.com.cn")
                                             ("region" . "cn-northwest-1"))
                                            (("endpoint"
                                              . "https://cloudfront-fips.cn-northwest-1.amazonaws.com.cn")
                                             ("region" . "cn-northwest-1")
                                             ("fips" . common-lisp:t))))))
                                     ("aws.protocols#restXml")))

(smithy/sdk/shapes:define-list access-control-allow-headers-list :member
                               (string :xml-name "Header"))

(smithy/sdk/shapes:define-list access-control-allow-methods-list :member
                               (response-headers-policy-access-control-allow-methods-values
                                :xml-name "Method"))

(smithy/sdk/shapes:define-list access-control-allow-origins-list :member
                               (string :xml-name "Origin"))

(smithy/sdk/shapes:define-list access-control-expose-headers-list :member
                               (string :xml-name "Header"))

(smithy/sdk/shapes:define-error access-denied common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "AccessDenied") (:error-code 403))

(smithy/sdk/shapes:define-structure active-trusted-key-groups common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type kgkey-pair-ids-list
                                      :member-name "Items"))
                                    (:shape-name "ActiveTrustedKeyGroups"))

(smithy/sdk/shapes:define-structure active-trusted-signers common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type signer-list
                                      :member-name "Items"))
                                    (:shape-name "ActiveTrustedSigners"))

(smithy/sdk/shapes:define-structure alias-icprecordal common-lisp:nil
                                    ((cname :target-type string :member-name
                                      "CNAME")
                                     (icprecordal-status :target-type
                                      icprecordal-status :member-name
                                      "ICPRecordalStatus"))
                                    (:shape-name "AliasICPRecordal"))

(smithy/sdk/shapes:define-list alias-icprecordals :member
                               (alias-icprecordal :xml-name "AliasICPRecordal"))

(smithy/sdk/shapes:define-list alias-list :member (string :xml-name "CNAME"))

(smithy/sdk/shapes:define-structure aliases common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type alias-list
                                      :member-name "Items"))
                                    (:shape-name "Aliases"))

(smithy/sdk/shapes:define-structure allowed-methods common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type methods-list :required
                                      common-lisp:t :member-name "Items")
                                     (cached-methods :target-type
                                      cached-methods :member-name
                                      "CachedMethods"))
                                    (:shape-name "AllowedMethods"))

(smithy/sdk/shapes:define-structure anycast-ip-list common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (name :target-type anycast-ip-list-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (status :target-type string :required
                                      common-lisp:t :member-name "Status")
                                     (arn :target-type string :required
                                      common-lisp:t :member-name "Arn")
                                     (anycast-ips :target-type anycast-ips
                                      :required common-lisp:t :member-name
                                      "AnycastIps")
                                     (ip-count :target-type integer :required
                                      common-lisp:t :member-name "IpCount")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime"))
                                    (:shape-name "AnycastIpList"))

(smithy/sdk/shapes:define-structure anycast-ip-list-collection common-lisp:nil
                                    ((items :target-type
                                      anycast-ip-list-summaries :member-name
                                      "Items")
                                     (marker :target-type string :required
                                      common-lisp:t :member-name "Marker")
                                     (next-marker :target-type string
                                      :member-name "NextMarker")
                                     (max-items :target-type integer :required
                                      common-lisp:t :member-name "MaxItems")
                                     (is-truncated :target-type boolean
                                      :required common-lisp:t :member-name
                                      "IsTruncated")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity"))
                                    (:shape-name "AnycastIpListCollection"))

(smithy/sdk/shapes:define-type anycast-ip-list-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list anycast-ip-list-summaries :member
                               (anycast-ip-list-summary :xml-name
                                "AnycastIpListSummary"))

(smithy/sdk/shapes:define-structure anycast-ip-list-summary common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (name :target-type anycast-ip-list-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (status :target-type string :required
                                      common-lisp:t :member-name "Status")
                                     (arn :target-type string :required
                                      common-lisp:t :member-name "Arn")
                                     (ip-count :target-type integer :required
                                      common-lisp:t :member-name "IpCount")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime"))
                                    (:shape-name "AnycastIpListSummary"))

(smithy/sdk/shapes:define-list anycast-ips :member
                               (string :xml-name "AnycastIp"))

(smithy/sdk/shapes:define-input associate-alias-request common-lisp:nil
                                ((target-distribution-id :target-type string
                                  :required common-lisp:t :member-name
                                  "TargetDistributionId" :http-label
                                  common-lisp:t)
                                 (alias :target-type string :required
                                  common-lisp:t :member-name "Alias"
                                  :http-query "Alias"))
                                (:shape-name "AssociateAliasRequest"))

(smithy/sdk/shapes:define-input associate-distribution-tenant-web-aclrequest
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (web-aclarn :target-type string :required
                                  common-lisp:t :member-name "WebACLArn")
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name
                                 "AssociateDistributionTenantWebACLRequest"))

(smithy/sdk/shapes:define-output associate-distribution-tenant-web-aclresult
                                 common-lisp:nil
                                 ((id :target-type string :member-name "Id")
                                  (web-aclarn :target-type string :member-name
                                   "WebACLArn")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "AssociateDistributionTenantWebACLResult"))

(smithy/sdk/shapes:define-input associate-distribution-web-aclrequest
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (web-aclarn :target-type string :required
                                  common-lisp:t :member-name "WebACLArn")
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name
                                 "AssociateDistributionWebACLRequest"))

(smithy/sdk/shapes:define-output associate-distribution-web-aclresult
                                 common-lisp:nil
                                 ((id :target-type string :member-name "Id")
                                  (web-aclarn :target-type string :member-name
                                   "WebACLArn")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "AssociateDistributionWebACLResult"))

(smithy/sdk/shapes:define-list aws-account-number-list :member
                               (string :xml-name "AwsAccountNumber"))

(smithy/sdk/shapes:define-error batch-too-large common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "BatchTooLarge") (:error-code 413))

(smithy/sdk/shapes:define-error cnamealready-exists common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "CNAMEAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure cache-behavior common-lisp:nil
                                    ((path-pattern :target-type string
                                      :required common-lisp:t :member-name
                                      "PathPattern")
                                     (target-origin-id :target-type string
                                      :required common-lisp:t :member-name
                                      "TargetOriginId")
                                     (trusted-signers :target-type
                                      trusted-signers :member-name
                                      "TrustedSigners")
                                     (trusted-key-groups :target-type
                                      trusted-key-groups :member-name
                                      "TrustedKeyGroups")
                                     (viewer-protocol-policy :target-type
                                      viewer-protocol-policy :required
                                      common-lisp:t :member-name
                                      "ViewerProtocolPolicy")
                                     (allowed-methods :target-type
                                      allowed-methods :member-name
                                      "AllowedMethods")
                                     (smooth-streaming :target-type boolean
                                      :member-name "SmoothStreaming")
                                     (compress :target-type boolean
                                      :member-name "Compress")
                                     (lambda-function-associations :target-type
                                      lambda-function-associations :member-name
                                      "LambdaFunctionAssociations")
                                     (function-associations :target-type
                                      function-associations :member-name
                                      "FunctionAssociations")
                                     (field-level-encryption-id :target-type
                                      string :member-name
                                      "FieldLevelEncryptionId")
                                     (realtime-log-config-arn :target-type
                                      string :member-name
                                      "RealtimeLogConfigArn")
                                     (cache-policy-id :target-type string
                                      :member-name "CachePolicyId")
                                     (origin-request-policy-id :target-type
                                      string :member-name
                                      "OriginRequestPolicyId")
                                     (response-headers-policy-id :target-type
                                      string :member-name
                                      "ResponseHeadersPolicyId")
                                     (grpc-config :target-type grpc-config
                                      :member-name "GrpcConfig")
                                     (forwarded-values :target-type
                                      forwarded-values :member-name
                                      "ForwardedValues")
                                     (min-ttl :target-type long :member-name
                                      "MinTTL")
                                     (default-ttl :target-type long
                                      :member-name "DefaultTTL")
                                     (max-ttl :target-type long :member-name
                                      "MaxTTL"))
                                    (:shape-name "CacheBehavior"))

(smithy/sdk/shapes:define-list cache-behavior-list :member
                               (cache-behavior :xml-name "CacheBehavior"))

(smithy/sdk/shapes:define-structure cache-behaviors common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type cache-behavior-list
                                      :member-name "Items"))
                                    (:shape-name "CacheBehaviors"))

(smithy/sdk/shapes:define-structure cache-policy common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime")
                                     (cache-policy-config :target-type
                                      cache-policy-config :required
                                      common-lisp:t :member-name
                                      "CachePolicyConfig"))
                                    (:shape-name "CachePolicy"))

(smithy/sdk/shapes:define-error cache-policy-already-exists common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "CachePolicyAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure cache-policy-config common-lisp:nil
                                    ((comment :target-type string :member-name
                                      "Comment")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (default-ttl :target-type long
                                      :member-name "DefaultTTL")
                                     (max-ttl :target-type long :member-name
                                      "MaxTTL")
                                     (min-ttl :target-type long :required
                                      common-lisp:t :member-name "MinTTL")
                                     (parameters-in-cache-key-and-forwarded-to-origin
                                      :target-type
                                      parameters-in-cache-key-and-forwarded-to-origin
                                      :member-name
                                      "ParametersInCacheKeyAndForwardedToOrigin"))
                                    (:shape-name "CachePolicyConfig"))

(smithy/sdk/shapes:define-enum cache-policy-cookie-behavior
    common-lisp:nil
  (:none "none")
  (:whitelist "whitelist")
  (:all-except "allExcept")
  (:all "all"))

(smithy/sdk/shapes:define-structure cache-policy-cookies-config common-lisp:nil
                                    ((cookie-behavior :target-type
                                      cache-policy-cookie-behavior :required
                                      common-lisp:t :member-name
                                      "CookieBehavior")
                                     (cookies :target-type cookie-names
                                      :member-name "Cookies"))
                                    (:shape-name "CachePolicyCookiesConfig"))

(smithy/sdk/shapes:define-enum cache-policy-header-behavior
    common-lisp:nil
  (:none "none")
  (:whitelist "whitelist"))

(smithy/sdk/shapes:define-structure cache-policy-headers-config common-lisp:nil
                                    ((header-behavior :target-type
                                      cache-policy-header-behavior :required
                                      common-lisp:t :member-name
                                      "HeaderBehavior")
                                     (headers :target-type headers :member-name
                                      "Headers"))
                                    (:shape-name "CachePolicyHeadersConfig"))

(smithy/sdk/shapes:define-error cache-policy-in-use common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "CachePolicyInUse")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure cache-policy-list common-lisp:nil
                                    ((next-marker :target-type string
                                      :member-name "NextMarker")
                                     (max-items :target-type integer :required
                                      common-lisp:t :member-name "MaxItems")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      cache-policy-summary-list :member-name
                                      "Items"))
                                    (:shape-name "CachePolicyList"))

(smithy/sdk/shapes:define-enum cache-policy-query-string-behavior
    common-lisp:nil
  (:none "none")
  (:whitelist "whitelist")
  (:all-except "allExcept")
  (:all "all"))

(smithy/sdk/shapes:define-structure cache-policy-query-strings-config
                                    common-lisp:nil
                                    ((query-string-behavior :target-type
                                      cache-policy-query-string-behavior
                                      :required common-lisp:t :member-name
                                      "QueryStringBehavior")
                                     (query-strings :target-type
                                      query-string-names :member-name
                                      "QueryStrings"))
                                    (:shape-name
                                     "CachePolicyQueryStringsConfig"))

(smithy/sdk/shapes:define-structure cache-policy-summary common-lisp:nil
                                    ((type :target-type cache-policy-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (cache-policy :target-type cache-policy
                                      :required common-lisp:t :member-name
                                      "CachePolicy"))
                                    (:shape-name "CachePolicySummary"))

(smithy/sdk/shapes:define-list cache-policy-summary-list :member
                               (cache-policy-summary :xml-name
                                "CachePolicySummary"))

(smithy/sdk/shapes:define-enum cache-policy-type
    common-lisp:nil
  (:managed "managed")
  (:custom "custom"))

(smithy/sdk/shapes:define-structure cached-methods common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type methods-list :required
                                      common-lisp:t :member-name "Items"))
                                    (:shape-name "CachedMethods"))

(smithy/sdk/shapes:define-error cannot-change-immutable-public-key-fields
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "CannotChangeImmutablePublicKeyFields")
                                (:error-code 400))

(smithy/sdk/shapes:define-error cannot-delete-entity-while-in-use
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "CannotDeleteEntityWhileInUse")
                                (:error-code 409))

(smithy/sdk/shapes:define-error cannot-update-entity-while-in-use
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "CannotUpdateEntityWhileInUse")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure certificate common-lisp:nil
                                    ((arn :target-type string :required
                                      common-lisp:t :member-name "Arn"))
                                    (:shape-name "Certificate"))

(smithy/sdk/shapes:define-enum certificate-source
    common-lisp:nil
  (:cloudfront "cloudfront")
  (:iam "iam")
  (:acm "acm"))

(smithy/sdk/shapes:define-enum certificate-transparency-logging-preference
    common-lisp:nil
  (:enabled "enabled")
  (:disabled "disabled"))

(smithy/sdk/shapes:define-structure cloud-front-origin-access-identity
                                    common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (s3canonical-user-id :target-type string
                                      :required common-lisp:t :member-name
                                      "S3CanonicalUserId")
                                     (cloud-front-origin-access-identity-config
                                      :target-type
                                      cloud-front-origin-access-identity-config
                                      :member-name
                                      "CloudFrontOriginAccessIdentityConfig"))
                                    (:shape-name
                                     "CloudFrontOriginAccessIdentity"))

(smithy/sdk/shapes:define-error
 cloud-front-origin-access-identity-already-exists common-lisp:nil
 ((message :target-type string :member-name "Message"))
 (:shape-name "CloudFrontOriginAccessIdentityAlreadyExists") (:error-code 409))

(smithy/sdk/shapes:define-structure cloud-front-origin-access-identity-config
                                    common-lisp:nil
                                    ((caller-reference :target-type string
                                      :required common-lisp:t :member-name
                                      "CallerReference")
                                     (comment :target-type string :required
                                      common-lisp:t :member-name "Comment"))
                                    (:shape-name
                                     "CloudFrontOriginAccessIdentityConfig"))

(smithy/sdk/shapes:define-error cloud-front-origin-access-identity-in-use
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "CloudFrontOriginAccessIdentityInUse")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure cloud-front-origin-access-identity-list
                                    common-lisp:nil
                                    ((marker :target-type string :required
                                      common-lisp:t :member-name "Marker")
                                     (next-marker :target-type string
                                      :member-name "NextMarker")
                                     (max-items :target-type integer :required
                                      common-lisp:t :member-name "MaxItems")
                                     (is-truncated :target-type boolean
                                      :required common-lisp:t :member-name
                                      "IsTruncated")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      cloud-front-origin-access-identity-summary-list
                                      :member-name "Items"))
                                    (:shape-name
                                     "CloudFrontOriginAccessIdentityList"))

(smithy/sdk/shapes:define-structure cloud-front-origin-access-identity-summary
                                    common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (s3canonical-user-id :target-type string
                                      :required common-lisp:t :member-name
                                      "S3CanonicalUserId")
                                     (comment :target-type string :required
                                      common-lisp:t :member-name "Comment"))
                                    (:shape-name
                                     "CloudFrontOriginAccessIdentitySummary"))

(smithy/sdk/shapes:define-list cloud-front-origin-access-identity-summary-list
                               :member
                               (cloud-front-origin-access-identity-summary
                                :xml-name
                                "CloudFrontOriginAccessIdentitySummary"))

(smithy/sdk/shapes:define-type comment-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure conflicting-alias common-lisp:nil
                                    ((alias :target-type string :member-name
                                      "Alias")
                                     (distribution-id :target-type string
                                      :member-name "DistributionId")
                                     (account-id :target-type string
                                      :member-name "AccountId"))
                                    (:shape-name "ConflictingAlias"))

(smithy/sdk/shapes:define-list conflicting-aliases :member
                               (conflicting-alias :xml-name "ConflictingAlias"))

(smithy/sdk/shapes:define-structure conflicting-aliases-list common-lisp:nil
                                    ((next-marker :target-type string
                                      :member-name "NextMarker")
                                     (max-items :target-type integer
                                      :member-name "MaxItems")
                                     (quantity :target-type integer
                                      :member-name "Quantity")
                                     (items :target-type conflicting-aliases
                                      :member-name "Items"))
                                    (:shape-name "ConflictingAliasesList"))

(smithy/sdk/shapes:define-structure connection-group common-lisp:nil
                                    ((id :target-type string :member-name "Id")
                                     (name :target-type string :member-name
                                      "Name")
                                     (arn :target-type string :member-name
                                      "Arn")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime")
                                     (last-modified-time :target-type timestamp
                                      :member-name "LastModifiedTime")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (ipv6enabled :target-type boolean
                                      :member-name "Ipv6Enabled")
                                     (routing-endpoint :target-type string
                                      :member-name "RoutingEndpoint")
                                     (anycast-ip-list-id :target-type string
                                      :member-name "AnycastIpListId")
                                     (status :target-type string :member-name
                                      "Status")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (is-default :target-type boolean
                                      :member-name "IsDefault"))
                                    (:shape-name "ConnectionGroup"))

(smithy/sdk/shapes:define-structure connection-group-association-filter
                                    common-lisp:nil
                                    ((anycast-ip-list-id :target-type string
                                      :member-name "AnycastIpListId"))
                                    (:shape-name
                                     "ConnectionGroupAssociationFilter"))

(smithy/sdk/shapes:define-structure connection-group-summary common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (arn :target-type string :required
                                      common-lisp:t :member-name "Arn")
                                     (routing-endpoint :target-type string
                                      :required common-lisp:t :member-name
                                      "RoutingEndpoint")
                                     (created-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedTime")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime")
                                     (etag :target-type string :required
                                      common-lisp:t :member-name "ETag")
                                     (anycast-ip-list-id :target-type string
                                      :member-name "AnycastIpListId")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (status :target-type string :member-name
                                      "Status")
                                     (is-default :target-type boolean
                                      :member-name "IsDefault"))
                                    (:shape-name "ConnectionGroupSummary"))

(smithy/sdk/shapes:define-list connection-group-summary-list :member
                               (connection-group-summary :xml-name
                                "ConnectionGroupSummary"))

(smithy/sdk/shapes:define-enum connection-mode
    common-lisp:nil
  (:direct "direct")
  (:tenant-only "tenant-only"))

(smithy/sdk/shapes:define-structure content-type-profile common-lisp:nil
                                    ((format :target-type format :required
                                      common-lisp:t :member-name "Format")
                                     (profile-id :target-type string
                                      :member-name "ProfileId")
                                     (content-type :target-type string
                                      :required common-lisp:t :member-name
                                      "ContentType"))
                                    (:shape-name "ContentTypeProfile"))

(smithy/sdk/shapes:define-structure content-type-profile-config common-lisp:nil
                                    ((forward-when-content-type-is-unknown
                                      :target-type boolean :required
                                      common-lisp:t :member-name
                                      "ForwardWhenContentTypeIsUnknown")
                                     (content-type-profiles :target-type
                                      content-type-profiles :member-name
                                      "ContentTypeProfiles"))
                                    (:shape-name "ContentTypeProfileConfig"))

(smithy/sdk/shapes:define-list content-type-profile-list :member
                               (content-type-profile :xml-name
                                "ContentTypeProfile"))

(smithy/sdk/shapes:define-structure content-type-profiles common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      content-type-profile-list :member-name
                                      "Items"))
                                    (:shape-name "ContentTypeProfiles"))

(smithy/sdk/shapes:define-structure continuous-deployment-policy
                                    common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime")
                                     (continuous-deployment-policy-config
                                      :target-type
                                      continuous-deployment-policy-config
                                      :required common-lisp:t :member-name
                                      "ContinuousDeploymentPolicyConfig"))
                                    (:shape-name "ContinuousDeploymentPolicy"))

(smithy/sdk/shapes:define-error continuous-deployment-policy-already-exists
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "ContinuousDeploymentPolicyAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure continuous-deployment-policy-config
                                    common-lisp:nil
                                    ((staging-distribution-dns-names
                                      :target-type
                                      staging-distribution-dns-names :required
                                      common-lisp:t :member-name
                                      "StagingDistributionDnsNames")
                                     (enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled")
                                     (traffic-config :target-type
                                      traffic-config :member-name
                                      "TrafficConfig"))
                                    (:shape-name
                                     "ContinuousDeploymentPolicyConfig"))

(smithy/sdk/shapes:define-error continuous-deployment-policy-in-use
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ContinuousDeploymentPolicyInUse")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure continuous-deployment-policy-list
                                    common-lisp:nil
                                    ((next-marker :target-type string
                                      :member-name "NextMarker")
                                     (max-items :target-type integer :required
                                      common-lisp:t :member-name "MaxItems")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      continuous-deployment-policy-summary-list
                                      :member-name "Items"))
                                    (:shape-name
                                     "ContinuousDeploymentPolicyList"))

(smithy/sdk/shapes:define-structure continuous-deployment-policy-summary
                                    common-lisp:nil
                                    ((continuous-deployment-policy :target-type
                                      continuous-deployment-policy :required
                                      common-lisp:t :member-name
                                      "ContinuousDeploymentPolicy"))
                                    (:shape-name
                                     "ContinuousDeploymentPolicySummary"))

(smithy/sdk/shapes:define-list continuous-deployment-policy-summary-list
                               :member
                               (continuous-deployment-policy-summary :xml-name
                                "ContinuousDeploymentPolicySummary"))

(smithy/sdk/shapes:define-enum continuous-deployment-policy-type
    common-lisp:nil
  (:single-weight "SingleWeight")
  (:single-header "SingleHeader"))

(smithy/sdk/shapes:define-structure continuous-deployment-single-header-config
                                    common-lisp:nil
                                    ((header :target-type string :required
                                      common-lisp:t :member-name "Header")
                                     (value :target-type string :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name
                                     "ContinuousDeploymentSingleHeaderConfig"))

(smithy/sdk/shapes:define-structure continuous-deployment-single-weight-config
                                    common-lisp:nil
                                    ((weight :target-type float :required
                                      common-lisp:t :member-name "Weight")
                                     (session-stickiness-config :target-type
                                      session-stickiness-config :member-name
                                      "SessionStickinessConfig"))
                                    (:shape-name
                                     "ContinuousDeploymentSingleWeightConfig"))

(smithy/sdk/shapes:define-list cookie-name-list :member
                               (string :xml-name "Name"))

(smithy/sdk/shapes:define-structure cookie-names common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type cookie-name-list
                                      :member-name "Items"))
                                    (:shape-name "CookieNames"))

(smithy/sdk/shapes:define-structure cookie-preference common-lisp:nil
                                    ((forward :target-type item-selection
                                      :required common-lisp:t :member-name
                                      "Forward")
                                     (whitelisted-names :target-type
                                      cookie-names :member-name
                                      "WhitelistedNames"))
                                    (:shape-name "CookiePreference"))

(smithy/sdk/shapes:define-input copy-distribution-request common-lisp:nil
                                ((primary-distribution-id :target-type string
                                  :required common-lisp:t :member-name
                                  "PrimaryDistributionId" :http-label
                                  common-lisp:t)
                                 (staging :target-type boolean :member-name
                                  "Staging" :http-header "Staging")
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match")
                                 (caller-reference :target-type string
                                  :required common-lisp:t :member-name
                                  "CallerReference")
                                 (enabled :target-type boolean :member-name
                                  "Enabled"))
                                (:shape-name "CopyDistributionRequest"))

(smithy/sdk/shapes:define-output copy-distribution-result common-lisp:nil
                                 ((distribution :target-type distribution
                                   :member-name "Distribution" :http-payload
                                   common-lisp:t)
                                  (location :target-type string :member-name
                                   "Location" :http-header "Location")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "CopyDistributionResult"))

(smithy/sdk/shapes:define-input create-anycast-ip-list-request common-lisp:nil
                                ((name :target-type anycast-ip-list-name
                                  :required common-lisp:t :member-name "Name")
                                 (ip-count :target-type integer :required
                                  common-lisp:t :member-name "IpCount")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateAnycastIpListRequest"))

(smithy/sdk/shapes:define-output create-anycast-ip-list-result common-lisp:nil
                                 ((anycast-ip-list :target-type anycast-ip-list
                                   :member-name "AnycastIpList" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "CreateAnycastIpListResult"))

(smithy/sdk/shapes:define-input create-cache-policy-request common-lisp:nil
                                ((cache-policy-config :target-type
                                  cache-policy-config :required common-lisp:t
                                  :member-name "CachePolicyConfig"
                                  :http-payload common-lisp:t :xml-name
                                  "CachePolicyConfig"))
                                (:shape-name "CreateCachePolicyRequest"))

(smithy/sdk/shapes:define-output create-cache-policy-result common-lisp:nil
                                 ((cache-policy :target-type cache-policy
                                   :member-name "CachePolicy" :http-payload
                                   common-lisp:t)
                                  (location :target-type string :member-name
                                   "Location" :http-header "Location")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "CreateCachePolicyResult"))

(smithy/sdk/shapes:define-input
 create-cloud-front-origin-access-identity-request common-lisp:nil
 ((cloud-front-origin-access-identity-config :target-type
   cloud-front-origin-access-identity-config :required common-lisp:t
   :member-name "CloudFrontOriginAccessIdentityConfig" :http-payload
   common-lisp:t :xml-name "CloudFrontOriginAccessIdentityConfig"))
 (:shape-name "CreateCloudFrontOriginAccessIdentityRequest"))

(smithy/sdk/shapes:define-output
 create-cloud-front-origin-access-identity-result common-lisp:nil
 ((cloud-front-origin-access-identity :target-type
   cloud-front-origin-access-identity :member-name
   "CloudFrontOriginAccessIdentity" :http-payload common-lisp:t)
  (location :target-type string :member-name "Location" :http-header
   "Location")
  (etag :target-type string :member-name "ETag" :http-header "ETag"))
 (:shape-name "CreateCloudFrontOriginAccessIdentityResult"))

(smithy/sdk/shapes:define-input create-connection-group-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "Name")
                                 (ipv6enabled :target-type boolean :member-name
                                  "Ipv6Enabled")
                                 (tags :target-type tags :member-name "Tags")
                                 (anycast-ip-list-id :target-type string
                                  :member-name "AnycastIpListId")
                                 (enabled :target-type boolean :member-name
                                  "Enabled"))
                                (:shape-name "CreateConnectionGroupRequest"))

(smithy/sdk/shapes:define-output create-connection-group-result common-lisp:nil
                                 ((connection-group :target-type
                                   connection-group :member-name
                                   "ConnectionGroup" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "CreateConnectionGroupResult"))

(smithy/sdk/shapes:define-input create-continuous-deployment-policy-request
                                common-lisp:nil
                                ((continuous-deployment-policy-config
                                  :target-type
                                  continuous-deployment-policy-config :required
                                  common-lisp:t :member-name
                                  "ContinuousDeploymentPolicyConfig"
                                  :http-payload common-lisp:t :xml-name
                                  "ContinuousDeploymentPolicyConfig"))
                                (:shape-name
                                 "CreateContinuousDeploymentPolicyRequest"))

(smithy/sdk/shapes:define-output create-continuous-deployment-policy-result
                                 common-lisp:nil
                                 ((continuous-deployment-policy :target-type
                                   continuous-deployment-policy :member-name
                                   "ContinuousDeploymentPolicy" :http-payload
                                   common-lisp:t)
                                  (location :target-type string :member-name
                                   "Location" :http-header "Location")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "CreateContinuousDeploymentPolicyResult"))

(smithy/sdk/shapes:define-input create-distribution-request common-lisp:nil
                                ((distribution-config :target-type
                                  distribution-config :required common-lisp:t
                                  :member-name "DistributionConfig"
                                  :http-payload common-lisp:t :xml-name
                                  "DistributionConfig"))
                                (:shape-name "CreateDistributionRequest"))

(smithy/sdk/shapes:define-output create-distribution-result common-lisp:nil
                                 ((distribution :target-type distribution
                                   :member-name "Distribution" :http-payload
                                   common-lisp:t)
                                  (location :target-type string :member-name
                                   "Location" :http-header "Location")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "CreateDistributionResult"))

(smithy/sdk/shapes:define-input create-distribution-tenant-request
                                common-lisp:nil
                                ((distribution-id :target-type string :required
                                  common-lisp:t :member-name "DistributionId")
                                 (name :target-type string :required
                                  common-lisp:t :member-name "Name")
                                 (domains :target-type domain-list :required
                                  common-lisp:t :member-name "Domains")
                                 (tags :target-type tags :member-name "Tags")
                                 (customizations :target-type customizations
                                  :member-name "Customizations")
                                 (parameters :target-type parameters
                                  :member-name "Parameters")
                                 (connection-group-id :target-type string
                                  :member-name "ConnectionGroupId")
                                 (managed-certificate-request :target-type
                                  managed-certificate-request :member-name
                                  "ManagedCertificateRequest")
                                 (enabled :target-type boolean :member-name
                                  "Enabled"))
                                (:shape-name "CreateDistributionTenantRequest"))

(smithy/sdk/shapes:define-output create-distribution-tenant-result
                                 common-lisp:nil
                                 ((distribution-tenant :target-type
                                   distribution-tenant :member-name
                                   "DistributionTenant" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "CreateDistributionTenantResult"))

(smithy/sdk/shapes:define-input create-distribution-with-tags-request
                                common-lisp:nil
                                ((distribution-config-with-tags :target-type
                                  distribution-config-with-tags :required
                                  common-lisp:t :member-name
                                  "DistributionConfigWithTags" :http-payload
                                  common-lisp:t :xml-name
                                  "DistributionConfigWithTags"))
                                (:shape-name
                                 "CreateDistributionWithTagsRequest"))

(smithy/sdk/shapes:define-output create-distribution-with-tags-result
                                 common-lisp:nil
                                 ((distribution :target-type distribution
                                   :member-name "Distribution" :http-payload
                                   common-lisp:t)
                                  (location :target-type string :member-name
                                   "Location" :http-header "Location")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "CreateDistributionWithTagsResult"))

(smithy/sdk/shapes:define-input create-field-level-encryption-config-request
                                common-lisp:nil
                                ((field-level-encryption-config :target-type
                                  field-level-encryption-config :required
                                  common-lisp:t :member-name
                                  "FieldLevelEncryptionConfig" :http-payload
                                  common-lisp:t :xml-name
                                  "FieldLevelEncryptionConfig"))
                                (:shape-name
                                 "CreateFieldLevelEncryptionConfigRequest"))

(smithy/sdk/shapes:define-output create-field-level-encryption-config-result
                                 common-lisp:nil
                                 ((field-level-encryption :target-type
                                   field-level-encryption :member-name
                                   "FieldLevelEncryption" :http-payload
                                   common-lisp:t)
                                  (location :target-type string :member-name
                                   "Location" :http-header "Location")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "CreateFieldLevelEncryptionConfigResult"))

(smithy/sdk/shapes:define-input create-field-level-encryption-profile-request
                                common-lisp:nil
                                ((field-level-encryption-profile-config
                                  :target-type
                                  field-level-encryption-profile-config
                                  :required common-lisp:t :member-name
                                  "FieldLevelEncryptionProfileConfig"
                                  :http-payload common-lisp:t :xml-name
                                  "FieldLevelEncryptionProfileConfig"))
                                (:shape-name
                                 "CreateFieldLevelEncryptionProfileRequest"))

(smithy/sdk/shapes:define-output create-field-level-encryption-profile-result
                                 common-lisp:nil
                                 ((field-level-encryption-profile :target-type
                                   field-level-encryption-profile :member-name
                                   "FieldLevelEncryptionProfile" :http-payload
                                   common-lisp:t)
                                  (location :target-type string :member-name
                                   "Location" :http-header "Location")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "CreateFieldLevelEncryptionProfileResult"))

(smithy/sdk/shapes:define-input create-function-request common-lisp:nil
                                ((name :target-type function-name :required
                                  common-lisp:t :member-name "Name")
                                 (function-config :target-type function-config
                                  :required common-lisp:t :member-name
                                  "FunctionConfig")
                                 (function-code :target-type function-blob
                                  :required common-lisp:t :member-name
                                  "FunctionCode"))
                                (:shape-name "CreateFunctionRequest"))

(smithy/sdk/shapes:define-output create-function-result common-lisp:nil
                                 ((function-summary :target-type
                                   function-summary :member-name
                                   "FunctionSummary" :http-payload
                                   common-lisp:t)
                                  (location :target-type string :member-name
                                   "Location" :http-header "Location")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "CreateFunctionResult"))

(smithy/sdk/shapes:define-input
 create-invalidation-for-distribution-tenant-request common-lisp:nil
 ((id :target-type string :required common-lisp:t :member-name "Id" :http-label
   common-lisp:t)
  (invalidation-batch :target-type invalidation-batch :required common-lisp:t
   :member-name "InvalidationBatch" :http-payload common-lisp:t :xml-name
   "InvalidationBatch"))
 (:shape-name "CreateInvalidationForDistributionTenantRequest"))

(smithy/sdk/shapes:define-output
 create-invalidation-for-distribution-tenant-result common-lisp:nil
 ((location :target-type string :member-name "Location" :http-header
   "Location")
  (invalidation :target-type invalidation :member-name "Invalidation"
   :http-payload common-lisp:t))
 (:shape-name "CreateInvalidationForDistributionTenantResult"))

(smithy/sdk/shapes:define-input create-invalidation-request common-lisp:nil
                                ((distribution-id :target-type string :required
                                  common-lisp:t :member-name "DistributionId"
                                  :http-label common-lisp:t)
                                 (invalidation-batch :target-type
                                  invalidation-batch :required common-lisp:t
                                  :member-name "InvalidationBatch"
                                  :http-payload common-lisp:t :xml-name
                                  "InvalidationBatch"))
                                (:shape-name "CreateInvalidationRequest"))

(smithy/sdk/shapes:define-output create-invalidation-result common-lisp:nil
                                 ((location :target-type string :member-name
                                   "Location" :http-header "Location")
                                  (invalidation :target-type invalidation
                                   :member-name "Invalidation" :http-payload
                                   common-lisp:t))
                                 (:shape-name "CreateInvalidationResult"))

(smithy/sdk/shapes:define-input create-key-group-request common-lisp:nil
                                ((key-group-config :target-type
                                  key-group-config :required common-lisp:t
                                  :member-name "KeyGroupConfig" :http-payload
                                  common-lisp:t :xml-name "KeyGroupConfig"))
                                (:shape-name "CreateKeyGroupRequest"))

(smithy/sdk/shapes:define-output create-key-group-result common-lisp:nil
                                 ((key-group :target-type key-group
                                   :member-name "KeyGroup" :http-payload
                                   common-lisp:t)
                                  (location :target-type string :member-name
                                   "Location" :http-header "Location")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "CreateKeyGroupResult"))

(smithy/sdk/shapes:define-input create-key-value-store-request common-lisp:nil
                                ((name :target-type key-value-store-name
                                  :required common-lisp:t :member-name "Name")
                                 (comment :target-type key-value-store-comment
                                  :member-name "Comment")
                                 (import-source :target-type import-source
                                  :member-name "ImportSource"))
                                (:shape-name "CreateKeyValueStoreRequest"))

(smithy/sdk/shapes:define-output create-key-value-store-result common-lisp:nil
                                 ((key-value-store :target-type key-value-store
                                   :member-name "KeyValueStore" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag")
                                  (location :target-type string :member-name
                                   "Location" :http-header "Location"))
                                 (:shape-name "CreateKeyValueStoreResult"))

(smithy/sdk/shapes:define-input create-monitoring-subscription-request
                                common-lisp:nil
                                ((distribution-id :target-type string :required
                                  common-lisp:t :member-name "DistributionId"
                                  :http-label common-lisp:t)
                                 (monitoring-subscription :target-type
                                  monitoring-subscription :required
                                  common-lisp:t :member-name
                                  "MonitoringSubscription" :http-payload
                                  common-lisp:t :xml-name
                                  "MonitoringSubscription"))
                                (:shape-name
                                 "CreateMonitoringSubscriptionRequest"))

(smithy/sdk/shapes:define-output create-monitoring-subscription-result
                                 common-lisp:nil
                                 ((monitoring-subscription :target-type
                                   monitoring-subscription :member-name
                                   "MonitoringSubscription" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "CreateMonitoringSubscriptionResult"))

(smithy/sdk/shapes:define-input create-origin-access-control-request
                                common-lisp:nil
                                ((origin-access-control-config :target-type
                                  origin-access-control-config :required
                                  common-lisp:t :member-name
                                  "OriginAccessControlConfig" :http-payload
                                  common-lisp:t :xml-name
                                  "OriginAccessControlConfig"))
                                (:shape-name
                                 "CreateOriginAccessControlRequest"))

(smithy/sdk/shapes:define-output create-origin-access-control-result
                                 common-lisp:nil
                                 ((origin-access-control :target-type
                                   origin-access-control :member-name
                                   "OriginAccessControl" :http-payload
                                   common-lisp:t)
                                  (location :target-type string :member-name
                                   "Location" :http-header "Location")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "CreateOriginAccessControlResult"))

(smithy/sdk/shapes:define-input create-origin-request-policy-request
                                common-lisp:nil
                                ((origin-request-policy-config :target-type
                                  origin-request-policy-config :required
                                  common-lisp:t :member-name
                                  "OriginRequestPolicyConfig" :http-payload
                                  common-lisp:t :xml-name
                                  "OriginRequestPolicyConfig"))
                                (:shape-name
                                 "CreateOriginRequestPolicyRequest"))

(smithy/sdk/shapes:define-output create-origin-request-policy-result
                                 common-lisp:nil
                                 ((origin-request-policy :target-type
                                   origin-request-policy :member-name
                                   "OriginRequestPolicy" :http-payload
                                   common-lisp:t)
                                  (location :target-type string :member-name
                                   "Location" :http-header "Location")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "CreateOriginRequestPolicyResult"))

(smithy/sdk/shapes:define-input create-public-key-request common-lisp:nil
                                ((public-key-config :target-type
                                  public-key-config :required common-lisp:t
                                  :member-name "PublicKeyConfig" :http-payload
                                  common-lisp:t :xml-name "PublicKeyConfig"))
                                (:shape-name "CreatePublicKeyRequest"))

(smithy/sdk/shapes:define-output create-public-key-result common-lisp:nil
                                 ((public-key :target-type public-key
                                   :member-name "PublicKey" :http-payload
                                   common-lisp:t)
                                  (location :target-type string :member-name
                                   "Location" :http-header "Location")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "CreatePublicKeyResult"))

(smithy/sdk/shapes:define-input create-realtime-log-config-request
                                common-lisp:nil
                                ((end-points :target-type end-point-list
                                  :required common-lisp:t :member-name
                                  "EndPoints")
                                 (fields :target-type field-list :required
                                  common-lisp:t :member-name "Fields")
                                 (name :target-type string :required
                                  common-lisp:t :member-name "Name")
                                 (sampling-rate :target-type long :required
                                  common-lisp:t :member-name "SamplingRate"))
                                (:shape-name "CreateRealtimeLogConfigRequest"))

(smithy/sdk/shapes:define-output create-realtime-log-config-result
                                 common-lisp:nil
                                 ((realtime-log-config :target-type
                                   realtime-log-config :member-name
                                   "RealtimeLogConfig"))
                                 (:shape-name "CreateRealtimeLogConfigResult"))

(smithy/sdk/shapes:define-input create-response-headers-policy-request
                                common-lisp:nil
                                ((response-headers-policy-config :target-type
                                  response-headers-policy-config :required
                                  common-lisp:t :member-name
                                  "ResponseHeadersPolicyConfig" :http-payload
                                  common-lisp:t :xml-name
                                  "ResponseHeadersPolicyConfig"))
                                (:shape-name
                                 "CreateResponseHeadersPolicyRequest"))

(smithy/sdk/shapes:define-output create-response-headers-policy-result
                                 common-lisp:nil
                                 ((response-headers-policy :target-type
                                   response-headers-policy :member-name
                                   "ResponseHeadersPolicy" :http-payload
                                   common-lisp:t)
                                  (location :target-type string :member-name
                                   "Location" :http-header "Location")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "CreateResponseHeadersPolicyResult"))

(smithy/sdk/shapes:define-input create-streaming-distribution-request
                                common-lisp:nil
                                ((streaming-distribution-config :target-type
                                  streaming-distribution-config :required
                                  common-lisp:t :member-name
                                  "StreamingDistributionConfig" :http-payload
                                  common-lisp:t :xml-name
                                  "StreamingDistributionConfig"))
                                (:shape-name
                                 "CreateStreamingDistributionRequest"))

(smithy/sdk/shapes:define-output create-streaming-distribution-result
                                 common-lisp:nil
                                 ((streaming-distribution :target-type
                                   streaming-distribution :member-name
                                   "StreamingDistribution" :http-payload
                                   common-lisp:t)
                                  (location :target-type string :member-name
                                   "Location" :http-header "Location")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "CreateStreamingDistributionResult"))

(smithy/sdk/shapes:define-input create-streaming-distribution-with-tags-request
                                common-lisp:nil
                                ((streaming-distribution-config-with-tags
                                  :target-type
                                  streaming-distribution-config-with-tags
                                  :required common-lisp:t :member-name
                                  "StreamingDistributionConfigWithTags"
                                  :http-payload common-lisp:t :xml-name
                                  "StreamingDistributionConfigWithTags"))
                                (:shape-name
                                 "CreateStreamingDistributionWithTagsRequest"))

(smithy/sdk/shapes:define-output create-streaming-distribution-with-tags-result
                                 common-lisp:nil
                                 ((streaming-distribution :target-type
                                   streaming-distribution :member-name
                                   "StreamingDistribution" :http-payload
                                   common-lisp:t)
                                  (location :target-type string :member-name
                                   "Location" :http-header "Location")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "CreateStreamingDistributionWithTagsResult"))

(smithy/sdk/shapes:define-input create-vpc-origin-request common-lisp:nil
                                ((vpc-origin-endpoint-config :target-type
                                  vpc-origin-endpoint-config :required
                                  common-lisp:t :member-name
                                  "VpcOriginEndpointConfig")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateVpcOriginRequest"))

(smithy/sdk/shapes:define-output create-vpc-origin-result common-lisp:nil
                                 ((vpc-origin :target-type vpc-origin
                                   :member-name "VpcOrigin" :http-payload
                                   common-lisp:t)
                                  (location :target-type string :member-name
                                   "Location" :http-header "Location")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "CreateVpcOriginResult"))

(smithy/sdk/shapes:define-structure custom-error-response common-lisp:nil
                                    ((error-code :target-type integer :required
                                      common-lisp:t :member-name "ErrorCode")
                                     (response-page-path :target-type string
                                      :member-name "ResponsePagePath")
                                     (response-code :target-type string
                                      :member-name "ResponseCode")
                                     (error-caching-min-ttl :target-type long
                                      :member-name "ErrorCachingMinTTL"))
                                    (:shape-name "CustomErrorResponse"))

(smithy/sdk/shapes:define-list custom-error-response-list :member
                               (custom-error-response :xml-name
                                "CustomErrorResponse"))

(smithy/sdk/shapes:define-structure custom-error-responses common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      custom-error-response-list :member-name
                                      "Items"))
                                    (:shape-name "CustomErrorResponses"))

(smithy/sdk/shapes:define-structure custom-headers common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      origin-custom-headers-list :member-name
                                      "Items"))
                                    (:shape-name "CustomHeaders"))

(smithy/sdk/shapes:define-structure custom-origin-config common-lisp:nil
                                    ((httpport :target-type integer :required
                                      common-lisp:t :member-name "HTTPPort")
                                     (httpsport :target-type integer :required
                                      common-lisp:t :member-name "HTTPSPort")
                                     (origin-protocol-policy :target-type
                                      origin-protocol-policy :required
                                      common-lisp:t :member-name
                                      "OriginProtocolPolicy")
                                     (origin-ssl-protocols :target-type
                                      origin-ssl-protocols :member-name
                                      "OriginSslProtocols")
                                     (origin-read-timeout :target-type integer
                                      :member-name "OriginReadTimeout")
                                     (origin-keepalive-timeout :target-type
                                      integer :member-name
                                      "OriginKeepaliveTimeout"))
                                    (:shape-name "CustomOriginConfig"))

(smithy/sdk/shapes:define-enum customization-action-type
    common-lisp:nil
  (:override "override")
  (:disable "disable"))

(smithy/sdk/shapes:define-structure customizations common-lisp:nil
                                    ((web-acl :target-type
                                      web-acl-customization :member-name
                                      "WebAcl")
                                     (certificate :target-type certificate
                                      :member-name "Certificate")
                                     (geo-restrictions :target-type
                                      geo-restriction-customization
                                      :member-name "GeoRestrictions"))
                                    (:shape-name "Customizations"))

(smithy/sdk/shapes:define-structure default-cache-behavior common-lisp:nil
                                    ((target-origin-id :target-type string
                                      :required common-lisp:t :member-name
                                      "TargetOriginId")
                                     (trusted-signers :target-type
                                      trusted-signers :member-name
                                      "TrustedSigners")
                                     (trusted-key-groups :target-type
                                      trusted-key-groups :member-name
                                      "TrustedKeyGroups")
                                     (viewer-protocol-policy :target-type
                                      viewer-protocol-policy :required
                                      common-lisp:t :member-name
                                      "ViewerProtocolPolicy")
                                     (allowed-methods :target-type
                                      allowed-methods :member-name
                                      "AllowedMethods")
                                     (smooth-streaming :target-type boolean
                                      :member-name "SmoothStreaming")
                                     (compress :target-type boolean
                                      :member-name "Compress")
                                     (lambda-function-associations :target-type
                                      lambda-function-associations :member-name
                                      "LambdaFunctionAssociations")
                                     (function-associations :target-type
                                      function-associations :member-name
                                      "FunctionAssociations")
                                     (field-level-encryption-id :target-type
                                      string :member-name
                                      "FieldLevelEncryptionId")
                                     (realtime-log-config-arn :target-type
                                      string :member-name
                                      "RealtimeLogConfigArn")
                                     (cache-policy-id :target-type string
                                      :member-name "CachePolicyId")
                                     (origin-request-policy-id :target-type
                                      string :member-name
                                      "OriginRequestPolicyId")
                                     (response-headers-policy-id :target-type
                                      string :member-name
                                      "ResponseHeadersPolicyId")
                                     (grpc-config :target-type grpc-config
                                      :member-name "GrpcConfig")
                                     (forwarded-values :target-type
                                      forwarded-values :member-name
                                      "ForwardedValues")
                                     (min-ttl :target-type long :member-name
                                      "MinTTL")
                                     (default-ttl :target-type long
                                      :member-name "DefaultTTL")
                                     (max-ttl :target-type long :member-name
                                      "MaxTTL"))
                                    (:shape-name "DefaultCacheBehavior"))

(smithy/sdk/shapes:define-input delete-anycast-ip-list-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :required
                                  common-lisp:t :member-name "IfMatch"
                                  :http-header "If-Match"))
                                (:shape-name "DeleteAnycastIpListRequest"))

(smithy/sdk/shapes:define-input delete-cache-policy-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name "DeleteCachePolicyRequest"))

(smithy/sdk/shapes:define-input
 delete-cloud-front-origin-access-identity-request common-lisp:nil
 ((id :target-type string :required common-lisp:t :member-name "Id" :http-label
   common-lisp:t)
  (if-match :target-type string :member-name "IfMatch" :http-header
   "If-Match"))
 (:shape-name "DeleteCloudFrontOriginAccessIdentityRequest"))

(smithy/sdk/shapes:define-input delete-connection-group-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :required
                                  common-lisp:t :member-name "IfMatch"
                                  :http-header "If-Match"))
                                (:shape-name "DeleteConnectionGroupRequest"))

(smithy/sdk/shapes:define-input delete-continuous-deployment-policy-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name
                                 "DeleteContinuousDeploymentPolicyRequest"))

(smithy/sdk/shapes:define-input delete-distribution-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name "DeleteDistributionRequest"))

(smithy/sdk/shapes:define-input delete-distribution-tenant-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :required
                                  common-lisp:t :member-name "IfMatch"
                                  :http-header "If-Match"))
                                (:shape-name "DeleteDistributionTenantRequest"))

(smithy/sdk/shapes:define-input delete-field-level-encryption-config-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name
                                 "DeleteFieldLevelEncryptionConfigRequest"))

(smithy/sdk/shapes:define-input delete-field-level-encryption-profile-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name
                                 "DeleteFieldLevelEncryptionProfileRequest"))

(smithy/sdk/shapes:define-input delete-function-request common-lisp:nil
                                ((name :target-type function-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :required
                                  common-lisp:t :member-name "IfMatch"
                                  :http-header "If-Match"))
                                (:shape-name "DeleteFunctionRequest"))

(smithy/sdk/shapes:define-input delete-key-group-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name "DeleteKeyGroupRequest"))

(smithy/sdk/shapes:define-input delete-key-value-store-request common-lisp:nil
                                ((name :target-type key-value-store-name
                                  :required common-lisp:t :member-name "Name"
                                  :http-label common-lisp:t)
                                 (if-match :target-type string :required
                                  common-lisp:t :member-name "IfMatch"
                                  :http-header "If-Match"))
                                (:shape-name "DeleteKeyValueStoreRequest"))

(smithy/sdk/shapes:define-input delete-monitoring-subscription-request
                                common-lisp:nil
                                ((distribution-id :target-type string :required
                                  common-lisp:t :member-name "DistributionId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteMonitoringSubscriptionRequest"))

(smithy/sdk/shapes:define-output delete-monitoring-subscription-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteMonitoringSubscriptionResult"))

(smithy/sdk/shapes:define-input delete-origin-access-control-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name
                                 "DeleteOriginAccessControlRequest"))

(smithy/sdk/shapes:define-input delete-origin-request-policy-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name
                                 "DeleteOriginRequestPolicyRequest"))

(smithy/sdk/shapes:define-input delete-public-key-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name "DeletePublicKeyRequest"))

(smithy/sdk/shapes:define-input delete-realtime-log-config-request
                                common-lisp:nil
                                ((name :target-type string :member-name "Name")
                                 (arn :target-type string :member-name "ARN"))
                                (:shape-name "DeleteRealtimeLogConfigRequest"))

(smithy/sdk/shapes:define-input delete-response-headers-policy-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name
                                 "DeleteResponseHeadersPolicyRequest"))

(smithy/sdk/shapes:define-input delete-streaming-distribution-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name
                                 "DeleteStreamingDistributionRequest"))

(smithy/sdk/shapes:define-input delete-vpc-origin-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :required
                                  common-lisp:t :member-name "IfMatch"
                                  :http-header "If-Match"))
                                (:shape-name "DeleteVpcOriginRequest"))

(smithy/sdk/shapes:define-output delete-vpc-origin-result common-lisp:nil
                                 ((vpc-origin :target-type vpc-origin
                                   :member-name "VpcOrigin" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "DeleteVpcOriginResult"))

(smithy/sdk/shapes:define-input describe-function-request common-lisp:nil
                                ((name :target-type function-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (stage :target-type function-stage
                                  :member-name "Stage" :http-query "Stage"))
                                (:shape-name "DescribeFunctionRequest"))

(smithy/sdk/shapes:define-output describe-function-result common-lisp:nil
                                 ((function-summary :target-type
                                   function-summary :member-name
                                   "FunctionSummary" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "DescribeFunctionResult"))

(smithy/sdk/shapes:define-input describe-key-value-store-request
                                common-lisp:nil
                                ((name :target-type key-value-store-name
                                  :required common-lisp:t :member-name "Name"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeKeyValueStoreRequest"))

(smithy/sdk/shapes:define-output describe-key-value-store-result
                                 common-lisp:nil
                                 ((key-value-store :target-type key-value-store
                                   :member-name "KeyValueStore" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "DescribeKeyValueStoreResult"))

(smithy/sdk/shapes:define-input disassociate-distribution-tenant-web-aclrequest
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name
                                 "DisassociateDistributionTenantWebACLRequest"))

(smithy/sdk/shapes:define-output disassociate-distribution-tenant-web-aclresult
                                 common-lisp:nil
                                 ((id :target-type string :member-name "Id")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "DisassociateDistributionTenantWebACLResult"))

(smithy/sdk/shapes:define-input disassociate-distribution-web-aclrequest
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name
                                 "DisassociateDistributionWebACLRequest"))

(smithy/sdk/shapes:define-output disassociate-distribution-web-aclresult
                                 common-lisp:nil
                                 ((id :target-type string :member-name "Id")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "DisassociateDistributionWebACLResult"))

(smithy/sdk/shapes:define-structure distribution common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (arn :target-type string :required
                                      common-lisp:t :member-name "ARN")
                                     (status :target-type string :required
                                      common-lisp:t :member-name "Status")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime")
                                     (in-progress-invalidation-batches
                                      :target-type integer :required
                                      common-lisp:t :member-name
                                      "InProgressInvalidationBatches")
                                     (domain-name :target-type string :required
                                      common-lisp:t :member-name "DomainName")
                                     (active-trusted-signers :target-type
                                      active-trusted-signers :member-name
                                      "ActiveTrustedSigners")
                                     (active-trusted-key-groups :target-type
                                      active-trusted-key-groups :member-name
                                      "ActiveTrustedKeyGroups")
                                     (distribution-config :target-type
                                      distribution-config :required
                                      common-lisp:t :member-name
                                      "DistributionConfig")
                                     (alias-icprecordals :target-type
                                      alias-icprecordals :member-name
                                      "AliasICPRecordals"))
                                    (:shape-name "Distribution"))

(smithy/sdk/shapes:define-error distribution-already-exists common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "DistributionAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure distribution-config common-lisp:nil
                                    ((caller-reference :target-type string
                                      :required common-lisp:t :member-name
                                      "CallerReference")
                                     (aliases :target-type aliases :member-name
                                      "Aliases")
                                     (default-root-object :target-type string
                                      :member-name "DefaultRootObject")
                                     (origins :target-type origins :required
                                      common-lisp:t :member-name "Origins")
                                     (origin-groups :target-type origin-groups
                                      :member-name "OriginGroups")
                                     (default-cache-behavior :target-type
                                      default-cache-behavior :required
                                      common-lisp:t :member-name
                                      "DefaultCacheBehavior")
                                     (cache-behaviors :target-type
                                      cache-behaviors :member-name
                                      "CacheBehaviors")
                                     (custom-error-responses :target-type
                                      custom-error-responses :member-name
                                      "CustomErrorResponses")
                                     (comment :target-type comment-type
                                      :required common-lisp:t :member-name
                                      "Comment")
                                     (logging :target-type logging-config
                                      :member-name "Logging")
                                     (price-class :target-type price-class
                                      :member-name "PriceClass")
                                     (enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled")
                                     (viewer-certificate :target-type
                                      viewer-certificate :member-name
                                      "ViewerCertificate")
                                     (restrictions :target-type restrictions
                                      :member-name "Restrictions")
                                     (web-aclid :target-type string
                                      :member-name "WebACLId")
                                     (http-version :target-type http-version
                                      :member-name "HttpVersion")
                                     (is-ipv6enabled :target-type boolean
                                      :member-name "IsIPV6Enabled")
                                     (continuous-deployment-policy-id
                                      :target-type string :member-name
                                      "ContinuousDeploymentPolicyId")
                                     (staging :target-type boolean :member-name
                                      "Staging")
                                     (anycast-ip-list-id :target-type string
                                      :member-name "AnycastIpListId")
                                     (tenant-config :target-type tenant-config
                                      :member-name "TenantConfig")
                                     (connection-mode :target-type
                                      connection-mode :member-name
                                      "ConnectionMode"))
                                    (:shape-name "DistributionConfig"))

(smithy/sdk/shapes:define-structure distribution-config-with-tags
                                    common-lisp:nil
                                    ((distribution-config :target-type
                                      distribution-config :required
                                      common-lisp:t :member-name
                                      "DistributionConfig")
                                     (tags :target-type tags :required
                                      common-lisp:t :member-name "Tags"))
                                    (:shape-name "DistributionConfigWithTags"))

(smithy/sdk/shapes:define-structure distribution-id-list common-lisp:nil
                                    ((marker :target-type string :required
                                      common-lisp:t :member-name "Marker")
                                     (next-marker :target-type string
                                      :member-name "NextMarker")
                                     (max-items :target-type integer :required
                                      common-lisp:t :member-name "MaxItems")
                                     (is-truncated :target-type boolean
                                      :required common-lisp:t :member-name
                                      "IsTruncated")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      distribution-id-list-summary :member-name
                                      "Items"))
                                    (:shape-name "DistributionIdList"))

(smithy/sdk/shapes:define-list distribution-id-list-summary :member
                               (string :xml-name "DistributionId"))

(smithy/sdk/shapes:define-structure distribution-list common-lisp:nil
                                    ((marker :target-type string :required
                                      common-lisp:t :member-name "Marker")
                                     (next-marker :target-type string
                                      :member-name "NextMarker")
                                     (max-items :target-type integer :required
                                      common-lisp:t :member-name "MaxItems")
                                     (is-truncated :target-type boolean
                                      :required common-lisp:t :member-name
                                      "IsTruncated")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      distribution-summary-list :member-name
                                      "Items"))
                                    (:shape-name "DistributionList"))

(smithy/sdk/shapes:define-error distribution-not-disabled common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "DistributionNotDisabled")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure distribution-resource-id common-lisp:nil
                                    ((distribution-id :target-type string
                                      :member-name "DistributionId")
                                     (distribution-tenant-id :target-type
                                      string :member-name
                                      "DistributionTenantId"))
                                    (:shape-name "DistributionResourceId"))

(smithy/sdk/shapes:define-enum distribution-resource-type
    common-lisp:nil
  (:distribution "distribution")
  (:distribution-tenant "distribution-tenant"))

(smithy/sdk/shapes:define-structure distribution-summary common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (arn :target-type string :required
                                      common-lisp:t :member-name "ARN")
                                     (etag :target-type string :member-name
                                      "ETag")
                                     (status :target-type string :required
                                      common-lisp:t :member-name "Status")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime")
                                     (domain-name :target-type string :required
                                      common-lisp:t :member-name "DomainName")
                                     (aliases :target-type aliases :required
                                      common-lisp:t :member-name "Aliases")
                                     (origins :target-type origins :required
                                      common-lisp:t :member-name "Origins")
                                     (origin-groups :target-type origin-groups
                                      :member-name "OriginGroups")
                                     (default-cache-behavior :target-type
                                      default-cache-behavior :required
                                      common-lisp:t :member-name
                                      "DefaultCacheBehavior")
                                     (cache-behaviors :target-type
                                      cache-behaviors :required common-lisp:t
                                      :member-name "CacheBehaviors")
                                     (custom-error-responses :target-type
                                      custom-error-responses :required
                                      common-lisp:t :member-name
                                      "CustomErrorResponses")
                                     (comment :target-type
                                      sensitive-string-type :required
                                      common-lisp:t :member-name "Comment")
                                     (price-class :target-type price-class
                                      :required common-lisp:t :member-name
                                      "PriceClass")
                                     (enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled")
                                     (viewer-certificate :target-type
                                      viewer-certificate :required
                                      common-lisp:t :member-name
                                      "ViewerCertificate")
                                     (restrictions :target-type restrictions
                                      :required common-lisp:t :member-name
                                      "Restrictions")
                                     (web-aclid :target-type string :required
                                      common-lisp:t :member-name "WebACLId")
                                     (http-version :target-type http-version
                                      :required common-lisp:t :member-name
                                      "HttpVersion")
                                     (is-ipv6enabled :target-type boolean
                                      :required common-lisp:t :member-name
                                      "IsIPV6Enabled")
                                     (alias-icprecordals :target-type
                                      alias-icprecordals :member-name
                                      "AliasICPRecordals")
                                     (staging :target-type boolean :required
                                      common-lisp:t :member-name "Staging")
                                     (connection-mode :target-type
                                      connection-mode :member-name
                                      "ConnectionMode")
                                     (anycast-ip-list-id :target-type string
                                      :member-name "AnycastIpListId"))
                                    (:shape-name "DistributionSummary"))

(smithy/sdk/shapes:define-list distribution-summary-list :member
                               (distribution-summary :xml-name
                                "DistributionSummary"))

(smithy/sdk/shapes:define-structure distribution-tenant common-lisp:nil
                                    ((id :target-type string :member-name "Id")
                                     (distribution-id :target-type string
                                      :member-name "DistributionId")
                                     (name :target-type string :member-name
                                      "Name")
                                     (arn :target-type string :member-name
                                      "Arn")
                                     (domains :target-type domain-result-list
                                      :member-name "Domains")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (customizations :target-type
                                      customizations :member-name
                                      "Customizations")
                                     (parameters :target-type parameters
                                      :member-name "Parameters")
                                     (connection-group-id :target-type string
                                      :member-name "ConnectionGroupId")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime")
                                     (last-modified-time :target-type timestamp
                                      :member-name "LastModifiedTime")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name "DistributionTenant"))

(smithy/sdk/shapes:define-structure distribution-tenant-association-filter
                                    common-lisp:nil
                                    ((distribution-id :target-type string
                                      :member-name "DistributionId")
                                     (connection-group-id :target-type string
                                      :member-name "ConnectionGroupId"))
                                    (:shape-name
                                     "DistributionTenantAssociationFilter"))

(smithy/sdk/shapes:define-list distribution-tenant-list :member
                               (distribution-tenant-summary :xml-name
                                "DistributionTenantSummary"))

(smithy/sdk/shapes:define-structure distribution-tenant-summary common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (distribution-id :target-type string
                                      :required common-lisp:t :member-name
                                      "DistributionId")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (arn :target-type string :required
                                      common-lisp:t :member-name "Arn")
                                     (domains :target-type domain-result-list
                                      :required common-lisp:t :member-name
                                      "Domains")
                                     (connection-group-id :target-type string
                                      :member-name "ConnectionGroupId")
                                     (customizations :target-type
                                      customizations :member-name
                                      "Customizations")
                                     (created-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedTime")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime")
                                     (etag :target-type string :required
                                      common-lisp:t :member-name "ETag")
                                     (enabled :target-type boolean :member-name
                                      "Enabled")
                                     (status :target-type string :member-name
                                      "Status"))
                                    (:shape-name "DistributionTenantSummary"))

(smithy/sdk/shapes:define-structure dns-configuration common-lisp:nil
                                    ((domain :target-type string :required
                                      common-lisp:t :member-name "Domain")
                                     (status :target-type
                                      dns-configuration-status :required
                                      common-lisp:t :member-name "Status")
                                     (reason :target-type string :member-name
                                      "Reason"))
                                    (:shape-name "DnsConfiguration"))

(smithy/sdk/shapes:define-list dns-configuration-list :member
                               (dns-configuration :xml-name "DnsConfiguration"))

(smithy/sdk/shapes:define-enum dns-configuration-status
    common-lisp:nil
  (:valid "valid-configuration")
  (:invalid "invalid-configuration")
  (:unknown "unknown-configuration"))

(smithy/sdk/shapes:define-structure domain-conflict common-lisp:nil
                                    ((domain :target-type string :required
                                      common-lisp:t :member-name "Domain")
                                     (resource-type :target-type
                                      distribution-resource-type :required
                                      common-lisp:t :member-name
                                      "ResourceType")
                                     (resource-id :target-type string :required
                                      common-lisp:t :member-name "ResourceId")
                                     (account-id :target-type string :required
                                      common-lisp:t :member-name "AccountId"))
                                    (:shape-name "DomainConflict"))

(smithy/sdk/shapes:define-list domain-conflicts-list :member
                               (domain-conflict :xml-name "DomainConflicts"))

(smithy/sdk/shapes:define-structure domain-item common-lisp:nil
                                    ((domain :target-type string :required
                                      common-lisp:t :member-name "Domain"))
                                    (:shape-name "DomainItem"))

(smithy/sdk/shapes:define-list domain-list :member domain-item)

(smithy/sdk/shapes:define-structure domain-result common-lisp:nil
                                    ((domain :target-type string :required
                                      common-lisp:t :member-name "Domain")
                                     (status :target-type domain-status
                                      :member-name "Status"))
                                    (:shape-name "DomainResult"))

(smithy/sdk/shapes:define-list domain-result-list :member domain-result)

(smithy/sdk/shapes:define-enum domain-status
    common-lisp:nil
  (:active "active")
  (:inactive "inactive"))

(smithy/sdk/shapes:define-structure encryption-entities common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type encryption-entity-list
                                      :member-name "Items"))
                                    (:shape-name "EncryptionEntities"))

(smithy/sdk/shapes:define-structure encryption-entity common-lisp:nil
                                    ((public-key-id :target-type string
                                      :required common-lisp:t :member-name
                                      "PublicKeyId")
                                     (provider-id :target-type string :required
                                      common-lisp:t :member-name "ProviderId")
                                     (field-patterns :target-type
                                      field-patterns :required common-lisp:t
                                      :member-name "FieldPatterns"))
                                    (:shape-name "EncryptionEntity"))

(smithy/sdk/shapes:define-list encryption-entity-list :member
                               (encryption-entity :xml-name "EncryptionEntity"))

(smithy/sdk/shapes:define-structure end-point common-lisp:nil
                                    ((stream-type :target-type string :required
                                      common-lisp:t :member-name "StreamType")
                                     (kinesis-stream-config :target-type
                                      kinesis-stream-config :member-name
                                      "KinesisStreamConfig"))
                                    (:shape-name "EndPoint"))

(smithy/sdk/shapes:define-list end-point-list :member end-point)

(smithy/sdk/shapes:define-error entity-already-exists common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "EntityAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-error entity-limit-exceeded common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "EntityLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-error entity-not-found common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "EntityNotFound")
                                (:error-code 404))

(smithy/sdk/shapes:define-error entity-size-limit-exceeded common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "EntitySizeLimitExceeded")
                                (:error-code 413))

(smithy/sdk/shapes:define-enum event-type
    common-lisp:nil
  (:viewer-request "viewer-request")
  (:viewer-response "viewer-response")
  (:origin-request "origin-request")
  (:origin-response "origin-response"))

(smithy/sdk/shapes:define-structure field-level-encryption common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime")
                                     (field-level-encryption-config
                                      :target-type
                                      field-level-encryption-config :required
                                      common-lisp:t :member-name
                                      "FieldLevelEncryptionConfig"))
                                    (:shape-name "FieldLevelEncryption"))

(smithy/sdk/shapes:define-structure field-level-encryption-config
                                    common-lisp:nil
                                    ((caller-reference :target-type string
                                      :required common-lisp:t :member-name
                                      "CallerReference")
                                     (comment :target-type string :member-name
                                      "Comment")
                                     (query-arg-profile-config :target-type
                                      query-arg-profile-config :member-name
                                      "QueryArgProfileConfig")
                                     (content-type-profile-config :target-type
                                      content-type-profile-config :member-name
                                      "ContentTypeProfileConfig"))
                                    (:shape-name "FieldLevelEncryptionConfig"))

(smithy/sdk/shapes:define-error field-level-encryption-config-already-exists
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "FieldLevelEncryptionConfigAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-error field-level-encryption-config-in-use
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "FieldLevelEncryptionConfigInUse")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure field-level-encryption-list common-lisp:nil
                                    ((next-marker :target-type string
                                      :member-name "NextMarker")
                                     (max-items :target-type integer :required
                                      common-lisp:t :member-name "MaxItems")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      field-level-encryption-summary-list
                                      :member-name "Items"))
                                    (:shape-name "FieldLevelEncryptionList"))

(smithy/sdk/shapes:define-structure field-level-encryption-profile
                                    common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime")
                                     (field-level-encryption-profile-config
                                      :target-type
                                      field-level-encryption-profile-config
                                      :required common-lisp:t :member-name
                                      "FieldLevelEncryptionProfileConfig"))
                                    (:shape-name "FieldLevelEncryptionProfile"))

(smithy/sdk/shapes:define-error field-level-encryption-profile-already-exists
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "FieldLevelEncryptionProfileAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure field-level-encryption-profile-config
                                    common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (caller-reference :target-type string
                                      :required common-lisp:t :member-name
                                      "CallerReference")
                                     (comment :target-type string :member-name
                                      "Comment")
                                     (encryption-entities :target-type
                                      encryption-entities :required
                                      common-lisp:t :member-name
                                      "EncryptionEntities"))
                                    (:shape-name
                                     "FieldLevelEncryptionProfileConfig"))

(smithy/sdk/shapes:define-error field-level-encryption-profile-in-use
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "FieldLevelEncryptionProfileInUse")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure field-level-encryption-profile-list
                                    common-lisp:nil
                                    ((next-marker :target-type string
                                      :member-name "NextMarker")
                                     (max-items :target-type integer :required
                                      common-lisp:t :member-name "MaxItems")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      field-level-encryption-profile-summary-list
                                      :member-name "Items"))
                                    (:shape-name
                                     "FieldLevelEncryptionProfileList"))

(smithy/sdk/shapes:define-error field-level-encryption-profile-size-exceeded
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "FieldLevelEncryptionProfileSizeExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure field-level-encryption-profile-summary
                                    common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (encryption-entities :target-type
                                      encryption-entities :required
                                      common-lisp:t :member-name
                                      "EncryptionEntities")
                                     (comment :target-type string :member-name
                                      "Comment"))
                                    (:shape-name
                                     "FieldLevelEncryptionProfileSummary"))

(smithy/sdk/shapes:define-list field-level-encryption-profile-summary-list
                               :member
                               (field-level-encryption-profile-summary
                                :xml-name "FieldLevelEncryptionProfileSummary"))

(smithy/sdk/shapes:define-structure field-level-encryption-summary
                                    common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime")
                                     (comment :target-type string :member-name
                                      "Comment")
                                     (query-arg-profile-config :target-type
                                      query-arg-profile-config :member-name
                                      "QueryArgProfileConfig")
                                     (content-type-profile-config :target-type
                                      content-type-profile-config :member-name
                                      "ContentTypeProfileConfig"))
                                    (:shape-name "FieldLevelEncryptionSummary"))

(smithy/sdk/shapes:define-list field-level-encryption-summary-list :member
                               (field-level-encryption-summary :xml-name
                                "FieldLevelEncryptionSummary"))

(smithy/sdk/shapes:define-list field-list :member (string :xml-name "Field"))

(smithy/sdk/shapes:define-list field-pattern-list :member
                               (string :xml-name "FieldPattern"))

(smithy/sdk/shapes:define-structure field-patterns common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type field-pattern-list
                                      :member-name "Items"))
                                    (:shape-name "FieldPatterns"))

(smithy/sdk/shapes:define-enum format
    common-lisp:nil
  (:urlencoded "URLEncoded"))

(smithy/sdk/shapes:define-structure forwarded-values common-lisp:nil
                                    ((query-string :target-type boolean
                                      :required common-lisp:t :member-name
                                      "QueryString")
                                     (cookies :target-type cookie-preference
                                      :required common-lisp:t :member-name
                                      "Cookies")
                                     (headers :target-type headers :member-name
                                      "Headers")
                                     (query-string-cache-keys :target-type
                                      query-string-cache-keys :member-name
                                      "QueryStringCacheKeys"))
                                    (:shape-name "ForwardedValues"))

(smithy/sdk/shapes:define-enum frame-options-list
    common-lisp:nil
  (:deny "DENY")
  (:sameorigin "SAMEORIGIN"))

(smithy/sdk/shapes:define-type function-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error function-already-exists common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "FunctionAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure function-association common-lisp:nil
                                    ((function-arn :target-type function-arn
                                      :required common-lisp:t :member-name
                                      "FunctionARN")
                                     (event-type :target-type event-type
                                      :required common-lisp:t :member-name
                                      "EventType"))
                                    (:shape-name "FunctionAssociation"))

(smithy/sdk/shapes:define-list function-association-list :member
                               (function-association :xml-name
                                "FunctionAssociation"))

(smithy/sdk/shapes:define-structure function-associations common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      function-association-list :member-name
                                      "Items"))
                                    (:shape-name "FunctionAssociations"))

(smithy/sdk/shapes:define-type function-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-structure function-config common-lisp:nil
                                    ((comment :target-type string :required
                                      common-lisp:t :member-name "Comment")
                                     (runtime :target-type function-runtime
                                      :required common-lisp:t :member-name
                                      "Runtime")
                                     (key-value-store-associations :target-type
                                      key-value-store-associations :member-name
                                      "KeyValueStoreAssociations"))
                                    (:shape-name "FunctionConfig"))

(smithy/sdk/shapes:define-type function-event-object
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-list function-execution-log-list :member string)

(smithy/sdk/shapes:define-error function-in-use common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "FunctionInUse") (:error-code 409))

(smithy/sdk/shapes:define-structure function-list common-lisp:nil
                                    ((next-marker :target-type string
                                      :member-name "NextMarker")
                                     (max-items :target-type integer :required
                                      common-lisp:t :member-name "MaxItems")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type function-summary-list
                                      :member-name "Items"))
                                    (:shape-name "FunctionList"))

(smithy/sdk/shapes:define-structure function-metadata common-lisp:nil
                                    ((function-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "FunctionARN")
                                     (stage :target-type function-stage
                                      :member-name "Stage")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime"))
                                    (:shape-name "FunctionMetadata"))

(smithy/sdk/shapes:define-type function-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum function-runtime
    common-lisp:nil
  (:cloudfront-js-1-0 "cloudfront-js-1.0")
  (:cloudfront-js-2-0 "cloudfront-js-2.0"))

(smithy/sdk/shapes:define-error function-size-limit-exceeded common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "FunctionSizeLimitExceeded")
                                (:error-code 413))

(smithy/sdk/shapes:define-enum function-stage
    common-lisp:nil
  (:development "DEVELOPMENT")
  (:live "LIVE"))

(smithy/sdk/shapes:define-structure function-summary common-lisp:nil
                                    ((name :target-type function-name :required
                                      common-lisp:t :member-name "Name")
                                     (status :target-type string :member-name
                                      "Status")
                                     (function-config :target-type
                                      function-config :required common-lisp:t
                                      :member-name "FunctionConfig")
                                     (function-metadata :target-type
                                      function-metadata :required common-lisp:t
                                      :member-name "FunctionMetadata"))
                                    (:shape-name "FunctionSummary"))

(smithy/sdk/shapes:define-list function-summary-list :member
                               (function-summary :xml-name "FunctionSummary"))

(smithy/sdk/shapes:define-structure geo-restriction common-lisp:nil
                                    ((restriction-type :target-type
                                      geo-restriction-type :required
                                      common-lisp:t :member-name
                                      "RestrictionType")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type location-list
                                      :member-name "Items"))
                                    (:shape-name "GeoRestriction"))

(smithy/sdk/shapes:define-structure geo-restriction-customization
                                    common-lisp:nil
                                    ((restriction-type :target-type
                                      geo-restriction-type :required
                                      common-lisp:t :member-name
                                      "RestrictionType")
                                     (locations :target-type location-list
                                      :member-name "Locations"))
                                    (:shape-name "GeoRestrictionCustomization"))

(smithy/sdk/shapes:define-enum geo-restriction-type
    common-lisp:nil
  (:blacklist "blacklist")
  (:whitelist "whitelist")
  (:none "none"))

(smithy/sdk/shapes:define-input get-anycast-ip-list-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetAnycastIpListRequest"))

(smithy/sdk/shapes:define-output get-anycast-ip-list-result common-lisp:nil
                                 ((anycast-ip-list :target-type anycast-ip-list
                                   :member-name "AnycastIpList" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "GetAnycastIpListResult"))

(smithy/sdk/shapes:define-input get-cache-policy-config-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetCachePolicyConfigRequest"))

(smithy/sdk/shapes:define-output get-cache-policy-config-result common-lisp:nil
                                 ((cache-policy-config :target-type
                                   cache-policy-config :member-name
                                   "CachePolicyConfig" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "GetCachePolicyConfigResult"))

(smithy/sdk/shapes:define-input get-cache-policy-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetCachePolicyRequest"))

(smithy/sdk/shapes:define-output get-cache-policy-result common-lisp:nil
                                 ((cache-policy :target-type cache-policy
                                   :member-name "CachePolicy" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "GetCachePolicyResult"))

(smithy/sdk/shapes:define-input
 get-cloud-front-origin-access-identity-config-request common-lisp:nil
 ((id :target-type string :required common-lisp:t :member-name "Id" :http-label
   common-lisp:t))
 (:shape-name "GetCloudFrontOriginAccessIdentityConfigRequest"))

(smithy/sdk/shapes:define-output
 get-cloud-front-origin-access-identity-config-result common-lisp:nil
 ((cloud-front-origin-access-identity-config :target-type
   cloud-front-origin-access-identity-config :member-name
   "CloudFrontOriginAccessIdentityConfig" :http-payload common-lisp:t)
  (etag :target-type string :member-name "ETag" :http-header "ETag"))
 (:shape-name "GetCloudFrontOriginAccessIdentityConfigResult"))

(smithy/sdk/shapes:define-input get-cloud-front-origin-access-identity-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetCloudFrontOriginAccessIdentityRequest"))

(smithy/sdk/shapes:define-output get-cloud-front-origin-access-identity-result
                                 common-lisp:nil
                                 ((cloud-front-origin-access-identity
                                   :target-type
                                   cloud-front-origin-access-identity
                                   :member-name
                                   "CloudFrontOriginAccessIdentity"
                                   :http-payload common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "GetCloudFrontOriginAccessIdentityResult"))

(smithy/sdk/shapes:define-input
 get-connection-group-by-routing-endpoint-request common-lisp:nil
 ((routing-endpoint :target-type string :required common-lisp:t :member-name
   "RoutingEndpoint" :http-query "RoutingEndpoint"))
 (:shape-name "GetConnectionGroupByRoutingEndpointRequest"))

(smithy/sdk/shapes:define-output
 get-connection-group-by-routing-endpoint-result common-lisp:nil
 ((connection-group :target-type connection-group :member-name
   "ConnectionGroup" :http-payload common-lisp:t)
  (etag :target-type string :member-name "ETag" :http-header "ETag"))
 (:shape-name "GetConnectionGroupByRoutingEndpointResult"))

(smithy/sdk/shapes:define-input get-connection-group-request common-lisp:nil
                                ((identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetConnectionGroupRequest"))

(smithy/sdk/shapes:define-output get-connection-group-result common-lisp:nil
                                 ((connection-group :target-type
                                   connection-group :member-name
                                   "ConnectionGroup" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "GetConnectionGroupResult"))

(smithy/sdk/shapes:define-input get-continuous-deployment-policy-config-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetContinuousDeploymentPolicyConfigRequest"))

(smithy/sdk/shapes:define-output get-continuous-deployment-policy-config-result
                                 common-lisp:nil
                                 ((continuous-deployment-policy-config
                                   :target-type
                                   continuous-deployment-policy-config
                                   :member-name
                                   "ContinuousDeploymentPolicyConfig"
                                   :http-payload common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "GetContinuousDeploymentPolicyConfigResult"))

(smithy/sdk/shapes:define-input get-continuous-deployment-policy-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetContinuousDeploymentPolicyRequest"))

(smithy/sdk/shapes:define-output get-continuous-deployment-policy-result
                                 common-lisp:nil
                                 ((continuous-deployment-policy :target-type
                                   continuous-deployment-policy :member-name
                                   "ContinuousDeploymentPolicy" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "GetContinuousDeploymentPolicyResult"))

(smithy/sdk/shapes:define-input get-distribution-config-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetDistributionConfigRequest"))

(smithy/sdk/shapes:define-output get-distribution-config-result common-lisp:nil
                                 ((distribution-config :target-type
                                   distribution-config :member-name
                                   "DistributionConfig" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "GetDistributionConfigResult"))

(smithy/sdk/shapes:define-input get-distribution-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetDistributionRequest"))

(smithy/sdk/shapes:define-output get-distribution-result common-lisp:nil
                                 ((distribution :target-type distribution
                                   :member-name "Distribution" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "GetDistributionResult"))

(smithy/sdk/shapes:define-input get-distribution-tenant-by-domain-request
                                common-lisp:nil
                                ((domain :target-type string :required
                                  common-lisp:t :member-name "Domain"
                                  :http-query "domain"))
                                (:shape-name
                                 "GetDistributionTenantByDomainRequest"))

(smithy/sdk/shapes:define-output get-distribution-tenant-by-domain-result
                                 common-lisp:nil
                                 ((distribution-tenant :target-type
                                   distribution-tenant :member-name
                                   "DistributionTenant" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "GetDistributionTenantByDomainResult"))

(smithy/sdk/shapes:define-input get-distribution-tenant-request common-lisp:nil
                                ((identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDistributionTenantRequest"))

(smithy/sdk/shapes:define-output get-distribution-tenant-result common-lisp:nil
                                 ((distribution-tenant :target-type
                                   distribution-tenant :member-name
                                   "DistributionTenant" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "GetDistributionTenantResult"))

(smithy/sdk/shapes:define-input get-field-level-encryption-config-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetFieldLevelEncryptionConfigRequest"))

(smithy/sdk/shapes:define-output get-field-level-encryption-config-result
                                 common-lisp:nil
                                 ((field-level-encryption-config :target-type
                                   field-level-encryption-config :member-name
                                   "FieldLevelEncryptionConfig" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "GetFieldLevelEncryptionConfigResult"))

(smithy/sdk/shapes:define-input
 get-field-level-encryption-profile-config-request common-lisp:nil
 ((id :target-type string :required common-lisp:t :member-name "Id" :http-label
   common-lisp:t))
 (:shape-name "GetFieldLevelEncryptionProfileConfigRequest"))

(smithy/sdk/shapes:define-output
 get-field-level-encryption-profile-config-result common-lisp:nil
 ((field-level-encryption-profile-config :target-type
   field-level-encryption-profile-config :member-name
   "FieldLevelEncryptionProfileConfig" :http-payload common-lisp:t)
  (etag :target-type string :member-name "ETag" :http-header "ETag"))
 (:shape-name "GetFieldLevelEncryptionProfileConfigResult"))

(smithy/sdk/shapes:define-input get-field-level-encryption-profile-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetFieldLevelEncryptionProfileRequest"))

(smithy/sdk/shapes:define-output get-field-level-encryption-profile-result
                                 common-lisp:nil
                                 ((field-level-encryption-profile :target-type
                                   field-level-encryption-profile :member-name
                                   "FieldLevelEncryptionProfile" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "GetFieldLevelEncryptionProfileResult"))

(smithy/sdk/shapes:define-input get-field-level-encryption-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetFieldLevelEncryptionRequest"))

(smithy/sdk/shapes:define-output get-field-level-encryption-result
                                 common-lisp:nil
                                 ((field-level-encryption :target-type
                                   field-level-encryption :member-name
                                   "FieldLevelEncryption" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "GetFieldLevelEncryptionResult"))

(smithy/sdk/shapes:define-input get-function-request common-lisp:nil
                                ((name :target-type function-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (stage :target-type function-stage
                                  :member-name "Stage" :http-query "Stage"))
                                (:shape-name "GetFunctionRequest"))

(smithy/sdk/shapes:define-output get-function-result common-lisp:nil
                                 ((function-code :target-type function-blob
                                   :member-name "FunctionCode" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag")
                                  (content-type :target-type string
                                   :member-name "ContentType" :http-header
                                   "Content-Type"))
                                 (:shape-name "GetFunctionResult"))

(smithy/sdk/shapes:define-input
 get-invalidation-for-distribution-tenant-request common-lisp:nil
 ((distribution-tenant-id :target-type string :required common-lisp:t
   :member-name "DistributionTenantId" :http-label common-lisp:t)
  (id :target-type string :required common-lisp:t :member-name "Id" :http-label
   common-lisp:t))
 (:shape-name "GetInvalidationForDistributionTenantRequest"))

(smithy/sdk/shapes:define-output
 get-invalidation-for-distribution-tenant-result common-lisp:nil
 ((invalidation :target-type invalidation :member-name "Invalidation"
   :http-payload common-lisp:t))
 (:shape-name "GetInvalidationForDistributionTenantResult"))

(smithy/sdk/shapes:define-input get-invalidation-request common-lisp:nil
                                ((distribution-id :target-type string :required
                                  common-lisp:t :member-name "DistributionId"
                                  :http-label common-lisp:t)
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetInvalidationRequest"))

(smithy/sdk/shapes:define-output get-invalidation-result common-lisp:nil
                                 ((invalidation :target-type invalidation
                                   :member-name "Invalidation" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetInvalidationResult"))

(smithy/sdk/shapes:define-input get-key-group-config-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetKeyGroupConfigRequest"))

(smithy/sdk/shapes:define-output get-key-group-config-result common-lisp:nil
                                 ((key-group-config :target-type
                                   key-group-config :member-name
                                   "KeyGroupConfig" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "GetKeyGroupConfigResult"))

(smithy/sdk/shapes:define-input get-key-group-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetKeyGroupRequest"))

(smithy/sdk/shapes:define-output get-key-group-result common-lisp:nil
                                 ((key-group :target-type key-group
                                   :member-name "KeyGroup" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "GetKeyGroupResult"))

(smithy/sdk/shapes:define-input get-managed-certificate-details-request
                                common-lisp:nil
                                ((identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetManagedCertificateDetailsRequest"))

(smithy/sdk/shapes:define-output get-managed-certificate-details-result
                                 common-lisp:nil
                                 ((managed-certificate-details :target-type
                                   managed-certificate-details :member-name
                                   "ManagedCertificateDetails" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "GetManagedCertificateDetailsResult"))

(smithy/sdk/shapes:define-input get-monitoring-subscription-request
                                common-lisp:nil
                                ((distribution-id :target-type string :required
                                  common-lisp:t :member-name "DistributionId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetMonitoringSubscriptionRequest"))

(smithy/sdk/shapes:define-output get-monitoring-subscription-result
                                 common-lisp:nil
                                 ((monitoring-subscription :target-type
                                   monitoring-subscription :member-name
                                   "MonitoringSubscription" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "GetMonitoringSubscriptionResult"))

(smithy/sdk/shapes:define-input get-origin-access-control-config-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetOriginAccessControlConfigRequest"))

(smithy/sdk/shapes:define-output get-origin-access-control-config-result
                                 common-lisp:nil
                                 ((origin-access-control-config :target-type
                                   origin-access-control-config :member-name
                                   "OriginAccessControlConfig" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "GetOriginAccessControlConfigResult"))

(smithy/sdk/shapes:define-input get-origin-access-control-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetOriginAccessControlRequest"))

(smithy/sdk/shapes:define-output get-origin-access-control-result
                                 common-lisp:nil
                                 ((origin-access-control :target-type
                                   origin-access-control :member-name
                                   "OriginAccessControl" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "GetOriginAccessControlResult"))

(smithy/sdk/shapes:define-input get-origin-request-policy-config-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetOriginRequestPolicyConfigRequest"))

(smithy/sdk/shapes:define-output get-origin-request-policy-config-result
                                 common-lisp:nil
                                 ((origin-request-policy-config :target-type
                                   origin-request-policy-config :member-name
                                   "OriginRequestPolicyConfig" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "GetOriginRequestPolicyConfigResult"))

(smithy/sdk/shapes:define-input get-origin-request-policy-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetOriginRequestPolicyRequest"))

(smithy/sdk/shapes:define-output get-origin-request-policy-result
                                 common-lisp:nil
                                 ((origin-request-policy :target-type
                                   origin-request-policy :member-name
                                   "OriginRequestPolicy" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "GetOriginRequestPolicyResult"))

(smithy/sdk/shapes:define-input get-public-key-config-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetPublicKeyConfigRequest"))

(smithy/sdk/shapes:define-output get-public-key-config-result common-lisp:nil
                                 ((public-key-config :target-type
                                   public-key-config :member-name
                                   "PublicKeyConfig" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "GetPublicKeyConfigResult"))

(smithy/sdk/shapes:define-input get-public-key-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetPublicKeyRequest"))

(smithy/sdk/shapes:define-output get-public-key-result common-lisp:nil
                                 ((public-key :target-type public-key
                                   :member-name "PublicKey" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "GetPublicKeyResult"))

(smithy/sdk/shapes:define-input get-realtime-log-config-request common-lisp:nil
                                ((name :target-type string :member-name "Name")
                                 (arn :target-type string :member-name "ARN"))
                                (:shape-name "GetRealtimeLogConfigRequest"))

(smithy/sdk/shapes:define-output get-realtime-log-config-result common-lisp:nil
                                 ((realtime-log-config :target-type
                                   realtime-log-config :member-name
                                   "RealtimeLogConfig"))
                                 (:shape-name "GetRealtimeLogConfigResult"))

(smithy/sdk/shapes:define-input get-response-headers-policy-config-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetResponseHeadersPolicyConfigRequest"))

(smithy/sdk/shapes:define-output get-response-headers-policy-config-result
                                 common-lisp:nil
                                 ((response-headers-policy-config :target-type
                                   response-headers-policy-config :member-name
                                   "ResponseHeadersPolicyConfig" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "GetResponseHeadersPolicyConfigResult"))

(smithy/sdk/shapes:define-input get-response-headers-policy-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetResponseHeadersPolicyRequest"))

(smithy/sdk/shapes:define-output get-response-headers-policy-result
                                 common-lisp:nil
                                 ((response-headers-policy :target-type
                                   response-headers-policy :member-name
                                   "ResponseHeadersPolicy" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "GetResponseHeadersPolicyResult"))

(smithy/sdk/shapes:define-input get-streaming-distribution-config-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetStreamingDistributionConfigRequest"))

(smithy/sdk/shapes:define-output get-streaming-distribution-config-result
                                 common-lisp:nil
                                 ((streaming-distribution-config :target-type
                                   streaming-distribution-config :member-name
                                   "StreamingDistributionConfig" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "GetStreamingDistributionConfigResult"))

(smithy/sdk/shapes:define-input get-streaming-distribution-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetStreamingDistributionRequest"))

(smithy/sdk/shapes:define-output get-streaming-distribution-result
                                 common-lisp:nil
                                 ((streaming-distribution :target-type
                                   streaming-distribution :member-name
                                   "StreamingDistribution" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "GetStreamingDistributionResult"))

(smithy/sdk/shapes:define-input get-vpc-origin-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetVpcOriginRequest"))

(smithy/sdk/shapes:define-output get-vpc-origin-result common-lisp:nil
                                 ((vpc-origin :target-type vpc-origin
                                   :member-name "VpcOrigin" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "GetVpcOriginResult"))

(smithy/sdk/shapes:define-structure grpc-config common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled"))
                                    (:shape-name "GrpcConfig"))

(smithy/sdk/shapes:define-list header-list :member (string :xml-name "Name"))

(smithy/sdk/shapes:define-structure headers common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type header-list
                                      :member-name "Items"))
                                    (:shape-name "Headers"))

(smithy/sdk/shapes:define-enum http-version
    common-lisp:nil
  (:http1-1 "http1.1")
  (:http2 "http2")
  (:http3 "http3")
  (:http2and3 "http2and3"))

(smithy/sdk/shapes:define-enum icprecordal-status
    common-lisp:nil
  (:approved "APPROVED")
  (:suspended "SUSPENDED")
  (:pending "PENDING"))

(smithy/sdk/shapes:define-error illegal-delete common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "IllegalDelete") (:error-code 400))

(smithy/sdk/shapes:define-error
 illegal-field-level-encryption-config-association-with-cache-behavior
 common-lisp:nil ((message :target-type string :member-name "Message"))
 (:shape-name "IllegalFieldLevelEncryptionConfigAssociationWithCacheBehavior")
 (:error-code 400))

(smithy/sdk/shapes:define-error illegal-origin-access-configuration
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "IllegalOriginAccessConfiguration")
                                (:error-code 400))

(smithy/sdk/shapes:define-error illegal-update common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "IllegalUpdate") (:error-code 400))

(smithy/sdk/shapes:define-structure import-source common-lisp:nil
                                    ((source-type :target-type
                                      import-source-type :required
                                      common-lisp:t :member-name "SourceType")
                                     (source-arn :target-type string :required
                                      common-lisp:t :member-name "SourceARN"))
                                    (:shape-name "ImportSource"))

(smithy/sdk/shapes:define-enum import-source-type
    common-lisp:nil
  (:s3 "S3"))

(smithy/sdk/shapes:define-error inconsistent-quantities common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InconsistentQuantities")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-argument common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidArgument")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-association common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidAssociation")
                                (:error-code 409))

(smithy/sdk/shapes:define-error invalid-default-root-object common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidDefaultRootObject")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-domain-name-for-origin-access-control
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "InvalidDomainNameForOriginAccessControl")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-error-code common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidErrorCode")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-forward-cookies common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidForwardCookies")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-function-association common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidFunctionAssociation")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-geo-restriction-parameter
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidGeoRestrictionParameter")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-headers-for-s3origin common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidHeadersForS3Origin")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-if-match-version common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidIfMatchVersion")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-lambda-function-association
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "InvalidLambdaFunctionAssociation")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-location-code common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidLocationCode")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-minimum-protocol-version
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidMinimumProtocolVersion")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-origin common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidOrigin") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-origin-access-control common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidOriginAccessControl")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-origin-access-identity common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidOriginAccessIdentity")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-origin-keepalive-timeout
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidOriginKeepaliveTimeout")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-origin-read-timeout common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidOriginReadTimeout")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-protocol-settings common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidProtocolSettings")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-query-string-parameters common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidQueryStringParameters")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-relative-path common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidRelativePath")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-required-protocol common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidRequiredProtocol")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-response-code common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidResponseCode")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-ttlorder common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidTTLOrder")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-tagging common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidTagging")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-viewer-certificate common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidViewerCertificate")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-web-aclid common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidWebACLId")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure invalidation common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (status :target-type string :required
                                      common-lisp:t :member-name "Status")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (invalidation-batch :target-type
                                      invalidation-batch :required
                                      common-lisp:t :member-name
                                      "InvalidationBatch"))
                                    (:shape-name "Invalidation"))

(smithy/sdk/shapes:define-structure invalidation-batch common-lisp:nil
                                    ((paths :target-type paths :required
                                      common-lisp:t :member-name "Paths")
                                     (caller-reference :target-type string
                                      :required common-lisp:t :member-name
                                      "CallerReference"))
                                    (:shape-name "InvalidationBatch"))

(smithy/sdk/shapes:define-structure invalidation-list common-lisp:nil
                                    ((marker :target-type string :required
                                      common-lisp:t :member-name "Marker")
                                     (next-marker :target-type string
                                      :member-name "NextMarker")
                                     (max-items :target-type integer :required
                                      common-lisp:t :member-name "MaxItems")
                                     (is-truncated :target-type boolean
                                      :required common-lisp:t :member-name
                                      "IsTruncated")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      invalidation-summary-list :member-name
                                      "Items"))
                                    (:shape-name "InvalidationList"))

(smithy/sdk/shapes:define-structure invalidation-summary common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (create-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreateTime")
                                     (status :target-type string :required
                                      common-lisp:t :member-name "Status"))
                                    (:shape-name "InvalidationSummary"))

(smithy/sdk/shapes:define-list invalidation-summary-list :member
                               (invalidation-summary :xml-name
                                "InvalidationSummary"))

(smithy/sdk/shapes:define-enum item-selection
    common-lisp:nil
  (:none "none")
  (:whitelist "whitelist")
  (:all "all"))

(smithy/sdk/shapes:define-structure kgkey-pair-ids common-lisp:nil
                                    ((key-group-id :target-type string
                                      :member-name "KeyGroupId")
                                     (key-pair-ids :target-type key-pair-ids
                                      :member-name "KeyPairIds"))
                                    (:shape-name "KGKeyPairIds"))

(smithy/sdk/shapes:define-list kgkey-pair-ids-list :member
                               (kgkey-pair-ids :xml-name "KeyGroup"))

(smithy/sdk/shapes:define-structure key-group common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime")
                                     (key-group-config :target-type
                                      key-group-config :required common-lisp:t
                                      :member-name "KeyGroupConfig"))
                                    (:shape-name "KeyGroup"))

(smithy/sdk/shapes:define-error key-group-already-exists common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "KeyGroupAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure key-group-config common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (items :target-type public-key-id-list
                                      :required common-lisp:t :member-name
                                      "Items")
                                     (comment :target-type string :member-name
                                      "Comment"))
                                    (:shape-name "KeyGroupConfig"))

(smithy/sdk/shapes:define-structure key-group-list common-lisp:nil
                                    ((next-marker :target-type string
                                      :member-name "NextMarker")
                                     (max-items :target-type integer :required
                                      common-lisp:t :member-name "MaxItems")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type key-group-summary-list
                                      :member-name "Items"))
                                    (:shape-name "KeyGroupList"))

(smithy/sdk/shapes:define-structure key-group-summary common-lisp:nil
                                    ((key-group :target-type key-group
                                      :required common-lisp:t :member-name
                                      "KeyGroup"))
                                    (:shape-name "KeyGroupSummary"))

(smithy/sdk/shapes:define-list key-group-summary-list :member
                               (key-group-summary :xml-name "KeyGroupSummary"))

(smithy/sdk/shapes:define-list key-pair-id-list :member
                               (string :xml-name "KeyPairId"))

(smithy/sdk/shapes:define-structure key-pair-ids common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type key-pair-id-list
                                      :member-name "Items"))
                                    (:shape-name "KeyPairIds"))

(smithy/sdk/shapes:define-structure key-value-store common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (comment :target-type string :required
                                      common-lisp:t :member-name "Comment")
                                     (arn :target-type string :required
                                      common-lisp:t :member-name "ARN")
                                     (status :target-type string :member-name
                                      "Status")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime"))
                                    (:shape-name "KeyValueStore"))

(smithy/sdk/shapes:define-type key-value-store-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure key-value-store-association common-lisp:nil
                                    ((key-value-store-arn :target-type
                                      key-value-store-arn :required
                                      common-lisp:t :member-name
                                      "KeyValueStoreARN"))
                                    (:shape-name "KeyValueStoreAssociation"))

(smithy/sdk/shapes:define-list key-value-store-association-list :member
                               (key-value-store-association :xml-name
                                "KeyValueStoreAssociation"))

(smithy/sdk/shapes:define-structure key-value-store-associations
                                    common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      key-value-store-association-list
                                      :member-name "Items"))
                                    (:shape-name "KeyValueStoreAssociations"))

(smithy/sdk/shapes:define-type key-value-store-comment
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure key-value-store-list common-lisp:nil
                                    ((next-marker :target-type string
                                      :member-name "NextMarker")
                                     (max-items :target-type integer :required
                                      common-lisp:t :member-name "MaxItems")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      key-value-store-summary-list :member-name
                                      "Items"))
                                    (:shape-name "KeyValueStoreList"))

(smithy/sdk/shapes:define-type key-value-store-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list key-value-store-summary-list :member
                               (key-value-store :xml-name "KeyValueStore"))

(smithy/sdk/shapes:define-structure kinesis-stream-config common-lisp:nil
                                    ((role-arn :target-type string :required
                                      common-lisp:t :member-name "RoleARN")
                                     (stream-arn :target-type string :required
                                      common-lisp:t :member-name "StreamARN"))
                                    (:shape-name "KinesisStreamConfig"))

(smithy/sdk/shapes:define-type lambda-function-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-function-association common-lisp:nil
                                    ((lambda-function-arn :target-type
                                      lambda-function-arn :required
                                      common-lisp:t :member-name
                                      "LambdaFunctionARN")
                                     (event-type :target-type event-type
                                      :required common-lisp:t :member-name
                                      "EventType")
                                     (include-body :target-type boolean
                                      :member-name "IncludeBody"))
                                    (:shape-name "LambdaFunctionAssociation"))

(smithy/sdk/shapes:define-list lambda-function-association-list :member
                               (lambda-function-association :xml-name
                                "LambdaFunctionAssociation"))

(smithy/sdk/shapes:define-structure lambda-function-associations
                                    common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      lambda-function-association-list
                                      :member-name "Items"))
                                    (:shape-name "LambdaFunctionAssociations"))

(smithy/sdk/shapes:define-input list-anycast-ip-lists-request common-lisp:nil
                                ((marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems"))
                                (:shape-name "ListAnycastIpListsRequest"))

(smithy/sdk/shapes:define-output list-anycast-ip-lists-result common-lisp:nil
                                 ((anycast-ip-lists :target-type
                                   anycast-ip-list-collection :member-name
                                   "AnycastIpLists" :http-payload common-lisp:t
                                   :xml-name "AnycastIpListCollection"))
                                 (:shape-name "ListAnycastIpListsResult"))

(smithy/sdk/shapes:define-input list-cache-policies-request common-lisp:nil
                                ((type :target-type cache-policy-type
                                  :member-name "Type" :http-query "Type")
                                 (marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems"))
                                (:shape-name "ListCachePoliciesRequest"))

(smithy/sdk/shapes:define-output list-cache-policies-result common-lisp:nil
                                 ((cache-policy-list :target-type
                                   cache-policy-list :member-name
                                   "CachePolicyList" :http-payload
                                   common-lisp:t))
                                 (:shape-name "ListCachePoliciesResult"))

(smithy/sdk/shapes:define-input
 list-cloud-front-origin-access-identities-request common-lisp:nil
 ((marker :target-type string :member-name "Marker" :http-query "Marker")
  (max-items :target-type integer :member-name "MaxItems" :http-query
   "MaxItems"))
 (:shape-name "ListCloudFrontOriginAccessIdentitiesRequest"))

(smithy/sdk/shapes:define-output
 list-cloud-front-origin-access-identities-result common-lisp:nil
 ((cloud-front-origin-access-identity-list :target-type
   cloud-front-origin-access-identity-list :member-name
   "CloudFrontOriginAccessIdentityList" :http-payload common-lisp:t))
 (:shape-name "ListCloudFrontOriginAccessIdentitiesResult"))

(smithy/sdk/shapes:define-input list-conflicting-aliases-request
                                common-lisp:nil
                                ((distribution-id :target-type
                                  distribution-id-string :required
                                  common-lisp:t :member-name "DistributionId"
                                  :http-query "DistributionId")
                                 (alias :target-type alias-string :required
                                  common-lisp:t :member-name "Alias"
                                  :http-query "Alias")
                                 (marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type
                                  list-conflicting-aliases-max-items-integer
                                  :member-name "MaxItems" :http-query
                                  "MaxItems"))
                                (:shape-name "ListConflictingAliasesRequest"))

(smithy/sdk/shapes:define-output list-conflicting-aliases-result
                                 common-lisp:nil
                                 ((conflicting-aliases-list :target-type
                                   conflicting-aliases-list :member-name
                                   "ConflictingAliasesList" :http-payload
                                   common-lisp:t))
                                 (:shape-name "ListConflictingAliasesResult"))

(smithy/sdk/shapes:define-input list-connection-groups-request common-lisp:nil
                                ((association-filter :target-type
                                  connection-group-association-filter
                                  :member-name "AssociationFilter")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems"))
                                (:shape-name "ListConnectionGroupsRequest"))

(smithy/sdk/shapes:define-output list-connection-groups-result common-lisp:nil
                                 ((next-marker :target-type string :member-name
                                   "NextMarker")
                                  (connection-groups :target-type
                                   connection-group-summary-list :member-name
                                   "ConnectionGroups"))
                                 (:shape-name "ListConnectionGroupsResult"))

(smithy/sdk/shapes:define-input list-continuous-deployment-policies-request
                                common-lisp:nil
                                ((marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems"))
                                (:shape-name
                                 "ListContinuousDeploymentPoliciesRequest"))

(smithy/sdk/shapes:define-output list-continuous-deployment-policies-result
                                 common-lisp:nil
                                 ((continuous-deployment-policy-list
                                   :target-type
                                   continuous-deployment-policy-list
                                   :member-name
                                   "ContinuousDeploymentPolicyList"
                                   :http-payload common-lisp:t))
                                 (:shape-name
                                  "ListContinuousDeploymentPoliciesResult"))

(smithy/sdk/shapes:define-input
 list-distribution-tenants-by-customization-request common-lisp:nil
 ((web-aclarn :target-type string :member-name "WebACLArn")
  (certificate-arn :target-type string :member-name "CertificateArn")
  (marker :target-type string :member-name "Marker")
  (max-items :target-type integer :member-name "MaxItems"))
 (:shape-name "ListDistributionTenantsByCustomizationRequest"))

(smithy/sdk/shapes:define-output
 list-distribution-tenants-by-customization-result common-lisp:nil
 ((next-marker :target-type string :member-name "NextMarker")
  (distribution-tenant-list :target-type distribution-tenant-list :member-name
   "DistributionTenantList"))
 (:shape-name "ListDistributionTenantsByCustomizationResult"))

(smithy/sdk/shapes:define-input list-distribution-tenants-request
                                common-lisp:nil
                                ((association-filter :target-type
                                  distribution-tenant-association-filter
                                  :member-name "AssociationFilter")
                                 (marker :target-type string :member-name
                                  "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems"))
                                (:shape-name "ListDistributionTenantsRequest"))

(smithy/sdk/shapes:define-output list-distribution-tenants-result
                                 common-lisp:nil
                                 ((next-marker :target-type string :member-name
                                   "NextMarker")
                                  (distribution-tenant-list :target-type
                                   distribution-tenant-list :member-name
                                   "DistributionTenantList"))
                                 (:shape-name "ListDistributionTenantsResult"))

(smithy/sdk/shapes:define-input
 list-distributions-by-anycast-ip-list-id-request common-lisp:nil
 ((marker :target-type string :member-name "Marker" :http-query "Marker")
  (max-items :target-type integer :member-name "MaxItems" :http-query
   "MaxItems")
  (anycast-ip-list-id :target-type string :required common-lisp:t :member-name
   "AnycastIpListId" :http-label common-lisp:t))
 (:shape-name "ListDistributionsByAnycastIpListIdRequest"))

(smithy/sdk/shapes:define-output
 list-distributions-by-anycast-ip-list-id-result common-lisp:nil
 ((distribution-list :target-type distribution-list :member-name
   "DistributionList" :http-payload common-lisp:t))
 (:shape-name "ListDistributionsByAnycastIpListIdResult"))

(smithy/sdk/shapes:define-input list-distributions-by-cache-policy-id-request
                                common-lisp:nil
                                ((marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems")
                                 (cache-policy-id :target-type string :required
                                  common-lisp:t :member-name "CachePolicyId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "ListDistributionsByCachePolicyIdRequest"))

(smithy/sdk/shapes:define-output list-distributions-by-cache-policy-id-result
                                 common-lisp:nil
                                 ((distribution-id-list :target-type
                                   distribution-id-list :member-name
                                   "DistributionIdList" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "ListDistributionsByCachePolicyIdResult"))

(smithy/sdk/shapes:define-input list-distributions-by-connection-mode-request
                                common-lisp:nil
                                ((marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems")
                                 (connection-mode :target-type connection-mode
                                  :required common-lisp:t :member-name
                                  "ConnectionMode" :http-label common-lisp:t))
                                (:shape-name
                                 "ListDistributionsByConnectionModeRequest"))

(smithy/sdk/shapes:define-output list-distributions-by-connection-mode-result
                                 common-lisp:nil
                                 ((distribution-list :target-type
                                   distribution-list :member-name
                                   "DistributionList" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "ListDistributionsByConnectionModeResult"))

(smithy/sdk/shapes:define-input list-distributions-by-key-group-request
                                common-lisp:nil
                                ((marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems")
                                 (key-group-id :target-type string :required
                                  common-lisp:t :member-name "KeyGroupId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "ListDistributionsByKeyGroupRequest"))

(smithy/sdk/shapes:define-output list-distributions-by-key-group-result
                                 common-lisp:nil
                                 ((distribution-id-list :target-type
                                   distribution-id-list :member-name
                                   "DistributionIdList" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "ListDistributionsByKeyGroupResult"))

(smithy/sdk/shapes:define-input
 list-distributions-by-origin-request-policy-id-request common-lisp:nil
 ((marker :target-type string :member-name "Marker" :http-query "Marker")
  (max-items :target-type integer :member-name "MaxItems" :http-query
   "MaxItems")
  (origin-request-policy-id :target-type string :required common-lisp:t
   :member-name "OriginRequestPolicyId" :http-label common-lisp:t))
 (:shape-name "ListDistributionsByOriginRequestPolicyIdRequest"))

(smithy/sdk/shapes:define-output
 list-distributions-by-origin-request-policy-id-result common-lisp:nil
 ((distribution-id-list :target-type distribution-id-list :member-name
   "DistributionIdList" :http-payload common-lisp:t))
 (:shape-name "ListDistributionsByOriginRequestPolicyIdResult"))

(smithy/sdk/shapes:define-input
 list-distributions-by-realtime-log-config-request common-lisp:nil
 ((marker :target-type string :member-name "Marker")
  (max-items :target-type integer :member-name "MaxItems")
  (realtime-log-config-name :target-type string :member-name
   "RealtimeLogConfigName")
  (realtime-log-config-arn :target-type string :member-name
   "RealtimeLogConfigArn"))
 (:shape-name "ListDistributionsByRealtimeLogConfigRequest"))

(smithy/sdk/shapes:define-output
 list-distributions-by-realtime-log-config-result common-lisp:nil
 ((distribution-list :target-type distribution-list :member-name
   "DistributionList" :http-payload common-lisp:t))
 (:shape-name "ListDistributionsByRealtimeLogConfigResult"))

(smithy/sdk/shapes:define-input
 list-distributions-by-response-headers-policy-id-request common-lisp:nil
 ((marker :target-type string :member-name "Marker" :http-query "Marker")
  (max-items :target-type integer :member-name "MaxItems" :http-query
   "MaxItems")
  (response-headers-policy-id :target-type string :required common-lisp:t
   :member-name "ResponseHeadersPolicyId" :http-label common-lisp:t))
 (:shape-name "ListDistributionsByResponseHeadersPolicyIdRequest"))

(smithy/sdk/shapes:define-output
 list-distributions-by-response-headers-policy-id-result common-lisp:nil
 ((distribution-id-list :target-type distribution-id-list :member-name
   "DistributionIdList" :http-payload common-lisp:t))
 (:shape-name "ListDistributionsByResponseHeadersPolicyIdResult"))

(smithy/sdk/shapes:define-input list-distributions-by-vpc-origin-id-request
                                common-lisp:nil
                                ((marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems")
                                 (vpc-origin-id :target-type string :required
                                  common-lisp:t :member-name "VpcOriginId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "ListDistributionsByVpcOriginIdRequest"))

(smithy/sdk/shapes:define-output list-distributions-by-vpc-origin-id-result
                                 common-lisp:nil
                                 ((distribution-id-list :target-type
                                   distribution-id-list :member-name
                                   "DistributionIdList" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "ListDistributionsByVpcOriginIdResult"))

(smithy/sdk/shapes:define-input list-distributions-by-web-aclid-request
                                common-lisp:nil
                                ((marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems")
                                 (web-aclid :target-type string :required
                                  common-lisp:t :member-name "WebACLId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "ListDistributionsByWebACLIdRequest"))

(smithy/sdk/shapes:define-output list-distributions-by-web-aclid-result
                                 common-lisp:nil
                                 ((distribution-list :target-type
                                   distribution-list :member-name
                                   "DistributionList" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "ListDistributionsByWebACLIdResult"))

(smithy/sdk/shapes:define-input list-distributions-request common-lisp:nil
                                ((marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems"))
                                (:shape-name "ListDistributionsRequest"))

(smithy/sdk/shapes:define-output list-distributions-result common-lisp:nil
                                 ((distribution-list :target-type
                                   distribution-list :member-name
                                   "DistributionList" :http-payload
                                   common-lisp:t))
                                 (:shape-name "ListDistributionsResult"))

(smithy/sdk/shapes:define-input list-domain-conflicts-request common-lisp:nil
                                ((domain :target-type string :required
                                  common-lisp:t :member-name "Domain")
                                 (domain-control-validation-resource
                                  :target-type distribution-resource-id
                                  :required common-lisp:t :member-name
                                  "DomainControlValidationResource")
                                 (max-items :target-type integer :member-name
                                  "MaxItems")
                                 (marker :target-type string :member-name
                                  "Marker"))
                                (:shape-name "ListDomainConflictsRequest"))

(smithy/sdk/shapes:define-output list-domain-conflicts-result common-lisp:nil
                                 ((domain-conflicts :target-type
                                   domain-conflicts-list :member-name
                                   "DomainConflicts")
                                  (next-marker :target-type string :member-name
                                   "NextMarker"))
                                 (:shape-name "ListDomainConflictsResult"))

(smithy/sdk/shapes:define-input list-field-level-encryption-configs-request
                                common-lisp:nil
                                ((marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems"))
                                (:shape-name
                                 "ListFieldLevelEncryptionConfigsRequest"))

(smithy/sdk/shapes:define-output list-field-level-encryption-configs-result
                                 common-lisp:nil
                                 ((field-level-encryption-list :target-type
                                   field-level-encryption-list :member-name
                                   "FieldLevelEncryptionList" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "ListFieldLevelEncryptionConfigsResult"))

(smithy/sdk/shapes:define-input list-field-level-encryption-profiles-request
                                common-lisp:nil
                                ((marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems"))
                                (:shape-name
                                 "ListFieldLevelEncryptionProfilesRequest"))

(smithy/sdk/shapes:define-output list-field-level-encryption-profiles-result
                                 common-lisp:nil
                                 ((field-level-encryption-profile-list
                                   :target-type
                                   field-level-encryption-profile-list
                                   :member-name
                                   "FieldLevelEncryptionProfileList"
                                   :http-payload common-lisp:t))
                                 (:shape-name
                                  "ListFieldLevelEncryptionProfilesResult"))

(smithy/sdk/shapes:define-input list-functions-request common-lisp:nil
                                ((marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems")
                                 (stage :target-type function-stage
                                  :member-name "Stage" :http-query "Stage"))
                                (:shape-name "ListFunctionsRequest"))

(smithy/sdk/shapes:define-output list-functions-result common-lisp:nil
                                 ((function-list :target-type function-list
                                   :member-name "FunctionList" :http-payload
                                   common-lisp:t))
                                 (:shape-name "ListFunctionsResult"))

(smithy/sdk/shapes:define-input
 list-invalidations-for-distribution-tenant-request common-lisp:nil
 ((id :target-type string :required common-lisp:t :member-name "Id" :http-label
   common-lisp:t)
  (marker :target-type string :member-name "Marker" :http-query "Marker")
  (max-items :target-type integer :member-name "MaxItems" :http-query
   "MaxItems"))
 (:shape-name "ListInvalidationsForDistributionTenantRequest"))

(smithy/sdk/shapes:define-output
 list-invalidations-for-distribution-tenant-result common-lisp:nil
 ((invalidation-list :target-type invalidation-list :member-name
   "InvalidationList" :http-payload common-lisp:t))
 (:shape-name "ListInvalidationsForDistributionTenantResult"))

(smithy/sdk/shapes:define-input list-invalidations-request common-lisp:nil
                                ((distribution-id :target-type string :required
                                  common-lisp:t :member-name "DistributionId"
                                  :http-label common-lisp:t)
                                 (marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems"))
                                (:shape-name "ListInvalidationsRequest"))

(smithy/sdk/shapes:define-output list-invalidations-result common-lisp:nil
                                 ((invalidation-list :target-type
                                   invalidation-list :member-name
                                   "InvalidationList" :http-payload
                                   common-lisp:t))
                                 (:shape-name "ListInvalidationsResult"))

(smithy/sdk/shapes:define-input list-key-groups-request common-lisp:nil
                                ((marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems"))
                                (:shape-name "ListKeyGroupsRequest"))

(smithy/sdk/shapes:define-output list-key-groups-result common-lisp:nil
                                 ((key-group-list :target-type key-group-list
                                   :member-name "KeyGroupList" :http-payload
                                   common-lisp:t))
                                 (:shape-name "ListKeyGroupsResult"))

(smithy/sdk/shapes:define-input list-key-value-stores-request common-lisp:nil
                                ((marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems")
                                 (status :target-type string :member-name
                                  "Status" :http-query "Status"))
                                (:shape-name "ListKeyValueStoresRequest"))

(smithy/sdk/shapes:define-output list-key-value-stores-result common-lisp:nil
                                 ((key-value-store-list :target-type
                                   key-value-store-list :member-name
                                   "KeyValueStoreList" :http-payload
                                   common-lisp:t))
                                 (:shape-name "ListKeyValueStoresResult"))

(smithy/sdk/shapes:define-input list-origin-access-controls-request
                                common-lisp:nil
                                ((marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems"))
                                (:shape-name "ListOriginAccessControlsRequest"))

(smithy/sdk/shapes:define-output list-origin-access-controls-result
                                 common-lisp:nil
                                 ((origin-access-control-list :target-type
                                   origin-access-control-list :member-name
                                   "OriginAccessControlList" :http-payload
                                   common-lisp:t))
                                 (:shape-name "ListOriginAccessControlsResult"))

(smithy/sdk/shapes:define-input list-origin-request-policies-request
                                common-lisp:nil
                                ((type :target-type origin-request-policy-type
                                  :member-name "Type" :http-query "Type")
                                 (marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems"))
                                (:shape-name
                                 "ListOriginRequestPoliciesRequest"))

(smithy/sdk/shapes:define-output list-origin-request-policies-result
                                 common-lisp:nil
                                 ((origin-request-policy-list :target-type
                                   origin-request-policy-list :member-name
                                   "OriginRequestPolicyList" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "ListOriginRequestPoliciesResult"))

(smithy/sdk/shapes:define-input list-public-keys-request common-lisp:nil
                                ((marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems"))
                                (:shape-name "ListPublicKeysRequest"))

(smithy/sdk/shapes:define-output list-public-keys-result common-lisp:nil
                                 ((public-key-list :target-type public-key-list
                                   :member-name "PublicKeyList" :http-payload
                                   common-lisp:t))
                                 (:shape-name "ListPublicKeysResult"))

(smithy/sdk/shapes:define-input list-realtime-log-configs-request
                                common-lisp:nil
                                ((max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems")
                                 (marker :target-type string :member-name
                                  "Marker" :http-query "Marker"))
                                (:shape-name "ListRealtimeLogConfigsRequest"))

(smithy/sdk/shapes:define-output list-realtime-log-configs-result
                                 common-lisp:nil
                                 ((realtime-log-configs :target-type
                                   realtime-log-configs :member-name
                                   "RealtimeLogConfigs" :http-payload
                                   common-lisp:t))
                                 (:shape-name "ListRealtimeLogConfigsResult"))

(smithy/sdk/shapes:define-input list-response-headers-policies-request
                                common-lisp:nil
                                ((type :target-type
                                  response-headers-policy-type :member-name
                                  "Type" :http-query "Type")
                                 (marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems"))
                                (:shape-name
                                 "ListResponseHeadersPoliciesRequest"))

(smithy/sdk/shapes:define-output list-response-headers-policies-result
                                 common-lisp:nil
                                 ((response-headers-policy-list :target-type
                                   response-headers-policy-list :member-name
                                   "ResponseHeadersPolicyList" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "ListResponseHeadersPoliciesResult"))

(smithy/sdk/shapes:define-input list-streaming-distributions-request
                                common-lisp:nil
                                ((marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems"))
                                (:shape-name
                                 "ListStreamingDistributionsRequest"))

(smithy/sdk/shapes:define-output list-streaming-distributions-result
                                 common-lisp:nil
                                 ((streaming-distribution-list :target-type
                                   streaming-distribution-list :member-name
                                   "StreamingDistributionList" :http-payload
                                   common-lisp:t))
                                 (:shape-name
                                  "ListStreamingDistributionsResult"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource :target-type resource-arn :required
                                  common-lisp:t :member-name "Resource"
                                  :http-query "Resource"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-result common-lisp:nil
                                 ((tags :target-type tags :required
                                   common-lisp:t :member-name "Tags"
                                   :http-payload common-lisp:t))
                                 (:shape-name "ListTagsForResourceResult"))

(smithy/sdk/shapes:define-input list-vpc-origins-request common-lisp:nil
                                ((marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type integer :member-name
                                  "MaxItems" :http-query "MaxItems"))
                                (:shape-name "ListVpcOriginsRequest"))

(smithy/sdk/shapes:define-output list-vpc-origins-result common-lisp:nil
                                 ((vpc-origin-list :target-type vpc-origin-list
                                   :member-name "VpcOriginList" :http-payload
                                   common-lisp:t))
                                 (:shape-name "ListVpcOriginsResult"))

(smithy/sdk/shapes:define-list location-list :member
                               (string :xml-name "Location"))

(smithy/sdk/shapes:define-structure logging-config common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled")
                                     (include-cookies :target-type boolean
                                      :member-name "IncludeCookies")
                                     (bucket :target-type string :member-name
                                      "Bucket")
                                     (prefix :target-type string :member-name
                                      "Prefix"))
                                    (:shape-name "LoggingConfig"))

(smithy/sdk/shapes:define-structure managed-certificate-details common-lisp:nil
                                    ((certificate-arn :target-type string
                                      :member-name "CertificateArn")
                                     (certificate-status :target-type
                                      managed-certificate-status :member-name
                                      "CertificateStatus")
                                     (validation-token-host :target-type
                                      validation-token-host :member-name
                                      "ValidationTokenHost")
                                     (validation-token-details :target-type
                                      validation-token-detail-list :member-name
                                      "ValidationTokenDetails"))
                                    (:shape-name "ManagedCertificateDetails"))

(smithy/sdk/shapes:define-structure managed-certificate-request common-lisp:nil
                                    ((validation-token-host :target-type
                                      validation-token-host :required
                                      common-lisp:t :member-name
                                      "ValidationTokenHost")
                                     (primary-domain-name :target-type string
                                      :member-name "PrimaryDomainName")
                                     (certificate-transparency-logging-preference
                                      :target-type
                                      certificate-transparency-logging-preference
                                      :member-name
                                      "CertificateTransparencyLoggingPreference"))
                                    (:shape-name "ManagedCertificateRequest"))

(smithy/sdk/shapes:define-enum managed-certificate-status
    common-lisp:nil
  (:pending-validation "pending-validation")
  (:issued "issued")
  (:inactive "inactive")
  (:expired "expired")
  (:validation-timed-out "validation-timed-out")
  (:revoked "revoked")
  (:failed "failed"))

(smithy/sdk/shapes:define-enum method
    common-lisp:nil
  (:get "GET")
  (:head "HEAD")
  (:post "POST")
  (:put "PUT")
  (:patch "PATCH")
  (:options "OPTIONS")
  (:delete "DELETE"))

(smithy/sdk/shapes:define-list methods-list :member (method :xml-name "Method"))

(smithy/sdk/shapes:define-enum minimum-protocol-version
    common-lisp:nil
  (:sslv3 "SSLv3")
  (:tlsv1 "TLSv1")
  (:tlsv1-2016 "TLSv1_2016")
  (:tlsv1-1-2016 "TLSv1.1_2016")
  (:tlsv1-2-2018 "TLSv1.2_2018")
  (:tlsv1-2-2019 "TLSv1.2_2019")
  (:tlsv1-2-2021 "TLSv1.2_2021"))

(smithy/sdk/shapes:define-error missing-body common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "MissingBody") (:error-code 400))

(smithy/sdk/shapes:define-structure monitoring-subscription common-lisp:nil
                                    ((realtime-metrics-subscription-config
                                      :target-type
                                      realtime-metrics-subscription-config
                                      :member-name
                                      "RealtimeMetricsSubscriptionConfig"))
                                    (:shape-name "MonitoringSubscription"))

(smithy/sdk/shapes:define-error monitoring-subscription-already-exists
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "MonitoringSubscriptionAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-error no-such-cache-policy common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "NoSuchCachePolicy")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-cloud-front-origin-access-identity
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "NoSuchCloudFrontOriginAccessIdentity")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-continuous-deployment-policy
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "NoSuchContinuousDeploymentPolicy")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-distribution common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "NoSuchDistribution")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-field-level-encryption-config
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "NoSuchFieldLevelEncryptionConfig")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-field-level-encryption-profile
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "NoSuchFieldLevelEncryptionProfile")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-function-exists common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "NoSuchFunctionExists")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-invalidation common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "NoSuchInvalidation")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-monitoring-subscription common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "NoSuchMonitoringSubscription")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-origin common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "NoSuchOrigin") (:error-code 404))

(smithy/sdk/shapes:define-error no-such-origin-access-control common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "NoSuchOriginAccessControl")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-origin-request-policy common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "NoSuchOriginRequestPolicy")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-public-key common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "NoSuchPublicKey")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-realtime-log-config common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "NoSuchRealtimeLogConfig")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-resource common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "NoSuchResource")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-response-headers-policy common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "NoSuchResponseHeadersPolicy")
                                (:error-code 404))

(smithy/sdk/shapes:define-error no-such-streaming-distribution common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "NoSuchStreamingDistribution")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure origin common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (domain-name :target-type string :required
                                      common-lisp:t :member-name "DomainName")
                                     (origin-path :target-type string
                                      :member-name "OriginPath")
                                     (custom-headers :target-type
                                      custom-headers :member-name
                                      "CustomHeaders")
                                     (s3origin-config :target-type
                                      s3origin-config :member-name
                                      "S3OriginConfig")
                                     (custom-origin-config :target-type
                                      custom-origin-config :member-name
                                      "CustomOriginConfig")
                                     (vpc-origin-config :target-type
                                      vpc-origin-config :member-name
                                      "VpcOriginConfig")
                                     (connection-attempts :target-type integer
                                      :member-name "ConnectionAttempts")
                                     (connection-timeout :target-type integer
                                      :member-name "ConnectionTimeout")
                                     (response-completion-timeout :target-type
                                      integer :member-name
                                      "ResponseCompletionTimeout")
                                     (origin-shield :target-type origin-shield
                                      :member-name "OriginShield")
                                     (origin-access-control-id :target-type
                                      string :member-name
                                      "OriginAccessControlId"))
                                    (:shape-name "Origin"))

(smithy/sdk/shapes:define-structure origin-access-control common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (origin-access-control-config :target-type
                                      origin-access-control-config :member-name
                                      "OriginAccessControlConfig"))
                                    (:shape-name "OriginAccessControl"))

(smithy/sdk/shapes:define-error origin-access-control-already-exists
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "OriginAccessControlAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure origin-access-control-config
                                    common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (description :target-type string
                                      :member-name "Description")
                                     (signing-protocol :target-type
                                      origin-access-control-signing-protocols
                                      :required common-lisp:t :member-name
                                      "SigningProtocol")
                                     (signing-behavior :target-type
                                      origin-access-control-signing-behaviors
                                      :required common-lisp:t :member-name
                                      "SigningBehavior")
                                     (origin-access-control-origin-type
                                      :target-type
                                      origin-access-control-origin-types
                                      :required common-lisp:t :member-name
                                      "OriginAccessControlOriginType"))
                                    (:shape-name "OriginAccessControlConfig"))

(smithy/sdk/shapes:define-error origin-access-control-in-use common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "OriginAccessControlInUse")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure origin-access-control-list common-lisp:nil
                                    ((marker :target-type string :required
                                      common-lisp:t :member-name "Marker")
                                     (next-marker :target-type string
                                      :member-name "NextMarker")
                                     (max-items :target-type integer :required
                                      common-lisp:t :member-name "MaxItems")
                                     (is-truncated :target-type boolean
                                      :required common-lisp:t :member-name
                                      "IsTruncated")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      origin-access-control-summary-list
                                      :member-name "Items"))
                                    (:shape-name "OriginAccessControlList"))

(smithy/sdk/shapes:define-enum origin-access-control-origin-types
    common-lisp:nil
  (:s3 "s3")
  (:mediastore "mediastore")
  (:mediapackagev2 "mediapackagev2")
  (:lambda "lambda"))

(smithy/sdk/shapes:define-enum origin-access-control-signing-behaviors
    common-lisp:nil
  (:never "never")
  (:always "always")
  (:no-override "no-override"))

(smithy/sdk/shapes:define-enum origin-access-control-signing-protocols
    common-lisp:nil
  (:sigv4 "sigv4"))

(smithy/sdk/shapes:define-structure origin-access-control-summary
                                    common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (description :target-type string :required
                                      common-lisp:t :member-name "Description")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (signing-protocol :target-type
                                      origin-access-control-signing-protocols
                                      :required common-lisp:t :member-name
                                      "SigningProtocol")
                                     (signing-behavior :target-type
                                      origin-access-control-signing-behaviors
                                      :required common-lisp:t :member-name
                                      "SigningBehavior")
                                     (origin-access-control-origin-type
                                      :target-type
                                      origin-access-control-origin-types
                                      :required common-lisp:t :member-name
                                      "OriginAccessControlOriginType"))
                                    (:shape-name "OriginAccessControlSummary"))

(smithy/sdk/shapes:define-list origin-access-control-summary-list :member
                               (origin-access-control-summary :xml-name
                                "OriginAccessControlSummary"))

(smithy/sdk/shapes:define-structure origin-custom-header common-lisp:nil
                                    ((header-name :target-type string :required
                                      common-lisp:t :member-name "HeaderName")
                                     (header-value :target-type
                                      sensitive-string-type :required
                                      common-lisp:t :member-name
                                      "HeaderValue"))
                                    (:shape-name "OriginCustomHeader"))

(smithy/sdk/shapes:define-list origin-custom-headers-list :member
                               (origin-custom-header :xml-name
                                "OriginCustomHeader"))

(smithy/sdk/shapes:define-structure origin-group common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (failover-criteria :target-type
                                      origin-group-failover-criteria :required
                                      common-lisp:t :member-name
                                      "FailoverCriteria")
                                     (members :target-type origin-group-members
                                      :required common-lisp:t :member-name
                                      "Members")
                                     (selection-criteria :target-type
                                      origin-group-selection-criteria
                                      :member-name "SelectionCriteria"))
                                    (:shape-name "OriginGroup"))

(smithy/sdk/shapes:define-structure origin-group-failover-criteria
                                    common-lisp:nil
                                    ((status-codes :target-type status-codes
                                      :required common-lisp:t :member-name
                                      "StatusCodes"))
                                    (:shape-name "OriginGroupFailoverCriteria"))

(smithy/sdk/shapes:define-list origin-group-list :member
                               (origin-group :xml-name "OriginGroup"))

(smithy/sdk/shapes:define-structure origin-group-member common-lisp:nil
                                    ((origin-id :target-type string :required
                                      common-lisp:t :member-name "OriginId"))
                                    (:shape-name "OriginGroupMember"))

(smithy/sdk/shapes:define-list origin-group-member-list :member
                               (origin-group-member :xml-name
                                "OriginGroupMember"))

(smithy/sdk/shapes:define-structure origin-group-members common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      origin-group-member-list :required
                                      common-lisp:t :member-name "Items"))
                                    (:shape-name "OriginGroupMembers"))

(smithy/sdk/shapes:define-enum origin-group-selection-criteria
    common-lisp:nil
  (:default "default")
  (:media-quality-based "media-quality-based"))

(smithy/sdk/shapes:define-structure origin-groups common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type origin-group-list
                                      :member-name "Items"))
                                    (:shape-name "OriginGroups"))

(smithy/sdk/shapes:define-list origin-list :member (origin :xml-name "Origin"))

(smithy/sdk/shapes:define-enum origin-protocol-policy
    common-lisp:nil
  (:http-only "http-only")
  (:match-viewer "match-viewer")
  (:https-only "https-only"))

(smithy/sdk/shapes:define-structure origin-request-policy common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime")
                                     (origin-request-policy-config :target-type
                                      origin-request-policy-config :required
                                      common-lisp:t :member-name
                                      "OriginRequestPolicyConfig"))
                                    (:shape-name "OriginRequestPolicy"))

(smithy/sdk/shapes:define-error origin-request-policy-already-exists
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "OriginRequestPolicyAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure origin-request-policy-config
                                    common-lisp:nil
                                    ((comment :target-type string :member-name
                                      "Comment")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (headers-config :target-type
                                      origin-request-policy-headers-config
                                      :required common-lisp:t :member-name
                                      "HeadersConfig")
                                     (cookies-config :target-type
                                      origin-request-policy-cookies-config
                                      :required common-lisp:t :member-name
                                      "CookiesConfig")
                                     (query-strings-config :target-type
                                      origin-request-policy-query-strings-config
                                      :required common-lisp:t :member-name
                                      "QueryStringsConfig"))
                                    (:shape-name "OriginRequestPolicyConfig"))

(smithy/sdk/shapes:define-enum origin-request-policy-cookie-behavior
    common-lisp:nil
  (:none "none")
  (:whitelist "whitelist")
  (:all "all")
  (:all-except "allExcept"))

(smithy/sdk/shapes:define-structure origin-request-policy-cookies-config
                                    common-lisp:nil
                                    ((cookie-behavior :target-type
                                      origin-request-policy-cookie-behavior
                                      :required common-lisp:t :member-name
                                      "CookieBehavior")
                                     (cookies :target-type cookie-names
                                      :member-name "Cookies"))
                                    (:shape-name
                                     "OriginRequestPolicyCookiesConfig"))

(smithy/sdk/shapes:define-enum origin-request-policy-header-behavior
    common-lisp:nil
  (:none "none")
  (:whitelist "whitelist")
  (:all-viewer "allViewer")
  (:all-viewer-and-whitelist-cloud-front "allViewerAndWhitelistCloudFront")
  (:all-except "allExcept"))

(smithy/sdk/shapes:define-structure origin-request-policy-headers-config
                                    common-lisp:nil
                                    ((header-behavior :target-type
                                      origin-request-policy-header-behavior
                                      :required common-lisp:t :member-name
                                      "HeaderBehavior")
                                     (headers :target-type headers :member-name
                                      "Headers"))
                                    (:shape-name
                                     "OriginRequestPolicyHeadersConfig"))

(smithy/sdk/shapes:define-error origin-request-policy-in-use common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "OriginRequestPolicyInUse")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure origin-request-policy-list common-lisp:nil
                                    ((next-marker :target-type string
                                      :member-name "NextMarker")
                                     (max-items :target-type integer :required
                                      common-lisp:t :member-name "MaxItems")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      origin-request-policy-summary-list
                                      :member-name "Items"))
                                    (:shape-name "OriginRequestPolicyList"))

(smithy/sdk/shapes:define-enum origin-request-policy-query-string-behavior
    common-lisp:nil
  (:none "none")
  (:whitelist "whitelist")
  (:all "all")
  (:all-except "allExcept"))

(smithy/sdk/shapes:define-structure origin-request-policy-query-strings-config
                                    common-lisp:nil
                                    ((query-string-behavior :target-type
                                      origin-request-policy-query-string-behavior
                                      :required common-lisp:t :member-name
                                      "QueryStringBehavior")
                                     (query-strings :target-type
                                      query-string-names :member-name
                                      "QueryStrings"))
                                    (:shape-name
                                     "OriginRequestPolicyQueryStringsConfig"))

(smithy/sdk/shapes:define-structure origin-request-policy-summary
                                    common-lisp:nil
                                    ((type :target-type
                                      origin-request-policy-type :required
                                      common-lisp:t :member-name "Type")
                                     (origin-request-policy :target-type
                                      origin-request-policy :required
                                      common-lisp:t :member-name
                                      "OriginRequestPolicy"))
                                    (:shape-name "OriginRequestPolicySummary"))

(smithy/sdk/shapes:define-list origin-request-policy-summary-list :member
                               (origin-request-policy-summary :xml-name
                                "OriginRequestPolicySummary"))

(smithy/sdk/shapes:define-enum origin-request-policy-type
    common-lisp:nil
  (:managed "managed")
  (:custom "custom"))

(smithy/sdk/shapes:define-structure origin-shield common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled")
                                     (origin-shield-region :target-type
                                      origin-shield-region :member-name
                                      "OriginShieldRegion"))
                                    (:shape-name "OriginShield"))

(smithy/sdk/shapes:define-type origin-shield-region
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure origin-ssl-protocols common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type ssl-protocols-list
                                      :required common-lisp:t :member-name
                                      "Items"))
                                    (:shape-name "OriginSslProtocols"))

(smithy/sdk/shapes:define-structure origins common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type origin-list :required
                                      common-lisp:t :member-name "Items"))
                                    (:shape-name "Origins"))

(smithy/sdk/shapes:define-structure parameter common-lisp:nil
                                    ((name :target-type parameter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (value :target-type parameter-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "Parameter"))

(smithy/sdk/shapes:define-structure parameter-definition common-lisp:nil
                                    ((name :target-type parameter-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (definition :target-type
                                      parameter-definition-schema :required
                                      common-lisp:t :member-name "Definition"))
                                    (:shape-name "ParameterDefinition"))

(smithy/sdk/shapes:define-structure parameter-definition-schema common-lisp:nil
                                    ((string-schema :target-type
                                      string-schema-config :member-name
                                      "StringSchema"))
                                    (:shape-name "ParameterDefinitionSchema"))

(smithy/sdk/shapes:define-list parameter-definitions :member
                               parameter-definition)

(smithy/sdk/shapes:define-type parameter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parameter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list parameters :member parameter)

(smithy/sdk/shapes:define-structure
 parameters-in-cache-key-and-forwarded-to-origin common-lisp:nil
 ((enable-accept-encoding-gzip :target-type boolean :required common-lisp:t
   :member-name "EnableAcceptEncodingGzip")
  (enable-accept-encoding-brotli :target-type boolean :member-name
   "EnableAcceptEncodingBrotli")
  (headers-config :target-type cache-policy-headers-config :required
   common-lisp:t :member-name "HeadersConfig")
  (cookies-config :target-type cache-policy-cookies-config :required
   common-lisp:t :member-name "CookiesConfig")
  (query-strings-config :target-type cache-policy-query-strings-config
   :required common-lisp:t :member-name "QueryStringsConfig"))
 (:shape-name "ParametersInCacheKeyAndForwardedToOrigin"))

(smithy/sdk/shapes:define-list path-list :member (string :xml-name "Path"))

(smithy/sdk/shapes:define-structure paths common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type path-list :member-name
                                      "Items"))
                                    (:shape-name "Paths"))

(smithy/sdk/shapes:define-error precondition-failed common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "PreconditionFailed")
                                (:error-code 412))

(smithy/sdk/shapes:define-enum price-class
    common-lisp:nil
  (:price-class-100 "PriceClass_100")
  (:price-class-200 "PriceClass_200")
  (:price-class-all "PriceClass_All")
  (:none "None"))

(smithy/sdk/shapes:define-structure public-key common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (created-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedTime")
                                     (public-key-config :target-type
                                      public-key-config :required common-lisp:t
                                      :member-name "PublicKeyConfig"))
                                    (:shape-name "PublicKey"))

(smithy/sdk/shapes:define-error public-key-already-exists common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "PublicKeyAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure public-key-config common-lisp:nil
                                    ((caller-reference :target-type string
                                      :required common-lisp:t :member-name
                                      "CallerReference")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (encoded-key :target-type string :required
                                      common-lisp:t :member-name "EncodedKey")
                                     (comment :target-type string :member-name
                                      "Comment"))
                                    (:shape-name "PublicKeyConfig"))

(smithy/sdk/shapes:define-list public-key-id-list :member
                               (string :xml-name "PublicKey"))

(smithy/sdk/shapes:define-error public-key-in-use common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "PublicKeyInUse")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure public-key-list common-lisp:nil
                                    ((next-marker :target-type string
                                      :member-name "NextMarker")
                                     (max-items :target-type integer :required
                                      common-lisp:t :member-name "MaxItems")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      public-key-summary-list :member-name
                                      "Items"))
                                    (:shape-name "PublicKeyList"))

(smithy/sdk/shapes:define-structure public-key-summary common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (created-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedTime")
                                     (encoded-key :target-type string :required
                                      common-lisp:t :member-name "EncodedKey")
                                     (comment :target-type string :member-name
                                      "Comment"))
                                    (:shape-name "PublicKeySummary"))

(smithy/sdk/shapes:define-list public-key-summary-list :member
                               (public-key-summary :xml-name
                                "PublicKeySummary"))

(smithy/sdk/shapes:define-input publish-function-request common-lisp:nil
                                ((name :target-type function-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :required
                                  common-lisp:t :member-name "IfMatch"
                                  :http-header "If-Match"))
                                (:shape-name "PublishFunctionRequest"))

(smithy/sdk/shapes:define-output publish-function-result common-lisp:nil
                                 ((function-summary :target-type
                                   function-summary :member-name
                                   "FunctionSummary" :http-payload
                                   common-lisp:t))
                                 (:shape-name "PublishFunctionResult"))

(smithy/sdk/shapes:define-structure query-arg-profile common-lisp:nil
                                    ((query-arg :target-type string :required
                                      common-lisp:t :member-name "QueryArg")
                                     (profile-id :target-type string :required
                                      common-lisp:t :member-name "ProfileId"))
                                    (:shape-name "QueryArgProfile"))

(smithy/sdk/shapes:define-structure query-arg-profile-config common-lisp:nil
                                    ((forward-when-query-arg-profile-is-unknown
                                      :target-type boolean :required
                                      common-lisp:t :member-name
                                      "ForwardWhenQueryArgProfileIsUnknown")
                                     (query-arg-profiles :target-type
                                      query-arg-profiles :member-name
                                      "QueryArgProfiles"))
                                    (:shape-name "QueryArgProfileConfig"))

(smithy/sdk/shapes:define-error query-arg-profile-empty common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "QueryArgProfileEmpty")
                                (:error-code 400))

(smithy/sdk/shapes:define-list query-arg-profile-list :member
                               (query-arg-profile :xml-name "QueryArgProfile"))

(smithy/sdk/shapes:define-structure query-arg-profiles common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type query-arg-profile-list
                                      :member-name "Items"))
                                    (:shape-name "QueryArgProfiles"))

(smithy/sdk/shapes:define-structure query-string-cache-keys common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      query-string-cache-keys-list :member-name
                                      "Items"))
                                    (:shape-name "QueryStringCacheKeys"))

(smithy/sdk/shapes:define-list query-string-cache-keys-list :member
                               (string :xml-name "Name"))

(smithy/sdk/shapes:define-structure query-string-names common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      query-string-names-list :member-name
                                      "Items"))
                                    (:shape-name "QueryStringNames"))

(smithy/sdk/shapes:define-list query-string-names-list :member
                               (string :xml-name "Name"))

(smithy/sdk/shapes:define-structure realtime-log-config common-lisp:nil
                                    ((arn :target-type string :required
                                      common-lisp:t :member-name "ARN")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (sampling-rate :target-type long :required
                                      common-lisp:t :member-name
                                      "SamplingRate")
                                     (end-points :target-type end-point-list
                                      :required common-lisp:t :member-name
                                      "EndPoints")
                                     (fields :target-type field-list :required
                                      common-lisp:t :member-name "Fields"))
                                    (:shape-name "RealtimeLogConfig"))

(smithy/sdk/shapes:define-error realtime-log-config-already-exists
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "RealtimeLogConfigAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-error realtime-log-config-in-use common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "RealtimeLogConfigInUse")
                                (:error-code 400))

(smithy/sdk/shapes:define-list realtime-log-config-list :member
                               realtime-log-config)

(smithy/sdk/shapes:define-error realtime-log-config-owner-mismatch
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "RealtimeLogConfigOwnerMismatch")
                                (:error-code 401))

(smithy/sdk/shapes:define-structure realtime-log-configs common-lisp:nil
                                    ((max-items :target-type integer :required
                                      common-lisp:t :member-name "MaxItems")
                                     (items :target-type
                                      realtime-log-config-list :member-name
                                      "Items")
                                     (is-truncated :target-type boolean
                                      :required common-lisp:t :member-name
                                      "IsTruncated")
                                     (marker :target-type string :required
                                      common-lisp:t :member-name "Marker")
                                     (next-marker :target-type string
                                      :member-name "NextMarker"))
                                    (:shape-name "RealtimeLogConfigs"))

(smithy/sdk/shapes:define-structure realtime-metrics-subscription-config
                                    common-lisp:nil
                                    ((realtime-metrics-subscription-status
                                      :target-type
                                      realtime-metrics-subscription-status
                                      :required common-lisp:t :member-name
                                      "RealtimeMetricsSubscriptionStatus"))
                                    (:shape-name
                                     "RealtimeMetricsSubscriptionConfig"))

(smithy/sdk/shapes:define-enum realtime-metrics-subscription-status
    common-lisp:nil
  (:enabled "Enabled")
  (:disabled "Disabled"))

(smithy/sdk/shapes:define-enum referrer-policy-list
    common-lisp:nil
  (:no-referrer "no-referrer")
  (:no-referrer-when-downgrade "no-referrer-when-downgrade")
  (:origin "origin")
  (:origin-when-cross-origin "origin-when-cross-origin")
  (:same-origin "same-origin")
  (:strict-origin "strict-origin")
  (:strict-origin-when-cross-origin "strict-origin-when-cross-origin")
  (:unsafe-url "unsafe-url"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-in-use common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceInUse") (:error-code 409))

(smithy/sdk/shapes:define-error resource-not-disabled common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceNotDisabled")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure response-headers-policy common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime")
                                     (response-headers-policy-config
                                      :target-type
                                      response-headers-policy-config :required
                                      common-lisp:t :member-name
                                      "ResponseHeadersPolicyConfig"))
                                    (:shape-name "ResponseHeadersPolicy"))

(smithy/sdk/shapes:define-structure
 response-headers-policy-access-control-allow-headers common-lisp:nil
 ((quantity :target-type integer :required common-lisp:t :member-name
   "Quantity")
  (items :target-type access-control-allow-headers-list :required common-lisp:t
   :member-name "Items"))
 (:shape-name "ResponseHeadersPolicyAccessControlAllowHeaders"))

(smithy/sdk/shapes:define-structure
 response-headers-policy-access-control-allow-methods common-lisp:nil
 ((quantity :target-type integer :required common-lisp:t :member-name
   "Quantity")
  (items :target-type access-control-allow-methods-list :required common-lisp:t
   :member-name "Items"))
 (:shape-name "ResponseHeadersPolicyAccessControlAllowMethods"))

(smithy/sdk/shapes:define-enum response-headers-policy-access-control-allow-methods-values
    common-lisp:nil
  (:get "GET")
  (:post "POST")
  (:options "OPTIONS")
  (:put "PUT")
  (:delete "DELETE")
  (:patch "PATCH")
  (:head "HEAD")
  (:all "ALL"))

(smithy/sdk/shapes:define-structure
 response-headers-policy-access-control-allow-origins common-lisp:nil
 ((quantity :target-type integer :required common-lisp:t :member-name
   "Quantity")
  (items :target-type access-control-allow-origins-list :required common-lisp:t
   :member-name "Items"))
 (:shape-name "ResponseHeadersPolicyAccessControlAllowOrigins"))

(smithy/sdk/shapes:define-structure
 response-headers-policy-access-control-expose-headers common-lisp:nil
 ((quantity :target-type integer :required common-lisp:t :member-name
   "Quantity")
  (items :target-type access-control-expose-headers-list :member-name "Items"))
 (:shape-name "ResponseHeadersPolicyAccessControlExposeHeaders"))

(smithy/sdk/shapes:define-error response-headers-policy-already-exists
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "ResponseHeadersPolicyAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure response-headers-policy-config
                                    common-lisp:nil
                                    ((comment :target-type string :member-name
                                      "Comment")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (cors-config :target-type
                                      response-headers-policy-cors-config
                                      :member-name "CorsConfig")
                                     (security-headers-config :target-type
                                      response-headers-policy-security-headers-config
                                      :member-name "SecurityHeadersConfig")
                                     (server-timing-headers-config :target-type
                                      response-headers-policy-server-timing-headers-config
                                      :member-name "ServerTimingHeadersConfig")
                                     (custom-headers-config :target-type
                                      response-headers-policy-custom-headers-config
                                      :member-name "CustomHeadersConfig")
                                     (remove-headers-config :target-type
                                      response-headers-policy-remove-headers-config
                                      :member-name "RemoveHeadersConfig"))
                                    (:shape-name "ResponseHeadersPolicyConfig"))

(smithy/sdk/shapes:define-structure
 response-headers-policy-content-security-policy common-lisp:nil
 ((override :target-type boolean :required common-lisp:t :member-name
   "Override")
  (content-security-policy :target-type string :required common-lisp:t
   :member-name "ContentSecurityPolicy"))
 (:shape-name "ResponseHeadersPolicyContentSecurityPolicy"))

(smithy/sdk/shapes:define-structure
 response-headers-policy-content-type-options common-lisp:nil
 ((override :target-type boolean :required common-lisp:t :member-name
   "Override"))
 (:shape-name "ResponseHeadersPolicyContentTypeOptions"))

(smithy/sdk/shapes:define-structure response-headers-policy-cors-config
                                    common-lisp:nil
                                    ((access-control-allow-origins :target-type
                                      response-headers-policy-access-control-allow-origins
                                      :required common-lisp:t :member-name
                                      "AccessControlAllowOrigins")
                                     (access-control-allow-headers :target-type
                                      response-headers-policy-access-control-allow-headers
                                      :required common-lisp:t :member-name
                                      "AccessControlAllowHeaders")
                                     (access-control-allow-methods :target-type
                                      response-headers-policy-access-control-allow-methods
                                      :required common-lisp:t :member-name
                                      "AccessControlAllowMethods")
                                     (access-control-allow-credentials
                                      :target-type boolean :required
                                      common-lisp:t :member-name
                                      "AccessControlAllowCredentials")
                                     (access-control-expose-headers
                                      :target-type
                                      response-headers-policy-access-control-expose-headers
                                      :member-name
                                      "AccessControlExposeHeaders")
                                     (access-control-max-age-sec :target-type
                                      integer :member-name
                                      "AccessControlMaxAgeSec")
                                     (origin-override :target-type boolean
                                      :required common-lisp:t :member-name
                                      "OriginOverride"))
                                    (:shape-name
                                     "ResponseHeadersPolicyCorsConfig"))

(smithy/sdk/shapes:define-structure response-headers-policy-custom-header
                                    common-lisp:nil
                                    ((header :target-type string :required
                                      common-lisp:t :member-name "Header")
                                     (value :target-type string :required
                                      common-lisp:t :member-name "Value")
                                     (override :target-type boolean :required
                                      common-lisp:t :member-name "Override"))
                                    (:shape-name
                                     "ResponseHeadersPolicyCustomHeader"))

(smithy/sdk/shapes:define-list response-headers-policy-custom-header-list
                               :member
                               (response-headers-policy-custom-header :xml-name
                                "ResponseHeadersPolicyCustomHeader"))

(smithy/sdk/shapes:define-structure
 response-headers-policy-custom-headers-config common-lisp:nil
 ((quantity :target-type integer :required common-lisp:t :member-name
   "Quantity")
  (items :target-type response-headers-policy-custom-header-list :member-name
   "Items"))
 (:shape-name "ResponseHeadersPolicyCustomHeadersConfig"))

(smithy/sdk/shapes:define-structure response-headers-policy-frame-options
                                    common-lisp:nil
                                    ((override :target-type boolean :required
                                      common-lisp:t :member-name "Override")
                                     (frame-option :target-type
                                      frame-options-list :required
                                      common-lisp:t :member-name
                                      "FrameOption"))
                                    (:shape-name
                                     "ResponseHeadersPolicyFrameOptions"))

(smithy/sdk/shapes:define-error response-headers-policy-in-use common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResponseHeadersPolicyInUse")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure response-headers-policy-list
                                    common-lisp:nil
                                    ((next-marker :target-type string
                                      :member-name "NextMarker")
                                     (max-items :target-type integer :required
                                      common-lisp:t :member-name "MaxItems")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      response-headers-policy-summary-list
                                      :member-name "Items"))
                                    (:shape-name "ResponseHeadersPolicyList"))

(smithy/sdk/shapes:define-structure response-headers-policy-referrer-policy
                                    common-lisp:nil
                                    ((override :target-type boolean :required
                                      common-lisp:t :member-name "Override")
                                     (referrer-policy :target-type
                                      referrer-policy-list :required
                                      common-lisp:t :member-name
                                      "ReferrerPolicy"))
                                    (:shape-name
                                     "ResponseHeadersPolicyReferrerPolicy"))

(smithy/sdk/shapes:define-structure response-headers-policy-remove-header
                                    common-lisp:nil
                                    ((header :target-type string :required
                                      common-lisp:t :member-name "Header"))
                                    (:shape-name
                                     "ResponseHeadersPolicyRemoveHeader"))

(smithy/sdk/shapes:define-list response-headers-policy-remove-header-list
                               :member
                               (response-headers-policy-remove-header :xml-name
                                "ResponseHeadersPolicyRemoveHeader"))

(smithy/sdk/shapes:define-structure
 response-headers-policy-remove-headers-config common-lisp:nil
 ((quantity :target-type integer :required common-lisp:t :member-name
   "Quantity")
  (items :target-type response-headers-policy-remove-header-list :member-name
   "Items"))
 (:shape-name "ResponseHeadersPolicyRemoveHeadersConfig"))

(smithy/sdk/shapes:define-structure
 response-headers-policy-security-headers-config common-lisp:nil
 ((xssprotection :target-type response-headers-policy-xssprotection
   :member-name "XSSProtection")
  (frame-options :target-type response-headers-policy-frame-options
   :member-name "FrameOptions")
  (referrer-policy :target-type response-headers-policy-referrer-policy
   :member-name "ReferrerPolicy")
  (content-security-policy :target-type
   response-headers-policy-content-security-policy :member-name
   "ContentSecurityPolicy")
  (content-type-options :target-type
   response-headers-policy-content-type-options :member-name
   "ContentTypeOptions")
  (strict-transport-security :target-type
   response-headers-policy-strict-transport-security :member-name
   "StrictTransportSecurity"))
 (:shape-name "ResponseHeadersPolicySecurityHeadersConfig"))

(smithy/sdk/shapes:define-structure
 response-headers-policy-server-timing-headers-config common-lisp:nil
 ((enabled :target-type boolean :required common-lisp:t :member-name "Enabled")
  (sampling-rate :target-type sampling-rate :member-name "SamplingRate"))
 (:shape-name "ResponseHeadersPolicyServerTimingHeadersConfig"))

(smithy/sdk/shapes:define-structure
 response-headers-policy-strict-transport-security common-lisp:nil
 ((override :target-type boolean :required common-lisp:t :member-name
   "Override")
  (include-subdomains :target-type boolean :member-name "IncludeSubdomains")
  (preload :target-type boolean :member-name "Preload")
  (access-control-max-age-sec :target-type integer :required common-lisp:t
   :member-name "AccessControlMaxAgeSec"))
 (:shape-name "ResponseHeadersPolicyStrictTransportSecurity"))

(smithy/sdk/shapes:define-structure response-headers-policy-summary
                                    common-lisp:nil
                                    ((type :target-type
                                      response-headers-policy-type :required
                                      common-lisp:t :member-name "Type")
                                     (response-headers-policy :target-type
                                      response-headers-policy :required
                                      common-lisp:t :member-name
                                      "ResponseHeadersPolicy"))
                                    (:shape-name
                                     "ResponseHeadersPolicySummary"))

(smithy/sdk/shapes:define-list response-headers-policy-summary-list :member
                               (response-headers-policy-summary :xml-name
                                "ResponseHeadersPolicySummary"))

(smithy/sdk/shapes:define-enum response-headers-policy-type
    common-lisp:nil
  (:managed "managed")
  (:custom "custom"))

(smithy/sdk/shapes:define-structure response-headers-policy-xssprotection
                                    common-lisp:nil
                                    ((override :target-type boolean :required
                                      common-lisp:t :member-name "Override")
                                     (protection :target-type boolean :required
                                      common-lisp:t :member-name "Protection")
                                     (mode-block :target-type boolean
                                      :member-name "ModeBlock")
                                     (report-uri :target-type string
                                      :member-name "ReportUri"))
                                    (:shape-name
                                     "ResponseHeadersPolicyXSSProtection"))

(smithy/sdk/shapes:define-structure restrictions common-lisp:nil
                                    ((geo-restriction :target-type
                                      geo-restriction :required common-lisp:t
                                      :member-name "GeoRestriction"))
                                    (:shape-name "Restrictions"))

(smithy/sdk/shapes:define-structure s3origin common-lisp:nil
                                    ((domain-name :target-type string :required
                                      common-lisp:t :member-name "DomainName")
                                     (origin-access-identity :target-type
                                      string :required common-lisp:t
                                      :member-name "OriginAccessIdentity"))
                                    (:shape-name "S3Origin"))

(smithy/sdk/shapes:define-structure s3origin-config common-lisp:nil
                                    ((origin-access-identity :target-type
                                      string :required common-lisp:t
                                      :member-name "OriginAccessIdentity")
                                     (origin-read-timeout :target-type integer
                                      :member-name "OriginReadTimeout"))
                                    (:shape-name "S3OriginConfig"))

(smithy/sdk/shapes:define-enum sslsupport-method
    common-lisp:nil
  (:sni-only "sni-only")
  (:vip "vip")
  (:static-ip "static-ip"))

(smithy/sdk/shapes:define-type sampling-rate smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type server-certificate-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure session-stickiness-config common-lisp:nil
                                    ((idle-ttl :target-type integer :required
                                      common-lisp:t :member-name "IdleTTL")
                                     (maximum-ttl :target-type integer
                                      :required common-lisp:t :member-name
                                      "MaximumTTL"))
                                    (:shape-name "SessionStickinessConfig"))

(smithy/sdk/shapes:define-structure signer common-lisp:nil
                                    ((aws-account-number :target-type string
                                      :member-name "AwsAccountNumber")
                                     (key-pair-ids :target-type key-pair-ids
                                      :member-name "KeyPairIds"))
                                    (:shape-name "Signer"))

(smithy/sdk/shapes:define-list signer-list :member (signer :xml-name "Signer"))

(smithy/sdk/shapes:define-enum ssl-protocol
    common-lisp:nil
  (:sslv3 "SSLv3")
  (:tlsv1 "TLSv1")
  (:tlsv1-1 "TLSv1.1")
  (:tlsv1-2 "TLSv1.2"))

(smithy/sdk/shapes:define-list ssl-protocols-list :member
                               (ssl-protocol :xml-name "SslProtocol"))

(smithy/sdk/shapes:define-list staging-distribution-dns-name-list :member
                               (string :xml-name "DnsName"))

(smithy/sdk/shapes:define-structure staging-distribution-dns-names
                                    common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      staging-distribution-dns-name-list
                                      :member-name "Items"))
                                    (:shape-name "StagingDistributionDnsNames"))

(smithy/sdk/shapes:define-error staging-distribution-in-use common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "StagingDistributionInUse")
                                (:error-code 409))

(smithy/sdk/shapes:define-list status-code-list :member
                               (integer :xml-name "StatusCode"))

(smithy/sdk/shapes:define-structure status-codes common-lisp:nil
                                    ((quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type status-code-list
                                      :required common-lisp:t :member-name
                                      "Items"))
                                    (:shape-name "StatusCodes"))

(smithy/sdk/shapes:define-structure streaming-distribution common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (arn :target-type string :required
                                      common-lisp:t :member-name "ARN")
                                     (status :target-type string :required
                                      common-lisp:t :member-name "Status")
                                     (last-modified-time :target-type timestamp
                                      :member-name "LastModifiedTime")
                                     (domain-name :target-type string :required
                                      common-lisp:t :member-name "DomainName")
                                     (active-trusted-signers :target-type
                                      active-trusted-signers :required
                                      common-lisp:t :member-name
                                      "ActiveTrustedSigners")
                                     (streaming-distribution-config
                                      :target-type
                                      streaming-distribution-config :required
                                      common-lisp:t :member-name
                                      "StreamingDistributionConfig"))
                                    (:shape-name "StreamingDistribution"))

(smithy/sdk/shapes:define-error streaming-distribution-already-exists
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "StreamingDistributionAlreadyExists")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure streaming-distribution-config
                                    common-lisp:nil
                                    ((caller-reference :target-type string
                                      :required common-lisp:t :member-name
                                      "CallerReference")
                                     (s3origin :target-type s3origin :required
                                      common-lisp:t :member-name "S3Origin")
                                     (aliases :target-type aliases :member-name
                                      "Aliases")
                                     (comment :target-type string :required
                                      common-lisp:t :member-name "Comment")
                                     (logging :target-type
                                      streaming-logging-config :member-name
                                      "Logging")
                                     (trusted-signers :target-type
                                      trusted-signers :required common-lisp:t
                                      :member-name "TrustedSigners")
                                     (price-class :target-type price-class
                                      :member-name "PriceClass")
                                     (enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled"))
                                    (:shape-name "StreamingDistributionConfig"))

(smithy/sdk/shapes:define-structure streaming-distribution-config-with-tags
                                    common-lisp:nil
                                    ((streaming-distribution-config
                                      :target-type
                                      streaming-distribution-config :required
                                      common-lisp:t :member-name
                                      "StreamingDistributionConfig")
                                     (tags :target-type tags :required
                                      common-lisp:t :member-name "Tags"))
                                    (:shape-name
                                     "StreamingDistributionConfigWithTags"))

(smithy/sdk/shapes:define-structure streaming-distribution-list common-lisp:nil
                                    ((marker :target-type string :required
                                      common-lisp:t :member-name "Marker")
                                     (next-marker :target-type string
                                      :member-name "NextMarker")
                                     (max-items :target-type integer :required
                                      common-lisp:t :member-name "MaxItems")
                                     (is-truncated :target-type boolean
                                      :required common-lisp:t :member-name
                                      "IsTruncated")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      streaming-distribution-summary-list
                                      :member-name "Items"))
                                    (:shape-name "StreamingDistributionList"))

(smithy/sdk/shapes:define-error streaming-distribution-not-disabled
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "StreamingDistributionNotDisabled")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure streaming-distribution-summary
                                    common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (arn :target-type string :required
                                      common-lisp:t :member-name "ARN")
                                     (status :target-type string :required
                                      common-lisp:t :member-name "Status")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime")
                                     (domain-name :target-type string :required
                                      common-lisp:t :member-name "DomainName")
                                     (s3origin :target-type s3origin :required
                                      common-lisp:t :member-name "S3Origin")
                                     (aliases :target-type aliases :required
                                      common-lisp:t :member-name "Aliases")
                                     (trusted-signers :target-type
                                      trusted-signers :required common-lisp:t
                                      :member-name "TrustedSigners")
                                     (comment :target-type string :required
                                      common-lisp:t :member-name "Comment")
                                     (price-class :target-type price-class
                                      :required common-lisp:t :member-name
                                      "PriceClass")
                                     (enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled"))
                                    (:shape-name
                                     "StreamingDistributionSummary"))

(smithy/sdk/shapes:define-list streaming-distribution-summary-list :member
                               (streaming-distribution-summary :xml-name
                                "StreamingDistributionSummary"))

(smithy/sdk/shapes:define-structure streaming-logging-config common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled")
                                     (bucket :target-type string :required
                                      common-lisp:t :member-name "Bucket")
                                     (prefix :target-type string :required
                                      common-lisp:t :member-name "Prefix"))
                                    (:shape-name "StreamingLoggingConfig"))

(smithy/sdk/shapes:define-structure string-schema-config common-lisp:nil
                                    ((comment :target-type
                                      sensitive-string-type :member-name
                                      "Comment")
                                     (default-value :target-type
                                      parameter-value :member-name
                                      "DefaultValue")
                                     (required :target-type boolean :required
                                      common-lisp:t :member-name "Required"))
                                    (:shape-name "StringSchemaConfig"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member (tag-key :xml-name "Key"))

(smithy/sdk/shapes:define-structure tag-keys common-lisp:nil
                                    ((items :target-type tag-key-list
                                      :member-name "Items"))
                                    (:shape-name "TagKeys"))

(smithy/sdk/shapes:define-list tag-list :member (tag :xml-name "Tag"))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource :target-type resource-arn :required
                                  common-lisp:t :member-name "Resource"
                                  :http-query "Resource")
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"
                                  :http-payload common-lisp:t :xml-name
                                  "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tags common-lisp:nil
                                    ((items :target-type tag-list :member-name
                                      "Items"))
                                    (:shape-name "Tags"))

(smithy/sdk/shapes:define-structure tenant-config common-lisp:nil
                                    ((parameter-definitions :target-type
                                      parameter-definitions :member-name
                                      "ParameterDefinitions"))
                                    (:shape-name "TenantConfig"))

(smithy/sdk/shapes:define-error test-function-failed common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TestFunctionFailed")
                                (:error-code 500))

(smithy/sdk/shapes:define-input test-function-request common-lisp:nil
                                ((name :target-type function-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :required
                                  common-lisp:t :member-name "IfMatch"
                                  :http-header "If-Match")
                                 (stage :target-type function-stage
                                  :member-name "Stage")
                                 (event-object :target-type
                                  function-event-object :required common-lisp:t
                                  :member-name "EventObject"))
                                (:shape-name "TestFunctionRequest"))

(smithy/sdk/shapes:define-output test-function-result common-lisp:nil
                                 ((test-result :target-type test-result
                                   :member-name "TestResult" :http-payload
                                   common-lisp:t))
                                 (:shape-name "TestFunctionResult"))

(smithy/sdk/shapes:define-structure test-result common-lisp:nil
                                    ((function-summary :target-type
                                      function-summary :member-name
                                      "FunctionSummary")
                                     (compute-utilization :target-type string
                                      :member-name "ComputeUtilization")
                                     (function-execution-logs :target-type
                                      function-execution-log-list :member-name
                                      "FunctionExecutionLogs")
                                     (function-error-message :target-type
                                      sensitive-string-type :member-name
                                      "FunctionErrorMessage")
                                     (function-output :target-type
                                      sensitive-string-type :member-name
                                      "FunctionOutput"))
                                    (:shape-name "TestResult"))

(smithy/sdk/shapes:define-error too-long-cspin-response-headers-policy
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "TooLongCSPInResponseHeadersPolicy")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-cache-behaviors common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyCacheBehaviors")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-cache-policies common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyCachePolicies")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-certificates common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyCertificates")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-cloud-front-origin-access-identities
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "TooManyCloudFrontOriginAccessIdentities")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-continuous-deployment-policies
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "TooManyContinuousDeploymentPolicies")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-cookie-names-in-white-list
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyCookieNamesInWhiteList")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-cookies-in-cache-policy
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyCookiesInCachePolicy")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-cookies-in-origin-request-policy
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "TooManyCookiesInOriginRequestPolicy")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 too-many-custom-headers-in-response-headers-policy common-lisp:nil
 ((message :target-type string :member-name "Message"))
 (:shape-name "TooManyCustomHeadersInResponseHeadersPolicy") (:error-code 400))

(smithy/sdk/shapes:define-error too-many-distribution-cnames common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyDistributionCNAMEs")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-distributions common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyDistributions")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 too-many-distributions-associated-to-cache-policy common-lisp:nil
 ((message :target-type string :member-name "Message"))
 (:shape-name "TooManyDistributionsAssociatedToCachePolicy") (:error-code 400))

(smithy/sdk/shapes:define-error
 too-many-distributions-associated-to-field-level-encryption-config
 common-lisp:nil ((message :target-type string :member-name "Message"))
 (:shape-name "TooManyDistributionsAssociatedToFieldLevelEncryptionConfig")
 (:error-code 400))

(smithy/sdk/shapes:define-error too-many-distributions-associated-to-key-group
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "TooManyDistributionsAssociatedToKeyGroup")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 too-many-distributions-associated-to-origin-access-control common-lisp:nil
 ((message :target-type string :member-name "Message"))
 (:shape-name "TooManyDistributionsAssociatedToOriginAccessControl")
 (:error-code 400))

(smithy/sdk/shapes:define-error
 too-many-distributions-associated-to-origin-request-policy common-lisp:nil
 ((message :target-type string :member-name "Message"))
 (:shape-name "TooManyDistributionsAssociatedToOriginRequestPolicy")
 (:error-code 400))

(smithy/sdk/shapes:define-error
 too-many-distributions-associated-to-response-headers-policy common-lisp:nil
 ((message :target-type string :member-name "Message"))
 (:shape-name "TooManyDistributionsAssociatedToResponseHeadersPolicy")
 (:error-code 400))

(smithy/sdk/shapes:define-error
 too-many-distributions-with-function-associations common-lisp:nil
 ((message :target-type string :member-name "Message"))
 (:shape-name "TooManyDistributionsWithFunctionAssociations") (:error-code 400))

(smithy/sdk/shapes:define-error too-many-distributions-with-lambda-associations
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "TooManyDistributionsWithLambdaAssociations")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-distributions-with-single-function-arn
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "TooManyDistributionsWithSingleFunctionARN")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-field-level-encryption-configs
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "TooManyFieldLevelEncryptionConfigs")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 too-many-field-level-encryption-content-type-profiles common-lisp:nil
 ((message :target-type string :member-name "Message"))
 (:shape-name "TooManyFieldLevelEncryptionContentTypeProfiles")
 (:error-code 400))

(smithy/sdk/shapes:define-error
 too-many-field-level-encryption-encryption-entities common-lisp:nil
 ((message :target-type string :member-name "Message"))
 (:shape-name "TooManyFieldLevelEncryptionEncryptionEntities")
 (:error-code 400))

(smithy/sdk/shapes:define-error too-many-field-level-encryption-field-patterns
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "TooManyFieldLevelEncryptionFieldPatterns")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-field-level-encryption-profiles
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "TooManyFieldLevelEncryptionProfiles")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 too-many-field-level-encryption-query-arg-profiles common-lisp:nil
 ((message :target-type string :member-name "Message"))
 (:shape-name "TooManyFieldLevelEncryptionQueryArgProfiles") (:error-code 400))

(smithy/sdk/shapes:define-error too-many-function-associations common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyFunctionAssociations")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-functions common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyFunctions")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-headers-in-cache-policy
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyHeadersInCachePolicy")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-headers-in-forwarded-values
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyHeadersInForwardedValues")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-headers-in-origin-request-policy
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "TooManyHeadersInOriginRequestPolicy")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-invalidations-in-progress
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyInvalidationsInProgress")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-key-groups common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyKeyGroups")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-key-groups-associated-to-distribution
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "TooManyKeyGroupsAssociatedToDistribution")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-lambda-function-associations
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "TooManyLambdaFunctionAssociations")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-origin-access-controls common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyOriginAccessControls")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-origin-custom-headers common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyOriginCustomHeaders")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-origin-groups-per-distribution
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "TooManyOriginGroupsPerDistribution")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-origin-request-policies
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyOriginRequestPolicies")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-origins common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyOrigins")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-public-keys common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyPublicKeys")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-public-keys-in-key-group
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyPublicKeysInKeyGroup")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-query-string-parameters
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyQueryStringParameters")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-query-strings-in-cache-policy
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "TooManyQueryStringsInCachePolicy")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-query-strings-in-origin-request-policy
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "TooManyQueryStringsInOriginRequestPolicy")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-realtime-log-configs common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyRealtimeLogConfigs")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 too-many-remove-headers-in-response-headers-policy common-lisp:nil
 ((message :target-type string :member-name "Message"))
 (:shape-name "TooManyRemoveHeadersInResponseHeadersPolicy") (:error-code 400))

(smithy/sdk/shapes:define-error too-many-response-headers-policies
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyResponseHeadersPolicies")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-streaming-distribution-cnames
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "TooManyStreamingDistributionCNAMEs")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-streaming-distributions
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyStreamingDistributions")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-trusted-signers common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TooManyTrustedSigners")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure traffic-config common-lisp:nil
                                    ((single-weight-config :target-type
                                      continuous-deployment-single-weight-config
                                      :member-name "SingleWeightConfig")
                                     (single-header-config :target-type
                                      continuous-deployment-single-header-config
                                      :member-name "SingleHeaderConfig")
                                     (type :target-type
                                      continuous-deployment-policy-type
                                      :required common-lisp:t :member-name
                                      "Type"))
                                    (:shape-name "TrafficConfig"))

(smithy/sdk/shapes:define-error trusted-key-group-does-not-exist
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TrustedKeyGroupDoesNotExist")
                                (:error-code 400))

(smithy/sdk/shapes:define-list trusted-key-group-id-list :member
                               (string :xml-name "KeyGroup"))

(smithy/sdk/shapes:define-structure trusted-key-groups common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      trusted-key-group-id-list :member-name
                                      "Items"))
                                    (:shape-name "TrustedKeyGroups"))

(smithy/sdk/shapes:define-error trusted-signer-does-not-exist common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "TrustedSignerDoesNotExist")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure trusted-signers common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "Enabled")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      aws-account-number-list :member-name
                                      "Items"))
                                    (:shape-name "TrustedSigners"))

(smithy/sdk/shapes:define-error unsupported-operation common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "UnsupportedOperation")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource :target-type resource-arn :required
                                  common-lisp:t :member-name "Resource"
                                  :http-query "Resource")
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-payload common-lisp:t :xml-name
                                  "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-cache-policy-request common-lisp:nil
                                ((cache-policy-config :target-type
                                  cache-policy-config :required common-lisp:t
                                  :member-name "CachePolicyConfig"
                                  :http-payload common-lisp:t :xml-name
                                  "CachePolicyConfig")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name "UpdateCachePolicyRequest"))

(smithy/sdk/shapes:define-output update-cache-policy-result common-lisp:nil
                                 ((cache-policy :target-type cache-policy
                                   :member-name "CachePolicy" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "UpdateCachePolicyResult"))

(smithy/sdk/shapes:define-input
 update-cloud-front-origin-access-identity-request common-lisp:nil
 ((cloud-front-origin-access-identity-config :target-type
   cloud-front-origin-access-identity-config :required common-lisp:t
   :member-name "CloudFrontOriginAccessIdentityConfig" :http-payload
   common-lisp:t :xml-name "CloudFrontOriginAccessIdentityConfig")
  (id :target-type string :required common-lisp:t :member-name "Id" :http-label
   common-lisp:t)
  (if-match :target-type string :member-name "IfMatch" :http-header
   "If-Match"))
 (:shape-name "UpdateCloudFrontOriginAccessIdentityRequest"))

(smithy/sdk/shapes:define-output
 update-cloud-front-origin-access-identity-result common-lisp:nil
 ((cloud-front-origin-access-identity :target-type
   cloud-front-origin-access-identity :member-name
   "CloudFrontOriginAccessIdentity" :http-payload common-lisp:t)
  (etag :target-type string :member-name "ETag" :http-header "ETag"))
 (:shape-name "UpdateCloudFrontOriginAccessIdentityResult"))

(smithy/sdk/shapes:define-input update-connection-group-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (ipv6enabled :target-type boolean :member-name
                                  "Ipv6Enabled")
                                 (if-match :target-type string :required
                                  common-lisp:t :member-name "IfMatch"
                                  :http-header "If-Match")
                                 (anycast-ip-list-id :target-type string
                                  :member-name "AnycastIpListId")
                                 (enabled :target-type boolean :member-name
                                  "Enabled"))
                                (:shape-name "UpdateConnectionGroupRequest"))

(smithy/sdk/shapes:define-output update-connection-group-result common-lisp:nil
                                 ((connection-group :target-type
                                   connection-group :member-name
                                   "ConnectionGroup" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "UpdateConnectionGroupResult"))

(smithy/sdk/shapes:define-input update-continuous-deployment-policy-request
                                common-lisp:nil
                                ((continuous-deployment-policy-config
                                  :target-type
                                  continuous-deployment-policy-config :required
                                  common-lisp:t :member-name
                                  "ContinuousDeploymentPolicyConfig"
                                  :http-payload common-lisp:t :xml-name
                                  "ContinuousDeploymentPolicyConfig")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name
                                 "UpdateContinuousDeploymentPolicyRequest"))

(smithy/sdk/shapes:define-output update-continuous-deployment-policy-result
                                 common-lisp:nil
                                 ((continuous-deployment-policy :target-type
                                   continuous-deployment-policy :member-name
                                   "ContinuousDeploymentPolicy" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "UpdateContinuousDeploymentPolicyResult"))

(smithy/sdk/shapes:define-input update-distribution-request common-lisp:nil
                                ((distribution-config :target-type
                                  distribution-config :required common-lisp:t
                                  :member-name "DistributionConfig"
                                  :http-payload common-lisp:t :xml-name
                                  "DistributionConfig")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name "UpdateDistributionRequest"))

(smithy/sdk/shapes:define-output update-distribution-result common-lisp:nil
                                 ((distribution :target-type distribution
                                   :member-name "Distribution" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "UpdateDistributionResult"))

(smithy/sdk/shapes:define-input update-distribution-tenant-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (distribution-id :target-type string
                                  :member-name "DistributionId")
                                 (domains :target-type domain-list :member-name
                                  "Domains")
                                 (customizations :target-type customizations
                                  :member-name "Customizations")
                                 (parameters :target-type parameters
                                  :member-name "Parameters")
                                 (connection-group-id :target-type string
                                  :member-name "ConnectionGroupId")
                                 (if-match :target-type string :required
                                  common-lisp:t :member-name "IfMatch"
                                  :http-header "If-Match")
                                 (managed-certificate-request :target-type
                                  managed-certificate-request :member-name
                                  "ManagedCertificateRequest")
                                 (enabled :target-type boolean :member-name
                                  "Enabled"))
                                (:shape-name "UpdateDistributionTenantRequest"))

(smithy/sdk/shapes:define-output update-distribution-tenant-result
                                 common-lisp:nil
                                 ((distribution-tenant :target-type
                                   distribution-tenant :member-name
                                   "DistributionTenant" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "UpdateDistributionTenantResult"))

(smithy/sdk/shapes:define-input update-distribution-with-staging-config-request
                                common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (staging-distribution-id :target-type string
                                  :member-name "StagingDistributionId"
                                  :http-query "StagingDistributionId")
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name
                                 "UpdateDistributionWithStagingConfigRequest"))

(smithy/sdk/shapes:define-output update-distribution-with-staging-config-result
                                 common-lisp:nil
                                 ((distribution :target-type distribution
                                   :member-name "Distribution" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "UpdateDistributionWithStagingConfigResult"))

(smithy/sdk/shapes:define-input update-domain-association-request
                                common-lisp:nil
                                ((domain :target-type string :required
                                  common-lisp:t :member-name "Domain")
                                 (target-resource :target-type
                                  distribution-resource-id :required
                                  common-lisp:t :member-name "TargetResource")
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name "UpdateDomainAssociationRequest"))

(smithy/sdk/shapes:define-output update-domain-association-result
                                 common-lisp:nil
                                 ((domain :target-type string :member-name
                                   "Domain")
                                  (resource-id :target-type string :member-name
                                   "ResourceId")
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "UpdateDomainAssociationResult"))

(smithy/sdk/shapes:define-input update-field-level-encryption-config-request
                                common-lisp:nil
                                ((field-level-encryption-config :target-type
                                  field-level-encryption-config :required
                                  common-lisp:t :member-name
                                  "FieldLevelEncryptionConfig" :http-payload
                                  common-lisp:t :xml-name
                                  "FieldLevelEncryptionConfig")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name
                                 "UpdateFieldLevelEncryptionConfigRequest"))

(smithy/sdk/shapes:define-output update-field-level-encryption-config-result
                                 common-lisp:nil
                                 ((field-level-encryption :target-type
                                   field-level-encryption :member-name
                                   "FieldLevelEncryption" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "UpdateFieldLevelEncryptionConfigResult"))

(smithy/sdk/shapes:define-input update-field-level-encryption-profile-request
                                common-lisp:nil
                                ((field-level-encryption-profile-config
                                  :target-type
                                  field-level-encryption-profile-config
                                  :required common-lisp:t :member-name
                                  "FieldLevelEncryptionProfileConfig"
                                  :http-payload common-lisp:t :xml-name
                                  "FieldLevelEncryptionProfileConfig")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name
                                 "UpdateFieldLevelEncryptionProfileRequest"))

(smithy/sdk/shapes:define-output update-field-level-encryption-profile-result
                                 common-lisp:nil
                                 ((field-level-encryption-profile :target-type
                                   field-level-encryption-profile :member-name
                                   "FieldLevelEncryptionProfile" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "UpdateFieldLevelEncryptionProfileResult"))

(smithy/sdk/shapes:define-input update-function-request common-lisp:nil
                                ((name :target-type function-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :required
                                  common-lisp:t :member-name "IfMatch"
                                  :http-header "If-Match")
                                 (function-config :target-type function-config
                                  :required common-lisp:t :member-name
                                  "FunctionConfig")
                                 (function-code :target-type function-blob
                                  :required common-lisp:t :member-name
                                  "FunctionCode"))
                                (:shape-name "UpdateFunctionRequest"))

(smithy/sdk/shapes:define-output update-function-result common-lisp:nil
                                 ((function-summary :target-type
                                   function-summary :member-name
                                   "FunctionSummary" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETtag"))
                                 (:shape-name "UpdateFunctionResult"))

(smithy/sdk/shapes:define-input update-key-group-request common-lisp:nil
                                ((key-group-config :target-type
                                  key-group-config :required common-lisp:t
                                  :member-name "KeyGroupConfig" :http-payload
                                  common-lisp:t :xml-name "KeyGroupConfig")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name "UpdateKeyGroupRequest"))

(smithy/sdk/shapes:define-output update-key-group-result common-lisp:nil
                                 ((key-group :target-type key-group
                                   :member-name "KeyGroup" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "UpdateKeyGroupResult"))

(smithy/sdk/shapes:define-input update-key-value-store-request common-lisp:nil
                                ((name :target-type key-value-store-name
                                  :required common-lisp:t :member-name "Name"
                                  :http-label common-lisp:t)
                                 (comment :target-type key-value-store-comment
                                  :required common-lisp:t :member-name
                                  "Comment")
                                 (if-match :target-type string :required
                                  common-lisp:t :member-name "IfMatch"
                                  :http-header "If-Match"))
                                (:shape-name "UpdateKeyValueStoreRequest"))

(smithy/sdk/shapes:define-output update-key-value-store-result common-lisp:nil
                                 ((key-value-store :target-type key-value-store
                                   :member-name "KeyValueStore" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "UpdateKeyValueStoreResult"))

(smithy/sdk/shapes:define-input update-origin-access-control-request
                                common-lisp:nil
                                ((origin-access-control-config :target-type
                                  origin-access-control-config :required
                                  common-lisp:t :member-name
                                  "OriginAccessControlConfig" :http-payload
                                  common-lisp:t :xml-name
                                  "OriginAccessControlConfig")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name
                                 "UpdateOriginAccessControlRequest"))

(smithy/sdk/shapes:define-output update-origin-access-control-result
                                 common-lisp:nil
                                 ((origin-access-control :target-type
                                   origin-access-control :member-name
                                   "OriginAccessControl" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "UpdateOriginAccessControlResult"))

(smithy/sdk/shapes:define-input update-origin-request-policy-request
                                common-lisp:nil
                                ((origin-request-policy-config :target-type
                                  origin-request-policy-config :required
                                  common-lisp:t :member-name
                                  "OriginRequestPolicyConfig" :http-payload
                                  common-lisp:t :xml-name
                                  "OriginRequestPolicyConfig")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name
                                 "UpdateOriginRequestPolicyRequest"))

(smithy/sdk/shapes:define-output update-origin-request-policy-result
                                 common-lisp:nil
                                 ((origin-request-policy :target-type
                                   origin-request-policy :member-name
                                   "OriginRequestPolicy" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "UpdateOriginRequestPolicyResult"))

(smithy/sdk/shapes:define-input update-public-key-request common-lisp:nil
                                ((public-key-config :target-type
                                  public-key-config :required common-lisp:t
                                  :member-name "PublicKeyConfig" :http-payload
                                  common-lisp:t :xml-name "PublicKeyConfig")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name "UpdatePublicKeyRequest"))

(smithy/sdk/shapes:define-output update-public-key-result common-lisp:nil
                                 ((public-key :target-type public-key
                                   :member-name "PublicKey" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "UpdatePublicKeyResult"))

(smithy/sdk/shapes:define-input update-realtime-log-config-request
                                common-lisp:nil
                                ((end-points :target-type end-point-list
                                  :member-name "EndPoints")
                                 (fields :target-type field-list :member-name
                                  "Fields")
                                 (name :target-type string :member-name "Name")
                                 (arn :target-type string :member-name "ARN")
                                 (sampling-rate :target-type long :member-name
                                  "SamplingRate"))
                                (:shape-name "UpdateRealtimeLogConfigRequest"))

(smithy/sdk/shapes:define-output update-realtime-log-config-result
                                 common-lisp:nil
                                 ((realtime-log-config :target-type
                                   realtime-log-config :member-name
                                   "RealtimeLogConfig"))
                                 (:shape-name "UpdateRealtimeLogConfigResult"))

(smithy/sdk/shapes:define-input update-response-headers-policy-request
                                common-lisp:nil
                                ((response-headers-policy-config :target-type
                                  response-headers-policy-config :required
                                  common-lisp:t :member-name
                                  "ResponseHeadersPolicyConfig" :http-payload
                                  common-lisp:t :xml-name
                                  "ResponseHeadersPolicyConfig")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name
                                 "UpdateResponseHeadersPolicyRequest"))

(smithy/sdk/shapes:define-output update-response-headers-policy-result
                                 common-lisp:nil
                                 ((response-headers-policy :target-type
                                   response-headers-policy :member-name
                                   "ResponseHeadersPolicy" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "UpdateResponseHeadersPolicyResult"))

(smithy/sdk/shapes:define-input update-streaming-distribution-request
                                common-lisp:nil
                                ((streaming-distribution-config :target-type
                                  streaming-distribution-config :required
                                  common-lisp:t :member-name
                                  "StreamingDistributionConfig" :http-payload
                                  common-lisp:t :xml-name
                                  "StreamingDistributionConfig")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :member-name
                                  "IfMatch" :http-header "If-Match"))
                                (:shape-name
                                 "UpdateStreamingDistributionRequest"))

(smithy/sdk/shapes:define-output update-streaming-distribution-result
                                 common-lisp:nil
                                 ((streaming-distribution :target-type
                                   streaming-distribution :member-name
                                   "StreamingDistribution" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name
                                  "UpdateStreamingDistributionResult"))

(smithy/sdk/shapes:define-input update-vpc-origin-request common-lisp:nil
                                ((vpc-origin-endpoint-config :target-type
                                  vpc-origin-endpoint-config :required
                                  common-lisp:t :member-name
                                  "VpcOriginEndpointConfig" :http-payload
                                  common-lisp:t :xml-name
                                  "VpcOriginEndpointConfig")
                                 (id :target-type string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (if-match :target-type string :required
                                  common-lisp:t :member-name "IfMatch"
                                  :http-header "If-Match"))
                                (:shape-name "UpdateVpcOriginRequest"))

(smithy/sdk/shapes:define-output update-vpc-origin-result common-lisp:nil
                                 ((vpc-origin :target-type vpc-origin
                                   :member-name "VpcOrigin" :http-payload
                                   common-lisp:t)
                                  (etag :target-type string :member-name "ETag"
                                   :http-header "ETag"))
                                 (:shape-name "UpdateVpcOriginResult"))

(smithy/sdk/shapes:define-structure validation-token-detail common-lisp:nil
                                    ((domain :target-type string :required
                                      common-lisp:t :member-name "Domain")
                                     (redirect-to :target-type string
                                      :member-name "RedirectTo")
                                     (redirect-from :target-type string
                                      :member-name "RedirectFrom"))
                                    (:shape-name "ValidationTokenDetail"))

(smithy/sdk/shapes:define-list validation-token-detail-list :member
                               validation-token-detail)

(smithy/sdk/shapes:define-enum validation-token-host
    common-lisp:nil
  (:cloud-front "cloudfront")
  (:self-hosted "self-hosted"))

(smithy/sdk/shapes:define-input verify-dns-configuration-request
                                common-lisp:nil
                                ((domain :target-type string :member-name
                                  "Domain")
                                 (identifier :target-type string :required
                                  common-lisp:t :member-name "Identifier"))
                                (:shape-name "VerifyDnsConfigurationRequest"))

(smithy/sdk/shapes:define-output verify-dns-configuration-result
                                 common-lisp:nil
                                 ((dns-configuration-list :target-type
                                   dns-configuration-list :member-name
                                   "DnsConfigurationList"))
                                 (:shape-name "VerifyDnsConfigurationResult"))

(smithy/sdk/shapes:define-structure viewer-certificate common-lisp:nil
                                    ((cloud-front-default-certificate
                                      :target-type boolean :member-name
                                      "CloudFrontDefaultCertificate")
                                     (iamcertificate-id :target-type
                                      server-certificate-id :member-name
                                      "IAMCertificateId")
                                     (acmcertificate-arn :target-type string
                                      :member-name "ACMCertificateArn")
                                     (sslsupport-method :target-type
                                      sslsupport-method :member-name
                                      "SSLSupportMethod")
                                     (minimum-protocol-version :target-type
                                      minimum-protocol-version :member-name
                                      "MinimumProtocolVersion")
                                     (certificate :target-type string
                                      :member-name "Certificate")
                                     (certificate-source :target-type
                                      certificate-source :member-name
                                      "CertificateSource"))
                                    (:shape-name "ViewerCertificate"))

(smithy/sdk/shapes:define-enum viewer-protocol-policy
    common-lisp:nil
  (:allow-all "allow-all")
  (:https-only "https-only")
  (:redirect-to-https "redirect-to-https"))

(smithy/sdk/shapes:define-structure vpc-origin common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (arn :target-type string :required
                                      common-lisp:t :member-name "Arn")
                                     (status :target-type string :required
                                      common-lisp:t :member-name "Status")
                                     (created-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedTime")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime")
                                     (vpc-origin-endpoint-config :target-type
                                      vpc-origin-endpoint-config :required
                                      common-lisp:t :member-name
                                      "VpcOriginEndpointConfig"))
                                    (:shape-name "VpcOrigin"))

(smithy/sdk/shapes:define-structure vpc-origin-config common-lisp:nil
                                    ((vpc-origin-id :target-type string
                                      :required common-lisp:t :member-name
                                      "VpcOriginId")
                                     (origin-read-timeout :target-type integer
                                      :member-name "OriginReadTimeout")
                                     (origin-keepalive-timeout :target-type
                                      integer :member-name
                                      "OriginKeepaliveTimeout"))
                                    (:shape-name "VpcOriginConfig"))

(smithy/sdk/shapes:define-structure vpc-origin-endpoint-config common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (arn :target-type string :required
                                      common-lisp:t :member-name "Arn")
                                     (httpport :target-type integer :required
                                      common-lisp:t :member-name "HTTPPort")
                                     (httpsport :target-type integer :required
                                      common-lisp:t :member-name "HTTPSPort")
                                     (origin-protocol-policy :target-type
                                      origin-protocol-policy :required
                                      common-lisp:t :member-name
                                      "OriginProtocolPolicy")
                                     (origin-ssl-protocols :target-type
                                      origin-ssl-protocols :member-name
                                      "OriginSslProtocols"))
                                    (:shape-name "VpcOriginEndpointConfig"))

(smithy/sdk/shapes:define-structure vpc-origin-list common-lisp:nil
                                    ((marker :target-type string :required
                                      common-lisp:t :member-name "Marker")
                                     (next-marker :target-type string
                                      :member-name "NextMarker")
                                     (max-items :target-type integer :required
                                      common-lisp:t :member-name "MaxItems")
                                     (is-truncated :target-type boolean
                                      :required common-lisp:t :member-name
                                      "IsTruncated")
                                     (quantity :target-type integer :required
                                      common-lisp:t :member-name "Quantity")
                                     (items :target-type
                                      vpc-origin-summary-list :member-name
                                      "Items"))
                                    (:shape-name "VpcOriginList"))

(smithy/sdk/shapes:define-structure vpc-origin-summary common-lisp:nil
                                    ((id :target-type string :required
                                      common-lisp:t :member-name "Id")
                                     (name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (status :target-type string :required
                                      common-lisp:t :member-name "Status")
                                     (created-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreatedTime")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime")
                                     (arn :target-type string :required
                                      common-lisp:t :member-name "Arn")
                                     (origin-endpoint-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "OriginEndpointArn"))
                                    (:shape-name "VpcOriginSummary"))

(smithy/sdk/shapes:define-list vpc-origin-summary-list :member
                               (vpc-origin-summary :xml-name
                                "VpcOriginSummary"))

(smithy/sdk/shapes:define-structure web-acl-customization common-lisp:nil
                                    ((action :target-type
                                      customization-action-type :required
                                      common-lisp:t :member-name "Action")
                                     (arn :target-type string :member-name
                                      "Arn"))
                                    (:shape-name "WebAclCustomization"))

(smithy/sdk/shapes:define-type alias-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type distribution-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type float smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type list-conflicting-aliases-max-items-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type sensitive-string-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/operation:define-operation associate-alias :shape-name
                                       "AssociateAlias" :input
                                       associate-alias-request :output
                                       common-lisp:null :errors
                                       (access-denied illegal-update
                                        invalid-argument no-such-distribution
                                        too-many-distribution-cnames)
                                       :method "PUT" :uri
                                       "/2020-05-31/distribution/{TargetDistributionId}/associate-alias"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-distribution-tenant-web-acl
                                       :shape-name
                                       "AssociateDistributionTenantWebACL"
                                       :input
                                       associate-distribution-tenant-web-aclrequest
                                       :output
                                       associate-distribution-tenant-web-aclresult
                                       :errors
                                       (access-denied entity-not-found
                                        invalid-argument
                                        invalid-if-match-version
                                        precondition-failed)
                                       :method "PUT" :uri
                                       "/2020-05-31/distribution-tenant/{Id}/associate-web-acl"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-distribution-web-acl
                                       :shape-name
                                       "AssociateDistributionWebACL" :input
                                       associate-distribution-web-aclrequest
                                       :output
                                       associate-distribution-web-aclresult
                                       :errors
                                       (access-denied entity-not-found
                                        invalid-argument
                                        invalid-if-match-version
                                        precondition-failed)
                                       :method "PUT" :uri
                                       "/2020-05-31/distribution/{Id}/associate-web-acl"
                                       :code 200)

(smithy/sdk/operation:define-operation copy-distribution :shape-name
                                       "CopyDistribution" :input
                                       copy-distribution-request :output
                                       copy-distribution-result :errors
                                       (access-denied cnamealready-exists
                                        distribution-already-exists
                                        illegal-field-level-encryption-config-association-with-cache-behavior
                                        inconsistent-quantities
                                        invalid-argument
                                        invalid-default-root-object
                                        invalid-error-code
                                        invalid-forward-cookies
                                        invalid-function-association
                                        invalid-geo-restriction-parameter
                                        invalid-headers-for-s3origin
                                        invalid-if-match-version
                                        invalid-lambda-function-association
                                        invalid-location-code
                                        invalid-minimum-protocol-version
                                        invalid-origin
                                        invalid-origin-access-control
                                        invalid-origin-access-identity
                                        invalid-origin-keepalive-timeout
                                        invalid-origin-read-timeout
                                        invalid-protocol-settings
                                        invalid-query-string-parameters
                                        invalid-relative-path
                                        invalid-required-protocol
                                        invalid-response-code invalid-ttlorder
                                        invalid-viewer-certificate
                                        invalid-web-aclid missing-body
                                        no-such-cache-policy
                                        no-such-distribution
                                        no-such-field-level-encryption-config
                                        no-such-origin
                                        no-such-origin-request-policy
                                        no-such-realtime-log-config
                                        no-such-response-headers-policy
                                        precondition-failed
                                        realtime-log-config-owner-mismatch
                                        too-many-cache-behaviors
                                        too-many-certificates
                                        too-many-cookie-names-in-white-list
                                        too-many-distribution-cnames
                                        too-many-distributions
                                        too-many-distributions-associated-to-cache-policy
                                        too-many-distributions-associated-to-field-level-encryption-config
                                        too-many-distributions-associated-to-key-group
                                        too-many-distributions-associated-to-origin-access-control
                                        too-many-distributions-associated-to-origin-request-policy
                                        too-many-distributions-associated-to-response-headers-policy
                                        too-many-distributions-with-function-associations
                                        too-many-distributions-with-lambda-associations
                                        too-many-distributions-with-single-function-arn
                                        too-many-function-associations
                                        too-many-headers-in-forwarded-values
                                        too-many-key-groups-associated-to-distribution
                                        too-many-lambda-function-associations
                                        too-many-origin-custom-headers
                                        too-many-origin-groups-per-distribution
                                        too-many-origins
                                        too-many-query-string-parameters
                                        too-many-trusted-signers
                                        trusted-key-group-does-not-exist
                                        trusted-signer-does-not-exist)
                                       :method "POST" :uri
                                       "/2020-05-31/distribution/{PrimaryDistributionId}/copy"
                                       :code 201)

(smithy/sdk/operation:define-operation create-anycast-ip-list :shape-name
                                       "CreateAnycastIpList" :input
                                       create-anycast-ip-list-request :output
                                       create-anycast-ip-list-result :errors
                                       (access-denied entity-already-exists
                                        entity-limit-exceeded invalid-argument
                                        invalid-tagging unsupported-operation)
                                       :method "POST" :uri
                                       "/2020-05-31/anycast-ip-list" :code 202)

(smithy/sdk/operation:define-operation create-cache-policy :shape-name
                                       "CreateCachePolicy" :input
                                       create-cache-policy-request :output
                                       create-cache-policy-result :errors
                                       (access-denied
                                        cache-policy-already-exists
                                        inconsistent-quantities
                                        invalid-argument
                                        too-many-cache-policies
                                        too-many-cookies-in-cache-policy
                                        too-many-headers-in-cache-policy
                                        too-many-query-strings-in-cache-policy)
                                       :method "POST" :uri
                                       "/2020-05-31/cache-policy" :code 201)

(smithy/sdk/operation:define-operation
 create-cloud-front-origin-access-identity :shape-name
 "CreateCloudFrontOriginAccessIdentity" :input
 create-cloud-front-origin-access-identity-request :output
 create-cloud-front-origin-access-identity-result :errors
 (cloud-front-origin-access-identity-already-exists inconsistent-quantities
  invalid-argument missing-body too-many-cloud-front-origin-access-identities)
 :method "POST" :uri "/2020-05-31/origin-access-identity/cloudfront" :code 201)

(smithy/sdk/operation:define-operation create-connection-group :shape-name
                                       "CreateConnectionGroup" :input
                                       create-connection-group-request :output
                                       create-connection-group-result :errors
                                       (access-denied entity-already-exists
                                        entity-limit-exceeded entity-not-found
                                        invalid-argument invalid-tagging)
                                       :method "POST" :uri
                                       "/2020-05-31/connection-group" :code 201)

(smithy/sdk/operation:define-operation create-continuous-deployment-policy
                                       :shape-name
                                       "CreateContinuousDeploymentPolicy"
                                       :input
                                       create-continuous-deployment-policy-request
                                       :output
                                       create-continuous-deployment-policy-result
                                       :errors
                                       (access-denied
                                        continuous-deployment-policy-already-exists
                                        inconsistent-quantities
                                        invalid-argument
                                        staging-distribution-in-use
                                        too-many-continuous-deployment-policies)
                                       :method "POST" :uri
                                       "/2020-05-31/continuous-deployment-policy"
                                       :code 201)

(smithy/sdk/operation:define-operation create-distribution :shape-name
                                       "CreateDistribution" :input
                                       create-distribution-request :output
                                       create-distribution-result :errors
                                       (access-denied cnamealready-exists
                                        continuous-deployment-policy-in-use
                                        distribution-already-exists
                                        entity-limit-exceeded entity-not-found
                                        illegal-field-level-encryption-config-association-with-cache-behavior
                                        illegal-origin-access-configuration
                                        inconsistent-quantities
                                        invalid-argument
                                        invalid-default-root-object
                                        invalid-domain-name-for-origin-access-control
                                        invalid-error-code
                                        invalid-forward-cookies
                                        invalid-function-association
                                        invalid-geo-restriction-parameter
                                        invalid-headers-for-s3origin
                                        invalid-lambda-function-association
                                        invalid-location-code
                                        invalid-minimum-protocol-version
                                        invalid-origin
                                        invalid-origin-access-control
                                        invalid-origin-access-identity
                                        invalid-origin-keepalive-timeout
                                        invalid-origin-read-timeout
                                        invalid-protocol-settings
                                        invalid-query-string-parameters
                                        invalid-relative-path
                                        invalid-required-protocol
                                        invalid-response-code invalid-ttlorder
                                        invalid-viewer-certificate
                                        invalid-web-aclid missing-body
                                        no-such-cache-policy
                                        no-such-continuous-deployment-policy
                                        no-such-field-level-encryption-config
                                        no-such-origin
                                        no-such-origin-request-policy
                                        no-such-realtime-log-config
                                        no-such-response-headers-policy
                                        realtime-log-config-owner-mismatch
                                        too-many-cache-behaviors
                                        too-many-certificates
                                        too-many-cookie-names-in-white-list
                                        too-many-distribution-cnames
                                        too-many-distributions
                                        too-many-distributions-associated-to-cache-policy
                                        too-many-distributions-associated-to-field-level-encryption-config
                                        too-many-distributions-associated-to-key-group
                                        too-many-distributions-associated-to-origin-access-control
                                        too-many-distributions-associated-to-origin-request-policy
                                        too-many-distributions-associated-to-response-headers-policy
                                        too-many-distributions-with-function-associations
                                        too-many-distributions-with-lambda-associations
                                        too-many-distributions-with-single-function-arn
                                        too-many-function-associations
                                        too-many-headers-in-forwarded-values
                                        too-many-key-groups-associated-to-distribution
                                        too-many-lambda-function-associations
                                        too-many-origin-custom-headers
                                        too-many-origin-groups-per-distribution
                                        too-many-origins
                                        too-many-query-string-parameters
                                        too-many-trusted-signers
                                        trusted-key-group-does-not-exist
                                        trusted-signer-does-not-exist)
                                       :method "POST" :uri
                                       "/2020-05-31/distribution" :code 201)

(smithy/sdk/operation:define-operation create-distribution-tenant :shape-name
                                       "CreateDistributionTenant" :input
                                       create-distribution-tenant-request
                                       :output
                                       create-distribution-tenant-result
                                       :errors
                                       (access-denied cnamealready-exists
                                        entity-already-exists
                                        entity-limit-exceeded entity-not-found
                                        invalid-argument invalid-association
                                        invalid-tagging)
                                       :method "POST" :uri
                                       "/2020-05-31/distribution-tenant" :code
                                       201)

(smithy/sdk/operation:define-operation create-distribution-with-tags
                                       :shape-name "CreateDistributionWithTags"
                                       :input
                                       create-distribution-with-tags-request
                                       :output
                                       create-distribution-with-tags-result
                                       :errors
                                       (access-denied cnamealready-exists
                                        continuous-deployment-policy-in-use
                                        distribution-already-exists
                                        entity-not-found
                                        illegal-field-level-encryption-config-association-with-cache-behavior
                                        illegal-origin-access-configuration
                                        inconsistent-quantities
                                        invalid-argument
                                        invalid-default-root-object
                                        invalid-domain-name-for-origin-access-control
                                        invalid-error-code
                                        invalid-forward-cookies
                                        invalid-function-association
                                        invalid-geo-restriction-parameter
                                        invalid-headers-for-s3origin
                                        invalid-lambda-function-association
                                        invalid-location-code
                                        invalid-minimum-protocol-version
                                        invalid-origin
                                        invalid-origin-access-control
                                        invalid-origin-access-identity
                                        invalid-origin-keepalive-timeout
                                        invalid-origin-read-timeout
                                        invalid-protocol-settings
                                        invalid-query-string-parameters
                                        invalid-relative-path
                                        invalid-required-protocol
                                        invalid-response-code invalid-tagging
                                        invalid-ttlorder
                                        invalid-viewer-certificate
                                        invalid-web-aclid missing-body
                                        no-such-cache-policy
                                        no-such-continuous-deployment-policy
                                        no-such-field-level-encryption-config
                                        no-such-origin
                                        no-such-origin-request-policy
                                        no-such-realtime-log-config
                                        no-such-response-headers-policy
                                        realtime-log-config-owner-mismatch
                                        too-many-cache-behaviors
                                        too-many-certificates
                                        too-many-cookie-names-in-white-list
                                        too-many-distribution-cnames
                                        too-many-distributions
                                        too-many-distributions-associated-to-cache-policy
                                        too-many-distributions-associated-to-field-level-encryption-config
                                        too-many-distributions-associated-to-key-group
                                        too-many-distributions-associated-to-origin-access-control
                                        too-many-distributions-associated-to-origin-request-policy
                                        too-many-distributions-associated-to-response-headers-policy
                                        too-many-distributions-with-function-associations
                                        too-many-distributions-with-lambda-associations
                                        too-many-distributions-with-single-function-arn
                                        too-many-function-associations
                                        too-many-headers-in-forwarded-values
                                        too-many-key-groups-associated-to-distribution
                                        too-many-lambda-function-associations
                                        too-many-origin-custom-headers
                                        too-many-origin-groups-per-distribution
                                        too-many-origins
                                        too-many-query-string-parameters
                                        too-many-trusted-signers
                                        trusted-key-group-does-not-exist
                                        trusted-signer-does-not-exist)
                                       :method "POST" :uri
                                       "/2020-05-31/distribution?WithTags"
                                       :code 201)

(smithy/sdk/operation:define-operation create-field-level-encryption-config
                                       :shape-name
                                       "CreateFieldLevelEncryptionConfig"
                                       :input
                                       create-field-level-encryption-config-request
                                       :output
                                       create-field-level-encryption-config-result
                                       :errors
                                       (field-level-encryption-config-already-exists
                                        inconsistent-quantities
                                        invalid-argument
                                        no-such-field-level-encryption-profile
                                        query-arg-profile-empty
                                        too-many-field-level-encryption-configs
                                        too-many-field-level-encryption-content-type-profiles
                                        too-many-field-level-encryption-query-arg-profiles)
                                       :method "POST" :uri
                                       "/2020-05-31/field-level-encryption"
                                       :code 201)

(smithy/sdk/operation:define-operation create-field-level-encryption-profile
                                       :shape-name
                                       "CreateFieldLevelEncryptionProfile"
                                       :input
                                       create-field-level-encryption-profile-request
                                       :output
                                       create-field-level-encryption-profile-result
                                       :errors
                                       (field-level-encryption-profile-already-exists
                                        field-level-encryption-profile-size-exceeded
                                        inconsistent-quantities
                                        invalid-argument no-such-public-key
                                        too-many-field-level-encryption-encryption-entities
                                        too-many-field-level-encryption-field-patterns
                                        too-many-field-level-encryption-profiles)
                                       :method "POST" :uri
                                       "/2020-05-31/field-level-encryption-profile"
                                       :code 201)

(smithy/sdk/operation:define-operation create-function :shape-name
                                       "CreateFunction" :input
                                       create-function-request :output
                                       create-function-result :errors
                                       (function-already-exists
                                        function-size-limit-exceeded
                                        invalid-argument too-many-functions
                                        unsupported-operation)
                                       :method "POST" :uri
                                       "/2020-05-31/function" :code 201)

(smithy/sdk/operation:define-operation create-invalidation :shape-name
                                       "CreateInvalidation" :input
                                       create-invalidation-request :output
                                       create-invalidation-result :errors
                                       (access-denied batch-too-large
                                        inconsistent-quantities
                                        invalid-argument missing-body
                                        no-such-distribution
                                        too-many-invalidations-in-progress)
                                       :method "POST" :uri
                                       "/2020-05-31/distribution/{DistributionId}/invalidation"
                                       :code 201)

(smithy/sdk/operation:define-operation
 create-invalidation-for-distribution-tenant :shape-name
 "CreateInvalidationForDistributionTenant" :input
 create-invalidation-for-distribution-tenant-request :output
 create-invalidation-for-distribution-tenant-result :errors
 (access-denied batch-too-large entity-not-found inconsistent-quantities
  invalid-argument missing-body too-many-invalidations-in-progress)
 :method "POST" :uri "/2020-05-31/distribution-tenant/{Id}/invalidation" :code
 201)

(smithy/sdk/operation:define-operation create-key-group :shape-name
                                       "CreateKeyGroup" :input
                                       create-key-group-request :output
                                       create-key-group-result :errors
                                       (invalid-argument
                                        key-group-already-exists
                                        too-many-key-groups
                                        too-many-public-keys-in-key-group)
                                       :method "POST" :uri
                                       "/2020-05-31/key-group" :code 201)

(smithy/sdk/operation:define-operation create-key-value-store :shape-name
                                       "CreateKeyValueStore" :input
                                       create-key-value-store-request :output
                                       create-key-value-store-result :errors
                                       (access-denied entity-already-exists
                                        entity-limit-exceeded
                                        entity-size-limit-exceeded
                                        invalid-argument unsupported-operation)
                                       :method "POST" :uri
                                       "/2020-05-31/key-value-store" :code 201)

(smithy/sdk/operation:define-operation create-monitoring-subscription
                                       :shape-name
                                       "CreateMonitoringSubscription" :input
                                       create-monitoring-subscription-request
                                       :output
                                       create-monitoring-subscription-result
                                       :errors
                                       (access-denied
                                        monitoring-subscription-already-exists
                                        no-such-distribution
                                        unsupported-operation)
                                       :method "POST" :uri
                                       "/2020-05-31/distributions/{DistributionId}/monitoring-subscription"
                                       :code 200)

(smithy/sdk/operation:define-operation create-origin-access-control :shape-name
                                       "CreateOriginAccessControl" :input
                                       create-origin-access-control-request
                                       :output
                                       create-origin-access-control-result
                                       :errors
                                       (invalid-argument
                                        origin-access-control-already-exists
                                        too-many-origin-access-controls)
                                       :method "POST" :uri
                                       "/2020-05-31/origin-access-control"
                                       :code 201)

(smithy/sdk/operation:define-operation create-origin-request-policy :shape-name
                                       "CreateOriginRequestPolicy" :input
                                       create-origin-request-policy-request
                                       :output
                                       create-origin-request-policy-result
                                       :errors
                                       (access-denied inconsistent-quantities
                                        invalid-argument
                                        origin-request-policy-already-exists
                                        too-many-cookies-in-origin-request-policy
                                        too-many-headers-in-origin-request-policy
                                        too-many-origin-request-policies
                                        too-many-query-strings-in-origin-request-policy)
                                       :method "POST" :uri
                                       "/2020-05-31/origin-request-policy"
                                       :code 201)

(smithy/sdk/operation:define-operation create-public-key :shape-name
                                       "CreatePublicKey" :input
                                       create-public-key-request :output
                                       create-public-key-result :errors
                                       (invalid-argument
                                        public-key-already-exists
                                        too-many-public-keys)
                                       :method "POST" :uri
                                       "/2020-05-31/public-key" :code 201)

(smithy/sdk/operation:define-operation create-realtime-log-config :shape-name
                                       "CreateRealtimeLogConfig" :input
                                       create-realtime-log-config-request
                                       :output
                                       create-realtime-log-config-result
                                       :errors
                                       (access-denied invalid-argument
                                        realtime-log-config-already-exists
                                        too-many-realtime-log-configs)
                                       :method "POST" :uri
                                       "/2020-05-31/realtime-log-config" :code
                                       201)

(smithy/sdk/operation:define-operation create-response-headers-policy
                                       :shape-name
                                       "CreateResponseHeadersPolicy" :input
                                       create-response-headers-policy-request
                                       :output
                                       create-response-headers-policy-result
                                       :errors
                                       (access-denied inconsistent-quantities
                                        invalid-argument
                                        response-headers-policy-already-exists
                                        too-long-cspin-response-headers-policy
                                        too-many-custom-headers-in-response-headers-policy
                                        too-many-remove-headers-in-response-headers-policy
                                        too-many-response-headers-policies)
                                       :method "POST" :uri
                                       "/2020-05-31/response-headers-policy"
                                       :code 201)

(smithy/sdk/operation:define-operation create-streaming-distribution
                                       :shape-name
                                       "CreateStreamingDistribution" :input
                                       create-streaming-distribution-request
                                       :output
                                       create-streaming-distribution-result
                                       :errors
                                       (access-denied cnamealready-exists
                                        inconsistent-quantities
                                        invalid-argument invalid-origin
                                        invalid-origin-access-control
                                        invalid-origin-access-identity
                                        missing-body
                                        streaming-distribution-already-exists
                                        too-many-streaming-distribution-cnames
                                        too-many-streaming-distributions
                                        too-many-trusted-signers
                                        trusted-signer-does-not-exist)
                                       :method "POST" :uri
                                       "/2020-05-31/streaming-distribution"
                                       :code 201)

(smithy/sdk/operation:define-operation create-streaming-distribution-with-tags
                                       :shape-name
                                       "CreateStreamingDistributionWithTags"
                                       :input
                                       create-streaming-distribution-with-tags-request
                                       :output
                                       create-streaming-distribution-with-tags-result
                                       :errors
                                       (access-denied cnamealready-exists
                                        inconsistent-quantities
                                        invalid-argument invalid-origin
                                        invalid-origin-access-control
                                        invalid-origin-access-identity
                                        invalid-tagging missing-body
                                        streaming-distribution-already-exists
                                        too-many-streaming-distribution-cnames
                                        too-many-streaming-distributions
                                        too-many-trusted-signers
                                        trusted-signer-does-not-exist)
                                       :method "POST" :uri
                                       "/2020-05-31/streaming-distribution?WithTags"
                                       :code 201)

(smithy/sdk/operation:define-operation create-vpc-origin :shape-name
                                       "CreateVpcOrigin" :input
                                       create-vpc-origin-request :output
                                       create-vpc-origin-result :errors
                                       (access-denied entity-already-exists
                                        entity-limit-exceeded
                                        inconsistent-quantities
                                        invalid-argument invalid-tagging
                                        unsupported-operation)
                                       :method "POST" :uri
                                       "/2020-05-31/vpc-origin" :code 202)

(smithy/sdk/operation:define-operation delete-anycast-ip-list :shape-name
                                       "DeleteAnycastIpList" :input
                                       delete-anycast-ip-list-request :output
                                       common-lisp:null :errors
                                       (access-denied
                                        cannot-delete-entity-while-in-use
                                        entity-not-found illegal-delete
                                        invalid-argument
                                        invalid-if-match-version
                                        precondition-failed
                                        unsupported-operation)
                                       :method "DELETE" :uri
                                       "/2020-05-31/anycast-ip-list/{Id}" :code
                                       204)

(smithy/sdk/operation:define-operation delete-cache-policy :shape-name
                                       "DeleteCachePolicy" :input
                                       delete-cache-policy-request :output
                                       common-lisp:null :errors
                                       (access-denied cache-policy-in-use
                                        illegal-delete invalid-if-match-version
                                        no-such-cache-policy
                                        precondition-failed)
                                       :method "DELETE" :uri
                                       "/2020-05-31/cache-policy/{Id}" :code
                                       204)

(smithy/sdk/operation:define-operation
 delete-cloud-front-origin-access-identity :shape-name
 "DeleteCloudFrontOriginAccessIdentity" :input
 delete-cloud-front-origin-access-identity-request :output common-lisp:null
 :errors
 (access-denied cloud-front-origin-access-identity-in-use
  invalid-if-match-version no-such-cloud-front-origin-access-identity
  precondition-failed)
 :method "DELETE" :uri "/2020-05-31/origin-access-identity/cloudfront/{Id}"
 :code 204)

(smithy/sdk/operation:define-operation delete-connection-group :shape-name
                                       "DeleteConnectionGroup" :input
                                       delete-connection-group-request :output
                                       common-lisp:null :errors
                                       (access-denied
                                        cannot-delete-entity-while-in-use
                                        entity-not-found
                                        invalid-if-match-version
                                        precondition-failed
                                        resource-not-disabled)
                                       :method "DELETE" :uri
                                       "/2020-05-31/connection-group/{Id}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-continuous-deployment-policy
                                       :shape-name
                                       "DeleteContinuousDeploymentPolicy"
                                       :input
                                       delete-continuous-deployment-policy-request
                                       :output common-lisp:null :errors
                                       (access-denied
                                        continuous-deployment-policy-in-use
                                        invalid-argument
                                        invalid-if-match-version
                                        no-such-continuous-deployment-policy
                                        precondition-failed)
                                       :method "DELETE" :uri
                                       "/2020-05-31/continuous-deployment-policy/{Id}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-distribution :shape-name
                                       "DeleteDistribution" :input
                                       delete-distribution-request :output
                                       common-lisp:null :errors
                                       (access-denied distribution-not-disabled
                                        invalid-if-match-version
                                        no-such-distribution
                                        precondition-failed resource-in-use)
                                       :method "DELETE" :uri
                                       "/2020-05-31/distribution/{Id}" :code
                                       204)

(smithy/sdk/operation:define-operation delete-distribution-tenant :shape-name
                                       "DeleteDistributionTenant" :input
                                       delete-distribution-tenant-request
                                       :output common-lisp:null :errors
                                       (access-denied entity-not-found
                                        invalid-if-match-version
                                        precondition-failed
                                        resource-not-disabled)
                                       :method "DELETE" :uri
                                       "/2020-05-31/distribution-tenant/{Id}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-field-level-encryption-config
                                       :shape-name
                                       "DeleteFieldLevelEncryptionConfig"
                                       :input
                                       delete-field-level-encryption-config-request
                                       :output common-lisp:null :errors
                                       (access-denied
                                        field-level-encryption-config-in-use
                                        invalid-if-match-version
                                        no-such-field-level-encryption-config
                                        precondition-failed)
                                       :method "DELETE" :uri
                                       "/2020-05-31/field-level-encryption/{Id}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-field-level-encryption-profile
                                       :shape-name
                                       "DeleteFieldLevelEncryptionProfile"
                                       :input
                                       delete-field-level-encryption-profile-request
                                       :output common-lisp:null :errors
                                       (access-denied
                                        field-level-encryption-profile-in-use
                                        invalid-if-match-version
                                        no-such-field-level-encryption-profile
                                        precondition-failed)
                                       :method "DELETE" :uri
                                       "/2020-05-31/field-level-encryption-profile/{Id}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-function :shape-name
                                       "DeleteFunction" :input
                                       delete-function-request :output
                                       common-lisp:null :errors
                                       (function-in-use
                                        invalid-if-match-version
                                        no-such-function-exists
                                        precondition-failed
                                        unsupported-operation)
                                       :method "DELETE" :uri
                                       "/2020-05-31/function/{Name}" :code 204)

(smithy/sdk/operation:define-operation delete-key-group :shape-name
                                       "DeleteKeyGroup" :input
                                       delete-key-group-request :output
                                       common-lisp:null :errors
                                       (invalid-if-match-version
                                        no-such-resource precondition-failed
                                        resource-in-use)
                                       :method "DELETE" :uri
                                       "/2020-05-31/key-group/{Id}" :code 204)

(smithy/sdk/operation:define-operation delete-key-value-store :shape-name
                                       "DeleteKeyValueStore" :input
                                       delete-key-value-store-request :output
                                       common-lisp:null :errors
                                       (access-denied
                                        cannot-delete-entity-while-in-use
                                        entity-not-found
                                        invalid-if-match-version
                                        precondition-failed
                                        unsupported-operation)
                                       :method "DELETE" :uri
                                       "/2020-05-31/key-value-store/{Name}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-monitoring-subscription
                                       :shape-name
                                       "DeleteMonitoringSubscription" :input
                                       delete-monitoring-subscription-request
                                       :output
                                       delete-monitoring-subscription-result
                                       :errors
                                       (access-denied no-such-distribution
                                        no-such-monitoring-subscription
                                        unsupported-operation)
                                       :method "DELETE" :uri
                                       "/2020-05-31/distributions/{DistributionId}/monitoring-subscription"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-origin-access-control :shape-name
                                       "DeleteOriginAccessControl" :input
                                       delete-origin-access-control-request
                                       :output common-lisp:null :errors
                                       (access-denied invalid-if-match-version
                                        no-such-origin-access-control
                                        origin-access-control-in-use
                                        precondition-failed)
                                       :method "DELETE" :uri
                                       "/2020-05-31/origin-access-control/{Id}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-origin-request-policy :shape-name
                                       "DeleteOriginRequestPolicy" :input
                                       delete-origin-request-policy-request
                                       :output common-lisp:null :errors
                                       (access-denied illegal-delete
                                        invalid-if-match-version
                                        no-such-origin-request-policy
                                        origin-request-policy-in-use
                                        precondition-failed)
                                       :method "DELETE" :uri
                                       "/2020-05-31/origin-request-policy/{Id}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-public-key :shape-name
                                       "DeletePublicKey" :input
                                       delete-public-key-request :output
                                       common-lisp:null :errors
                                       (access-denied invalid-if-match-version
                                        no-such-public-key precondition-failed
                                        public-key-in-use)
                                       :method "DELETE" :uri
                                       "/2020-05-31/public-key/{Id}" :code 204)

(smithy/sdk/operation:define-operation delete-realtime-log-config :shape-name
                                       "DeleteRealtimeLogConfig" :input
                                       delete-realtime-log-config-request
                                       :output common-lisp:null :errors
                                       (access-denied invalid-argument
                                        no-such-realtime-log-config
                                        realtime-log-config-in-use)
                                       :method "POST" :uri
                                       "/2020-05-31/delete-realtime-log-config"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-response-headers-policy
                                       :shape-name
                                       "DeleteResponseHeadersPolicy" :input
                                       delete-response-headers-policy-request
                                       :output common-lisp:null :errors
                                       (access-denied illegal-delete
                                        invalid-if-match-version
                                        no-such-response-headers-policy
                                        precondition-failed
                                        response-headers-policy-in-use)
                                       :method "DELETE" :uri
                                       "/2020-05-31/response-headers-policy/{Id}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-streaming-distribution
                                       :shape-name
                                       "DeleteStreamingDistribution" :input
                                       delete-streaming-distribution-request
                                       :output common-lisp:null :errors
                                       (access-denied invalid-if-match-version
                                        no-such-streaming-distribution
                                        precondition-failed
                                        streaming-distribution-not-disabled)
                                       :method "DELETE" :uri
                                       "/2020-05-31/streaming-distribution/{Id}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-vpc-origin :shape-name
                                       "DeleteVpcOrigin" :input
                                       delete-vpc-origin-request :output
                                       delete-vpc-origin-result :errors
                                       (access-denied
                                        cannot-delete-entity-while-in-use
                                        entity-not-found illegal-delete
                                        invalid-argument
                                        invalid-if-match-version
                                        precondition-failed
                                        unsupported-operation)
                                       :method "DELETE" :uri
                                       "/2020-05-31/vpc-origin/{Id}" :code 202)

(smithy/sdk/operation:define-operation describe-function :shape-name
                                       "DescribeFunction" :input
                                       describe-function-request :output
                                       describe-function-result :errors
                                       (no-such-function-exists
                                        unsupported-operation)
                                       :method "GET" :uri
                                       "/2020-05-31/function/{Name}/describe"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-key-value-store :shape-name
                                       "DescribeKeyValueStore" :input
                                       describe-key-value-store-request :output
                                       describe-key-value-store-result :errors
                                       (access-denied entity-not-found
                                        invalid-argument unsupported-operation)
                                       :method "GET" :uri
                                       "/2020-05-31/key-value-store/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-distribution-tenant-web-acl
                                       :shape-name
                                       "DisassociateDistributionTenantWebACL"
                                       :input
                                       disassociate-distribution-tenant-web-aclrequest
                                       :output
                                       disassociate-distribution-tenant-web-aclresult
                                       :errors
                                       (access-denied entity-not-found
                                        invalid-argument
                                        invalid-if-match-version
                                        precondition-failed)
                                       :method "PUT" :uri
                                       "/2020-05-31/distribution-tenant/{Id}/disassociate-web-acl"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-distribution-web-acl
                                       :shape-name
                                       "DisassociateDistributionWebACL" :input
                                       disassociate-distribution-web-aclrequest
                                       :output
                                       disassociate-distribution-web-aclresult
                                       :errors
                                       (access-denied entity-not-found
                                        invalid-argument
                                        invalid-if-match-version
                                        precondition-failed)
                                       :method "PUT" :uri
                                       "/2020-05-31/distribution/{Id}/disassociate-web-acl"
                                       :code 200)

(smithy/sdk/operation:define-operation get-anycast-ip-list :shape-name
                                       "GetAnycastIpList" :input
                                       get-anycast-ip-list-request :output
                                       get-anycast-ip-list-result :errors
                                       (access-denied entity-not-found
                                        invalid-argument unsupported-operation)
                                       :method "GET" :uri
                                       "/2020-05-31/anycast-ip-list/{Id}" :code
                                       200)

(smithy/sdk/operation:define-operation get-cache-policy :shape-name
                                       "GetCachePolicy" :input
                                       get-cache-policy-request :output
                                       get-cache-policy-result :errors
                                       (access-denied no-such-cache-policy)
                                       :method "GET" :uri
                                       "/2020-05-31/cache-policy/{Id}" :code
                                       200)

(smithy/sdk/operation:define-operation get-cache-policy-config :shape-name
                                       "GetCachePolicyConfig" :input
                                       get-cache-policy-config-request :output
                                       get-cache-policy-config-result :errors
                                       (access-denied no-such-cache-policy)
                                       :method "GET" :uri
                                       "/2020-05-31/cache-policy/{Id}/config"
                                       :code 200)

(smithy/sdk/operation:define-operation get-cloud-front-origin-access-identity
                                       :shape-name
                                       "GetCloudFrontOriginAccessIdentity"
                                       :input
                                       get-cloud-front-origin-access-identity-request
                                       :output
                                       get-cloud-front-origin-access-identity-result
                                       :errors
                                       (access-denied
                                        no-such-cloud-front-origin-access-identity)
                                       :method "GET" :uri
                                       "/2020-05-31/origin-access-identity/cloudfront/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-cloud-front-origin-access-identity-config :shape-name
 "GetCloudFrontOriginAccessIdentityConfig" :input
 get-cloud-front-origin-access-identity-config-request :output
 get-cloud-front-origin-access-identity-config-result :errors
 (access-denied no-such-cloud-front-origin-access-identity) :method "GET" :uri
 "/2020-05-31/origin-access-identity/cloudfront/{Id}/config" :code 200)

(smithy/sdk/operation:define-operation get-connection-group :shape-name
                                       "GetConnectionGroup" :input
                                       get-connection-group-request :output
                                       get-connection-group-result :errors
                                       (access-denied entity-not-found) :method
                                       "GET" :uri
                                       "/2020-05-31/connection-group/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-connection-group-by-routing-endpoint
                                       :shape-name
                                       "GetConnectionGroupByRoutingEndpoint"
                                       :input
                                       get-connection-group-by-routing-endpoint-request
                                       :output
                                       get-connection-group-by-routing-endpoint-result
                                       :errors (access-denied entity-not-found)
                                       :method "GET" :uri
                                       "/2020-05-31/connection-group" :code 200)

(smithy/sdk/operation:define-operation get-continuous-deployment-policy
                                       :shape-name
                                       "GetContinuousDeploymentPolicy" :input
                                       get-continuous-deployment-policy-request
                                       :output
                                       get-continuous-deployment-policy-result
                                       :errors
                                       (access-denied
                                        no-such-continuous-deployment-policy)
                                       :method "GET" :uri
                                       "/2020-05-31/continuous-deployment-policy/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-continuous-deployment-policy-config
                                       :shape-name
                                       "GetContinuousDeploymentPolicyConfig"
                                       :input
                                       get-continuous-deployment-policy-config-request
                                       :output
                                       get-continuous-deployment-policy-config-result
                                       :errors
                                       (access-denied
                                        no-such-continuous-deployment-policy)
                                       :method "GET" :uri
                                       "/2020-05-31/continuous-deployment-policy/{Id}/config"
                                       :code 200)

(smithy/sdk/operation:define-operation get-distribution :shape-name
                                       "GetDistribution" :input
                                       get-distribution-request :output
                                       get-distribution-result :errors
                                       (access-denied no-such-distribution)
                                       :method "GET" :uri
                                       "/2020-05-31/distribution/{Id}" :code
                                       200)

(smithy/sdk/operation:define-operation get-distribution-config :shape-name
                                       "GetDistributionConfig" :input
                                       get-distribution-config-request :output
                                       get-distribution-config-result :errors
                                       (access-denied no-such-distribution)
                                       :method "GET" :uri
                                       "/2020-05-31/distribution/{Id}/config"
                                       :code 200)

(smithy/sdk/operation:define-operation get-distribution-tenant :shape-name
                                       "GetDistributionTenant" :input
                                       get-distribution-tenant-request :output
                                       get-distribution-tenant-result :errors
                                       (access-denied entity-not-found) :method
                                       "GET" :uri
                                       "/2020-05-31/distribution-tenant/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-distribution-tenant-by-domain
                                       :shape-name
                                       "GetDistributionTenantByDomain" :input
                                       get-distribution-tenant-by-domain-request
                                       :output
                                       get-distribution-tenant-by-domain-result
                                       :errors (access-denied entity-not-found)
                                       :method "GET" :uri
                                       "/2020-05-31/distribution-tenant" :code
                                       200)

(smithy/sdk/operation:define-operation get-field-level-encryption :shape-name
                                       "GetFieldLevelEncryption" :input
                                       get-field-level-encryption-request
                                       :output
                                       get-field-level-encryption-result
                                       :errors
                                       (access-denied
                                        no-such-field-level-encryption-config)
                                       :method "GET" :uri
                                       "/2020-05-31/field-level-encryption/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-field-level-encryption-config
                                       :shape-name
                                       "GetFieldLevelEncryptionConfig" :input
                                       get-field-level-encryption-config-request
                                       :output
                                       get-field-level-encryption-config-result
                                       :errors
                                       (access-denied
                                        no-such-field-level-encryption-config)
                                       :method "GET" :uri
                                       "/2020-05-31/field-level-encryption/{Id}/config"
                                       :code 200)

(smithy/sdk/operation:define-operation get-field-level-encryption-profile
                                       :shape-name
                                       "GetFieldLevelEncryptionProfile" :input
                                       get-field-level-encryption-profile-request
                                       :output
                                       get-field-level-encryption-profile-result
                                       :errors
                                       (access-denied
                                        no-such-field-level-encryption-profile)
                                       :method "GET" :uri
                                       "/2020-05-31/field-level-encryption-profile/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-field-level-encryption-profile-config :shape-name
 "GetFieldLevelEncryptionProfileConfig" :input
 get-field-level-encryption-profile-config-request :output
 get-field-level-encryption-profile-config-result :errors
 (access-denied no-such-field-level-encryption-profile) :method "GET" :uri
 "/2020-05-31/field-level-encryption-profile/{Id}/config" :code 200)

(smithy/sdk/operation:define-operation get-function :shape-name "GetFunction"
                                       :input get-function-request :output
                                       get-function-result :errors
                                       (no-such-function-exists
                                        unsupported-operation)
                                       :method "GET" :uri
                                       "/2020-05-31/function/{Name}" :code 200)

(smithy/sdk/operation:define-operation get-invalidation :shape-name
                                       "GetInvalidation" :input
                                       get-invalidation-request :output
                                       get-invalidation-result :errors
                                       (access-denied no-such-distribution
                                        no-such-invalidation)
                                       :method "GET" :uri
                                       "/2020-05-31/distribution/{DistributionId}/invalidation/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-invalidation-for-distribution-tenant
                                       :shape-name
                                       "GetInvalidationForDistributionTenant"
                                       :input
                                       get-invalidation-for-distribution-tenant-request
                                       :output
                                       get-invalidation-for-distribution-tenant-result
                                       :errors
                                       (access-denied entity-not-found
                                        no-such-invalidation)
                                       :method "GET" :uri
                                       "/2020-05-31/distribution-tenant/{DistributionTenantId}/invalidation/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-key-group :shape-name "GetKeyGroup"
                                       :input get-key-group-request :output
                                       get-key-group-result :errors
                                       (no-such-resource) :method "GET" :uri
                                       "/2020-05-31/key-group/{Id}" :code 200)

(smithy/sdk/operation:define-operation get-key-group-config :shape-name
                                       "GetKeyGroupConfig" :input
                                       get-key-group-config-request :output
                                       get-key-group-config-result :errors
                                       (no-such-resource) :method "GET" :uri
                                       "/2020-05-31/key-group/{Id}/config"
                                       :code 200)

(smithy/sdk/operation:define-operation get-managed-certificate-details
                                       :shape-name
                                       "GetManagedCertificateDetails" :input
                                       get-managed-certificate-details-request
                                       :output
                                       get-managed-certificate-details-result
                                       :errors (access-denied entity-not-found)
                                       :method "GET" :uri
                                       "/2020-05-31/managed-certificate/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-monitoring-subscription :shape-name
                                       "GetMonitoringSubscription" :input
                                       get-monitoring-subscription-request
                                       :output
                                       get-monitoring-subscription-result
                                       :errors
                                       (access-denied no-such-distribution
                                        no-such-monitoring-subscription
                                        unsupported-operation)
                                       :method "GET" :uri
                                       "/2020-05-31/distributions/{DistributionId}/monitoring-subscription"
                                       :code 200)

(smithy/sdk/operation:define-operation get-origin-access-control :shape-name
                                       "GetOriginAccessControl" :input
                                       get-origin-access-control-request
                                       :output get-origin-access-control-result
                                       :errors
                                       (access-denied
                                        no-such-origin-access-control)
                                       :method "GET" :uri
                                       "/2020-05-31/origin-access-control/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-origin-access-control-config
                                       :shape-name
                                       "GetOriginAccessControlConfig" :input
                                       get-origin-access-control-config-request
                                       :output
                                       get-origin-access-control-config-result
                                       :errors
                                       (access-denied
                                        no-such-origin-access-control)
                                       :method "GET" :uri
                                       "/2020-05-31/origin-access-control/{Id}/config"
                                       :code 200)

(smithy/sdk/operation:define-operation get-origin-request-policy :shape-name
                                       "GetOriginRequestPolicy" :input
                                       get-origin-request-policy-request
                                       :output get-origin-request-policy-result
                                       :errors
                                       (access-denied
                                        no-such-origin-request-policy)
                                       :method "GET" :uri
                                       "/2020-05-31/origin-request-policy/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-origin-request-policy-config
                                       :shape-name
                                       "GetOriginRequestPolicyConfig" :input
                                       get-origin-request-policy-config-request
                                       :output
                                       get-origin-request-policy-config-result
                                       :errors
                                       (access-denied
                                        no-such-origin-request-policy)
                                       :method "GET" :uri
                                       "/2020-05-31/origin-request-policy/{Id}/config"
                                       :code 200)

(smithy/sdk/operation:define-operation get-public-key :shape-name
                                       "GetPublicKey" :input
                                       get-public-key-request :output
                                       get-public-key-result :errors
                                       (access-denied no-such-public-key)
                                       :method "GET" :uri
                                       "/2020-05-31/public-key/{Id}" :code 200)

(smithy/sdk/operation:define-operation get-public-key-config :shape-name
                                       "GetPublicKeyConfig" :input
                                       get-public-key-config-request :output
                                       get-public-key-config-result :errors
                                       (access-denied no-such-public-key)
                                       :method "GET" :uri
                                       "/2020-05-31/public-key/{Id}/config"
                                       :code 200)

(smithy/sdk/operation:define-operation get-realtime-log-config :shape-name
                                       "GetRealtimeLogConfig" :input
                                       get-realtime-log-config-request :output
                                       get-realtime-log-config-result :errors
                                       (access-denied invalid-argument
                                        no-such-realtime-log-config)
                                       :method "POST" :uri
                                       "/2020-05-31/get-realtime-log-config"
                                       :code 200)

(smithy/sdk/operation:define-operation get-response-headers-policy :shape-name
                                       "GetResponseHeadersPolicy" :input
                                       get-response-headers-policy-request
                                       :output
                                       get-response-headers-policy-result
                                       :errors
                                       (access-denied
                                        no-such-response-headers-policy)
                                       :method "GET" :uri
                                       "/2020-05-31/response-headers-policy/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-response-headers-policy-config
                                       :shape-name
                                       "GetResponseHeadersPolicyConfig" :input
                                       get-response-headers-policy-config-request
                                       :output
                                       get-response-headers-policy-config-result
                                       :errors
                                       (access-denied
                                        no-such-response-headers-policy)
                                       :method "GET" :uri
                                       "/2020-05-31/response-headers-policy/{Id}/config"
                                       :code 200)

(smithy/sdk/operation:define-operation get-streaming-distribution :shape-name
                                       "GetStreamingDistribution" :input
                                       get-streaming-distribution-request
                                       :output
                                       get-streaming-distribution-result
                                       :errors
                                       (access-denied
                                        no-such-streaming-distribution)
                                       :method "GET" :uri
                                       "/2020-05-31/streaming-distribution/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-streaming-distribution-config
                                       :shape-name
                                       "GetStreamingDistributionConfig" :input
                                       get-streaming-distribution-config-request
                                       :output
                                       get-streaming-distribution-config-result
                                       :errors
                                       (access-denied
                                        no-such-streaming-distribution)
                                       :method "GET" :uri
                                       "/2020-05-31/streaming-distribution/{Id}/config"
                                       :code 200)

(smithy/sdk/operation:define-operation get-vpc-origin :shape-name
                                       "GetVpcOrigin" :input
                                       get-vpc-origin-request :output
                                       get-vpc-origin-result :errors
                                       (access-denied entity-not-found
                                        invalid-argument unsupported-operation)
                                       :method "GET" :uri
                                       "/2020-05-31/vpc-origin/{Id}" :code 200)

(smithy/sdk/operation:define-operation list-anycast-ip-lists :shape-name
                                       "ListAnycastIpLists" :input
                                       list-anycast-ip-lists-request :output
                                       list-anycast-ip-lists-result :errors
                                       (access-denied entity-not-found
                                        invalid-argument unsupported-operation)
                                       :method "GET" :uri
                                       "/2020-05-31/anycast-ip-list" :code 200)

(smithy/sdk/operation:define-operation list-cache-policies :shape-name
                                       "ListCachePolicies" :input
                                       list-cache-policies-request :output
                                       list-cache-policies-result :errors
                                       (access-denied invalid-argument
                                        no-such-cache-policy)
                                       :method "GET" :uri
                                       "/2020-05-31/cache-policy" :code 200)

(smithy/sdk/operation:define-operation
 list-cloud-front-origin-access-identities :shape-name
 "ListCloudFrontOriginAccessIdentities" :input
 list-cloud-front-origin-access-identities-request :output
 list-cloud-front-origin-access-identities-result :errors (invalid-argument)
 :method "GET" :uri "/2020-05-31/origin-access-identity/cloudfront" :code 200)

(smithy/sdk/operation:define-operation list-conflicting-aliases :shape-name
                                       "ListConflictingAliases" :input
                                       list-conflicting-aliases-request :output
                                       list-conflicting-aliases-result :errors
                                       (invalid-argument no-such-distribution)
                                       :method "GET" :uri
                                       "/2020-05-31/conflicting-alias" :code
                                       200)

(smithy/sdk/operation:define-operation list-connection-groups :shape-name
                                       "ListConnectionGroups" :input
                                       list-connection-groups-request :output
                                       list-connection-groups-result :errors
                                       (access-denied entity-not-found
                                        invalid-argument)
                                       :method "POST" :uri
                                       "/2020-05-31/connection-groups" :code
                                       200)

(smithy/sdk/operation:define-operation list-continuous-deployment-policies
                                       :shape-name
                                       "ListContinuousDeploymentPolicies"
                                       :input
                                       list-continuous-deployment-policies-request
                                       :output
                                       list-continuous-deployment-policies-result
                                       :errors
                                       (access-denied invalid-argument
                                        no-such-continuous-deployment-policy)
                                       :method "GET" :uri
                                       "/2020-05-31/continuous-deployment-policy"
                                       :code 200)

(smithy/sdk/operation:define-operation list-distribution-tenants :shape-name
                                       "ListDistributionTenants" :input
                                       list-distribution-tenants-request
                                       :output list-distribution-tenants-result
                                       :errors
                                       (access-denied entity-not-found
                                        invalid-argument)
                                       :method "POST" :uri
                                       "/2020-05-31/distribution-tenants" :code
                                       200)

(smithy/sdk/operation:define-operation
 list-distribution-tenants-by-customization :shape-name
 "ListDistributionTenantsByCustomization" :input
 list-distribution-tenants-by-customization-request :output
 list-distribution-tenants-by-customization-result :errors
 (access-denied entity-not-found invalid-argument) :method "POST" :uri
 "/2020-05-31/distribution-tenants-by-customization" :code 200)

(smithy/sdk/operation:define-operation list-distributions :shape-name
                                       "ListDistributions" :input
                                       list-distributions-request :output
                                       list-distributions-result :errors
                                       (invalid-argument) :method "GET" :uri
                                       "/2020-05-31/distribution" :code 200)

(smithy/sdk/operation:define-operation list-distributions-by-anycast-ip-list-id
                                       :shape-name
                                       "ListDistributionsByAnycastIpListId"
                                       :input
                                       list-distributions-by-anycast-ip-list-id-request
                                       :output
                                       list-distributions-by-anycast-ip-list-id-result
                                       :errors
                                       (access-denied entity-not-found
                                        invalid-argument unsupported-operation)
                                       :method "GET" :uri
                                       "/2020-05-31/distributionsByAnycastIpListId/{AnycastIpListId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-distributions-by-cache-policy-id
                                       :shape-name
                                       "ListDistributionsByCachePolicyId"
                                       :input
                                       list-distributions-by-cache-policy-id-request
                                       :output
                                       list-distributions-by-cache-policy-id-result
                                       :errors
                                       (access-denied invalid-argument
                                        no-such-cache-policy)
                                       :method "GET" :uri
                                       "/2020-05-31/distributionsByCachePolicyId/{CachePolicyId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-distributions-by-connection-mode
                                       :shape-name
                                       "ListDistributionsByConnectionMode"
                                       :input
                                       list-distributions-by-connection-mode-request
                                       :output
                                       list-distributions-by-connection-mode-result
                                       :errors (access-denied invalid-argument)
                                       :method "GET" :uri
                                       "/2020-05-31/distributionsByConnectionMode/{ConnectionMode}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-distributions-by-key-group
                                       :shape-name
                                       "ListDistributionsByKeyGroup" :input
                                       list-distributions-by-key-group-request
                                       :output
                                       list-distributions-by-key-group-result
                                       :errors
                                       (invalid-argument no-such-resource)
                                       :method "GET" :uri
                                       "/2020-05-31/distributionsByKeyGroupId/{KeyGroupId}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 list-distributions-by-origin-request-policy-id :shape-name
 "ListDistributionsByOriginRequestPolicyId" :input
 list-distributions-by-origin-request-policy-id-request :output
 list-distributions-by-origin-request-policy-id-result :errors
 (access-denied invalid-argument no-such-origin-request-policy) :method "GET"
 :uri
 "/2020-05-31/distributionsByOriginRequestPolicyId/{OriginRequestPolicyId}"
 :code 200)

(smithy/sdk/operation:define-operation
 list-distributions-by-realtime-log-config :shape-name
 "ListDistributionsByRealtimeLogConfig" :input
 list-distributions-by-realtime-log-config-request :output
 list-distributions-by-realtime-log-config-result :errors (invalid-argument)
 :method "POST" :uri "/2020-05-31/distributionsByRealtimeLogConfig" :code 200)

(smithy/sdk/operation:define-operation
 list-distributions-by-response-headers-policy-id :shape-name
 "ListDistributionsByResponseHeadersPolicyId" :input
 list-distributions-by-response-headers-policy-id-request :output
 list-distributions-by-response-headers-policy-id-result :errors
 (access-denied invalid-argument no-such-response-headers-policy) :method "GET"
 :uri
 "/2020-05-31/distributionsByResponseHeadersPolicyId/{ResponseHeadersPolicyId}"
 :code 200)

(smithy/sdk/operation:define-operation list-distributions-by-vpc-origin-id
                                       :shape-name
                                       "ListDistributionsByVpcOriginId" :input
                                       list-distributions-by-vpc-origin-id-request
                                       :output
                                       list-distributions-by-vpc-origin-id-result
                                       :errors
                                       (access-denied entity-not-found
                                        invalid-argument unsupported-operation)
                                       :method "GET" :uri
                                       "/2020-05-31/distributionsByVpcOriginId/{VpcOriginId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-distributions-by-web-aclid
                                       :shape-name
                                       "ListDistributionsByWebACLId" :input
                                       list-distributions-by-web-aclid-request
                                       :output
                                       list-distributions-by-web-aclid-result
                                       :errors
                                       (invalid-argument invalid-web-aclid)
                                       :method "GET" :uri
                                       "/2020-05-31/distributionsByWebACLId/{WebACLId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-domain-conflicts :shape-name
                                       "ListDomainConflicts" :input
                                       list-domain-conflicts-request :output
                                       list-domain-conflicts-result :errors
                                       (access-denied entity-not-found
                                        invalid-argument)
                                       :method "POST" :uri
                                       "/2020-05-31/domain-conflicts" :code 200)

(smithy/sdk/operation:define-operation list-field-level-encryption-configs
                                       :shape-name
                                       "ListFieldLevelEncryptionConfigs" :input
                                       list-field-level-encryption-configs-request
                                       :output
                                       list-field-level-encryption-configs-result
                                       :errors (invalid-argument) :method "GET"
                                       :uri
                                       "/2020-05-31/field-level-encryption"
                                       :code 200)

(smithy/sdk/operation:define-operation list-field-level-encryption-profiles
                                       :shape-name
                                       "ListFieldLevelEncryptionProfiles"
                                       :input
                                       list-field-level-encryption-profiles-request
                                       :output
                                       list-field-level-encryption-profiles-result
                                       :errors (invalid-argument) :method "GET"
                                       :uri
                                       "/2020-05-31/field-level-encryption-profile"
                                       :code 200)

(smithy/sdk/operation:define-operation list-functions :shape-name
                                       "ListFunctions" :input
                                       list-functions-request :output
                                       list-functions-result :errors
                                       (invalid-argument unsupported-operation)
                                       :method "GET" :uri
                                       "/2020-05-31/function" :code 200)

(smithy/sdk/operation:define-operation list-invalidations :shape-name
                                       "ListInvalidations" :input
                                       list-invalidations-request :output
                                       list-invalidations-result :errors
                                       (access-denied invalid-argument
                                        no-such-distribution)
                                       :method "GET" :uri
                                       "/2020-05-31/distribution/{DistributionId}/invalidation"
                                       :code 200)

(smithy/sdk/operation:define-operation
 list-invalidations-for-distribution-tenant :shape-name
 "ListInvalidationsForDistributionTenant" :input
 list-invalidations-for-distribution-tenant-request :output
 list-invalidations-for-distribution-tenant-result :errors
 (access-denied entity-not-found invalid-argument) :method "GET" :uri
 "/2020-05-31/distribution-tenant/{Id}/invalidation" :code 200)

(smithy/sdk/operation:define-operation list-key-groups :shape-name
                                       "ListKeyGroups" :input
                                       list-key-groups-request :output
                                       list-key-groups-result :errors
                                       (invalid-argument) :method "GET" :uri
                                       "/2020-05-31/key-group" :code 200)

(smithy/sdk/operation:define-operation list-key-value-stores :shape-name
                                       "ListKeyValueStores" :input
                                       list-key-value-stores-request :output
                                       list-key-value-stores-result :errors
                                       (access-denied invalid-argument
                                        unsupported-operation)
                                       :method "GET" :uri
                                       "/2020-05-31/key-value-store" :code 200)

(smithy/sdk/operation:define-operation list-origin-access-controls :shape-name
                                       "ListOriginAccessControls" :input
                                       list-origin-access-controls-request
                                       :output
                                       list-origin-access-controls-result
                                       :errors (invalid-argument) :method "GET"
                                       :uri "/2020-05-31/origin-access-control"
                                       :code 200)

(smithy/sdk/operation:define-operation list-origin-request-policies :shape-name
                                       "ListOriginRequestPolicies" :input
                                       list-origin-request-policies-request
                                       :output
                                       list-origin-request-policies-result
                                       :errors
                                       (access-denied invalid-argument
                                        no-such-origin-request-policy)
                                       :method "GET" :uri
                                       "/2020-05-31/origin-request-policy"
                                       :code 200)

(smithy/sdk/operation:define-operation list-public-keys :shape-name
                                       "ListPublicKeys" :input
                                       list-public-keys-request :output
                                       list-public-keys-result :errors
                                       (invalid-argument) :method "GET" :uri
                                       "/2020-05-31/public-key" :code 200)

(smithy/sdk/operation:define-operation list-realtime-log-configs :shape-name
                                       "ListRealtimeLogConfigs" :input
                                       list-realtime-log-configs-request
                                       :output list-realtime-log-configs-result
                                       :errors
                                       (access-denied invalid-argument
                                        no-such-realtime-log-config)
                                       :method "GET" :uri
                                       "/2020-05-31/realtime-log-config" :code
                                       200)

(smithy/sdk/operation:define-operation list-response-headers-policies
                                       :shape-name
                                       "ListResponseHeadersPolicies" :input
                                       list-response-headers-policies-request
                                       :output
                                       list-response-headers-policies-result
                                       :errors
                                       (access-denied invalid-argument
                                        no-such-response-headers-policy)
                                       :method "GET" :uri
                                       "/2020-05-31/response-headers-policy"
                                       :code 200)

(smithy/sdk/operation:define-operation list-streaming-distributions :shape-name
                                       "ListStreamingDistributions" :input
                                       list-streaming-distributions-request
                                       :output
                                       list-streaming-distributions-result
                                       :errors (invalid-argument) :method "GET"
                                       :uri
                                       "/2020-05-31/streaming-distribution"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-result :errors
                                       (access-denied invalid-argument
                                        invalid-tagging no-such-resource)
                                       :method "GET" :uri "/2020-05-31/tagging"
                                       :code 200)

(smithy/sdk/operation:define-operation list-vpc-origins :shape-name
                                       "ListVpcOrigins" :input
                                       list-vpc-origins-request :output
                                       list-vpc-origins-result :errors
                                       (access-denied entity-not-found
                                        invalid-argument unsupported-operation)
                                       :method "GET" :uri
                                       "/2020-05-31/vpc-origin" :code 200)

(smithy/sdk/operation:define-operation publish-function :shape-name
                                       "PublishFunction" :input
                                       publish-function-request :output
                                       publish-function-result :errors
                                       (invalid-argument
                                        invalid-if-match-version
                                        no-such-function-exists
                                        precondition-failed
                                        unsupported-operation)
                                       :method "POST" :uri
                                       "/2020-05-31/function/{Name}/publish"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (access-denied invalid-argument
                                        invalid-tagging no-such-resource)
                                       :method "POST" :uri
                                       "/2020-05-31/tagging?Operation=Tag"
                                       :code 204)

(smithy/sdk/operation:define-operation test-function :shape-name "TestFunction"
                                       :input test-function-request :output
                                       test-function-result :errors
                                       (invalid-argument
                                        invalid-if-match-version
                                        no-such-function-exists
                                        test-function-failed
                                        unsupported-operation)
                                       :method "POST" :uri
                                       "/2020-05-31/function/{Name}/test" :code
                                       200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (access-denied invalid-argument
                                        invalid-tagging no-such-resource)
                                       :method "POST" :uri
                                       "/2020-05-31/tagging?Operation=Untag"
                                       :code 204)

(smithy/sdk/operation:define-operation update-cache-policy :shape-name
                                       "UpdateCachePolicy" :input
                                       update-cache-policy-request :output
                                       update-cache-policy-result :errors
                                       (access-denied
                                        cache-policy-already-exists
                                        illegal-update inconsistent-quantities
                                        invalid-argument
                                        invalid-if-match-version
                                        no-such-cache-policy
                                        precondition-failed
                                        too-many-cookies-in-cache-policy
                                        too-many-headers-in-cache-policy
                                        too-many-query-strings-in-cache-policy)
                                       :method "PUT" :uri
                                       "/2020-05-31/cache-policy/{Id}" :code
                                       200)

(smithy/sdk/operation:define-operation
 update-cloud-front-origin-access-identity :shape-name
 "UpdateCloudFrontOriginAccessIdentity" :input
 update-cloud-front-origin-access-identity-request :output
 update-cloud-front-origin-access-identity-result :errors
 (access-denied illegal-update inconsistent-quantities invalid-argument
  invalid-if-match-version missing-body
  no-such-cloud-front-origin-access-identity precondition-failed)
 :method "PUT" :uri "/2020-05-31/origin-access-identity/cloudfront/{Id}/config"
 :code 200)

(smithy/sdk/operation:define-operation update-connection-group :shape-name
                                       "UpdateConnectionGroup" :input
                                       update-connection-group-request :output
                                       update-connection-group-result :errors
                                       (access-denied entity-already-exists
                                        entity-limit-exceeded entity-not-found
                                        invalid-argument
                                        invalid-if-match-version
                                        precondition-failed resource-in-use)
                                       :method "PUT" :uri
                                       "/2020-05-31/connection-group/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-continuous-deployment-policy
                                       :shape-name
                                       "UpdateContinuousDeploymentPolicy"
                                       :input
                                       update-continuous-deployment-policy-request
                                       :output
                                       update-continuous-deployment-policy-result
                                       :errors
                                       (access-denied inconsistent-quantities
                                        invalid-argument
                                        invalid-if-match-version
                                        no-such-continuous-deployment-policy
                                        precondition-failed
                                        staging-distribution-in-use)
                                       :method "PUT" :uri
                                       "/2020-05-31/continuous-deployment-policy/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-distribution :shape-name
                                       "UpdateDistribution" :input
                                       update-distribution-request :output
                                       update-distribution-result :errors
                                       (access-denied cnamealready-exists
                                        continuous-deployment-policy-in-use
                                        entity-not-found
                                        illegal-field-level-encryption-config-association-with-cache-behavior
                                        illegal-origin-access-configuration
                                        illegal-update inconsistent-quantities
                                        invalid-argument
                                        invalid-default-root-object
                                        invalid-domain-name-for-origin-access-control
                                        invalid-error-code
                                        invalid-forward-cookies
                                        invalid-function-association
                                        invalid-geo-restriction-parameter
                                        invalid-headers-for-s3origin
                                        invalid-if-match-version
                                        invalid-lambda-function-association
                                        invalid-location-code
                                        invalid-minimum-protocol-version
                                        invalid-origin-access-control
                                        invalid-origin-access-identity
                                        invalid-origin-keepalive-timeout
                                        invalid-origin-read-timeout
                                        invalid-query-string-parameters
                                        invalid-relative-path
                                        invalid-required-protocol
                                        invalid-response-code invalid-ttlorder
                                        invalid-viewer-certificate
                                        invalid-web-aclid missing-body
                                        no-such-cache-policy
                                        no-such-continuous-deployment-policy
                                        no-such-distribution
                                        no-such-field-level-encryption-config
                                        no-such-origin
                                        no-such-origin-request-policy
                                        no-such-realtime-log-config
                                        no-such-response-headers-policy
                                        precondition-failed
                                        realtime-log-config-owner-mismatch
                                        staging-distribution-in-use
                                        too-many-cache-behaviors
                                        too-many-certificates
                                        too-many-cookie-names-in-white-list
                                        too-many-distribution-cnames
                                        too-many-distributions-associated-to-cache-policy
                                        too-many-distributions-associated-to-field-level-encryption-config
                                        too-many-distributions-associated-to-key-group
                                        too-many-distributions-associated-to-origin-access-control
                                        too-many-distributions-associated-to-origin-request-policy
                                        too-many-distributions-associated-to-response-headers-policy
                                        too-many-distributions-with-function-associations
                                        too-many-distributions-with-lambda-associations
                                        too-many-distributions-with-single-function-arn
                                        too-many-function-associations
                                        too-many-headers-in-forwarded-values
                                        too-many-key-groups-associated-to-distribution
                                        too-many-lambda-function-associations
                                        too-many-origin-custom-headers
                                        too-many-origin-groups-per-distribution
                                        too-many-origins
                                        too-many-query-string-parameters
                                        too-many-trusted-signers
                                        trusted-key-group-does-not-exist
                                        trusted-signer-does-not-exist)
                                       :method "PUT" :uri
                                       "/2020-05-31/distribution/{Id}/config"
                                       :code 200)

(smithy/sdk/operation:define-operation update-distribution-tenant :shape-name
                                       "UpdateDistributionTenant" :input
                                       update-distribution-tenant-request
                                       :output
                                       update-distribution-tenant-result
                                       :errors
                                       (access-denied cnamealready-exists
                                        entity-already-exists
                                        entity-limit-exceeded entity-not-found
                                        invalid-argument invalid-association
                                        invalid-if-match-version
                                        precondition-failed)
                                       :method "PUT" :uri
                                       "/2020-05-31/distribution-tenant/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-distribution-with-staging-config
                                       :shape-name
                                       "UpdateDistributionWithStagingConfig"
                                       :input
                                       update-distribution-with-staging-config-request
                                       :output
                                       update-distribution-with-staging-config-result
                                       :errors
                                       (access-denied cnamealready-exists
                                        entity-not-found
                                        illegal-field-level-encryption-config-association-with-cache-behavior
                                        illegal-update inconsistent-quantities
                                        invalid-argument
                                        invalid-default-root-object
                                        invalid-error-code
                                        invalid-forward-cookies
                                        invalid-function-association
                                        invalid-geo-restriction-parameter
                                        invalid-headers-for-s3origin
                                        invalid-if-match-version
                                        invalid-lambda-function-association
                                        invalid-location-code
                                        invalid-minimum-protocol-version
                                        invalid-origin-access-control
                                        invalid-origin-access-identity
                                        invalid-origin-keepalive-timeout
                                        invalid-origin-read-timeout
                                        invalid-query-string-parameters
                                        invalid-relative-path
                                        invalid-required-protocol
                                        invalid-response-code invalid-ttlorder
                                        invalid-viewer-certificate
                                        invalid-web-aclid missing-body
                                        no-such-cache-policy
                                        no-such-distribution
                                        no-such-field-level-encryption-config
                                        no-such-origin
                                        no-such-origin-request-policy
                                        no-such-realtime-log-config
                                        no-such-response-headers-policy
                                        precondition-failed
                                        realtime-log-config-owner-mismatch
                                        too-many-cache-behaviors
                                        too-many-certificates
                                        too-many-cookie-names-in-white-list
                                        too-many-distribution-cnames
                                        too-many-distributions-associated-to-cache-policy
                                        too-many-distributions-associated-to-field-level-encryption-config
                                        too-many-distributions-associated-to-key-group
                                        too-many-distributions-associated-to-origin-access-control
                                        too-many-distributions-associated-to-origin-request-policy
                                        too-many-distributions-associated-to-response-headers-policy
                                        too-many-distributions-with-function-associations
                                        too-many-distributions-with-lambda-associations
                                        too-many-distributions-with-single-function-arn
                                        too-many-function-associations
                                        too-many-headers-in-forwarded-values
                                        too-many-key-groups-associated-to-distribution
                                        too-many-lambda-function-associations
                                        too-many-origin-custom-headers
                                        too-many-origin-groups-per-distribution
                                        too-many-origins
                                        too-many-query-string-parameters
                                        too-many-trusted-signers
                                        trusted-key-group-does-not-exist
                                        trusted-signer-does-not-exist)
                                       :method "PUT" :uri
                                       "/2020-05-31/distribution/{Id}/promote-staging-config"
                                       :code 200)

(smithy/sdk/operation:define-operation update-domain-association :shape-name
                                       "UpdateDomainAssociation" :input
                                       update-domain-association-request
                                       :output update-domain-association-result
                                       :errors
                                       (access-denied entity-not-found
                                        illegal-update invalid-argument
                                        invalid-if-match-version
                                        precondition-failed)
                                       :method "POST" :uri
                                       "/2020-05-31/domain-association" :code
                                       200)

(smithy/sdk/operation:define-operation update-field-level-encryption-config
                                       :shape-name
                                       "UpdateFieldLevelEncryptionConfig"
                                       :input
                                       update-field-level-encryption-config-request
                                       :output
                                       update-field-level-encryption-config-result
                                       :errors
                                       (access-denied illegal-update
                                        inconsistent-quantities
                                        invalid-argument
                                        invalid-if-match-version
                                        no-such-field-level-encryption-config
                                        no-such-field-level-encryption-profile
                                        precondition-failed
                                        query-arg-profile-empty
                                        too-many-field-level-encryption-content-type-profiles
                                        too-many-field-level-encryption-query-arg-profiles)
                                       :method "PUT" :uri
                                       "/2020-05-31/field-level-encryption/{Id}/config"
                                       :code 200)

(smithy/sdk/operation:define-operation update-field-level-encryption-profile
                                       :shape-name
                                       "UpdateFieldLevelEncryptionProfile"
                                       :input
                                       update-field-level-encryption-profile-request
                                       :output
                                       update-field-level-encryption-profile-result
                                       :errors
                                       (access-denied
                                        field-level-encryption-profile-already-exists
                                        field-level-encryption-profile-size-exceeded
                                        illegal-update inconsistent-quantities
                                        invalid-argument
                                        invalid-if-match-version
                                        no-such-field-level-encryption-profile
                                        no-such-public-key precondition-failed
                                        too-many-field-level-encryption-encryption-entities
                                        too-many-field-level-encryption-field-patterns)
                                       :method "PUT" :uri
                                       "/2020-05-31/field-level-encryption-profile/{Id}/config"
                                       :code 200)

(smithy/sdk/operation:define-operation update-function :shape-name
                                       "UpdateFunction" :input
                                       update-function-request :output
                                       update-function-result :errors
                                       (function-size-limit-exceeded
                                        invalid-argument
                                        invalid-if-match-version
                                        no-such-function-exists
                                        precondition-failed
                                        unsupported-operation)
                                       :method "PUT" :uri
                                       "/2020-05-31/function/{Name}" :code 200)

(smithy/sdk/operation:define-operation update-key-group :shape-name
                                       "UpdateKeyGroup" :input
                                       update-key-group-request :output
                                       update-key-group-result :errors
                                       (invalid-argument
                                        invalid-if-match-version
                                        key-group-already-exists
                                        no-such-resource precondition-failed
                                        too-many-public-keys-in-key-group)
                                       :method "PUT" :uri
                                       "/2020-05-31/key-group/{Id}" :code 200)

(smithy/sdk/operation:define-operation update-key-value-store :shape-name
                                       "UpdateKeyValueStore" :input
                                       update-key-value-store-request :output
                                       update-key-value-store-result :errors
                                       (access-denied entity-not-found
                                        invalid-argument
                                        invalid-if-match-version
                                        precondition-failed
                                        unsupported-operation)
                                       :method "PUT" :uri
                                       "/2020-05-31/key-value-store/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-origin-access-control :shape-name
                                       "UpdateOriginAccessControl" :input
                                       update-origin-access-control-request
                                       :output
                                       update-origin-access-control-result
                                       :errors
                                       (access-denied illegal-update
                                        invalid-argument
                                        invalid-if-match-version
                                        no-such-origin-access-control
                                        origin-access-control-already-exists
                                        precondition-failed)
                                       :method "PUT" :uri
                                       "/2020-05-31/origin-access-control/{Id}/config"
                                       :code 200)

(smithy/sdk/operation:define-operation update-origin-request-policy :shape-name
                                       "UpdateOriginRequestPolicy" :input
                                       update-origin-request-policy-request
                                       :output
                                       update-origin-request-policy-result
                                       :errors
                                       (access-denied illegal-update
                                        inconsistent-quantities
                                        invalid-argument
                                        invalid-if-match-version
                                        no-such-origin-request-policy
                                        origin-request-policy-already-exists
                                        precondition-failed
                                        too-many-cookies-in-origin-request-policy
                                        too-many-headers-in-origin-request-policy
                                        too-many-query-strings-in-origin-request-policy)
                                       :method "PUT" :uri
                                       "/2020-05-31/origin-request-policy/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-public-key :shape-name
                                       "UpdatePublicKey" :input
                                       update-public-key-request :output
                                       update-public-key-result :errors
                                       (access-denied
                                        cannot-change-immutable-public-key-fields
                                        illegal-update invalid-argument
                                        invalid-if-match-version
                                        no-such-public-key precondition-failed)
                                       :method "PUT" :uri
                                       "/2020-05-31/public-key/{Id}/config"
                                       :code 200)

(smithy/sdk/operation:define-operation update-realtime-log-config :shape-name
                                       "UpdateRealtimeLogConfig" :input
                                       update-realtime-log-config-request
                                       :output
                                       update-realtime-log-config-result
                                       :errors
                                       (access-denied invalid-argument
                                        no-such-realtime-log-config)
                                       :method "PUT" :uri
                                       "/2020-05-31/realtime-log-config" :code
                                       200)

(smithy/sdk/operation:define-operation update-response-headers-policy
                                       :shape-name
                                       "UpdateResponseHeadersPolicy" :input
                                       update-response-headers-policy-request
                                       :output
                                       update-response-headers-policy-result
                                       :errors
                                       (access-denied illegal-update
                                        inconsistent-quantities
                                        invalid-argument
                                        invalid-if-match-version
                                        no-such-response-headers-policy
                                        precondition-failed
                                        response-headers-policy-already-exists
                                        too-long-cspin-response-headers-policy
                                        too-many-custom-headers-in-response-headers-policy
                                        too-many-remove-headers-in-response-headers-policy)
                                       :method "PUT" :uri
                                       "/2020-05-31/response-headers-policy/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-streaming-distribution
                                       :shape-name
                                       "UpdateStreamingDistribution" :input
                                       update-streaming-distribution-request
                                       :output
                                       update-streaming-distribution-result
                                       :errors
                                       (access-denied cnamealready-exists
                                        illegal-update inconsistent-quantities
                                        invalid-argument
                                        invalid-if-match-version
                                        invalid-origin-access-control
                                        invalid-origin-access-identity
                                        missing-body
                                        no-such-streaming-distribution
                                        precondition-failed
                                        too-many-streaming-distribution-cnames
                                        too-many-trusted-signers
                                        trusted-signer-does-not-exist)
                                       :method "PUT" :uri
                                       "/2020-05-31/streaming-distribution/{Id}/config"
                                       :code 200)

(smithy/sdk/operation:define-operation update-vpc-origin :shape-name
                                       "UpdateVpcOrigin" :input
                                       update-vpc-origin-request :output
                                       update-vpc-origin-result :errors
                                       (access-denied
                                        cannot-update-entity-while-in-use
                                        entity-already-exists
                                        entity-limit-exceeded entity-not-found
                                        illegal-update inconsistent-quantities
                                        invalid-argument
                                        invalid-if-match-version
                                        precondition-failed
                                        unsupported-operation)
                                       :method "PUT" :uri
                                       "/2020-05-31/vpc-origin/{Id}" :code 202)

(smithy/sdk/operation:define-operation verify-dns-configuration :shape-name
                                       "VerifyDnsConfiguration" :input
                                       verify-dns-configuration-request :output
                                       verify-dns-configuration-result :errors
                                       (access-denied entity-not-found
                                        invalid-argument)
                                       :method "POST" :uri
                                       "/2020-05-31/verify-dns-configuration"
                                       :code 200)
