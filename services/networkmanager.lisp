(uiop/package:define-package #:pira/networkmanager (:use)
                             (:export #:awsaccount-id #:awslocation
                              #:accept-attachment #:account-id #:account-status
                              #:account-status-list #:action
                              #:associate-connect-peer
                              #:associate-customer-gateway #:associate-link
                              #:associate-transit-gateway-connect-peer
                              #:attachment #:attachment-error
                              #:attachment-error-code #:attachment-error-list
                              #:attachment-id #:attachment-list
                              #:attachment-state #:attachment-type #:bandwidth
                              #:bgp-options #:boolean #:change-action
                              #:change-set-state #:change-status #:change-type
                              #:client-token #:connect-attachment
                              #:connect-attachment-options #:connect-peer
                              #:connect-peer-association
                              #:connect-peer-association-list
                              #:connect-peer-association-state
                              #:connect-peer-bgp-configuration
                              #:connect-peer-bgp-configuration-list
                              #:connect-peer-configuration #:connect-peer-error
                              #:connect-peer-error-code
                              #:connect-peer-error-list #:connect-peer-id
                              #:connect-peer-id-list #:connect-peer-state
                              #:connect-peer-summary
                              #:connect-peer-summary-list #:connection
                              #:connection-arn #:connection-health
                              #:connection-id #:connection-id-list
                              #:connection-list #:connection-state
                              #:connection-status #:connection-type
                              #:constrained-string #:constrained-string-list
                              #:core-network #:core-network-arn
                              #:core-network-change #:core-network-change-event
                              #:core-network-change-event-list
                              #:core-network-change-event-values
                              #:core-network-change-list
                              #:core-network-change-values #:core-network-edge
                              #:core-network-edge-list #:core-network-id
                              #:core-network-network-function-group
                              #:core-network-network-function-group-identifier
                              #:core-network-network-function-group-list
                              #:core-network-policy #:core-network-policy-alias
                              #:core-network-policy-document
                              #:core-network-policy-error
                              #:core-network-policy-error-list
                              #:core-network-policy-version
                              #:core-network-policy-version-list
                              #:core-network-segment
                              #:core-network-segment-edge-identifier
                              #:core-network-segment-list #:core-network-state
                              #:core-network-summary
                              #:core-network-summary-list
                              #:create-connect-attachment #:create-connect-peer
                              #:create-connection #:create-core-network
                              #:create-device
                              #:create-direct-connect-gateway-attachment
                              #:create-global-network #:create-link
                              #:create-site
                              #:create-site-to-site-vpn-attachment
                              #:create-transit-gateway-peering
                              #:create-transit-gateway-route-table-attachment
                              #:create-vpc-attachment #:customer-gateway-arn
                              #:customer-gateway-arn-list
                              #:customer-gateway-association
                              #:customer-gateway-association-list
                              #:customer-gateway-association-state #:date-time
                              #:delete-attachment #:delete-connect-peer
                              #:delete-connection #:delete-core-network
                              #:delete-core-network-policy-version
                              #:delete-device #:delete-global-network
                              #:delete-link #:delete-peering
                              #:delete-resource-policy #:delete-site
                              #:deregister-transit-gateway
                              #:describe-global-networks #:device #:device-arn
                              #:device-id #:device-id-list #:device-list
                              #:device-state #:direct-connect-gateway-arn
                              #:direct-connect-gateway-attachment
                              #:disassociate-connect-peer
                              #:disassociate-customer-gateway
                              #:disassociate-link
                              #:disassociate-transit-gateway-connect-peer
                              #:edge-override #:edge-set #:edge-set-list
                              #:exception-context-key #:exception-context-map
                              #:exception-context-value
                              #:execute-core-network-change-set
                              #:external-region-code
                              #:external-region-code-list #:filter-map
                              #:filter-name #:filter-value #:filter-values
                              #:get-connect-attachment #:get-connect-peer
                              #:get-connect-peer-associations #:get-connections
                              #:get-core-network
                              #:get-core-network-change-events
                              #:get-core-network-change-set
                              #:get-core-network-policy
                              #:get-customer-gateway-associations #:get-devices
                              #:get-direct-connect-gateway-attachment
                              #:get-link-associations #:get-links
                              #:get-network-resource-counts
                              #:get-network-resource-relationships
                              #:get-network-resources #:get-network-routes
                              #:get-network-telemetry #:get-resource-policy
                              #:get-route-analysis
                              #:get-site-to-site-vpn-attachment #:get-sites
                              #:get-transit-gateway-connect-peer-associations
                              #:get-transit-gateway-peering
                              #:get-transit-gateway-registrations
                              #:get-transit-gateway-route-table-attachment
                              #:get-vpc-attachment #:global-network
                              #:global-network-arn #:global-network-id
                              #:global-network-id-list #:global-network-list
                              #:global-network-state #:ipaddress #:integer
                              #:link #:link-arn #:link-association
                              #:link-association-list #:link-association-state
                              #:link-id #:link-id-list #:link-list #:link-state
                              #:list-attachments #:list-connect-peers
                              #:list-core-network-policy-versions
                              #:list-core-networks
                              #:list-organization-service-access-status
                              #:list-peerings #:list-tags-for-resource
                              #:location #:long #:max-results
                              #:network-function-group
                              #:network-function-group-list
                              #:network-function-group-name #:network-manager
                              #:network-resource #:network-resource-count
                              #:network-resource-count-list
                              #:network-resource-list
                              #:network-resource-metadata-map
                              #:network-resource-summary #:network-route
                              #:network-route-destination
                              #:network-route-destination-list
                              #:network-route-list #:network-telemetry
                              #:network-telemetry-list #:next-token
                              #:organization-aws-service-access-status
                              #:organization-id #:organization-status
                              #:path-component #:path-component-list #:peering
                              #:peering-error #:peering-error-code
                              #:peering-error-list #:peering-id #:peering-list
                              #:peering-state #:peering-type
                              #:permissions-error-context
                              #:proposed-network-function-group-change
                              #:proposed-segment-change
                              #:put-core-network-policy #:put-resource-policy
                              #:reason-context-key #:reason-context-map
                              #:reason-context-value #:register-transit-gateway
                              #:reject-attachment #:relationship
                              #:relationship-list #:resource-arn
                              #:restore-core-network-policy-version
                              #:retry-after-seconds #:route-analysis
                              #:route-analysis-completion
                              #:route-analysis-completion-reason-code
                              #:route-analysis-completion-result-code
                              #:route-analysis-endpoint-options
                              #:route-analysis-endpoint-options-specification
                              #:route-analysis-path #:route-analysis-status
                              #:route-state #:route-state-list
                              #:route-table-identifier #:route-table-type
                              #:route-type #:route-type-list
                              #:slrdeployment-status
                              #:segment-action-service-insertion
                              #:send-via-mode #:server-side-string
                              #:service-insertion-action
                              #:service-insertion-action-list
                              #:service-insertion-segments #:site #:site-arn
                              #:site-id #:site-id-list #:site-list #:site-state
                              #:site-to-site-vpn-attachment
                              #:start-organization-service-access-update
                              #:start-route-analysis #:subnet-arn
                              #:subnet-arn-list
                              #:synthesized-json-core-network-policy-document
                              #:synthesized-json-resource-policy-document #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value #:transit-gateway-arn
                              #:transit-gateway-arn-list
                              #:transit-gateway-attachment-arn
                              #:transit-gateway-attachment-id
                              #:transit-gateway-connect-peer-arn
                              #:transit-gateway-connect-peer-arn-list
                              #:transit-gateway-connect-peer-association
                              #:transit-gateway-connect-peer-association-list
                              #:transit-gateway-connect-peer-association-state
                              #:transit-gateway-peering
                              #:transit-gateway-peering-attachment-id
                              #:transit-gateway-registration
                              #:transit-gateway-registration-list
                              #:transit-gateway-registration-state
                              #:transit-gateway-registration-state-reason
                              #:transit-gateway-route-table-arn
                              #:transit-gateway-route-table-attachment
                              #:tunnel-protocol #:untag-resource
                              #:update-connection #:update-core-network
                              #:update-device
                              #:update-direct-connect-gateway-attachment
                              #:update-global-network #:update-link
                              #:update-network-resource-metadata #:update-site
                              #:update-vpc-attachment
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:via #:vpc-arn
                              #:vpc-attachment #:vpc-options
                              #:vpn-connection-arn #:when-sent-to
                              #:when-sent-to-segments-list
                              #:with-edge-overrides-list))
(common-lisp:in-package #:pira/networkmanager)

(smithy/sdk/service:define-service network-manager :shape-name "NetworkManager"
                                   :version "2019-07-05" :title
                                   "AWS Network Manager" :operations
                                   '(accept-attachment associate-connect-peer
                                     associate-customer-gateway associate-link
                                     associate-transit-gateway-connect-peer
                                     create-connect-attachment
                                     create-connection create-connect-peer
                                     create-core-network create-device
                                     create-direct-connect-gateway-attachment
                                     create-global-network create-link
                                     create-site
                                     create-site-to-site-vpn-attachment
                                     create-transit-gateway-peering
                                     create-transit-gateway-route-table-attachment
                                     create-vpc-attachment delete-attachment
                                     delete-connection delete-connect-peer
                                     delete-core-network
                                     delete-core-network-policy-version
                                     delete-device delete-global-network
                                     delete-link delete-peering
                                     delete-resource-policy delete-site
                                     deregister-transit-gateway
                                     describe-global-networks
                                     disassociate-connect-peer
                                     disassociate-customer-gateway
                                     disassociate-link
                                     disassociate-transit-gateway-connect-peer
                                     execute-core-network-change-set
                                     get-connect-attachment get-connections
                                     get-connect-peer
                                     get-connect-peer-associations
                                     get-core-network
                                     get-core-network-change-events
                                     get-core-network-change-set
                                     get-core-network-policy
                                     get-customer-gateway-associations
                                     get-devices
                                     get-direct-connect-gateway-attachment
                                     get-link-associations get-links
                                     get-network-resource-counts
                                     get-network-resource-relationships
                                     get-network-resources get-network-routes
                                     get-network-telemetry get-resource-policy
                                     get-route-analysis get-sites
                                     get-site-to-site-vpn-attachment
                                     get-transit-gateway-connect-peer-associations
                                     get-transit-gateway-peering
                                     get-transit-gateway-registrations
                                     get-transit-gateway-route-table-attachment
                                     get-vpc-attachment list-attachments
                                     list-connect-peers
                                     list-core-network-policy-versions
                                     list-core-networks
                                     list-organization-service-access-status
                                     list-peerings list-tags-for-resource
                                     put-core-network-policy
                                     put-resource-policy
                                     register-transit-gateway reject-attachment
                                     restore-core-network-policy-version
                                     start-organization-service-access-update
                                     start-route-analysis tag-resource
                                     untag-resource update-connection
                                     update-core-network update-device
                                     update-direct-connect-gateway-attachment
                                     update-global-network update-link
                                     update-network-resource-metadata
                                     update-site update-vpc-attachment)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "NetworkManager")
                                      ("arnNamespace" . "networkmanager")
                                      ("cloudFormationName" . "NetworkManager")
                                      ("cloudTrailEventSource"
                                       . "networkmanager.amazonaws.com")
                                      ("endpointPrefix" . "networkmanager"))
                                     ("aws.auth#sigv4"
                                      ("name" . "networkmanager"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type awsaccount-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure awslocation common-lisp:nil
                                    ((zone :target-type constrained-string
                                      :member-name "Zone")
                                     (subnet-arn :target-type subnet-arn
                                      :member-name "SubnetArn"))
                                    (:shape-name "AWSLocation"))

(smithy/sdk/shapes:define-input accept-attachment-request common-lisp:nil
                                ((attachment-id :target-type attachment-id
                                  :required common-lisp:t :member-name
                                  "AttachmentId" :http-label common-lisp:t))
                                (:shape-name "AcceptAttachmentRequest"))

(smithy/sdk/shapes:define-output accept-attachment-response common-lisp:nil
                                 ((attachment :target-type attachment
                                   :member-name "Attachment"))
                                 (:shape-name "AcceptAttachmentResponse"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type server-side-string
                                  :required common-lisp:t :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure account-status common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (slrdeployment-status :target-type
                                      slrdeployment-status :member-name
                                      "SLRDeploymentStatus"))
                                    (:shape-name "AccountStatus"))

(smithy/sdk/shapes:define-list account-status-list :member account-status)

(smithy/sdk/shapes:define-type action smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-connect-peer-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (connect-peer-id :target-type connect-peer-id
                                  :required common-lisp:t :member-name
                                  "ConnectPeerId")
                                 (device-id :target-type device-id :required
                                  common-lisp:t :member-name "DeviceId")
                                 (link-id :target-type link-id :member-name
                                  "LinkId"))
                                (:shape-name "AssociateConnectPeerRequest"))

(smithy/sdk/shapes:define-output associate-connect-peer-response
                                 common-lisp:nil
                                 ((connect-peer-association :target-type
                                   connect-peer-association :member-name
                                   "ConnectPeerAssociation"))
                                 (:shape-name "AssociateConnectPeerResponse"))

(smithy/sdk/shapes:define-input associate-customer-gateway-request
                                common-lisp:nil
                                ((customer-gateway-arn :target-type
                                  customer-gateway-arn :required common-lisp:t
                                  :member-name "CustomerGatewayArn")
                                 (global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (device-id :target-type device-id :required
                                  common-lisp:t :member-name "DeviceId")
                                 (link-id :target-type link-id :member-name
                                  "LinkId"))
                                (:shape-name "AssociateCustomerGatewayRequest"))

(smithy/sdk/shapes:define-output associate-customer-gateway-response
                                 common-lisp:nil
                                 ((customer-gateway-association :target-type
                                   customer-gateway-association :member-name
                                   "CustomerGatewayAssociation"))
                                 (:shape-name
                                  "AssociateCustomerGatewayResponse"))

(smithy/sdk/shapes:define-input associate-link-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (device-id :target-type device-id :required
                                  common-lisp:t :member-name "DeviceId")
                                 (link-id :target-type link-id :required
                                  common-lisp:t :member-name "LinkId"))
                                (:shape-name "AssociateLinkRequest"))

(smithy/sdk/shapes:define-output associate-link-response common-lisp:nil
                                 ((link-association :target-type
                                   link-association :member-name
                                   "LinkAssociation"))
                                 (:shape-name "AssociateLinkResponse"))

(smithy/sdk/shapes:define-input associate-transit-gateway-connect-peer-request
                                common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (transit-gateway-connect-peer-arn :target-type
                                  transit-gateway-connect-peer-arn :required
                                  common-lisp:t :member-name
                                  "TransitGatewayConnectPeerArn")
                                 (device-id :target-type device-id :required
                                  common-lisp:t :member-name "DeviceId")
                                 (link-id :target-type link-id :member-name
                                  "LinkId"))
                                (:shape-name
                                 "AssociateTransitGatewayConnectPeerRequest"))

(smithy/sdk/shapes:define-output
 associate-transit-gateway-connect-peer-response common-lisp:nil
 ((transit-gateway-connect-peer-association :target-type
   transit-gateway-connect-peer-association :member-name
   "TransitGatewayConnectPeerAssociation"))
 (:shape-name "AssociateTransitGatewayConnectPeerResponse"))

(smithy/sdk/shapes:define-structure attachment common-lisp:nil
                                    ((core-network-id :target-type
                                      core-network-id :member-name
                                      "CoreNetworkId")
                                     (core-network-arn :target-type
                                      core-network-arn :member-name
                                      "CoreNetworkArn")
                                     (attachment-id :target-type attachment-id
                                      :member-name "AttachmentId")
                                     (owner-account-id :target-type
                                      awsaccount-id :member-name
                                      "OwnerAccountId")
                                     (attachment-type :target-type
                                      attachment-type :member-name
                                      "AttachmentType")
                                     (state :target-type attachment-state
                                      :member-name "State")
                                     (edge-location :target-type
                                      external-region-code :member-name
                                      "EdgeLocation")
                                     (edge-locations :target-type
                                      external-region-code-list :member-name
                                      "EdgeLocations")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceArn")
                                     (attachment-policy-rule-number
                                      :target-type integer :member-name
                                      "AttachmentPolicyRuleNumber")
                                     (segment-name :target-type
                                      constrained-string :member-name
                                      "SegmentName")
                                     (network-function-group-name :target-type
                                      network-function-group-name :member-name
                                      "NetworkFunctionGroupName")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (proposed-segment-change :target-type
                                      proposed-segment-change :member-name
                                      "ProposedSegmentChange")
                                     (proposed-network-function-group-change
                                      :target-type
                                      proposed-network-function-group-change
                                      :member-name
                                      "ProposedNetworkFunctionGroupChange")
                                     (created-at :target-type date-time
                                      :member-name "CreatedAt")
                                     (updated-at :target-type date-time
                                      :member-name "UpdatedAt")
                                     (last-modification-errors :target-type
                                      attachment-error-list :member-name
                                      "LastModificationErrors"))
                                    (:shape-name "Attachment"))

(smithy/sdk/shapes:define-structure attachment-error common-lisp:nil
                                    ((code :target-type attachment-error-code
                                      :member-name "Code")
                                     (message :target-type server-side-string
                                      :member-name "Message")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceArn")
                                     (request-id :target-type
                                      server-side-string :member-name
                                      "RequestId"))
                                    (:shape-name "AttachmentError"))

(smithy/sdk/shapes:define-enum attachment-error-code
    common-lisp:nil
  (:vpc-not-found "VPC_NOT_FOUND")
  (:subnet-not-found "SUBNET_NOT_FOUND")
  (:subnet-duplicated-in-availability-zone
   "SUBNET_DUPLICATED_IN_AVAILABILITY_ZONE")
  (:subnet-no-free-addresses "SUBNET_NO_FREE_ADDRESSES")
  (:subnet-unsupported-availability-zone "SUBNET_UNSUPPORTED_AVAILABILITY_ZONE")
  (:subnet-no-ipv6-cidrs "SUBNET_NO_IPV6_CIDRS")
  (:vpn-connection-not-found "VPN_CONNECTION_NOT_FOUND")
  (:maximum-no-encap-limit-exceeded "MAXIMUM_NO_ENCAP_LIMIT_EXCEEDED")
  (:direct-connect-gateway-not-found "DIRECT_CONNECT_GATEWAY_NOT_FOUND")
  (:direct-connect-gateway-existing-attachments
   "DIRECT_CONNECT_GATEWAY_EXISTING_ATTACHMENTS")
  (:direct-connect-gateway-no-private-vif
   "DIRECT_CONNECT_GATEWAY_NO_PRIVATE_VIF"))

(smithy/sdk/shapes:define-list attachment-error-list :member attachment-error)

(smithy/sdk/shapes:define-type attachment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list attachment-list :member attachment)

(smithy/sdk/shapes:define-enum attachment-state
    common-lisp:nil
  (:rejected "REJECTED")
  (:pending-attachment-acceptance "PENDING_ATTACHMENT_ACCEPTANCE")
  (:creating "CREATING")
  (:failed "FAILED")
  (:available "AVAILABLE")
  (:updating "UPDATING")
  (:pending-network-update "PENDING_NETWORK_UPDATE")
  (:pending-tag-acceptance "PENDING_TAG_ACCEPTANCE")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-enum attachment-type
    common-lisp:nil
  (:connect "CONNECT")
  (:site-to-site-vpn "SITE_TO_SITE_VPN")
  (:vpc "VPC")
  (:direct-connect-gateway "DIRECT_CONNECT_GATEWAY")
  (:transit-gateway-route-table "TRANSIT_GATEWAY_ROUTE_TABLE"))

(smithy/sdk/shapes:define-structure bandwidth common-lisp:nil
                                    ((upload-speed :target-type integer
                                      :member-name "UploadSpeed")
                                     (download-speed :target-type integer
                                      :member-name "DownloadSpeed"))
                                    (:shape-name "Bandwidth"))

(smithy/sdk/shapes:define-structure bgp-options common-lisp:nil
                                    ((peer-asn :target-type long :member-name
                                      "PeerAsn"))
                                    (:shape-name "BgpOptions"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum change-action
    common-lisp:nil
  (:add "ADD")
  (:modify "MODIFY")
  (:remove "REMOVE"))

(smithy/sdk/shapes:define-enum change-set-state
    common-lisp:nil
  (:pending-generation "PENDING_GENERATION")
  (:failed-generation "FAILED_GENERATION")
  (:ready-to-execute "READY_TO_EXECUTE")
  (:executing "EXECUTING")
  (:execution-succeeded "EXECUTION_SUCCEEDED")
  (:out-of-date "OUT_OF_DATE"))

(smithy/sdk/shapes:define-enum change-status
    common-lisp:nil
  (:not-started "NOT_STARTED")
  (:in-progress "IN_PROGRESS")
  (:complete "COMPLETE")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum change-type
    common-lisp:nil
  (:core-network-segment "CORE_NETWORK_SEGMENT")
  (:network-function-group "NETWORK_FUNCTION_GROUP")
  (:core-network-edge "CORE_NETWORK_EDGE")
  (:attachment-mapping "ATTACHMENT_MAPPING")
  (:attachment-route-propagation "ATTACHMENT_ROUTE_PROPAGATION")
  (:attachment-route-static "ATTACHMENT_ROUTE_STATIC")
  (:core-network-configuration "CORE_NETWORK_CONFIGURATION")
  (:segments-configuration "SEGMENTS_CONFIGURATION")
  (:segment-actions-configuration "SEGMENT_ACTIONS_CONFIGURATION")
  (:attachment-policies-configuration "ATTACHMENT_POLICIES_CONFIGURATION"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type server-side-string
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (resource-id :target-type server-side-string
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (resource-type :target-type server-side-string
                                  :required common-lisp:t :member-name
                                  "ResourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure connect-attachment common-lisp:nil
                                    ((attachment :target-type attachment
                                      :member-name "Attachment")
                                     (transport-attachment-id :target-type
                                      attachment-id :member-name
                                      "TransportAttachmentId")
                                     (options :target-type
                                      connect-attachment-options :member-name
                                      "Options"))
                                    (:shape-name "ConnectAttachment"))

(smithy/sdk/shapes:define-structure connect-attachment-options common-lisp:nil
                                    ((protocol :target-type tunnel-protocol
                                      :member-name "Protocol"))
                                    (:shape-name "ConnectAttachmentOptions"))

(smithy/sdk/shapes:define-structure connect-peer common-lisp:nil
                                    ((core-network-id :target-type
                                      core-network-id :member-name
                                      "CoreNetworkId")
                                     (connect-attachment-id :target-type
                                      attachment-id :member-name
                                      "ConnectAttachmentId")
                                     (connect-peer-id :target-type
                                      connect-peer-id :member-name
                                      "ConnectPeerId")
                                     (edge-location :target-type
                                      external-region-code :member-name
                                      "EdgeLocation")
                                     (state :target-type connect-peer-state
                                      :member-name "State")
                                     (created-at :target-type date-time
                                      :member-name "CreatedAt")
                                     (configuration :target-type
                                      connect-peer-configuration :member-name
                                      "Configuration")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (subnet-arn :target-type subnet-arn
                                      :member-name "SubnetArn")
                                     (last-modification-errors :target-type
                                      connect-peer-error-list :member-name
                                      "LastModificationErrors"))
                                    (:shape-name "ConnectPeer"))

(smithy/sdk/shapes:define-structure connect-peer-association common-lisp:nil
                                    ((connect-peer-id :target-type
                                      connect-peer-id :member-name
                                      "ConnectPeerId")
                                     (global-network-id :target-type
                                      global-network-id :member-name
                                      "GlobalNetworkId")
                                     (device-id :target-type device-id
                                      :member-name "DeviceId")
                                     (link-id :target-type link-id :member-name
                                      "LinkId")
                                     (state :target-type
                                      connect-peer-association-state
                                      :member-name "State"))
                                    (:shape-name "ConnectPeerAssociation"))

(smithy/sdk/shapes:define-list connect-peer-association-list :member
                               connect-peer-association)

(smithy/sdk/shapes:define-enum connect-peer-association-state
    common-lisp:nil
  (:pending "PENDING")
  (:available "AVAILABLE")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-structure connect-peer-bgp-configuration
                                    common-lisp:nil
                                    ((core-network-asn :target-type long
                                      :member-name "CoreNetworkAsn")
                                     (peer-asn :target-type long :member-name
                                      "PeerAsn")
                                     (core-network-address :target-type
                                      ipaddress :member-name
                                      "CoreNetworkAddress")
                                     (peer-address :target-type ipaddress
                                      :member-name "PeerAddress"))
                                    (:shape-name "ConnectPeerBgpConfiguration"))

(smithy/sdk/shapes:define-list connect-peer-bgp-configuration-list :member
                               connect-peer-bgp-configuration)

(smithy/sdk/shapes:define-structure connect-peer-configuration common-lisp:nil
                                    ((core-network-address :target-type
                                      ipaddress :member-name
                                      "CoreNetworkAddress")
                                     (peer-address :target-type ipaddress
                                      :member-name "PeerAddress")
                                     (inside-cidr-blocks :target-type
                                      constrained-string-list :member-name
                                      "InsideCidrBlocks")
                                     (protocol :target-type tunnel-protocol
                                      :member-name "Protocol")
                                     (bgp-configurations :target-type
                                      connect-peer-bgp-configuration-list
                                      :member-name "BgpConfigurations"))
                                    (:shape-name "ConnectPeerConfiguration"))

(smithy/sdk/shapes:define-structure connect-peer-error common-lisp:nil
                                    ((code :target-type connect-peer-error-code
                                      :member-name "Code")
                                     (message :target-type server-side-string
                                      :member-name "Message")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceArn")
                                     (request-id :target-type
                                      server-side-string :member-name
                                      "RequestId"))
                                    (:shape-name "ConnectPeerError"))

(smithy/sdk/shapes:define-enum connect-peer-error-code
    common-lisp:nil
  (:edge-location-no-free-ips "EDGE_LOCATION_NO_FREE_IPS")
  (:edge-location-peer-duplicate "EDGE_LOCATION_PEER_DUPLICATE")
  (:subnet-not-found "SUBNET_NOT_FOUND")
  (:ip-outside-subnet-cidr-range "IP_OUTSIDE_SUBNET_CIDR_RANGE")
  (:invalid-inside-cidr-block "INVALID_INSIDE_CIDR_BLOCK")
  (:no-associated-cidr-block "NO_ASSOCIATED_CIDR_BLOCK"))

(smithy/sdk/shapes:define-list connect-peer-error-list :member
                               connect-peer-error)

(smithy/sdk/shapes:define-type connect-peer-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list connect-peer-id-list :member connect-peer-id)

(smithy/sdk/shapes:define-enum connect-peer-state
    common-lisp:nil
  (:creating "CREATING")
  (:failed "FAILED")
  (:available "AVAILABLE")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-structure connect-peer-summary common-lisp:nil
                                    ((core-network-id :target-type
                                      core-network-id :member-name
                                      "CoreNetworkId")
                                     (connect-attachment-id :target-type
                                      attachment-id :member-name
                                      "ConnectAttachmentId")
                                     (connect-peer-id :target-type
                                      connect-peer-id :member-name
                                      "ConnectPeerId")
                                     (edge-location :target-type
                                      external-region-code :member-name
                                      "EdgeLocation")
                                     (connect-peer-state :target-type
                                      connect-peer-state :member-name
                                      "ConnectPeerState")
                                     (created-at :target-type date-time
                                      :member-name "CreatedAt")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (subnet-arn :target-type subnet-arn
                                      :member-name "SubnetArn"))
                                    (:shape-name "ConnectPeerSummary"))

(smithy/sdk/shapes:define-list connect-peer-summary-list :member
                               connect-peer-summary)

(smithy/sdk/shapes:define-structure connection common-lisp:nil
                                    ((connection-id :target-type connection-id
                                      :member-name "ConnectionId")
                                     (connection-arn :target-type
                                      connection-arn :member-name
                                      "ConnectionArn")
                                     (global-network-id :target-type
                                      global-network-id :member-name
                                      "GlobalNetworkId")
                                     (device-id :target-type device-id
                                      :member-name "DeviceId")
                                     (connected-device-id :target-type
                                      device-id :member-name
                                      "ConnectedDeviceId")
                                     (link-id :target-type link-id :member-name
                                      "LinkId")
                                     (connected-link-id :target-type link-id
                                      :member-name "ConnectedLinkId")
                                     (description :target-type
                                      constrained-string :member-name
                                      "Description")
                                     (created-at :target-type date-time
                                      :member-name "CreatedAt")
                                     (state :target-type connection-state
                                      :member-name "State")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "Connection"))

(smithy/sdk/shapes:define-type connection-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure connection-health common-lisp:nil
                                    ((type :target-type connection-type
                                      :member-name "Type")
                                     (status :target-type connection-status
                                      :member-name "Status")
                                     (timestamp :target-type date-time
                                      :member-name "Timestamp"))
                                    (:shape-name "ConnectionHealth"))

(smithy/sdk/shapes:define-type connection-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list connection-id-list :member connection-id)

(smithy/sdk/shapes:define-list connection-list :member connection)

(smithy/sdk/shapes:define-enum connection-state
    common-lisp:nil
  (:pending "PENDING")
  (:available "AVAILABLE")
  (:deleting "DELETING")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-enum connection-status
    common-lisp:nil
  (:up "UP")
  (:down "DOWN"))

(smithy/sdk/shapes:define-enum connection-type
    common-lisp:nil
  (:bgp "BGP")
  (:ipsec "IPSEC"))

(smithy/sdk/shapes:define-type constrained-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list constrained-string-list :member
                               constrained-string)

(smithy/sdk/shapes:define-structure core-network common-lisp:nil
                                    ((global-network-id :target-type
                                      global-network-id :member-name
                                      "GlobalNetworkId")
                                     (core-network-id :target-type
                                      core-network-id :member-name
                                      "CoreNetworkId")
                                     (core-network-arn :target-type
                                      core-network-arn :member-name
                                      "CoreNetworkArn")
                                     (description :target-type
                                      constrained-string :member-name
                                      "Description")
                                     (created-at :target-type date-time
                                      :member-name "CreatedAt")
                                     (state :target-type core-network-state
                                      :member-name "State")
                                     (segments :target-type
                                      core-network-segment-list :member-name
                                      "Segments")
                                     (network-function-groups :target-type
                                      core-network-network-function-group-list
                                      :member-name "NetworkFunctionGroups")
                                     (edges :target-type core-network-edge-list
                                      :member-name "Edges")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "CoreNetwork"))

(smithy/sdk/shapes:define-type core-network-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure core-network-change common-lisp:nil
                                    ((type :target-type change-type
                                      :member-name "Type")
                                     (action :target-type change-action
                                      :member-name "Action")
                                     (identifier :target-type
                                      constrained-string :member-name
                                      "Identifier")
                                     (previous-values :target-type
                                      core-network-change-values :member-name
                                      "PreviousValues")
                                     (new-values :target-type
                                      core-network-change-values :member-name
                                      "NewValues")
                                     (identifier-path :target-type
                                      constrained-string :member-name
                                      "IdentifierPath"))
                                    (:shape-name "CoreNetworkChange"))

(smithy/sdk/shapes:define-structure core-network-change-event common-lisp:nil
                                    ((type :target-type change-type
                                      :member-name "Type")
                                     (action :target-type change-action
                                      :member-name "Action")
                                     (identifier-path :target-type
                                      constrained-string :member-name
                                      "IdentifierPath")
                                     (event-time :target-type date-time
                                      :member-name "EventTime")
                                     (status :target-type change-status
                                      :member-name "Status")
                                     (values :target-type
                                      core-network-change-event-values
                                      :member-name "Values"))
                                    (:shape-name "CoreNetworkChangeEvent"))

(smithy/sdk/shapes:define-list core-network-change-event-list :member
                               core-network-change-event)

(smithy/sdk/shapes:define-structure core-network-change-event-values
                                    common-lisp:nil
                                    ((edge-location :target-type
                                      external-region-code :member-name
                                      "EdgeLocation")
                                     (segment-name :target-type
                                      constrained-string :member-name
                                      "SegmentName")
                                     (network-function-group-name :target-type
                                      constrained-string :member-name
                                      "NetworkFunctionGroupName")
                                     (attachment-id :target-type attachment-id
                                      :member-name "AttachmentId")
                                     (cidr :target-type constrained-string
                                      :member-name "Cidr"))
                                    (:shape-name
                                     "CoreNetworkChangeEventValues"))

(smithy/sdk/shapes:define-list core-network-change-list :member
                               core-network-change)

(smithy/sdk/shapes:define-structure core-network-change-values common-lisp:nil
                                    ((segment-name :target-type
                                      constrained-string :member-name
                                      "SegmentName")
                                     (network-function-group-name :target-type
                                      constrained-string :member-name
                                      "NetworkFunctionGroupName")
                                     (edge-locations :target-type
                                      external-region-code-list :member-name
                                      "EdgeLocations")
                                     (asn :target-type long :member-name "Asn")
                                     (cidr :target-type constrained-string
                                      :member-name "Cidr")
                                     (destination-identifier :target-type
                                      constrained-string :member-name
                                      "DestinationIdentifier")
                                     (inside-cidr-blocks :target-type
                                      constrained-string-list :member-name
                                      "InsideCidrBlocks")
                                     (shared-segments :target-type
                                      constrained-string-list :member-name
                                      "SharedSegments")
                                     (service-insertion-actions :target-type
                                      service-insertion-action-list
                                      :member-name "ServiceInsertionActions")
                                     (vpn-ecmp-support :target-type boolean
                                      :member-name "VpnEcmpSupport")
                                     (dns-support :target-type boolean
                                      :member-name "DnsSupport")
                                     (security-group-referencing-support
                                      :target-type boolean :member-name
                                      "SecurityGroupReferencingSupport"))
                                    (:shape-name "CoreNetworkChangeValues"))

(smithy/sdk/shapes:define-structure core-network-edge common-lisp:nil
                                    ((edge-location :target-type
                                      external-region-code :member-name
                                      "EdgeLocation")
                                     (asn :target-type long :member-name "Asn")
                                     (inside-cidr-blocks :target-type
                                      constrained-string-list :member-name
                                      "InsideCidrBlocks"))
                                    (:shape-name "CoreNetworkEdge"))

(smithy/sdk/shapes:define-list core-network-edge-list :member core-network-edge)

(smithy/sdk/shapes:define-type core-network-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure core-network-network-function-group
                                    common-lisp:nil
                                    ((name :target-type constrained-string
                                      :member-name "Name")
                                     (edge-locations :target-type
                                      external-region-code-list :member-name
                                      "EdgeLocations")
                                     (segments :target-type
                                      service-insertion-segments :member-name
                                      "Segments"))
                                    (:shape-name
                                     "CoreNetworkNetworkFunctionGroup"))

(smithy/sdk/shapes:define-structure
 core-network-network-function-group-identifier common-lisp:nil
 ((core-network-id :target-type core-network-id :member-name "CoreNetworkId")
  (network-function-group-name :target-type constrained-string :member-name
   "NetworkFunctionGroupName")
  (edge-location :target-type external-region-code :member-name
   "EdgeLocation"))
 (:shape-name "CoreNetworkNetworkFunctionGroupIdentifier"))

(smithy/sdk/shapes:define-list core-network-network-function-group-list :member
                               core-network-network-function-group)

(smithy/sdk/shapes:define-structure core-network-policy common-lisp:nil
                                    ((core-network-id :target-type
                                      core-network-id :member-name
                                      "CoreNetworkId")
                                     (policy-version-id :target-type integer
                                      :member-name "PolicyVersionId")
                                     (alias :target-type
                                      core-network-policy-alias :member-name
                                      "Alias")
                                     (description :target-type
                                      constrained-string :member-name
                                      "Description")
                                     (created-at :target-type date-time
                                      :member-name "CreatedAt")
                                     (change-set-state :target-type
                                      change-set-state :member-name
                                      "ChangeSetState")
                                     (policy-errors :target-type
                                      core-network-policy-error-list
                                      :member-name "PolicyErrors")
                                     (policy-document :target-type
                                      synthesized-json-core-network-policy-document
                                      :member-name "PolicyDocument"))
                                    (:shape-name "CoreNetworkPolicy"))

(smithy/sdk/shapes:define-enum core-network-policy-alias
    common-lisp:nil
  (:live "LIVE")
  (:latest "LATEST"))

(smithy/sdk/shapes:define-type core-network-policy-document
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure core-network-policy-error common-lisp:nil
                                    ((error-code :target-type
                                      server-side-string :required
                                      common-lisp:t :member-name "ErrorCode")
                                     (message :target-type server-side-string
                                      :required common-lisp:t :member-name
                                      "Message")
                                     (path :target-type server-side-string
                                      :member-name "Path"))
                                    (:shape-name "CoreNetworkPolicyError"))

(smithy/sdk/shapes:define-list core-network-policy-error-list :member
                               core-network-policy-error)

(smithy/sdk/shapes:define-error core-network-policy-exception common-lisp:nil
                                ((message :target-type server-side-string
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (errors :target-type
                                  core-network-policy-error-list :member-name
                                  "Errors"))
                                (:shape-name "CoreNetworkPolicyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure core-network-policy-version common-lisp:nil
                                    ((core-network-id :target-type
                                      core-network-id :member-name
                                      "CoreNetworkId")
                                     (policy-version-id :target-type integer
                                      :member-name "PolicyVersionId")
                                     (alias :target-type
                                      core-network-policy-alias :member-name
                                      "Alias")
                                     (description :target-type
                                      constrained-string :member-name
                                      "Description")
                                     (created-at :target-type date-time
                                      :member-name "CreatedAt")
                                     (change-set-state :target-type
                                      change-set-state :member-name
                                      "ChangeSetState"))
                                    (:shape-name "CoreNetworkPolicyVersion"))

(smithy/sdk/shapes:define-list core-network-policy-version-list :member
                               core-network-policy-version)

(smithy/sdk/shapes:define-structure core-network-segment common-lisp:nil
                                    ((name :target-type constrained-string
                                      :member-name "Name")
                                     (edge-locations :target-type
                                      external-region-code-list :member-name
                                      "EdgeLocations")
                                     (shared-segments :target-type
                                      constrained-string-list :member-name
                                      "SharedSegments"))
                                    (:shape-name "CoreNetworkSegment"))

(smithy/sdk/shapes:define-structure core-network-segment-edge-identifier
                                    common-lisp:nil
                                    ((core-network-id :target-type
                                      core-network-id :member-name
                                      "CoreNetworkId")
                                     (segment-name :target-type
                                      constrained-string :member-name
                                      "SegmentName")
                                     (edge-location :target-type
                                      external-region-code :member-name
                                      "EdgeLocation"))
                                    (:shape-name
                                     "CoreNetworkSegmentEdgeIdentifier"))

(smithy/sdk/shapes:define-list core-network-segment-list :member
                               core-network-segment)

(smithy/sdk/shapes:define-enum core-network-state
    common-lisp:nil
  (:creating "CREATING")
  (:updating "UPDATING")
  (:available "AVAILABLE")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-structure core-network-summary common-lisp:nil
                                    ((core-network-id :target-type
                                      core-network-id :member-name
                                      "CoreNetworkId")
                                     (core-network-arn :target-type
                                      core-network-arn :member-name
                                      "CoreNetworkArn")
                                     (global-network-id :target-type
                                      global-network-id :member-name
                                      "GlobalNetworkId")
                                     (owner-account-id :target-type
                                      awsaccount-id :member-name
                                      "OwnerAccountId")
                                     (state :target-type core-network-state
                                      :member-name "State")
                                     (description :target-type
                                      constrained-string :member-name
                                      "Description")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "CoreNetworkSummary"))

(smithy/sdk/shapes:define-list core-network-summary-list :member
                               core-network-summary)

(smithy/sdk/shapes:define-input create-connect-attachment-request
                                common-lisp:nil
                                ((core-network-id :target-type core-network-id
                                  :required common-lisp:t :member-name
                                  "CoreNetworkId")
                                 (edge-location :target-type
                                  external-region-code :required common-lisp:t
                                  :member-name "EdgeLocation")
                                 (transport-attachment-id :target-type
                                  attachment-id :required common-lisp:t
                                  :member-name "TransportAttachmentId")
                                 (options :target-type
                                  connect-attachment-options :required
                                  common-lisp:t :member-name "Options")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "CreateConnectAttachmentRequest"))

(smithy/sdk/shapes:define-output create-connect-attachment-response
                                 common-lisp:nil
                                 ((connect-attachment :target-type
                                   connect-attachment :member-name
                                   "ConnectAttachment"))
                                 (:shape-name
                                  "CreateConnectAttachmentResponse"))

(smithy/sdk/shapes:define-input create-connect-peer-request common-lisp:nil
                                ((connect-attachment-id :target-type
                                  attachment-id :required common-lisp:t
                                  :member-name "ConnectAttachmentId")
                                 (core-network-address :target-type ipaddress
                                  :member-name "CoreNetworkAddress")
                                 (peer-address :target-type ipaddress :required
                                  common-lisp:t :member-name "PeerAddress")
                                 (bgp-options :target-type bgp-options
                                  :member-name "BgpOptions")
                                 (inside-cidr-blocks :target-type
                                  constrained-string-list :member-name
                                  "InsideCidrBlocks")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (subnet-arn :target-type subnet-arn
                                  :member-name "SubnetArn"))
                                (:shape-name "CreateConnectPeerRequest"))

(smithy/sdk/shapes:define-output create-connect-peer-response common-lisp:nil
                                 ((connect-peer :target-type connect-peer
                                   :member-name "ConnectPeer"))
                                 (:shape-name "CreateConnectPeerResponse"))

(smithy/sdk/shapes:define-input create-connection-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (device-id :target-type device-id :required
                                  common-lisp:t :member-name "DeviceId")
                                 (connected-device-id :target-type device-id
                                  :required common-lisp:t :member-name
                                  "ConnectedDeviceId")
                                 (link-id :target-type link-id :member-name
                                  "LinkId")
                                 (connected-link-id :target-type link-id
                                  :member-name "ConnectedLinkId")
                                 (description :target-type constrained-string
                                  :member-name "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateConnectionRequest"))

(smithy/sdk/shapes:define-output create-connection-response common-lisp:nil
                                 ((connection :target-type connection
                                   :member-name "Connection"))
                                 (:shape-name "CreateConnectionResponse"))

(smithy/sdk/shapes:define-input create-core-network-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId")
                                 (description :target-type constrained-string
                                  :member-name "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (policy-document :target-type
                                  core-network-policy-document :member-name
                                  "PolicyDocument")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "CreateCoreNetworkRequest"))

(smithy/sdk/shapes:define-output create-core-network-response common-lisp:nil
                                 ((core-network :target-type core-network
                                   :member-name "CoreNetwork"))
                                 (:shape-name "CreateCoreNetworkResponse"))

(smithy/sdk/shapes:define-input create-device-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (awslocation :target-type awslocation
                                  :member-name "AWSLocation")
                                 (description :target-type constrained-string
                                  :member-name "Description")
                                 (type :target-type constrained-string
                                  :member-name "Type")
                                 (vendor :target-type constrained-string
                                  :member-name "Vendor")
                                 (model :target-type constrained-string
                                  :member-name "Model")
                                 (serial-number :target-type constrained-string
                                  :member-name "SerialNumber")
                                 (location :target-type location :member-name
                                  "Location")
                                 (site-id :target-type site-id :member-name
                                  "SiteId")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateDeviceRequest"))

(smithy/sdk/shapes:define-output create-device-response common-lisp:nil
                                 ((device :target-type device :member-name
                                   "Device"))
                                 (:shape-name "CreateDeviceResponse"))

(smithy/sdk/shapes:define-input
 create-direct-connect-gateway-attachment-request common-lisp:nil
 ((core-network-id :target-type core-network-id :required common-lisp:t
   :member-name "CoreNetworkId")
  (direct-connect-gateway-arn :target-type direct-connect-gateway-arn :required
   common-lisp:t :member-name "DirectConnectGatewayArn")
  (edge-locations :target-type external-region-code-list :required
   common-lisp:t :member-name "EdgeLocations")
  (tags :target-type tag-list :member-name "Tags")
  (client-token :target-type client-token :member-name "ClientToken"))
 (:shape-name "CreateDirectConnectGatewayAttachmentRequest"))

(smithy/sdk/shapes:define-output
 create-direct-connect-gateway-attachment-response common-lisp:nil
 ((direct-connect-gateway-attachment :target-type
   direct-connect-gateway-attachment :member-name
   "DirectConnectGatewayAttachment"))
 (:shape-name "CreateDirectConnectGatewayAttachmentResponse"))

(smithy/sdk/shapes:define-input create-global-network-request common-lisp:nil
                                ((description :target-type constrained-string
                                  :member-name "Description")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateGlobalNetworkRequest"))

(smithy/sdk/shapes:define-output create-global-network-response common-lisp:nil
                                 ((global-network :target-type global-network
                                   :member-name "GlobalNetwork"))
                                 (:shape-name "CreateGlobalNetworkResponse"))

(smithy/sdk/shapes:define-input create-link-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (description :target-type constrained-string
                                  :member-name "Description")
                                 (type :target-type constrained-string
                                  :member-name "Type")
                                 (bandwidth :target-type bandwidth :required
                                  common-lisp:t :member-name "Bandwidth")
                                 (provider :target-type constrained-string
                                  :member-name "Provider")
                                 (site-id :target-type site-id :required
                                  common-lisp:t :member-name "SiteId")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateLinkRequest"))

(smithy/sdk/shapes:define-output create-link-response common-lisp:nil
                                 ((link :target-type link :member-name "Link"))
                                 (:shape-name "CreateLinkResponse"))

(smithy/sdk/shapes:define-input create-site-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (description :target-type constrained-string
                                  :member-name "Description")
                                 (location :target-type location :member-name
                                  "Location")
                                 (tags :target-type tag-list :member-name
                                  "Tags"))
                                (:shape-name "CreateSiteRequest"))

(smithy/sdk/shapes:define-output create-site-response common-lisp:nil
                                 ((site :target-type site :member-name "Site"))
                                 (:shape-name "CreateSiteResponse"))

(smithy/sdk/shapes:define-input create-site-to-site-vpn-attachment-request
                                common-lisp:nil
                                ((core-network-id :target-type core-network-id
                                  :required common-lisp:t :member-name
                                  "CoreNetworkId")
                                 (vpn-connection-arn :target-type
                                  vpn-connection-arn :required common-lisp:t
                                  :member-name "VpnConnectionArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name
                                 "CreateSiteToSiteVpnAttachmentRequest"))

(smithy/sdk/shapes:define-output create-site-to-site-vpn-attachment-response
                                 common-lisp:nil
                                 ((site-to-site-vpn-attachment :target-type
                                   site-to-site-vpn-attachment :member-name
                                   "SiteToSiteVpnAttachment"))
                                 (:shape-name
                                  "CreateSiteToSiteVpnAttachmentResponse"))

(smithy/sdk/shapes:define-input create-transit-gateway-peering-request
                                common-lisp:nil
                                ((core-network-id :target-type core-network-id
                                  :required common-lisp:t :member-name
                                  "CoreNetworkId")
                                 (transit-gateway-arn :target-type
                                  transit-gateway-arn :required common-lisp:t
                                  :member-name "TransitGatewayArn")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name
                                 "CreateTransitGatewayPeeringRequest"))

(smithy/sdk/shapes:define-output create-transit-gateway-peering-response
                                 common-lisp:nil
                                 ((transit-gateway-peering :target-type
                                   transit-gateway-peering :member-name
                                   "TransitGatewayPeering"))
                                 (:shape-name
                                  "CreateTransitGatewayPeeringResponse"))

(smithy/sdk/shapes:define-input
 create-transit-gateway-route-table-attachment-request common-lisp:nil
 ((peering-id :target-type peering-id :required common-lisp:t :member-name
   "PeeringId")
  (transit-gateway-route-table-arn :target-type transit-gateway-route-table-arn
   :required common-lisp:t :member-name "TransitGatewayRouteTableArn")
  (tags :target-type tag-list :member-name "Tags")
  (client-token :target-type client-token :member-name "ClientToken"))
 (:shape-name "CreateTransitGatewayRouteTableAttachmentRequest"))

(smithy/sdk/shapes:define-output
 create-transit-gateway-route-table-attachment-response common-lisp:nil
 ((transit-gateway-route-table-attachment :target-type
   transit-gateway-route-table-attachment :member-name
   "TransitGatewayRouteTableAttachment"))
 (:shape-name "CreateTransitGatewayRouteTableAttachmentResponse"))

(smithy/sdk/shapes:define-input create-vpc-attachment-request common-lisp:nil
                                ((core-network-id :target-type core-network-id
                                  :required common-lisp:t :member-name
                                  "CoreNetworkId")
                                 (vpc-arn :target-type vpc-arn :required
                                  common-lisp:t :member-name "VpcArn")
                                 (subnet-arns :target-type subnet-arn-list
                                  :required common-lisp:t :member-name
                                  "SubnetArns")
                                 (options :target-type vpc-options :member-name
                                  "Options")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "CreateVpcAttachmentRequest"))

(smithy/sdk/shapes:define-output create-vpc-attachment-response common-lisp:nil
                                 ((vpc-attachment :target-type vpc-attachment
                                   :member-name "VpcAttachment"))
                                 (:shape-name "CreateVpcAttachmentResponse"))

(smithy/sdk/shapes:define-type customer-gateway-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list customer-gateway-arn-list :member
                               customer-gateway-arn)

(smithy/sdk/shapes:define-structure customer-gateway-association
                                    common-lisp:nil
                                    ((customer-gateway-arn :target-type
                                      customer-gateway-arn :member-name
                                      "CustomerGatewayArn")
                                     (global-network-id :target-type
                                      global-network-id :member-name
                                      "GlobalNetworkId")
                                     (device-id :target-type device-id
                                      :member-name "DeviceId")
                                     (link-id :target-type link-id :member-name
                                      "LinkId")
                                     (state :target-type
                                      customer-gateway-association-state
                                      :member-name "State"))
                                    (:shape-name "CustomerGatewayAssociation"))

(smithy/sdk/shapes:define-list customer-gateway-association-list :member
                               customer-gateway-association)

(smithy/sdk/shapes:define-enum customer-gateway-association-state
    common-lisp:nil
  (:pending "PENDING")
  (:available "AVAILABLE")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-attachment-request common-lisp:nil
                                ((attachment-id :target-type attachment-id
                                  :required common-lisp:t :member-name
                                  "AttachmentId" :http-label common-lisp:t))
                                (:shape-name "DeleteAttachmentRequest"))

(smithy/sdk/shapes:define-output delete-attachment-response common-lisp:nil
                                 ((attachment :target-type attachment
                                   :member-name "Attachment"))
                                 (:shape-name "DeleteAttachmentResponse"))

(smithy/sdk/shapes:define-input delete-connect-peer-request common-lisp:nil
                                ((connect-peer-id :target-type connect-peer-id
                                  :required common-lisp:t :member-name
                                  "ConnectPeerId" :http-label common-lisp:t))
                                (:shape-name "DeleteConnectPeerRequest"))

(smithy/sdk/shapes:define-output delete-connect-peer-response common-lisp:nil
                                 ((connect-peer :target-type connect-peer
                                   :member-name "ConnectPeer"))
                                 (:shape-name "DeleteConnectPeerResponse"))

(smithy/sdk/shapes:define-input delete-connection-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "ConnectionId" :http-label common-lisp:t))
                                (:shape-name "DeleteConnectionRequest"))

(smithy/sdk/shapes:define-output delete-connection-response common-lisp:nil
                                 ((connection :target-type connection
                                   :member-name "Connection"))
                                 (:shape-name "DeleteConnectionResponse"))

(smithy/sdk/shapes:define-input delete-core-network-policy-version-request
                                common-lisp:nil
                                ((core-network-id :target-type core-network-id
                                  :required common-lisp:t :member-name
                                  "CoreNetworkId" :http-label common-lisp:t)
                                 (policy-version-id :target-type integer
                                  :required common-lisp:t :member-name
                                  "PolicyVersionId" :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteCoreNetworkPolicyVersionRequest"))

(smithy/sdk/shapes:define-output delete-core-network-policy-version-response
                                 common-lisp:nil
                                 ((core-network-policy :target-type
                                   core-network-policy :member-name
                                   "CoreNetworkPolicy"))
                                 (:shape-name
                                  "DeleteCoreNetworkPolicyVersionResponse"))

(smithy/sdk/shapes:define-input delete-core-network-request common-lisp:nil
                                ((core-network-id :target-type core-network-id
                                  :required common-lisp:t :member-name
                                  "CoreNetworkId" :http-label common-lisp:t))
                                (:shape-name "DeleteCoreNetworkRequest"))

(smithy/sdk/shapes:define-output delete-core-network-response common-lisp:nil
                                 ((core-network :target-type core-network
                                   :member-name "CoreNetwork"))
                                 (:shape-name "DeleteCoreNetworkResponse"))

(smithy/sdk/shapes:define-input delete-device-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (device-id :target-type device-id :required
                                  common-lisp:t :member-name "DeviceId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteDeviceRequest"))

(smithy/sdk/shapes:define-output delete-device-response common-lisp:nil
                                 ((device :target-type device :member-name
                                   "Device"))
                                 (:shape-name "DeleteDeviceResponse"))

(smithy/sdk/shapes:define-input delete-global-network-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteGlobalNetworkRequest"))

(smithy/sdk/shapes:define-output delete-global-network-response common-lisp:nil
                                 ((global-network :target-type global-network
                                   :member-name "GlobalNetwork"))
                                 (:shape-name "DeleteGlobalNetworkResponse"))

(smithy/sdk/shapes:define-input delete-link-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (link-id :target-type link-id :required
                                  common-lisp:t :member-name "LinkId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteLinkRequest"))

(smithy/sdk/shapes:define-output delete-link-response common-lisp:nil
                                 ((link :target-type link :member-name "Link"))
                                 (:shape-name "DeleteLinkResponse"))

(smithy/sdk/shapes:define-input delete-peering-request common-lisp:nil
                                ((peering-id :target-type peering-id :required
                                  common-lisp:t :member-name "PeeringId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeletePeeringRequest"))

(smithy/sdk/shapes:define-output delete-peering-response common-lisp:nil
                                 ((peering :target-type peering :member-name
                                   "Peering"))
                                 (:shape-name "DeletePeeringResponse"))

(smithy/sdk/shapes:define-input delete-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t))
                                (:shape-name "DeleteResourcePolicyRequest"))

(smithy/sdk/shapes:define-output delete-resource-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteResourcePolicyResponse"))

(smithy/sdk/shapes:define-input delete-site-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (site-id :target-type site-id :required
                                  common-lisp:t :member-name "SiteId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteSiteRequest"))

(smithy/sdk/shapes:define-output delete-site-response common-lisp:nil
                                 ((site :target-type site :member-name "Site"))
                                 (:shape-name "DeleteSiteResponse"))

(smithy/sdk/shapes:define-input deregister-transit-gateway-request
                                common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (transit-gateway-arn :target-type
                                  transit-gateway-arn :required common-lisp:t
                                  :member-name "TransitGatewayArn" :http-label
                                  common-lisp:t))
                                (:shape-name "DeregisterTransitGatewayRequest"))

(smithy/sdk/shapes:define-output deregister-transit-gateway-response
                                 common-lisp:nil
                                 ((transit-gateway-registration :target-type
                                   transit-gateway-registration :member-name
                                   "TransitGatewayRegistration"))
                                 (:shape-name
                                  "DeregisterTransitGatewayResponse"))

(smithy/sdk/shapes:define-input describe-global-networks-request
                                common-lisp:nil
                                ((global-network-ids :target-type
                                  global-network-id-list :member-name
                                  "GlobalNetworkIds" :http-query
                                  "globalNetworkIds")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "DescribeGlobalNetworksRequest"))

(smithy/sdk/shapes:define-output describe-global-networks-response
                                 common-lisp:nil
                                 ((global-networks :target-type
                                   global-network-list :member-name
                                   "GlobalNetworks")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeGlobalNetworksResponse"))

(smithy/sdk/shapes:define-structure device common-lisp:nil
                                    ((device-id :target-type device-id
                                      :member-name "DeviceId")
                                     (device-arn :target-type device-arn
                                      :member-name "DeviceArn")
                                     (global-network-id :target-type
                                      global-network-id :member-name
                                      "GlobalNetworkId")
                                     (awslocation :target-type awslocation
                                      :member-name "AWSLocation")
                                     (description :target-type
                                      constrained-string :member-name
                                      "Description")
                                     (type :target-type constrained-string
                                      :member-name "Type")
                                     (vendor :target-type constrained-string
                                      :member-name "Vendor")
                                     (model :target-type constrained-string
                                      :member-name "Model")
                                     (serial-number :target-type
                                      constrained-string :member-name
                                      "SerialNumber")
                                     (location :target-type location
                                      :member-name "Location")
                                     (site-id :target-type site-id :member-name
                                      "SiteId")
                                     (created-at :target-type date-time
                                      :member-name "CreatedAt")
                                     (state :target-type device-state
                                      :member-name "State")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "Device"))

(smithy/sdk/shapes:define-type device-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type device-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list device-id-list :member device-id)

(smithy/sdk/shapes:define-list device-list :member device)

(smithy/sdk/shapes:define-enum device-state
    common-lisp:nil
  (:pending "PENDING")
  (:available "AVAILABLE")
  (:deleting "DELETING")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-type direct-connect-gateway-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure direct-connect-gateway-attachment
                                    common-lisp:nil
                                    ((attachment :target-type attachment
                                      :member-name "Attachment")
                                     (direct-connect-gateway-arn :target-type
                                      direct-connect-gateway-arn :member-name
                                      "DirectConnectGatewayArn"))
                                    (:shape-name
                                     "DirectConnectGatewayAttachment"))

(smithy/sdk/shapes:define-input disassociate-connect-peer-request
                                common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (connect-peer-id :target-type connect-peer-id
                                  :required common-lisp:t :member-name
                                  "ConnectPeerId" :http-label common-lisp:t))
                                (:shape-name "DisassociateConnectPeerRequest"))

(smithy/sdk/shapes:define-output disassociate-connect-peer-response
                                 common-lisp:nil
                                 ((connect-peer-association :target-type
                                   connect-peer-association :member-name
                                   "ConnectPeerAssociation"))
                                 (:shape-name
                                  "DisassociateConnectPeerResponse"))

(smithy/sdk/shapes:define-input disassociate-customer-gateway-request
                                common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (customer-gateway-arn :target-type
                                  customer-gateway-arn :required common-lisp:t
                                  :member-name "CustomerGatewayArn" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DisassociateCustomerGatewayRequest"))

(smithy/sdk/shapes:define-output disassociate-customer-gateway-response
                                 common-lisp:nil
                                 ((customer-gateway-association :target-type
                                   customer-gateway-association :member-name
                                   "CustomerGatewayAssociation"))
                                 (:shape-name
                                  "DisassociateCustomerGatewayResponse"))

(smithy/sdk/shapes:define-input disassociate-link-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (device-id :target-type device-id :required
                                  common-lisp:t :member-name "DeviceId"
                                  :http-query "deviceId")
                                 (link-id :target-type link-id :required
                                  common-lisp:t :member-name "LinkId"
                                  :http-query "linkId"))
                                (:shape-name "DisassociateLinkRequest"))

(smithy/sdk/shapes:define-output disassociate-link-response common-lisp:nil
                                 ((link-association :target-type
                                   link-association :member-name
                                   "LinkAssociation"))
                                 (:shape-name "DisassociateLinkResponse"))

(smithy/sdk/shapes:define-input
 disassociate-transit-gateway-connect-peer-request common-lisp:nil
 ((global-network-id :target-type global-network-id :required common-lisp:t
   :member-name "GlobalNetworkId" :http-label common-lisp:t)
  (transit-gateway-connect-peer-arn :target-type
   transit-gateway-connect-peer-arn :required common-lisp:t :member-name
   "TransitGatewayConnectPeerArn" :http-label common-lisp:t))
 (:shape-name "DisassociateTransitGatewayConnectPeerRequest"))

(smithy/sdk/shapes:define-output
 disassociate-transit-gateway-connect-peer-response common-lisp:nil
 ((transit-gateway-connect-peer-association :target-type
   transit-gateway-connect-peer-association :member-name
   "TransitGatewayConnectPeerAssociation"))
 (:shape-name "DisassociateTransitGatewayConnectPeerResponse"))

(smithy/sdk/shapes:define-structure edge-override common-lisp:nil
                                    ((edge-sets :target-type edge-set-list
                                      :member-name "EdgeSets")
                                     (use-edge :target-type constrained-string
                                      :member-name "UseEdge"))
                                    (:shape-name "EdgeOverride"))

(smithy/sdk/shapes:define-list edge-set :member constrained-string)

(smithy/sdk/shapes:define-list edge-set-list :member edge-set)

(smithy/sdk/shapes:define-type exception-context-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map exception-context-map :key exception-context-key
                              :value exception-context-value)

(smithy/sdk/shapes:define-type exception-context-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input execute-core-network-change-set-request
                                common-lisp:nil
                                ((core-network-id :target-type core-network-id
                                  :required common-lisp:t :member-name
                                  "CoreNetworkId" :http-label common-lisp:t)
                                 (policy-version-id :target-type integer
                                  :required common-lisp:t :member-name
                                  "PolicyVersionId" :http-label common-lisp:t))
                                (:shape-name
                                 "ExecuteCoreNetworkChangeSetRequest"))

(smithy/sdk/shapes:define-output execute-core-network-change-set-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "ExecuteCoreNetworkChangeSetResponse"))

(smithy/sdk/shapes:define-type external-region-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list external-region-code-list :member
                               external-region-code)

(smithy/sdk/shapes:define-map filter-map :key filter-name :value filter-values)

(smithy/sdk/shapes:define-type filter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-values :member filter-value)

(smithy/sdk/shapes:define-input get-connect-attachment-request common-lisp:nil
                                ((attachment-id :target-type attachment-id
                                  :required common-lisp:t :member-name
                                  "AttachmentId" :http-label common-lisp:t))
                                (:shape-name "GetConnectAttachmentRequest"))

(smithy/sdk/shapes:define-output get-connect-attachment-response
                                 common-lisp:nil
                                 ((connect-attachment :target-type
                                   connect-attachment :member-name
                                   "ConnectAttachment"))
                                 (:shape-name "GetConnectAttachmentResponse"))

(smithy/sdk/shapes:define-input get-connect-peer-associations-request
                                common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (connect-peer-ids :target-type
                                  connect-peer-id-list :member-name
                                  "ConnectPeerIds" :http-query
                                  "connectPeerIds")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "GetConnectPeerAssociationsRequest"))

(smithy/sdk/shapes:define-output get-connect-peer-associations-response
                                 common-lisp:nil
                                 ((connect-peer-associations :target-type
                                   connect-peer-association-list :member-name
                                   "ConnectPeerAssociations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "GetConnectPeerAssociationsResponse"))

(smithy/sdk/shapes:define-input get-connect-peer-request common-lisp:nil
                                ((connect-peer-id :target-type connect-peer-id
                                  :required common-lisp:t :member-name
                                  "ConnectPeerId" :http-label common-lisp:t))
                                (:shape-name "GetConnectPeerRequest"))

(smithy/sdk/shapes:define-output get-connect-peer-response common-lisp:nil
                                 ((connect-peer :target-type connect-peer
                                   :member-name "ConnectPeer"))
                                 (:shape-name "GetConnectPeerResponse"))

(smithy/sdk/shapes:define-input get-connections-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (connection-ids :target-type
                                  connection-id-list :member-name
                                  "ConnectionIds" :http-query "connectionIds")
                                 (device-id :target-type device-id :member-name
                                  "DeviceId" :http-query "deviceId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "GetConnectionsRequest"))

(smithy/sdk/shapes:define-output get-connections-response common-lisp:nil
                                 ((connections :target-type connection-list
                                   :member-name "Connections")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetConnectionsResponse"))

(smithy/sdk/shapes:define-input get-core-network-change-events-request
                                common-lisp:nil
                                ((core-network-id :target-type core-network-id
                                  :required common-lisp:t :member-name
                                  "CoreNetworkId" :http-label common-lisp:t)
                                 (policy-version-id :target-type integer
                                  :required common-lisp:t :member-name
                                  "PolicyVersionId" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "GetCoreNetworkChangeEventsRequest"))

(smithy/sdk/shapes:define-output get-core-network-change-events-response
                                 common-lisp:nil
                                 ((core-network-change-events :target-type
                                   core-network-change-event-list :member-name
                                   "CoreNetworkChangeEvents")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "GetCoreNetworkChangeEventsResponse"))

(smithy/sdk/shapes:define-input get-core-network-change-set-request
                                common-lisp:nil
                                ((core-network-id :target-type core-network-id
                                  :required common-lisp:t :member-name
                                  "CoreNetworkId" :http-label common-lisp:t)
                                 (policy-version-id :target-type integer
                                  :required common-lisp:t :member-name
                                  "PolicyVersionId" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "GetCoreNetworkChangeSetRequest"))

(smithy/sdk/shapes:define-output get-core-network-change-set-response
                                 common-lisp:nil
                                 ((core-network-changes :target-type
                                   core-network-change-list :member-name
                                   "CoreNetworkChanges")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "GetCoreNetworkChangeSetResponse"))

(smithy/sdk/shapes:define-input get-core-network-policy-request common-lisp:nil
                                ((core-network-id :target-type core-network-id
                                  :required common-lisp:t :member-name
                                  "CoreNetworkId" :http-label common-lisp:t)
                                 (policy-version-id :target-type integer
                                  :member-name "PolicyVersionId" :http-query
                                  "policyVersionId")
                                 (alias :target-type core-network-policy-alias
                                  :member-name "Alias" :http-query "alias"))
                                (:shape-name "GetCoreNetworkPolicyRequest"))

(smithy/sdk/shapes:define-output get-core-network-policy-response
                                 common-lisp:nil
                                 ((core-network-policy :target-type
                                   core-network-policy :member-name
                                   "CoreNetworkPolicy"))
                                 (:shape-name "GetCoreNetworkPolicyResponse"))

(smithy/sdk/shapes:define-input get-core-network-request common-lisp:nil
                                ((core-network-id :target-type core-network-id
                                  :required common-lisp:t :member-name
                                  "CoreNetworkId" :http-label common-lisp:t))
                                (:shape-name "GetCoreNetworkRequest"))

(smithy/sdk/shapes:define-output get-core-network-response common-lisp:nil
                                 ((core-network :target-type core-network
                                   :member-name "CoreNetwork"))
                                 (:shape-name "GetCoreNetworkResponse"))

(smithy/sdk/shapes:define-input get-customer-gateway-associations-request
                                common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (customer-gateway-arns :target-type
                                  customer-gateway-arn-list :member-name
                                  "CustomerGatewayArns" :http-query
                                  "customerGatewayArns")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "GetCustomerGatewayAssociationsRequest"))

(smithy/sdk/shapes:define-output get-customer-gateway-associations-response
                                 common-lisp:nil
                                 ((customer-gateway-associations :target-type
                                   customer-gateway-association-list
                                   :member-name "CustomerGatewayAssociations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "GetCustomerGatewayAssociationsResponse"))

(smithy/sdk/shapes:define-input get-devices-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (device-ids :target-type device-id-list
                                  :member-name "DeviceIds" :http-query
                                  "deviceIds")
                                 (site-id :target-type site-id :member-name
                                  "SiteId" :http-query "siteId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "GetDevicesRequest"))

(smithy/sdk/shapes:define-output get-devices-response common-lisp:nil
                                 ((devices :target-type device-list
                                   :member-name "Devices")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetDevicesResponse"))

(smithy/sdk/shapes:define-input get-direct-connect-gateway-attachment-request
                                common-lisp:nil
                                ((attachment-id :target-type attachment-id
                                  :required common-lisp:t :member-name
                                  "AttachmentId" :http-label common-lisp:t))
                                (:shape-name
                                 "GetDirectConnectGatewayAttachmentRequest"))

(smithy/sdk/shapes:define-output get-direct-connect-gateway-attachment-response
                                 common-lisp:nil
                                 ((direct-connect-gateway-attachment
                                   :target-type
                                   direct-connect-gateway-attachment
                                   :member-name
                                   "DirectConnectGatewayAttachment"))
                                 (:shape-name
                                  "GetDirectConnectGatewayAttachmentResponse"))

(smithy/sdk/shapes:define-input get-link-associations-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (device-id :target-type device-id :member-name
                                  "DeviceId" :http-query "deviceId")
                                 (link-id :target-type link-id :member-name
                                  "LinkId" :http-query "linkId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "GetLinkAssociationsRequest"))

(smithy/sdk/shapes:define-output get-link-associations-response common-lisp:nil
                                 ((link-associations :target-type
                                   link-association-list :member-name
                                   "LinkAssociations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetLinkAssociationsResponse"))

(smithy/sdk/shapes:define-input get-links-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (link-ids :target-type link-id-list
                                  :member-name "LinkIds" :http-query "linkIds")
                                 (site-id :target-type site-id :member-name
                                  "SiteId" :http-query "siteId")
                                 (type :target-type constrained-string
                                  :member-name "Type" :http-query "type")
                                 (provider :target-type constrained-string
                                  :member-name "Provider" :http-query
                                  "provider")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "GetLinksRequest"))

(smithy/sdk/shapes:define-output get-links-response common-lisp:nil
                                 ((links :target-type link-list :member-name
                                   "Links")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetLinksResponse"))

(smithy/sdk/shapes:define-input get-network-resource-counts-request
                                common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (resource-type :target-type constrained-string
                                  :member-name "ResourceType" :http-query
                                  "resourceType")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "GetNetworkResourceCountsRequest"))

(smithy/sdk/shapes:define-output get-network-resource-counts-response
                                 common-lisp:nil
                                 ((network-resource-counts :target-type
                                   network-resource-count-list :member-name
                                   "NetworkResourceCounts")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "GetNetworkResourceCountsResponse"))

(smithy/sdk/shapes:define-input get-network-resource-relationships-request
                                common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (core-network-id :target-type core-network-id
                                  :member-name "CoreNetworkId" :http-query
                                  "coreNetworkId")
                                 (registered-gateway-arn :target-type
                                  resource-arn :member-name
                                  "RegisteredGatewayArn" :http-query
                                  "registeredGatewayArn")
                                 (aws-region :target-type external-region-code
                                  :member-name "AwsRegion" :http-query
                                  "awsRegion")
                                 (account-id :target-type awsaccount-id
                                  :member-name "AccountId" :http-query
                                  "accountId")
                                 (resource-type :target-type constrained-string
                                  :member-name "ResourceType" :http-query
                                  "resourceType")
                                 (resource-arn :target-type resource-arn
                                  :member-name "ResourceArn" :http-query
                                  "resourceArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "GetNetworkResourceRelationshipsRequest"))

(smithy/sdk/shapes:define-output get-network-resource-relationships-response
                                 common-lisp:nil
                                 ((relationships :target-type relationship-list
                                   :member-name "Relationships")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "GetNetworkResourceRelationshipsResponse"))

(smithy/sdk/shapes:define-input get-network-resources-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (core-network-id :target-type core-network-id
                                  :member-name "CoreNetworkId" :http-query
                                  "coreNetworkId")
                                 (registered-gateway-arn :target-type
                                  resource-arn :member-name
                                  "RegisteredGatewayArn" :http-query
                                  "registeredGatewayArn")
                                 (aws-region :target-type external-region-code
                                  :member-name "AwsRegion" :http-query
                                  "awsRegion")
                                 (account-id :target-type awsaccount-id
                                  :member-name "AccountId" :http-query
                                  "accountId")
                                 (resource-type :target-type constrained-string
                                  :member-name "ResourceType" :http-query
                                  "resourceType")
                                 (resource-arn :target-type resource-arn
                                  :member-name "ResourceArn" :http-query
                                  "resourceArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "GetNetworkResourcesRequest"))

(smithy/sdk/shapes:define-output get-network-resources-response common-lisp:nil
                                 ((network-resources :target-type
                                   network-resource-list :member-name
                                   "NetworkResources")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetNetworkResourcesResponse"))

(smithy/sdk/shapes:define-input get-network-routes-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (route-table-identifier :target-type
                                  route-table-identifier :required
                                  common-lisp:t :member-name
                                  "RouteTableIdentifier")
                                 (exact-cidr-matches :target-type
                                  constrained-string-list :member-name
                                  "ExactCidrMatches")
                                 (longest-prefix-matches :target-type
                                  constrained-string-list :member-name
                                  "LongestPrefixMatches")
                                 (subnet-of-matches :target-type
                                  constrained-string-list :member-name
                                  "SubnetOfMatches")
                                 (supernet-of-matches :target-type
                                  constrained-string-list :member-name
                                  "SupernetOfMatches")
                                 (prefix-list-ids :target-type
                                  constrained-string-list :member-name
                                  "PrefixListIds")
                                 (states :target-type route-state-list
                                  :member-name "States")
                                 (types :target-type route-type-list
                                  :member-name "Types")
                                 (destination-filters :target-type filter-map
                                  :member-name "DestinationFilters"))
                                (:shape-name "GetNetworkRoutesRequest"))

(smithy/sdk/shapes:define-output get-network-routes-response common-lisp:nil
                                 ((route-table-arn :target-type resource-arn
                                   :member-name "RouteTableArn")
                                  (core-network-segment-edge :target-type
                                   core-network-segment-edge-identifier
                                   :member-name "CoreNetworkSegmentEdge")
                                  (route-table-type :target-type
                                   route-table-type :member-name
                                   "RouteTableType")
                                  (route-table-timestamp :target-type date-time
                                   :member-name "RouteTableTimestamp")
                                  (network-routes :target-type
                                   network-route-list :member-name
                                   "NetworkRoutes"))
                                 (:shape-name "GetNetworkRoutesResponse"))

(smithy/sdk/shapes:define-input get-network-telemetry-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (core-network-id :target-type core-network-id
                                  :member-name "CoreNetworkId" :http-query
                                  "coreNetworkId")
                                 (registered-gateway-arn :target-type
                                  resource-arn :member-name
                                  "RegisteredGatewayArn" :http-query
                                  "registeredGatewayArn")
                                 (aws-region :target-type external-region-code
                                  :member-name "AwsRegion" :http-query
                                  "awsRegion")
                                 (account-id :target-type awsaccount-id
                                  :member-name "AccountId" :http-query
                                  "accountId")
                                 (resource-type :target-type constrained-string
                                  :member-name "ResourceType" :http-query
                                  "resourceType")
                                 (resource-arn :target-type resource-arn
                                  :member-name "ResourceArn" :http-query
                                  "resourceArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "GetNetworkTelemetryRequest"))

(smithy/sdk/shapes:define-output get-network-telemetry-response common-lisp:nil
                                 ((network-telemetry :target-type
                                   network-telemetry-list :member-name
                                   "NetworkTelemetry")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetNetworkTelemetryResponse"))

(smithy/sdk/shapes:define-input get-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t))
                                (:shape-name "GetResourcePolicyRequest"))

(smithy/sdk/shapes:define-output get-resource-policy-response common-lisp:nil
                                 ((policy-document :target-type
                                   synthesized-json-resource-policy-document
                                   :member-name "PolicyDocument"))
                                 (:shape-name "GetResourcePolicyResponse"))

(smithy/sdk/shapes:define-input get-route-analysis-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (route-analysis-id :target-type
                                  constrained-string :required common-lisp:t
                                  :member-name "RouteAnalysisId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetRouteAnalysisRequest"))

(smithy/sdk/shapes:define-output get-route-analysis-response common-lisp:nil
                                 ((route-analysis :target-type route-analysis
                                   :member-name "RouteAnalysis"))
                                 (:shape-name "GetRouteAnalysisResponse"))

(smithy/sdk/shapes:define-input get-site-to-site-vpn-attachment-request
                                common-lisp:nil
                                ((attachment-id :target-type attachment-id
                                  :required common-lisp:t :member-name
                                  "AttachmentId" :http-label common-lisp:t))
                                (:shape-name
                                 "GetSiteToSiteVpnAttachmentRequest"))

(smithy/sdk/shapes:define-output get-site-to-site-vpn-attachment-response
                                 common-lisp:nil
                                 ((site-to-site-vpn-attachment :target-type
                                   site-to-site-vpn-attachment :member-name
                                   "SiteToSiteVpnAttachment"))
                                 (:shape-name
                                  "GetSiteToSiteVpnAttachmentResponse"))

(smithy/sdk/shapes:define-input get-sites-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (site-ids :target-type site-id-list
                                  :member-name "SiteIds" :http-query "siteIds")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "GetSitesRequest"))

(smithy/sdk/shapes:define-output get-sites-response common-lisp:nil
                                 ((sites :target-type site-list :member-name
                                   "Sites")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "GetSitesResponse"))

(smithy/sdk/shapes:define-input
 get-transit-gateway-connect-peer-associations-request common-lisp:nil
 ((global-network-id :target-type global-network-id :required common-lisp:t
   :member-name "GlobalNetworkId" :http-label common-lisp:t)
  (transit-gateway-connect-peer-arns :target-type
   transit-gateway-connect-peer-arn-list :member-name
   "TransitGatewayConnectPeerArns" :http-query "transitGatewayConnectPeerArns")
  (max-results :target-type max-results :member-name "MaxResults" :http-query
   "maxResults")
  (next-token :target-type next-token :member-name "NextToken" :http-query
   "nextToken"))
 (:shape-name "GetTransitGatewayConnectPeerAssociationsRequest"))

(smithy/sdk/shapes:define-output
 get-transit-gateway-connect-peer-associations-response common-lisp:nil
 ((transit-gateway-connect-peer-associations :target-type
   transit-gateway-connect-peer-association-list :member-name
   "TransitGatewayConnectPeerAssociations")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "GetTransitGatewayConnectPeerAssociationsResponse"))

(smithy/sdk/shapes:define-input get-transit-gateway-peering-request
                                common-lisp:nil
                                ((peering-id :target-type peering-id :required
                                  common-lisp:t :member-name "PeeringId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetTransitGatewayPeeringRequest"))

(smithy/sdk/shapes:define-output get-transit-gateway-peering-response
                                 common-lisp:nil
                                 ((transit-gateway-peering :target-type
                                   transit-gateway-peering :member-name
                                   "TransitGatewayPeering"))
                                 (:shape-name
                                  "GetTransitGatewayPeeringResponse"))

(smithy/sdk/shapes:define-input get-transit-gateway-registrations-request
                                common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (transit-gateway-arns :target-type
                                  transit-gateway-arn-list :member-name
                                  "TransitGatewayArns" :http-query
                                  "transitGatewayArns")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "GetTransitGatewayRegistrationsRequest"))

(smithy/sdk/shapes:define-output get-transit-gateway-registrations-response
                                 common-lisp:nil
                                 ((transit-gateway-registrations :target-type
                                   transit-gateway-registration-list
                                   :member-name "TransitGatewayRegistrations")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "GetTransitGatewayRegistrationsResponse"))

(smithy/sdk/shapes:define-input
 get-transit-gateway-route-table-attachment-request common-lisp:nil
 ((attachment-id :target-type attachment-id :required common-lisp:t
   :member-name "AttachmentId" :http-label common-lisp:t))
 (:shape-name "GetTransitGatewayRouteTableAttachmentRequest"))

(smithy/sdk/shapes:define-output
 get-transit-gateway-route-table-attachment-response common-lisp:nil
 ((transit-gateway-route-table-attachment :target-type
   transit-gateway-route-table-attachment :member-name
   "TransitGatewayRouteTableAttachment"))
 (:shape-name "GetTransitGatewayRouteTableAttachmentResponse"))

(smithy/sdk/shapes:define-input get-vpc-attachment-request common-lisp:nil
                                ((attachment-id :target-type attachment-id
                                  :required common-lisp:t :member-name
                                  "AttachmentId" :http-label common-lisp:t))
                                (:shape-name "GetVpcAttachmentRequest"))

(smithy/sdk/shapes:define-output get-vpc-attachment-response common-lisp:nil
                                 ((vpc-attachment :target-type vpc-attachment
                                   :member-name "VpcAttachment"))
                                 (:shape-name "GetVpcAttachmentResponse"))

(smithy/sdk/shapes:define-structure global-network common-lisp:nil
                                    ((global-network-id :target-type
                                      global-network-id :member-name
                                      "GlobalNetworkId")
                                     (global-network-arn :target-type
                                      global-network-arn :member-name
                                      "GlobalNetworkArn")
                                     (description :target-type
                                      constrained-string :member-name
                                      "Description")
                                     (created-at :target-type date-time
                                      :member-name "CreatedAt")
                                     (state :target-type global-network-state
                                      :member-name "State")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "GlobalNetwork"))

(smithy/sdk/shapes:define-type global-network-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type global-network-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list global-network-id-list :member global-network-id)

(smithy/sdk/shapes:define-list global-network-list :member global-network)

(smithy/sdk/shapes:define-enum global-network-state
    common-lisp:nil
  (:pending "PENDING")
  (:available "AVAILABLE")
  (:deleting "DELETING")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-type ipaddress smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type server-side-string
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure link common-lisp:nil
                                    ((link-id :target-type link-id :member-name
                                      "LinkId")
                                     (link-arn :target-type link-arn
                                      :member-name "LinkArn")
                                     (global-network-id :target-type
                                      global-network-id :member-name
                                      "GlobalNetworkId")
                                     (site-id :target-type site-id :member-name
                                      "SiteId")
                                     (description :target-type
                                      constrained-string :member-name
                                      "Description")
                                     (type :target-type constrained-string
                                      :member-name "Type")
                                     (bandwidth :target-type bandwidth
                                      :member-name "Bandwidth")
                                     (provider :target-type constrained-string
                                      :member-name "Provider")
                                     (created-at :target-type date-time
                                      :member-name "CreatedAt")
                                     (state :target-type link-state
                                      :member-name "State")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "Link"))

(smithy/sdk/shapes:define-type link-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure link-association common-lisp:nil
                                    ((global-network-id :target-type
                                      global-network-id :member-name
                                      "GlobalNetworkId")
                                     (device-id :target-type device-id
                                      :member-name "DeviceId")
                                     (link-id :target-type link-id :member-name
                                      "LinkId")
                                     (link-association-state :target-type
                                      link-association-state :member-name
                                      "LinkAssociationState"))
                                    (:shape-name "LinkAssociation"))

(smithy/sdk/shapes:define-list link-association-list :member link-association)

(smithy/sdk/shapes:define-enum link-association-state
    common-lisp:nil
  (:pending "PENDING")
  (:available "AVAILABLE")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-type link-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list link-id-list :member link-id)

(smithy/sdk/shapes:define-list link-list :member link)

(smithy/sdk/shapes:define-enum link-state
    common-lisp:nil
  (:pending "PENDING")
  (:available "AVAILABLE")
  (:deleting "DELETING")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-input list-attachments-request common-lisp:nil
                                ((core-network-id :target-type core-network-id
                                  :member-name "CoreNetworkId" :http-query
                                  "coreNetworkId")
                                 (attachment-type :target-type attachment-type
                                  :member-name "AttachmentType" :http-query
                                  "attachmentType")
                                 (edge-location :target-type
                                  external-region-code :member-name
                                  "EdgeLocation" :http-query "edgeLocation")
                                 (state :target-type attachment-state
                                  :member-name "State" :http-query "state")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListAttachmentsRequest"))

(smithy/sdk/shapes:define-output list-attachments-response common-lisp:nil
                                 ((attachments :target-type attachment-list
                                   :member-name "Attachments")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListAttachmentsResponse"))

(smithy/sdk/shapes:define-input list-connect-peers-request common-lisp:nil
                                ((core-network-id :target-type core-network-id
                                  :member-name "CoreNetworkId" :http-query
                                  "coreNetworkId")
                                 (connect-attachment-id :target-type
                                  attachment-id :member-name
                                  "ConnectAttachmentId" :http-query
                                  "connectAttachmentId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListConnectPeersRequest"))

(smithy/sdk/shapes:define-output list-connect-peers-response common-lisp:nil
                                 ((connect-peers :target-type
                                   connect-peer-summary-list :member-name
                                   "ConnectPeers")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListConnectPeersResponse"))

(smithy/sdk/shapes:define-input list-core-network-policy-versions-request
                                common-lisp:nil
                                ((core-network-id :target-type core-network-id
                                  :required common-lisp:t :member-name
                                  "CoreNetworkId" :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListCoreNetworkPolicyVersionsRequest"))

(smithy/sdk/shapes:define-output list-core-network-policy-versions-response
                                 common-lisp:nil
                                 ((core-network-policy-versions :target-type
                                   core-network-policy-version-list
                                   :member-name "CoreNetworkPolicyVersions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListCoreNetworkPolicyVersionsResponse"))

(smithy/sdk/shapes:define-input list-core-networks-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListCoreNetworksRequest"))

(smithy/sdk/shapes:define-output list-core-networks-response common-lisp:nil
                                 ((core-networks :target-type
                                   core-network-summary-list :member-name
                                   "CoreNetworks")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListCoreNetworksResponse"))

(smithy/sdk/shapes:define-input list-organization-service-access-status-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListOrganizationServiceAccessStatusRequest"))

(smithy/sdk/shapes:define-output
 list-organization-service-access-status-response common-lisp:nil
 ((organization-status :target-type organization-status :member-name
   "OrganizationStatus")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "ListOrganizationServiceAccessStatusResponse"))

(smithy/sdk/shapes:define-input list-peerings-request common-lisp:nil
                                ((core-network-id :target-type core-network-id
                                  :member-name "CoreNetworkId" :http-query
                                  "coreNetworkId")
                                 (peering-type :target-type peering-type
                                  :member-name "PeeringType" :http-query
                                  "peeringType")
                                 (edge-location :target-type
                                  external-region-code :member-name
                                  "EdgeLocation" :http-query "edgeLocation")
                                 (state :target-type peering-state :member-name
                                  "State" :http-query "state")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListPeeringsRequest"))

(smithy/sdk/shapes:define-output list-peerings-response common-lisp:nil
                                 ((peerings :target-type peering-list
                                   :member-name "Peerings")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListPeeringsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tag-list :target-type tag-list :member-name
                                   "TagList"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure location common-lisp:nil
                                    ((address :target-type constrained-string
                                      :member-name "Address")
                                     (latitude :target-type constrained-string
                                      :member-name "Latitude")
                                     (longitude :target-type constrained-string
                                      :member-name "Longitude"))
                                    (:shape-name "Location"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure network-function-group common-lisp:nil
                                    ((name :target-type constrained-string
                                      :member-name "Name"))
                                    (:shape-name "NetworkFunctionGroup"))

(smithy/sdk/shapes:define-list network-function-group-list :member
                               network-function-group)

(smithy/sdk/shapes:define-type network-function-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure network-resource common-lisp:nil
                                    ((registered-gateway-arn :target-type
                                      resource-arn :member-name
                                      "RegisteredGatewayArn")
                                     (core-network-id :target-type
                                      core-network-id :member-name
                                      "CoreNetworkId")
                                     (aws-region :target-type
                                      external-region-code :member-name
                                      "AwsRegion")
                                     (account-id :target-type awsaccount-id
                                      :member-name "AccountId")
                                     (resource-type :target-type
                                      constrained-string :member-name
                                      "ResourceType")
                                     (resource-id :target-type
                                      constrained-string :member-name
                                      "ResourceId")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceArn")
                                     (definition :target-type
                                      constrained-string :member-name
                                      "Definition")
                                     (definition-timestamp :target-type
                                      date-time :member-name
                                      "DefinitionTimestamp")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (metadata :target-type
                                      network-resource-metadata-map
                                      :member-name "Metadata"))
                                    (:shape-name "NetworkResource"))

(smithy/sdk/shapes:define-structure network-resource-count common-lisp:nil
                                    ((resource-type :target-type
                                      constrained-string :member-name
                                      "ResourceType")
                                     (count :target-type integer :member-name
                                      "Count"))
                                    (:shape-name "NetworkResourceCount"))

(smithy/sdk/shapes:define-list network-resource-count-list :member
                               network-resource-count)

(smithy/sdk/shapes:define-list network-resource-list :member network-resource)

(smithy/sdk/shapes:define-map network-resource-metadata-map :key
                              constrained-string :value constrained-string)

(smithy/sdk/shapes:define-structure network-resource-summary common-lisp:nil
                                    ((registered-gateway-arn :target-type
                                      resource-arn :member-name
                                      "RegisteredGatewayArn")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceArn")
                                     (resource-type :target-type
                                      constrained-string :member-name
                                      "ResourceType")
                                     (definition :target-type
                                      constrained-string :member-name
                                      "Definition")
                                     (name-tag :target-type constrained-string
                                      :member-name "NameTag")
                                     (is-middlebox :target-type boolean
                                      :member-name "IsMiddlebox"))
                                    (:shape-name "NetworkResourceSummary"))

(smithy/sdk/shapes:define-structure network-route common-lisp:nil
                                    ((destination-cidr-block :target-type
                                      constrained-string :member-name
                                      "DestinationCidrBlock")
                                     (destinations :target-type
                                      network-route-destination-list
                                      :member-name "Destinations")
                                     (prefix-list-id :target-type
                                      constrained-string :member-name
                                      "PrefixListId")
                                     (state :target-type route-state
                                      :member-name "State")
                                     (type :target-type route-type :member-name
                                      "Type"))
                                    (:shape-name "NetworkRoute"))

(smithy/sdk/shapes:define-structure network-route-destination common-lisp:nil
                                    ((core-network-attachment-id :target-type
                                      attachment-id :member-name
                                      "CoreNetworkAttachmentId")
                                     (transit-gateway-attachment-id
                                      :target-type
                                      transit-gateway-attachment-id
                                      :member-name
                                      "TransitGatewayAttachmentId")
                                     (segment-name :target-type
                                      constrained-string :member-name
                                      "SegmentName")
                                     (network-function-group-name :target-type
                                      constrained-string :member-name
                                      "NetworkFunctionGroupName")
                                     (edge-location :target-type
                                      external-region-code :member-name
                                      "EdgeLocation")
                                     (resource-type :target-type
                                      constrained-string :member-name
                                      "ResourceType")
                                     (resource-id :target-type
                                      constrained-string :member-name
                                      "ResourceId"))
                                    (:shape-name "NetworkRouteDestination"))

(smithy/sdk/shapes:define-list network-route-destination-list :member
                               network-route-destination)

(smithy/sdk/shapes:define-list network-route-list :member network-route)

(smithy/sdk/shapes:define-structure network-telemetry common-lisp:nil
                                    ((registered-gateway-arn :target-type
                                      resource-arn :member-name
                                      "RegisteredGatewayArn")
                                     (core-network-id :target-type
                                      core-network-id :member-name
                                      "CoreNetworkId")
                                     (aws-region :target-type
                                      external-region-code :member-name
                                      "AwsRegion")
                                     (account-id :target-type awsaccount-id
                                      :member-name "AccountId")
                                     (resource-type :target-type
                                      constrained-string :member-name
                                      "ResourceType")
                                     (resource-id :target-type
                                      constrained-string :member-name
                                      "ResourceId")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceArn")
                                     (address :target-type constrained-string
                                      :member-name "Address")
                                     (health :target-type connection-health
                                      :member-name "Health"))
                                    (:shape-name "NetworkTelemetry"))

(smithy/sdk/shapes:define-list network-telemetry-list :member network-telemetry)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type organization-aws-service-access-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type organization-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure organization-status common-lisp:nil
                                    ((organization-id :target-type
                                      organization-id :member-name
                                      "OrganizationId")
                                     (organization-aws-service-access-status
                                      :target-type
                                      organization-aws-service-access-status
                                      :member-name
                                      "OrganizationAwsServiceAccessStatus")
                                     (slrdeployment-status :target-type
                                      slrdeployment-status :member-name
                                      "SLRDeploymentStatus")
                                     (account-status-list :target-type
                                      account-status-list :member-name
                                      "AccountStatusList" :xml-name
                                      "OrganizationStatus"))
                                    (:shape-name "OrganizationStatus"))

(smithy/sdk/shapes:define-structure path-component common-lisp:nil
                                    ((sequence :target-type integer
                                      :member-name "Sequence")
                                     (resource :target-type
                                      network-resource-summary :member-name
                                      "Resource")
                                     (destination-cidr-block :target-type
                                      constrained-string :member-name
                                      "DestinationCidrBlock"))
                                    (:shape-name "PathComponent"))

(smithy/sdk/shapes:define-list path-component-list :member path-component)

(smithy/sdk/shapes:define-structure peering common-lisp:nil
                                    ((core-network-id :target-type
                                      core-network-id :member-name
                                      "CoreNetworkId")
                                     (core-network-arn :target-type
                                      core-network-arn :member-name
                                      "CoreNetworkArn")
                                     (peering-id :target-type peering-id
                                      :member-name "PeeringId")
                                     (owner-account-id :target-type
                                      awsaccount-id :member-name
                                      "OwnerAccountId")
                                     (peering-type :target-type peering-type
                                      :member-name "PeeringType")
                                     (state :target-type peering-state
                                      :member-name "State")
                                     (edge-location :target-type
                                      external-region-code :member-name
                                      "EdgeLocation")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceArn")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (created-at :target-type date-time
                                      :member-name "CreatedAt")
                                     (last-modification-errors :target-type
                                      peering-error-list :member-name
                                      "LastModificationErrors"))
                                    (:shape-name "Peering"))

(smithy/sdk/shapes:define-structure peering-error common-lisp:nil
                                    ((code :target-type peering-error-code
                                      :member-name "Code")
                                     (message :target-type server-side-string
                                      :member-name "Message")
                                     (resource-arn :target-type resource-arn
                                      :member-name "ResourceArn")
                                     (request-id :target-type
                                      server-side-string :member-name
                                      "RequestId")
                                     (missing-permissions-context :target-type
                                      permissions-error-context :member-name
                                      "MissingPermissionsContext"))
                                    (:shape-name "PeeringError"))

(smithy/sdk/shapes:define-enum peering-error-code
    common-lisp:nil
  (:transit-gateway-not-found "TRANSIT_GATEWAY_NOT_FOUND")
  (:transit-gateway-peers-limit-exceeded "TRANSIT_GATEWAY_PEERS_LIMIT_EXCEEDED")
  (:missing-required-permissions "MISSING_PERMISSIONS")
  (:internal-error "INTERNAL_ERROR")
  (:edge-location-peer-duplicate "EDGE_LOCATION_PEER_DUPLICATE")
  (:invalid-transit-gateway-state "INVALID_TRANSIT_GATEWAY_STATE"))

(smithy/sdk/shapes:define-list peering-error-list :member peering-error)

(smithy/sdk/shapes:define-type peering-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list peering-list :member peering)

(smithy/sdk/shapes:define-enum peering-state
    common-lisp:nil
  (:creating "CREATING")
  (:failed "FAILED")
  (:available "AVAILABLE")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-enum peering-type
    common-lisp:nil
  (:transit-gateway "TRANSIT_GATEWAY"))

(smithy/sdk/shapes:define-structure permissions-error-context common-lisp:nil
                                    ((missing-permission :target-type
                                      server-side-string :member-name
                                      "MissingPermission"))
                                    (:shape-name "PermissionsErrorContext"))

(smithy/sdk/shapes:define-structure proposed-network-function-group-change
                                    common-lisp:nil
                                    ((tags :target-type tag-list :member-name
                                      "Tags")
                                     (attachment-policy-rule-number
                                      :target-type integer :member-name
                                      "AttachmentPolicyRuleNumber")
                                     (network-function-group-name :target-type
                                      constrained-string :member-name
                                      "NetworkFunctionGroupName"))
                                    (:shape-name
                                     "ProposedNetworkFunctionGroupChange"))

(smithy/sdk/shapes:define-structure proposed-segment-change common-lisp:nil
                                    ((tags :target-type tag-list :member-name
                                      "Tags")
                                     (attachment-policy-rule-number
                                      :target-type integer :member-name
                                      "AttachmentPolicyRuleNumber")
                                     (segment-name :target-type
                                      constrained-string :member-name
                                      "SegmentName"))
                                    (:shape-name "ProposedSegmentChange"))

(smithy/sdk/shapes:define-input put-core-network-policy-request common-lisp:nil
                                ((core-network-id :target-type core-network-id
                                  :required common-lisp:t :member-name
                                  "CoreNetworkId" :http-label common-lisp:t)
                                 (policy-document :target-type
                                  synthesized-json-core-network-policy-document
                                  :required common-lisp:t :member-name
                                  "PolicyDocument")
                                 (description :target-type constrained-string
                                  :member-name "Description")
                                 (latest-version-id :target-type integer
                                  :member-name "LatestVersionId")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "PutCoreNetworkPolicyRequest"))

(smithy/sdk/shapes:define-output put-core-network-policy-response
                                 common-lisp:nil
                                 ((core-network-policy :target-type
                                   core-network-policy :member-name
                                   "CoreNetworkPolicy"))
                                 (:shape-name "PutCoreNetworkPolicyResponse"))

(smithy/sdk/shapes:define-input put-resource-policy-request common-lisp:nil
                                ((policy-document :target-type
                                  synthesized-json-resource-policy-document
                                  :required common-lisp:t :member-name
                                  "PolicyDocument")
                                 (resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t))
                                (:shape-name "PutResourcePolicyRequest"))

(smithy/sdk/shapes:define-output put-resource-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutResourcePolicyResponse"))

(smithy/sdk/shapes:define-type reason-context-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map reason-context-map :key reason-context-key :value
                              reason-context-value)

(smithy/sdk/shapes:define-type reason-context-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input register-transit-gateway-request
                                common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (transit-gateway-arn :target-type
                                  transit-gateway-arn :required common-lisp:t
                                  :member-name "TransitGatewayArn"))
                                (:shape-name "RegisterTransitGatewayRequest"))

(smithy/sdk/shapes:define-output register-transit-gateway-response
                                 common-lisp:nil
                                 ((transit-gateway-registration :target-type
                                   transit-gateway-registration :member-name
                                   "TransitGatewayRegistration"))
                                 (:shape-name "RegisterTransitGatewayResponse"))

(smithy/sdk/shapes:define-input reject-attachment-request common-lisp:nil
                                ((attachment-id :target-type attachment-id
                                  :required common-lisp:t :member-name
                                  "AttachmentId" :http-label common-lisp:t))
                                (:shape-name "RejectAttachmentRequest"))

(smithy/sdk/shapes:define-output reject-attachment-response common-lisp:nil
                                 ((attachment :target-type attachment
                                   :member-name "Attachment"))
                                 (:shape-name "RejectAttachmentResponse"))

(smithy/sdk/shapes:define-structure relationship common-lisp:nil
                                    ((from :target-type constrained-string
                                      :member-name "From")
                                     (to :target-type constrained-string
                                      :member-name "To"))
                                    (:shape-name "Relationship"))

(smithy/sdk/shapes:define-list relationship-list :member relationship)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type server-side-string
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (resource-id :target-type server-side-string
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (resource-type :target-type server-side-string
                                  :required common-lisp:t :member-name
                                  "ResourceType")
                                 (context :target-type exception-context-map
                                  :member-name "Context"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-input restore-core-network-policy-version-request
                                common-lisp:nil
                                ((core-network-id :target-type core-network-id
                                  :required common-lisp:t :member-name
                                  "CoreNetworkId" :http-label common-lisp:t)
                                 (policy-version-id :target-type integer
                                  :required common-lisp:t :member-name
                                  "PolicyVersionId" :http-label common-lisp:t))
                                (:shape-name
                                 "RestoreCoreNetworkPolicyVersionRequest"))

(smithy/sdk/shapes:define-output restore-core-network-policy-version-response
                                 common-lisp:nil
                                 ((core-network-policy :target-type
                                   core-network-policy :member-name
                                   "CoreNetworkPolicy"))
                                 (:shape-name
                                  "RestoreCoreNetworkPolicyVersionResponse"))

(smithy/sdk/shapes:define-type retry-after-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure route-analysis common-lisp:nil
                                    ((global-network-id :target-type
                                      global-network-id :member-name
                                      "GlobalNetworkId")
                                     (owner-account-id :target-type
                                      awsaccount-id :member-name
                                      "OwnerAccountId")
                                     (route-analysis-id :target-type
                                      constrained-string :member-name
                                      "RouteAnalysisId")
                                     (start-timestamp :target-type date-time
                                      :member-name "StartTimestamp")
                                     (status :target-type route-analysis-status
                                      :member-name "Status")
                                     (source :target-type
                                      route-analysis-endpoint-options
                                      :member-name "Source")
                                     (destination :target-type
                                      route-analysis-endpoint-options
                                      :member-name "Destination")
                                     (include-return-path :target-type boolean
                                      :member-name "IncludeReturnPath")
                                     (use-middleboxes :target-type boolean
                                      :member-name "UseMiddleboxes")
                                     (forward-path :target-type
                                      route-analysis-path :member-name
                                      "ForwardPath")
                                     (return-path :target-type
                                      route-analysis-path :member-name
                                      "ReturnPath"))
                                    (:shape-name "RouteAnalysis"))

(smithy/sdk/shapes:define-structure route-analysis-completion common-lisp:nil
                                    ((result-code :target-type
                                      route-analysis-completion-result-code
                                      :member-name "ResultCode")
                                     (reason-code :target-type
                                      route-analysis-completion-reason-code
                                      :member-name "ReasonCode")
                                     (reason-context :target-type
                                      reason-context-map :member-name
                                      "ReasonContext"))
                                    (:shape-name "RouteAnalysisCompletion"))

(smithy/sdk/shapes:define-enum route-analysis-completion-reason-code
    common-lisp:nil
  (:transit-gateway-attachment-not-found "TRANSIT_GATEWAY_ATTACHMENT_NOT_FOUND")
  (:transit-gateway-attachment-not-in-transit-gateway
   "TRANSIT_GATEWAY_ATTACHMENT_NOT_IN_TRANSIT_GATEWAY")
  (:cyclic-path-detected "CYCLIC_PATH_DETECTED")
  (:transit-gateway-attachment-stable-route-table-not-found
   "TRANSIT_GATEWAY_ATTACHMENT_STABLE_ROUTE_TABLE_NOT_FOUND")
  (:route-not-found "ROUTE_NOT_FOUND")
  (:blackhole-route-for-destination-found
   "BLACKHOLE_ROUTE_FOR_DESTINATION_FOUND")
  (:inactive-route-for-destination-found "INACTIVE_ROUTE_FOR_DESTINATION_FOUND")
  (:transit-gateway-attachment "TRANSIT_GATEWAY_ATTACHMENT_ATTACH_ARN_NO_MATCH")
  (:max-hops-exceeded "MAX_HOPS_EXCEEDED")
  (:possible-middlebox "POSSIBLE_MIDDLEBOX")
  (:no-destination-arn-provided "NO_DESTINATION_ARN_PROVIDED"))

(smithy/sdk/shapes:define-enum route-analysis-completion-result-code
    common-lisp:nil
  (:connected "CONNECTED")
  (:not-connected "NOT_CONNECTED"))

(smithy/sdk/shapes:define-structure route-analysis-endpoint-options
                                    common-lisp:nil
                                    ((transit-gateway-attachment-arn
                                      :target-type
                                      transit-gateway-attachment-arn
                                      :member-name
                                      "TransitGatewayAttachmentArn")
                                     (transit-gateway-arn :target-type
                                      transit-gateway-arn :member-name
                                      "TransitGatewayArn")
                                     (ip-address :target-type ipaddress
                                      :member-name "IpAddress"))
                                    (:shape-name
                                     "RouteAnalysisEndpointOptions"))

(smithy/sdk/shapes:define-structure
 route-analysis-endpoint-options-specification common-lisp:nil
 ((transit-gateway-attachment-arn :target-type transit-gateway-attachment-arn
   :member-name "TransitGatewayAttachmentArn")
  (ip-address :target-type ipaddress :member-name "IpAddress"))
 (:shape-name "RouteAnalysisEndpointOptionsSpecification"))

(smithy/sdk/shapes:define-structure route-analysis-path common-lisp:nil
                                    ((completion-status :target-type
                                      route-analysis-completion :member-name
                                      "CompletionStatus")
                                     (path :target-type path-component-list
                                      :member-name "Path"))
                                    (:shape-name "RouteAnalysisPath"))

(smithy/sdk/shapes:define-enum route-analysis-status
    common-lisp:nil
  (:running "RUNNING")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum route-state
    common-lisp:nil
  (:active "ACTIVE")
  (:blackhole "BLACKHOLE"))

(smithy/sdk/shapes:define-list route-state-list :member route-state)

(smithy/sdk/shapes:define-structure route-table-identifier common-lisp:nil
                                    ((transit-gateway-route-table-arn
                                      :target-type
                                      transit-gateway-route-table-arn
                                      :member-name
                                      "TransitGatewayRouteTableArn")
                                     (core-network-segment-edge :target-type
                                      core-network-segment-edge-identifier
                                      :member-name "CoreNetworkSegmentEdge")
                                     (core-network-network-function-group
                                      :target-type
                                      core-network-network-function-group-identifier
                                      :member-name
                                      "CoreNetworkNetworkFunctionGroup"))
                                    (:shape-name "RouteTableIdentifier"))

(smithy/sdk/shapes:define-enum route-table-type
    common-lisp:nil
  (:transit-gateway-route-table "TRANSIT_GATEWAY_ROUTE_TABLE")
  (:core-network-segment "CORE_NETWORK_SEGMENT")
  (:network-function-group "NETWORK_FUNCTION_GROUP"))

(smithy/sdk/shapes:define-enum route-type
    common-lisp:nil
  (:propagated "PROPAGATED")
  (:static "STATIC"))

(smithy/sdk/shapes:define-list route-type-list :member route-type)

(smithy/sdk/shapes:define-type slrdeployment-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum segment-action-service-insertion
    common-lisp:nil
  (:send-via "send-via")
  (:send-to "send-to"))

(smithy/sdk/shapes:define-enum send-via-mode
    common-lisp:nil
  (:dual-hop "dual-hop")
  (:single-hop "single-hop"))

(smithy/sdk/shapes:define-type server-side-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-insertion-action common-lisp:nil
                                    ((action :target-type
                                      segment-action-service-insertion
                                      :member-name "Action")
                                     (mode :target-type send-via-mode
                                      :member-name "Mode")
                                     (when-sent-to :target-type when-sent-to
                                      :member-name "WhenSentTo")
                                     (via :target-type via :member-name "Via"))
                                    (:shape-name "ServiceInsertionAction"))

(smithy/sdk/shapes:define-list service-insertion-action-list :member
                               service-insertion-action)

(smithy/sdk/shapes:define-structure service-insertion-segments common-lisp:nil
                                    ((send-via :target-type
                                      constrained-string-list :member-name
                                      "SendVia")
                                     (send-to :target-type
                                      constrained-string-list :member-name
                                      "SendTo"))
                                    (:shape-name "ServiceInsertionSegments"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type server-side-string
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (resource-id :target-type server-side-string
                                  :member-name "ResourceId")
                                 (resource-type :target-type server-side-string
                                  :member-name "ResourceType")
                                 (limit-code :target-type server-side-string
                                  :required common-lisp:t :member-name
                                  "LimitCode")
                                 (service-code :target-type server-side-string
                                  :required common-lisp:t :member-name
                                  "ServiceCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure site common-lisp:nil
                                    ((site-id :target-type site-id :member-name
                                      "SiteId")
                                     (site-arn :target-type site-arn
                                      :member-name "SiteArn")
                                     (global-network-id :target-type
                                      global-network-id :member-name
                                      "GlobalNetworkId")
                                     (description :target-type
                                      constrained-string :member-name
                                      "Description")
                                     (location :target-type location
                                      :member-name "Location")
                                     (created-at :target-type date-time
                                      :member-name "CreatedAt")
                                     (state :target-type site-state
                                      :member-name "State")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "Site"))

(smithy/sdk/shapes:define-type site-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type site-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list site-id-list :member site-id)

(smithy/sdk/shapes:define-list site-list :member site)

(smithy/sdk/shapes:define-enum site-state
    common-lisp:nil
  (:pending "PENDING")
  (:available "AVAILABLE")
  (:deleting "DELETING")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-structure site-to-site-vpn-attachment common-lisp:nil
                                    ((attachment :target-type attachment
                                      :member-name "Attachment")
                                     (vpn-connection-arn :target-type
                                      vpn-connection-arn :member-name
                                      "VpnConnectionArn"))
                                    (:shape-name "SiteToSiteVpnAttachment"))

(smithy/sdk/shapes:define-input
 start-organization-service-access-update-request common-lisp:nil
 ((action :target-type action :required common-lisp:t :member-name "Action"))
 (:shape-name "StartOrganizationServiceAccessUpdateRequest"))

(smithy/sdk/shapes:define-output
 start-organization-service-access-update-response common-lisp:nil
 ((organization-status :target-type organization-status :member-name
   "OrganizationStatus"))
 (:shape-name "StartOrganizationServiceAccessUpdateResponse"))

(smithy/sdk/shapes:define-input start-route-analysis-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (source :target-type
                                  route-analysis-endpoint-options-specification
                                  :required common-lisp:t :member-name
                                  "Source")
                                 (destination :target-type
                                  route-analysis-endpoint-options-specification
                                  :required common-lisp:t :member-name
                                  "Destination")
                                 (include-return-path :target-type boolean
                                  :member-name "IncludeReturnPath")
                                 (use-middleboxes :target-type boolean
                                  :member-name "UseMiddleboxes"))
                                (:shape-name "StartRouteAnalysisRequest"))

(smithy/sdk/shapes:define-output start-route-analysis-response common-lisp:nil
                                 ((route-analysis :target-type route-analysis
                                   :member-name "RouteAnalysis"))
                                 (:shape-name "StartRouteAnalysisResponse"))

(smithy/sdk/shapes:define-type subnet-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-arn-list :member subnet-arn)

(smithy/sdk/shapes:define-type synthesized-json-core-network-policy-document
                               smithy/sdk/smithy-types:string :media-type
                               "application/json")

(smithy/sdk/shapes:define-type synthesized-json-resource-policy-document
                               smithy/sdk/smithy-types:string :media-type
                               "application/json")

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :member-name
                                      "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type server-side-string
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type transit-gateway-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list transit-gateway-arn-list :member
                               transit-gateway-arn)

(smithy/sdk/shapes:define-type transit-gateway-attachment-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type transit-gateway-attachment-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type transit-gateway-connect-peer-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list transit-gateway-connect-peer-arn-list :member
                               transit-gateway-connect-peer-arn)

(smithy/sdk/shapes:define-structure transit-gateway-connect-peer-association
                                    common-lisp:nil
                                    ((transit-gateway-connect-peer-arn
                                      :target-type
                                      transit-gateway-connect-peer-arn
                                      :member-name
                                      "TransitGatewayConnectPeerArn")
                                     (global-network-id :target-type
                                      global-network-id :member-name
                                      "GlobalNetworkId")
                                     (device-id :target-type device-id
                                      :member-name "DeviceId")
                                     (link-id :target-type link-id :member-name
                                      "LinkId")
                                     (state :target-type
                                      transit-gateway-connect-peer-association-state
                                      :member-name "State"))
                                    (:shape-name
                                     "TransitGatewayConnectPeerAssociation"))

(smithy/sdk/shapes:define-list transit-gateway-connect-peer-association-list
                               :member transit-gateway-connect-peer-association)

(smithy/sdk/shapes:define-enum transit-gateway-connect-peer-association-state
    common-lisp:nil
  (:pending "PENDING")
  (:available "AVAILABLE")
  (:deleting "DELETING")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-structure transit-gateway-peering common-lisp:nil
                                    ((peering :target-type peering :member-name
                                      "Peering")
                                     (transit-gateway-arn :target-type
                                      transit-gateway-arn :member-name
                                      "TransitGatewayArn")
                                     (transit-gateway-peering-attachment-id
                                      :target-type
                                      transit-gateway-peering-attachment-id
                                      :member-name
                                      "TransitGatewayPeeringAttachmentId"))
                                    (:shape-name "TransitGatewayPeering"))

(smithy/sdk/shapes:define-type transit-gateway-peering-attachment-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure transit-gateway-registration
                                    common-lisp:nil
                                    ((global-network-id :target-type
                                      global-network-id :member-name
                                      "GlobalNetworkId")
                                     (transit-gateway-arn :target-type
                                      transit-gateway-arn :member-name
                                      "TransitGatewayArn")
                                     (state :target-type
                                      transit-gateway-registration-state-reason
                                      :member-name "State"))
                                    (:shape-name "TransitGatewayRegistration"))

(smithy/sdk/shapes:define-list transit-gateway-registration-list :member
                               transit-gateway-registration)

(smithy/sdk/shapes:define-enum transit-gateway-registration-state
    common-lisp:nil
  (:pending "PENDING")
  (:available "AVAILABLE")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure transit-gateway-registration-state-reason
                                    common-lisp:nil
                                    ((code :target-type
                                      transit-gateway-registration-state
                                      :member-name "Code")
                                     (message :target-type constrained-string
                                      :member-name "Message"))
                                    (:shape-name
                                     "TransitGatewayRegistrationStateReason"))

(smithy/sdk/shapes:define-type transit-gateway-route-table-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure transit-gateway-route-table-attachment
                                    common-lisp:nil
                                    ((attachment :target-type attachment
                                      :member-name "Attachment")
                                     (peering-id :target-type peering-id
                                      :member-name "PeeringId")
                                     (transit-gateway-route-table-arn
                                      :target-type
                                      transit-gateway-route-table-arn
                                      :member-name
                                      "TransitGatewayRouteTableArn"))
                                    (:shape-name
                                     "TransitGatewayRouteTableAttachment"))

(smithy/sdk/shapes:define-enum tunnel-protocol
    common-lisp:nil
  (:gre "GRE")
  (:no-encap "NO_ENCAP"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-connection-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "ConnectionId" :http-label common-lisp:t)
                                 (link-id :target-type link-id :member-name
                                  "LinkId")
                                 (connected-link-id :target-type link-id
                                  :member-name "ConnectedLinkId")
                                 (description :target-type constrained-string
                                  :member-name "Description"))
                                (:shape-name "UpdateConnectionRequest"))

(smithy/sdk/shapes:define-output update-connection-response common-lisp:nil
                                 ((connection :target-type connection
                                   :member-name "Connection"))
                                 (:shape-name "UpdateConnectionResponse"))

(smithy/sdk/shapes:define-input update-core-network-request common-lisp:nil
                                ((core-network-id :target-type core-network-id
                                  :required common-lisp:t :member-name
                                  "CoreNetworkId" :http-label common-lisp:t)
                                 (description :target-type constrained-string
                                  :member-name "Description"))
                                (:shape-name "UpdateCoreNetworkRequest"))

(smithy/sdk/shapes:define-output update-core-network-response common-lisp:nil
                                 ((core-network :target-type core-network
                                   :member-name "CoreNetwork"))
                                 (:shape-name "UpdateCoreNetworkResponse"))

(smithy/sdk/shapes:define-input update-device-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (device-id :target-type device-id :required
                                  common-lisp:t :member-name "DeviceId"
                                  :http-label common-lisp:t)
                                 (awslocation :target-type awslocation
                                  :member-name "AWSLocation")
                                 (description :target-type constrained-string
                                  :member-name "Description")
                                 (type :target-type constrained-string
                                  :member-name "Type")
                                 (vendor :target-type constrained-string
                                  :member-name "Vendor")
                                 (model :target-type constrained-string
                                  :member-name "Model")
                                 (serial-number :target-type constrained-string
                                  :member-name "SerialNumber")
                                 (location :target-type location :member-name
                                  "Location")
                                 (site-id :target-type site-id :member-name
                                  "SiteId"))
                                (:shape-name "UpdateDeviceRequest"))

(smithy/sdk/shapes:define-output update-device-response common-lisp:nil
                                 ((device :target-type device :member-name
                                   "Device"))
                                 (:shape-name "UpdateDeviceResponse"))

(smithy/sdk/shapes:define-input
 update-direct-connect-gateway-attachment-request common-lisp:nil
 ((attachment-id :target-type attachment-id :required common-lisp:t
   :member-name "AttachmentId" :http-label common-lisp:t)
  (edge-locations :target-type external-region-code-list :member-name
   "EdgeLocations"))
 (:shape-name "UpdateDirectConnectGatewayAttachmentRequest"))

(smithy/sdk/shapes:define-output
 update-direct-connect-gateway-attachment-response common-lisp:nil
 ((direct-connect-gateway-attachment :target-type
   direct-connect-gateway-attachment :member-name
   "DirectConnectGatewayAttachment"))
 (:shape-name "UpdateDirectConnectGatewayAttachmentResponse"))

(smithy/sdk/shapes:define-input update-global-network-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (description :target-type constrained-string
                                  :member-name "Description"))
                                (:shape-name "UpdateGlobalNetworkRequest"))

(smithy/sdk/shapes:define-output update-global-network-response common-lisp:nil
                                 ((global-network :target-type global-network
                                   :member-name "GlobalNetwork"))
                                 (:shape-name "UpdateGlobalNetworkResponse"))

(smithy/sdk/shapes:define-input update-link-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (link-id :target-type link-id :required
                                  common-lisp:t :member-name "LinkId"
                                  :http-label common-lisp:t)
                                 (description :target-type constrained-string
                                  :member-name "Description")
                                 (type :target-type constrained-string
                                  :member-name "Type")
                                 (bandwidth :target-type bandwidth :member-name
                                  "Bandwidth")
                                 (provider :target-type constrained-string
                                  :member-name "Provider"))
                                (:shape-name "UpdateLinkRequest"))

(smithy/sdk/shapes:define-output update-link-response common-lisp:nil
                                 ((link :target-type link :member-name "Link"))
                                 (:shape-name "UpdateLinkResponse"))

(smithy/sdk/shapes:define-input update-network-resource-metadata-request
                                common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t)
                                 (metadata :target-type
                                  network-resource-metadata-map :required
                                  common-lisp:t :member-name "Metadata"))
                                (:shape-name
                                 "UpdateNetworkResourceMetadataRequest"))

(smithy/sdk/shapes:define-output update-network-resource-metadata-response
                                 common-lisp:nil
                                 ((resource-arn :target-type resource-arn
                                   :member-name "ResourceArn")
                                  (metadata :target-type
                                   network-resource-metadata-map :member-name
                                   "Metadata"))
                                 (:shape-name
                                  "UpdateNetworkResourceMetadataResponse"))

(smithy/sdk/shapes:define-input update-site-request common-lisp:nil
                                ((global-network-id :target-type
                                  global-network-id :required common-lisp:t
                                  :member-name "GlobalNetworkId" :http-label
                                  common-lisp:t)
                                 (site-id :target-type site-id :required
                                  common-lisp:t :member-name "SiteId"
                                  :http-label common-lisp:t)
                                 (description :target-type constrained-string
                                  :member-name "Description")
                                 (location :target-type location :member-name
                                  "Location"))
                                (:shape-name "UpdateSiteRequest"))

(smithy/sdk/shapes:define-output update-site-response common-lisp:nil
                                 ((site :target-type site :member-name "Site"))
                                 (:shape-name "UpdateSiteResponse"))

(smithy/sdk/shapes:define-input update-vpc-attachment-request common-lisp:nil
                                ((attachment-id :target-type attachment-id
                                  :required common-lisp:t :member-name
                                  "AttachmentId" :http-label common-lisp:t)
                                 (add-subnet-arns :target-type subnet-arn-list
                                  :member-name "AddSubnetArns")
                                 (remove-subnet-arns :target-type
                                  subnet-arn-list :member-name
                                  "RemoveSubnetArns")
                                 (options :target-type vpc-options :member-name
                                  "Options"))
                                (:shape-name "UpdateVpcAttachmentRequest"))

(smithy/sdk/shapes:define-output update-vpc-attachment-response common-lisp:nil
                                 ((vpc-attachment :target-type vpc-attachment
                                   :member-name "VpcAttachment"))
                                 (:shape-name "UpdateVpcAttachmentResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type server-side-string
                                  :required common-lisp:t :member-name
                                  "Message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "Reason")
                                 (fields :target-type
                                  validation-exception-field-list :member-name
                                  "Fields"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type server-side-string
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (message :target-type server-side-string
                                      :required common-lisp:t :member-name
                                      "Message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:unknown-operation "UnknownOperation")
  (:cannot-parse "CannotParse")
  (:field-validation-failed "FieldValidationFailed")
  (:other "Other"))

(smithy/sdk/shapes:define-structure via common-lisp:nil
                                    ((network-function-groups :target-type
                                      network-function-group-list :member-name
                                      "NetworkFunctionGroups")
                                     (with-edge-overrides :target-type
                                      with-edge-overrides-list :member-name
                                      "WithEdgeOverrides"))
                                    (:shape-name "Via"))

(smithy/sdk/shapes:define-type vpc-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vpc-attachment common-lisp:nil
                                    ((attachment :target-type attachment
                                      :member-name "Attachment")
                                     (subnet-arns :target-type subnet-arn-list
                                      :member-name "SubnetArns")
                                     (options :target-type vpc-options
                                      :member-name "Options"))
                                    (:shape-name "VpcAttachment"))

(smithy/sdk/shapes:define-structure vpc-options common-lisp:nil
                                    ((ipv6support :target-type boolean
                                      :member-name "Ipv6Support")
                                     (appliance-mode-support :target-type
                                      boolean :member-name
                                      "ApplianceModeSupport")
                                     (dns-support :target-type boolean
                                      :member-name "DnsSupport")
                                     (security-group-referencing-support
                                      :target-type boolean :member-name
                                      "SecurityGroupReferencingSupport"))
                                    (:shape-name "VpcOptions"))

(smithy/sdk/shapes:define-type vpn-connection-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure when-sent-to common-lisp:nil
                                    ((when-sent-to-segments-list :target-type
                                      when-sent-to-segments-list :member-name
                                      "WhenSentToSegmentsList"))
                                    (:shape-name "WhenSentTo"))

(smithy/sdk/shapes:define-list when-sent-to-segments-list :member
                               constrained-string)

(smithy/sdk/shapes:define-list with-edge-overrides-list :member edge-override)

(smithy/sdk/operation:define-operation accept-attachment :shape-name
                                       "AcceptAttachment" :input
                                       accept-attachment-request :output
                                       accept-attachment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/attachments/{AttachmentId}/accept"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-connect-peer :shape-name
                                       "AssociateConnectPeer" :input
                                       associate-connect-peer-request :output
                                       associate-connect-peer-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/global-networks/{GlobalNetworkId}/connect-peer-associations"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-customer-gateway :shape-name
                                       "AssociateCustomerGateway" :input
                                       associate-customer-gateway-request
                                       :output
                                       associate-customer-gateway-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/global-networks/{GlobalNetworkId}/customer-gateway-associations"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-link :shape-name
                                       "AssociateLink" :input
                                       associate-link-request :output
                                       associate-link-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/global-networks/{GlobalNetworkId}/link-associations"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-transit-gateway-connect-peer
                                       :shape-name
                                       "AssociateTransitGatewayConnectPeer"
                                       :input
                                       associate-transit-gateway-connect-peer-request
                                       :output
                                       associate-transit-gateway-connect-peer-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/global-networks/{GlobalNetworkId}/transit-gateway-connect-peer-associations"
                                       :code 200)

(smithy/sdk/operation:define-operation create-connect-attachment :shape-name
                                       "CreateConnectAttachment" :input
                                       create-connect-attachment-request
                                       :output
                                       create-connect-attachment-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/connect-attachments" :code 200)

(smithy/sdk/operation:define-operation create-connect-peer :shape-name
                                       "CreateConnectPeer" :input
                                       create-connect-peer-request :output
                                       create-connect-peer-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/connect-peers"
                                       :code 200)

(smithy/sdk/operation:define-operation create-connection :shape-name
                                       "CreateConnection" :input
                                       create-connection-request :output
                                       create-connection-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/global-networks/{GlobalNetworkId}/connections"
                                       :code 200)

(smithy/sdk/operation:define-operation create-core-network :shape-name
                                       "CreateCoreNetwork" :input
                                       create-core-network-request :output
                                       create-core-network-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        core-network-policy-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/core-networks"
                                       :code 200)

(smithy/sdk/operation:define-operation create-device :shape-name "CreateDevice"
                                       :input create-device-request :output
                                       create-device-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/global-networks/{GlobalNetworkId}/devices"
                                       :code 200)

(smithy/sdk/operation:define-operation create-direct-connect-gateway-attachment
                                       :shape-name
                                       "CreateDirectConnectGatewayAttachment"
                                       :input
                                       create-direct-connect-gateway-attachment-request
                                       :output
                                       create-direct-connect-gateway-attachment-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/direct-connect-gateway-attachments"
                                       :code 200)

(smithy/sdk/operation:define-operation create-global-network :shape-name
                                       "CreateGlobalNetwork" :input
                                       create-global-network-request :output
                                       create-global-network-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/global-networks"
                                       :code 200)

(smithy/sdk/operation:define-operation create-link :shape-name "CreateLink"
                                       :input create-link-request :output
                                       create-link-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/global-networks/{GlobalNetworkId}/links"
                                       :code 200)

(smithy/sdk/operation:define-operation create-site :shape-name "CreateSite"
                                       :input create-site-request :output
                                       create-site-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/global-networks/{GlobalNetworkId}/sites"
                                       :code 200)

(smithy/sdk/operation:define-operation create-site-to-site-vpn-attachment
                                       :shape-name
                                       "CreateSiteToSiteVpnAttachment" :input
                                       create-site-to-site-vpn-attachment-request
                                       :output
                                       create-site-to-site-vpn-attachment-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/site-to-site-vpn-attachments" :code
                                       200)

(smithy/sdk/operation:define-operation create-transit-gateway-peering
                                       :shape-name
                                       "CreateTransitGatewayPeering" :input
                                       create-transit-gateway-peering-request
                                       :output
                                       create-transit-gateway-peering-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/transit-gateway-peerings" :code 200)

(smithy/sdk/operation:define-operation
 create-transit-gateway-route-table-attachment :shape-name
 "CreateTransitGatewayRouteTableAttachment" :input
 create-transit-gateway-route-table-attachment-request :output
 create-transit-gateway-route-table-attachment-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri "/transit-gateway-route-table-attachments" :code 200)

(smithy/sdk/operation:define-operation create-vpc-attachment :shape-name
                                       "CreateVpcAttachment" :input
                                       create-vpc-attachment-request :output
                                       create-vpc-attachment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/vpc-attachments"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-attachment :shape-name
                                       "DeleteAttachment" :input
                                       delete-attachment-request :output
                                       delete-attachment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/attachments/{AttachmentId}" :code 200)

(smithy/sdk/operation:define-operation delete-connect-peer :shape-name
                                       "DeleteConnectPeer" :input
                                       delete-connect-peer-request :output
                                       delete-connect-peer-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/connect-peers/{ConnectPeerId}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-connection :shape-name
                                       "DeleteConnection" :input
                                       delete-connection-request :output
                                       delete-connection-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/global-networks/{GlobalNetworkId}/connections/{ConnectionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-core-network :shape-name
                                       "DeleteCoreNetwork" :input
                                       delete-core-network-request :output
                                       delete-core-network-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/core-networks/{CoreNetworkId}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-core-network-policy-version
                                       :shape-name
                                       "DeleteCoreNetworkPolicyVersion" :input
                                       delete-core-network-policy-version-request
                                       :output
                                       delete-core-network-policy-version-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/core-networks/{CoreNetworkId}/core-network-policy-versions/{PolicyVersionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-device :shape-name "DeleteDevice"
                                       :input delete-device-request :output
                                       delete-device-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/global-networks/{GlobalNetworkId}/devices/{DeviceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-global-network :shape-name
                                       "DeleteGlobalNetwork" :input
                                       delete-global-network-request :output
                                       delete-global-network-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/global-networks/{GlobalNetworkId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-link :shape-name "DeleteLink"
                                       :input delete-link-request :output
                                       delete-link-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/global-networks/{GlobalNetworkId}/links/{LinkId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-peering :shape-name
                                       "DeletePeering" :input
                                       delete-peering-request :output
                                       delete-peering-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/peerings/{PeeringId}" :code 200)

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-request :output
                                       delete-resource-policy-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/resource-policy/{ResourceArn}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-site :shape-name "DeleteSite"
                                       :input delete-site-request :output
                                       delete-site-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/global-networks/{GlobalNetworkId}/sites/{SiteId}"
                                       :code 200)

(smithy/sdk/operation:define-operation deregister-transit-gateway :shape-name
                                       "DeregisterTransitGateway" :input
                                       deregister-transit-gateway-request
                                       :output
                                       deregister-transit-gateway-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/global-networks/{GlobalNetworkId}/transit-gateway-registrations/{TransitGatewayArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-global-networks :shape-name
                                       "DescribeGlobalNetworks" :input
                                       describe-global-networks-request :output
                                       describe-global-networks-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/global-networks"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-connect-peer :shape-name
                                       "DisassociateConnectPeer" :input
                                       disassociate-connect-peer-request
                                       :output
                                       disassociate-connect-peer-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/global-networks/{GlobalNetworkId}/connect-peer-associations/{ConnectPeerId}"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-customer-gateway
                                       :shape-name
                                       "DisassociateCustomerGateway" :input
                                       disassociate-customer-gateway-request
                                       :output
                                       disassociate-customer-gateway-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/global-networks/{GlobalNetworkId}/customer-gateway-associations/{CustomerGatewayArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-link :shape-name
                                       "DisassociateLink" :input
                                       disassociate-link-request :output
                                       disassociate-link-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/global-networks/{GlobalNetworkId}/link-associations"
                                       :code 200)

(smithy/sdk/operation:define-operation
 disassociate-transit-gateway-connect-peer :shape-name
 "DisassociateTransitGatewayConnectPeer" :input
 disassociate-transit-gateway-connect-peer-request :output
 disassociate-transit-gateway-connect-peer-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "DELETE" :uri
 "/global-networks/{GlobalNetworkId}/transit-gateway-connect-peer-associations/{TransitGatewayConnectPeerArn}"
 :code 200)

(smithy/sdk/operation:define-operation execute-core-network-change-set
                                       :shape-name
                                       "ExecuteCoreNetworkChangeSet" :input
                                       execute-core-network-change-set-request
                                       :output
                                       execute-core-network-change-set-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/core-networks/{CoreNetworkId}/core-network-change-sets/{PolicyVersionId}/execute"
                                       :code 200)

(smithy/sdk/operation:define-operation get-connect-attachment :shape-name
                                       "GetConnectAttachment" :input
                                       get-connect-attachment-request :output
                                       get-connect-attachment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/connect-attachments/{AttachmentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-connect-peer :shape-name
                                       "GetConnectPeer" :input
                                       get-connect-peer-request :output
                                       get-connect-peer-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/connect-peers/{ConnectPeerId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-connect-peer-associations
                                       :shape-name "GetConnectPeerAssociations"
                                       :input
                                       get-connect-peer-associations-request
                                       :output
                                       get-connect-peer-associations-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/global-networks/{GlobalNetworkId}/connect-peer-associations"
                                       :code 200)

(smithy/sdk/operation:define-operation get-connections :shape-name
                                       "GetConnections" :input
                                       get-connections-request :output
                                       get-connections-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/global-networks/{GlobalNetworkId}/connections"
                                       :code 200)

(smithy/sdk/operation:define-operation get-core-network :shape-name
                                       "GetCoreNetwork" :input
                                       get-core-network-request :output
                                       get-core-network-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/core-networks/{CoreNetworkId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-core-network-change-events
                                       :shape-name "GetCoreNetworkChangeEvents"
                                       :input
                                       get-core-network-change-events-request
                                       :output
                                       get-core-network-change-events-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/core-networks/{CoreNetworkId}/core-network-change-events/{PolicyVersionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-core-network-change-set :shape-name
                                       "GetCoreNetworkChangeSet" :input
                                       get-core-network-change-set-request
                                       :output
                                       get-core-network-change-set-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/core-networks/{CoreNetworkId}/core-network-change-sets/{PolicyVersionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-core-network-policy :shape-name
                                       "GetCoreNetworkPolicy" :input
                                       get-core-network-policy-request :output
                                       get-core-network-policy-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/core-networks/{CoreNetworkId}/core-network-policy"
                                       :code 200)

(smithy/sdk/operation:define-operation get-customer-gateway-associations
                                       :shape-name
                                       "GetCustomerGatewayAssociations" :input
                                       get-customer-gateway-associations-request
                                       :output
                                       get-customer-gateway-associations-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/global-networks/{GlobalNetworkId}/customer-gateway-associations"
                                       :code 200)

(smithy/sdk/operation:define-operation get-devices :shape-name "GetDevices"
                                       :input get-devices-request :output
                                       get-devices-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/global-networks/{GlobalNetworkId}/devices"
                                       :code 200)

(smithy/sdk/operation:define-operation get-direct-connect-gateway-attachment
                                       :shape-name
                                       "GetDirectConnectGatewayAttachment"
                                       :input
                                       get-direct-connect-gateway-attachment-request
                                       :output
                                       get-direct-connect-gateway-attachment-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/direct-connect-gateway-attachments/{AttachmentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-link-associations :shape-name
                                       "GetLinkAssociations" :input
                                       get-link-associations-request :output
                                       get-link-associations-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/global-networks/{GlobalNetworkId}/link-associations"
                                       :code 200)

(smithy/sdk/operation:define-operation get-links :shape-name "GetLinks" :input
                                       get-links-request :output
                                       get-links-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/global-networks/{GlobalNetworkId}/links"
                                       :code 200)

(smithy/sdk/operation:define-operation get-network-resource-counts :shape-name
                                       "GetNetworkResourceCounts" :input
                                       get-network-resource-counts-request
                                       :output
                                       get-network-resource-counts-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/global-networks/{GlobalNetworkId}/network-resource-count"
                                       :code 200)

(smithy/sdk/operation:define-operation get-network-resource-relationships
                                       :shape-name
                                       "GetNetworkResourceRelationships" :input
                                       get-network-resource-relationships-request
                                       :output
                                       get-network-resource-relationships-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/global-networks/{GlobalNetworkId}/network-resource-relationships"
                                       :code 200)

(smithy/sdk/operation:define-operation get-network-resources :shape-name
                                       "GetNetworkResources" :input
                                       get-network-resources-request :output
                                       get-network-resources-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/global-networks/{GlobalNetworkId}/network-resources"
                                       :code 200)

(smithy/sdk/operation:define-operation get-network-routes :shape-name
                                       "GetNetworkRoutes" :input
                                       get-network-routes-request :output
                                       get-network-routes-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/global-networks/{GlobalNetworkId}/network-routes"
                                       :code 200)

(smithy/sdk/operation:define-operation get-network-telemetry :shape-name
                                       "GetNetworkTelemetry" :input
                                       get-network-telemetry-request :output
                                       get-network-telemetry-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/global-networks/{GlobalNetworkId}/network-telemetry"
                                       :code 200)

(smithy/sdk/operation:define-operation get-resource-policy :shape-name
                                       "GetResourcePolicy" :input
                                       get-resource-policy-request :output
                                       get-resource-policy-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/resource-policy/{ResourceArn}" :code
                                       200)

(smithy/sdk/operation:define-operation get-route-analysis :shape-name
                                       "GetRouteAnalysis" :input
                                       get-route-analysis-request :output
                                       get-route-analysis-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/global-networks/{GlobalNetworkId}/route-analyses/{RouteAnalysisId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-site-to-site-vpn-attachment
                                       :shape-name "GetSiteToSiteVpnAttachment"
                                       :input
                                       get-site-to-site-vpn-attachment-request
                                       :output
                                       get-site-to-site-vpn-attachment-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/site-to-site-vpn-attachments/{AttachmentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-sites :shape-name "GetSites" :input
                                       get-sites-request :output
                                       get-sites-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/global-networks/{GlobalNetworkId}/sites"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-transit-gateway-connect-peer-associations :shape-name
 "GetTransitGatewayConnectPeerAssociations" :input
 get-transit-gateway-connect-peer-associations-request :output
 get-transit-gateway-connect-peer-associations-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/global-networks/{GlobalNetworkId}/transit-gateway-connect-peer-associations"
 :code 200)

(smithy/sdk/operation:define-operation get-transit-gateway-peering :shape-name
                                       "GetTransitGatewayPeering" :input
                                       get-transit-gateway-peering-request
                                       :output
                                       get-transit-gateway-peering-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/transit-gateway-peerings/{PeeringId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-transit-gateway-registrations
                                       :shape-name
                                       "GetTransitGatewayRegistrations" :input
                                       get-transit-gateway-registrations-request
                                       :output
                                       get-transit-gateway-registrations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/global-networks/{GlobalNetworkId}/transit-gateway-registrations"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-transit-gateway-route-table-attachment :shape-name
 "GetTransitGatewayRouteTableAttachment" :input
 get-transit-gateway-route-table-attachment-request :output
 get-transit-gateway-route-table-attachment-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri "/transit-gateway-route-table-attachments/{AttachmentId}"
 :code 200)

(smithy/sdk/operation:define-operation get-vpc-attachment :shape-name
                                       "GetVpcAttachment" :input
                                       get-vpc-attachment-request :output
                                       get-vpc-attachment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/vpc-attachments/{AttachmentId}" :code
                                       200)

(smithy/sdk/operation:define-operation list-attachments :shape-name
                                       "ListAttachments" :input
                                       list-attachments-request :output
                                       list-attachments-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/attachments" :code
                                       200)

(smithy/sdk/operation:define-operation list-connect-peers :shape-name
                                       "ListConnectPeers" :input
                                       list-connect-peers-request :output
                                       list-connect-peers-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/connect-peers"
                                       :code 200)

(smithy/sdk/operation:define-operation list-core-network-policy-versions
                                       :shape-name
                                       "ListCoreNetworkPolicyVersions" :input
                                       list-core-network-policy-versions-request
                                       :output
                                       list-core-network-policy-versions-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/core-networks/{CoreNetworkId}/core-network-policy-versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-core-networks :shape-name
                                       "ListCoreNetworks" :input
                                       list-core-networks-request :output
                                       list-core-networks-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/core-networks"
                                       :code 200)

(smithy/sdk/operation:define-operation list-organization-service-access-status
                                       :shape-name
                                       "ListOrganizationServiceAccessStatus"
                                       :input
                                       list-organization-service-access-status-request
                                       :output
                                       list-organization-service-access-status-response
                                       :errors common-lisp:nil :method "GET"
                                       :uri "/organizations/service-access"
                                       :code 200)

(smithy/sdk/operation:define-operation list-peerings :shape-name "ListPeerings"
                                       :input list-peerings-request :output
                                       list-peerings-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/peerings" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation put-core-network-policy :shape-name
                                       "PutCoreNetworkPolicy" :input
                                       put-core-network-policy-request :output
                                       put-core-network-policy-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        core-network-policy-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/core-networks/{CoreNetworkId}/core-network-policy"
                                       :code 200)

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-request :output
                                       put-resource-policy-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/resource-policy/{ResourceArn}" :code
                                       200)

(smithy/sdk/operation:define-operation register-transit-gateway :shape-name
                                       "RegisterTransitGateway" :input
                                       register-transit-gateway-request :output
                                       register-transit-gateway-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/global-networks/{GlobalNetworkId}/transit-gateway-registrations"
                                       :code 200)

(smithy/sdk/operation:define-operation reject-attachment :shape-name
                                       "RejectAttachment" :input
                                       reject-attachment-request :output
                                       reject-attachment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/attachments/{AttachmentId}/reject"
                                       :code 200)

(smithy/sdk/operation:define-operation restore-core-network-policy-version
                                       :shape-name
                                       "RestoreCoreNetworkPolicyVersion" :input
                                       restore-core-network-policy-version-request
                                       :output
                                       restore-core-network-policy-version-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/core-networks/{CoreNetworkId}/core-network-policy-versions/{PolicyVersionId}/restore"
                                       :code 200)

(smithy/sdk/operation:define-operation start-organization-service-access-update
                                       :shape-name
                                       "StartOrganizationServiceAccessUpdate"
                                       :input
                                       start-organization-service-access-update-request
                                       :output
                                       start-organization-service-access-update-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/organizations/service-access" :code
                                       200)

(smithy/sdk/operation:define-operation start-route-analysis :shape-name
                                       "StartRouteAnalysis" :input
                                       start-route-analysis-request :output
                                       start-route-analysis-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/global-networks/{GlobalNetworkId}/route-analyses"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-connection :shape-name
                                       "UpdateConnection" :input
                                       update-connection-request :output
                                       update-connection-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/global-networks/{GlobalNetworkId}/connections/{ConnectionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-core-network :shape-name
                                       "UpdateCoreNetwork" :input
                                       update-core-network-request :output
                                       update-core-network-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/core-networks/{CoreNetworkId}" :code
                                       200)

(smithy/sdk/operation:define-operation update-device :shape-name "UpdateDevice"
                                       :input update-device-request :output
                                       update-device-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/global-networks/{GlobalNetworkId}/devices/{DeviceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-direct-connect-gateway-attachment
                                       :shape-name
                                       "UpdateDirectConnectGatewayAttachment"
                                       :input
                                       update-direct-connect-gateway-attachment-request
                                       :output
                                       update-direct-connect-gateway-attachment-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/direct-connect-gateway-attachments/{AttachmentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-global-network :shape-name
                                       "UpdateGlobalNetwork" :input
                                       update-global-network-request :output
                                       update-global-network-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/global-networks/{GlobalNetworkId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-link :shape-name "UpdateLink"
                                       :input update-link-request :output
                                       update-link-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/global-networks/{GlobalNetworkId}/links/{LinkId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-network-resource-metadata
                                       :shape-name
                                       "UpdateNetworkResourceMetadata" :input
                                       update-network-resource-metadata-request
                                       :output
                                       update-network-resource-metadata-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/global-networks/{GlobalNetworkId}/network-resources/{ResourceArn}/metadata"
                                       :code 200)

(smithy/sdk/operation:define-operation update-site :shape-name "UpdateSite"
                                       :input update-site-request :output
                                       update-site-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/global-networks/{GlobalNetworkId}/sites/{SiteId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-vpc-attachment :shape-name
                                       "UpdateVpcAttachment" :input
                                       update-vpc-attachment-request :output
                                       update-vpc-attachment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/vpc-attachments/{AttachmentId}" :code
                                       200)
