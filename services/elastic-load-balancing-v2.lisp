(uiop/package:define-package #:pira/elastic-load-balancing-v2 (:use)
                             (:export #:action #:action-order
                              #:action-type-enum #:actions
                              #:add-listener-certificates #:add-tags
                              #:add-trust-store-revocations
                              #:administrative-override
                              #:advertise-trust-store-ca-names-enum
                              #:allocation-id #:alpn-policy-name
                              #:alpn-policy-value #:anomaly-detection
                              #:anomaly-result-enum
                              #:authenticate-cognito-action-authentication-request-extra-params
                              #:authenticate-cognito-action-authentication-request-param-name
                              #:authenticate-cognito-action-authentication-request-param-value
                              #:authenticate-cognito-action-conditional-behavior-enum
                              #:authenticate-cognito-action-config
                              #:authenticate-cognito-action-scope
                              #:authenticate-cognito-action-session-cookie-name
                              #:authenticate-cognito-action-session-timeout
                              #:authenticate-cognito-action-user-pool-arn
                              #:authenticate-cognito-action-user-pool-client-id
                              #:authenticate-cognito-action-user-pool-domain
                              #:authenticate-oidc-action-authentication-request-extra-params
                              #:authenticate-oidc-action-authentication-request-param-name
                              #:authenticate-oidc-action-authentication-request-param-value
                              #:authenticate-oidc-action-authorization-endpoint
                              #:authenticate-oidc-action-client-id
                              #:authenticate-oidc-action-client-secret
                              #:authenticate-oidc-action-conditional-behavior-enum
                              #:authenticate-oidc-action-config
                              #:authenticate-oidc-action-issuer
                              #:authenticate-oidc-action-scope
                              #:authenticate-oidc-action-session-cookie-name
                              #:authenticate-oidc-action-session-timeout
                              #:authenticate-oidc-action-token-endpoint
                              #:authenticate-oidc-action-use-existing-client-secret
                              #:authenticate-oidc-action-user-info-endpoint
                              #:availability-zone #:availability-zones
                              #:canonical-hosted-zone-id
                              #:capacity-reservation-state-enum
                              #:capacity-reservation-status #:capacity-units
                              #:capacity-units-double #:certificate
                              #:certificate-arn #:certificate-list #:cipher
                              #:cipher-name #:cipher-priority #:ciphers
                              #:condition-field-name #:create-listener
                              #:create-load-balancer #:create-rule
                              #:create-target-group #:create-trust-store
                              #:created-time #:customer-owned-ipv4pool
                              #:dnsname #:decrease-requests-remaining #:default
                              #:delete-listener #:delete-load-balancer
                              #:delete-rule
                              #:delete-shared-trust-store-association
                              #:delete-target-group #:delete-trust-store
                              #:deregister-targets #:describe-account-limits
                              #:describe-capacity-reservation
                              #:describe-listener-attributes
                              #:describe-listener-certificates
                              #:describe-listeners
                              #:describe-load-balancer-attributes
                              #:describe-load-balancers #:describe-rules
                              #:describe-sslpolicies #:describe-tags
                              #:describe-target-group-attributes
                              #:describe-target-groups #:describe-target-health
                              #:describe-target-health-input-include-enum
                              #:describe-trust-store-associations
                              #:describe-trust-store-revocation
                              #:describe-trust-store-revocation-response
                              #:describe-trust-store-revocations
                              #:describe-trust-stores #:description
                              #:elastic-load-balancing-v10
                              #:enable-prefix-for-ipv6source-nat-enum
                              #:enforce-security-group-inbound-rules-on-private-link-traffic
                              #:enforce-security-group-inbound-rules-on-private-link-traffic-enum
                              #:error-description
                              #:fixed-response-action-config
                              #:fixed-response-action-content-type
                              #:fixed-response-action-message
                              #:fixed-response-action-status-code
                              #:forward-action-config #:get-resource-policy
                              #:get-trust-store-ca-certificates-bundle
                              #:get-trust-store-revocation-content #:grpc-code
                              #:health-check-enabled
                              #:health-check-interval-seconds
                              #:health-check-port
                              #:health-check-threshold-count
                              #:health-check-timeout-seconds
                              #:host-header-condition-config #:http-code
                              #:http-header-condition-config
                              #:http-header-condition-name
                              #:http-request-method-condition-config
                              #:ipv6address #:ignore-client-certificate-expiry
                              #:ip-address #:ip-address-type #:ipam-pool-id
                              #:ipam-pools #:is-default #:last-modified-time
                              #:limit #:limits
                              #:list-of-describe-target-health-include-options
                              #:list-of-string #:listener #:listener-arn
                              #:listener-arns #:listener-attribute
                              #:listener-attribute-key
                              #:listener-attribute-value #:listener-attributes
                              #:listeners #:load-balancer
                              #:load-balancer-address #:load-balancer-addresses
                              #:load-balancer-arn #:load-balancer-arns
                              #:load-balancer-attribute
                              #:load-balancer-attribute-key
                              #:load-balancer-attribute-value
                              #:load-balancer-attributes #:load-balancer-name
                              #:load-balancer-names #:load-balancer-scheme-enum
                              #:load-balancer-state #:load-balancer-state-enum
                              #:load-balancer-type-enum #:load-balancers
                              #:location #:marker #:matcher #:max
                              #:minimum-load-balancer-capacity
                              #:mitigation-in-effect-enum #:mode
                              #:modify-capacity-reservation #:modify-ip-pools
                              #:modify-listener #:modify-listener-attributes
                              #:modify-load-balancer-attributes #:modify-rule
                              #:modify-target-group
                              #:modify-target-group-attributes
                              #:modify-trust-store
                              #:mutual-authentication-attributes #:name
                              #:number-of-ca-certificates
                              #:number-of-revoked-entries #:outpost-id
                              #:page-size #:path
                              #:path-pattern-condition-config #:policy #:port
                              #:private-ipv4address #:protocol-enum
                              #:protocol-version
                              #:query-string-condition-config
                              #:query-string-key-value-pair
                              #:query-string-key-value-pair-list
                              #:redirect-action-config #:redirect-action-host
                              #:redirect-action-path #:redirect-action-port
                              #:redirect-action-protocol
                              #:redirect-action-query
                              #:redirect-action-status-code-enum
                              #:register-targets #:remove-ipam-pool-enum
                              #:remove-ipam-pools
                              #:remove-listener-certificates #:remove-tags
                              #:remove-trust-store-revocations
                              #:reset-capacity-reservation #:resource-arn
                              #:resource-arns #:revocation-content
                              #:revocation-contents #:revocation-id
                              #:revocation-ids #:revocation-type #:rule
                              #:rule-arn #:rule-arns #:rule-condition
                              #:rule-condition-list #:rule-priority
                              #:rule-priority-list #:rule-priority-pair #:rules
                              #:s3bucket #:s3key #:s3object-version
                              #:security-group-id #:security-groups
                              #:set-ip-address-type #:set-rule-priorities
                              #:set-security-groups #:set-subnets
                              #:source-ip-condition-config
                              #:source-nat-ipv6prefix #:source-nat-ipv6prefixes
                              #:ssl-policies #:ssl-policy #:ssl-policy-name
                              #:ssl-policy-names #:ssl-protocol #:ssl-protocols
                              #:state-reason #:string #:string-value
                              #:subnet-id #:subnet-mapping #:subnet-mappings
                              #:subnets #:tag #:tag-description
                              #:tag-descriptions #:tag-key #:tag-keys
                              #:tag-list #:tag-value
                              #:target-administrative-override-reason-enum
                              #:target-administrative-override-state-enum
                              #:target-description #:target-descriptions
                              #:target-group #:target-group-arn
                              #:target-group-arns #:target-group-attribute
                              #:target-group-attribute-key
                              #:target-group-attribute-value
                              #:target-group-attributes
                              #:target-group-ip-address-type-enum
                              #:target-group-list #:target-group-name
                              #:target-group-names
                              #:target-group-stickiness-config
                              #:target-group-stickiness-duration-seconds
                              #:target-group-stickiness-enabled
                              #:target-group-tuple #:target-group-weight
                              #:target-groups #:target-health
                              #:target-health-description
                              #:target-health-descriptions
                              #:target-health-reason-enum
                              #:target-health-state-enum #:target-id
                              #:target-type-enum #:total-revoked-entries
                              #:trust-store #:trust-store-arn
                              #:trust-store-arns #:trust-store-association
                              #:trust-store-association-resource-arn
                              #:trust-store-association-status-enum
                              #:trust-store-associations #:trust-store-name
                              #:trust-store-names #:trust-store-revocation
                              #:trust-store-revocations #:trust-store-status
                              #:trust-stores #:vpc-id
                              #:zonal-capacity-reservation-state
                              #:zonal-capacity-reservation-states #:zone-name))
(common-lisp:in-package #:pira/elastic-load-balancing-v2)

(smithy/sdk/service:define-service elastic-load-balancing-v10 :shape-name
                                   "ElasticLoadBalancing_v10" :version
                                   "2015-12-01" :title "Elastic Load Balancing"
                                   :operations
                                   '(add-listener-certificates add-tags
                                     add-trust-store-revocations
                                     create-listener create-load-balancer
                                     create-rule create-target-group
                                     create-trust-store delete-listener
                                     delete-load-balancer delete-rule
                                     delete-shared-trust-store-association
                                     delete-target-group delete-trust-store
                                     deregister-targets describe-account-limits
                                     describe-capacity-reservation
                                     describe-listener-attributes
                                     describe-listener-certificates
                                     describe-listeners
                                     describe-load-balancer-attributes
                                     describe-load-balancers describe-rules
                                     describe-sslpolicies describe-tags
                                     describe-target-group-attributes
                                     describe-target-groups
                                     describe-target-health
                                     describe-trust-store-associations
                                     describe-trust-store-revocations
                                     describe-trust-stores get-resource-policy
                                     get-trust-store-ca-certificates-bundle
                                     get-trust-store-revocation-content
                                     modify-capacity-reservation
                                     modify-ip-pools modify-listener
                                     modify-listener-attributes
                                     modify-load-balancer-attributes
                                     modify-rule modify-target-group
                                     modify-target-group-attributes
                                     modify-trust-store register-targets
                                     remove-listener-certificates remove-tags
                                     remove-trust-store-revocations
                                     set-ip-address-type set-rule-priorities
                                     set-security-groups set-subnets)
                                   :xml-namespace
                                   (:uri
                                    "http://elasticloadbalancing.amazonaws.com/doc/2015-12-01/"
                                    :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Elastic Load Balancing v2")
                                      ("arnNamespace" . "elasticloadbalancing")
                                      ("cloudFormationName"
                                       . "ElasticLoadBalancingV2")
                                      ("cloudTrailEventSource"
                                       . "elasticloadbalancing.amazonaws.com")
                                      ("docId"
                                       . "elasticloadbalancingv2-2015-12-01")
                                      ("endpointPrefix"
                                       . "elasticloadbalancing"))
                                     ("aws.auth#sigv4"
                                      ("name" . "elasticloadbalancing"))
                                     ("aws.protocols#awsQuery")))

(smithy/sdk/shapes:define-error alpnpolicy-not-supported-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "ALPNPolicyNotSupportedException")
                                (:error-name "ALPNPolicyNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure action common-lisp:nil
                                    ((type :target-type action-type-enum
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (target-group-arn :target-type
                                      target-group-arn :member-name
                                      "TargetGroupArn")
                                     (authenticate-oidc-config :target-type
                                      authenticate-oidc-action-config
                                      :member-name "AuthenticateOidcConfig")
                                     (authenticate-cognito-config :target-type
                                      authenticate-cognito-action-config
                                      :member-name "AuthenticateCognitoConfig")
                                     (order :target-type action-order
                                      :member-name "Order")
                                     (redirect-config :target-type
                                      redirect-action-config :member-name
                                      "RedirectConfig")
                                     (fixed-response-config :target-type
                                      fixed-response-action-config :member-name
                                      "FixedResponseConfig")
                                     (forward-config :target-type
                                      forward-action-config :member-name
                                      "ForwardConfig"))
                                    (:shape-name "Action"))

(smithy/sdk/shapes:define-type action-order smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum action-type-enum
    common-lisp:nil
  (:forward "forward")
  (:authenticate-oidc "authenticate-oidc")
  (:authenticate-cognito "authenticate-cognito")
  (:redirect "redirect")
  (:fixed-response "fixed-response"))

(smithy/sdk/shapes:define-list actions :member action)

(smithy/sdk/shapes:define-input add-listener-certificates-input common-lisp:nil
                                ((listener-arn :target-type listener-arn
                                  :required common-lisp:t :member-name
                                  "ListenerArn")
                                 (certificates :target-type certificate-list
                                  :required common-lisp:t :member-name
                                  "Certificates"))
                                (:shape-name "AddListenerCertificatesInput"))

(smithy/sdk/shapes:define-output add-listener-certificates-output
                                 common-lisp:nil
                                 ((certificates :target-type certificate-list
                                   :member-name "Certificates"))
                                 (:shape-name "AddListenerCertificatesOutput"))

(smithy/sdk/shapes:define-input add-tags-input common-lisp:nil
                                ((resource-arns :target-type resource-arns
                                  :required common-lisp:t :member-name
                                  "ResourceArns")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "AddTagsInput"))

(smithy/sdk/shapes:define-output add-tags-output common-lisp:nil
                                 common-lisp:nil (:shape-name "AddTagsOutput"))

(smithy/sdk/shapes:define-input add-trust-store-revocations-input
                                common-lisp:nil
                                ((trust-store-arn :target-type trust-store-arn
                                  :required common-lisp:t :member-name
                                  "TrustStoreArn")
                                 (revocation-contents :target-type
                                  revocation-contents :member-name
                                  "RevocationContents"))
                                (:shape-name "AddTrustStoreRevocationsInput"))

(smithy/sdk/shapes:define-output add-trust-store-revocations-output
                                 common-lisp:nil
                                 ((trust-store-revocations :target-type
                                   trust-store-revocations :member-name
                                   "TrustStoreRevocations"))
                                 (:shape-name "AddTrustStoreRevocationsOutput"))

(smithy/sdk/shapes:define-structure administrative-override common-lisp:nil
                                    ((state :target-type
                                      target-administrative-override-state-enum
                                      :member-name "State")
                                     (reason :target-type
                                      target-administrative-override-reason-enum
                                      :member-name "Reason")
                                     (description :target-type description
                                      :member-name "Description"))
                                    (:shape-name "AdministrativeOverride"))

(smithy/sdk/shapes:define-enum advertise-trust-store-ca-names-enum
    common-lisp:nil
  (:on "on")
  (:off "off"))

(smithy/sdk/shapes:define-type allocation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error allocation-id-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "AllocationIdNotFoundException")
                                (:error-name "AllocationIdNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-list alpn-policy-name :member alpn-policy-value)

(smithy/sdk/shapes:define-type alpn-policy-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure anomaly-detection common-lisp:nil
                                    ((result :target-type anomaly-result-enum
                                      :member-name "Result")
                                     (mitigation-in-effect :target-type
                                      mitigation-in-effect-enum :member-name
                                      "MitigationInEffect"))
                                    (:shape-name "AnomalyDetection"))

(smithy/sdk/shapes:define-enum anomaly-result-enum
    common-lisp:nil
  (:anomalous "anomalous")
  (:normal "normal"))

(smithy/sdk/shapes:define-map
 authenticate-cognito-action-authentication-request-extra-params :key
 authenticate-cognito-action-authentication-request-param-name :value
 authenticate-cognito-action-authentication-request-param-value)

(smithy/sdk/shapes:define-type
 authenticate-cognito-action-authentication-request-param-name
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 authenticate-cognito-action-authentication-request-param-value
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum authenticate-cognito-action-conditional-behavior-enum
    common-lisp:nil
  (:deny "deny")
  (:allow "allow")
  (:authenticate "authenticate"))

(smithy/sdk/shapes:define-structure authenticate-cognito-action-config
                                    common-lisp:nil
                                    ((user-pool-arn :target-type
                                      authenticate-cognito-action-user-pool-arn
                                      :required common-lisp:t :member-name
                                      "UserPoolArn")
                                     (user-pool-client-id :target-type
                                      authenticate-cognito-action-user-pool-client-id
                                      :required common-lisp:t :member-name
                                      "UserPoolClientId")
                                     (user-pool-domain :target-type
                                      authenticate-cognito-action-user-pool-domain
                                      :required common-lisp:t :member-name
                                      "UserPoolDomain")
                                     (session-cookie-name :target-type
                                      authenticate-cognito-action-session-cookie-name
                                      :member-name "SessionCookieName")
                                     (scope :target-type
                                      authenticate-cognito-action-scope
                                      :member-name "Scope")
                                     (session-timeout :target-type
                                      authenticate-cognito-action-session-timeout
                                      :member-name "SessionTimeout")
                                     (authentication-request-extra-params
                                      :target-type
                                      authenticate-cognito-action-authentication-request-extra-params
                                      :member-name
                                      "AuthenticationRequestExtraParams")
                                     (on-unauthenticated-request :target-type
                                      authenticate-cognito-action-conditional-behavior-enum
                                      :member-name "OnUnauthenticatedRequest"))
                                    (:shape-name
                                     "AuthenticateCognitoActionConfig"))

(smithy/sdk/shapes:define-type authenticate-cognito-action-scope
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type authenticate-cognito-action-session-cookie-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type authenticate-cognito-action-session-timeout
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type authenticate-cognito-action-user-pool-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type authenticate-cognito-action-user-pool-client-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type authenticate-cognito-action-user-pool-domain
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map
 authenticate-oidc-action-authentication-request-extra-params :key
 authenticate-oidc-action-authentication-request-param-name :value
 authenticate-oidc-action-authentication-request-param-value)

(smithy/sdk/shapes:define-type
 authenticate-oidc-action-authentication-request-param-name
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 authenticate-oidc-action-authentication-request-param-value
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type authenticate-oidc-action-authorization-endpoint
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type authenticate-oidc-action-client-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type authenticate-oidc-action-client-secret
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum authenticate-oidc-action-conditional-behavior-enum
    common-lisp:nil
  (:deny "deny")
  (:allow "allow")
  (:authenticate "authenticate"))

(smithy/sdk/shapes:define-structure authenticate-oidc-action-config
                                    common-lisp:nil
                                    ((issuer :target-type
                                      authenticate-oidc-action-issuer :required
                                      common-lisp:t :member-name "Issuer")
                                     (authorization-endpoint :target-type
                                      authenticate-oidc-action-authorization-endpoint
                                      :required common-lisp:t :member-name
                                      "AuthorizationEndpoint")
                                     (token-endpoint :target-type
                                      authenticate-oidc-action-token-endpoint
                                      :required common-lisp:t :member-name
                                      "TokenEndpoint")
                                     (user-info-endpoint :target-type
                                      authenticate-oidc-action-user-info-endpoint
                                      :required common-lisp:t :member-name
                                      "UserInfoEndpoint")
                                     (client-id :target-type
                                      authenticate-oidc-action-client-id
                                      :required common-lisp:t :member-name
                                      "ClientId")
                                     (client-secret :target-type
                                      authenticate-oidc-action-client-secret
                                      :member-name "ClientSecret")
                                     (session-cookie-name :target-type
                                      authenticate-oidc-action-session-cookie-name
                                      :member-name "SessionCookieName")
                                     (scope :target-type
                                      authenticate-oidc-action-scope
                                      :member-name "Scope")
                                     (session-timeout :target-type
                                      authenticate-oidc-action-session-timeout
                                      :member-name "SessionTimeout")
                                     (authentication-request-extra-params
                                      :target-type
                                      authenticate-oidc-action-authentication-request-extra-params
                                      :member-name
                                      "AuthenticationRequestExtraParams")
                                     (on-unauthenticated-request :target-type
                                      authenticate-oidc-action-conditional-behavior-enum
                                      :member-name "OnUnauthenticatedRequest")
                                     (use-existing-client-secret :target-type
                                      authenticate-oidc-action-use-existing-client-secret
                                      :member-name "UseExistingClientSecret"))
                                    (:shape-name
                                     "AuthenticateOidcActionConfig"))

(smithy/sdk/shapes:define-type authenticate-oidc-action-issuer
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type authenticate-oidc-action-scope
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type authenticate-oidc-action-session-cookie-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type authenticate-oidc-action-session-timeout
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type authenticate-oidc-action-token-endpoint
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 authenticate-oidc-action-use-existing-client-secret
 smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type authenticate-oidc-action-user-info-endpoint
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure availability-zone common-lisp:nil
                                    ((zone-name :target-type zone-name
                                      :member-name "ZoneName")
                                     (subnet-id :target-type subnet-id
                                      :member-name "SubnetId")
                                     (outpost-id :target-type outpost-id
                                      :member-name "OutpostId")
                                     (load-balancer-addresses :target-type
                                      load-balancer-addresses :member-name
                                      "LoadBalancerAddresses")
                                     (source-nat-ipv6prefixes :target-type
                                      source-nat-ipv6prefixes :member-name
                                      "SourceNatIpv6Prefixes"))
                                    (:shape-name "AvailabilityZone"))

(smithy/sdk/shapes:define-error availability-zone-not-supported-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name
                                 "AvailabilityZoneNotSupportedException")
                                (:error-name "AvailabilityZoneNotSupported")
                                (:error-code 400))

(smithy/sdk/shapes:define-list availability-zones :member availability-zone)

(smithy/sdk/shapes:define-error ca-certificates-bundle-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name
                                 "CaCertificatesBundleNotFoundException")
                                (:error-name "CaCertificatesBundleNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-type canonical-hosted-zone-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error
 capacity-decrease-requests-limit-exceeded-exception common-lisp:nil
 ((message :target-type error-description :member-name "Message"))
 (:shape-name "CapacityDecreaseRequestsLimitExceededException")
 (:error-name "CapacityDecreaseRequestLimitExceeded") (:error-code 400))

(smithy/sdk/shapes:define-error capacity-reservation-pending-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name
                                 "CapacityReservationPendingException")
                                (:error-name "CapacityReservationPending")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum capacity-reservation-state-enum
    common-lisp:nil
  (:provisioned "provisioned")
  (:pending "pending")
  (:rebalancing "rebalancing")
  (:failed "failed"))

(smithy/sdk/shapes:define-structure capacity-reservation-status common-lisp:nil
                                    ((code :target-type
                                      capacity-reservation-state-enum
                                      :member-name "Code")
                                     (reason :target-type state-reason
                                      :member-name "Reason"))
                                    (:shape-name "CapacityReservationStatus"))

(smithy/sdk/shapes:define-type capacity-units smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type capacity-units-double
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-error capacity-units-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name
                                 "CapacityUnitsLimitExceededException")
                                (:error-name "CapacityUnitsLimitExceeded")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure certificate common-lisp:nil
                                    ((certificate-arn :target-type
                                      certificate-arn :member-name
                                      "CertificateArn")
                                     (is-default :target-type default
                                      :member-name "IsDefault"))
                                    (:shape-name "Certificate"))

(smithy/sdk/shapes:define-type certificate-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list certificate-list :member certificate)

(smithy/sdk/shapes:define-error certificate-not-found-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "CertificateNotFoundException")
                                (:error-name "CertificateNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure cipher common-lisp:nil
                                    ((name :target-type cipher-name
                                      :member-name "Name")
                                     (priority :target-type cipher-priority
                                      :member-name "Priority"))
                                    (:shape-name "Cipher"))

(smithy/sdk/shapes:define-type cipher-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cipher-priority smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list ciphers :member cipher)

(smithy/sdk/shapes:define-type condition-field-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-listener-input common-lisp:nil
                                ((load-balancer-arn :target-type
                                  load-balancer-arn :required common-lisp:t
                                  :member-name "LoadBalancerArn")
                                 (protocol :target-type protocol-enum
                                  :member-name "Protocol")
                                 (port :target-type port :member-name "Port")
                                 (ssl-policy :target-type ssl-policy-name
                                  :member-name "SslPolicy")
                                 (certificates :target-type certificate-list
                                  :member-name "Certificates")
                                 (default-actions :target-type actions
                                  :required common-lisp:t :member-name
                                  "DefaultActions")
                                 (alpn-policy :target-type alpn-policy-name
                                  :member-name "AlpnPolicy")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (mutual-authentication :target-type
                                  mutual-authentication-attributes :member-name
                                  "MutualAuthentication"))
                                (:shape-name "CreateListenerInput"))

(smithy/sdk/shapes:define-output create-listener-output common-lisp:nil
                                 ((listeners :target-type listeners
                                   :member-name "Listeners"))
                                 (:shape-name "CreateListenerOutput"))

(smithy/sdk/shapes:define-input create-load-balancer-input common-lisp:nil
                                ((name :target-type load-balancer-name
                                  :required common-lisp:t :member-name "Name")
                                 (subnets :target-type subnets :member-name
                                  "Subnets")
                                 (subnet-mappings :target-type subnet-mappings
                                  :member-name "SubnetMappings")
                                 (security-groups :target-type security-groups
                                  :member-name "SecurityGroups")
                                 (scheme :target-type load-balancer-scheme-enum
                                  :member-name "Scheme")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (type :target-type load-balancer-type-enum
                                  :member-name "Type")
                                 (ip-address-type :target-type ip-address-type
                                  :member-name "IpAddressType")
                                 (customer-owned-ipv4pool :target-type
                                  customer-owned-ipv4pool :member-name
                                  "CustomerOwnedIpv4Pool")
                                 (enable-prefix-for-ipv6source-nat :target-type
                                  enable-prefix-for-ipv6source-nat-enum
                                  :member-name "EnablePrefixForIpv6SourceNat")
                                 (ipam-pools :target-type ipam-pools
                                  :member-name "IpamPools"))
                                (:shape-name "CreateLoadBalancerInput"))

(smithy/sdk/shapes:define-output create-load-balancer-output common-lisp:nil
                                 ((load-balancers :target-type load-balancers
                                   :member-name "LoadBalancers"))
                                 (:shape-name "CreateLoadBalancerOutput"))

(smithy/sdk/shapes:define-input create-rule-input common-lisp:nil
                                ((listener-arn :target-type listener-arn
                                  :required common-lisp:t :member-name
                                  "ListenerArn")
                                 (conditions :target-type rule-condition-list
                                  :required common-lisp:t :member-name
                                  "Conditions")
                                 (priority :target-type rule-priority :required
                                  common-lisp:t :member-name "Priority")
                                 (actions :target-type actions :required
                                  common-lisp:t :member-name "Actions")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateRuleInput"))

(smithy/sdk/shapes:define-output create-rule-output common-lisp:nil
                                 ((rules :target-type rules :member-name
                                   "Rules"))
                                 (:shape-name "CreateRuleOutput"))

(smithy/sdk/shapes:define-input create-target-group-input common-lisp:nil
                                ((name :target-type target-group-name :required
                                  common-lisp:t :member-name "Name")
                                 (protocol :target-type protocol-enum
                                  :member-name "Protocol")
                                 (protocol-version :target-type
                                  protocol-version :member-name
                                  "ProtocolVersion")
                                 (port :target-type port :member-name "Port")
                                 (vpc-id :target-type vpc-id :member-name
                                  "VpcId")
                                 (health-check-protocol :target-type
                                  protocol-enum :member-name
                                  "HealthCheckProtocol")
                                 (health-check-port :target-type
                                  health-check-port :member-name
                                  "HealthCheckPort")
                                 (health-check-enabled :target-type
                                  health-check-enabled :member-name
                                  "HealthCheckEnabled")
                                 (health-check-path :target-type path
                                  :member-name "HealthCheckPath")
                                 (health-check-interval-seconds :target-type
                                  health-check-interval-seconds :member-name
                                  "HealthCheckIntervalSeconds")
                                 (health-check-timeout-seconds :target-type
                                  health-check-timeout-seconds :member-name
                                  "HealthCheckTimeoutSeconds")
                                 (healthy-threshold-count :target-type
                                  health-check-threshold-count :member-name
                                  "HealthyThresholdCount")
                                 (unhealthy-threshold-count :target-type
                                  health-check-threshold-count :member-name
                                  "UnhealthyThresholdCount")
                                 (matcher :target-type matcher :member-name
                                  "Matcher")
                                 (target-type :target-type target-type-enum
                                  :member-name "TargetType")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (ip-address-type :target-type
                                  target-group-ip-address-type-enum
                                  :member-name "IpAddressType"))
                                (:shape-name "CreateTargetGroupInput"))

(smithy/sdk/shapes:define-output create-target-group-output common-lisp:nil
                                 ((target-groups :target-type target-groups
                                   :member-name "TargetGroups"))
                                 (:shape-name "CreateTargetGroupOutput"))

(smithy/sdk/shapes:define-input create-trust-store-input common-lisp:nil
                                ((name :target-type trust-store-name :required
                                  common-lisp:t :member-name "Name")
                                 (ca-certificates-bundle-s3bucket :target-type
                                  s3bucket :required common-lisp:t :member-name
                                  "CaCertificatesBundleS3Bucket")
                                 (ca-certificates-bundle-s3key :target-type
                                  s3key :required common-lisp:t :member-name
                                  "CaCertificatesBundleS3Key")
                                 (ca-certificates-bundle-s3object-version
                                  :target-type s3object-version :member-name
                                  "CaCertificatesBundleS3ObjectVersion")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateTrustStoreInput"))

(smithy/sdk/shapes:define-output create-trust-store-output common-lisp:nil
                                 ((trust-stores :target-type trust-stores
                                   :member-name "TrustStores"))
                                 (:shape-name "CreateTrustStoreOutput"))

(smithy/sdk/shapes:define-type created-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type customer-owned-ipv4pool
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dnsname smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type decrease-requests-remaining
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type default smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error delete-association-same-account-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name
                                 "DeleteAssociationSameAccountException")
                                (:error-name "DeleteAssociationSameAccount")
                                (:error-code 400))

(smithy/sdk/shapes:define-input delete-listener-input common-lisp:nil
                                ((listener-arn :target-type listener-arn
                                  :required common-lisp:t :member-name
                                  "ListenerArn"))
                                (:shape-name "DeleteListenerInput"))

(smithy/sdk/shapes:define-output delete-listener-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteListenerOutput"))

(smithy/sdk/shapes:define-input delete-load-balancer-input common-lisp:nil
                                ((load-balancer-arn :target-type
                                  load-balancer-arn :required common-lisp:t
                                  :member-name "LoadBalancerArn"))
                                (:shape-name "DeleteLoadBalancerInput"))

(smithy/sdk/shapes:define-output delete-load-balancer-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteLoadBalancerOutput"))

(smithy/sdk/shapes:define-input delete-rule-input common-lisp:nil
                                ((rule-arn :target-type rule-arn :required
                                  common-lisp:t :member-name "RuleArn"))
                                (:shape-name "DeleteRuleInput"))

(smithy/sdk/shapes:define-output delete-rule-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteRuleOutput"))

(smithy/sdk/shapes:define-input delete-shared-trust-store-association-input
                                common-lisp:nil
                                ((trust-store-arn :target-type trust-store-arn
                                  :required common-lisp:t :member-name
                                  "TrustStoreArn")
                                 (resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name
                                 "DeleteSharedTrustStoreAssociationInput"))

(smithy/sdk/shapes:define-output delete-shared-trust-store-association-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteSharedTrustStoreAssociationOutput"))

(smithy/sdk/shapes:define-input delete-target-group-input common-lisp:nil
                                ((target-group-arn :target-type
                                  target-group-arn :required common-lisp:t
                                  :member-name "TargetGroupArn"))
                                (:shape-name "DeleteTargetGroupInput"))

(smithy/sdk/shapes:define-output delete-target-group-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteTargetGroupOutput"))

(smithy/sdk/shapes:define-input delete-trust-store-input common-lisp:nil
                                ((trust-store-arn :target-type trust-store-arn
                                  :required common-lisp:t :member-name
                                  "TrustStoreArn"))
                                (:shape-name "DeleteTrustStoreInput"))

(smithy/sdk/shapes:define-output delete-trust-store-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteTrustStoreOutput"))

(smithy/sdk/shapes:define-input deregister-targets-input common-lisp:nil
                                ((target-group-arn :target-type
                                  target-group-arn :required common-lisp:t
                                  :member-name "TargetGroupArn")
                                 (targets :target-type target-descriptions
                                  :required common-lisp:t :member-name
                                  "Targets"))
                                (:shape-name "DeregisterTargetsInput"))

(smithy/sdk/shapes:define-output deregister-targets-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeregisterTargetsOutput"))

(smithy/sdk/shapes:define-input describe-account-limits-input common-lisp:nil
                                ((marker :target-type marker :member-name
                                  "Marker")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name "DescribeAccountLimitsInput"))

(smithy/sdk/shapes:define-output describe-account-limits-output common-lisp:nil
                                 ((limits :target-type limits :member-name
                                   "Limits")
                                  (next-marker :target-type marker :member-name
                                   "NextMarker"))
                                 (:shape-name "DescribeAccountLimitsOutput"))

(smithy/sdk/shapes:define-input describe-capacity-reservation-input
                                common-lisp:nil
                                ((load-balancer-arn :target-type
                                  load-balancer-arn :required common-lisp:t
                                  :member-name "LoadBalancerArn"))
                                (:shape-name
                                 "DescribeCapacityReservationInput"))

(smithy/sdk/shapes:define-output describe-capacity-reservation-output
                                 common-lisp:nil
                                 ((last-modified-time :target-type
                                   last-modified-time :member-name
                                   "LastModifiedTime")
                                  (decrease-requests-remaining :target-type
                                   decrease-requests-remaining :member-name
                                   "DecreaseRequestsRemaining")
                                  (minimum-load-balancer-capacity :target-type
                                   minimum-load-balancer-capacity :member-name
                                   "MinimumLoadBalancerCapacity")
                                  (capacity-reservation-state :target-type
                                   zonal-capacity-reservation-states
                                   :member-name "CapacityReservationState"))
                                 (:shape-name
                                  "DescribeCapacityReservationOutput"))

(smithy/sdk/shapes:define-input describe-listener-attributes-input
                                common-lisp:nil
                                ((listener-arn :target-type listener-arn
                                  :required common-lisp:t :member-name
                                  "ListenerArn"))
                                (:shape-name "DescribeListenerAttributesInput"))

(smithy/sdk/shapes:define-output describe-listener-attributes-output
                                 common-lisp:nil
                                 ((attributes :target-type listener-attributes
                                   :member-name "Attributes"))
                                 (:shape-name
                                  "DescribeListenerAttributesOutput"))

(smithy/sdk/shapes:define-input describe-listener-certificates-input
                                common-lisp:nil
                                ((listener-arn :target-type listener-arn
                                  :required common-lisp:t :member-name
                                  "ListenerArn")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name
                                 "DescribeListenerCertificatesInput"))

(smithy/sdk/shapes:define-output describe-listener-certificates-output
                                 common-lisp:nil
                                 ((certificates :target-type certificate-list
                                   :member-name "Certificates")
                                  (next-marker :target-type marker :member-name
                                   "NextMarker"))
                                 (:shape-name
                                  "DescribeListenerCertificatesOutput"))

(smithy/sdk/shapes:define-input describe-listeners-input common-lisp:nil
                                ((load-balancer-arn :target-type
                                  load-balancer-arn :member-name
                                  "LoadBalancerArn")
                                 (listener-arns :target-type listener-arns
                                  :member-name "ListenerArns")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name "DescribeListenersInput"))

(smithy/sdk/shapes:define-output describe-listeners-output common-lisp:nil
                                 ((listeners :target-type listeners
                                   :member-name "Listeners")
                                  (next-marker :target-type marker :member-name
                                   "NextMarker"))
                                 (:shape-name "DescribeListenersOutput"))

(smithy/sdk/shapes:define-input describe-load-balancer-attributes-input
                                common-lisp:nil
                                ((load-balancer-arn :target-type
                                  load-balancer-arn :required common-lisp:t
                                  :member-name "LoadBalancerArn"))
                                (:shape-name
                                 "DescribeLoadBalancerAttributesInput"))

(smithy/sdk/shapes:define-output describe-load-balancer-attributes-output
                                 common-lisp:nil
                                 ((attributes :target-type
                                   load-balancer-attributes :member-name
                                   "Attributes"))
                                 (:shape-name
                                  "DescribeLoadBalancerAttributesOutput"))

(smithy/sdk/shapes:define-input describe-load-balancers-input common-lisp:nil
                                ((load-balancer-arns :target-type
                                  load-balancer-arns :member-name
                                  "LoadBalancerArns")
                                 (names :target-type load-balancer-names
                                  :member-name "Names")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name "DescribeLoadBalancersInput"))

(smithy/sdk/shapes:define-output describe-load-balancers-output common-lisp:nil
                                 ((load-balancers :target-type load-balancers
                                   :member-name "LoadBalancers")
                                  (next-marker :target-type marker :member-name
                                   "NextMarker"))
                                 (:shape-name "DescribeLoadBalancersOutput"))

(smithy/sdk/shapes:define-input describe-rules-input common-lisp:nil
                                ((listener-arn :target-type listener-arn
                                  :member-name "ListenerArn")
                                 (rule-arns :target-type rule-arns :member-name
                                  "RuleArns")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name "DescribeRulesInput"))

(smithy/sdk/shapes:define-output describe-rules-output common-lisp:nil
                                 ((rules :target-type rules :member-name
                                   "Rules")
                                  (next-marker :target-type marker :member-name
                                   "NextMarker"))
                                 (:shape-name "DescribeRulesOutput"))

(smithy/sdk/shapes:define-input describe-sslpolicies-input common-lisp:nil
                                ((names :target-type ssl-policy-names
                                  :member-name "Names")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (page-size :target-type page-size :member-name
                                  "PageSize")
                                 (load-balancer-type :target-type
                                  load-balancer-type-enum :member-name
                                  "LoadBalancerType"))
                                (:shape-name "DescribeSSLPoliciesInput"))

(smithy/sdk/shapes:define-output describe-sslpolicies-output common-lisp:nil
                                 ((ssl-policies :target-type ssl-policies
                                   :member-name "SslPolicies")
                                  (next-marker :target-type marker :member-name
                                   "NextMarker"))
                                 (:shape-name "DescribeSSLPoliciesOutput"))

(smithy/sdk/shapes:define-input describe-tags-input common-lisp:nil
                                ((resource-arns :target-type resource-arns
                                  :required common-lisp:t :member-name
                                  "ResourceArns"))
                                (:shape-name "DescribeTagsInput"))

(smithy/sdk/shapes:define-output describe-tags-output common-lisp:nil
                                 ((tag-descriptions :target-type
                                   tag-descriptions :member-name
                                   "TagDescriptions"))
                                 (:shape-name "DescribeTagsOutput"))

(smithy/sdk/shapes:define-input describe-target-group-attributes-input
                                common-lisp:nil
                                ((target-group-arn :target-type
                                  target-group-arn :required common-lisp:t
                                  :member-name "TargetGroupArn"))
                                (:shape-name
                                 "DescribeTargetGroupAttributesInput"))

(smithy/sdk/shapes:define-output describe-target-group-attributes-output
                                 common-lisp:nil
                                 ((attributes :target-type
                                   target-group-attributes :member-name
                                   "Attributes"))
                                 (:shape-name
                                  "DescribeTargetGroupAttributesOutput"))

(smithy/sdk/shapes:define-input describe-target-groups-input common-lisp:nil
                                ((load-balancer-arn :target-type
                                  load-balancer-arn :member-name
                                  "LoadBalancerArn")
                                 (target-group-arns :target-type
                                  target-group-arns :member-name
                                  "TargetGroupArns")
                                 (names :target-type target-group-names
                                  :member-name "Names")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name "DescribeTargetGroupsInput"))

(smithy/sdk/shapes:define-output describe-target-groups-output common-lisp:nil
                                 ((target-groups :target-type target-groups
                                   :member-name "TargetGroups")
                                  (next-marker :target-type marker :member-name
                                   "NextMarker"))
                                 (:shape-name "DescribeTargetGroupsOutput"))

(smithy/sdk/shapes:define-input describe-target-health-input common-lisp:nil
                                ((target-group-arn :target-type
                                  target-group-arn :required common-lisp:t
                                  :member-name "TargetGroupArn")
                                 (targets :target-type target-descriptions
                                  :member-name "Targets")
                                 (include :target-type
                                  list-of-describe-target-health-include-options
                                  :member-name "Include"))
                                (:shape-name "DescribeTargetHealthInput"))

(smithy/sdk/shapes:define-enum describe-target-health-input-include-enum
    common-lisp:nil
  (:anomaly "AnomalyDetection")
  (:all "All"))

(smithy/sdk/shapes:define-output describe-target-health-output common-lisp:nil
                                 ((target-health-descriptions :target-type
                                   target-health-descriptions :member-name
                                   "TargetHealthDescriptions"))
                                 (:shape-name "DescribeTargetHealthOutput"))

(smithy/sdk/shapes:define-input describe-trust-store-associations-input
                                common-lisp:nil
                                ((trust-store-arn :target-type trust-store-arn
                                  :required common-lisp:t :member-name
                                  "TrustStoreArn")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name
                                 "DescribeTrustStoreAssociationsInput"))

(smithy/sdk/shapes:define-output describe-trust-store-associations-output
                                 common-lisp:nil
                                 ((trust-store-associations :target-type
                                   trust-store-associations :member-name
                                   "TrustStoreAssociations")
                                  (next-marker :target-type marker :member-name
                                   "NextMarker"))
                                 (:shape-name
                                  "DescribeTrustStoreAssociationsOutput"))

(smithy/sdk/shapes:define-structure describe-trust-store-revocation
                                    common-lisp:nil
                                    ((trust-store-arn :target-type
                                      trust-store-arn :member-name
                                      "TrustStoreArn")
                                     (revocation-id :target-type revocation-id
                                      :member-name "RevocationId")
                                     (revocation-type :target-type
                                      revocation-type :member-name
                                      "RevocationType")
                                     (number-of-revoked-entries :target-type
                                      number-of-revoked-entries :member-name
                                      "NumberOfRevokedEntries"))
                                    (:shape-name
                                     "DescribeTrustStoreRevocation"))

(smithy/sdk/shapes:define-list describe-trust-store-revocation-response :member
                               describe-trust-store-revocation)

(smithy/sdk/shapes:define-input describe-trust-store-revocations-input
                                common-lisp:nil
                                ((trust-store-arn :target-type trust-store-arn
                                  :required common-lisp:t :member-name
                                  "TrustStoreArn")
                                 (revocation-ids :target-type revocation-ids
                                  :member-name "RevocationIds")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name
                                 "DescribeTrustStoreRevocationsInput"))

(smithy/sdk/shapes:define-output describe-trust-store-revocations-output
                                 common-lisp:nil
                                 ((trust-store-revocations :target-type
                                   describe-trust-store-revocation-response
                                   :member-name "TrustStoreRevocations")
                                  (next-marker :target-type marker :member-name
                                   "NextMarker"))
                                 (:shape-name
                                  "DescribeTrustStoreRevocationsOutput"))

(smithy/sdk/shapes:define-input describe-trust-stores-input common-lisp:nil
                                ((trust-store-arns :target-type
                                  trust-store-arns :member-name
                                  "TrustStoreArns")
                                 (names :target-type trust-store-names
                                  :member-name "Names")
                                 (marker :target-type marker :member-name
                                  "Marker")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name "DescribeTrustStoresInput"))

(smithy/sdk/shapes:define-output describe-trust-stores-output common-lisp:nil
                                 ((trust-stores :target-type trust-stores
                                   :member-name "TrustStores")
                                  (next-marker :target-type marker :member-name
                                   "NextMarker"))
                                 (:shape-name "DescribeTrustStoresOutput"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error duplicate-listener-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "DuplicateListenerException")
                                (:error-name "DuplicateListener")
                                (:error-code 400))

(smithy/sdk/shapes:define-error duplicate-load-balancer-name-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name
                                 "DuplicateLoadBalancerNameException")
                                (:error-name "DuplicateLoadBalancerName")
                                (:error-code 400))

(smithy/sdk/shapes:define-error duplicate-tag-keys-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "DuplicateTagKeysException")
                                (:error-name "DuplicateTagKeys")
                                (:error-code 400))

(smithy/sdk/shapes:define-error duplicate-target-group-name-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name
                                 "DuplicateTargetGroupNameException")
                                (:error-name "DuplicateTargetGroupName")
                                (:error-code 400))

(smithy/sdk/shapes:define-error duplicate-trust-store-name-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name
                                 "DuplicateTrustStoreNameException")
                                (:error-name "DuplicateTrustStoreName")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum enable-prefix-for-ipv6source-nat-enum
    common-lisp:nil
  (:on "on")
  (:off "off"))

(smithy/sdk/shapes:define-type
 enforce-security-group-inbound-rules-on-private-link-traffic
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum enforce-security-group-inbound-rules-on-private-link-traffic-enum
    common-lisp:nil
  (:on "on")
  (:off "off"))

(smithy/sdk/shapes:define-type error-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure fixed-response-action-config
                                    common-lisp:nil
                                    ((message-body :target-type
                                      fixed-response-action-message
                                      :member-name "MessageBody")
                                     (status-code :target-type
                                      fixed-response-action-status-code
                                      :required common-lisp:t :member-name
                                      "StatusCode")
                                     (content-type :target-type
                                      fixed-response-action-content-type
                                      :member-name "ContentType"))
                                    (:shape-name "FixedResponseActionConfig"))

(smithy/sdk/shapes:define-type fixed-response-action-content-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fixed-response-action-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type fixed-response-action-status-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure forward-action-config common-lisp:nil
                                    ((target-groups :target-type
                                      target-group-list :member-name
                                      "TargetGroups")
                                     (target-group-stickiness-config
                                      :target-type
                                      target-group-stickiness-config
                                      :member-name
                                      "TargetGroupStickinessConfig"))
                                    (:shape-name "ForwardActionConfig"))

(smithy/sdk/shapes:define-input get-resource-policy-input common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "GetResourcePolicyInput"))

(smithy/sdk/shapes:define-output get-resource-policy-output common-lisp:nil
                                 ((policy :target-type policy :member-name
                                   "Policy"))
                                 (:shape-name "GetResourcePolicyOutput"))

(smithy/sdk/shapes:define-input get-trust-store-ca-certificates-bundle-input
                                common-lisp:nil
                                ((trust-store-arn :target-type trust-store-arn
                                  :required common-lisp:t :member-name
                                  "TrustStoreArn"))
                                (:shape-name
                                 "GetTrustStoreCaCertificatesBundleInput"))

(smithy/sdk/shapes:define-output get-trust-store-ca-certificates-bundle-output
                                 common-lisp:nil
                                 ((location :target-type location :member-name
                                   "Location"))
                                 (:shape-name
                                  "GetTrustStoreCaCertificatesBundleOutput"))

(smithy/sdk/shapes:define-input get-trust-store-revocation-content-input
                                common-lisp:nil
                                ((trust-store-arn :target-type trust-store-arn
                                  :required common-lisp:t :member-name
                                  "TrustStoreArn")
                                 (revocation-id :target-type revocation-id
                                  :required common-lisp:t :member-name
                                  "RevocationId"))
                                (:shape-name
                                 "GetTrustStoreRevocationContentInput"))

(smithy/sdk/shapes:define-output get-trust-store-revocation-content-output
                                 common-lisp:nil
                                 ((location :target-type location :member-name
                                   "Location"))
                                 (:shape-name
                                  "GetTrustStoreRevocationContentOutput"))

(smithy/sdk/shapes:define-type grpc-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type health-check-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type health-check-interval-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type health-check-port smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type health-check-threshold-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type health-check-timeout-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error health-unavailable-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "HealthUnavailableException")
                                (:error-name "HealthUnavailable")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure host-header-condition-config
                                    common-lisp:nil
                                    ((values :target-type list-of-string
                                      :member-name "Values"))
                                    (:shape-name "HostHeaderConditionConfig"))

(smithy/sdk/shapes:define-type http-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure http-header-condition-config
                                    common-lisp:nil
                                    ((http-header-name :target-type
                                      http-header-condition-name :member-name
                                      "HttpHeaderName")
                                     (values :target-type list-of-string
                                      :member-name "Values"))
                                    (:shape-name "HttpHeaderConditionConfig"))

(smithy/sdk/shapes:define-type http-header-condition-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure http-request-method-condition-config
                                    common-lisp:nil
                                    ((values :target-type list-of-string
                                      :member-name "Values"))
                                    (:shape-name
                                     "HttpRequestMethodConditionConfig"))

(smithy/sdk/shapes:define-type ipv6address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ignore-client-certificate-expiry
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error incompatible-protocols-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "IncompatibleProtocolsException")
                                (:error-name "IncompatibleProtocols")
                                (:error-code 400))

(smithy/sdk/shapes:define-error insufficient-capacity-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "InsufficientCapacityException")
                                (:error-name "InsufficientCapacity")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-ca-certificates-bundle-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name
                                 "InvalidCaCertificatesBundleException")
                                (:error-name "InvalidCaCertificatesBundle")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-configuration-request-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name
                                 "InvalidConfigurationRequestException")
                                (:error-name "InvalidConfigurationRequest")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-load-balancer-action-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name
                                 "InvalidLoadBalancerActionException")
                                (:error-name "InvalidLoadBalancerAction")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-revocation-content-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name
                                 "InvalidRevocationContentException")
                                (:error-name "InvalidRevocationContent")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-scheme-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "InvalidSchemeException")
                                (:error-name "InvalidScheme") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-security-group-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "InvalidSecurityGroupException")
                                (:error-name "InvalidSecurityGroup")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-subnet-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "InvalidSubnetException")
                                (:error-name "InvalidSubnet") (:error-code 400))

(smithy/sdk/shapes:define-error invalid-target-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "InvalidTargetException")
                                (:error-name "InvalidTarget") (:error-code 400))

(smithy/sdk/shapes:define-type ip-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum ip-address-type
    common-lisp:nil
  (:ipv4 "ipv4")
  (:dualstack "dualstack")
  (:dualstack-without-public-ipv4 "dualstack-without-public-ipv4"))

(smithy/sdk/shapes:define-type ipam-pool-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ipam-pools common-lisp:nil
                                    ((ipv4ipam-pool-id :target-type
                                      ipam-pool-id :member-name
                                      "Ipv4IpamPoolId"))
                                    (:shape-name "IpamPools"))

(smithy/sdk/shapes:define-type is-default smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type last-modified-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure limit common-lisp:nil
                                    ((name :target-type name :member-name
                                      "Name")
                                     (max :target-type max :member-name "Max"))
                                    (:shape-name "Limit"))

(smithy/sdk/shapes:define-list limits :member limit)

(smithy/sdk/shapes:define-list list-of-describe-target-health-include-options
                               :member
                               describe-target-health-input-include-enum)

(smithy/sdk/shapes:define-list list-of-string :member string-value)

(smithy/sdk/shapes:define-structure listener common-lisp:nil
                                    ((listener-arn :target-type listener-arn
                                      :member-name "ListenerArn")
                                     (load-balancer-arn :target-type
                                      load-balancer-arn :member-name
                                      "LoadBalancerArn")
                                     (port :target-type port :member-name
                                      "Port")
                                     (protocol :target-type protocol-enum
                                      :member-name "Protocol")
                                     (certificates :target-type
                                      certificate-list :member-name
                                      "Certificates")
                                     (ssl-policy :target-type ssl-policy-name
                                      :member-name "SslPolicy")
                                     (default-actions :target-type actions
                                      :member-name "DefaultActions")
                                     (alpn-policy :target-type alpn-policy-name
                                      :member-name "AlpnPolicy")
                                     (mutual-authentication :target-type
                                      mutual-authentication-attributes
                                      :member-name "MutualAuthentication"))
                                    (:shape-name "Listener"))

(smithy/sdk/shapes:define-type listener-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list listener-arns :member listener-arn)

(smithy/sdk/shapes:define-structure listener-attribute common-lisp:nil
                                    ((key :target-type listener-attribute-key
                                      :member-name "Key")
                                     (value :target-type
                                      listener-attribute-value :member-name
                                      "Value"))
                                    (:shape-name "ListenerAttribute"))

(smithy/sdk/shapes:define-type listener-attribute-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type listener-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list listener-attributes :member listener-attribute)

(smithy/sdk/shapes:define-error listener-not-found-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "ListenerNotFoundException")
                                (:error-name "ListenerNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-list listeners :member listener)

(smithy/sdk/shapes:define-structure load-balancer common-lisp:nil
                                    ((load-balancer-arn :target-type
                                      load-balancer-arn :member-name
                                      "LoadBalancerArn")
                                     (dnsname :target-type dnsname :member-name
                                      "DNSName")
                                     (canonical-hosted-zone-id :target-type
                                      canonical-hosted-zone-id :member-name
                                      "CanonicalHostedZoneId")
                                     (created-time :target-type created-time
                                      :member-name "CreatedTime")
                                     (load-balancer-name :target-type
                                      load-balancer-name :member-name
                                      "LoadBalancerName")
                                     (scheme :target-type
                                      load-balancer-scheme-enum :member-name
                                      "Scheme")
                                     (vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (state :target-type load-balancer-state
                                      :member-name "State")
                                     (type :target-type load-balancer-type-enum
                                      :member-name "Type")
                                     (availability-zones :target-type
                                      availability-zones :member-name
                                      "AvailabilityZones")
                                     (security-groups :target-type
                                      security-groups :member-name
                                      "SecurityGroups")
                                     (ip-address-type :target-type
                                      ip-address-type :member-name
                                      "IpAddressType")
                                     (customer-owned-ipv4pool :target-type
                                      customer-owned-ipv4pool :member-name
                                      "CustomerOwnedIpv4Pool")
                                     (enforce-security-group-inbound-rules-on-private-link-traffic
                                      :target-type
                                      enforce-security-group-inbound-rules-on-private-link-traffic
                                      :member-name
                                      "EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic")
                                     (enable-prefix-for-ipv6source-nat
                                      :target-type
                                      enable-prefix-for-ipv6source-nat-enum
                                      :member-name
                                      "EnablePrefixForIpv6SourceNat")
                                     (ipam-pools :target-type ipam-pools
                                      :member-name "IpamPools"))
                                    (:shape-name "LoadBalancer"))

(smithy/sdk/shapes:define-structure load-balancer-address common-lisp:nil
                                    ((ip-address :target-type ip-address
                                      :member-name "IpAddress")
                                     (allocation-id :target-type allocation-id
                                      :member-name "AllocationId")
                                     (private-ipv4address :target-type
                                      private-ipv4address :member-name
                                      "PrivateIPv4Address")
                                     (ipv6address :target-type ipv6address
                                      :member-name "IPv6Address"))
                                    (:shape-name "LoadBalancerAddress"))

(smithy/sdk/shapes:define-list load-balancer-addresses :member
                               load-balancer-address)

(smithy/sdk/shapes:define-type load-balancer-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list load-balancer-arns :member load-balancer-arn)

(smithy/sdk/shapes:define-structure load-balancer-attribute common-lisp:nil
                                    ((key :target-type
                                      load-balancer-attribute-key :member-name
                                      "Key")
                                     (value :target-type
                                      load-balancer-attribute-value
                                      :member-name "Value"))
                                    (:shape-name "LoadBalancerAttribute"))

(smithy/sdk/shapes:define-type load-balancer-attribute-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type load-balancer-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list load-balancer-attributes :member
                               load-balancer-attribute)

(smithy/sdk/shapes:define-type load-balancer-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list load-balancer-names :member load-balancer-name)

(smithy/sdk/shapes:define-error load-balancer-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "LoadBalancerNotFoundException")
                                (:error-name "LoadBalancerNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum load-balancer-scheme-enum
    common-lisp:nil
  (:internet-facing "internet-facing")
  (:internal "internal"))

(smithy/sdk/shapes:define-structure load-balancer-state common-lisp:nil
                                    ((code :target-type
                                      load-balancer-state-enum :member-name
                                      "Code")
                                     (reason :target-type state-reason
                                      :member-name "Reason"))
                                    (:shape-name "LoadBalancerState"))

(smithy/sdk/shapes:define-enum load-balancer-state-enum
    common-lisp:nil
  (:active "active")
  (:provisioning "provisioning")
  (:active-impaired "active_impaired")
  (:failed "failed"))

(smithy/sdk/shapes:define-enum load-balancer-type-enum
    common-lisp:nil
  (:application "application")
  (:network "network")
  (:gateway "gateway"))

(smithy/sdk/shapes:define-list load-balancers :member load-balancer)

(smithy/sdk/shapes:define-type location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type marker smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure matcher common-lisp:nil
                                    ((http-code :target-type http-code
                                      :member-name "HttpCode")
                                     (grpc-code :target-type grpc-code
                                      :member-name "GrpcCode"))
                                    (:shape-name "Matcher"))

(smithy/sdk/shapes:define-type max smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure minimum-load-balancer-capacity
                                    common-lisp:nil
                                    ((capacity-units :target-type
                                      capacity-units :member-name
                                      "CapacityUnits"))
                                    (:shape-name "MinimumLoadBalancerCapacity"))

(smithy/sdk/shapes:define-enum mitigation-in-effect-enum
    common-lisp:nil
  (:yes "yes")
  (:no "no"))

(smithy/sdk/shapes:define-type mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input modify-capacity-reservation-input
                                common-lisp:nil
                                ((load-balancer-arn :target-type
                                  load-balancer-arn :required common-lisp:t
                                  :member-name "LoadBalancerArn")
                                 (minimum-load-balancer-capacity :target-type
                                  minimum-load-balancer-capacity :member-name
                                  "MinimumLoadBalancerCapacity")
                                 (reset-capacity-reservation :target-type
                                  reset-capacity-reservation :member-name
                                  "ResetCapacityReservation"))
                                (:shape-name "ModifyCapacityReservationInput"))

(smithy/sdk/shapes:define-output modify-capacity-reservation-output
                                 common-lisp:nil
                                 ((last-modified-time :target-type
                                   last-modified-time :member-name
                                   "LastModifiedTime")
                                  (decrease-requests-remaining :target-type
                                   decrease-requests-remaining :member-name
                                   "DecreaseRequestsRemaining")
                                  (minimum-load-balancer-capacity :target-type
                                   minimum-load-balancer-capacity :member-name
                                   "MinimumLoadBalancerCapacity")
                                  (capacity-reservation-state :target-type
                                   zonal-capacity-reservation-states
                                   :member-name "CapacityReservationState"))
                                 (:shape-name
                                  "ModifyCapacityReservationOutput"))

(smithy/sdk/shapes:define-input modify-ip-pools-input common-lisp:nil
                                ((load-balancer-arn :target-type
                                  load-balancer-arn :required common-lisp:t
                                  :member-name "LoadBalancerArn")
                                 (ipam-pools :target-type ipam-pools
                                  :member-name "IpamPools")
                                 (remove-ipam-pools :target-type
                                  remove-ipam-pools :member-name
                                  "RemoveIpamPools"))
                                (:shape-name "ModifyIpPoolsInput"))

(smithy/sdk/shapes:define-output modify-ip-pools-output common-lisp:nil
                                 ((ipam-pools :target-type ipam-pools
                                   :member-name "IpamPools"))
                                 (:shape-name "ModifyIpPoolsOutput"))

(smithy/sdk/shapes:define-input modify-listener-attributes-input
                                common-lisp:nil
                                ((listener-arn :target-type listener-arn
                                  :required common-lisp:t :member-name
                                  "ListenerArn")
                                 (attributes :target-type listener-attributes
                                  :required common-lisp:t :member-name
                                  "Attributes"))
                                (:shape-name "ModifyListenerAttributesInput"))

(smithy/sdk/shapes:define-output modify-listener-attributes-output
                                 common-lisp:nil
                                 ((attributes :target-type listener-attributes
                                   :member-name "Attributes"))
                                 (:shape-name "ModifyListenerAttributesOutput"))

(smithy/sdk/shapes:define-input modify-listener-input common-lisp:nil
                                ((listener-arn :target-type listener-arn
                                  :required common-lisp:t :member-name
                                  "ListenerArn")
                                 (port :target-type port :member-name "Port")
                                 (protocol :target-type protocol-enum
                                  :member-name "Protocol")
                                 (ssl-policy :target-type ssl-policy-name
                                  :member-name "SslPolicy")
                                 (certificates :target-type certificate-list
                                  :member-name "Certificates")
                                 (default-actions :target-type actions
                                  :member-name "DefaultActions")
                                 (alpn-policy :target-type alpn-policy-name
                                  :member-name "AlpnPolicy")
                                 (mutual-authentication :target-type
                                  mutual-authentication-attributes :member-name
                                  "MutualAuthentication"))
                                (:shape-name "ModifyListenerInput"))

(smithy/sdk/shapes:define-output modify-listener-output common-lisp:nil
                                 ((listeners :target-type listeners
                                   :member-name "Listeners"))
                                 (:shape-name "ModifyListenerOutput"))

(smithy/sdk/shapes:define-input modify-load-balancer-attributes-input
                                common-lisp:nil
                                ((load-balancer-arn :target-type
                                  load-balancer-arn :required common-lisp:t
                                  :member-name "LoadBalancerArn")
                                 (attributes :target-type
                                  load-balancer-attributes :required
                                  common-lisp:t :member-name "Attributes"))
                                (:shape-name
                                 "ModifyLoadBalancerAttributesInput"))

(smithy/sdk/shapes:define-output modify-load-balancer-attributes-output
                                 common-lisp:nil
                                 ((attributes :target-type
                                   load-balancer-attributes :member-name
                                   "Attributes"))
                                 (:shape-name
                                  "ModifyLoadBalancerAttributesOutput"))

(smithy/sdk/shapes:define-input modify-rule-input common-lisp:nil
                                ((rule-arn :target-type rule-arn :required
                                  common-lisp:t :member-name "RuleArn")
                                 (conditions :target-type rule-condition-list
                                  :member-name "Conditions")
                                 (actions :target-type actions :member-name
                                  "Actions"))
                                (:shape-name "ModifyRuleInput"))

(smithy/sdk/shapes:define-output modify-rule-output common-lisp:nil
                                 ((rules :target-type rules :member-name
                                   "Rules"))
                                 (:shape-name "ModifyRuleOutput"))

(smithy/sdk/shapes:define-input modify-target-group-attributes-input
                                common-lisp:nil
                                ((target-group-arn :target-type
                                  target-group-arn :required common-lisp:t
                                  :member-name "TargetGroupArn")
                                 (attributes :target-type
                                  target-group-attributes :required
                                  common-lisp:t :member-name "Attributes"))
                                (:shape-name
                                 "ModifyTargetGroupAttributesInput"))

(smithy/sdk/shapes:define-output modify-target-group-attributes-output
                                 common-lisp:nil
                                 ((attributes :target-type
                                   target-group-attributes :member-name
                                   "Attributes"))
                                 (:shape-name
                                  "ModifyTargetGroupAttributesOutput"))

(smithy/sdk/shapes:define-input modify-target-group-input common-lisp:nil
                                ((target-group-arn :target-type
                                  target-group-arn :required common-lisp:t
                                  :member-name "TargetGroupArn")
                                 (health-check-protocol :target-type
                                  protocol-enum :member-name
                                  "HealthCheckProtocol")
                                 (health-check-port :target-type
                                  health-check-port :member-name
                                  "HealthCheckPort")
                                 (health-check-path :target-type path
                                  :member-name "HealthCheckPath")
                                 (health-check-enabled :target-type
                                  health-check-enabled :member-name
                                  "HealthCheckEnabled")
                                 (health-check-interval-seconds :target-type
                                  health-check-interval-seconds :member-name
                                  "HealthCheckIntervalSeconds")
                                 (health-check-timeout-seconds :target-type
                                  health-check-timeout-seconds :member-name
                                  "HealthCheckTimeoutSeconds")
                                 (healthy-threshold-count :target-type
                                  health-check-threshold-count :member-name
                                  "HealthyThresholdCount")
                                 (unhealthy-threshold-count :target-type
                                  health-check-threshold-count :member-name
                                  "UnhealthyThresholdCount")
                                 (matcher :target-type matcher :member-name
                                  "Matcher"))
                                (:shape-name "ModifyTargetGroupInput"))

(smithy/sdk/shapes:define-output modify-target-group-output common-lisp:nil
                                 ((target-groups :target-type target-groups
                                   :member-name "TargetGroups"))
                                 (:shape-name "ModifyTargetGroupOutput"))

(smithy/sdk/shapes:define-input modify-trust-store-input common-lisp:nil
                                ((trust-store-arn :target-type trust-store-arn
                                  :required common-lisp:t :member-name
                                  "TrustStoreArn")
                                 (ca-certificates-bundle-s3bucket :target-type
                                  s3bucket :required common-lisp:t :member-name
                                  "CaCertificatesBundleS3Bucket")
                                 (ca-certificates-bundle-s3key :target-type
                                  s3key :required common-lisp:t :member-name
                                  "CaCertificatesBundleS3Key")
                                 (ca-certificates-bundle-s3object-version
                                  :target-type s3object-version :member-name
                                  "CaCertificatesBundleS3ObjectVersion"))
                                (:shape-name "ModifyTrustStoreInput"))

(smithy/sdk/shapes:define-output modify-trust-store-output common-lisp:nil
                                 ((trust-stores :target-type trust-stores
                                   :member-name "TrustStores"))
                                 (:shape-name "ModifyTrustStoreOutput"))

(smithy/sdk/shapes:define-structure mutual-authentication-attributes
                                    common-lisp:nil
                                    ((mode :target-type mode :member-name
                                      "Mode")
                                     (trust-store-arn :target-type
                                      trust-store-arn :member-name
                                      "TrustStoreArn")
                                     (ignore-client-certificate-expiry
                                      :target-type
                                      ignore-client-certificate-expiry
                                      :member-name
                                      "IgnoreClientCertificateExpiry")
                                     (trust-store-association-status
                                      :target-type
                                      trust-store-association-status-enum
                                      :member-name
                                      "TrustStoreAssociationStatus")
                                     (advertise-trust-store-ca-names
                                      :target-type
                                      advertise-trust-store-ca-names-enum
                                      :member-name
                                      "AdvertiseTrustStoreCaNames"))
                                    (:shape-name
                                     "MutualAuthenticationAttributes"))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type number-of-ca-certificates
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type number-of-revoked-entries
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error operation-not-permitted-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "OperationNotPermittedException")
                                (:error-name "OperationNotPermitted")
                                (:error-code 400))

(smithy/sdk/shapes:define-type outpost-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type page-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure path-pattern-condition-config
                                    common-lisp:nil
                                    ((values :target-type list-of-string
                                      :member-name "Values"))
                                    (:shape-name "PathPatternConditionConfig"))

(smithy/sdk/shapes:define-type policy smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error prior-request-not-complete-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name
                                 "PriorRequestNotCompleteException")
                                (:error-name "PriorRequestNotComplete")
                                (:error-code 429))

(smithy/sdk/shapes:define-error priority-in-use-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "PriorityInUseException")
                                (:error-name "PriorityInUse") (:error-code 400))

(smithy/sdk/shapes:define-type private-ipv4address
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum protocol-enum
    common-lisp:nil
  (:http "HTTP")
  (:https "HTTPS")
  (:tcp "TCP")
  (:tls "TLS")
  (:udp "UDP")
  (:tcp-udp "TCP_UDP")
  (:geneve "GENEVE"))

(smithy/sdk/shapes:define-type protocol-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure query-string-condition-config
                                    common-lisp:nil
                                    ((values :target-type
                                      query-string-key-value-pair-list
                                      :member-name "Values"))
                                    (:shape-name "QueryStringConditionConfig"))

(smithy/sdk/shapes:define-structure query-string-key-value-pair common-lisp:nil
                                    ((key :target-type string-value
                                      :member-name "Key")
                                     (value :target-type string-value
                                      :member-name "Value"))
                                    (:shape-name "QueryStringKeyValuePair"))

(smithy/sdk/shapes:define-list query-string-key-value-pair-list :member
                               query-string-key-value-pair)

(smithy/sdk/shapes:define-structure redirect-action-config common-lisp:nil
                                    ((protocol :target-type
                                      redirect-action-protocol :member-name
                                      "Protocol")
                                     (port :target-type redirect-action-port
                                      :member-name "Port")
                                     (host :target-type redirect-action-host
                                      :member-name "Host")
                                     (path :target-type redirect-action-path
                                      :member-name "Path")
                                     (query :target-type redirect-action-query
                                      :member-name "Query")
                                     (status-code :target-type
                                      redirect-action-status-code-enum
                                      :required common-lisp:t :member-name
                                      "StatusCode"))
                                    (:shape-name "RedirectActionConfig"))

(smithy/sdk/shapes:define-type redirect-action-host
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type redirect-action-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type redirect-action-port
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type redirect-action-protocol
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type redirect-action-query
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum redirect-action-status-code-enum
    common-lisp:nil
  (:http-301 "HTTP_301")
  (:http-302 "HTTP_302"))

(smithy/sdk/shapes:define-input register-targets-input common-lisp:nil
                                ((target-group-arn :target-type
                                  target-group-arn :required common-lisp:t
                                  :member-name "TargetGroupArn")
                                 (targets :target-type target-descriptions
                                  :required common-lisp:t :member-name
                                  "Targets"))
                                (:shape-name "RegisterTargetsInput"))

(smithy/sdk/shapes:define-output register-targets-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RegisterTargetsOutput"))

(smithy/sdk/shapes:define-enum remove-ipam-pool-enum
    common-lisp:nil
  (:ipv4 "ipv4"))

(smithy/sdk/shapes:define-list remove-ipam-pools :member remove-ipam-pool-enum)

(smithy/sdk/shapes:define-input remove-listener-certificates-input
                                common-lisp:nil
                                ((listener-arn :target-type listener-arn
                                  :required common-lisp:t :member-name
                                  "ListenerArn")
                                 (certificates :target-type certificate-list
                                  :required common-lisp:t :member-name
                                  "Certificates"))
                                (:shape-name "RemoveListenerCertificatesInput"))

(smithy/sdk/shapes:define-output remove-listener-certificates-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "RemoveListenerCertificatesOutput"))

(smithy/sdk/shapes:define-input remove-tags-input common-lisp:nil
                                ((resource-arns :target-type resource-arns
                                  :required common-lisp:t :member-name
                                  "ResourceArns")
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "RemoveTagsInput"))

(smithy/sdk/shapes:define-output remove-tags-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RemoveTagsOutput"))

(smithy/sdk/shapes:define-input remove-trust-store-revocations-input
                                common-lisp:nil
                                ((trust-store-arn :target-type trust-store-arn
                                  :required common-lisp:t :member-name
                                  "TrustStoreArn")
                                 (revocation-ids :target-type revocation-ids
                                  :required common-lisp:t :member-name
                                  "RevocationIds"))
                                (:shape-name
                                 "RemoveTrustStoreRevocationsInput"))

(smithy/sdk/shapes:define-output remove-trust-store-revocations-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "RemoveTrustStoreRevocationsOutput"))

(smithy/sdk/shapes:define-type reset-capacity-reservation
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-arns :member resource-arn)

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "ResourceInUseException")
                                (:error-name "ResourceInUse") (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-name "ResourceNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure revocation-content common-lisp:nil
                                    ((s3bucket :target-type s3bucket
                                      :member-name "S3Bucket")
                                     (s3key :target-type s3key :member-name
                                      "S3Key")
                                     (s3object-version :target-type
                                      s3object-version :member-name
                                      "S3ObjectVersion")
                                     (revocation-type :target-type
                                      revocation-type :member-name
                                      "RevocationType"))
                                    (:shape-name "RevocationContent"))

(smithy/sdk/shapes:define-error revocation-content-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name
                                 "RevocationContentNotFoundException")
                                (:error-name "RevocationContentNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-list revocation-contents :member revocation-content)

(smithy/sdk/shapes:define-type revocation-id smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error revocation-id-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "RevocationIdNotFoundException")
                                (:error-name "RevocationIdNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-list revocation-ids :member revocation-id)

(smithy/sdk/shapes:define-enum revocation-type
    common-lisp:nil
  (:crl "CRL"))

(smithy/sdk/shapes:define-structure rule common-lisp:nil
                                    ((rule-arn :target-type rule-arn
                                      :member-name "RuleArn")
                                     (priority :target-type string :member-name
                                      "Priority")
                                     (conditions :target-type
                                      rule-condition-list :member-name
                                      "Conditions")
                                     (actions :target-type actions :member-name
                                      "Actions")
                                     (is-default :target-type is-default
                                      :member-name "IsDefault"))
                                    (:shape-name "Rule"))

(smithy/sdk/shapes:define-type rule-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list rule-arns :member rule-arn)

(smithy/sdk/shapes:define-structure rule-condition common-lisp:nil
                                    ((field :target-type condition-field-name
                                      :member-name "Field")
                                     (values :target-type list-of-string
                                      :member-name "Values")
                                     (host-header-config :target-type
                                      host-header-condition-config :member-name
                                      "HostHeaderConfig")
                                     (path-pattern-config :target-type
                                      path-pattern-condition-config
                                      :member-name "PathPatternConfig")
                                     (http-header-config :target-type
                                      http-header-condition-config :member-name
                                      "HttpHeaderConfig")
                                     (query-string-config :target-type
                                      query-string-condition-config
                                      :member-name "QueryStringConfig")
                                     (http-request-method-config :target-type
                                      http-request-method-condition-config
                                      :member-name "HttpRequestMethodConfig")
                                     (source-ip-config :target-type
                                      source-ip-condition-config :member-name
                                      "SourceIpConfig"))
                                    (:shape-name "RuleCondition"))

(smithy/sdk/shapes:define-list rule-condition-list :member rule-condition)

(smithy/sdk/shapes:define-error rule-not-found-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "RuleNotFoundException")
                                (:error-name "RuleNotFound") (:error-code 400))

(smithy/sdk/shapes:define-type rule-priority smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list rule-priority-list :member rule-priority-pair)

(smithy/sdk/shapes:define-structure rule-priority-pair common-lisp:nil
                                    ((rule-arn :target-type rule-arn
                                      :member-name "RuleArn")
                                     (priority :target-type rule-priority
                                      :member-name "Priority"))
                                    (:shape-name "RulePriorityPair"))

(smithy/sdk/shapes:define-list rules :member rule)

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3object-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error sslpolicy-not-found-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "SSLPolicyNotFoundException")
                                (:error-name "SSLPolicyNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-groups :member security-group-id)

(smithy/sdk/shapes:define-input set-ip-address-type-input common-lisp:nil
                                ((load-balancer-arn :target-type
                                  load-balancer-arn :required common-lisp:t
                                  :member-name "LoadBalancerArn")
                                 (ip-address-type :target-type ip-address-type
                                  :required common-lisp:t :member-name
                                  "IpAddressType"))
                                (:shape-name "SetIpAddressTypeInput"))

(smithy/sdk/shapes:define-output set-ip-address-type-output common-lisp:nil
                                 ((ip-address-type :target-type ip-address-type
                                   :member-name "IpAddressType"))
                                 (:shape-name "SetIpAddressTypeOutput"))

(smithy/sdk/shapes:define-input set-rule-priorities-input common-lisp:nil
                                ((rule-priorities :target-type
                                  rule-priority-list :required common-lisp:t
                                  :member-name "RulePriorities"))
                                (:shape-name "SetRulePrioritiesInput"))

(smithy/sdk/shapes:define-output set-rule-priorities-output common-lisp:nil
                                 ((rules :target-type rules :member-name
                                   "Rules"))
                                 (:shape-name "SetRulePrioritiesOutput"))

(smithy/sdk/shapes:define-input set-security-groups-input common-lisp:nil
                                ((load-balancer-arn :target-type
                                  load-balancer-arn :required common-lisp:t
                                  :member-name "LoadBalancerArn")
                                 (security-groups :target-type security-groups
                                  :required common-lisp:t :member-name
                                  "SecurityGroups")
                                 (enforce-security-group-inbound-rules-on-private-link-traffic
                                  :target-type
                                  enforce-security-group-inbound-rules-on-private-link-traffic-enum
                                  :member-name
                                  "EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic"))
                                (:shape-name "SetSecurityGroupsInput"))

(smithy/sdk/shapes:define-output set-security-groups-output common-lisp:nil
                                 ((security-group-ids :target-type
                                   security-groups :member-name
                                   "SecurityGroupIds")
                                  (enforce-security-group-inbound-rules-on-private-link-traffic
                                   :target-type
                                   enforce-security-group-inbound-rules-on-private-link-traffic-enum
                                   :member-name
                                   "EnforceSecurityGroupInboundRulesOnPrivateLinkTraffic"))
                                 (:shape-name "SetSecurityGroupsOutput"))

(smithy/sdk/shapes:define-input set-subnets-input common-lisp:nil
                                ((load-balancer-arn :target-type
                                  load-balancer-arn :required common-lisp:t
                                  :member-name "LoadBalancerArn")
                                 (subnets :target-type subnets :member-name
                                  "Subnets")
                                 (subnet-mappings :target-type subnet-mappings
                                  :member-name "SubnetMappings")
                                 (ip-address-type :target-type ip-address-type
                                  :member-name "IpAddressType")
                                 (enable-prefix-for-ipv6source-nat :target-type
                                  enable-prefix-for-ipv6source-nat-enum
                                  :member-name "EnablePrefixForIpv6SourceNat"))
                                (:shape-name "SetSubnetsInput"))

(smithy/sdk/shapes:define-output set-subnets-output common-lisp:nil
                                 ((availability-zones :target-type
                                   availability-zones :member-name
                                   "AvailabilityZones")
                                  (ip-address-type :target-type ip-address-type
                                   :member-name "IpAddressType")
                                  (enable-prefix-for-ipv6source-nat
                                   :target-type
                                   enable-prefix-for-ipv6source-nat-enum
                                   :member-name
                                   "EnablePrefixForIpv6SourceNat"))
                                 (:shape-name "SetSubnetsOutput"))

(smithy/sdk/shapes:define-structure source-ip-condition-config common-lisp:nil
                                    ((values :target-type list-of-string
                                      :member-name "Values"))
                                    (:shape-name "SourceIpConditionConfig"))

(smithy/sdk/shapes:define-type source-nat-ipv6prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list source-nat-ipv6prefixes :member
                               source-nat-ipv6prefix)

(smithy/sdk/shapes:define-list ssl-policies :member ssl-policy)

(smithy/sdk/shapes:define-structure ssl-policy common-lisp:nil
                                    ((ssl-protocols :target-type ssl-protocols
                                      :member-name "SslProtocols")
                                     (ciphers :target-type ciphers :member-name
                                      "Ciphers")
                                     (name :target-type ssl-policy-name
                                      :member-name "Name")
                                     (supported-load-balancer-types
                                      :target-type list-of-string :member-name
                                      "SupportedLoadBalancerTypes"))
                                    (:shape-name "SslPolicy"))

(smithy/sdk/shapes:define-type ssl-policy-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ssl-policy-names :member ssl-policy-name)

(smithy/sdk/shapes:define-type ssl-protocol smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ssl-protocols :member ssl-protocol)

(smithy/sdk/shapes:define-type state-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure subnet-mapping common-lisp:nil
                                    ((subnet-id :target-type subnet-id
                                      :member-name "SubnetId")
                                     (allocation-id :target-type allocation-id
                                      :member-name "AllocationId")
                                     (private-ipv4address :target-type
                                      private-ipv4address :member-name
                                      "PrivateIPv4Address")
                                     (ipv6address :target-type ipv6address
                                      :member-name "IPv6Address")
                                     (source-nat-ipv6prefix :target-type
                                      source-nat-ipv6prefix :member-name
                                      "SourceNatIpv6Prefix"))
                                    (:shape-name "SubnetMapping"))

(smithy/sdk/shapes:define-list subnet-mappings :member subnet-mapping)

(smithy/sdk/shapes:define-error subnet-not-found-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "SubnetNotFoundException")
                                (:error-name "SubnetNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-list subnets :member subnet-id)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-structure tag-description common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "ResourceArn")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "TagDescription"))

(smithy/sdk/shapes:define-list tag-descriptions :member tag-description)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum target-administrative-override-reason-enum
    common-lisp:nil
  (:internal-error "AdministrativeOverride.Unknown")
  (:no-override-engaged "AdministrativeOverride.NoOverride")
  (:zonal-shift-engaged "AdministrativeOverride.ZonalShiftActive")
  (:zonal-shift-delegated-to-dns
   "AdministrativeOverride.ZonalShiftDelegatedToDns"))

(smithy/sdk/shapes:define-enum target-administrative-override-state-enum
    common-lisp:nil
  (:unknown "unknown")
  (:no-override "no_override")
  (:zonal-shift-active "zonal_shift_active")
  (:zonal-shift-delegated-to-dns "zonal_shift_delegated_to_dns"))

(smithy/sdk/shapes:define-structure target-description common-lisp:nil
                                    ((id :target-type target-id :required
                                      common-lisp:t :member-name "Id")
                                     (port :target-type port :member-name
                                      "Port")
                                     (availability-zone :target-type zone-name
                                      :member-name "AvailabilityZone"))
                                    (:shape-name "TargetDescription"))

(smithy/sdk/shapes:define-list target-descriptions :member target-description)

(smithy/sdk/shapes:define-structure target-group common-lisp:nil
                                    ((target-group-arn :target-type
                                      target-group-arn :member-name
                                      "TargetGroupArn")
                                     (target-group-name :target-type
                                      target-group-name :member-name
                                      "TargetGroupName")
                                     (protocol :target-type protocol-enum
                                      :member-name "Protocol")
                                     (port :target-type port :member-name
                                      "Port")
                                     (vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (health-check-protocol :target-type
                                      protocol-enum :member-name
                                      "HealthCheckProtocol")
                                     (health-check-port :target-type
                                      health-check-port :member-name
                                      "HealthCheckPort")
                                     (health-check-enabled :target-type
                                      health-check-enabled :member-name
                                      "HealthCheckEnabled")
                                     (health-check-interval-seconds
                                      :target-type
                                      health-check-interval-seconds
                                      :member-name
                                      "HealthCheckIntervalSeconds")
                                     (health-check-timeout-seconds :target-type
                                      health-check-timeout-seconds :member-name
                                      "HealthCheckTimeoutSeconds")
                                     (healthy-threshold-count :target-type
                                      health-check-threshold-count :member-name
                                      "HealthyThresholdCount")
                                     (unhealthy-threshold-count :target-type
                                      health-check-threshold-count :member-name
                                      "UnhealthyThresholdCount")
                                     (health-check-path :target-type path
                                      :member-name "HealthCheckPath")
                                     (matcher :target-type matcher :member-name
                                      "Matcher")
                                     (load-balancer-arns :target-type
                                      load-balancer-arns :member-name
                                      "LoadBalancerArns")
                                     (target-type :target-type target-type-enum
                                      :member-name "TargetType")
                                     (protocol-version :target-type
                                      protocol-version :member-name
                                      "ProtocolVersion")
                                     (ip-address-type :target-type
                                      target-group-ip-address-type-enum
                                      :member-name "IpAddressType"))
                                    (:shape-name "TargetGroup"))

(smithy/sdk/shapes:define-type target-group-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-group-arns :member target-group-arn)

(smithy/sdk/shapes:define-error target-group-association-limit-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name
                                 "TargetGroupAssociationLimitException")
                                (:error-name "TargetGroupAssociationLimit")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure target-group-attribute common-lisp:nil
                                    ((key :target-type
                                      target-group-attribute-key :member-name
                                      "Key")
                                     (value :target-type
                                      target-group-attribute-value :member-name
                                      "Value"))
                                    (:shape-name "TargetGroupAttribute"))

(smithy/sdk/shapes:define-type target-group-attribute-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-group-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-group-attributes :member
                               target-group-attribute)

(smithy/sdk/shapes:define-enum target-group-ip-address-type-enum
    common-lisp:nil
  (:ipv4 "ipv4")
  (:ipv6 "ipv6"))

(smithy/sdk/shapes:define-list target-group-list :member target-group-tuple)

(smithy/sdk/shapes:define-type target-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-group-names :member target-group-name)

(smithy/sdk/shapes:define-error target-group-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "TargetGroupNotFoundException")
                                (:error-name "TargetGroupNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure target-group-stickiness-config
                                    common-lisp:nil
                                    ((enabled :target-type
                                      target-group-stickiness-enabled
                                      :member-name "Enabled")
                                     (duration-seconds :target-type
                                      target-group-stickiness-duration-seconds
                                      :member-name "DurationSeconds"))
                                    (:shape-name "TargetGroupStickinessConfig"))

(smithy/sdk/shapes:define-type target-group-stickiness-duration-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type target-group-stickiness-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure target-group-tuple common-lisp:nil
                                    ((target-group-arn :target-type
                                      target-group-arn :member-name
                                      "TargetGroupArn")
                                     (weight :target-type target-group-weight
                                      :member-name "Weight"))
                                    (:shape-name "TargetGroupTuple"))

(smithy/sdk/shapes:define-type target-group-weight
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list target-groups :member target-group)

(smithy/sdk/shapes:define-structure target-health common-lisp:nil
                                    ((state :target-type
                                      target-health-state-enum :member-name
                                      "State")
                                     (reason :target-type
                                      target-health-reason-enum :member-name
                                      "Reason")
                                     (description :target-type description
                                      :member-name "Description"))
                                    (:shape-name "TargetHealth"))

(smithy/sdk/shapes:define-structure target-health-description common-lisp:nil
                                    ((target :target-type target-description
                                      :member-name "Target")
                                     (health-check-port :target-type
                                      health-check-port :member-name
                                      "HealthCheckPort")
                                     (target-health :target-type target-health
                                      :member-name "TargetHealth")
                                     (anomaly-detection :target-type
                                      anomaly-detection :member-name
                                      "AnomalyDetection")
                                     (administrative-override :target-type
                                      administrative-override :member-name
                                      "AdministrativeOverride"))
                                    (:shape-name "TargetHealthDescription"))

(smithy/sdk/shapes:define-list target-health-descriptions :member
                               target-health-description)

(smithy/sdk/shapes:define-enum target-health-reason-enum
    common-lisp:nil
  (:registration-in-progress "Elb.RegistrationInProgress")
  (:initial-health-checking "Elb.InitialHealthChecking")
  (:response-code-mismatch "Target.ResponseCodeMismatch")
  (:timeout "Target.Timeout")
  (:failed-health-checks "Target.FailedHealthChecks")
  (:not-registered "Target.NotRegistered")
  (:not-in-use "Target.NotInUse")
  (:deregistration-in-progress "Target.DeregistrationInProgress")
  (:invalid-state "Target.InvalidState")
  (:ip-unusable "Target.IpUnusable")
  (:health-check-disabled "Target.HealthCheckDisabled")
  (:internal-error "Elb.InternalError"))

(smithy/sdk/shapes:define-enum target-health-state-enum
    common-lisp:nil
  (:initial "initial")
  (:healthy "healthy")
  (:unhealthy "unhealthy")
  (:unhealthy-draining "unhealthy.draining")
  (:unused "unused")
  (:draining "draining")
  (:unavailable "unavailable"))

(smithy/sdk/shapes:define-type target-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum target-type-enum
    common-lisp:nil
  (:instance "instance")
  (:ip "ip")
  (:lambda "lambda")
  (:alb "alb"))

(smithy/sdk/shapes:define-error too-many-actions-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "TooManyActionsException")
                                (:error-name "TooManyActions")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-certificates-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "TooManyCertificatesException")
                                (:error-name "TooManyCertificates")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-listeners-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "TooManyListenersException")
                                (:error-name "TooManyListeners")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-load-balancers-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "TooManyLoadBalancersException")
                                (:error-name "TooManyLoadBalancers")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-registrations-for-target-id-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name
                                 "TooManyRegistrationsForTargetIdException")
                                (:error-name "TooManyRegistrationsForTargetId")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-rules-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "TooManyRulesException")
                                (:error-name "TooManyRules") (:error-code 400))

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "TooManyTagsException")
                                (:error-name "TooManyTags") (:error-code 400))

(smithy/sdk/shapes:define-error too-many-target-groups-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "TooManyTargetGroupsException")
                                (:error-name "TooManyTargetGroups")
                                (:error-code 400))

(smithy/sdk/shapes:define-error too-many-targets-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "TooManyTargetsException")
                                (:error-name "TooManyTargets")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 too-many-trust-store-revocation-entries-exception common-lisp:nil
 ((message :target-type error-description :member-name "Message"))
 (:shape-name "TooManyTrustStoreRevocationEntriesException")
 (:error-name "TooManyTrustStoreRevocationEntries") (:error-code 400))

(smithy/sdk/shapes:define-error too-many-trust-stores-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "TooManyTrustStoresException")
                                (:error-name "TooManyTrustStores")
                                (:error-code 400))

(smithy/sdk/shapes:define-error
 too-many-unique-target-groups-per-load-balancer-exception common-lisp:nil
 ((message :target-type error-description :member-name "Message"))
 (:shape-name "TooManyUniqueTargetGroupsPerLoadBalancerException")
 (:error-name "TooManyUniqueTargetGroupsPerLoadBalancer") (:error-code 400))

(smithy/sdk/shapes:define-type total-revoked-entries
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure trust-store common-lisp:nil
                                    ((name :target-type trust-store-name
                                      :member-name "Name")
                                     (trust-store-arn :target-type
                                      trust-store-arn :member-name
                                      "TrustStoreArn")
                                     (status :target-type trust-store-status
                                      :member-name "Status")
                                     (number-of-ca-certificates :target-type
                                      number-of-ca-certificates :member-name
                                      "NumberOfCaCertificates")
                                     (total-revoked-entries :target-type
                                      total-revoked-entries :member-name
                                      "TotalRevokedEntries"))
                                    (:shape-name "TrustStore"))

(smithy/sdk/shapes:define-type trust-store-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list trust-store-arns :member trust-store-arn)

(smithy/sdk/shapes:define-structure trust-store-association common-lisp:nil
                                    ((resource-arn :target-type
                                      trust-store-association-resource-arn
                                      :member-name "ResourceArn"))
                                    (:shape-name "TrustStoreAssociation"))

(smithy/sdk/shapes:define-error trust-store-association-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name
                                 "TrustStoreAssociationNotFoundException")
                                (:error-name "AssociationNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-type trust-store-association-resource-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum trust-store-association-status-enum
    common-lisp:nil
  (:active "active")
  (:removed "removed"))

(smithy/sdk/shapes:define-list trust-store-associations :member
                               trust-store-association)

(smithy/sdk/shapes:define-error trust-store-in-use-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "TrustStoreInUseException")
                                (:error-name "TrustStoreInUse")
                                (:error-code 400))

(smithy/sdk/shapes:define-type trust-store-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list trust-store-names :member trust-store-name)

(smithy/sdk/shapes:define-error trust-store-not-found-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "TrustStoreNotFoundException")
                                (:error-name "TrustStoreNotFound")
                                (:error-code 400))

(smithy/sdk/shapes:define-error trust-store-not-ready-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "TrustStoreNotReadyException")
                                (:error-name "TrustStoreNotReady")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure trust-store-revocation common-lisp:nil
                                    ((trust-store-arn :target-type
                                      trust-store-arn :member-name
                                      "TrustStoreArn")
                                     (revocation-id :target-type revocation-id
                                      :member-name "RevocationId")
                                     (revocation-type :target-type
                                      revocation-type :member-name
                                      "RevocationType")
                                     (number-of-revoked-entries :target-type
                                      number-of-revoked-entries :member-name
                                      "NumberOfRevokedEntries"))
                                    (:shape-name "TrustStoreRevocation"))

(smithy/sdk/shapes:define-list trust-store-revocations :member
                               trust-store-revocation)

(smithy/sdk/shapes:define-enum trust-store-status
    common-lisp:nil
  (:active "ACTIVE")
  (:creating "CREATING"))

(smithy/sdk/shapes:define-list trust-stores :member trust-store)

(smithy/sdk/shapes:define-error unsupported-protocol-exception common-lisp:nil
                                ((message :target-type error-description
                                  :member-name "Message"))
                                (:shape-name "UnsupportedProtocolException")
                                (:error-name "UnsupportedProtocol")
                                (:error-code 400))

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure zonal-capacity-reservation-state
                                    common-lisp:nil
                                    ((state :target-type
                                      capacity-reservation-status :member-name
                                      "State")
                                     (availability-zone :target-type zone-name
                                      :member-name "AvailabilityZone")
                                     (effective-capacity-units :target-type
                                      capacity-units-double :member-name
                                      "EffectiveCapacityUnits"))
                                    (:shape-name
                                     "ZonalCapacityReservationState"))

(smithy/sdk/shapes:define-list zonal-capacity-reservation-states :member
                               zonal-capacity-reservation-state)

(smithy/sdk/shapes:define-type zone-name smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation add-listener-certificates :shape-name
                                       "AddListenerCertificates" :input
                                       add-listener-certificates-input :output
                                       add-listener-certificates-output :errors
                                       (certificate-not-found-exception
                                        listener-not-found-exception
                                        too-many-certificates-exception))

(smithy/sdk/operation:define-operation add-tags :shape-name "AddTags" :input
                                       add-tags-input :output add-tags-output
                                       :errors
                                       (duplicate-tag-keys-exception
                                        listener-not-found-exception
                                        load-balancer-not-found-exception
                                        rule-not-found-exception
                                        target-group-not-found-exception
                                        too-many-tags-exception
                                        trust-store-not-found-exception))

(smithy/sdk/operation:define-operation add-trust-store-revocations :shape-name
                                       "AddTrustStoreRevocations" :input
                                       add-trust-store-revocations-input
                                       :output
                                       add-trust-store-revocations-output
                                       :errors
                                       (invalid-revocation-content-exception
                                        revocation-content-not-found-exception
                                        too-many-trust-store-revocation-entries-exception
                                        trust-store-not-found-exception))

(smithy/sdk/operation:define-operation create-listener :shape-name
                                       "CreateListener" :input
                                       create-listener-input :output
                                       create-listener-output :errors
                                       (alpnpolicy-not-supported-exception
                                        certificate-not-found-exception
                                        duplicate-listener-exception
                                        incompatible-protocols-exception
                                        invalid-configuration-request-exception
                                        invalid-load-balancer-action-exception
                                        load-balancer-not-found-exception
                                        sslpolicy-not-found-exception
                                        target-group-association-limit-exception
                                        target-group-not-found-exception
                                        too-many-actions-exception
                                        too-many-certificates-exception
                                        too-many-listeners-exception
                                        too-many-registrations-for-target-id-exception
                                        too-many-tags-exception
                                        too-many-targets-exception
                                        too-many-unique-target-groups-per-load-balancer-exception
                                        trust-store-not-found-exception
                                        trust-store-not-ready-exception
                                        unsupported-protocol-exception))

(smithy/sdk/operation:define-operation create-load-balancer :shape-name
                                       "CreateLoadBalancer" :input
                                       create-load-balancer-input :output
                                       create-load-balancer-output :errors
                                       (allocation-id-not-found-exception
                                        availability-zone-not-supported-exception
                                        duplicate-load-balancer-name-exception
                                        duplicate-tag-keys-exception
                                        invalid-configuration-request-exception
                                        invalid-scheme-exception
                                        invalid-security-group-exception
                                        invalid-subnet-exception
                                        operation-not-permitted-exception
                                        resource-in-use-exception
                                        subnet-not-found-exception
                                        too-many-load-balancers-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-rule :shape-name "CreateRule"
                                       :input create-rule-input :output
                                       create-rule-output :errors
                                       (incompatible-protocols-exception
                                        invalid-configuration-request-exception
                                        invalid-load-balancer-action-exception
                                        listener-not-found-exception
                                        priority-in-use-exception
                                        target-group-association-limit-exception
                                        target-group-not-found-exception
                                        too-many-actions-exception
                                        too-many-registrations-for-target-id-exception
                                        too-many-rules-exception
                                        too-many-tags-exception
                                        too-many-target-groups-exception
                                        too-many-targets-exception
                                        too-many-unique-target-groups-per-load-balancer-exception
                                        unsupported-protocol-exception))

(smithy/sdk/operation:define-operation create-target-group :shape-name
                                       "CreateTargetGroup" :input
                                       create-target-group-input :output
                                       create-target-group-output :errors
                                       (duplicate-target-group-name-exception
                                        invalid-configuration-request-exception
                                        too-many-tags-exception
                                        too-many-target-groups-exception))

(smithy/sdk/operation:define-operation create-trust-store :shape-name
                                       "CreateTrustStore" :input
                                       create-trust-store-input :output
                                       create-trust-store-output :errors
                                       (ca-certificates-bundle-not-found-exception
                                        duplicate-tag-keys-exception
                                        duplicate-trust-store-name-exception
                                        invalid-ca-certificates-bundle-exception
                                        too-many-tags-exception
                                        too-many-trust-stores-exception))

(smithy/sdk/operation:define-operation delete-listener :shape-name
                                       "DeleteListener" :input
                                       delete-listener-input :output
                                       delete-listener-output :errors
                                       (listener-not-found-exception
                                        resource-in-use-exception))

(smithy/sdk/operation:define-operation delete-load-balancer :shape-name
                                       "DeleteLoadBalancer" :input
                                       delete-load-balancer-input :output
                                       delete-load-balancer-output :errors
                                       (load-balancer-not-found-exception
                                        operation-not-permitted-exception
                                        resource-in-use-exception))

(smithy/sdk/operation:define-operation delete-rule :shape-name "DeleteRule"
                                       :input delete-rule-input :output
                                       delete-rule-output :errors
                                       (operation-not-permitted-exception
                                        rule-not-found-exception))

(smithy/sdk/operation:define-operation delete-shared-trust-store-association
                                       :shape-name
                                       "DeleteSharedTrustStoreAssociation"
                                       :input
                                       delete-shared-trust-store-association-input
                                       :output
                                       delete-shared-trust-store-association-output
                                       :errors
                                       (delete-association-same-account-exception
                                        trust-store-association-not-found-exception
                                        trust-store-not-found-exception))

(smithy/sdk/operation:define-operation delete-target-group :shape-name
                                       "DeleteTargetGroup" :input
                                       delete-target-group-input :output
                                       delete-target-group-output :errors
                                       (resource-in-use-exception))

(smithy/sdk/operation:define-operation delete-trust-store :shape-name
                                       "DeleteTrustStore" :input
                                       delete-trust-store-input :output
                                       delete-trust-store-output :errors
                                       (trust-store-in-use-exception
                                        trust-store-not-found-exception))

(smithy/sdk/operation:define-operation deregister-targets :shape-name
                                       "DeregisterTargets" :input
                                       deregister-targets-input :output
                                       deregister-targets-output :errors
                                       (invalid-target-exception
                                        target-group-not-found-exception))

(smithy/sdk/operation:define-operation describe-account-limits :shape-name
                                       "DescribeAccountLimits" :input
                                       describe-account-limits-input :output
                                       describe-account-limits-output :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-capacity-reservation
                                       :shape-name
                                       "DescribeCapacityReservation" :input
                                       describe-capacity-reservation-input
                                       :output
                                       describe-capacity-reservation-output
                                       :errors
                                       (load-balancer-not-found-exception))

(smithy/sdk/operation:define-operation describe-listener-attributes :shape-name
                                       "DescribeListenerAttributes" :input
                                       describe-listener-attributes-input
                                       :output
                                       describe-listener-attributes-output
                                       :errors (listener-not-found-exception))

(smithy/sdk/operation:define-operation describe-listener-certificates
                                       :shape-name
                                       "DescribeListenerCertificates" :input
                                       describe-listener-certificates-input
                                       :output
                                       describe-listener-certificates-output
                                       :errors (listener-not-found-exception))

(smithy/sdk/operation:define-operation describe-listeners :shape-name
                                       "DescribeListeners" :input
                                       describe-listeners-input :output
                                       describe-listeners-output :errors
                                       (listener-not-found-exception
                                        load-balancer-not-found-exception
                                        unsupported-protocol-exception))

(smithy/sdk/operation:define-operation describe-load-balancer-attributes
                                       :shape-name
                                       "DescribeLoadBalancerAttributes" :input
                                       describe-load-balancer-attributes-input
                                       :output
                                       describe-load-balancer-attributes-output
                                       :errors
                                       (load-balancer-not-found-exception))

(smithy/sdk/operation:define-operation describe-load-balancers :shape-name
                                       "DescribeLoadBalancers" :input
                                       describe-load-balancers-input :output
                                       describe-load-balancers-output :errors
                                       (load-balancer-not-found-exception))

(smithy/sdk/operation:define-operation describe-rules :shape-name
                                       "DescribeRules" :input
                                       describe-rules-input :output
                                       describe-rules-output :errors
                                       (listener-not-found-exception
                                        rule-not-found-exception
                                        unsupported-protocol-exception))

(smithy/sdk/operation:define-operation describe-sslpolicies :shape-name
                                       "DescribeSSLPolicies" :input
                                       describe-sslpolicies-input :output
                                       describe-sslpolicies-output :errors
                                       (sslpolicy-not-found-exception))

(smithy/sdk/operation:define-operation describe-tags :shape-name "DescribeTags"
                                       :input describe-tags-input :output
                                       describe-tags-output :errors
                                       (listener-not-found-exception
                                        load-balancer-not-found-exception
                                        rule-not-found-exception
                                        target-group-not-found-exception
                                        trust-store-not-found-exception))

(smithy/sdk/operation:define-operation describe-target-group-attributes
                                       :shape-name
                                       "DescribeTargetGroupAttributes" :input
                                       describe-target-group-attributes-input
                                       :output
                                       describe-target-group-attributes-output
                                       :errors
                                       (target-group-not-found-exception))

(smithy/sdk/operation:define-operation describe-target-groups :shape-name
                                       "DescribeTargetGroups" :input
                                       describe-target-groups-input :output
                                       describe-target-groups-output :errors
                                       (load-balancer-not-found-exception
                                        target-group-not-found-exception))

(smithy/sdk/operation:define-operation describe-target-health :shape-name
                                       "DescribeTargetHealth" :input
                                       describe-target-health-input :output
                                       describe-target-health-output :errors
                                       (health-unavailable-exception
                                        invalid-target-exception
                                        target-group-not-found-exception))

(smithy/sdk/operation:define-operation describe-trust-store-associations
                                       :shape-name
                                       "DescribeTrustStoreAssociations" :input
                                       describe-trust-store-associations-input
                                       :output
                                       describe-trust-store-associations-output
                                       :errors
                                       (trust-store-not-found-exception))

(smithy/sdk/operation:define-operation describe-trust-store-revocations
                                       :shape-name
                                       "DescribeTrustStoreRevocations" :input
                                       describe-trust-store-revocations-input
                                       :output
                                       describe-trust-store-revocations-output
                                       :errors
                                       (revocation-id-not-found-exception
                                        trust-store-not-found-exception))

(smithy/sdk/operation:define-operation describe-trust-stores :shape-name
                                       "DescribeTrustStores" :input
                                       describe-trust-stores-input :output
                                       describe-trust-stores-output :errors
                                       (trust-store-not-found-exception))

(smithy/sdk/operation:define-operation get-resource-policy :shape-name
                                       "GetResourcePolicy" :input
                                       get-resource-policy-input :output
                                       get-resource-policy-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation get-trust-store-ca-certificates-bundle
                                       :shape-name
                                       "GetTrustStoreCaCertificatesBundle"
                                       :input
                                       get-trust-store-ca-certificates-bundle-input
                                       :output
                                       get-trust-store-ca-certificates-bundle-output
                                       :errors
                                       (trust-store-not-found-exception))

(smithy/sdk/operation:define-operation get-trust-store-revocation-content
                                       :shape-name
                                       "GetTrustStoreRevocationContent" :input
                                       get-trust-store-revocation-content-input
                                       :output
                                       get-trust-store-revocation-content-output
                                       :errors
                                       (revocation-id-not-found-exception
                                        trust-store-not-found-exception))

(smithy/sdk/operation:define-operation modify-capacity-reservation :shape-name
                                       "ModifyCapacityReservation" :input
                                       modify-capacity-reservation-input
                                       :output
                                       modify-capacity-reservation-output
                                       :errors
                                       (capacity-decrease-requests-limit-exceeded-exception
                                        capacity-reservation-pending-exception
                                        capacity-units-limit-exceeded-exception
                                        insufficient-capacity-exception
                                        invalid-configuration-request-exception
                                        load-balancer-not-found-exception
                                        operation-not-permitted-exception
                                        prior-request-not-complete-exception))

(smithy/sdk/operation:define-operation modify-ip-pools :shape-name
                                       "ModifyIpPools" :input
                                       modify-ip-pools-input :output
                                       modify-ip-pools-output :errors
                                       (load-balancer-not-found-exception))

(smithy/sdk/operation:define-operation modify-listener :shape-name
                                       "ModifyListener" :input
                                       modify-listener-input :output
                                       modify-listener-output :errors
                                       (alpnpolicy-not-supported-exception
                                        certificate-not-found-exception
                                        duplicate-listener-exception
                                        incompatible-protocols-exception
                                        invalid-configuration-request-exception
                                        invalid-load-balancer-action-exception
                                        listener-not-found-exception
                                        sslpolicy-not-found-exception
                                        target-group-association-limit-exception
                                        target-group-not-found-exception
                                        too-many-actions-exception
                                        too-many-certificates-exception
                                        too-many-listeners-exception
                                        too-many-registrations-for-target-id-exception
                                        too-many-targets-exception
                                        too-many-unique-target-groups-per-load-balancer-exception
                                        trust-store-not-found-exception
                                        trust-store-not-ready-exception
                                        unsupported-protocol-exception))

(smithy/sdk/operation:define-operation modify-listener-attributes :shape-name
                                       "ModifyListenerAttributes" :input
                                       modify-listener-attributes-input :output
                                       modify-listener-attributes-output
                                       :errors
                                       (invalid-configuration-request-exception
                                        listener-not-found-exception))

(smithy/sdk/operation:define-operation modify-load-balancer-attributes
                                       :shape-name
                                       "ModifyLoadBalancerAttributes" :input
                                       modify-load-balancer-attributes-input
                                       :output
                                       modify-load-balancer-attributes-output
                                       :errors
                                       (invalid-configuration-request-exception
                                        load-balancer-not-found-exception))

(smithy/sdk/operation:define-operation modify-rule :shape-name "ModifyRule"
                                       :input modify-rule-input :output
                                       modify-rule-output :errors
                                       (incompatible-protocols-exception
                                        invalid-load-balancer-action-exception
                                        operation-not-permitted-exception
                                        rule-not-found-exception
                                        target-group-association-limit-exception
                                        target-group-not-found-exception
                                        too-many-actions-exception
                                        too-many-registrations-for-target-id-exception
                                        too-many-targets-exception
                                        too-many-unique-target-groups-per-load-balancer-exception
                                        unsupported-protocol-exception))

(smithy/sdk/operation:define-operation modify-target-group :shape-name
                                       "ModifyTargetGroup" :input
                                       modify-target-group-input :output
                                       modify-target-group-output :errors
                                       (invalid-configuration-request-exception
                                        target-group-not-found-exception))

(smithy/sdk/operation:define-operation modify-target-group-attributes
                                       :shape-name
                                       "ModifyTargetGroupAttributes" :input
                                       modify-target-group-attributes-input
                                       :output
                                       modify-target-group-attributes-output
                                       :errors
                                       (invalid-configuration-request-exception
                                        target-group-not-found-exception))

(smithy/sdk/operation:define-operation modify-trust-store :shape-name
                                       "ModifyTrustStore" :input
                                       modify-trust-store-input :output
                                       modify-trust-store-output :errors
                                       (ca-certificates-bundle-not-found-exception
                                        invalid-ca-certificates-bundle-exception
                                        trust-store-not-found-exception))

(smithy/sdk/operation:define-operation register-targets :shape-name
                                       "RegisterTargets" :input
                                       register-targets-input :output
                                       register-targets-output :errors
                                       (invalid-target-exception
                                        target-group-not-found-exception
                                        too-many-registrations-for-target-id-exception
                                        too-many-targets-exception))

(smithy/sdk/operation:define-operation remove-listener-certificates :shape-name
                                       "RemoveListenerCertificates" :input
                                       remove-listener-certificates-input
                                       :output
                                       remove-listener-certificates-output
                                       :errors
                                       (listener-not-found-exception
                                        operation-not-permitted-exception))

(smithy/sdk/operation:define-operation remove-tags :shape-name "RemoveTags"
                                       :input remove-tags-input :output
                                       remove-tags-output :errors
                                       (listener-not-found-exception
                                        load-balancer-not-found-exception
                                        rule-not-found-exception
                                        target-group-not-found-exception
                                        too-many-tags-exception
                                        trust-store-not-found-exception))

(smithy/sdk/operation:define-operation remove-trust-store-revocations
                                       :shape-name
                                       "RemoveTrustStoreRevocations" :input
                                       remove-trust-store-revocations-input
                                       :output
                                       remove-trust-store-revocations-output
                                       :errors
                                       (revocation-id-not-found-exception
                                        trust-store-not-found-exception))

(smithy/sdk/operation:define-operation set-ip-address-type :shape-name
                                       "SetIpAddressType" :input
                                       set-ip-address-type-input :output
                                       set-ip-address-type-output :errors
                                       (invalid-configuration-request-exception
                                        invalid-subnet-exception
                                        load-balancer-not-found-exception))

(smithy/sdk/operation:define-operation set-rule-priorities :shape-name
                                       "SetRulePriorities" :input
                                       set-rule-priorities-input :output
                                       set-rule-priorities-output :errors
                                       (operation-not-permitted-exception
                                        priority-in-use-exception
                                        rule-not-found-exception))

(smithy/sdk/operation:define-operation set-security-groups :shape-name
                                       "SetSecurityGroups" :input
                                       set-security-groups-input :output
                                       set-security-groups-output :errors
                                       (invalid-configuration-request-exception
                                        invalid-security-group-exception
                                        load-balancer-not-found-exception))

(smithy/sdk/operation:define-operation set-subnets :shape-name "SetSubnets"
                                       :input set-subnets-input :output
                                       set-subnets-output :errors
                                       (allocation-id-not-found-exception
                                        availability-zone-not-supported-exception
                                        capacity-reservation-pending-exception
                                        invalid-configuration-request-exception
                                        invalid-subnet-exception
                                        load-balancer-not-found-exception
                                        subnet-not-found-exception))
