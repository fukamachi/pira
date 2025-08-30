(uiop/package:define-package #:pira/network-firewall (:use)
                             (:export #:awsaccount-id #:azsync-state
                              #:accept-network-firewall-transit-gateway-attachment
                              #:action-definition #:action-name #:address
                              #:address-definition #:addresses #:age
                              #:analysis-report #:analysis-report-id
                              #:analysis-report-next-token
                              #:analysis-report-results #:analysis-reports
                              #:analysis-result #:analysis-result-list
                              #:analysis-type-report-result
                              #:associate-availability-zones
                              #:associate-firewall-policy #:associate-subnets
                              #:association-sync-state #:attachment
                              #:attachment-id #:attachment-status
                              #:availability-zone #:availability-zone-mapping
                              #:availability-zone-mapping-string
                              #:availability-zone-mappings
                              #:availability-zone-metadata #:az-subnet
                              #:az-subnets #:boolean #:byte-count #:cidrcount
                              #:cidrsummary #:capacity-usage-summary
                              #:certificates
                              #:check-certificate-revocation-status-actions
                              #:collection-member-string
                              #:configuration-sync-state #:count
                              #:create-firewall #:create-firewall-policy
                              #:create-rule-group
                              #:create-tlsinspection-configuration
                              #:create-vpc-endpoint-association #:custom-action
                              #:custom-actions #:deep-threat-inspection
                              #:delete-firewall #:delete-firewall-policy
                              #:delete-network-firewall-transit-gateway-attachment
                              #:delete-resource-policy #:delete-rule-group
                              #:delete-tlsinspection-configuration
                              #:delete-vpc-endpoint-association
                              #:describe-firewall #:describe-firewall-metadata
                              #:describe-firewall-policy
                              #:describe-flow-operation
                              #:describe-logging-configuration
                              #:describe-resource-policy #:describe-rule-group
                              #:describe-rule-group-metadata
                              #:describe-rule-group-summary
                              #:describe-tlsinspection-configuration
                              #:describe-vpc-endpoint-association #:description
                              #:destination #:dimension #:dimension-value
                              #:dimensions #:disassociate-availability-zones
                              #:disassociate-subnets #:domain
                              #:enable-monitoring-dashboard
                              #:enabled-analysis-type #:enabled-analysis-types
                              #:encryption-configuration #:encryption-type
                              #:end-time #:endpoint-id #:error-message
                              #:firewall #:firewall-metadata
                              #:firewall-policies #:firewall-policy
                              #:firewall-policy-metadata
                              #:firewall-policy-response #:firewall-status
                              #:firewall-status-value #:firewalls
                              #:first-accessed #:flags #:flow #:flow-filter
                              #:flow-filters #:flow-operation
                              #:flow-operation-id #:flow-operation-metadata
                              #:flow-operation-status #:flow-operation-type
                              #:flow-operations #:flow-request-timestamp
                              #:flow-timeouts #:flows #:generated-rules-type
                              #:get-analysis-report-results #:hash-map-key
                              #:hash-map-value #:header #:hits #:ipaddress-type
                              #:ipset #:ipset-arn #:ipset-metadata
                              #:ipset-metadata-map #:ipset-reference
                              #:ipset-reference-map #:ipset-reference-name
                              #:ipsets #:identified-type
                              #:insufficient-capacity-exception
                              #:internal-server-error
                              #:invalid-operation-exception
                              #:invalid-request-exception
                              #:invalid-resource-policy-exception
                              #:invalid-token-exception #:key-id #:keyword
                              #:last-accessed #:last-update-time
                              #:limit-exceeded-exception
                              #:list-analysis-reports #:list-firewall-policies
                              #:list-firewalls #:list-flow-operation-results
                              #:list-flow-operations #:list-rule-groups
                              #:list-tlsinspection-configurations
                              #:list-tags-for-resource
                              #:list-vpc-endpoint-associations
                              #:log-destination-config
                              #:log-destination-configs #:log-destination-map
                              #:log-destination-permission-exception
                              #:log-destination-type #:log-type
                              #:logging-configuration #:match-attributes
                              #:network-firewall-20201112
                              #:number-of-associations #:override-action
                              #:packet-count #:pagination-max-results
                              #:pagination-token #:per-object-status
                              #:per-object-sync-status #:policy-string
                              #:policy-variables #:port #:port-range
                              #:port-range-bound #:port-ranges #:port-set
                              #:port-sets #:priority #:protocol-number
                              #:protocol-numbers #:protocol-string
                              #:protocol-strings #:publish-metric-action
                              #:put-resource-policy #:reference-sets
                              #:reject-network-firewall-transit-gateway-attachment
                              #:report-time #:resource-arn #:resource-id
                              #:resource-managed-status #:resource-managed-type
                              #:resource-name #:resource-not-found-exception
                              #:resource-owner-check-exception
                              #:resource-status #:revocation-check-action
                              #:rule-capacity #:rule-definition #:rule-group
                              #:rule-group-metadata #:rule-group-response
                              #:rule-group-type #:rule-groups #:rule-id-list
                              #:rule-option #:rule-options #:rule-order
                              #:rule-summaries #:rule-summary #:rule-targets
                              #:rule-variable-name #:rule-variables
                              #:rules-source #:rules-source-list #:rules-string
                              #:server-certificate
                              #:server-certificate-configuration
                              #:server-certificate-configurations
                              #:server-certificate-scope
                              #:server-certificate-scopes #:server-certificates
                              #:setting #:settings #:source #:source-metadata
                              #:start-analysis-report #:start-flow-capture
                              #:start-flow-flush #:start-time #:stateful-action
                              #:stateful-actions #:stateful-engine-options
                              #:stateful-rule #:stateful-rule-direction
                              #:stateful-rule-group-override
                              #:stateful-rule-group-reference
                              #:stateful-rule-group-references
                              #:stateful-rule-options #:stateful-rule-protocol
                              #:stateful-rules #:stateless-actions
                              #:stateless-rule #:stateless-rule-group-reference
                              #:stateless-rule-group-references
                              #:stateless-rules
                              #:stateless-rules-and-custom-actions #:status
                              #:status-message #:status-reason
                              #:stream-exception-policy #:subnet-mapping
                              #:subnet-mappings #:summary
                              #:summary-configuration #:summary-rule-option
                              #:summary-rule-options
                              #:supported-availability-zones #:sync-state
                              #:sync-state-config #:sync-states #:tcpflag
                              #:tcpflag-field #:tcpflags
                              #:tlsinspection-configuration
                              #:tlsinspection-configuration-metadata
                              #:tlsinspection-configuration-response
                              #:tlsinspection-configurations #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:tags-pagination-max-results
                              #:target-type #:target-types
                              #:tcp-idle-timeout-range-bound
                              #:throttling-exception #:tls-certificate-data
                              #:transit-gateway-attachment-id
                              #:transit-gateway-attachment-status
                              #:transit-gateway-attachment-sync-state
                              #:transit-gateway-attachment-sync-state-message
                              #:transit-gateway-id #:unique-sources
                              #:unsupported-operation-exception
                              #:untag-resource
                              #:update-availability-zone-change-protection
                              #:update-firewall-analysis-settings
                              #:update-firewall-delete-protection
                              #:update-firewall-description
                              #:update-firewall-encryption-configuration
                              #:update-firewall-policy
                              #:update-firewall-policy-change-protection
                              #:update-logging-configuration
                              #:update-rule-group
                              #:update-subnet-change-protection
                              #:update-tlsinspection-configuration
                              #:update-token #:variable-definition
                              #:variable-definition-list
                              #:vpc-endpoint-association
                              #:vpc-endpoint-association-metadata
                              #:vpc-endpoint-association-status
                              #:vpc-endpoint-associations #:vpc-endpoint-id
                              #:vpc-id #:vpc-ids #:network-firewall-error))
(common-lisp:in-package #:pira/network-firewall)

(common-lisp:define-condition network-firewall-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service network-firewall-20201112 :shape-name
                                   "NetworkFirewall_20201112" :version
                                   "2020-11-12" :title "AWS Network Firewall"
                                   :operations
                                   '(accept-network-firewall-transit-gateway-attachment
                                     associate-availability-zones
                                     associate-firewall-policy
                                     associate-subnets create-firewall
                                     create-firewall-policy create-rule-group
                                     create-tlsinspection-configuration
                                     create-vpc-endpoint-association
                                     delete-firewall delete-firewall-policy
                                     delete-network-firewall-transit-gateway-attachment
                                     delete-resource-policy delete-rule-group
                                     delete-tlsinspection-configuration
                                     delete-vpc-endpoint-association
                                     describe-firewall
                                     describe-firewall-metadata
                                     describe-firewall-policy
                                     describe-flow-operation
                                     describe-logging-configuration
                                     describe-resource-policy
                                     describe-rule-group
                                     describe-rule-group-metadata
                                     describe-rule-group-summary
                                     describe-tlsinspection-configuration
                                     describe-vpc-endpoint-association
                                     disassociate-availability-zones
                                     disassociate-subnets
                                     get-analysis-report-results
                                     list-analysis-reports
                                     list-firewall-policies list-firewalls
                                     list-flow-operation-results
                                     list-flow-operations list-rule-groups
                                     list-tags-for-resource
                                     list-tlsinspection-configurations
                                     list-vpc-endpoint-associations
                                     put-resource-policy
                                     reject-network-firewall-transit-gateway-attachment
                                     start-analysis-report start-flow-capture
                                     start-flow-flush tag-resource
                                     untag-resource
                                     update-availability-zone-change-protection
                                     update-firewall-analysis-settings
                                     update-firewall-delete-protection
                                     update-firewall-description
                                     update-firewall-encryption-configuration
                                     update-firewall-policy
                                     update-firewall-policy-change-protection
                                     update-logging-configuration
                                     update-rule-group
                                     update-subnet-change-protection
                                     update-tlsinspection-configuration)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Network Firewall")
                                      ("arnNamespace" . "network-firewall")
                                      ("cloudFormationName"
                                       . "NetworkFirewall")
                                      ("cloudTrailEventSource"
                                       . "networkfirewall.amazonaws.com")
                                      ("endpointPrefix" . "network-firewall"))
                                     ("aws.auth#sigv4"
                                      ("name" . "network-firewall"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-type awsaccount-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure azsync-state common-lisp:nil
                                    ((attachment :target-type attachment
                                      :member-name "Attachment"))
                                    (:shape-name "AZSyncState"))

(smithy/sdk/shapes:define-input
 accept-network-firewall-transit-gateway-attachment-request common-lisp:nil
 ((transit-gateway-attachment-id :target-type transit-gateway-attachment-id
   :required common-lisp:t :member-name "TransitGatewayAttachmentId"))
 (:shape-name "AcceptNetworkFirewallTransitGatewayAttachmentRequest"))

(smithy/sdk/shapes:define-output
 accept-network-firewall-transit-gateway-attachment-response common-lisp:nil
 ((transit-gateway-attachment-id :target-type transit-gateway-attachment-id
   :required common-lisp:t :member-name "TransitGatewayAttachmentId")
  (transit-gateway-attachment-status :target-type
   transit-gateway-attachment-status :required common-lisp:t :member-name
   "TransitGatewayAttachmentStatus"))
 (:shape-name "AcceptNetworkFirewallTransitGatewayAttachmentResponse"))

(smithy/sdk/shapes:define-structure action-definition common-lisp:nil
                                    ((publish-metric-action :target-type
                                      publish-metric-action :member-name
                                      "PublishMetricAction"))
                                    (:shape-name "ActionDefinition"))

(smithy/sdk/shapes:define-type action-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure address common-lisp:nil
                                    ((address-definition :target-type
                                      address-definition :required
                                      common-lisp:t :member-name
                                      "AddressDefinition"))
                                    (:shape-name "Address"))

(smithy/sdk/shapes:define-type address-definition
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list addresses :member address)

(smithy/sdk/shapes:define-type age smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure analysis-report common-lisp:nil
                                    ((analysis-report-id :target-type
                                      analysis-report-id :member-name
                                      "AnalysisReportId")
                                     (analysis-type :target-type
                                      enabled-analysis-type :member-name
                                      "AnalysisType")
                                     (report-time :target-type report-time
                                      :member-name "ReportTime")
                                     (status :target-type status :member-name
                                      "Status"))
                                    (:shape-name "AnalysisReport"))

(smithy/sdk/shapes:define-type analysis-report-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type analysis-report-next-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list analysis-report-results :member
                               analysis-type-report-result)

(smithy/sdk/shapes:define-list analysis-reports :member analysis-report)

(smithy/sdk/shapes:define-structure analysis-result common-lisp:nil
                                    ((identified-rule-ids :target-type
                                      rule-id-list :member-name
                                      "IdentifiedRuleIds")
                                     (identified-type :target-type
                                      identified-type :member-name
                                      "IdentifiedType")
                                     (analysis-detail :target-type
                                      collection-member-string :member-name
                                      "AnalysisDetail"))
                                    (:shape-name "AnalysisResult"))

(smithy/sdk/shapes:define-list analysis-result-list :member analysis-result)

(smithy/sdk/shapes:define-structure analysis-type-report-result common-lisp:nil
                                    ((protocol :target-type
                                      collection-member-string :member-name
                                      "Protocol")
                                     (first-accessed :target-type
                                      first-accessed :member-name
                                      "FirstAccessed")
                                     (last-accessed :target-type last-accessed
                                      :member-name "LastAccessed")
                                     (domain :target-type domain :member-name
                                      "Domain")
                                     (hits :target-type hits :member-name
                                      "Hits")
                                     (unique-sources :target-type
                                      unique-sources :member-name
                                      "UniqueSources"))
                                    (:shape-name "AnalysisTypeReportResult"))

(smithy/sdk/shapes:define-input associate-availability-zones-request
                                common-lisp:nil
                                ((update-token :target-type update-token
                                  :member-name "UpdateToken")
                                 (firewall-arn :target-type resource-arn
                                  :member-name "FirewallArn")
                                 (firewall-name :target-type resource-name
                                  :member-name "FirewallName")
                                 (availability-zone-mappings :target-type
                                  availability-zone-mappings :required
                                  common-lisp:t :member-name
                                  "AvailabilityZoneMappings"))
                                (:shape-name
                                 "AssociateAvailabilityZonesRequest"))

(smithy/sdk/shapes:define-output associate-availability-zones-response
                                 common-lisp:nil
                                 ((firewall-arn :target-type resource-arn
                                   :member-name "FirewallArn")
                                  (firewall-name :target-type resource-name
                                   :member-name "FirewallName")
                                  (availability-zone-mappings :target-type
                                   availability-zone-mappings :member-name
                                   "AvailabilityZoneMappings")
                                  (update-token :target-type update-token
                                   :member-name "UpdateToken"))
                                 (:shape-name
                                  "AssociateAvailabilityZonesResponse"))

(smithy/sdk/shapes:define-input associate-firewall-policy-request
                                common-lisp:nil
                                ((update-token :target-type update-token
                                  :member-name "UpdateToken")
                                 (firewall-arn :target-type resource-arn
                                  :member-name "FirewallArn")
                                 (firewall-name :target-type resource-name
                                  :member-name "FirewallName")
                                 (firewall-policy-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "FirewallPolicyArn"))
                                (:shape-name "AssociateFirewallPolicyRequest"))

(smithy/sdk/shapes:define-output associate-firewall-policy-response
                                 common-lisp:nil
                                 ((firewall-arn :target-type resource-arn
                                   :member-name "FirewallArn")
                                  (firewall-name :target-type resource-name
                                   :member-name "FirewallName")
                                  (firewall-policy-arn :target-type
                                   resource-arn :member-name
                                   "FirewallPolicyArn")
                                  (update-token :target-type update-token
                                   :member-name "UpdateToken"))
                                 (:shape-name
                                  "AssociateFirewallPolicyResponse"))

(smithy/sdk/shapes:define-input associate-subnets-request common-lisp:nil
                                ((update-token :target-type update-token
                                  :member-name "UpdateToken")
                                 (firewall-arn :target-type resource-arn
                                  :member-name "FirewallArn")
                                 (firewall-name :target-type resource-name
                                  :member-name "FirewallName")
                                 (subnet-mappings :target-type subnet-mappings
                                  :required common-lisp:t :member-name
                                  "SubnetMappings"))
                                (:shape-name "AssociateSubnetsRequest"))

(smithy/sdk/shapes:define-output associate-subnets-response common-lisp:nil
                                 ((firewall-arn :target-type resource-arn
                                   :member-name "FirewallArn")
                                  (firewall-name :target-type resource-name
                                   :member-name "FirewallName")
                                  (subnet-mappings :target-type subnet-mappings
                                   :member-name "SubnetMappings")
                                  (update-token :target-type update-token
                                   :member-name "UpdateToken"))
                                 (:shape-name "AssociateSubnetsResponse"))

(smithy/sdk/shapes:define-map association-sync-state :key availability-zone
                              :value azsync-state)

(smithy/sdk/shapes:define-structure attachment common-lisp:nil
                                    ((subnet-id :target-type az-subnet
                                      :member-name "SubnetId")
                                     (endpoint-id :target-type endpoint-id
                                      :member-name "EndpointId")
                                     (status :target-type attachment-status
                                      :member-name "Status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage"))
                                    (:shape-name "Attachment"))

(smithy/sdk/shapes:define-type attachment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum attachment-status
    common-lisp:nil
  (:creating "CREATING")
  (:deleting "DELETING")
  (:failed "FAILED")
  (:error "ERROR")
  (:scaling "SCALING")
  (:ready "READY"))

(smithy/sdk/shapes:define-type availability-zone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure availability-zone-mapping common-lisp:nil
                                    ((availability-zone :target-type
                                      availability-zone-mapping-string
                                      :required common-lisp:t :member-name
                                      "AvailabilityZone"))
                                    (:shape-name "AvailabilityZoneMapping"))

(smithy/sdk/shapes:define-type availability-zone-mapping-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list availability-zone-mappings :member
                               availability-zone-mapping)

(smithy/sdk/shapes:define-structure availability-zone-metadata common-lisp:nil
                                    ((ipaddress-type :target-type
                                      ipaddress-type :member-name
                                      "IPAddressType"))
                                    (:shape-name "AvailabilityZoneMetadata"))

(smithy/sdk/shapes:define-type az-subnet smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list az-subnets :member az-subnet)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type byte-count smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type cidrcount smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure cidrsummary common-lisp:nil
                                    ((available-cidrcount :target-type
                                      cidrcount :member-name
                                      "AvailableCIDRCount")
                                     (utilized-cidrcount :target-type cidrcount
                                      :member-name "UtilizedCIDRCount")
                                     (ipset-references :target-type
                                      ipset-metadata-map :member-name
                                      "IPSetReferences"))
                                    (:shape-name "CIDRSummary"))

(smithy/sdk/shapes:define-structure capacity-usage-summary common-lisp:nil
                                    ((cidrs :target-type cidrsummary
                                      :member-name "CIDRs"))
                                    (:shape-name "CapacityUsageSummary"))

(smithy/sdk/shapes:define-list certificates :member tls-certificate-data)

(smithy/sdk/shapes:define-structure check-certificate-revocation-status-actions
                                    common-lisp:nil
                                    ((revoked-status-action :target-type
                                      revocation-check-action :member-name
                                      "RevokedStatusAction")
                                     (unknown-status-action :target-type
                                      revocation-check-action :member-name
                                      "UnknownStatusAction"))
                                    (:shape-name
                                     "CheckCertificateRevocationStatusActions"))

(smithy/sdk/shapes:define-type collection-member-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum configuration-sync-state
    common-lisp:nil
  (:pending "PENDING")
  (:in-sync "IN_SYNC")
  (:capacity-constrained "CAPACITY_CONSTRAINED"))

(smithy/sdk/shapes:define-type count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input create-firewall-policy-request common-lisp:nil
                                ((firewall-policy-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name "FirewallPolicyName")
                                 (firewall-policy :target-type firewall-policy
                                  :required common-lisp:t :member-name
                                  "FirewallPolicy")
                                 (description :target-type description
                                  :member-name "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (dry-run :target-type boolean :member-name
                                  "DryRun")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "EncryptionConfiguration"))
                                (:shape-name "CreateFirewallPolicyRequest"))

(smithy/sdk/shapes:define-output create-firewall-policy-response
                                 common-lisp:nil
                                 ((update-token :target-type update-token
                                   :required common-lisp:t :member-name
                                   "UpdateToken")
                                  (firewall-policy-response :target-type
                                   firewall-policy-response :required
                                   common-lisp:t :member-name
                                   "FirewallPolicyResponse"))
                                 (:shape-name "CreateFirewallPolicyResponse"))

(smithy/sdk/shapes:define-input create-firewall-request common-lisp:nil
                                ((firewall-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "FirewallName")
                                 (firewall-policy-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "FirewallPolicyArn")
                                 (vpc-id :target-type vpc-id :member-name
                                  "VpcId")
                                 (subnet-mappings :target-type subnet-mappings
                                  :member-name "SubnetMappings")
                                 (delete-protection :target-type boolean
                                  :member-name "DeleteProtection")
                                 (subnet-change-protection :target-type boolean
                                  :member-name "SubnetChangeProtection")
                                 (firewall-policy-change-protection
                                  :target-type boolean :member-name
                                  "FirewallPolicyChangeProtection")
                                 (description :target-type description
                                  :member-name "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "EncryptionConfiguration")
                                 (enabled-analysis-types :target-type
                                  enabled-analysis-types :member-name
                                  "EnabledAnalysisTypes")
                                 (transit-gateway-id :target-type
                                  transit-gateway-id :member-name
                                  "TransitGatewayId")
                                 (availability-zone-mappings :target-type
                                  availability-zone-mappings :member-name
                                  "AvailabilityZoneMappings")
                                 (availability-zone-change-protection
                                  :target-type boolean :member-name
                                  "AvailabilityZoneChangeProtection"))
                                (:shape-name "CreateFirewallRequest"))

(smithy/sdk/shapes:define-output create-firewall-response common-lisp:nil
                                 ((firewall :target-type firewall :member-name
                                   "Firewall")
                                  (firewall-status :target-type firewall-status
                                   :member-name "FirewallStatus"))
                                 (:shape-name "CreateFirewallResponse"))

(smithy/sdk/shapes:define-input create-rule-group-request common-lisp:nil
                                ((rule-group-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "RuleGroupName")
                                 (rule-group :target-type rule-group
                                  :member-name "RuleGroup")
                                 (rules :target-type rules-string :member-name
                                  "Rules")
                                 (type :target-type rule-group-type :required
                                  common-lisp:t :member-name "Type")
                                 (description :target-type description
                                  :member-name "Description")
                                 (capacity :target-type rule-capacity :required
                                  common-lisp:t :member-name "Capacity")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (dry-run :target-type boolean :member-name
                                  "DryRun")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "EncryptionConfiguration")
                                 (source-metadata :target-type source-metadata
                                  :member-name "SourceMetadata")
                                 (analyze-rule-group :target-type boolean
                                  :member-name "AnalyzeRuleGroup")
                                 (summary-configuration :target-type
                                  summary-configuration :member-name
                                  "SummaryConfiguration"))
                                (:shape-name "CreateRuleGroupRequest"))

(smithy/sdk/shapes:define-output create-rule-group-response common-lisp:nil
                                 ((update-token :target-type update-token
                                   :required common-lisp:t :member-name
                                   "UpdateToken")
                                  (rule-group-response :target-type
                                   rule-group-response :required common-lisp:t
                                   :member-name "RuleGroupResponse"))
                                 (:shape-name "CreateRuleGroupResponse"))

(smithy/sdk/shapes:define-input create-tlsinspection-configuration-request
                                common-lisp:nil
                                ((tlsinspection-configuration-name :target-type
                                  resource-name :required common-lisp:t
                                  :member-name
                                  "TLSInspectionConfigurationName")
                                 (tlsinspection-configuration :target-type
                                  tlsinspection-configuration :required
                                  common-lisp:t :member-name
                                  "TLSInspectionConfiguration")
                                 (description :target-type description
                                  :member-name "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "EncryptionConfiguration"))
                                (:shape-name
                                 "CreateTLSInspectionConfigurationRequest"))

(smithy/sdk/shapes:define-output create-tlsinspection-configuration-response
                                 common-lisp:nil
                                 ((update-token :target-type update-token
                                   :required common-lisp:t :member-name
                                   "UpdateToken")
                                  (tlsinspection-configuration-response
                                   :target-type
                                   tlsinspection-configuration-response
                                   :required common-lisp:t :member-name
                                   "TLSInspectionConfigurationResponse"))
                                 (:shape-name
                                  "CreateTLSInspectionConfigurationResponse"))

(smithy/sdk/shapes:define-input create-vpc-endpoint-association-request
                                common-lisp:nil
                                ((firewall-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "FirewallArn")
                                 (vpc-id :target-type vpc-id :required
                                  common-lisp:t :member-name "VpcId")
                                 (subnet-mapping :target-type subnet-mapping
                                  :required common-lisp:t :member-name
                                  "SubnetMapping")
                                 (description :target-type description
                                  :member-name "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateVpcEndpointAssociationRequest"))

(smithy/sdk/shapes:define-output create-vpc-endpoint-association-response
                                 common-lisp:nil
                                 ((vpc-endpoint-association :target-type
                                   vpc-endpoint-association :member-name
                                   "VpcEndpointAssociation")
                                  (vpc-endpoint-association-status :target-type
                                   vpc-endpoint-association-status :member-name
                                   "VpcEndpointAssociationStatus"))
                                 (:shape-name
                                  "CreateVpcEndpointAssociationResponse"))

(smithy/sdk/shapes:define-structure custom-action common-lisp:nil
                                    ((action-name :target-type action-name
                                      :required common-lisp:t :member-name
                                      "ActionName")
                                     (action-definition :target-type
                                      action-definition :required common-lisp:t
                                      :member-name "ActionDefinition"))
                                    (:shape-name "CustomAction"))

(smithy/sdk/shapes:define-list custom-actions :member custom-action)

(smithy/sdk/shapes:define-type deep-threat-inspection
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input delete-firewall-policy-request common-lisp:nil
                                ((firewall-policy-name :target-type
                                  resource-name :member-name
                                  "FirewallPolicyName")
                                 (firewall-policy-arn :target-type resource-arn
                                  :member-name "FirewallPolicyArn"))
                                (:shape-name "DeleteFirewallPolicyRequest"))

(smithy/sdk/shapes:define-output delete-firewall-policy-response
                                 common-lisp:nil
                                 ((firewall-policy-response :target-type
                                   firewall-policy-response :required
                                   common-lisp:t :member-name
                                   "FirewallPolicyResponse"))
                                 (:shape-name "DeleteFirewallPolicyResponse"))

(smithy/sdk/shapes:define-input delete-firewall-request common-lisp:nil
                                ((firewall-name :target-type resource-name
                                  :member-name "FirewallName")
                                 (firewall-arn :target-type resource-arn
                                  :member-name "FirewallArn"))
                                (:shape-name "DeleteFirewallRequest"))

(smithy/sdk/shapes:define-output delete-firewall-response common-lisp:nil
                                 ((firewall :target-type firewall :member-name
                                   "Firewall")
                                  (firewall-status :target-type firewall-status
                                   :member-name "FirewallStatus"))
                                 (:shape-name "DeleteFirewallResponse"))

(smithy/sdk/shapes:define-input
 delete-network-firewall-transit-gateway-attachment-request common-lisp:nil
 ((transit-gateway-attachment-id :target-type transit-gateway-attachment-id
   :required common-lisp:t :member-name "TransitGatewayAttachmentId"))
 (:shape-name "DeleteNetworkFirewallTransitGatewayAttachmentRequest"))

(smithy/sdk/shapes:define-output
 delete-network-firewall-transit-gateway-attachment-response common-lisp:nil
 ((transit-gateway-attachment-id :target-type transit-gateway-attachment-id
   :required common-lisp:t :member-name "TransitGatewayAttachmentId")
  (transit-gateway-attachment-status :target-type
   transit-gateway-attachment-status :required common-lisp:t :member-name
   "TransitGatewayAttachmentStatus"))
 (:shape-name "DeleteNetworkFirewallTransitGatewayAttachmentResponse"))

(smithy/sdk/shapes:define-input delete-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "DeleteResourcePolicyRequest"))

(smithy/sdk/shapes:define-output delete-resource-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteResourcePolicyResponse"))

(smithy/sdk/shapes:define-input delete-rule-group-request common-lisp:nil
                                ((rule-group-name :target-type resource-name
                                  :member-name "RuleGroupName")
                                 (rule-group-arn :target-type resource-arn
                                  :member-name "RuleGroupArn")
                                 (type :target-type rule-group-type
                                  :member-name "Type"))
                                (:shape-name "DeleteRuleGroupRequest"))

(smithy/sdk/shapes:define-output delete-rule-group-response common-lisp:nil
                                 ((rule-group-response :target-type
                                   rule-group-response :required common-lisp:t
                                   :member-name "RuleGroupResponse"))
                                 (:shape-name "DeleteRuleGroupResponse"))

(smithy/sdk/shapes:define-input delete-tlsinspection-configuration-request
                                common-lisp:nil
                                ((tlsinspection-configuration-arn :target-type
                                  resource-arn :member-name
                                  "TLSInspectionConfigurationArn")
                                 (tlsinspection-configuration-name :target-type
                                  resource-name :member-name
                                  "TLSInspectionConfigurationName"))
                                (:shape-name
                                 "DeleteTLSInspectionConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-tlsinspection-configuration-response
                                 common-lisp:nil
                                 ((tlsinspection-configuration-response
                                   :target-type
                                   tlsinspection-configuration-response
                                   :required common-lisp:t :member-name
                                   "TLSInspectionConfigurationResponse"))
                                 (:shape-name
                                  "DeleteTLSInspectionConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-vpc-endpoint-association-request
                                common-lisp:nil
                                ((vpc-endpoint-association-arn :target-type
                                  resource-arn :required common-lisp:t
                                  :member-name "VpcEndpointAssociationArn"))
                                (:shape-name
                                 "DeleteVpcEndpointAssociationRequest"))

(smithy/sdk/shapes:define-output delete-vpc-endpoint-association-response
                                 common-lisp:nil
                                 ((vpc-endpoint-association :target-type
                                   vpc-endpoint-association :member-name
                                   "VpcEndpointAssociation")
                                  (vpc-endpoint-association-status :target-type
                                   vpc-endpoint-association-status :member-name
                                   "VpcEndpointAssociationStatus"))
                                 (:shape-name
                                  "DeleteVpcEndpointAssociationResponse"))

(smithy/sdk/shapes:define-input describe-firewall-metadata-request
                                common-lisp:nil
                                ((firewall-arn :target-type resource-arn
                                  :member-name "FirewallArn"))
                                (:shape-name "DescribeFirewallMetadataRequest"))

(smithy/sdk/shapes:define-output describe-firewall-metadata-response
                                 common-lisp:nil
                                 ((firewall-arn :target-type resource-arn
                                   :member-name "FirewallArn")
                                  (firewall-policy-arn :target-type
                                   resource-arn :member-name
                                   "FirewallPolicyArn")
                                  (description :target-type description
                                   :member-name "Description")
                                  (status :target-type firewall-status-value
                                   :member-name "Status")
                                  (supported-availability-zones :target-type
                                   supported-availability-zones :member-name
                                   "SupportedAvailabilityZones")
                                  (transit-gateway-attachment-id :target-type
                                   transit-gateway-attachment-id :member-name
                                   "TransitGatewayAttachmentId"))
                                 (:shape-name
                                  "DescribeFirewallMetadataResponse"))

(smithy/sdk/shapes:define-input describe-firewall-policy-request
                                common-lisp:nil
                                ((firewall-policy-name :target-type
                                  resource-name :member-name
                                  "FirewallPolicyName")
                                 (firewall-policy-arn :target-type resource-arn
                                  :member-name "FirewallPolicyArn"))
                                (:shape-name "DescribeFirewallPolicyRequest"))

(smithy/sdk/shapes:define-output describe-firewall-policy-response
                                 common-lisp:nil
                                 ((update-token :target-type update-token
                                   :required common-lisp:t :member-name
                                   "UpdateToken")
                                  (firewall-policy-response :target-type
                                   firewall-policy-response :required
                                   common-lisp:t :member-name
                                   "FirewallPolicyResponse")
                                  (firewall-policy :target-type firewall-policy
                                   :member-name "FirewallPolicy"))
                                 (:shape-name "DescribeFirewallPolicyResponse"))

(smithy/sdk/shapes:define-input describe-firewall-request common-lisp:nil
                                ((firewall-name :target-type resource-name
                                  :member-name "FirewallName")
                                 (firewall-arn :target-type resource-arn
                                  :member-name "FirewallArn"))
                                (:shape-name "DescribeFirewallRequest"))

(smithy/sdk/shapes:define-output describe-firewall-response common-lisp:nil
                                 ((update-token :target-type update-token
                                   :member-name "UpdateToken")
                                  (firewall :target-type firewall :member-name
                                   "Firewall")
                                  (firewall-status :target-type firewall-status
                                   :member-name "FirewallStatus"))
                                 (:shape-name "DescribeFirewallResponse"))

(smithy/sdk/shapes:define-input describe-flow-operation-request common-lisp:nil
                                ((firewall-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "FirewallArn")
                                 (availability-zone :target-type
                                  availability-zone :member-name
                                  "AvailabilityZone")
                                 (vpc-endpoint-association-arn :target-type
                                  resource-arn :member-name
                                  "VpcEndpointAssociationArn")
                                 (vpc-endpoint-id :target-type vpc-endpoint-id
                                  :member-name "VpcEndpointId")
                                 (flow-operation-id :target-type
                                  flow-operation-id :required common-lisp:t
                                  :member-name "FlowOperationId"))
                                (:shape-name "DescribeFlowOperationRequest"))

(smithy/sdk/shapes:define-output describe-flow-operation-response
                                 common-lisp:nil
                                 ((firewall-arn :target-type resource-arn
                                   :member-name "FirewallArn")
                                  (availability-zone :target-type
                                   availability-zone :member-name
                                   "AvailabilityZone")
                                  (vpc-endpoint-association-arn :target-type
                                   resource-arn :member-name
                                   "VpcEndpointAssociationArn")
                                  (vpc-endpoint-id :target-type vpc-endpoint-id
                                   :member-name "VpcEndpointId")
                                  (flow-operation-id :target-type
                                   flow-operation-id :member-name
                                   "FlowOperationId")
                                  (flow-operation-type :target-type
                                   flow-operation-type :member-name
                                   "FlowOperationType")
                                  (flow-operation-status :target-type
                                   flow-operation-status :member-name
                                   "FlowOperationStatus")
                                  (status-message :target-type status-reason
                                   :member-name "StatusMessage")
                                  (flow-request-timestamp :target-type
                                   flow-request-timestamp :member-name
                                   "FlowRequestTimestamp")
                                  (flow-operation :target-type flow-operation
                                   :member-name "FlowOperation"))
                                 (:shape-name "DescribeFlowOperationResponse"))

(smithy/sdk/shapes:define-input describe-logging-configuration-request
                                common-lisp:nil
                                ((firewall-arn :target-type resource-arn
                                  :member-name "FirewallArn")
                                 (firewall-name :target-type resource-name
                                  :member-name "FirewallName"))
                                (:shape-name
                                 "DescribeLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-logging-configuration-response
                                 common-lisp:nil
                                 ((firewall-arn :target-type resource-arn
                                   :member-name "FirewallArn")
                                  (logging-configuration :target-type
                                   logging-configuration :member-name
                                   "LoggingConfiguration")
                                  (enable-monitoring-dashboard :target-type
                                   enable-monitoring-dashboard :member-name
                                   "EnableMonitoringDashboard"))
                                 (:shape-name
                                  "DescribeLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-resource-policy-request
                                common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "DescribeResourcePolicyRequest"))

(smithy/sdk/shapes:define-output describe-resource-policy-response
                                 common-lisp:nil
                                 ((policy :target-type policy-string
                                   :member-name "Policy"))
                                 (:shape-name "DescribeResourcePolicyResponse"))

(smithy/sdk/shapes:define-input describe-rule-group-metadata-request
                                common-lisp:nil
                                ((rule-group-name :target-type resource-name
                                  :member-name "RuleGroupName")
                                 (rule-group-arn :target-type resource-arn
                                  :member-name "RuleGroupArn")
                                 (type :target-type rule-group-type
                                  :member-name "Type"))
                                (:shape-name
                                 "DescribeRuleGroupMetadataRequest"))

(smithy/sdk/shapes:define-output describe-rule-group-metadata-response
                                 common-lisp:nil
                                 ((rule-group-arn :target-type resource-arn
                                   :required common-lisp:t :member-name
                                   "RuleGroupArn")
                                  (rule-group-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "RuleGroupName")
                                  (description :target-type description
                                   :member-name "Description")
                                  (type :target-type rule-group-type
                                   :member-name "Type")
                                  (capacity :target-type rule-capacity
                                   :member-name "Capacity")
                                  (stateful-rule-options :target-type
                                   stateful-rule-options :member-name
                                   "StatefulRuleOptions")
                                  (last-modified-time :target-type
                                   last-update-time :member-name
                                   "LastModifiedTime"))
                                 (:shape-name
                                  "DescribeRuleGroupMetadataResponse"))

(smithy/sdk/shapes:define-input describe-rule-group-request common-lisp:nil
                                ((rule-group-name :target-type resource-name
                                  :member-name "RuleGroupName")
                                 (rule-group-arn :target-type resource-arn
                                  :member-name "RuleGroupArn")
                                 (type :target-type rule-group-type
                                  :member-name "Type")
                                 (analyze-rule-group :target-type boolean
                                  :member-name "AnalyzeRuleGroup"))
                                (:shape-name "DescribeRuleGroupRequest"))

(smithy/sdk/shapes:define-output describe-rule-group-response common-lisp:nil
                                 ((update-token :target-type update-token
                                   :required common-lisp:t :member-name
                                   "UpdateToken")
                                  (rule-group :target-type rule-group
                                   :member-name "RuleGroup")
                                  (rule-group-response :target-type
                                   rule-group-response :required common-lisp:t
                                   :member-name "RuleGroupResponse"))
                                 (:shape-name "DescribeRuleGroupResponse"))

(smithy/sdk/shapes:define-input describe-rule-group-summary-request
                                common-lisp:nil
                                ((rule-group-name :target-type resource-name
                                  :member-name "RuleGroupName")
                                 (rule-group-arn :target-type resource-arn
                                  :member-name "RuleGroupArn")
                                 (type :target-type rule-group-type
                                  :member-name "Type"))
                                (:shape-name "DescribeRuleGroupSummaryRequest"))

(smithy/sdk/shapes:define-output describe-rule-group-summary-response
                                 common-lisp:nil
                                 ((rule-group-name :target-type resource-name
                                   :required common-lisp:t :member-name
                                   "RuleGroupName")
                                  (description :target-type description
                                   :member-name "Description")
                                  (summary :target-type summary :member-name
                                   "Summary"))
                                 (:shape-name
                                  "DescribeRuleGroupSummaryResponse"))

(smithy/sdk/shapes:define-input describe-tlsinspection-configuration-request
                                common-lisp:nil
                                ((tlsinspection-configuration-arn :target-type
                                  resource-arn :member-name
                                  "TLSInspectionConfigurationArn")
                                 (tlsinspection-configuration-name :target-type
                                  resource-name :member-name
                                  "TLSInspectionConfigurationName"))
                                (:shape-name
                                 "DescribeTLSInspectionConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-tlsinspection-configuration-response
                                 common-lisp:nil
                                 ((update-token :target-type update-token
                                   :required common-lisp:t :member-name
                                   "UpdateToken")
                                  (tlsinspection-configuration :target-type
                                   tlsinspection-configuration :member-name
                                   "TLSInspectionConfiguration")
                                  (tlsinspection-configuration-response
                                   :target-type
                                   tlsinspection-configuration-response
                                   :required common-lisp:t :member-name
                                   "TLSInspectionConfigurationResponse"))
                                 (:shape-name
                                  "DescribeTLSInspectionConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-vpc-endpoint-association-request
                                common-lisp:nil
                                ((vpc-endpoint-association-arn :target-type
                                  resource-arn :required common-lisp:t
                                  :member-name "VpcEndpointAssociationArn"))
                                (:shape-name
                                 "DescribeVpcEndpointAssociationRequest"))

(smithy/sdk/shapes:define-output describe-vpc-endpoint-association-response
                                 common-lisp:nil
                                 ((vpc-endpoint-association :target-type
                                   vpc-endpoint-association :member-name
                                   "VpcEndpointAssociation")
                                  (vpc-endpoint-association-status :target-type
                                   vpc-endpoint-association-status :member-name
                                   "VpcEndpointAssociationStatus"))
                                 (:shape-name
                                  "DescribeVpcEndpointAssociationResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type destination smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure dimension common-lisp:nil
                                    ((value :target-type dimension-value
                                      :required common-lisp:t :member-name
                                      "Value"))
                                    (:shape-name "Dimension"))

(smithy/sdk/shapes:define-type dimension-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list dimensions :member dimension)

(smithy/sdk/shapes:define-input disassociate-availability-zones-request
                                common-lisp:nil
                                ((update-token :target-type update-token
                                  :member-name "UpdateToken")
                                 (firewall-arn :target-type resource-arn
                                  :member-name "FirewallArn")
                                 (firewall-name :target-type resource-name
                                  :member-name "FirewallName")
                                 (availability-zone-mappings :target-type
                                  availability-zone-mappings :required
                                  common-lisp:t :member-name
                                  "AvailabilityZoneMappings"))
                                (:shape-name
                                 "DisassociateAvailabilityZonesRequest"))

(smithy/sdk/shapes:define-output disassociate-availability-zones-response
                                 common-lisp:nil
                                 ((firewall-arn :target-type resource-arn
                                   :member-name "FirewallArn")
                                  (firewall-name :target-type resource-name
                                   :member-name "FirewallName")
                                  (availability-zone-mappings :target-type
                                   availability-zone-mappings :member-name
                                   "AvailabilityZoneMappings")
                                  (update-token :target-type update-token
                                   :member-name "UpdateToken"))
                                 (:shape-name
                                  "DisassociateAvailabilityZonesResponse"))

(smithy/sdk/shapes:define-input disassociate-subnets-request common-lisp:nil
                                ((update-token :target-type update-token
                                  :member-name "UpdateToken")
                                 (firewall-arn :target-type resource-arn
                                  :member-name "FirewallArn")
                                 (firewall-name :target-type resource-name
                                  :member-name "FirewallName")
                                 (subnet-ids :target-type az-subnets :required
                                  common-lisp:t :member-name "SubnetIds"))
                                (:shape-name "DisassociateSubnetsRequest"))

(smithy/sdk/shapes:define-output disassociate-subnets-response common-lisp:nil
                                 ((firewall-arn :target-type resource-arn
                                   :member-name "FirewallArn")
                                  (firewall-name :target-type resource-name
                                   :member-name "FirewallName")
                                  (subnet-mappings :target-type subnet-mappings
                                   :member-name "SubnetMappings")
                                  (update-token :target-type update-token
                                   :member-name "UpdateToken"))
                                 (:shape-name "DisassociateSubnetsResponse"))

(smithy/sdk/shapes:define-type domain smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type enable-monitoring-dashboard
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum enabled-analysis-type
    common-lisp:nil
  (:tls-sni "TLS_SNI")
  (:http-host "HTTP_HOST"))

(smithy/sdk/shapes:define-list enabled-analysis-types :member
                               enabled-analysis-type)

(smithy/sdk/shapes:define-structure encryption-configuration common-lisp:nil
                                    ((key-id :target-type key-id :member-name
                                      "KeyId")
                                     (type :target-type encryption-type
                                      :required common-lisp:t :member-name
                                      "Type"))
                                    (:shape-name "EncryptionConfiguration"))

(smithy/sdk/shapes:define-enum encryption-type
    common-lisp:nil
  (:customer-kms "CUSTOMER_KMS")
  (:aws-owned-kms-key "AWS_OWNED_KMS_KEY"))

(smithy/sdk/shapes:define-type end-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type endpoint-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure firewall common-lisp:nil
                                    ((firewall-name :target-type resource-name
                                      :member-name "FirewallName")
                                     (firewall-arn :target-type resource-arn
                                      :member-name "FirewallArn")
                                     (firewall-policy-arn :target-type
                                      resource-arn :required common-lisp:t
                                      :member-name "FirewallPolicyArn")
                                     (vpc-id :target-type vpc-id :required
                                      common-lisp:t :member-name "VpcId")
                                     (subnet-mappings :target-type
                                      subnet-mappings :required common-lisp:t
                                      :member-name "SubnetMappings")
                                     (delete-protection :target-type boolean
                                      :member-name "DeleteProtection")
                                     (subnet-change-protection :target-type
                                      boolean :member-name
                                      "SubnetChangeProtection")
                                     (firewall-policy-change-protection
                                      :target-type boolean :member-name
                                      "FirewallPolicyChangeProtection")
                                     (description :target-type description
                                      :member-name "Description")
                                     (firewall-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "FirewallId")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (encryption-configuration :target-type
                                      encryption-configuration :member-name
                                      "EncryptionConfiguration")
                                     (number-of-associations :target-type
                                      number-of-associations :member-name
                                      "NumberOfAssociations")
                                     (enabled-analysis-types :target-type
                                      enabled-analysis-types :member-name
                                      "EnabledAnalysisTypes")
                                     (transit-gateway-id :target-type
                                      transit-gateway-id :member-name
                                      "TransitGatewayId")
                                     (transit-gateway-owner-account-id
                                      :target-type awsaccount-id :member-name
                                      "TransitGatewayOwnerAccountId")
                                     (availability-zone-mappings :target-type
                                      availability-zone-mappings :member-name
                                      "AvailabilityZoneMappings")
                                     (availability-zone-change-protection
                                      :target-type boolean :member-name
                                      "AvailabilityZoneChangeProtection"))
                                    (:shape-name "Firewall"))

(smithy/sdk/shapes:define-structure firewall-metadata common-lisp:nil
                                    ((firewall-name :target-type resource-name
                                      :member-name "FirewallName")
                                     (firewall-arn :target-type resource-arn
                                      :member-name "FirewallArn")
                                     (transit-gateway-attachment-id
                                      :target-type
                                      transit-gateway-attachment-id
                                      :member-name
                                      "TransitGatewayAttachmentId"))
                                    (:shape-name "FirewallMetadata"))

(smithy/sdk/shapes:define-list firewall-policies :member
                               firewall-policy-metadata)

(smithy/sdk/shapes:define-structure firewall-policy common-lisp:nil
                                    ((stateless-rule-group-references
                                      :target-type
                                      stateless-rule-group-references
                                      :member-name
                                      "StatelessRuleGroupReferences")
                                     (stateless-default-actions :target-type
                                      stateless-actions :required common-lisp:t
                                      :member-name "StatelessDefaultActions")
                                     (stateless-fragment-default-actions
                                      :target-type stateless-actions :required
                                      common-lisp:t :member-name
                                      "StatelessFragmentDefaultActions")
                                     (stateless-custom-actions :target-type
                                      custom-actions :member-name
                                      "StatelessCustomActions")
                                     (stateful-rule-group-references
                                      :target-type
                                      stateful-rule-group-references
                                      :member-name
                                      "StatefulRuleGroupReferences")
                                     (stateful-default-actions :target-type
                                      stateful-actions :member-name
                                      "StatefulDefaultActions")
                                     (stateful-engine-options :target-type
                                      stateful-engine-options :member-name
                                      "StatefulEngineOptions")
                                     (tlsinspection-configuration-arn
                                      :target-type resource-arn :member-name
                                      "TLSInspectionConfigurationArn")
                                     (policy-variables :target-type
                                      policy-variables :member-name
                                      "PolicyVariables"))
                                    (:shape-name "FirewallPolicy"))

(smithy/sdk/shapes:define-structure firewall-policy-metadata common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "Name")
                                     (arn :target-type resource-arn
                                      :member-name "Arn"))
                                    (:shape-name "FirewallPolicyMetadata"))

(smithy/sdk/shapes:define-structure firewall-policy-response common-lisp:nil
                                    ((firewall-policy-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "FirewallPolicyName")
                                     (firewall-policy-arn :target-type
                                      resource-arn :required common-lisp:t
                                      :member-name "FirewallPolicyArn")
                                     (firewall-policy-id :target-type
                                      resource-id :required common-lisp:t
                                      :member-name "FirewallPolicyId")
                                     (description :target-type description
                                      :member-name "Description")
                                     (firewall-policy-status :target-type
                                      resource-status :member-name
                                      "FirewallPolicyStatus")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (consumed-stateless-rule-capacity
                                      :target-type rule-capacity :member-name
                                      "ConsumedStatelessRuleCapacity")
                                     (consumed-stateful-rule-capacity
                                      :target-type rule-capacity :member-name
                                      "ConsumedStatefulRuleCapacity")
                                     (number-of-associations :target-type
                                      number-of-associations :member-name
                                      "NumberOfAssociations")
                                     (encryption-configuration :target-type
                                      encryption-configuration :member-name
                                      "EncryptionConfiguration")
                                     (last-modified-time :target-type
                                      last-update-time :member-name
                                      "LastModifiedTime"))
                                    (:shape-name "FirewallPolicyResponse"))

(smithy/sdk/shapes:define-structure firewall-status common-lisp:nil
                                    ((status :target-type firewall-status-value
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (configuration-sync-state-summary
                                      :target-type configuration-sync-state
                                      :required common-lisp:t :member-name
                                      "ConfigurationSyncStateSummary")
                                     (sync-states :target-type sync-states
                                      :member-name "SyncStates")
                                     (capacity-usage-summary :target-type
                                      capacity-usage-summary :member-name
                                      "CapacityUsageSummary")
                                     (transit-gateway-attachment-sync-state
                                      :target-type
                                      transit-gateway-attachment-sync-state
                                      :member-name
                                      "TransitGatewayAttachmentSyncState"))
                                    (:shape-name "FirewallStatus"))

(smithy/sdk/shapes:define-enum firewall-status-value
    common-lisp:nil
  (:provisioning "PROVISIONING")
  (:deleting "DELETING")
  (:ready "READY"))

(smithy/sdk/shapes:define-list firewalls :member firewall-metadata)

(smithy/sdk/shapes:define-type first-accessed smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list flags :member tcpflag)

(smithy/sdk/shapes:define-structure flow common-lisp:nil
                                    ((source-address :target-type address
                                      :member-name "SourceAddress")
                                     (destination-address :target-type address
                                      :member-name "DestinationAddress")
                                     (source-port :target-type port
                                      :member-name "SourcePort")
                                     (destination-port :target-type port
                                      :member-name "DestinationPort")
                                     (protocol :target-type protocol-string
                                      :member-name "Protocol")
                                     (age :target-type age :member-name "Age")
                                     (packet-count :target-type packet-count
                                      :member-name "PacketCount")
                                     (byte-count :target-type byte-count
                                      :member-name "ByteCount"))
                                    (:shape-name "Flow"))

(smithy/sdk/shapes:define-structure flow-filter common-lisp:nil
                                    ((source-address :target-type address
                                      :member-name "SourceAddress")
                                     (destination-address :target-type address
                                      :member-name "DestinationAddress")
                                     (source-port :target-type port
                                      :member-name "SourcePort")
                                     (destination-port :target-type port
                                      :member-name "DestinationPort")
                                     (protocols :target-type protocol-strings
                                      :member-name "Protocols"))
                                    (:shape-name "FlowFilter"))

(smithy/sdk/shapes:define-list flow-filters :member flow-filter)

(smithy/sdk/shapes:define-structure flow-operation common-lisp:nil
                                    ((minimum-flow-age-in-seconds :target-type
                                      age :member-name
                                      "MinimumFlowAgeInSeconds")
                                     (flow-filters :target-type flow-filters
                                      :member-name "FlowFilters"))
                                    (:shape-name "FlowOperation"))

(smithy/sdk/shapes:define-type flow-operation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure flow-operation-metadata common-lisp:nil
                                    ((flow-operation-id :target-type
                                      flow-operation-id :member-name
                                      "FlowOperationId")
                                     (flow-operation-type :target-type
                                      flow-operation-type :member-name
                                      "FlowOperationType")
                                     (flow-request-timestamp :target-type
                                      flow-request-timestamp :member-name
                                      "FlowRequestTimestamp")
                                     (flow-operation-status :target-type
                                      flow-operation-status :member-name
                                      "FlowOperationStatus"))
                                    (:shape-name "FlowOperationMetadata"))

(smithy/sdk/shapes:define-enum flow-operation-status
    common-lisp:nil
  (:completed "COMPLETED")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED")
  (:completed-with-errors "COMPLETED_WITH_ERRORS"))

(smithy/sdk/shapes:define-enum flow-operation-type
    common-lisp:nil
  (:flow-flush "FLOW_FLUSH")
  (:flow-capture "FLOW_CAPTURE"))

(smithy/sdk/shapes:define-list flow-operations :member flow-operation-metadata)

(smithy/sdk/shapes:define-type flow-request-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure flow-timeouts common-lisp:nil
                                    ((tcp-idle-timeout-seconds :target-type
                                      tcp-idle-timeout-range-bound :member-name
                                      "TcpIdleTimeoutSeconds"))
                                    (:shape-name "FlowTimeouts"))

(smithy/sdk/shapes:define-list flows :member flow)

(smithy/sdk/shapes:define-enum generated-rules-type
    common-lisp:nil
  (:allowlist "ALLOWLIST")
  (:denylist "DENYLIST"))

(smithy/sdk/shapes:define-input get-analysis-report-results-request
                                common-lisp:nil
                                ((firewall-name :target-type resource-name
                                  :member-name "FirewallName")
                                 (analysis-report-id :target-type
                                  analysis-report-id :required common-lisp:t
                                  :member-name "AnalysisReportId")
                                 (firewall-arn :target-type resource-arn
                                  :member-name "FirewallArn")
                                 (next-token :target-type
                                  analysis-report-next-token :member-name
                                  "NextToken")
                                 (max-results :target-type
                                  pagination-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "GetAnalysisReportResultsRequest"))

(smithy/sdk/shapes:define-output get-analysis-report-results-response
                                 common-lisp:nil
                                 ((status :target-type status :member-name
                                   "Status")
                                  (start-time :target-type start-time
                                   :member-name "StartTime")
                                  (end-time :target-type end-time :member-name
                                   "EndTime")
                                  (report-time :target-type report-time
                                   :member-name "ReportTime")
                                  (analysis-type :target-type
                                   enabled-analysis-type :member-name
                                   "AnalysisType")
                                  (next-token :target-type
                                   analysis-report-next-token :member-name
                                   "NextToken")
                                  (analysis-report-results :target-type
                                   analysis-report-results :member-name
                                   "AnalysisReportResults"))
                                 (:shape-name
                                  "GetAnalysisReportResultsResponse"))

(smithy/sdk/shapes:define-type hash-map-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type hash-map-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure header common-lisp:nil
                                    ((protocol :target-type
                                      stateful-rule-protocol :required
                                      common-lisp:t :member-name "Protocol")
                                     (source :target-type source :required
                                      common-lisp:t :member-name "Source")
                                     (source-port :target-type port :required
                                      common-lisp:t :member-name "SourcePort")
                                     (direction :target-type
                                      stateful-rule-direction :required
                                      common-lisp:t :member-name "Direction")
                                     (destination :target-type destination
                                      :required common-lisp:t :member-name
                                      "Destination")
                                     (destination-port :target-type port
                                      :required common-lisp:t :member-name
                                      "DestinationPort"))
                                    (:shape-name "Header"))

(smithy/sdk/shapes:define-structure hits common-lisp:nil
                                    ((count :target-type count :member-name
                                      "Count"))
                                    (:shape-name "Hits"))

(smithy/sdk/shapes:define-enum ipaddress-type
    common-lisp:nil
  (:dualstack "DUALSTACK")
  (:ipv4 "IPV4")
  (:ipv6 "IPV6"))

(smithy/sdk/shapes:define-structure ipset common-lisp:nil
                                    ((definition :target-type
                                      variable-definition-list :required
                                      common-lisp:t :member-name "Definition"))
                                    (:shape-name "IPSet"))

(smithy/sdk/shapes:define-type ipset-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ipset-metadata common-lisp:nil
                                    ((resolved-cidrcount :target-type cidrcount
                                      :member-name "ResolvedCIDRCount"))
                                    (:shape-name "IPSetMetadata"))

(smithy/sdk/shapes:define-map ipset-metadata-map :key ipset-arn :value
                              ipset-metadata)

(smithy/sdk/shapes:define-structure ipset-reference common-lisp:nil
                                    ((reference-arn :target-type resource-arn
                                      :member-name "ReferenceArn"))
                                    (:shape-name "IPSetReference"))

(smithy/sdk/shapes:define-map ipset-reference-map :key ipset-reference-name
                              :value ipset-reference)

(smithy/sdk/shapes:define-type ipset-reference-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map ipsets :key rule-variable-name :value ipset)

(smithy/sdk/shapes:define-enum identified-type
    common-lisp:nil
  (:stateless-rule-forwarding-asymmetrically
   "STATELESS_RULE_FORWARDING_ASYMMETRICALLY")
  (:stateless-rule-contains-tcp-flags "STATELESS_RULE_CONTAINS_TCP_FLAGS"))

(smithy/sdk/shapes:define-error insufficient-capacity-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InsufficientCapacityException")
                                (:error-code 500)
                                (:base-class network-firewall-error))

(smithy/sdk/shapes:define-error internal-server-error common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerError")
                                (:error-code 500)
                                (:base-class network-firewall-error))

(smithy/sdk/shapes:define-error invalid-operation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidOperationException")
                                (:error-code 400)
                                (:base-class network-firewall-error))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400)
                                (:base-class network-firewall-error))

(smithy/sdk/shapes:define-error invalid-resource-policy-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidResourcePolicyException")
                                (:error-code 400)
                                (:base-class network-firewall-error))

(smithy/sdk/shapes:define-error invalid-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidTokenException")
                                (:error-code 400)
                                (:base-class network-firewall-error))

(smithy/sdk/shapes:define-type key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type keyword smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type last-accessed smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type last-update-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400)
                                (:base-class network-firewall-error))

(smithy/sdk/shapes:define-input list-analysis-reports-request common-lisp:nil
                                ((firewall-name :target-type resource-name
                                  :member-name "FirewallName")
                                 (firewall-arn :target-type resource-arn
                                  :member-name "FirewallArn")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  pagination-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "ListAnalysisReportsRequest"))

(smithy/sdk/shapes:define-output list-analysis-reports-response common-lisp:nil
                                 ((analysis-reports :target-type
                                   analysis-reports :member-name
                                   "AnalysisReports")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAnalysisReportsResponse"))

(smithy/sdk/shapes:define-input list-firewall-policies-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  pagination-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "ListFirewallPoliciesRequest"))

(smithy/sdk/shapes:define-output list-firewall-policies-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (firewall-policies :target-type
                                   firewall-policies :member-name
                                   "FirewallPolicies"))
                                 (:shape-name "ListFirewallPoliciesResponse"))

(smithy/sdk/shapes:define-input list-firewalls-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (vpc-ids :target-type vpc-ids :member-name
                                  "VpcIds")
                                 (max-results :target-type
                                  pagination-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "ListFirewallsRequest"))

(smithy/sdk/shapes:define-output list-firewalls-response common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (firewalls :target-type firewalls
                                   :member-name "Firewalls"))
                                 (:shape-name "ListFirewallsResponse"))

(smithy/sdk/shapes:define-input list-flow-operation-results-request
                                common-lisp:nil
                                ((firewall-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "FirewallArn")
                                 (flow-operation-id :target-type
                                  flow-operation-id :required common-lisp:t
                                  :member-name "FlowOperationId")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  pagination-max-results :member-name
                                  "MaxResults")
                                 (availability-zone :target-type
                                  availability-zone :member-name
                                  "AvailabilityZone")
                                 (vpc-endpoint-id :target-type vpc-endpoint-id
                                  :member-name "VpcEndpointId")
                                 (vpc-endpoint-association-arn :target-type
                                  resource-arn :member-name
                                  "VpcEndpointAssociationArn"))
                                (:shape-name "ListFlowOperationResultsRequest"))

(smithy/sdk/shapes:define-output list-flow-operation-results-response
                                 common-lisp:nil
                                 ((firewall-arn :target-type resource-arn
                                   :member-name "FirewallArn")
                                  (availability-zone :target-type
                                   availability-zone :member-name
                                   "AvailabilityZone")
                                  (vpc-endpoint-association-arn :target-type
                                   resource-arn :member-name
                                   "VpcEndpointAssociationArn")
                                  (vpc-endpoint-id :target-type vpc-endpoint-id
                                   :member-name "VpcEndpointId")
                                  (flow-operation-id :target-type
                                   flow-operation-id :member-name
                                   "FlowOperationId")
                                  (flow-operation-status :target-type
                                   flow-operation-status :member-name
                                   "FlowOperationStatus")
                                  (status-message :target-type status-reason
                                   :member-name "StatusMessage")
                                  (flow-request-timestamp :target-type
                                   flow-request-timestamp :member-name
                                   "FlowRequestTimestamp")
                                  (flows :target-type flows :member-name
                                   "Flows")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListFlowOperationResultsResponse"))

(smithy/sdk/shapes:define-input list-flow-operations-request common-lisp:nil
                                ((firewall-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "FirewallArn")
                                 (availability-zone :target-type
                                  availability-zone :member-name
                                  "AvailabilityZone")
                                 (vpc-endpoint-association-arn :target-type
                                  resource-arn :member-name
                                  "VpcEndpointAssociationArn")
                                 (vpc-endpoint-id :target-type vpc-endpoint-id
                                  :member-name "VpcEndpointId")
                                 (flow-operation-type :target-type
                                  flow-operation-type :member-name
                                  "FlowOperationType")
                                 (next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  pagination-max-results :member-name
                                  "MaxResults"))
                                (:shape-name "ListFlowOperationsRequest"))

(smithy/sdk/shapes:define-output list-flow-operations-response common-lisp:nil
                                 ((flow-operations :target-type flow-operations
                                   :member-name "FlowOperations")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListFlowOperationsResponse"))

(smithy/sdk/shapes:define-input list-rule-groups-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  pagination-max-results :member-name
                                  "MaxResults")
                                 (scope :target-type resource-managed-status
                                  :member-name "Scope")
                                 (managed-type :target-type
                                  resource-managed-type :member-name
                                  "ManagedType")
                                 (type :target-type rule-group-type
                                  :member-name "Type"))
                                (:shape-name "ListRuleGroupsRequest"))

(smithy/sdk/shapes:define-output list-rule-groups-response common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (rule-groups :target-type rule-groups
                                   :member-name "RuleGroups"))
                                 (:shape-name "ListRuleGroupsResponse"))

(smithy/sdk/shapes:define-input list-tlsinspection-configurations-request
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  pagination-max-results :member-name
                                  "MaxResults"))
                                (:shape-name
                                 "ListTLSInspectionConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-tlsinspection-configurations-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (tlsinspection-configurations :target-type
                                   tlsinspection-configurations :member-name
                                   "TLSInspectionConfigurations"))
                                 (:shape-name
                                  "ListTLSInspectionConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  tags-pagination-max-results :member-name
                                  "MaxResults")
                                 (resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-vpc-endpoint-associations-request
                                common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  pagination-max-results :member-name
                                  "MaxResults")
                                 (firewall-arn :target-type resource-arn
                                  :member-name "FirewallArn"))
                                (:shape-name
                                 "ListVpcEndpointAssociationsRequest"))

(smithy/sdk/shapes:define-output list-vpc-endpoint-associations-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "NextToken")
                                  (vpc-endpoint-associations :target-type
                                   vpc-endpoint-associations :member-name
                                   "VpcEndpointAssociations"))
                                 (:shape-name
                                  "ListVpcEndpointAssociationsResponse"))

(smithy/sdk/shapes:define-structure log-destination-config common-lisp:nil
                                    ((log-type :target-type log-type :required
                                      common-lisp:t :member-name "LogType")
                                     (log-destination-type :target-type
                                      log-destination-type :required
                                      common-lisp:t :member-name
                                      "LogDestinationType")
                                     (log-destination :target-type
                                      log-destination-map :required
                                      common-lisp:t :member-name
                                      "LogDestination"))
                                    (:shape-name "LogDestinationConfig"))

(smithy/sdk/shapes:define-list log-destination-configs :member
                               log-destination-config)

(smithy/sdk/shapes:define-map log-destination-map :key hash-map-key :value
                              hash-map-value)

(smithy/sdk/shapes:define-error log-destination-permission-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "LogDestinationPermissionException")
                                (:error-code 400)
                                (:base-class network-firewall-error))

(smithy/sdk/shapes:define-enum log-destination-type
    common-lisp:nil
  (:s3 "S3")
  (:cloudwatch-logs "CloudWatchLogs")
  (:kinesis-data-firehose "KinesisDataFirehose"))

(smithy/sdk/shapes:define-enum log-type
    common-lisp:nil
  (:alert "ALERT")
  (:flow "FLOW")
  (:tls "TLS"))

(smithy/sdk/shapes:define-structure logging-configuration common-lisp:nil
                                    ((log-destination-configs :target-type
                                      log-destination-configs :required
                                      common-lisp:t :member-name
                                      "LogDestinationConfigs"))
                                    (:shape-name "LoggingConfiguration"))

(smithy/sdk/shapes:define-structure match-attributes common-lisp:nil
                                    ((sources :target-type addresses
                                      :member-name "Sources")
                                     (destinations :target-type addresses
                                      :member-name "Destinations")
                                     (source-ports :target-type port-ranges
                                      :member-name "SourcePorts")
                                     (destination-ports :target-type
                                      port-ranges :member-name
                                      "DestinationPorts")
                                     (protocols :target-type protocol-numbers
                                      :member-name "Protocols")
                                     (tcpflags :target-type tcpflags
                                      :member-name "TCPFlags"))
                                    (:shape-name "MatchAttributes"))

(smithy/sdk/shapes:define-type number-of-associations
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum override-action
    common-lisp:nil
  (:drop-to-alert "DROP_TO_ALERT"))

(smithy/sdk/shapes:define-type packet-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pagination-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure per-object-status common-lisp:nil
                                    ((sync-status :target-type
                                      per-object-sync-status :member-name
                                      "SyncStatus")
                                     (update-token :target-type update-token
                                      :member-name "UpdateToken"))
                                    (:shape-name "PerObjectStatus"))

(smithy/sdk/shapes:define-enum per-object-sync-status
    common-lisp:nil
  (:pending "PENDING")
  (:in-sync "IN_SYNC")
  (:capacity-constrained "CAPACITY_CONSTRAINED"))

(smithy/sdk/shapes:define-type policy-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure policy-variables common-lisp:nil
                                    ((rule-variables :target-type ipsets
                                      :member-name "RuleVariables"))
                                    (:shape-name "PolicyVariables"))

(smithy/sdk/shapes:define-type port smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure port-range common-lisp:nil
                                    ((from-port :target-type port-range-bound
                                      :required common-lisp:t :member-name
                                      "FromPort")
                                     (to-port :target-type port-range-bound
                                      :required common-lisp:t :member-name
                                      "ToPort"))
                                    (:shape-name "PortRange"))

(smithy/sdk/shapes:define-type port-range-bound smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list port-ranges :member port-range)

(smithy/sdk/shapes:define-structure port-set common-lisp:nil
                                    ((definition :target-type
                                      variable-definition-list :member-name
                                      "Definition"))
                                    (:shape-name "PortSet"))

(smithy/sdk/shapes:define-map port-sets :key rule-variable-name :value port-set)

(smithy/sdk/shapes:define-type priority smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type protocol-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list protocol-numbers :member protocol-number)

(smithy/sdk/shapes:define-type protocol-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list protocol-strings :member protocol-string)

(smithy/sdk/shapes:define-structure publish-metric-action common-lisp:nil
                                    ((dimensions :target-type dimensions
                                      :required common-lisp:t :member-name
                                      "Dimensions"))
                                    (:shape-name "PublishMetricAction"))

(smithy/sdk/shapes:define-input put-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (policy :target-type policy-string :required
                                  common-lisp:t :member-name "Policy"))
                                (:shape-name "PutResourcePolicyRequest"))

(smithy/sdk/shapes:define-output put-resource-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutResourcePolicyResponse"))

(smithy/sdk/shapes:define-structure reference-sets common-lisp:nil
                                    ((ipset-references :target-type
                                      ipset-reference-map :member-name
                                      "IPSetReferences"))
                                    (:shape-name "ReferenceSets"))

(smithy/sdk/shapes:define-input
 reject-network-firewall-transit-gateway-attachment-request common-lisp:nil
 ((transit-gateway-attachment-id :target-type transit-gateway-attachment-id
   :required common-lisp:t :member-name "TransitGatewayAttachmentId"))
 (:shape-name "RejectNetworkFirewallTransitGatewayAttachmentRequest"))

(smithy/sdk/shapes:define-output
 reject-network-firewall-transit-gateway-attachment-response common-lisp:nil
 ((transit-gateway-attachment-id :target-type transit-gateway-attachment-id
   :required common-lisp:t :member-name "TransitGatewayAttachmentId")
  (transit-gateway-attachment-status :target-type
   transit-gateway-attachment-status :required common-lisp:t :member-name
   "TransitGatewayAttachmentStatus"))
 (:shape-name "RejectNetworkFirewallTransitGatewayAttachmentResponse"))

(smithy/sdk/shapes:define-type report-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum resource-managed-status
    common-lisp:nil
  (:managed "MANAGED")
  (:account "ACCOUNT"))

(smithy/sdk/shapes:define-enum resource-managed-type
    common-lisp:nil
  (:aws-managed-threat-signatures "AWS_MANAGED_THREAT_SIGNATURES")
  (:aws-managed-domain-lists "AWS_MANAGED_DOMAIN_LISTS")
  (:active-threat-defense "ACTIVE_THREAT_DEFENSE"))

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400)
                                (:base-class network-firewall-error))

(smithy/sdk/shapes:define-error resource-owner-check-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceOwnerCheckException")
                                (:error-code 400)
                                (:base-class network-firewall-error))

(smithy/sdk/shapes:define-enum resource-status
    common-lisp:nil
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:error "ERROR"))

(smithy/sdk/shapes:define-enum revocation-check-action
    common-lisp:nil
  (:pass "PASS")
  (:drop "DROP")
  (:reject "REJECT"))

(smithy/sdk/shapes:define-type rule-capacity smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure rule-definition common-lisp:nil
                                    ((match-attributes :target-type
                                      match-attributes :required common-lisp:t
                                      :member-name "MatchAttributes")
                                     (actions :target-type stateless-actions
                                      :required common-lisp:t :member-name
                                      "Actions"))
                                    (:shape-name "RuleDefinition"))

(smithy/sdk/shapes:define-structure rule-group common-lisp:nil
                                    ((rule-variables :target-type
                                      rule-variables :member-name
                                      "RuleVariables")
                                     (reference-sets :target-type
                                      reference-sets :member-name
                                      "ReferenceSets")
                                     (rules-source :target-type rules-source
                                      :required common-lisp:t :member-name
                                      "RulesSource")
                                     (stateful-rule-options :target-type
                                      stateful-rule-options :member-name
                                      "StatefulRuleOptions"))
                                    (:shape-name "RuleGroup"))

(smithy/sdk/shapes:define-structure rule-group-metadata common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "Name")
                                     (arn :target-type resource-arn
                                      :member-name "Arn"))
                                    (:shape-name "RuleGroupMetadata"))

(smithy/sdk/shapes:define-structure rule-group-response common-lisp:nil
                                    ((rule-group-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "RuleGroupArn")
                                     (rule-group-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "RuleGroupName")
                                     (rule-group-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "RuleGroupId")
                                     (description :target-type description
                                      :member-name "Description")
                                     (type :target-type rule-group-type
                                      :member-name "Type")
                                     (capacity :target-type rule-capacity
                                      :member-name "Capacity")
                                     (rule-group-status :target-type
                                      resource-status :member-name
                                      "RuleGroupStatus")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (consumed-capacity :target-type
                                      rule-capacity :member-name
                                      "ConsumedCapacity")
                                     (number-of-associations :target-type
                                      number-of-associations :member-name
                                      "NumberOfAssociations")
                                     (encryption-configuration :target-type
                                      encryption-configuration :member-name
                                      "EncryptionConfiguration")
                                     (source-metadata :target-type
                                      source-metadata :member-name
                                      "SourceMetadata")
                                     (sns-topic :target-type resource-arn
                                      :member-name "SnsTopic")
                                     (last-modified-time :target-type
                                      last-update-time :member-name
                                      "LastModifiedTime")
                                     (analysis-results :target-type
                                      analysis-result-list :member-name
                                      "AnalysisResults")
                                     (summary-configuration :target-type
                                      summary-configuration :member-name
                                      "SummaryConfiguration"))
                                    (:shape-name "RuleGroupResponse"))

(smithy/sdk/shapes:define-enum rule-group-type
    common-lisp:nil
  (:stateless "STATELESS")
  (:stateful "STATEFUL"))

(smithy/sdk/shapes:define-list rule-groups :member rule-group-metadata)

(smithy/sdk/shapes:define-list rule-id-list :member collection-member-string)

(smithy/sdk/shapes:define-structure rule-option common-lisp:nil
                                    ((keyword :target-type keyword :required
                                      common-lisp:t :member-name "Keyword")
                                     (settings :target-type settings
                                      :member-name "Settings"))
                                    (:shape-name "RuleOption"))

(smithy/sdk/shapes:define-list rule-options :member rule-option)

(smithy/sdk/shapes:define-enum rule-order
    common-lisp:nil
  (:default-action-order "DEFAULT_ACTION_ORDER")
  (:strict-order "STRICT_ORDER"))

(smithy/sdk/shapes:define-list rule-summaries :member rule-summary)

(smithy/sdk/shapes:define-structure rule-summary common-lisp:nil
                                    ((sid :target-type collection-member-string
                                      :member-name "SID")
                                     (msg :target-type collection-member-string
                                      :member-name "Msg")
                                     (metadata :target-type
                                      collection-member-string :member-name
                                      "Metadata"))
                                    (:shape-name "RuleSummary"))

(smithy/sdk/shapes:define-list rule-targets :member collection-member-string)

(smithy/sdk/shapes:define-type rule-variable-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rule-variables common-lisp:nil
                                    ((ipsets :target-type ipsets :member-name
                                      "IPSets")
                                     (port-sets :target-type port-sets
                                      :member-name "PortSets"))
                                    (:shape-name "RuleVariables"))

(smithy/sdk/shapes:define-structure rules-source common-lisp:nil
                                    ((rules-string :target-type rules-string
                                      :member-name "RulesString")
                                     (rules-source-list :target-type
                                      rules-source-list :member-name
                                      "RulesSourceList")
                                     (stateful-rules :target-type
                                      stateful-rules :member-name
                                      "StatefulRules")
                                     (stateless-rules-and-custom-actions
                                      :target-type
                                      stateless-rules-and-custom-actions
                                      :member-name
                                      "StatelessRulesAndCustomActions"))
                                    (:shape-name "RulesSource"))

(smithy/sdk/shapes:define-structure rules-source-list common-lisp:nil
                                    ((targets :target-type rule-targets
                                      :required common-lisp:t :member-name
                                      "Targets")
                                     (target-types :target-type target-types
                                      :required common-lisp:t :member-name
                                      "TargetTypes")
                                     (generated-rules-type :target-type
                                      generated-rules-type :required
                                      common-lisp:t :member-name
                                      "GeneratedRulesType"))
                                    (:shape-name "RulesSourceList"))

(smithy/sdk/shapes:define-type rules-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure server-certificate common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "ResourceArn"))
                                    (:shape-name "ServerCertificate"))

(smithy/sdk/shapes:define-structure server-certificate-configuration
                                    common-lisp:nil
                                    ((server-certificates :target-type
                                      server-certificates :member-name
                                      "ServerCertificates")
                                     (scopes :target-type
                                      server-certificate-scopes :member-name
                                      "Scopes")
                                     (certificate-authority-arn :target-type
                                      resource-arn :member-name
                                      "CertificateAuthorityArn")
                                     (check-certificate-revocation-status
                                      :target-type
                                      check-certificate-revocation-status-actions
                                      :member-name
                                      "CheckCertificateRevocationStatus"))
                                    (:shape-name
                                     "ServerCertificateConfiguration"))

(smithy/sdk/shapes:define-list server-certificate-configurations :member
                               server-certificate-configuration)

(smithy/sdk/shapes:define-structure server-certificate-scope common-lisp:nil
                                    ((sources :target-type addresses
                                      :member-name "Sources")
                                     (destinations :target-type addresses
                                      :member-name "Destinations")
                                     (source-ports :target-type port-ranges
                                      :member-name "SourcePorts")
                                     (destination-ports :target-type
                                      port-ranges :member-name
                                      "DestinationPorts")
                                     (protocols :target-type protocol-numbers
                                      :member-name "Protocols"))
                                    (:shape-name "ServerCertificateScope"))

(smithy/sdk/shapes:define-list server-certificate-scopes :member
                               server-certificate-scope)

(smithy/sdk/shapes:define-list server-certificates :member server-certificate)

(smithy/sdk/shapes:define-type setting smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list settings :member setting)

(smithy/sdk/shapes:define-type source smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure source-metadata common-lisp:nil
                                    ((source-arn :target-type resource-arn
                                      :member-name "SourceArn")
                                     (source-update-token :target-type
                                      update-token :member-name
                                      "SourceUpdateToken"))
                                    (:shape-name "SourceMetadata"))

(smithy/sdk/shapes:define-input start-analysis-report-request common-lisp:nil
                                ((firewall-name :target-type resource-name
                                  :member-name "FirewallName")
                                 (firewall-arn :target-type resource-arn
                                  :member-name "FirewallArn")
                                 (analysis-type :target-type
                                  enabled-analysis-type :required common-lisp:t
                                  :member-name "AnalysisType"))
                                (:shape-name "StartAnalysisReportRequest"))

(smithy/sdk/shapes:define-output start-analysis-report-response common-lisp:nil
                                 ((analysis-report-id :target-type
                                   analysis-report-id :required common-lisp:t
                                   :member-name "AnalysisReportId"))
                                 (:shape-name "StartAnalysisReportResponse"))

(smithy/sdk/shapes:define-input start-flow-capture-request common-lisp:nil
                                ((firewall-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "FirewallArn")
                                 (availability-zone :target-type
                                  availability-zone :member-name
                                  "AvailabilityZone")
                                 (vpc-endpoint-association-arn :target-type
                                  resource-arn :member-name
                                  "VpcEndpointAssociationArn")
                                 (vpc-endpoint-id :target-type vpc-endpoint-id
                                  :member-name "VpcEndpointId")
                                 (minimum-flow-age-in-seconds :target-type age
                                  :member-name "MinimumFlowAgeInSeconds")
                                 (flow-filters :target-type flow-filters
                                  :required common-lisp:t :member-name
                                  "FlowFilters"))
                                (:shape-name "StartFlowCaptureRequest"))

(smithy/sdk/shapes:define-output start-flow-capture-response common-lisp:nil
                                 ((firewall-arn :target-type resource-arn
                                   :member-name "FirewallArn")
                                  (flow-operation-id :target-type
                                   flow-operation-id :member-name
                                   "FlowOperationId")
                                  (flow-operation-status :target-type
                                   flow-operation-status :member-name
                                   "FlowOperationStatus"))
                                 (:shape-name "StartFlowCaptureResponse"))

(smithy/sdk/shapes:define-input start-flow-flush-request common-lisp:nil
                                ((firewall-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "FirewallArn")
                                 (availability-zone :target-type
                                  availability-zone :member-name
                                  "AvailabilityZone")
                                 (vpc-endpoint-association-arn :target-type
                                  resource-arn :member-name
                                  "VpcEndpointAssociationArn")
                                 (vpc-endpoint-id :target-type vpc-endpoint-id
                                  :member-name "VpcEndpointId")
                                 (minimum-flow-age-in-seconds :target-type age
                                  :member-name "MinimumFlowAgeInSeconds")
                                 (flow-filters :target-type flow-filters
                                  :required common-lisp:t :member-name
                                  "FlowFilters"))
                                (:shape-name "StartFlowFlushRequest"))

(smithy/sdk/shapes:define-output start-flow-flush-response common-lisp:nil
                                 ((firewall-arn :target-type resource-arn
                                   :member-name "FirewallArn")
                                  (flow-operation-id :target-type
                                   flow-operation-id :member-name
                                   "FlowOperationId")
                                  (flow-operation-status :target-type
                                   flow-operation-status :member-name
                                   "FlowOperationStatus"))
                                 (:shape-name "StartFlowFlushResponse"))

(smithy/sdk/shapes:define-type start-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum stateful-action
    common-lisp:nil
  (:pass "PASS")
  (:drop "DROP")
  (:alert "ALERT")
  (:reject "REJECT"))

(smithy/sdk/shapes:define-list stateful-actions :member
                               collection-member-string)

(smithy/sdk/shapes:define-structure stateful-engine-options common-lisp:nil
                                    ((rule-order :target-type rule-order
                                      :member-name "RuleOrder")
                                     (stream-exception-policy :target-type
                                      stream-exception-policy :member-name
                                      "StreamExceptionPolicy")
                                     (flow-timeouts :target-type flow-timeouts
                                      :member-name "FlowTimeouts"))
                                    (:shape-name "StatefulEngineOptions"))

(smithy/sdk/shapes:define-structure stateful-rule common-lisp:nil
                                    ((action :target-type stateful-action
                                      :required common-lisp:t :member-name
                                      "Action")
                                     (header :target-type header :required
                                      common-lisp:t :member-name "Header")
                                     (rule-options :target-type rule-options
                                      :required common-lisp:t :member-name
                                      "RuleOptions"))
                                    (:shape-name "StatefulRule"))

(smithy/sdk/shapes:define-enum stateful-rule-direction
    common-lisp:nil
  (:forward "FORWARD")
  (:any "ANY"))

(smithy/sdk/shapes:define-structure stateful-rule-group-override
                                    common-lisp:nil
                                    ((action :target-type override-action
                                      :member-name "Action"))
                                    (:shape-name "StatefulRuleGroupOverride"))

(smithy/sdk/shapes:define-structure stateful-rule-group-reference
                                    common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceArn")
                                     (priority :target-type priority
                                      :member-name "Priority")
                                     (override :target-type
                                      stateful-rule-group-override :member-name
                                      "Override")
                                     (deep-threat-inspection :target-type
                                      deep-threat-inspection :member-name
                                      "DeepThreatInspection"))
                                    (:shape-name "StatefulRuleGroupReference"))

(smithy/sdk/shapes:define-list stateful-rule-group-references :member
                               stateful-rule-group-reference)

(smithy/sdk/shapes:define-structure stateful-rule-options common-lisp:nil
                                    ((rule-order :target-type rule-order
                                      :member-name "RuleOrder"))
                                    (:shape-name "StatefulRuleOptions"))

(smithy/sdk/shapes:define-enum stateful-rule-protocol
    common-lisp:nil
  (:any "IP")
  (:tcp "TCP")
  (:udp "UDP")
  (:icmp "ICMP")
  (:http "HTTP")
  (:ftp "FTP")
  (:tls "TLS")
  (:smb "SMB")
  (:dns "DNS")
  (:dcerpc "DCERPC")
  (:ssh "SSH")
  (:smtp "SMTP")
  (:imap "IMAP")
  (:msn "MSN")
  (:krb5 "KRB5")
  (:ikev2 "IKEV2")
  (:tftp "TFTP")
  (:ntp "NTP")
  (:dhcp "DHCP")
  (:http2 "HTTP2")
  (:quic "QUIC"))

(smithy/sdk/shapes:define-list stateful-rules :member stateful-rule)

(smithy/sdk/shapes:define-list stateless-actions :member
                               collection-member-string)

(smithy/sdk/shapes:define-structure stateless-rule common-lisp:nil
                                    ((rule-definition :target-type
                                      rule-definition :required common-lisp:t
                                      :member-name "RuleDefinition")
                                     (priority :target-type priority :required
                                      common-lisp:t :member-name "Priority"))
                                    (:shape-name "StatelessRule"))

(smithy/sdk/shapes:define-structure stateless-rule-group-reference
                                    common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceArn")
                                     (priority :target-type priority :required
                                      common-lisp:t :member-name "Priority"))
                                    (:shape-name "StatelessRuleGroupReference"))

(smithy/sdk/shapes:define-list stateless-rule-group-references :member
                               stateless-rule-group-reference)

(smithy/sdk/shapes:define-list stateless-rules :member stateless-rule)

(smithy/sdk/shapes:define-structure stateless-rules-and-custom-actions
                                    common-lisp:nil
                                    ((stateless-rules :target-type
                                      stateless-rules :required common-lisp:t
                                      :member-name "StatelessRules")
                                     (custom-actions :target-type
                                      custom-actions :member-name
                                      "CustomActions"))
                                    (:shape-name
                                     "StatelessRulesAndCustomActions"))

(smithy/sdk/shapes:define-type status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type status-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type status-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum stream-exception-policy
    common-lisp:nil
  (:drop "DROP")
  (:continue "CONTINUE")
  (:reject "REJECT"))

(smithy/sdk/shapes:define-structure subnet-mapping common-lisp:nil
                                    ((subnet-id :target-type
                                      collection-member-string :required
                                      common-lisp:t :member-name "SubnetId")
                                     (ipaddress-type :target-type
                                      ipaddress-type :member-name
                                      "IPAddressType"))
                                    (:shape-name "SubnetMapping"))

(smithy/sdk/shapes:define-list subnet-mappings :member subnet-mapping)

(smithy/sdk/shapes:define-structure summary common-lisp:nil
                                    ((rule-summaries :target-type
                                      rule-summaries :member-name
                                      "RuleSummaries"))
                                    (:shape-name "Summary"))

(smithy/sdk/shapes:define-structure summary-configuration common-lisp:nil
                                    ((rule-options :target-type
                                      summary-rule-options :member-name
                                      "RuleOptions"))
                                    (:shape-name "SummaryConfiguration"))

(smithy/sdk/shapes:define-enum summary-rule-option
    common-lisp:nil
  (:sid "SID")
  (:msg "MSG")
  (:metadata "METADATA"))

(smithy/sdk/shapes:define-list summary-rule-options :member summary-rule-option)

(smithy/sdk/shapes:define-map supported-availability-zones :key
                              availability-zone :value
                              availability-zone-metadata)

(smithy/sdk/shapes:define-structure sync-state common-lisp:nil
                                    ((attachment :target-type attachment
                                      :member-name "Attachment")
                                     (config :target-type sync-state-config
                                      :member-name "Config"))
                                    (:shape-name "SyncState"))

(smithy/sdk/shapes:define-map sync-state-config :key resource-name :value
                              per-object-status)

(smithy/sdk/shapes:define-map sync-states :key availability-zone :value
                              sync-state)

(smithy/sdk/shapes:define-enum tcpflag
    common-lisp:nil
  (:fin "FIN")
  (:syn "SYN")
  (:rst "RST")
  (:psh "PSH")
  (:ack "ACK")
  (:urg "URG")
  (:ece "ECE")
  (:cwr "CWR"))

(smithy/sdk/shapes:define-structure tcpflag-field common-lisp:nil
                                    ((flags :target-type flags :required
                                      common-lisp:t :member-name "Flags")
                                     (masks :target-type flags :member-name
                                      "Masks"))
                                    (:shape-name "TCPFlagField"))

(smithy/sdk/shapes:define-list tcpflags :member tcpflag-field)

(smithy/sdk/shapes:define-structure tlsinspection-configuration common-lisp:nil
                                    ((server-certificate-configurations
                                      :target-type
                                      server-certificate-configurations
                                      :member-name
                                      "ServerCertificateConfigurations"))
                                    (:shape-name "TLSInspectionConfiguration"))

(smithy/sdk/shapes:define-structure tlsinspection-configuration-metadata
                                    common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "Name")
                                     (arn :target-type resource-arn
                                      :member-name "Arn"))
                                    (:shape-name
                                     "TLSInspectionConfigurationMetadata"))

(smithy/sdk/shapes:define-structure tlsinspection-configuration-response
                                    common-lisp:nil
                                    ((tlsinspection-configuration-arn
                                      :target-type resource-arn :required
                                      common-lisp:t :member-name
                                      "TLSInspectionConfigurationArn")
                                     (tlsinspection-configuration-name
                                      :target-type resource-name :required
                                      common-lisp:t :member-name
                                      "TLSInspectionConfigurationName")
                                     (tlsinspection-configuration-id
                                      :target-type resource-id :required
                                      common-lisp:t :member-name
                                      "TLSInspectionConfigurationId")
                                     (tlsinspection-configuration-status
                                      :target-type resource-status :member-name
                                      "TLSInspectionConfigurationStatus")
                                     (description :target-type description
                                      :member-name "Description")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (last-modified-time :target-type
                                      last-update-time :member-name
                                      "LastModifiedTime")
                                     (number-of-associations :target-type
                                      number-of-associations :member-name
                                      "NumberOfAssociations")
                                     (encryption-configuration :target-type
                                      encryption-configuration :member-name
                                      "EncryptionConfiguration")
                                     (certificates :target-type certificates
                                      :member-name "Certificates")
                                     (certificate-authority :target-type
                                      tls-certificate-data :member-name
                                      "CertificateAuthority"))
                                    (:shape-name
                                     "TLSInspectionConfigurationResponse"))

(smithy/sdk/shapes:define-list tlsinspection-configurations :member
                               tlsinspection-configuration-metadata)

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
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tags-pagination-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum target-type
    common-lisp:nil
  (:tls-sni "TLS_SNI")
  (:http-host "HTTP_HOST"))

(smithy/sdk/shapes:define-list target-types :member target-type)

(smithy/sdk/shapes:define-type tcp-idle-timeout-range-bound
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 400)
                                (:base-class network-firewall-error))

(smithy/sdk/shapes:define-structure tls-certificate-data common-lisp:nil
                                    ((certificate-arn :target-type resource-arn
                                      :member-name "CertificateArn")
                                     (certificate-serial :target-type
                                      collection-member-string :member-name
                                      "CertificateSerial")
                                     (status :target-type
                                      collection-member-string :member-name
                                      "Status")
                                     (status-message :target-type status-reason
                                      :member-name "StatusMessage"))
                                    (:shape-name "TlsCertificateData"))

(smithy/sdk/shapes:define-type transit-gateway-attachment-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum transit-gateway-attachment-status
    common-lisp:nil
  (:creating "CREATING")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:failed "FAILED")
  (:error "ERROR")
  (:ready "READY")
  (:pending-acceptance "PENDING_ACCEPTANCE")
  (:rejecting "REJECTING")
  (:rejected "REJECTED"))

(smithy/sdk/shapes:define-structure transit-gateway-attachment-sync-state
                                    common-lisp:nil
                                    ((attachment-id :target-type attachment-id
                                      :member-name "AttachmentId")
                                     (transit-gateway-attachment-status
                                      :target-type
                                      transit-gateway-attachment-status
                                      :member-name
                                      "TransitGatewayAttachmentStatus")
                                     (status-message :target-type
                                      transit-gateway-attachment-sync-state-message
                                      :member-name "StatusMessage"))
                                    (:shape-name
                                     "TransitGatewayAttachmentSyncState"))

(smithy/sdk/shapes:define-type transit-gateway-attachment-sync-state-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type transit-gateway-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure unique-sources common-lisp:nil
                                    ((count :target-type count :member-name
                                      "Count"))
                                    (:shape-name "UniqueSources"))

(smithy/sdk/shapes:define-error unsupported-operation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "UnsupportedOperationException")
                                (:error-code 400)
                                (:base-class network-firewall-error))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input
 update-availability-zone-change-protection-request common-lisp:nil
 ((update-token :target-type update-token :member-name "UpdateToken")
  (firewall-arn :target-type resource-arn :member-name "FirewallArn")
  (firewall-name :target-type resource-name :member-name "FirewallName")
  (availability-zone-change-protection :target-type boolean :required
   common-lisp:t :member-name "AvailabilityZoneChangeProtection"))
 (:shape-name "UpdateAvailabilityZoneChangeProtectionRequest"))

(smithy/sdk/shapes:define-output
 update-availability-zone-change-protection-response common-lisp:nil
 ((update-token :target-type update-token :member-name "UpdateToken")
  (firewall-arn :target-type resource-arn :member-name "FirewallArn")
  (firewall-name :target-type resource-name :member-name "FirewallName")
  (availability-zone-change-protection :target-type boolean :member-name
   "AvailabilityZoneChangeProtection"))
 (:shape-name "UpdateAvailabilityZoneChangeProtectionResponse"))

(smithy/sdk/shapes:define-input update-firewall-analysis-settings-request
                                common-lisp:nil
                                ((enabled-analysis-types :target-type
                                  enabled-analysis-types :member-name
                                  "EnabledAnalysisTypes")
                                 (firewall-arn :target-type resource-arn
                                  :member-name "FirewallArn")
                                 (firewall-name :target-type resource-name
                                  :member-name "FirewallName")
                                 (update-token :target-type update-token
                                  :member-name "UpdateToken"))
                                (:shape-name
                                 "UpdateFirewallAnalysisSettingsRequest"))

(smithy/sdk/shapes:define-output update-firewall-analysis-settings-response
                                 common-lisp:nil
                                 ((enabled-analysis-types :target-type
                                   enabled-analysis-types :member-name
                                   "EnabledAnalysisTypes")
                                  (firewall-arn :target-type resource-arn
                                   :member-name "FirewallArn")
                                  (firewall-name :target-type resource-name
                                   :member-name "FirewallName")
                                  (update-token :target-type update-token
                                   :member-name "UpdateToken"))
                                 (:shape-name
                                  "UpdateFirewallAnalysisSettingsResponse"))

(smithy/sdk/shapes:define-input update-firewall-delete-protection-request
                                common-lisp:nil
                                ((update-token :target-type update-token
                                  :member-name "UpdateToken")
                                 (firewall-arn :target-type resource-arn
                                  :member-name "FirewallArn")
                                 (firewall-name :target-type resource-name
                                  :member-name "FirewallName")
                                 (delete-protection :target-type boolean
                                  :required common-lisp:t :member-name
                                  "DeleteProtection"))
                                (:shape-name
                                 "UpdateFirewallDeleteProtectionRequest"))

(smithy/sdk/shapes:define-output update-firewall-delete-protection-response
                                 common-lisp:nil
                                 ((firewall-arn :target-type resource-arn
                                   :member-name "FirewallArn")
                                  (firewall-name :target-type resource-name
                                   :member-name "FirewallName")
                                  (delete-protection :target-type boolean
                                   :member-name "DeleteProtection")
                                  (update-token :target-type update-token
                                   :member-name "UpdateToken"))
                                 (:shape-name
                                  "UpdateFirewallDeleteProtectionResponse"))

(smithy/sdk/shapes:define-input update-firewall-description-request
                                common-lisp:nil
                                ((update-token :target-type update-token
                                  :member-name "UpdateToken")
                                 (firewall-arn :target-type resource-arn
                                  :member-name "FirewallArn")
                                 (firewall-name :target-type resource-name
                                  :member-name "FirewallName")
                                 (description :target-type description
                                  :member-name "Description"))
                                (:shape-name
                                 "UpdateFirewallDescriptionRequest"))

(smithy/sdk/shapes:define-output update-firewall-description-response
                                 common-lisp:nil
                                 ((firewall-arn :target-type resource-arn
                                   :member-name "FirewallArn")
                                  (firewall-name :target-type resource-name
                                   :member-name "FirewallName")
                                  (description :target-type description
                                   :member-name "Description")
                                  (update-token :target-type update-token
                                   :member-name "UpdateToken"))
                                 (:shape-name
                                  "UpdateFirewallDescriptionResponse"))

(smithy/sdk/shapes:define-input
 update-firewall-encryption-configuration-request common-lisp:nil
 ((update-token :target-type update-token :member-name "UpdateToken")
  (firewall-arn :target-type resource-arn :member-name "FirewallArn")
  (firewall-name :target-type resource-name :member-name "FirewallName")
  (encryption-configuration :target-type encryption-configuration :member-name
   "EncryptionConfiguration"))
 (:shape-name "UpdateFirewallEncryptionConfigurationRequest"))

(smithy/sdk/shapes:define-output
 update-firewall-encryption-configuration-response common-lisp:nil
 ((firewall-arn :target-type resource-arn :member-name "FirewallArn")
  (firewall-name :target-type resource-name :member-name "FirewallName")
  (update-token :target-type update-token :member-name "UpdateToken")
  (encryption-configuration :target-type encryption-configuration :member-name
   "EncryptionConfiguration"))
 (:shape-name "UpdateFirewallEncryptionConfigurationResponse"))

(smithy/sdk/shapes:define-input
 update-firewall-policy-change-protection-request common-lisp:nil
 ((update-token :target-type update-token :member-name "UpdateToken")
  (firewall-arn :target-type resource-arn :member-name "FirewallArn")
  (firewall-name :target-type resource-name :member-name "FirewallName")
  (firewall-policy-change-protection :target-type boolean :required
   common-lisp:t :member-name "FirewallPolicyChangeProtection"))
 (:shape-name "UpdateFirewallPolicyChangeProtectionRequest"))

(smithy/sdk/shapes:define-output
 update-firewall-policy-change-protection-response common-lisp:nil
 ((update-token :target-type update-token :member-name "UpdateToken")
  (firewall-arn :target-type resource-arn :member-name "FirewallArn")
  (firewall-name :target-type resource-name :member-name "FirewallName")
  (firewall-policy-change-protection :target-type boolean :member-name
   "FirewallPolicyChangeProtection"))
 (:shape-name "UpdateFirewallPolicyChangeProtectionResponse"))

(smithy/sdk/shapes:define-input update-firewall-policy-request common-lisp:nil
                                ((update-token :target-type update-token
                                  :required common-lisp:t :member-name
                                  "UpdateToken")
                                 (firewall-policy-arn :target-type resource-arn
                                  :member-name "FirewallPolicyArn")
                                 (firewall-policy-name :target-type
                                  resource-name :member-name
                                  "FirewallPolicyName")
                                 (firewall-policy :target-type firewall-policy
                                  :required common-lisp:t :member-name
                                  "FirewallPolicy")
                                 (description :target-type description
                                  :member-name "Description")
                                 (dry-run :target-type boolean :member-name
                                  "DryRun")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "EncryptionConfiguration"))
                                (:shape-name "UpdateFirewallPolicyRequest"))

(smithy/sdk/shapes:define-output update-firewall-policy-response
                                 common-lisp:nil
                                 ((update-token :target-type update-token
                                   :required common-lisp:t :member-name
                                   "UpdateToken")
                                  (firewall-policy-response :target-type
                                   firewall-policy-response :required
                                   common-lisp:t :member-name
                                   "FirewallPolicyResponse"))
                                 (:shape-name "UpdateFirewallPolicyResponse"))

(smithy/sdk/shapes:define-input update-logging-configuration-request
                                common-lisp:nil
                                ((firewall-arn :target-type resource-arn
                                  :member-name "FirewallArn")
                                 (firewall-name :target-type resource-name
                                  :member-name "FirewallName")
                                 (logging-configuration :target-type
                                  logging-configuration :member-name
                                  "LoggingConfiguration")
                                 (enable-monitoring-dashboard :target-type
                                  enable-monitoring-dashboard :member-name
                                  "EnableMonitoringDashboard"))
                                (:shape-name
                                 "UpdateLoggingConfigurationRequest"))

(smithy/sdk/shapes:define-output update-logging-configuration-response
                                 common-lisp:nil
                                 ((firewall-arn :target-type resource-arn
                                   :member-name "FirewallArn")
                                  (firewall-name :target-type resource-name
                                   :member-name "FirewallName")
                                  (logging-configuration :target-type
                                   logging-configuration :member-name
                                   "LoggingConfiguration")
                                  (enable-monitoring-dashboard :target-type
                                   enable-monitoring-dashboard :member-name
                                   "EnableMonitoringDashboard"))
                                 (:shape-name
                                  "UpdateLoggingConfigurationResponse"))

(smithy/sdk/shapes:define-input update-rule-group-request common-lisp:nil
                                ((update-token :target-type update-token
                                  :required common-lisp:t :member-name
                                  "UpdateToken")
                                 (rule-group-arn :target-type resource-arn
                                  :member-name "RuleGroupArn")
                                 (rule-group-name :target-type resource-name
                                  :member-name "RuleGroupName")
                                 (rule-group :target-type rule-group
                                  :member-name "RuleGroup")
                                 (rules :target-type rules-string :member-name
                                  "Rules")
                                 (type :target-type rule-group-type
                                  :member-name "Type")
                                 (description :target-type description
                                  :member-name "Description")
                                 (dry-run :target-type boolean :member-name
                                  "DryRun")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "EncryptionConfiguration")
                                 (source-metadata :target-type source-metadata
                                  :member-name "SourceMetadata")
                                 (analyze-rule-group :target-type boolean
                                  :member-name "AnalyzeRuleGroup")
                                 (summary-configuration :target-type
                                  summary-configuration :member-name
                                  "SummaryConfiguration"))
                                (:shape-name "UpdateRuleGroupRequest"))

(smithy/sdk/shapes:define-output update-rule-group-response common-lisp:nil
                                 ((update-token :target-type update-token
                                   :required common-lisp:t :member-name
                                   "UpdateToken")
                                  (rule-group-response :target-type
                                   rule-group-response :required common-lisp:t
                                   :member-name "RuleGroupResponse"))
                                 (:shape-name "UpdateRuleGroupResponse"))

(smithy/sdk/shapes:define-input update-subnet-change-protection-request
                                common-lisp:nil
                                ((update-token :target-type update-token
                                  :member-name "UpdateToken")
                                 (firewall-arn :target-type resource-arn
                                  :member-name "FirewallArn")
                                 (firewall-name :target-type resource-name
                                  :member-name "FirewallName")
                                 (subnet-change-protection :target-type boolean
                                  :required common-lisp:t :member-name
                                  "SubnetChangeProtection"))
                                (:shape-name
                                 "UpdateSubnetChangeProtectionRequest"))

(smithy/sdk/shapes:define-output update-subnet-change-protection-response
                                 common-lisp:nil
                                 ((update-token :target-type update-token
                                   :member-name "UpdateToken")
                                  (firewall-arn :target-type resource-arn
                                   :member-name "FirewallArn")
                                  (firewall-name :target-type resource-name
                                   :member-name "FirewallName")
                                  (subnet-change-protection :target-type
                                   boolean :member-name
                                   "SubnetChangeProtection"))
                                 (:shape-name
                                  "UpdateSubnetChangeProtectionResponse"))

(smithy/sdk/shapes:define-input update-tlsinspection-configuration-request
                                common-lisp:nil
                                ((tlsinspection-configuration-arn :target-type
                                  resource-arn :member-name
                                  "TLSInspectionConfigurationArn")
                                 (tlsinspection-configuration-name :target-type
                                  resource-name :member-name
                                  "TLSInspectionConfigurationName")
                                 (tlsinspection-configuration :target-type
                                  tlsinspection-configuration :required
                                  common-lisp:t :member-name
                                  "TLSInspectionConfiguration")
                                 (description :target-type description
                                  :member-name "Description")
                                 (encryption-configuration :target-type
                                  encryption-configuration :member-name
                                  "EncryptionConfiguration")
                                 (update-token :target-type update-token
                                  :required common-lisp:t :member-name
                                  "UpdateToken"))
                                (:shape-name
                                 "UpdateTLSInspectionConfigurationRequest"))

(smithy/sdk/shapes:define-output update-tlsinspection-configuration-response
                                 common-lisp:nil
                                 ((update-token :target-type update-token
                                   :required common-lisp:t :member-name
                                   "UpdateToken")
                                  (tlsinspection-configuration-response
                                   :target-type
                                   tlsinspection-configuration-response
                                   :required common-lisp:t :member-name
                                   "TLSInspectionConfigurationResponse"))
                                 (:shape-name
                                  "UpdateTLSInspectionConfigurationResponse"))

(smithy/sdk/shapes:define-type update-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type variable-definition
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list variable-definition-list :member
                               variable-definition)

(smithy/sdk/shapes:define-structure vpc-endpoint-association common-lisp:nil
                                    ((vpc-endpoint-association-id :target-type
                                      resource-id :member-name
                                      "VpcEndpointAssociationId")
                                     (vpc-endpoint-association-arn :target-type
                                      resource-arn :required common-lisp:t
                                      :member-name "VpcEndpointAssociationArn")
                                     (firewall-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "FirewallArn")
                                     (vpc-id :target-type vpc-id :required
                                      common-lisp:t :member-name "VpcId")
                                     (subnet-mapping :target-type
                                      subnet-mapping :required common-lisp:t
                                      :member-name "SubnetMapping")
                                     (description :target-type description
                                      :member-name "Description")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "VpcEndpointAssociation"))

(smithy/sdk/shapes:define-structure vpc-endpoint-association-metadata
                                    common-lisp:nil
                                    ((vpc-endpoint-association-arn :target-type
                                      resource-arn :member-name
                                      "VpcEndpointAssociationArn"))
                                    (:shape-name
                                     "VpcEndpointAssociationMetadata"))

(smithy/sdk/shapes:define-structure vpc-endpoint-association-status
                                    common-lisp:nil
                                    ((status :target-type firewall-status-value
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (association-sync-state :target-type
                                      association-sync-state :member-name
                                      "AssociationSyncState"))
                                    (:shape-name
                                     "VpcEndpointAssociationStatus"))

(smithy/sdk/shapes:define-list vpc-endpoint-associations :member
                               vpc-endpoint-association-metadata)

(smithy/sdk/shapes:define-type vpc-endpoint-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list vpc-ids :member vpc-id)

(smithy/sdk/operation:define-operation
 accept-network-firewall-transit-gateway-attachment :shape-name
 "AcceptNetworkFirewallTransitGatewayAttachment" :input
 accept-network-firewall-transit-gateway-attachment-request :output
 accept-network-firewall-transit-gateway-attachment-response :errors
 (internal-server-error invalid-request-exception resource-not-found-exception
  throttling-exception))

(smithy/sdk/operation:define-operation associate-availability-zones :shape-name
                                       "AssociateAvailabilityZones" :input
                                       associate-availability-zones-request
                                       :output
                                       associate-availability-zones-response
                                       :errors
                                       (insufficient-capacity-exception
                                        internal-server-error
                                        invalid-operation-exception
                                        invalid-request-exception
                                        invalid-token-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation associate-firewall-policy :shape-name
                                       "AssociateFirewallPolicy" :input
                                       associate-firewall-policy-request
                                       :output
                                       associate-firewall-policy-response
                                       :errors
                                       (internal-server-error
                                        invalid-operation-exception
                                        invalid-request-exception
                                        invalid-token-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation associate-subnets :shape-name
                                       "AssociateSubnets" :input
                                       associate-subnets-request :output
                                       associate-subnets-response :errors
                                       (insufficient-capacity-exception
                                        internal-server-error
                                        invalid-operation-exception
                                        invalid-request-exception
                                        invalid-token-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-firewall :shape-name
                                       "CreateFirewall" :input
                                       create-firewall-request :output
                                       create-firewall-response :errors
                                       (insufficient-capacity-exception
                                        internal-server-error
                                        invalid-operation-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-firewall-policy :shape-name
                                       "CreateFirewallPolicy" :input
                                       create-firewall-policy-request :output
                                       create-firewall-policy-response :errors
                                       (insufficient-capacity-exception
                                        internal-server-error
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-rule-group :shape-name
                                       "CreateRuleGroup" :input
                                       create-rule-group-request :output
                                       create-rule-group-response :errors
                                       (insufficient-capacity-exception
                                        internal-server-error
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-tlsinspection-configuration
                                       :shape-name
                                       "CreateTLSInspectionConfiguration"
                                       :input
                                       create-tlsinspection-configuration-request
                                       :output
                                       create-tlsinspection-configuration-response
                                       :errors
                                       (insufficient-capacity-exception
                                        internal-server-error
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation create-vpc-endpoint-association
                                       :shape-name
                                       "CreateVpcEndpointAssociation" :input
                                       create-vpc-endpoint-association-request
                                       :output
                                       create-vpc-endpoint-association-response
                                       :errors
                                       (insufficient-capacity-exception
                                        internal-server-error
                                        invalid-operation-exception
                                        invalid-request-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-firewall :shape-name
                                       "DeleteFirewall" :input
                                       delete-firewall-request :output
                                       delete-firewall-response :errors
                                       (internal-server-error
                                        invalid-operation-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation delete-firewall-policy :shape-name
                                       "DeleteFirewallPolicy" :input
                                       delete-firewall-policy-request :output
                                       delete-firewall-policy-response :errors
                                       (internal-server-error
                                        invalid-operation-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation
 delete-network-firewall-transit-gateway-attachment :shape-name
 "DeleteNetworkFirewallTransitGatewayAttachment" :input
 delete-network-firewall-transit-gateway-attachment-request :output
 delete-network-firewall-transit-gateway-attachment-response :errors
 (internal-server-error invalid-request-exception resource-not-found-exception
  throttling-exception))

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-request :output
                                       delete-resource-policy-response :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        invalid-resource-policy-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-rule-group :shape-name
                                       "DeleteRuleGroup" :input
                                       delete-rule-group-request :output
                                       delete-rule-group-response :errors
                                       (internal-server-error
                                        invalid-operation-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unsupported-operation-exception))

(smithy/sdk/operation:define-operation delete-tlsinspection-configuration
                                       :shape-name
                                       "DeleteTLSInspectionConfiguration"
                                       :input
                                       delete-tlsinspection-configuration-request
                                       :output
                                       delete-tlsinspection-configuration-response
                                       :errors
                                       (internal-server-error
                                        invalid-operation-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation delete-vpc-endpoint-association
                                       :shape-name
                                       "DeleteVpcEndpointAssociation" :input
                                       delete-vpc-endpoint-association-request
                                       :output
                                       delete-vpc-endpoint-association-response
                                       :errors
                                       (internal-server-error
                                        invalid-operation-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-firewall :shape-name
                                       "DescribeFirewall" :input
                                       describe-firewall-request :output
                                       describe-firewall-response :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-firewall-metadata :shape-name
                                       "DescribeFirewallMetadata" :input
                                       describe-firewall-metadata-request
                                       :output
                                       describe-firewall-metadata-response
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-firewall-policy :shape-name
                                       "DescribeFirewallPolicy" :input
                                       describe-firewall-policy-request :output
                                       describe-firewall-policy-response
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-flow-operation :shape-name
                                       "DescribeFlowOperation" :input
                                       describe-flow-operation-request :output
                                       describe-flow-operation-response :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-logging-configuration
                                       :shape-name
                                       "DescribeLoggingConfiguration" :input
                                       describe-logging-configuration-request
                                       :output
                                       describe-logging-configuration-response
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-resource-policy :shape-name
                                       "DescribeResourcePolicy" :input
                                       describe-resource-policy-request :output
                                       describe-resource-policy-response
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-rule-group :shape-name
                                       "DescribeRuleGroup" :input
                                       describe-rule-group-request :output
                                       describe-rule-group-response :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-rule-group-metadata :shape-name
                                       "DescribeRuleGroupMetadata" :input
                                       describe-rule-group-metadata-request
                                       :output
                                       describe-rule-group-metadata-response
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-rule-group-summary :shape-name
                                       "DescribeRuleGroupSummary" :input
                                       describe-rule-group-summary-request
                                       :output
                                       describe-rule-group-summary-response
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-tlsinspection-configuration
                                       :shape-name
                                       "DescribeTLSInspectionConfiguration"
                                       :input
                                       describe-tlsinspection-configuration-request
                                       :output
                                       describe-tlsinspection-configuration-response
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation describe-vpc-endpoint-association
                                       :shape-name
                                       "DescribeVpcEndpointAssociation" :input
                                       describe-vpc-endpoint-association-request
                                       :output
                                       describe-vpc-endpoint-association-response
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation disassociate-availability-zones
                                       :shape-name
                                       "DisassociateAvailabilityZones" :input
                                       disassociate-availability-zones-request
                                       :output
                                       disassociate-availability-zones-response
                                       :errors
                                       (internal-server-error
                                        invalid-operation-exception
                                        invalid-request-exception
                                        invalid-token-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation disassociate-subnets :shape-name
                                       "DisassociateSubnets" :input
                                       disassociate-subnets-request :output
                                       disassociate-subnets-response :errors
                                       (internal-server-error
                                        invalid-operation-exception
                                        invalid-request-exception
                                        invalid-token-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation get-analysis-report-results :shape-name
                                       "GetAnalysisReportResults" :input
                                       get-analysis-report-results-request
                                       :output
                                       get-analysis-report-results-response
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-analysis-reports :shape-name
                                       "ListAnalysisReports" :input
                                       list-analysis-reports-request :output
                                       list-analysis-reports-response :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-firewall-policies :shape-name
                                       "ListFirewallPolicies" :input
                                       list-firewall-policies-request :output
                                       list-firewall-policies-response :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-firewalls :shape-name
                                       "ListFirewalls" :input
                                       list-firewalls-request :output
                                       list-firewalls-response :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-flow-operation-results :shape-name
                                       "ListFlowOperationResults" :input
                                       list-flow-operation-results-request
                                       :output
                                       list-flow-operation-results-response
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-flow-operations :shape-name
                                       "ListFlowOperations" :input
                                       list-flow-operations-request :output
                                       list-flow-operations-response :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-rule-groups :shape-name
                                       "ListRuleGroups" :input
                                       list-rule-groups-request :output
                                       list-rule-groups-response :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-tlsinspection-configurations
                                       :shape-name
                                       "ListTLSInspectionConfigurations" :input
                                       list-tlsinspection-configurations-request
                                       :output
                                       list-tlsinspection-configurations-response
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation list-vpc-endpoint-associations
                                       :shape-name
                                       "ListVpcEndpointAssociations" :input
                                       list-vpc-endpoint-associations-request
                                       :output
                                       list-vpc-endpoint-associations-response
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-request :output
                                       put-resource-policy-response :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        invalid-resource-policy-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation
 reject-network-firewall-transit-gateway-attachment :shape-name
 "RejectNetworkFirewallTransitGatewayAttachment" :input
 reject-network-firewall-transit-gateway-attachment-request :output
 reject-network-firewall-transit-gateway-attachment-response :errors
 (internal-server-error invalid-request-exception resource-not-found-exception
  throttling-exception))

(smithy/sdk/operation:define-operation start-analysis-report :shape-name
                                       "StartAnalysisReport" :input
                                       start-analysis-report-request :output
                                       start-analysis-report-response :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation start-flow-capture :shape-name
                                       "StartFlowCapture" :input
                                       start-flow-capture-request :output
                                       start-flow-capture-response :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation start-flow-flush :shape-name
                                       "StartFlowFlush" :input
                                       start-flow-flush-request :output
                                       start-flow-flush-response :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation
 update-availability-zone-change-protection :shape-name
 "UpdateAvailabilityZoneChangeProtection" :input
 update-availability-zone-change-protection-request :output
 update-availability-zone-change-protection-response :errors
 (internal-server-error invalid-request-exception invalid-token-exception
  resource-not-found-exception resource-owner-check-exception
  throttling-exception))

(smithy/sdk/operation:define-operation update-firewall-analysis-settings
                                       :shape-name
                                       "UpdateFirewallAnalysisSettings" :input
                                       update-firewall-analysis-settings-request
                                       :output
                                       update-firewall-analysis-settings-response
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-firewall-delete-protection
                                       :shape-name
                                       "UpdateFirewallDeleteProtection" :input
                                       update-firewall-delete-protection-request
                                       :output
                                       update-firewall-delete-protection-response
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        invalid-token-exception
                                        resource-not-found-exception
                                        resource-owner-check-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-firewall-description :shape-name
                                       "UpdateFirewallDescription" :input
                                       update-firewall-description-request
                                       :output
                                       update-firewall-description-response
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        invalid-token-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-firewall-encryption-configuration
                                       :shape-name
                                       "UpdateFirewallEncryptionConfiguration"
                                       :input
                                       update-firewall-encryption-configuration-request
                                       :output
                                       update-firewall-encryption-configuration-response
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        invalid-token-exception
                                        resource-not-found-exception
                                        resource-owner-check-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-firewall-policy :shape-name
                                       "UpdateFirewallPolicy" :input
                                       update-firewall-policy-request :output
                                       update-firewall-policy-response :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        invalid-token-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-firewall-policy-change-protection
                                       :shape-name
                                       "UpdateFirewallPolicyChangeProtection"
                                       :input
                                       update-firewall-policy-change-protection-request
                                       :output
                                       update-firewall-policy-change-protection-response
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        invalid-token-exception
                                        resource-not-found-exception
                                        resource-owner-check-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-logging-configuration :shape-name
                                       "UpdateLoggingConfiguration" :input
                                       update-logging-configuration-request
                                       :output
                                       update-logging-configuration-response
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        invalid-token-exception
                                        log-destination-permission-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-rule-group :shape-name
                                       "UpdateRuleGroup" :input
                                       update-rule-group-request :output
                                       update-rule-group-response :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        invalid-token-exception
                                        resource-not-found-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-subnet-change-protection
                                       :shape-name
                                       "UpdateSubnetChangeProtection" :input
                                       update-subnet-change-protection-request
                                       :output
                                       update-subnet-change-protection-response
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        invalid-token-exception
                                        resource-not-found-exception
                                        resource-owner-check-exception
                                        throttling-exception))

(smithy/sdk/operation:define-operation update-tlsinspection-configuration
                                       :shape-name
                                       "UpdateTLSInspectionConfiguration"
                                       :input
                                       update-tlsinspection-configuration-request
                                       :output
                                       update-tlsinspection-configuration-response
                                       :errors
                                       (internal-server-error
                                        invalid-request-exception
                                        invalid-token-exception
                                        resource-not-found-exception
                                        throttling-exception))
