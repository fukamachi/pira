(uiop/package:define-package #:pira/route53resolver (:use)
                             (:export #:access-denied-exception #:account-id
                              #:action #:arn #:associate-firewall-rule-group
                              #:associate-firewall-rule-group-request
                              #:associate-firewall-rule-group-response
                              #:associate-resolver-endpoint-ip-address
                              #:associate-resolver-endpoint-ip-address-request
                              #:associate-resolver-endpoint-ip-address-response
                              #:associate-resolver-query-log-config
                              #:associate-resolver-query-log-config-request
                              #:associate-resolver-query-log-config-response
                              #:associate-resolver-rule
                              #:associate-resolver-rule-request
                              #:associate-resolver-rule-response
                              #:autodefined-reverse-flag
                              #:block-override-dns-type #:block-override-domain
                              #:block-override-ttl #:block-response #:boolean
                              #:confidence-threshold #:conflict-exception
                              #:count #:create-firewall-domain-list
                              #:create-firewall-domain-list-request
                              #:create-firewall-domain-list-response
                              #:create-firewall-rule
                              #:create-firewall-rule-group
                              #:create-firewall-rule-group-request
                              #:create-firewall-rule-group-response
                              #:create-firewall-rule-request
                              #:create-firewall-rule-response
                              #:create-outpost-resolver
                              #:create-outpost-resolver-request
                              #:create-outpost-resolver-response
                              #:create-resolver-endpoint
                              #:create-resolver-endpoint-request
                              #:create-resolver-endpoint-response
                              #:create-resolver-query-log-config
                              #:create-resolver-query-log-config-request
                              #:create-resolver-query-log-config-response
                              #:create-resolver-rule
                              #:create-resolver-rule-request
                              #:create-resolver-rule-response
                              #:creator-request-id #:delegation-record
                              #:delete-firewall-domain-list
                              #:delete-firewall-domain-list-request
                              #:delete-firewall-domain-list-response
                              #:delete-firewall-rule
                              #:delete-firewall-rule-group
                              #:delete-firewall-rule-group-request
                              #:delete-firewall-rule-group-response
                              #:delete-firewall-rule-request
                              #:delete-firewall-rule-response
                              #:delete-outpost-resolver
                              #:delete-outpost-resolver-request
                              #:delete-outpost-resolver-response
                              #:delete-resolver-endpoint
                              #:delete-resolver-endpoint-request
                              #:delete-resolver-endpoint-response
                              #:delete-resolver-query-log-config
                              #:delete-resolver-query-log-config-request
                              #:delete-resolver-query-log-config-response
                              #:delete-resolver-rule
                              #:delete-resolver-rule-request
                              #:delete-resolver-rule-response #:destination-arn
                              #:disassociate-firewall-rule-group
                              #:disassociate-firewall-rule-group-request
                              #:disassociate-firewall-rule-group-response
                              #:disassociate-resolver-endpoint-ip-address
                              #:disassociate-resolver-endpoint-ip-address-request
                              #:disassociate-resolver-endpoint-ip-address-response
                              #:disassociate-resolver-query-log-config
                              #:disassociate-resolver-query-log-config-request
                              #:disassociate-resolver-query-log-config-response
                              #:disassociate-resolver-rule
                              #:disassociate-resolver-rule-request
                              #:disassociate-resolver-rule-response
                              #:dns-threat-protection #:domain-list-file-url
                              #:domain-name #:exception-message #:filter
                              #:filter-name #:filter-value #:filter-values
                              #:filters #:firewall-config
                              #:firewall-config-list
                              #:firewall-domain-import-operation
                              #:firewall-domain-list
                              #:firewall-domain-list-metadata
                              #:firewall-domain-list-metadata-list
                              #:firewall-domain-list-status
                              #:firewall-domain-name
                              #:firewall-domain-redirection-action
                              #:firewall-domain-update-operation
                              #:firewall-domains #:firewall-fail-open-status
                              #:firewall-rule #:firewall-rule-group
                              #:firewall-rule-group-association
                              #:firewall-rule-group-association-status
                              #:firewall-rule-group-associations
                              #:firewall-rule-group-metadata
                              #:firewall-rule-group-metadata-list
                              #:firewall-rule-group-policy
                              #:firewall-rule-group-status #:firewall-rules
                              #:get-firewall-config
                              #:get-firewall-config-request
                              #:get-firewall-config-response
                              #:get-firewall-domain-list
                              #:get-firewall-domain-list-request
                              #:get-firewall-domain-list-response
                              #:get-firewall-rule-group
                              #:get-firewall-rule-group-association
                              #:get-firewall-rule-group-association-request
                              #:get-firewall-rule-group-association-response
                              #:get-firewall-rule-group-policy
                              #:get-firewall-rule-group-policy-request
                              #:get-firewall-rule-group-policy-response
                              #:get-firewall-rule-group-request
                              #:get-firewall-rule-group-response
                              #:get-outpost-resolver
                              #:get-outpost-resolver-request
                              #:get-outpost-resolver-response
                              #:get-resolver-config
                              #:get-resolver-config-request
                              #:get-resolver-config-response
                              #:get-resolver-dnssec-config
                              #:get-resolver-dnssec-config-request
                              #:get-resolver-dnssec-config-response
                              #:get-resolver-endpoint
                              #:get-resolver-endpoint-request
                              #:get-resolver-endpoint-response
                              #:get-resolver-query-log-config
                              #:get-resolver-query-log-config-association
                              #:get-resolver-query-log-config-association-request
                              #:get-resolver-query-log-config-association-response
                              #:get-resolver-query-log-config-policy
                              #:get-resolver-query-log-config-policy-request
                              #:get-resolver-query-log-config-policy-response
                              #:get-resolver-query-log-config-request
                              #:get-resolver-query-log-config-response
                              #:get-resolver-rule
                              #:get-resolver-rule-association
                              #:get-resolver-rule-association-request
                              #:get-resolver-rule-association-response
                              #:get-resolver-rule-policy
                              #:get-resolver-rule-policy-request
                              #:get-resolver-rule-policy-response
                              #:get-resolver-rule-request
                              #:get-resolver-rule-response
                              #:import-firewall-domains
                              #:import-firewall-domains-request
                              #:import-firewall-domains-response
                              #:instance-count
                              #:internal-service-error-exception
                              #:invalid-next-token-exception
                              #:invalid-parameter-exception
                              #:invalid-policy-document
                              #:invalid-request-exception
                              #:invalid-tag-exception #:ip #:ip-address-count
                              #:ip-address-request #:ip-address-response
                              #:ip-address-status #:ip-address-update
                              #:ip-addresses-request #:ip-addresses-response
                              #:ipv6 #:limit-exceeded-exception
                              #:list-domain-max-results #:list-firewall-configs
                              #:list-firewall-configs-max-result
                              #:list-firewall-configs-request
                              #:list-firewall-configs-response
                              #:list-firewall-domain-lists
                              #:list-firewall-domain-lists-request
                              #:list-firewall-domain-lists-response
                              #:list-firewall-domains
                              #:list-firewall-domains-request
                              #:list-firewall-domains-response
                              #:list-firewall-rule-group-associations
                              #:list-firewall-rule-group-associations-request
                              #:list-firewall-rule-group-associations-response
                              #:list-firewall-rule-groups
                              #:list-firewall-rule-groups-request
                              #:list-firewall-rule-groups-response
                              #:list-firewall-rules
                              #:list-firewall-rules-request
                              #:list-firewall-rules-response
                              #:list-outpost-resolvers
                              #:list-outpost-resolvers-request
                              #:list-outpost-resolvers-response
                              #:list-resolver-configs
                              #:list-resolver-configs-max-result
                              #:list-resolver-configs-request
                              #:list-resolver-configs-response
                              #:list-resolver-dnssec-configs
                              #:list-resolver-dnssec-configs-request
                              #:list-resolver-dnssec-configs-response
                              #:list-resolver-endpoint-ip-addresses
                              #:list-resolver-endpoint-ip-addresses-request
                              #:list-resolver-endpoint-ip-addresses-response
                              #:list-resolver-endpoints
                              #:list-resolver-endpoints-request
                              #:list-resolver-endpoints-response
                              #:list-resolver-query-log-config-associations
                              #:list-resolver-query-log-config-associations-request
                              #:list-resolver-query-log-config-associations-response
                              #:list-resolver-query-log-configs
                              #:list-resolver-query-log-configs-request
                              #:list-resolver-query-log-configs-response
                              #:list-resolver-rule-associations
                              #:list-resolver-rule-associations-request
                              #:list-resolver-rule-associations-response
                              #:list-resolver-rules
                              #:list-resolver-rules-request
                              #:list-resolver-rules-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:max-results
                              #:mutation-protection-status #:name #:next-token
                              #:outpost-arn #:outpost-instance-type
                              #:outpost-resolver #:outpost-resolver-list
                              #:outpost-resolver-name #:outpost-resolver-status
                              #:outpost-resolver-status-message #:port
                              #:priority #:protocol #:protocol-list
                              #:put-firewall-rule-group-policy
                              #:put-firewall-rule-group-policy-request
                              #:put-firewall-rule-group-policy-response
                              #:put-resolver-query-log-config-policy
                              #:put-resolver-query-log-config-policy-request
                              #:put-resolver-query-log-config-policy-response
                              #:put-resolver-rule-policy
                              #:put-resolver-rule-policy-request
                              #:put-resolver-rule-policy-response #:qtype
                              #:resolver-autodefined-reverse-status
                              #:resolver-config #:resolver-config-list
                              #:resolver-dnssecvalidation-status
                              #:resolver-dnssec-config
                              #:resolver-dnssec-config-list #:resolver-endpoint
                              #:resolver-endpoint-direction
                              #:resolver-endpoint-status
                              #:resolver-endpoint-type #:resolver-endpoints
                              #:resolver-query-log-config
                              #:resolver-query-log-config-association
                              #:resolver-query-log-config-association-error
                              #:resolver-query-log-config-association-error-message
                              #:resolver-query-log-config-association-list
                              #:resolver-query-log-config-association-status
                              #:resolver-query-log-config-list
                              #:resolver-query-log-config-name
                              #:resolver-query-log-config-policy
                              #:resolver-query-log-config-status
                              #:resolver-rule #:resolver-rule-association
                              #:resolver-rule-association-status
                              #:resolver-rule-associations
                              #:resolver-rule-config #:resolver-rule-policy
                              #:resolver-rule-status #:resolver-rules
                              #:resource-exists-exception #:resource-id
                              #:resource-in-use-exception
                              #:resource-not-found-exception
                              #:resource-unavailable-exception
                              #:rfc3339time-string #:route53resolver
                              #:rule-type-option #:security-group-ids
                              #:server-name-indication #:service-principle
                              #:service-quota-exceeded-exception #:share-status
                              #:sort-by-key #:sort-order #:status-message
                              #:string #:subnet-id #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:target-address #:target-list
                              #:throttling-exception
                              #:unknown-resource-exception #:unsigned
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response
                              #:update-firewall-config
                              #:update-firewall-config-request
                              #:update-firewall-config-response
                              #:update-firewall-domains
                              #:update-firewall-domains-request
                              #:update-firewall-domains-response
                              #:update-firewall-rule
                              #:update-firewall-rule-group-association
                              #:update-firewall-rule-group-association-request
                              #:update-firewall-rule-group-association-response
                              #:update-firewall-rule-request
                              #:update-firewall-rule-response
                              #:update-ip-address #:update-ip-addresses
                              #:update-outpost-resolver
                              #:update-outpost-resolver-request
                              #:update-outpost-resolver-response
                              #:update-resolver-config
                              #:update-resolver-config-request
                              #:update-resolver-config-response
                              #:update-resolver-dnssec-config
                              #:update-resolver-dnssec-config-request
                              #:update-resolver-dnssec-config-response
                              #:update-resolver-endpoint
                              #:update-resolver-endpoint-request
                              #:update-resolver-endpoint-response
                              #:update-resolver-rule
                              #:update-resolver-rule-request
                              #:update-resolver-rule-response #:validation
                              #:validation-exception))
(common-lisp:in-package #:pira/route53resolver)

(smithy/sdk/service:define-service route53resolver :shape-name
                                   "Route53Resolver" :version "2018-04-01"
                                   :title "Amazon Route 53 Resolver" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Route53Resolver")
                                      ("arnNamespace" . "route53resolver")
                                      ("cloudFormationName"
                                       . "Route53Resolver")
                                      ("cloudTrailEventSource"
                                       . "route53resolver.amazonaws.com")
                                      ("endpointPrefix" . "route53resolver"))
                                     ("aws.auth#sigv4"
                                      ("name" . "route53resolver"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum action
    common-lisp:nil
  (:allow "ALLOW")
  (:block "BLOCK")
  (:alert "ALERT"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-firewall-rule-group-request
                                common-lisp:nil
                                ((creator-request-id :target-type
                                  creator-request-id :required common-lisp:t
                                  :member-name "CreatorRequestId")
                                 (firewall-rule-group-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "FirewallRuleGroupId")
                                 (vpc-id :target-type resource-id :required
                                  common-lisp:t :member-name "VpcId")
                                 (priority :target-type priority :required
                                  common-lisp:t :member-name "Priority")
                                 (name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (mutation-protection :target-type
                                  mutation-protection-status :member-name
                                  "MutationProtection")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "AssociateFirewallRuleGroupRequest"))

(smithy/sdk/shapes:define-output associate-firewall-rule-group-response
                                 common-lisp:nil
                                 ((firewall-rule-group-association :target-type
                                   firewall-rule-group-association :member-name
                                   "FirewallRuleGroupAssociation"))
                                 (:shape-name
                                  "AssociateFirewallRuleGroupResponse"))

(smithy/sdk/shapes:define-input associate-resolver-endpoint-ip-address-request
                                common-lisp:nil
                                ((resolver-endpoint-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResolverEndpointId")
                                 (ip-address :target-type ip-address-update
                                  :required common-lisp:t :member-name
                                  "IpAddress"))
                                (:shape-name
                                 "AssociateResolverEndpointIpAddressRequest"))

(smithy/sdk/shapes:define-output
 associate-resolver-endpoint-ip-address-response common-lisp:nil
 ((resolver-endpoint :target-type resolver-endpoint :member-name
   "ResolverEndpoint"))
 (:shape-name "AssociateResolverEndpointIpAddressResponse"))

(smithy/sdk/shapes:define-input associate-resolver-query-log-config-request
                                common-lisp:nil
                                ((resolver-query-log-config-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "ResolverQueryLogConfigId")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId"))
                                (:shape-name
                                 "AssociateResolverQueryLogConfigRequest"))

(smithy/sdk/shapes:define-output associate-resolver-query-log-config-response
                                 common-lisp:nil
                                 ((resolver-query-log-config-association
                                   :target-type
                                   resolver-query-log-config-association
                                   :member-name
                                   "ResolverQueryLogConfigAssociation"))
                                 (:shape-name
                                  "AssociateResolverQueryLogConfigResponse"))

(smithy/sdk/shapes:define-input associate-resolver-rule-request common-lisp:nil
                                ((resolver-rule-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResolverRuleId")
                                 (name :target-type name :member-name "Name")
                                 (vpcid :target-type resource-id :required
                                  common-lisp:t :member-name "VPCId"))
                                (:shape-name "AssociateResolverRuleRequest"))

(smithy/sdk/shapes:define-output associate-resolver-rule-response
                                 common-lisp:nil
                                 ((resolver-rule-association :target-type
                                   resolver-rule-association :member-name
                                   "ResolverRuleAssociation"))
                                 (:shape-name "AssociateResolverRuleResponse"))

(smithy/sdk/shapes:define-enum autodefined-reverse-flag
    common-lisp:nil
  (:enable "ENABLE")
  (:disable "DISABLE")
  (:use-local-resource-setting "USE_LOCAL_RESOURCE_SETTING"))

(smithy/sdk/shapes:define-enum block-override-dns-type
    common-lisp:nil
  (:cname "CNAME"))

(smithy/sdk/shapes:define-type block-override-domain
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type block-override-ttl
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum block-response
    common-lisp:nil
  (:nodata "NODATA")
  (:nxdomain "NXDOMAIN")
  (:override "OVERRIDE"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum confidence-threshold
    common-lisp:nil
  (:low "LOW")
  (:medium "MEDIUM")
  (:high "HIGH"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input create-firewall-domain-list-request
                                common-lisp:nil
                                ((creator-request-id :target-type
                                  creator-request-id :required common-lisp:t
                                  :member-name "CreatorRequestId")
                                 (name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateFirewallDomainListRequest"))

(smithy/sdk/shapes:define-output create-firewall-domain-list-response
                                 common-lisp:nil
                                 ((firewall-domain-list :target-type
                                   firewall-domain-list :member-name
                                   "FirewallDomainList"))
                                 (:shape-name
                                  "CreateFirewallDomainListResponse"))

(smithy/sdk/shapes:define-input create-firewall-rule-group-request
                                common-lisp:nil
                                ((creator-request-id :target-type
                                  creator-request-id :required common-lisp:t
                                  :member-name "CreatorRequestId")
                                 (name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateFirewallRuleGroupRequest"))

(smithy/sdk/shapes:define-output create-firewall-rule-group-response
                                 common-lisp:nil
                                 ((firewall-rule-group :target-type
                                   firewall-rule-group :member-name
                                   "FirewallRuleGroup"))
                                 (:shape-name
                                  "CreateFirewallRuleGroupResponse"))

(smithy/sdk/shapes:define-input create-firewall-rule-request common-lisp:nil
                                ((creator-request-id :target-type
                                  creator-request-id :required common-lisp:t
                                  :member-name "CreatorRequestId")
                                 (firewall-rule-group-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "FirewallRuleGroupId")
                                 (firewall-domain-list-id :target-type
                                  resource-id :member-name
                                  "FirewallDomainListId")
                                 (priority :target-type priority :required
                                  common-lisp:t :member-name "Priority")
                                 (action :target-type action :required
                                  common-lisp:t :member-name "Action")
                                 (block-response :target-type block-response
                                  :member-name "BlockResponse")
                                 (block-override-domain :target-type
                                  block-override-domain :member-name
                                  "BlockOverrideDomain")
                                 (block-override-dns-type :target-type
                                  block-override-dns-type :member-name
                                  "BlockOverrideDnsType")
                                 (block-override-ttl :target-type
                                  block-override-ttl :member-name
                                  "BlockOverrideTtl")
                                 (name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (firewall-domain-redirection-action
                                  :target-type
                                  firewall-domain-redirection-action
                                  :member-name
                                  "FirewallDomainRedirectionAction")
                                 (qtype :target-type qtype :member-name
                                  "Qtype")
                                 (dns-threat-protection :target-type
                                  dns-threat-protection :member-name
                                  "DnsThreatProtection")
                                 (confidence-threshold :target-type
                                  confidence-threshold :member-name
                                  "ConfidenceThreshold"))
                                (:shape-name "CreateFirewallRuleRequest"))

(smithy/sdk/shapes:define-output create-firewall-rule-response common-lisp:nil
                                 ((firewall-rule :target-type firewall-rule
                                   :member-name "FirewallRule"))
                                 (:shape-name "CreateFirewallRuleResponse"))

(smithy/sdk/shapes:define-input create-outpost-resolver-request common-lisp:nil
                                ((creator-request-id :target-type
                                  creator-request-id :required common-lisp:t
                                  :member-name "CreatorRequestId")
                                 (name :target-type outpost-resolver-name
                                  :required common-lisp:t :member-name "Name")
                                 (instance-count :target-type instance-count
                                  :member-name "InstanceCount")
                                 (preferred-instance-type :target-type
                                  outpost-instance-type :required common-lisp:t
                                  :member-name "PreferredInstanceType")
                                 (outpost-arn :target-type outpost-arn
                                  :required common-lisp:t :member-name
                                  "OutpostArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateOutpostResolverRequest"))

(smithy/sdk/shapes:define-output create-outpost-resolver-response
                                 common-lisp:nil
                                 ((outpost-resolver :target-type
                                   outpost-resolver :member-name
                                   "OutpostResolver"))
                                 (:shape-name "CreateOutpostResolverResponse"))

(smithy/sdk/shapes:define-input create-resolver-endpoint-request
                                common-lisp:nil
                                ((creator-request-id :target-type
                                  creator-request-id :required common-lisp:t
                                  :member-name "CreatorRequestId")
                                 (name :target-type name :member-name "Name")
                                 (security-group-ids :target-type
                                  security-group-ids :required common-lisp:t
                                  :member-name "SecurityGroupIds")
                                 (direction :target-type
                                  resolver-endpoint-direction :required
                                  common-lisp:t :member-name "Direction")
                                 (ip-addresses :target-type
                                  ip-addresses-request :required common-lisp:t
                                  :member-name "IpAddresses")
                                 (outpost-arn :target-type outpost-arn
                                  :member-name "OutpostArn")
                                 (preferred-instance-type :target-type
                                  outpost-instance-type :member-name
                                  "PreferredInstanceType")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (resolver-endpoint-type :target-type
                                  resolver-endpoint-type :member-name
                                  "ResolverEndpointType")
                                 (protocols :target-type protocol-list
                                  :member-name "Protocols"))
                                (:shape-name "CreateResolverEndpointRequest"))

(smithy/sdk/shapes:define-output create-resolver-endpoint-response
                                 common-lisp:nil
                                 ((resolver-endpoint :target-type
                                   resolver-endpoint :member-name
                                   "ResolverEndpoint"))
                                 (:shape-name "CreateResolverEndpointResponse"))

(smithy/sdk/shapes:define-input create-resolver-query-log-config-request
                                common-lisp:nil
                                ((name :target-type
                                  resolver-query-log-config-name :required
                                  common-lisp:t :member-name "Name")
                                 (destination-arn :target-type destination-arn
                                  :required common-lisp:t :member-name
                                  "DestinationArn")
                                 (creator-request-id :target-type
                                  creator-request-id :required common-lisp:t
                                  :member-name "CreatorRequestId")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateResolverQueryLogConfigRequest"))

(smithy/sdk/shapes:define-output create-resolver-query-log-config-response
                                 common-lisp:nil
                                 ((resolver-query-log-config :target-type
                                   resolver-query-log-config :member-name
                                   "ResolverQueryLogConfig"))
                                 (:shape-name
                                  "CreateResolverQueryLogConfigResponse"))

(smithy/sdk/shapes:define-input create-resolver-rule-request common-lisp:nil
                                ((creator-request-id :target-type
                                  creator-request-id :required common-lisp:t
                                  :member-name "CreatorRequestId")
                                 (name :target-type name :member-name "Name")
                                 (rule-type :target-type rule-type-option
                                  :required common-lisp:t :member-name
                                  "RuleType")
                                 (domain-name :target-type domain-name
                                  :member-name "DomainName")
                                 (target-ips :target-type target-list
                                  :member-name "TargetIps")
                                 (resolver-endpoint-id :target-type resource-id
                                  :member-name "ResolverEndpointId")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (delegation-record :target-type
                                  delegation-record :member-name
                                  "DelegationRecord"))
                                (:shape-name "CreateResolverRuleRequest"))

(smithy/sdk/shapes:define-output create-resolver-rule-response common-lisp:nil
                                 ((resolver-rule :target-type resolver-rule
                                   :member-name "ResolverRule"))
                                 (:shape-name "CreateResolverRuleResponse"))

(smithy/sdk/shapes:define-type creator-request-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type delegation-record smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-firewall-domain-list-request
                                common-lisp:nil
                                ((firewall-domain-list-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "FirewallDomainListId"))
                                (:shape-name "DeleteFirewallDomainListRequest"))

(smithy/sdk/shapes:define-output delete-firewall-domain-list-response
                                 common-lisp:nil
                                 ((firewall-domain-list :target-type
                                   firewall-domain-list :member-name
                                   "FirewallDomainList"))
                                 (:shape-name
                                  "DeleteFirewallDomainListResponse"))

(smithy/sdk/shapes:define-input delete-firewall-rule-group-request
                                common-lisp:nil
                                ((firewall-rule-group-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "FirewallRuleGroupId"))
                                (:shape-name "DeleteFirewallRuleGroupRequest"))

(smithy/sdk/shapes:define-output delete-firewall-rule-group-response
                                 common-lisp:nil
                                 ((firewall-rule-group :target-type
                                   firewall-rule-group :member-name
                                   "FirewallRuleGroup"))
                                 (:shape-name
                                  "DeleteFirewallRuleGroupResponse"))

(smithy/sdk/shapes:define-input delete-firewall-rule-request common-lisp:nil
                                ((firewall-rule-group-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "FirewallRuleGroupId")
                                 (firewall-domain-list-id :target-type
                                  resource-id :member-name
                                  "FirewallDomainListId")
                                 (firewall-threat-protection-id :target-type
                                  resource-id :member-name
                                  "FirewallThreatProtectionId")
                                 (qtype :target-type qtype :member-name
                                  "Qtype"))
                                (:shape-name "DeleteFirewallRuleRequest"))

(smithy/sdk/shapes:define-output delete-firewall-rule-response common-lisp:nil
                                 ((firewall-rule :target-type firewall-rule
                                   :member-name "FirewallRule"))
                                 (:shape-name "DeleteFirewallRuleResponse"))

(smithy/sdk/shapes:define-input delete-outpost-resolver-request common-lisp:nil
                                ((id :target-type resource-id :required
                                  common-lisp:t :member-name "Id"))
                                (:shape-name "DeleteOutpostResolverRequest"))

(smithy/sdk/shapes:define-output delete-outpost-resolver-response
                                 common-lisp:nil
                                 ((outpost-resolver :target-type
                                   outpost-resolver :member-name
                                   "OutpostResolver"))
                                 (:shape-name "DeleteOutpostResolverResponse"))

(smithy/sdk/shapes:define-input delete-resolver-endpoint-request
                                common-lisp:nil
                                ((resolver-endpoint-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResolverEndpointId"))
                                (:shape-name "DeleteResolverEndpointRequest"))

(smithy/sdk/shapes:define-output delete-resolver-endpoint-response
                                 common-lisp:nil
                                 ((resolver-endpoint :target-type
                                   resolver-endpoint :member-name
                                   "ResolverEndpoint"))
                                 (:shape-name "DeleteResolverEndpointResponse"))

(smithy/sdk/shapes:define-input delete-resolver-query-log-config-request
                                common-lisp:nil
                                ((resolver-query-log-config-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "ResolverQueryLogConfigId"))
                                (:shape-name
                                 "DeleteResolverQueryLogConfigRequest"))

(smithy/sdk/shapes:define-output delete-resolver-query-log-config-response
                                 common-lisp:nil
                                 ((resolver-query-log-config :target-type
                                   resolver-query-log-config :member-name
                                   "ResolverQueryLogConfig"))
                                 (:shape-name
                                  "DeleteResolverQueryLogConfigResponse"))

(smithy/sdk/shapes:define-input delete-resolver-rule-request common-lisp:nil
                                ((resolver-rule-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResolverRuleId"))
                                (:shape-name "DeleteResolverRuleRequest"))

(smithy/sdk/shapes:define-output delete-resolver-rule-response common-lisp:nil
                                 ((resolver-rule :target-type resolver-rule
                                   :member-name "ResolverRule"))
                                 (:shape-name "DeleteResolverRuleResponse"))

(smithy/sdk/shapes:define-type destination-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disassociate-firewall-rule-group-request
                                common-lisp:nil
                                ((firewall-rule-group-association-id
                                  :target-type resource-id :required
                                  common-lisp:t :member-name
                                  "FirewallRuleGroupAssociationId"))
                                (:shape-name
                                 "DisassociateFirewallRuleGroupRequest"))

(smithy/sdk/shapes:define-output disassociate-firewall-rule-group-response
                                 common-lisp:nil
                                 ((firewall-rule-group-association :target-type
                                   firewall-rule-group-association :member-name
                                   "FirewallRuleGroupAssociation"))
                                 (:shape-name
                                  "DisassociateFirewallRuleGroupResponse"))

(smithy/sdk/shapes:define-input
 disassociate-resolver-endpoint-ip-address-request common-lisp:nil
 ((resolver-endpoint-id :target-type resource-id :required common-lisp:t
   :member-name "ResolverEndpointId")
  (ip-address :target-type ip-address-update :required common-lisp:t
   :member-name "IpAddress"))
 (:shape-name "DisassociateResolverEndpointIpAddressRequest"))

(smithy/sdk/shapes:define-output
 disassociate-resolver-endpoint-ip-address-response common-lisp:nil
 ((resolver-endpoint :target-type resolver-endpoint :member-name
   "ResolverEndpoint"))
 (:shape-name "DisassociateResolverEndpointIpAddressResponse"))

(smithy/sdk/shapes:define-input disassociate-resolver-query-log-config-request
                                common-lisp:nil
                                ((resolver-query-log-config-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "ResolverQueryLogConfigId")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId"))
                                (:shape-name
                                 "DisassociateResolverQueryLogConfigRequest"))

(smithy/sdk/shapes:define-output
 disassociate-resolver-query-log-config-response common-lisp:nil
 ((resolver-query-log-config-association :target-type
   resolver-query-log-config-association :member-name
   "ResolverQueryLogConfigAssociation"))
 (:shape-name "DisassociateResolverQueryLogConfigResponse"))

(smithy/sdk/shapes:define-input disassociate-resolver-rule-request
                                common-lisp:nil
                                ((vpcid :target-type resource-id :required
                                  common-lisp:t :member-name "VPCId")
                                 (resolver-rule-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResolverRuleId"))
                                (:shape-name "DisassociateResolverRuleRequest"))

(smithy/sdk/shapes:define-output disassociate-resolver-rule-response
                                 common-lisp:nil
                                 ((resolver-rule-association :target-type
                                   resolver-rule-association :member-name
                                   "ResolverRuleAssociation"))
                                 (:shape-name
                                  "DisassociateResolverRuleResponse"))

(smithy/sdk/shapes:define-enum dns-threat-protection
    common-lisp:nil
  (:dga "DGA")
  (:dns-tunneling "DNS_TUNNELING"))

(smithy/sdk/shapes:define-type domain-list-file-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type domain-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((name :target-type filter-name
                                      :member-name "Name")
                                     (values :target-type filter-values
                                      :member-name "Values"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-type filter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-values :member filter-value)

(smithy/sdk/shapes:define-list filters :member filter)

(smithy/sdk/shapes:define-structure firewall-config common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (resource-id :target-type resource-id
                                      :member-name "ResourceId")
                                     (owner-id :target-type account-id
                                      :member-name "OwnerId")
                                     (firewall-fail-open :target-type
                                      firewall-fail-open-status :member-name
                                      "FirewallFailOpen"))
                                    (:shape-name "FirewallConfig"))

(smithy/sdk/shapes:define-list firewall-config-list :member firewall-config)

(smithy/sdk/shapes:define-enum firewall-domain-import-operation
    common-lisp:nil
  (:replace "REPLACE"))

(smithy/sdk/shapes:define-structure firewall-domain-list common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (arn :target-type arn :member-name "Arn")
                                     (name :target-type name :member-name
                                      "Name")
                                     (domain-count :target-type unsigned
                                      :member-name "DomainCount")
                                     (status :target-type
                                      firewall-domain-list-status :member-name
                                      "Status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage")
                                     (managed-owner-name :target-type
                                      service-principle :member-name
                                      "ManagedOwnerName")
                                     (creator-request-id :target-type
                                      creator-request-id :member-name
                                      "CreatorRequestId")
                                     (creation-time :target-type
                                      rfc3339time-string :member-name
                                      "CreationTime")
                                     (modification-time :target-type
                                      rfc3339time-string :member-name
                                      "ModificationTime"))
                                    (:shape-name "FirewallDomainList"))

(smithy/sdk/shapes:define-structure firewall-domain-list-metadata
                                    common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (arn :target-type arn :member-name "Arn")
                                     (name :target-type name :member-name
                                      "Name")
                                     (creator-request-id :target-type
                                      creator-request-id :member-name
                                      "CreatorRequestId")
                                     (managed-owner-name :target-type
                                      service-principle :member-name
                                      "ManagedOwnerName"))
                                    (:shape-name "FirewallDomainListMetadata"))

(smithy/sdk/shapes:define-list firewall-domain-list-metadata-list :member
                               firewall-domain-list-metadata)

(smithy/sdk/shapes:define-enum firewall-domain-list-status
    common-lisp:nil
  (:complete "COMPLETE")
  (:complete-import-failed "COMPLETE_IMPORT_FAILED")
  (:importing "IMPORTING")
  (:deleting "DELETING")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-type firewall-domain-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum firewall-domain-redirection-action
    common-lisp:nil
  (:inspect-redirection-domain "INSPECT_REDIRECTION_DOMAIN")
  (:trust-redirection-domain "TRUST_REDIRECTION_DOMAIN"))

(smithy/sdk/shapes:define-enum firewall-domain-update-operation
    common-lisp:nil
  (:add "ADD")
  (:remove "REMOVE")
  (:replace "REPLACE"))

(smithy/sdk/shapes:define-list firewall-domains :member firewall-domain-name)

(smithy/sdk/shapes:define-enum firewall-fail-open-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED")
  (:use-local-resource-setting "USE_LOCAL_RESOURCE_SETTING"))

(smithy/sdk/shapes:define-structure firewall-rule common-lisp:nil
                                    ((firewall-rule-group-id :target-type
                                      resource-id :member-name
                                      "FirewallRuleGroupId")
                                     (firewall-domain-list-id :target-type
                                      resource-id :member-name
                                      "FirewallDomainListId")
                                     (firewall-threat-protection-id
                                      :target-type resource-id :member-name
                                      "FirewallThreatProtectionId")
                                     (name :target-type name :member-name
                                      "Name")
                                     (priority :target-type priority
                                      :member-name "Priority")
                                     (action :target-type action :member-name
                                      "Action")
                                     (block-response :target-type
                                      block-response :member-name
                                      "BlockResponse")
                                     (block-override-domain :target-type
                                      block-override-domain :member-name
                                      "BlockOverrideDomain")
                                     (block-override-dns-type :target-type
                                      block-override-dns-type :member-name
                                      "BlockOverrideDnsType")
                                     (block-override-ttl :target-type unsigned
                                      :member-name "BlockOverrideTtl")
                                     (creator-request-id :target-type
                                      creator-request-id :member-name
                                      "CreatorRequestId")
                                     (creation-time :target-type
                                      rfc3339time-string :member-name
                                      "CreationTime")
                                     (modification-time :target-type
                                      rfc3339time-string :member-name
                                      "ModificationTime")
                                     (firewall-domain-redirection-action
                                      :target-type
                                      firewall-domain-redirection-action
                                      :member-name
                                      "FirewallDomainRedirectionAction")
                                     (qtype :target-type qtype :member-name
                                      "Qtype")
                                     (dns-threat-protection :target-type
                                      dns-threat-protection :member-name
                                      "DnsThreatProtection")
                                     (confidence-threshold :target-type
                                      confidence-threshold :member-name
                                      "ConfidenceThreshold"))
                                    (:shape-name "FirewallRule"))

(smithy/sdk/shapes:define-structure firewall-rule-group common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (arn :target-type arn :member-name "Arn")
                                     (name :target-type name :member-name
                                      "Name")
                                     (rule-count :target-type unsigned
                                      :member-name "RuleCount")
                                     (status :target-type
                                      firewall-rule-group-status :member-name
                                      "Status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage")
                                     (owner-id :target-type account-id
                                      :member-name "OwnerId")
                                     (creator-request-id :target-type
                                      creator-request-id :member-name
                                      "CreatorRequestId")
                                     (share-status :target-type share-status
                                      :member-name "ShareStatus")
                                     (creation-time :target-type
                                      rfc3339time-string :member-name
                                      "CreationTime")
                                     (modification-time :target-type
                                      rfc3339time-string :member-name
                                      "ModificationTime"))
                                    (:shape-name "FirewallRuleGroup"))

(smithy/sdk/shapes:define-structure firewall-rule-group-association
                                    common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (arn :target-type arn :member-name "Arn")
                                     (firewall-rule-group-id :target-type
                                      resource-id :member-name
                                      "FirewallRuleGroupId")
                                     (vpc-id :target-type resource-id
                                      :member-name "VpcId")
                                     (name :target-type name :member-name
                                      "Name")
                                     (priority :target-type priority
                                      :member-name "Priority")
                                     (mutation-protection :target-type
                                      mutation-protection-status :member-name
                                      "MutationProtection")
                                     (managed-owner-name :target-type
                                      service-principle :member-name
                                      "ManagedOwnerName")
                                     (status :target-type
                                      firewall-rule-group-association-status
                                      :member-name "Status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage")
                                     (creator-request-id :target-type
                                      creator-request-id :member-name
                                      "CreatorRequestId")
                                     (creation-time :target-type
                                      rfc3339time-string :member-name
                                      "CreationTime")
                                     (modification-time :target-type
                                      rfc3339time-string :member-name
                                      "ModificationTime"))
                                    (:shape-name
                                     "FirewallRuleGroupAssociation"))

(smithy/sdk/shapes:define-enum firewall-rule-group-association-status
    common-lisp:nil
  (:complete "COMPLETE")
  (:deleting "DELETING")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-list firewall-rule-group-associations :member
                               firewall-rule-group-association)

(smithy/sdk/shapes:define-structure firewall-rule-group-metadata
                                    common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (arn :target-type arn :member-name "Arn")
                                     (name :target-type name :member-name
                                      "Name")
                                     (owner-id :target-type account-id
                                      :member-name "OwnerId")
                                     (creator-request-id :target-type
                                      creator-request-id :member-name
                                      "CreatorRequestId")
                                     (share-status :target-type share-status
                                      :member-name "ShareStatus"))
                                    (:shape-name "FirewallRuleGroupMetadata"))

(smithy/sdk/shapes:define-list firewall-rule-group-metadata-list :member
                               firewall-rule-group-metadata)

(smithy/sdk/shapes:define-type firewall-rule-group-policy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum firewall-rule-group-status
    common-lisp:nil
  (:complete "COMPLETE")
  (:deleting "DELETING")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-list firewall-rules :member firewall-rule)

(smithy/sdk/shapes:define-input get-firewall-config-request common-lisp:nil
                                ((resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId"))
                                (:shape-name "GetFirewallConfigRequest"))

(smithy/sdk/shapes:define-output get-firewall-config-response common-lisp:nil
                                 ((firewall-config :target-type firewall-config
                                   :member-name "FirewallConfig"))
                                 (:shape-name "GetFirewallConfigResponse"))

(smithy/sdk/shapes:define-input get-firewall-domain-list-request
                                common-lisp:nil
                                ((firewall-domain-list-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "FirewallDomainListId"))
                                (:shape-name "GetFirewallDomainListRequest"))

(smithy/sdk/shapes:define-output get-firewall-domain-list-response
                                 common-lisp:nil
                                 ((firewall-domain-list :target-type
                                   firewall-domain-list :member-name
                                   "FirewallDomainList"))
                                 (:shape-name "GetFirewallDomainListResponse"))

(smithy/sdk/shapes:define-input get-firewall-rule-group-association-request
                                common-lisp:nil
                                ((firewall-rule-group-association-id
                                  :target-type resource-id :required
                                  common-lisp:t :member-name
                                  "FirewallRuleGroupAssociationId"))
                                (:shape-name
                                 "GetFirewallRuleGroupAssociationRequest"))

(smithy/sdk/shapes:define-output get-firewall-rule-group-association-response
                                 common-lisp:nil
                                 ((firewall-rule-group-association :target-type
                                   firewall-rule-group-association :member-name
                                   "FirewallRuleGroupAssociation"))
                                 (:shape-name
                                  "GetFirewallRuleGroupAssociationResponse"))

(smithy/sdk/shapes:define-input get-firewall-rule-group-policy-request
                                common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "Arn"))
                                (:shape-name
                                 "GetFirewallRuleGroupPolicyRequest"))

(smithy/sdk/shapes:define-output get-firewall-rule-group-policy-response
                                 common-lisp:nil
                                 ((firewall-rule-group-policy :target-type
                                   firewall-rule-group-policy :member-name
                                   "FirewallRuleGroupPolicy"))
                                 (:shape-name
                                  "GetFirewallRuleGroupPolicyResponse"))

(smithy/sdk/shapes:define-input get-firewall-rule-group-request common-lisp:nil
                                ((firewall-rule-group-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "FirewallRuleGroupId"))
                                (:shape-name "GetFirewallRuleGroupRequest"))

(smithy/sdk/shapes:define-output get-firewall-rule-group-response
                                 common-lisp:nil
                                 ((firewall-rule-group :target-type
                                   firewall-rule-group :member-name
                                   "FirewallRuleGroup"))
                                 (:shape-name "GetFirewallRuleGroupResponse"))

(smithy/sdk/shapes:define-input get-outpost-resolver-request common-lisp:nil
                                ((id :target-type resource-id :required
                                  common-lisp:t :member-name "Id"))
                                (:shape-name "GetOutpostResolverRequest"))

(smithy/sdk/shapes:define-output get-outpost-resolver-response common-lisp:nil
                                 ((outpost-resolver :target-type
                                   outpost-resolver :member-name
                                   "OutpostResolver"))
                                 (:shape-name "GetOutpostResolverResponse"))

(smithy/sdk/shapes:define-input get-resolver-config-request common-lisp:nil
                                ((resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId"))
                                (:shape-name "GetResolverConfigRequest"))

(smithy/sdk/shapes:define-output get-resolver-config-response common-lisp:nil
                                 ((resolver-config :target-type resolver-config
                                   :member-name "ResolverConfig"))
                                 (:shape-name "GetResolverConfigResponse"))

(smithy/sdk/shapes:define-input get-resolver-dnssec-config-request
                                common-lisp:nil
                                ((resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId"))
                                (:shape-name "GetResolverDnssecConfigRequest"))

(smithy/sdk/shapes:define-output get-resolver-dnssec-config-response
                                 common-lisp:nil
                                 ((resolver-dnssecconfig :target-type
                                   resolver-dnssec-config :member-name
                                   "ResolverDNSSECConfig"))
                                 (:shape-name
                                  "GetResolverDnssecConfigResponse"))

(smithy/sdk/shapes:define-input get-resolver-endpoint-request common-lisp:nil
                                ((resolver-endpoint-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResolverEndpointId"))
                                (:shape-name "GetResolverEndpointRequest"))

(smithy/sdk/shapes:define-output get-resolver-endpoint-response common-lisp:nil
                                 ((resolver-endpoint :target-type
                                   resolver-endpoint :member-name
                                   "ResolverEndpoint"))
                                 (:shape-name "GetResolverEndpointResponse"))

(smithy/sdk/shapes:define-input
 get-resolver-query-log-config-association-request common-lisp:nil
 ((resolver-query-log-config-association-id :target-type resource-id :required
   common-lisp:t :member-name "ResolverQueryLogConfigAssociationId"))
 (:shape-name "GetResolverQueryLogConfigAssociationRequest"))

(smithy/sdk/shapes:define-output
 get-resolver-query-log-config-association-response common-lisp:nil
 ((resolver-query-log-config-association :target-type
   resolver-query-log-config-association :member-name
   "ResolverQueryLogConfigAssociation"))
 (:shape-name "GetResolverQueryLogConfigAssociationResponse"))

(smithy/sdk/shapes:define-input get-resolver-query-log-config-policy-request
                                common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "Arn"))
                                (:shape-name
                                 "GetResolverQueryLogConfigPolicyRequest"))

(smithy/sdk/shapes:define-output get-resolver-query-log-config-policy-response
                                 common-lisp:nil
                                 ((resolver-query-log-config-policy
                                   :target-type
                                   resolver-query-log-config-policy
                                   :member-name
                                   "ResolverQueryLogConfigPolicy"))
                                 (:shape-name
                                  "GetResolverQueryLogConfigPolicyResponse"))

(smithy/sdk/shapes:define-input get-resolver-query-log-config-request
                                common-lisp:nil
                                ((resolver-query-log-config-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "ResolverQueryLogConfigId"))
                                (:shape-name
                                 "GetResolverQueryLogConfigRequest"))

(smithy/sdk/shapes:define-output get-resolver-query-log-config-response
                                 common-lisp:nil
                                 ((resolver-query-log-config :target-type
                                   resolver-query-log-config :member-name
                                   "ResolverQueryLogConfig"))
                                 (:shape-name
                                  "GetResolverQueryLogConfigResponse"))

(smithy/sdk/shapes:define-input get-resolver-rule-association-request
                                common-lisp:nil
                                ((resolver-rule-association-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "ResolverRuleAssociationId"))
                                (:shape-name
                                 "GetResolverRuleAssociationRequest"))

(smithy/sdk/shapes:define-output get-resolver-rule-association-response
                                 common-lisp:nil
                                 ((resolver-rule-association :target-type
                                   resolver-rule-association :member-name
                                   "ResolverRuleAssociation"))
                                 (:shape-name
                                  "GetResolverRuleAssociationResponse"))

(smithy/sdk/shapes:define-input get-resolver-rule-policy-request
                                common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "Arn"))
                                (:shape-name "GetResolverRulePolicyRequest"))

(smithy/sdk/shapes:define-output get-resolver-rule-policy-response
                                 common-lisp:nil
                                 ((resolver-rule-policy :target-type
                                   resolver-rule-policy :member-name
                                   "ResolverRulePolicy"))
                                 (:shape-name "GetResolverRulePolicyResponse"))

(smithy/sdk/shapes:define-input get-resolver-rule-request common-lisp:nil
                                ((resolver-rule-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResolverRuleId"))
                                (:shape-name "GetResolverRuleRequest"))

(smithy/sdk/shapes:define-output get-resolver-rule-response common-lisp:nil
                                 ((resolver-rule :target-type resolver-rule
                                   :member-name "ResolverRule"))
                                 (:shape-name "GetResolverRuleResponse"))

(smithy/sdk/shapes:define-input import-firewall-domains-request common-lisp:nil
                                ((firewall-domain-list-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "FirewallDomainListId")
                                 (operation :target-type
                                  firewall-domain-import-operation :required
                                  common-lisp:t :member-name "Operation")
                                 (domain-file-url :target-type
                                  domain-list-file-url :required common-lisp:t
                                  :member-name "DomainFileUrl"))
                                (:shape-name "ImportFirewallDomainsRequest"))

(smithy/sdk/shapes:define-output import-firewall-domains-response
                                 common-lisp:nil
                                 ((id :target-type resource-id :member-name
                                   "Id")
                                  (name :target-type name :member-name "Name")
                                  (status :target-type
                                   firewall-domain-list-status :member-name
                                   "Status")
                                  (status-message :target-type status-message
                                   :member-name "StatusMessage"))
                                 (:shape-name "ImportFirewallDomainsResponse"))

(smithy/sdk/shapes:define-type instance-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-service-error-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InternalServiceErrorException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (field-name :target-type string :member-name
                                  "FieldName"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-policy-document common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InvalidPolicyDocument")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-tag-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InvalidTagException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ip smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ip-address-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure ip-address-request common-lisp:nil
                                    ((subnet-id :target-type subnet-id
                                      :required common-lisp:t :member-name
                                      "SubnetId")
                                     (ip :target-type ip :member-name "Ip")
                                     (ipv6 :target-type ipv6 :member-name
                                      "Ipv6"))
                                    (:shape-name "IpAddressRequest"))

(smithy/sdk/shapes:define-structure ip-address-response common-lisp:nil
                                    ((ip-id :target-type resource-id
                                      :member-name "IpId")
                                     (subnet-id :target-type subnet-id
                                      :member-name "SubnetId")
                                     (ip :target-type ip :member-name "Ip")
                                     (ipv6 :target-type ipv6 :member-name
                                      "Ipv6")
                                     (status :target-type ip-address-status
                                      :member-name "Status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage")
                                     (creation-time :target-type
                                      rfc3339time-string :member-name
                                      "CreationTime")
                                     (modification-time :target-type
                                      rfc3339time-string :member-name
                                      "ModificationTime"))
                                    (:shape-name "IpAddressResponse"))

(smithy/sdk/shapes:define-enum ip-address-status
    common-lisp:nil
  (:creating "CREATING")
  (:failed-creation "FAILED_CREATION")
  (:attaching "ATTACHING")
  (:attached "ATTACHED")
  (:remap-detaching "REMAP_DETACHING")
  (:remap-attaching "REMAP_ATTACHING")
  (:detaching "DETACHING")
  (:failed-resource-gone "FAILED_RESOURCE_GONE")
  (:deleting "DELETING")
  (:delete-failed-fas-expired "DELETE_FAILED_FAS_EXPIRED")
  (:updating "UPDATING")
  (:update-failed "UPDATE_FAILED")
  (:isolated "ISOLATED"))

(smithy/sdk/shapes:define-structure ip-address-update common-lisp:nil
                                    ((ip-id :target-type resource-id
                                      :member-name "IpId")
                                     (subnet-id :target-type subnet-id
                                      :member-name "SubnetId")
                                     (ip :target-type ip :member-name "Ip")
                                     (ipv6 :target-type ipv6 :member-name
                                      "Ipv6"))
                                    (:shape-name "IpAddressUpdate"))

(smithy/sdk/shapes:define-list ip-addresses-request :member ip-address-request)

(smithy/sdk/shapes:define-list ip-addresses-response :member
                               ip-address-response)

(smithy/sdk/shapes:define-type ipv6 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (resource-type :target-type string
                                  :member-name "ResourceType"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type list-domain-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type list-firewall-configs-max-result
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-firewall-configs-request common-lisp:nil
                                ((max-results :target-type
                                  list-firewall-configs-max-result :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListFirewallConfigsRequest"))

(smithy/sdk/shapes:define-output list-firewall-configs-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (firewall-configs :target-type
                                   firewall-config-list :member-name
                                   "FirewallConfigs"))
                                 (:shape-name "ListFirewallConfigsResponse"))

(smithy/sdk/shapes:define-input list-firewall-domain-lists-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListFirewallDomainListsRequest"))

(smithy/sdk/shapes:define-output list-firewall-domain-lists-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (firewall-domain-lists :target-type
                                   firewall-domain-list-metadata-list
                                   :member-name "FirewallDomainLists"))
                                 (:shape-name
                                  "ListFirewallDomainListsResponse"))

(smithy/sdk/shapes:define-input list-firewall-domains-request common-lisp:nil
                                ((firewall-domain-list-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "FirewallDomainListId")
                                 (max-results :target-type
                                  list-domain-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListFirewallDomainsRequest"))

(smithy/sdk/shapes:define-output list-firewall-domains-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (domains :target-type firewall-domains
                                   :member-name "Domains"))
                                 (:shape-name "ListFirewallDomainsResponse"))

(smithy/sdk/shapes:define-input list-firewall-rule-group-associations-request
                                common-lisp:nil
                                ((firewall-rule-group-id :target-type
                                  resource-id :member-name
                                  "FirewallRuleGroupId")
                                 (vpc-id :target-type resource-id :member-name
                                  "VpcId")
                                 (priority :target-type priority :member-name
                                  "Priority")
                                 (status :target-type
                                  firewall-rule-group-association-status
                                  :member-name "Status")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListFirewallRuleGroupAssociationsRequest"))

(smithy/sdk/shapes:define-output list-firewall-rule-group-associations-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (firewall-rule-group-associations
                                   :target-type
                                   firewall-rule-group-associations
                                   :member-name
                                   "FirewallRuleGroupAssociations"))
                                 (:shape-name
                                  "ListFirewallRuleGroupAssociationsResponse"))

(smithy/sdk/shapes:define-input list-firewall-rule-groups-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListFirewallRuleGroupsRequest"))

(smithy/sdk/shapes:define-output list-firewall-rule-groups-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (firewall-rule-groups :target-type
                                   firewall-rule-group-metadata-list
                                   :member-name "FirewallRuleGroups"))
                                 (:shape-name "ListFirewallRuleGroupsResponse"))

(smithy/sdk/shapes:define-input list-firewall-rules-request common-lisp:nil
                                ((firewall-rule-group-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "FirewallRuleGroupId")
                                 (priority :target-type priority :member-name
                                  "Priority")
                                 (action :target-type action :member-name
                                  "Action")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListFirewallRulesRequest"))

(smithy/sdk/shapes:define-output list-firewall-rules-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (firewall-rules :target-type firewall-rules
                                   :member-name "FirewallRules"))
                                 (:shape-name "ListFirewallRulesResponse"))

(smithy/sdk/shapes:define-input list-outpost-resolvers-request common-lisp:nil
                                ((outpost-arn :target-type outpost-arn
                                  :member-name "OutpostArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListOutpostResolversRequest"))

(smithy/sdk/shapes:define-output list-outpost-resolvers-response
                                 common-lisp:nil
                                 ((outpost-resolvers :target-type
                                   outpost-resolver-list :member-name
                                   "OutpostResolvers")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListOutpostResolversResponse"))

(smithy/sdk/shapes:define-type list-resolver-configs-max-result
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-resolver-configs-request common-lisp:nil
                                ((max-results :target-type
                                  list-resolver-configs-max-result :member-name
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListResolverConfigsRequest"))

(smithy/sdk/shapes:define-output list-resolver-configs-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (resolver-configs :target-type
                                   resolver-config-list :member-name
                                   "ResolverConfigs"))
                                 (:shape-name "ListResolverConfigsResponse"))

(smithy/sdk/shapes:define-input list-resolver-dnssec-configs-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (filters :target-type filters :member-name
                                  "Filters"))
                                (:shape-name
                                 "ListResolverDnssecConfigsRequest"))

(smithy/sdk/shapes:define-output list-resolver-dnssec-configs-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (resolver-dnssec-configs :target-type
                                   resolver-dnssec-config-list :member-name
                                   "ResolverDnssecConfigs"))
                                 (:shape-name
                                  "ListResolverDnssecConfigsResponse"))

(smithy/sdk/shapes:define-input list-resolver-endpoint-ip-addresses-request
                                common-lisp:nil
                                ((resolver-endpoint-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResolverEndpointId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListResolverEndpointIpAddressesRequest"))

(smithy/sdk/shapes:define-output list-resolver-endpoint-ip-addresses-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (max-results :target-type max-results
                                   :member-name "MaxResults")
                                  (ip-addresses :target-type
                                   ip-addresses-response :member-name
                                   "IpAddresses"))
                                 (:shape-name
                                  "ListResolverEndpointIpAddressesResponse"))

(smithy/sdk/shapes:define-input list-resolver-endpoints-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (filters :target-type filters :member-name
                                  "Filters"))
                                (:shape-name "ListResolverEndpointsRequest"))

(smithy/sdk/shapes:define-output list-resolver-endpoints-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (max-results :target-type max-results
                                   :member-name "MaxResults")
                                  (resolver-endpoints :target-type
                                   resolver-endpoints :member-name
                                   "ResolverEndpoints"))
                                 (:shape-name "ListResolverEndpointsResponse"))

(smithy/sdk/shapes:define-input
 list-resolver-query-log-config-associations-request common-lisp:nil
 ((max-results :target-type max-results :member-name "MaxResults")
  (next-token :target-type next-token :member-name "NextToken")
  (filters :target-type filters :member-name "Filters")
  (sort-by :target-type sort-by-key :member-name "SortBy")
  (sort-order :target-type sort-order :member-name "SortOrder"))
 (:shape-name "ListResolverQueryLogConfigAssociationsRequest"))

(smithy/sdk/shapes:define-output
 list-resolver-query-log-config-associations-response common-lisp:nil
 ((next-token :target-type next-token :member-name "NextToken")
  (total-count :target-type count :member-name "TotalCount")
  (total-filtered-count :target-type count :member-name "TotalFilteredCount")
  (resolver-query-log-config-associations :target-type
   resolver-query-log-config-association-list :member-name
   "ResolverQueryLogConfigAssociations"))
 (:shape-name "ListResolverQueryLogConfigAssociationsResponse"))

(smithy/sdk/shapes:define-input list-resolver-query-log-configs-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (filters :target-type filters :member-name
                                  "Filters")
                                 (sort-by :target-type sort-by-key :member-name
                                  "SortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "SortOrder"))
                                (:shape-name
                                 "ListResolverQueryLogConfigsRequest"))

(smithy/sdk/shapes:define-output list-resolver-query-log-configs-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (total-count :target-type count :member-name
                                   "TotalCount")
                                  (total-filtered-count :target-type count
                                   :member-name "TotalFilteredCount")
                                  (resolver-query-log-configs :target-type
                                   resolver-query-log-config-list :member-name
                                   "ResolverQueryLogConfigs"))
                                 (:shape-name
                                  "ListResolverQueryLogConfigsResponse"))

(smithy/sdk/shapes:define-input list-resolver-rule-associations-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (filters :target-type filters :member-name
                                  "Filters"))
                                (:shape-name
                                 "ListResolverRuleAssociationsRequest"))

(smithy/sdk/shapes:define-output list-resolver-rule-associations-response
                                 common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (max-results :target-type max-results
                                   :member-name "MaxResults")
                                  (resolver-rule-associations :target-type
                                   resolver-rule-associations :member-name
                                   "ResolverRuleAssociations"))
                                 (:shape-name
                                  "ListResolverRuleAssociationsResponse"))

(smithy/sdk/shapes:define-input list-resolver-rules-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (filters :target-type filters :member-name
                                  "Filters"))
                                (:shape-name "ListResolverRulesRequest"))

(smithy/sdk/shapes:define-output list-resolver-rules-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken")
                                  (max-results :target-type max-results
                                   :member-name "MaxResults")
                                  (resolver-rules :target-type resolver-rules
                                   :member-name "ResolverRules"))
                                 (:shape-name "ListResolverRulesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum mutation-protection-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type outpost-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type outpost-instance-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure outpost-resolver common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (creation-time :target-type
                                      rfc3339time-string :member-name
                                      "CreationTime")
                                     (modification-time :target-type
                                      rfc3339time-string :member-name
                                      "ModificationTime")
                                     (creator-request-id :target-type
                                      creator-request-id :member-name
                                      "CreatorRequestId")
                                     (id :target-type resource-id :member-name
                                      "Id")
                                     (instance-count :target-type
                                      instance-count :member-name
                                      "InstanceCount")
                                     (preferred-instance-type :target-type
                                      outpost-instance-type :member-name
                                      "PreferredInstanceType")
                                     (name :target-type outpost-resolver-name
                                      :member-name "Name")
                                     (status :target-type
                                      outpost-resolver-status :member-name
                                      "Status")
                                     (status-message :target-type
                                      outpost-resolver-status-message
                                      :member-name "StatusMessage")
                                     (outpost-arn :target-type outpost-arn
                                      :member-name "OutpostArn"))
                                    (:shape-name "OutpostResolver"))

(smithy/sdk/shapes:define-list outpost-resolver-list :member outpost-resolver)

(smithy/sdk/shapes:define-type outpost-resolver-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum outpost-resolver-status
    common-lisp:nil
  (:creating "CREATING")
  (:operational "OPERATIONAL")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:action-needed "ACTION_NEEDED")
  (:failed-creation "FAILED_CREATION")
  (:failed-deletion "FAILED_DELETION"))

(smithy/sdk/shapes:define-type outpost-resolver-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type priority smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum protocol
    common-lisp:nil
  (:doh "DoH")
  (:do53 "Do53")
  (:dohfips "DoH-FIPS"))

(smithy/sdk/shapes:define-list protocol-list :member protocol)

(smithy/sdk/shapes:define-input put-firewall-rule-group-policy-request
                                common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "Arn")
                                 (firewall-rule-group-policy :target-type
                                  firewall-rule-group-policy :required
                                  common-lisp:t :member-name
                                  "FirewallRuleGroupPolicy"))
                                (:shape-name
                                 "PutFirewallRuleGroupPolicyRequest"))

(smithy/sdk/shapes:define-output put-firewall-rule-group-policy-response
                                 common-lisp:nil
                                 ((return-value :target-type boolean
                                   :member-name "ReturnValue"))
                                 (:shape-name
                                  "PutFirewallRuleGroupPolicyResponse"))

(smithy/sdk/shapes:define-input put-resolver-query-log-config-policy-request
                                common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "Arn")
                                 (resolver-query-log-config-policy :target-type
                                  resolver-query-log-config-policy :required
                                  common-lisp:t :member-name
                                  "ResolverQueryLogConfigPolicy"))
                                (:shape-name
                                 "PutResolverQueryLogConfigPolicyRequest"))

(smithy/sdk/shapes:define-output put-resolver-query-log-config-policy-response
                                 common-lisp:nil
                                 ((return-value :target-type boolean
                                   :member-name "ReturnValue"))
                                 (:shape-name
                                  "PutResolverQueryLogConfigPolicyResponse"))

(smithy/sdk/shapes:define-input put-resolver-rule-policy-request
                                common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "Arn")
                                 (resolver-rule-policy :target-type
                                  resolver-rule-policy :required common-lisp:t
                                  :member-name "ResolverRulePolicy"))
                                (:shape-name "PutResolverRulePolicyRequest"))

(smithy/sdk/shapes:define-output put-resolver-rule-policy-response
                                 common-lisp:nil
                                 ((return-value :target-type boolean
                                   :member-name "ReturnValue"))
                                 (:shape-name "PutResolverRulePolicyResponse"))

(smithy/sdk/shapes:define-type qtype smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum resolver-autodefined-reverse-status
    common-lisp:nil
  (:enabling "ENABLING")
  (:enabled "ENABLED")
  (:disabling "DISABLING")
  (:disabled "DISABLED")
  (:updating-to-use-local-resource-setting
   "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING")
  (:use-local-resource-setting "USE_LOCAL_RESOURCE_SETTING"))

(smithy/sdk/shapes:define-structure resolver-config common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (resource-id :target-type resource-id
                                      :member-name "ResourceId")
                                     (owner-id :target-type account-id
                                      :member-name "OwnerId")
                                     (autodefined-reverse :target-type
                                      resolver-autodefined-reverse-status
                                      :member-name "AutodefinedReverse"))
                                    (:shape-name "ResolverConfig"))

(smithy/sdk/shapes:define-list resolver-config-list :member resolver-config)

(smithy/sdk/shapes:define-enum resolver-dnssecvalidation-status
    common-lisp:nil
  (:enabling "ENABLING")
  (:enabled "ENABLED")
  (:disabling "DISABLING")
  (:disabled "DISABLED")
  (:update-to-use-local-resource-setting
   "UPDATING_TO_USE_LOCAL_RESOURCE_SETTING")
  (:use-local-resource-setting "USE_LOCAL_RESOURCE_SETTING"))

(smithy/sdk/shapes:define-structure resolver-dnssec-config common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (owner-id :target-type account-id
                                      :member-name "OwnerId")
                                     (resource-id :target-type resource-id
                                      :member-name "ResourceId")
                                     (validation-status :target-type
                                      resolver-dnssecvalidation-status
                                      :member-name "ValidationStatus"))
                                    (:shape-name "ResolverDnssecConfig"))

(smithy/sdk/shapes:define-list resolver-dnssec-config-list :member
                               resolver-dnssec-config)

(smithy/sdk/shapes:define-structure resolver-endpoint common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (creator-request-id :target-type
                                      creator-request-id :member-name
                                      "CreatorRequestId")
                                     (arn :target-type arn :member-name "Arn")
                                     (name :target-type name :member-name
                                      "Name")
                                     (security-group-ids :target-type
                                      security-group-ids :member-name
                                      "SecurityGroupIds")
                                     (direction :target-type
                                      resolver-endpoint-direction :member-name
                                      "Direction")
                                     (ip-address-count :target-type
                                      ip-address-count :member-name
                                      "IpAddressCount")
                                     (host-vpcid :target-type resource-id
                                      :member-name "HostVPCId")
                                     (status :target-type
                                      resolver-endpoint-status :member-name
                                      "Status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage")
                                     (creation-time :target-type
                                      rfc3339time-string :member-name
                                      "CreationTime")
                                     (modification-time :target-type
                                      rfc3339time-string :member-name
                                      "ModificationTime")
                                     (outpost-arn :target-type outpost-arn
                                      :member-name "OutpostArn")
                                     (preferred-instance-type :target-type
                                      outpost-instance-type :member-name
                                      "PreferredInstanceType")
                                     (resolver-endpoint-type :target-type
                                      resolver-endpoint-type :member-name
                                      "ResolverEndpointType")
                                     (protocols :target-type protocol-list
                                      :member-name "Protocols"))
                                    (:shape-name "ResolverEndpoint"))

(smithy/sdk/shapes:define-enum resolver-endpoint-direction
    common-lisp:nil
  (:inbound "INBOUND")
  (:outbound "OUTBOUND")
  (:inbound-delegation "INBOUND_DELEGATION"))

(smithy/sdk/shapes:define-enum resolver-endpoint-status
    common-lisp:nil
  (:creating "CREATING")
  (:operational "OPERATIONAL")
  (:updating "UPDATING")
  (:auto-recovering "AUTO_RECOVERING")
  (:action-needed "ACTION_NEEDED")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-enum resolver-endpoint-type
    common-lisp:nil
  (:ipv6 "IPV6")
  (:ipv4 "IPV4")
  (:dualstack "DUALSTACK"))

(smithy/sdk/shapes:define-list resolver-endpoints :member resolver-endpoint)

(smithy/sdk/shapes:define-structure resolver-query-log-config common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (owner-id :target-type account-id
                                      :member-name "OwnerId")
                                     (status :target-type
                                      resolver-query-log-config-status
                                      :member-name "Status")
                                     (share-status :target-type share-status
                                      :member-name "ShareStatus")
                                     (association-count :target-type count
                                      :member-name "AssociationCount")
                                     (arn :target-type arn :member-name "Arn")
                                     (name :target-type
                                      resolver-query-log-config-name
                                      :member-name "Name")
                                     (destination-arn :target-type
                                      destination-arn :member-name
                                      "DestinationArn")
                                     (creator-request-id :target-type
                                      creator-request-id :member-name
                                      "CreatorRequestId")
                                     (creation-time :target-type
                                      rfc3339time-string :member-name
                                      "CreationTime"))
                                    (:shape-name "ResolverQueryLogConfig"))

(smithy/sdk/shapes:define-structure resolver-query-log-config-association
                                    common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (resolver-query-log-config-id :target-type
                                      resource-id :member-name
                                      "ResolverQueryLogConfigId")
                                     (resource-id :target-type resource-id
                                      :member-name "ResourceId")
                                     (status :target-type
                                      resolver-query-log-config-association-status
                                      :member-name "Status")
                                     (error :target-type
                                      resolver-query-log-config-association-error
                                      :member-name "Error")
                                     (error-message :target-type
                                      resolver-query-log-config-association-error-message
                                      :member-name "ErrorMessage")
                                     (creation-time :target-type
                                      rfc3339time-string :member-name
                                      "CreationTime"))
                                    (:shape-name
                                     "ResolverQueryLogConfigAssociation"))

(smithy/sdk/shapes:define-enum resolver-query-log-config-association-error
    common-lisp:nil
  (:none "NONE")
  (:destination-not-found "DESTINATION_NOT_FOUND")
  (:access-denied "ACCESS_DENIED")
  (:internal-service-error "INTERNAL_SERVICE_ERROR"))

(smithy/sdk/shapes:define-type
 resolver-query-log-config-association-error-message
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resolver-query-log-config-association-list
                               :member resolver-query-log-config-association)

(smithy/sdk/shapes:define-enum resolver-query-log-config-association-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:action-needed "ACTION_NEEDED")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list resolver-query-log-config-list :member
                               resolver-query-log-config)

(smithy/sdk/shapes:define-type resolver-query-log-config-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resolver-query-log-config-policy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum resolver-query-log-config-status
    common-lisp:nil
  (:creating "CREATING")
  (:created "CREATED")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure resolver-rule common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (creator-request-id :target-type
                                      creator-request-id :member-name
                                      "CreatorRequestId")
                                     (arn :target-type arn :member-name "Arn")
                                     (domain-name :target-type domain-name
                                      :member-name "DomainName")
                                     (status :target-type resolver-rule-status
                                      :member-name "Status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage")
                                     (rule-type :target-type rule-type-option
                                      :member-name "RuleType")
                                     (name :target-type name :member-name
                                      "Name")
                                     (target-ips :target-type target-list
                                      :member-name "TargetIps")
                                     (resolver-endpoint-id :target-type
                                      resource-id :member-name
                                      "ResolverEndpointId")
                                     (owner-id :target-type account-id
                                      :member-name "OwnerId")
                                     (share-status :target-type share-status
                                      :member-name "ShareStatus")
                                     (creation-time :target-type
                                      rfc3339time-string :member-name
                                      "CreationTime")
                                     (modification-time :target-type
                                      rfc3339time-string :member-name
                                      "ModificationTime")
                                     (delegation-record :target-type
                                      delegation-record :member-name
                                      "DelegationRecord"))
                                    (:shape-name "ResolverRule"))

(smithy/sdk/shapes:define-structure resolver-rule-association common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id")
                                     (resolver-rule-id :target-type resource-id
                                      :member-name "ResolverRuleId")
                                     (name :target-type name :member-name
                                      "Name")
                                     (vpcid :target-type resource-id
                                      :member-name "VPCId")
                                     (status :target-type
                                      resolver-rule-association-status
                                      :member-name "Status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage"))
                                    (:shape-name "ResolverRuleAssociation"))

(smithy/sdk/shapes:define-enum resolver-rule-association-status
    common-lisp:nil
  (:creating "CREATING")
  (:complete "COMPLETE")
  (:deleting "DELETING")
  (:failed "FAILED")
  (:overridden "OVERRIDDEN"))

(smithy/sdk/shapes:define-list resolver-rule-associations :member
                               resolver-rule-association)

(smithy/sdk/shapes:define-structure resolver-rule-config common-lisp:nil
                                    ((name :target-type name :member-name
                                      "Name")
                                     (target-ips :target-type target-list
                                      :member-name "TargetIps")
                                     (resolver-endpoint-id :target-type
                                      resource-id :member-name
                                      "ResolverEndpointId"))
                                    (:shape-name "ResolverRuleConfig"))

(smithy/sdk/shapes:define-type resolver-rule-policy
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum resolver-rule-status
    common-lisp:nil
  (:complete "COMPLETE")
  (:deleting "DELETING")
  (:updating "UPDATING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list resolver-rules :member resolver-rule)

(smithy/sdk/shapes:define-error resource-exists-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (resource-type :target-type string
                                  :member-name "ResourceType"))
                                (:shape-name "ResourceExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (resource-type :target-type string
                                  :member-name "ResourceType"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (resource-type :target-type string
                                  :member-name "ResourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-unavailable-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (resource-type :target-type string
                                  :member-name "ResourceType"))
                                (:shape-name "ResourceUnavailableException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type rfc3339time-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum rule-type-option
    common-lisp:nil
  (:forward "FORWARD")
  (:system "SYSTEM")
  (:recursive "RECURSIVE")
  (:delegate "DELEGATE"))

(smithy/sdk/shapes:define-list security-group-ids :member resource-id)

(smithy/sdk/shapes:define-type server-name-indication
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-principle smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum share-status
    common-lisp:nil
  (:not-shared "NOT_SHARED")
  (:shared-with-me "SHARED_WITH_ME")
  (:shared-by-me "SHARED_BY_ME"))

(smithy/sdk/shapes:define-type sort-by-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:ascending "ASCENDING")
  (:descending "DESCENDING"))

(smithy/sdk/shapes:define-type status-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

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
                                  common-lisp:t :member-name "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure target-address common-lisp:nil
                                    ((ip :target-type ip :member-name "Ip")
                                     (port :target-type port :member-name
                                      "Port")
                                     (ipv6 :target-type ipv6 :member-name
                                      "Ipv6")
                                     (protocol :target-type protocol
                                      :member-name "Protocol")
                                     (server-name-indication :target-type
                                      server-name-indication :member-name
                                      "ServerNameIndication"))
                                    (:shape-name "TargetAddress"))

(smithy/sdk/shapes:define-list target-list :member target-address)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error unknown-resource-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "UnknownResourceException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type unsigned smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-firewall-config-request common-lisp:nil
                                ((resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (firewall-fail-open :target-type
                                  firewall-fail-open-status :required
                                  common-lisp:t :member-name
                                  "FirewallFailOpen"))
                                (:shape-name "UpdateFirewallConfigRequest"))

(smithy/sdk/shapes:define-output update-firewall-config-response
                                 common-lisp:nil
                                 ((firewall-config :target-type firewall-config
                                   :member-name "FirewallConfig"))
                                 (:shape-name "UpdateFirewallConfigResponse"))

(smithy/sdk/shapes:define-input update-firewall-domains-request common-lisp:nil
                                ((firewall-domain-list-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "FirewallDomainListId")
                                 (operation :target-type
                                  firewall-domain-update-operation :required
                                  common-lisp:t :member-name "Operation")
                                 (domains :target-type firewall-domains
                                  :required common-lisp:t :member-name
                                  "Domains"))
                                (:shape-name "UpdateFirewallDomainsRequest"))

(smithy/sdk/shapes:define-output update-firewall-domains-response
                                 common-lisp:nil
                                 ((id :target-type resource-id :member-name
                                   "Id")
                                  (name :target-type name :member-name "Name")
                                  (status :target-type
                                   firewall-domain-list-status :member-name
                                   "Status")
                                  (status-message :target-type status-message
                                   :member-name "StatusMessage"))
                                 (:shape-name "UpdateFirewallDomainsResponse"))

(smithy/sdk/shapes:define-input update-firewall-rule-group-association-request
                                common-lisp:nil
                                ((firewall-rule-group-association-id
                                  :target-type resource-id :required
                                  common-lisp:t :member-name
                                  "FirewallRuleGroupAssociationId")
                                 (priority :target-type priority :member-name
                                  "Priority")
                                 (mutation-protection :target-type
                                  mutation-protection-status :member-name
                                  "MutationProtection")
                                 (name :target-type name :member-name "Name"))
                                (:shape-name
                                 "UpdateFirewallRuleGroupAssociationRequest"))

(smithy/sdk/shapes:define-output
 update-firewall-rule-group-association-response common-lisp:nil
 ((firewall-rule-group-association :target-type firewall-rule-group-association
   :member-name "FirewallRuleGroupAssociation"))
 (:shape-name "UpdateFirewallRuleGroupAssociationResponse"))

(smithy/sdk/shapes:define-input update-firewall-rule-request common-lisp:nil
                                ((firewall-rule-group-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "FirewallRuleGroupId")
                                 (firewall-domain-list-id :target-type
                                  resource-id :member-name
                                  "FirewallDomainListId")
                                 (firewall-threat-protection-id :target-type
                                  resource-id :member-name
                                  "FirewallThreatProtectionId")
                                 (priority :target-type priority :member-name
                                  "Priority")
                                 (action :target-type action :member-name
                                  "Action")
                                 (block-response :target-type block-response
                                  :member-name "BlockResponse")
                                 (block-override-domain :target-type
                                  block-override-domain :member-name
                                  "BlockOverrideDomain")
                                 (block-override-dns-type :target-type
                                  block-override-dns-type :member-name
                                  "BlockOverrideDnsType")
                                 (block-override-ttl :target-type
                                  block-override-ttl :member-name
                                  "BlockOverrideTtl")
                                 (name :target-type name :member-name "Name")
                                 (firewall-domain-redirection-action
                                  :target-type
                                  firewall-domain-redirection-action
                                  :member-name
                                  "FirewallDomainRedirectionAction")
                                 (qtype :target-type qtype :member-name
                                  "Qtype")
                                 (dns-threat-protection :target-type
                                  dns-threat-protection :member-name
                                  "DnsThreatProtection")
                                 (confidence-threshold :target-type
                                  confidence-threshold :member-name
                                  "ConfidenceThreshold"))
                                (:shape-name "UpdateFirewallRuleRequest"))

(smithy/sdk/shapes:define-output update-firewall-rule-response common-lisp:nil
                                 ((firewall-rule :target-type firewall-rule
                                   :member-name "FirewallRule"))
                                 (:shape-name "UpdateFirewallRuleResponse"))

(smithy/sdk/shapes:define-structure update-ip-address common-lisp:nil
                                    ((ip-id :target-type resource-id :required
                                      common-lisp:t :member-name "IpId")
                                     (ipv6 :target-type ipv6 :required
                                      common-lisp:t :member-name "Ipv6"))
                                    (:shape-name "UpdateIpAddress"))

(smithy/sdk/shapes:define-list update-ip-addresses :member update-ip-address)

(smithy/sdk/shapes:define-input update-outpost-resolver-request common-lisp:nil
                                ((id :target-type resource-id :required
                                  common-lisp:t :member-name "Id")
                                 (name :target-type outpost-resolver-name
                                  :member-name "Name")
                                 (instance-count :target-type instance-count
                                  :member-name "InstanceCount")
                                 (preferred-instance-type :target-type
                                  outpost-instance-type :member-name
                                  "PreferredInstanceType"))
                                (:shape-name "UpdateOutpostResolverRequest"))

(smithy/sdk/shapes:define-output update-outpost-resolver-response
                                 common-lisp:nil
                                 ((outpost-resolver :target-type
                                   outpost-resolver :member-name
                                   "OutpostResolver"))
                                 (:shape-name "UpdateOutpostResolverResponse"))

(smithy/sdk/shapes:define-input update-resolver-config-request common-lisp:nil
                                ((resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (autodefined-reverse-flag :target-type
                                  autodefined-reverse-flag :required
                                  common-lisp:t :member-name
                                  "AutodefinedReverseFlag"))
                                (:shape-name "UpdateResolverConfigRequest"))

(smithy/sdk/shapes:define-output update-resolver-config-response
                                 common-lisp:nil
                                 ((resolver-config :target-type resolver-config
                                   :member-name "ResolverConfig"))
                                 (:shape-name "UpdateResolverConfigResponse"))

(smithy/sdk/shapes:define-input update-resolver-dnssec-config-request
                                common-lisp:nil
                                ((resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (validation :target-type validation :required
                                  common-lisp:t :member-name "Validation"))
                                (:shape-name
                                 "UpdateResolverDnssecConfigRequest"))

(smithy/sdk/shapes:define-output update-resolver-dnssec-config-response
                                 common-lisp:nil
                                 ((resolver-dnssecconfig :target-type
                                   resolver-dnssec-config :member-name
                                   "ResolverDNSSECConfig"))
                                 (:shape-name
                                  "UpdateResolverDnssecConfigResponse"))

(smithy/sdk/shapes:define-input update-resolver-endpoint-request
                                common-lisp:nil
                                ((resolver-endpoint-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResolverEndpointId")
                                 (name :target-type name :member-name "Name")
                                 (resolver-endpoint-type :target-type
                                  resolver-endpoint-type :member-name
                                  "ResolverEndpointType")
                                 (update-ip-addresses :target-type
                                  update-ip-addresses :member-name
                                  "UpdateIpAddresses")
                                 (protocols :target-type protocol-list
                                  :member-name "Protocols"))
                                (:shape-name "UpdateResolverEndpointRequest"))

(smithy/sdk/shapes:define-output update-resolver-endpoint-response
                                 common-lisp:nil
                                 ((resolver-endpoint :target-type
                                   resolver-endpoint :member-name
                                   "ResolverEndpoint"))
                                 (:shape-name "UpdateResolverEndpointResponse"))

(smithy/sdk/shapes:define-input update-resolver-rule-request common-lisp:nil
                                ((resolver-rule-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResolverRuleId")
                                 (config :target-type resolver-rule-config
                                  :required common-lisp:t :member-name
                                  "Config"))
                                (:shape-name "UpdateResolverRuleRequest"))

(smithy/sdk/shapes:define-output update-resolver-rule-response common-lisp:nil
                                 ((resolver-rule :target-type resolver-rule
                                   :member-name "ResolverRule"))
                                 (:shape-name "UpdateResolverRuleResponse"))

(smithy/sdk/shapes:define-enum validation
    common-lisp:nil
  (:enable "ENABLE")
  (:disable "DISABLE")
  (:use-local-resource-setting "USE_LOCAL_RESOURCE_SETTING"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation associate-firewall-rule-group
                                       :shape-name "AssociateFirewallRuleGroup"
                                       :input
                                       associate-firewall-rule-group-request
                                       :output
                                       associate-firewall-rule-group-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-error-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation associate-resolver-endpoint-ip-address
                                       :shape-name
                                       "AssociateResolverEndpointIpAddress"
                                       :input
                                       associate-resolver-endpoint-ip-address-request
                                       :output
                                       associate-resolver-endpoint-ip-address-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-exists-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation associate-resolver-query-log-config
                                       :shape-name
                                       "AssociateResolverQueryLogConfig" :input
                                       associate-resolver-query-log-config-request
                                       :output
                                       associate-resolver-query-log-config-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-exists-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation associate-resolver-rule :shape-name
                                       "AssociateResolverRule" :input
                                       associate-resolver-rule-request :output
                                       associate-resolver-rule-response :errors
                                       (internal-service-error-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-exists-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-firewall-domain-list :shape-name
                                       "CreateFirewallDomainList" :input
                                       create-firewall-domain-list-request
                                       :output
                                       create-firewall-domain-list-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        limit-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-firewall-rule :shape-name
                                       "CreateFirewallRule" :input
                                       create-firewall-rule-request :output
                                       create-firewall-rule-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-firewall-rule-group :shape-name
                                       "CreateFirewallRuleGroup" :input
                                       create-firewall-rule-group-request
                                       :output
                                       create-firewall-rule-group-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        limit-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-outpost-resolver :shape-name
                                       "CreateOutpostResolver" :input
                                       create-outpost-resolver-request :output
                                       create-outpost-resolver-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-resolver-endpoint :shape-name
                                       "CreateResolverEndpoint" :input
                                       create-resolver-endpoint-request :output
                                       create-resolver-endpoint-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-exists-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-resolver-query-log-config
                                       :shape-name
                                       "CreateResolverQueryLogConfig" :input
                                       create-resolver-query-log-config-request
                                       :output
                                       create-resolver-query-log-config-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-exists-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-resolver-rule :shape-name
                                       "CreateResolverRule" :input
                                       create-resolver-rule-request :output
                                       create-resolver-rule-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-exists-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-firewall-domain-list :shape-name
                                       "DeleteFirewallDomainList" :input
                                       delete-firewall-domain-list-request
                                       :output
                                       delete-firewall-domain-list-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-firewall-rule :shape-name
                                       "DeleteFirewallRule" :input
                                       delete-firewall-rule-request :output
                                       delete-firewall-rule-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-firewall-rule-group :shape-name
                                       "DeleteFirewallRuleGroup" :input
                                       delete-firewall-rule-group-request
                                       :output
                                       delete-firewall-rule-group-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-outpost-resolver :shape-name
                                       "DeleteOutpostResolver" :input
                                       delete-outpost-resolver-request :output
                                       delete-outpost-resolver-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-resolver-endpoint :shape-name
                                       "DeleteResolverEndpoint" :input
                                       delete-resolver-endpoint-request :output
                                       delete-resolver-endpoint-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-resolver-query-log-config
                                       :shape-name
                                       "DeleteResolverQueryLogConfig" :input
                                       delete-resolver-query-log-config-request
                                       :output
                                       delete-resolver-query-log-config-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-resolver-rule :shape-name
                                       "DeleteResolverRule" :input
                                       delete-resolver-rule-request :output
                                       delete-resolver-rule-response :errors
                                       (internal-service-error-exception
                                        invalid-parameter-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation disassociate-firewall-rule-group
                                       :shape-name
                                       "DisassociateFirewallRuleGroup" :input
                                       disassociate-firewall-rule-group-request
                                       :output
                                       disassociate-firewall-rule-group-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 disassociate-resolver-endpoint-ip-address :shape-name
 "DisassociateResolverEndpointIpAddress" :input
 disassociate-resolver-endpoint-ip-address-request :output
 disassociate-resolver-endpoint-ip-address-response :errors
 (internal-service-error-exception invalid-parameter-exception
  invalid-request-exception resource-exists-exception
  resource-not-found-exception throttling-exception))

(smithy/sdk/operation:define-operation disassociate-resolver-query-log-config
                                       :shape-name
                                       "DisassociateResolverQueryLogConfig"
                                       :input
                                       disassociate-resolver-query-log-config-request
                                       :output
                                       disassociate-resolver-query-log-config-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation disassociate-resolver-rule :shape-name
                                       "DisassociateResolverRule" :input
                                       disassociate-resolver-rule-request
                                       :output
                                       disassociate-resolver-rule-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-firewall-config :shape-name
                                       "GetFirewallConfig" :input
                                       get-firewall-config-request :output
                                       get-firewall-config-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-firewall-domain-list :shape-name
                                       "GetFirewallDomainList" :input
                                       get-firewall-domain-list-request :output
                                       get-firewall-domain-list-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-firewall-rule-group :shape-name
                                       "GetFirewallRuleGroup" :input
                                       get-firewall-rule-group-request :output
                                       get-firewall-rule-group-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-firewall-rule-group-association
                                       :shape-name
                                       "GetFirewallRuleGroupAssociation" :input
                                       get-firewall-rule-group-association-request
                                       :output
                                       get-firewall-rule-group-association-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-firewall-rule-group-policy
                                       :shape-name "GetFirewallRuleGroupPolicy"
                                       :input
                                       get-firewall-rule-group-policy-request
                                       :output
                                       get-firewall-rule-group-policy-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-outpost-resolver :shape-name
                                       "GetOutpostResolver" :input
                                       get-outpost-resolver-request :output
                                       get-outpost-resolver-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-resolver-config :shape-name
                                       "GetResolverConfig" :input
                                       get-resolver-config-request :output
                                       get-resolver-config-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-resolver-dnssec-config :shape-name
                                       "GetResolverDnssecConfig" :input
                                       get-resolver-dnssec-config-request
                                       :output
                                       get-resolver-dnssec-config-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-resolver-endpoint :shape-name
                                       "GetResolverEndpoint" :input
                                       get-resolver-endpoint-request :output
                                       get-resolver-endpoint-response :errors
                                       (internal-service-error-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-resolver-query-log-config
                                       :shape-name "GetResolverQueryLogConfig"
                                       :input
                                       get-resolver-query-log-config-request
                                       :output
                                       get-resolver-query-log-config-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation
 get-resolver-query-log-config-association :shape-name
 "GetResolverQueryLogConfigAssociation" :input
 get-resolver-query-log-config-association-request :output
 get-resolver-query-log-config-association-response :errors
 (access-denied-exception internal-service-error-exception
  invalid-parameter-exception invalid-request-exception
  resource-not-found-exception throttling-exception))

(smithy/sdk/operation:define-operation get-resolver-query-log-config-policy
                                       :shape-name
                                       "GetResolverQueryLogConfigPolicy" :input
                                       get-resolver-query-log-config-policy-request
                                       :output
                                       get-resolver-query-log-config-policy-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        unknown-resource-exception))

(smithy/sdk/operation:define-operation get-resolver-rule :shape-name
                                       "GetResolverRule" :input
                                       get-resolver-rule-request :output
                                       get-resolver-rule-response :errors
                                       (internal-service-error-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-resolver-rule-association
                                       :shape-name "GetResolverRuleAssociation"
                                       :input
                                       get-resolver-rule-association-request
                                       :output
                                       get-resolver-rule-association-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-resolver-rule-policy :shape-name
                                       "GetResolverRulePolicy" :input
                                       get-resolver-rule-policy-request :output
                                       get-resolver-rule-policy-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-parameter-exception
                                        unknown-resource-exception))

(smithy/sdk/operation:define-operation import-firewall-domains :shape-name
                                       "ImportFirewallDomains" :input
                                       import-firewall-domains-request :output
                                       import-firewall-domains-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-error-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-firewall-configs :shape-name
                                       "ListFirewallConfigs" :input
                                       list-firewall-configs-request :output
                                       list-firewall-configs-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-firewall-domain-lists :shape-name
                                       "ListFirewallDomainLists" :input
                                       list-firewall-domain-lists-request
                                       :output
                                       list-firewall-domain-lists-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-firewall-domains :shape-name
                                       "ListFirewallDomains" :input
                                       list-firewall-domains-request :output
                                       list-firewall-domains-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-firewall-rule-group-associations
                                       :shape-name
                                       "ListFirewallRuleGroupAssociations"
                                       :input
                                       list-firewall-rule-group-associations-request
                                       :output
                                       list-firewall-rule-group-associations-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-firewall-rule-groups :shape-name
                                       "ListFirewallRuleGroups" :input
                                       list-firewall-rule-groups-request
                                       :output
                                       list-firewall-rule-groups-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-firewall-rules :shape-name
                                       "ListFirewallRules" :input
                                       list-firewall-rules-request :output
                                       list-firewall-rules-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-outpost-resolvers :shape-name
                                       "ListOutpostResolvers" :input
                                       list-outpost-resolvers-request :output
                                       list-outpost-resolvers-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-resolver-configs :shape-name
                                       "ListResolverConfigs" :input
                                       list-resolver-configs-request :output
                                       list-resolver-configs-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-resolver-dnssec-configs :shape-name
                                       "ListResolverDnssecConfigs" :input
                                       list-resolver-dnssec-configs-request
                                       :output
                                       list-resolver-dnssec-configs-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-resolver-endpoint-ip-addresses
                                       :shape-name
                                       "ListResolverEndpointIpAddresses" :input
                                       list-resolver-endpoint-ip-addresses-request
                                       :output
                                       list-resolver-endpoint-ip-addresses-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-resolver-endpoints :shape-name
                                       "ListResolverEndpoints" :input
                                       list-resolver-endpoints-request :output
                                       list-resolver-endpoints-response :errors
                                       (internal-service-error-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation
 list-resolver-query-log-config-associations :shape-name
 "ListResolverQueryLogConfigAssociations" :input
 list-resolver-query-log-config-associations-request :output
 list-resolver-query-log-config-associations-response :errors
 (access-denied-exception internal-service-error-exception
  invalid-parameter-exception invalid-request-exception
  limit-exceeded-exception throttling-exception))

(smithy/sdk/operation:define-operation list-resolver-query-log-configs
                                       :shape-name
                                       "ListResolverQueryLogConfigs" :input
                                       list-resolver-query-log-configs-request
                                       :output
                                       list-resolver-query-log-configs-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-resolver-rule-associations
                                       :shape-name
                                       "ListResolverRuleAssociations" :input
                                       list-resolver-rule-associations-request
                                       :output
                                       list-resolver-rule-associations-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-resolver-rules :shape-name
                                       "ListResolverRules" :input
                                       list-resolver-rules-request :output
                                       list-resolver-rules-response :errors
                                       (internal-service-error-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-service-error-exception
                                        invalid-next-token-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation put-firewall-rule-group-policy
                                       :shape-name "PutFirewallRuleGroupPolicy"
                                       :input
                                       put-firewall-rule-group-policy-request
                                       :output
                                       put-firewall-rule-group-policy-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation put-resolver-query-log-config-policy
                                       :shape-name
                                       "PutResolverQueryLogConfigPolicy" :input
                                       put-resolver-query-log-config-policy-request
                                       :output
                                       put-resolver-query-log-config-policy-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-parameter-exception
                                        invalid-policy-document
                                        invalid-request-exception
                                        unknown-resource-exception))

(smithy/sdk/operation:define-operation put-resolver-rule-policy :shape-name
                                       "PutResolverRulePolicy" :input
                                       put-resolver-rule-policy-request :output
                                       put-resolver-rule-policy-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-parameter-exception
                                        invalid-policy-document
                                        unknown-resource-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-service-error-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        invalid-tag-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-service-error-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-firewall-config :shape-name
                                       "UpdateFirewallConfig" :input
                                       update-firewall-config-request :output
                                       update-firewall-config-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-firewall-domains :shape-name
                                       "UpdateFirewallDomains" :input
                                       update-firewall-domains-request :output
                                       update-firewall-domains-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-error-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-firewall-rule :shape-name
                                       "UpdateFirewallRule" :input
                                       update-firewall-rule-request :output
                                       update-firewall-rule-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-firewall-rule-group-association
                                       :shape-name
                                       "UpdateFirewallRuleGroupAssociation"
                                       :input
                                       update-firewall-rule-group-association-request
                                       :output
                                       update-firewall-rule-group-association-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-outpost-resolver :shape-name
                                       "UpdateOutpostResolver" :input
                                       update-outpost-resolver-request :output
                                       update-outpost-resolver-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-service-error-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-resolver-config :shape-name
                                       "UpdateResolverConfig" :input
                                       update-resolver-config-request :output
                                       update-resolver-config-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-resolver-dnssec-config
                                       :shape-name "UpdateResolverDnssecConfig"
                                       :input
                                       update-resolver-dnssec-config-request
                                       :output
                                       update-resolver-dnssec-config-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-resolver-endpoint :shape-name
                                       "UpdateResolverEndpoint" :input
                                       update-resolver-endpoint-request :output
                                       update-resolver-endpoint-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-resolver-rule :shape-name
                                       "UpdateResolverRule" :input
                                       update-resolver-rule-request :output
                                       update-resolver-rule-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-parameter-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        resource-unavailable-exception
                                        throttling-exception))
