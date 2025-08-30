(uiop/package:define-package #:pira/direct-connect (:use)
                             (:export #:asn
                              #:accept-direct-connect-gateway-association-proposal
                              #:address-family #:agreement-list
                              #:agreement-name
                              #:allocate-connection-on-interconnect
                              #:allocate-hosted-connection
                              #:allocate-private-virtual-interface
                              #:allocate-public-virtual-interface
                              #:allocate-transit-virtual-interface
                              #:amazon-address #:associate-connection-with-lag
                              #:associate-hosted-connection
                              #:associate-mac-sec-key
                              #:associate-virtual-interface
                              #:associated-core-network #:associated-gateway
                              #:associated-gateway-id
                              #:available-mac-sec-port-speeds
                              #:available-port-speeds #:aws-device
                              #:aws-device-v2 #:aws-logical-device-id
                              #:bgpauth-key #:bgppeer #:bgppeer-id
                              #:bgppeer-id-list #:bgppeer-list #:bgppeer-state
                              #:bgpstatus #:bandwidth #:boolean-flag #:cidr
                              #:cak #:ckn #:confirm-connection
                              #:confirm-customer-agreement
                              #:confirm-private-virtual-interface
                              #:confirm-public-virtual-interface
                              #:confirm-transit-virtual-interface #:connection
                              #:connection-id #:connection-list
                              #:connection-name #:connection-state
                              #:connections #:core-network-attachment-id
                              #:core-network-identifier #:count
                              #:create-bgppeer #:create-connection
                              #:create-direct-connect-gateway
                              #:create-direct-connect-gateway-association
                              #:create-direct-connect-gateway-association-proposal
                              #:create-interconnect #:create-lag
                              #:create-private-virtual-interface
                              #:create-public-virtual-interface
                              #:create-transit-virtual-interface
                              #:customer-address #:customer-agreement
                              #:delete-bgppeer #:delete-connection
                              #:delete-direct-connect-gateway
                              #:delete-direct-connect-gateway-association
                              #:delete-direct-connect-gateway-association-proposal
                              #:delete-interconnect #:delete-lag
                              #:delete-virtual-interface
                              #:describe-connection-loa #:describe-connections
                              #:describe-connections-on-interconnect
                              #:describe-customer-metadata
                              #:describe-direct-connect-gateway-association-proposals
                              #:describe-direct-connect-gateway-associations
                              #:describe-direct-connect-gateway-attachments
                              #:describe-direct-connect-gateways
                              #:describe-hosted-connections
                              #:describe-interconnect-loa
                              #:describe-interconnects #:describe-lags
                              #:describe-loa #:describe-locations
                              #:describe-router-configuration #:describe-tags
                              #:describe-virtual-gateways
                              #:describe-virtual-interfaces
                              #:direct-connect-client-exception
                              #:direct-connect-gateway
                              #:direct-connect-gateway-association
                              #:direct-connect-gateway-association-id
                              #:direct-connect-gateway-association-list
                              #:direct-connect-gateway-association-proposal
                              #:direct-connect-gateway-association-proposal-id
                              #:direct-connect-gateway-association-proposal-list
                              #:direct-connect-gateway-association-proposal-state
                              #:direct-connect-gateway-association-state
                              #:direct-connect-gateway-attachment
                              #:direct-connect-gateway-attachment-list
                              #:direct-connect-gateway-attachment-state
                              #:direct-connect-gateway-attachment-type
                              #:direct-connect-gateway-id
                              #:direct-connect-gateway-list
                              #:direct-connect-gateway-name
                              #:direct-connect-gateway-state
                              #:direct-connect-server-exception
                              #:disassociate-connection-from-lag
                              #:disassociate-mac-sec-key
                              #:duplicate-tag-keys-exception #:enable-site-link
                              #:encryption-mode #:end-time #:error-message
                              #:failure-test-history-status
                              #:gateway-id-to-associate #:gateway-identifier
                              #:gateway-type #:has-logical-redundancy
                              #:interconnect #:interconnect-id
                              #:interconnect-list #:interconnect-name
                              #:interconnect-state #:interconnects
                              #:jumbo-frame-capable #:lag #:lag-id #:lag-list
                              #:lag-name #:lag-state #:lags
                              #:list-virtual-interface-test-history #:loa
                              #:loa-content #:loa-content-type #:loa-issue-time
                              #:location #:location-code #:location-list
                              #:location-name #:locations #:long-asn #:mtu
                              #:mac-sec-capable #:mac-sec-key
                              #:mac-sec-key-list #:max-result-set-size
                              #:new-bgppeer #:new-private-virtual-interface
                              #:new-private-virtual-interface-allocation
                              #:new-public-virtual-interface
                              #:new-public-virtual-interface-allocation
                              #:new-transit-virtual-interface
                              #:new-transit-virtual-interface-allocation
                              #:nni-partner-type #:overture-service
                              #:owner-account #:pagination-token
                              #:partner-interconnect-mac-sec-capable
                              #:partner-name #:platform
                              #:port-encryption-status #:port-speed
                              #:provider-list #:provider-name #:region
                              #:request-macsec #:resource-arn
                              #:resource-arn-list #:resource-tag
                              #:resource-tag-list #:route-filter-prefix
                              #:route-filter-prefix-list #:router-config
                              #:router-type #:router-type-identifier
                              #:secret-arn #:site-link-enabled #:software
                              #:start-bgp-failover-test #:start-on-date
                              #:start-time #:state #:state-change-error
                              #:status #:stop-bgp-failover-test #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-value #:test-duration #:test-id
                              #:too-many-tags-exception #:untag-resource
                              #:update-connection
                              #:update-direct-connect-gateway
                              #:update-direct-connect-gateway-association
                              #:update-lag
                              #:update-virtual-interface-attributes #:vlan
                              #:vendor #:virtual-gateway #:virtual-gateway-id
                              #:virtual-gateway-list #:virtual-gateway-region
                              #:virtual-gateway-state #:virtual-gateways
                              #:virtual-interface #:virtual-interface-id
                              #:virtual-interface-list #:virtual-interface-name
                              #:virtual-interface-region
                              #:virtual-interface-state
                              #:virtual-interface-test-history
                              #:virtual-interface-test-history-list
                              #:virtual-interface-type #:virtual-interfaces
                              #:xslt-template-name
                              #:xslt-template-name-for-mac-sec
                              #:direct-connect-error))
(common-lisp:in-package #:pira/direct-connect)

(common-lisp:define-condition direct-connect-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service overture-service :shape-name
                                   "OvertureService" :version "2012-10-25"
                                   :title "AWS Direct Connect" :operations
                                   '(accept-direct-connect-gateway-association-proposal
                                     allocate-connection-on-interconnect
                                     allocate-hosted-connection
                                     allocate-private-virtual-interface
                                     allocate-public-virtual-interface
                                     allocate-transit-virtual-interface
                                     associate-connection-with-lag
                                     associate-hosted-connection
                                     associate-mac-sec-key
                                     associate-virtual-interface
                                     confirm-connection
                                     confirm-customer-agreement
                                     confirm-private-virtual-interface
                                     confirm-public-virtual-interface
                                     confirm-transit-virtual-interface
                                     create-bgppeer create-connection
                                     create-direct-connect-gateway
                                     create-direct-connect-gateway-association
                                     create-direct-connect-gateway-association-proposal
                                     create-interconnect create-lag
                                     create-private-virtual-interface
                                     create-public-virtual-interface
                                     create-transit-virtual-interface
                                     delete-bgppeer delete-connection
                                     delete-direct-connect-gateway
                                     delete-direct-connect-gateway-association
                                     delete-direct-connect-gateway-association-proposal
                                     delete-interconnect delete-lag
                                     delete-virtual-interface
                                     describe-connection-loa
                                     describe-connections
                                     describe-connections-on-interconnect
                                     describe-customer-metadata
                                     describe-direct-connect-gateway-association-proposals
                                     describe-direct-connect-gateway-associations
                                     describe-direct-connect-gateway-attachments
                                     describe-direct-connect-gateways
                                     describe-hosted-connections
                                     describe-interconnect-loa
                                     describe-interconnects describe-lags
                                     describe-loa describe-locations
                                     describe-router-configuration
                                     describe-tags describe-virtual-gateways
                                     describe-virtual-interfaces
                                     disassociate-connection-from-lag
                                     disassociate-mac-sec-key
                                     list-virtual-interface-test-history
                                     start-bgp-failover-test
                                     stop-bgp-failover-test tag-resource
                                     untag-resource update-connection
                                     update-direct-connect-gateway
                                     update-direct-connect-gateway-association
                                     update-lag
                                     update-virtual-interface-attributes)
                                   :xml-namespace
                                   '(:uri
                                     "http://directconnect.amazonaws.com/doc/2012-10-25/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Direct Connect")
                                      ("arnNamespace" . "directconnect")
                                      ("cloudFormationName" . "DirectConnect")
                                      ("cloudTrailEventSource"
                                       . "directconnect.amazonaws.com")
                                      ("docId" . "directconnect-2012-10-25")
                                      ("endpointPrefix" . "directconnect"))
                                     ("aws.auth#sigv4"
                                      ("name" . "directconnect"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type asn smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input
 accept-direct-connect-gateway-association-proposal-request common-lisp:nil
 ((direct-connect-gateway-id :target-type direct-connect-gateway-id :required
   common-lisp:t :member-name "directConnectGatewayId")
  (proposal-id :target-type direct-connect-gateway-association-proposal-id
   :required common-lisp:t :member-name "proposalId")
  (associated-gateway-owner-account :target-type owner-account :required
   common-lisp:t :member-name "associatedGatewayOwnerAccount")
  (override-allowed-prefixes-to-direct-connect-gateway :target-type
   route-filter-prefix-list :member-name
   "overrideAllowedPrefixesToDirectConnectGateway"))
 (:shape-name "AcceptDirectConnectGatewayAssociationProposalRequest"))

(smithy/sdk/shapes:define-output
 accept-direct-connect-gateway-association-proposal-result common-lisp:nil
 ((direct-connect-gateway-association :target-type
   direct-connect-gateway-association :member-name
   "directConnectGatewayAssociation"))
 (:shape-name "AcceptDirectConnectGatewayAssociationProposalResult"))

(smithy/sdk/shapes:define-enum address-family
    common-lisp:nil
  (:ipv4 "ipv4")
  (:ipv6 "ipv6"))

(smithy/sdk/shapes:define-list agreement-list :member customer-agreement)

(smithy/sdk/shapes:define-type agreement-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input allocate-connection-on-interconnect-request
                                common-lisp:nil
                                ((bandwidth :target-type bandwidth :required
                                  common-lisp:t :member-name "bandwidth")
                                 (connection-name :target-type connection-name
                                  :required common-lisp:t :member-name
                                  "connectionName")
                                 (owner-account :target-type owner-account
                                  :required common-lisp:t :member-name
                                  "ownerAccount")
                                 (interconnect-id :target-type interconnect-id
                                  :required common-lisp:t :member-name
                                  "interconnectId")
                                 (vlan :target-type vlan :required
                                  common-lisp:t :member-name "vlan"))
                                (:shape-name
                                 "AllocateConnectionOnInterconnectRequest"))

(smithy/sdk/shapes:define-input allocate-hosted-connection-request
                                common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "connectionId")
                                 (owner-account :target-type owner-account
                                  :required common-lisp:t :member-name
                                  "ownerAccount")
                                 (bandwidth :target-type bandwidth :required
                                  common-lisp:t :member-name "bandwidth")
                                 (connection-name :target-type connection-name
                                  :required common-lisp:t :member-name
                                  "connectionName")
                                 (vlan :target-type vlan :required
                                  common-lisp:t :member-name "vlan")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "AllocateHostedConnectionRequest"))

(smithy/sdk/shapes:define-input allocate-private-virtual-interface-request
                                common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "connectionId")
                                 (owner-account :target-type owner-account
                                  :required common-lisp:t :member-name
                                  "ownerAccount")
                                 (new-private-virtual-interface-allocation
                                  :target-type
                                  new-private-virtual-interface-allocation
                                  :required common-lisp:t :member-name
                                  "newPrivateVirtualInterfaceAllocation"))
                                (:shape-name
                                 "AllocatePrivateVirtualInterfaceRequest"))

(smithy/sdk/shapes:define-input allocate-public-virtual-interface-request
                                common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "connectionId")
                                 (owner-account :target-type owner-account
                                  :required common-lisp:t :member-name
                                  "ownerAccount")
                                 (new-public-virtual-interface-allocation
                                  :target-type
                                  new-public-virtual-interface-allocation
                                  :required common-lisp:t :member-name
                                  "newPublicVirtualInterfaceAllocation"))
                                (:shape-name
                                 "AllocatePublicVirtualInterfaceRequest"))

(smithy/sdk/shapes:define-input allocate-transit-virtual-interface-request
                                common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "connectionId")
                                 (owner-account :target-type owner-account
                                  :required common-lisp:t :member-name
                                  "ownerAccount")
                                 (new-transit-virtual-interface-allocation
                                  :target-type
                                  new-transit-virtual-interface-allocation
                                  :required common-lisp:t :member-name
                                  "newTransitVirtualInterfaceAllocation"))
                                (:shape-name
                                 "AllocateTransitVirtualInterfaceRequest"))

(smithy/sdk/shapes:define-output allocate-transit-virtual-interface-result
                                 common-lisp:nil
                                 ((virtual-interface :target-type
                                   virtual-interface :member-name
                                   "virtualInterface"))
                                 (:shape-name
                                  "AllocateTransitVirtualInterfaceResult"))

(smithy/sdk/shapes:define-type amazon-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input associate-connection-with-lag-request
                                common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "connectionId")
                                 (lag-id :target-type lag-id :required
                                  common-lisp:t :member-name "lagId"))
                                (:shape-name
                                 "AssociateConnectionWithLagRequest"))

(smithy/sdk/shapes:define-input associate-hosted-connection-request
                                common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "connectionId")
                                 (parent-connection-id :target-type
                                  connection-id :required common-lisp:t
                                  :member-name "parentConnectionId"))
                                (:shape-name
                                 "AssociateHostedConnectionRequest"))

(smithy/sdk/shapes:define-input associate-mac-sec-key-request common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "connectionId")
                                 (secret-arn :target-type secret-arn
                                  :member-name "secretARN")
                                 (ckn :target-type ckn :member-name "ckn")
                                 (cak :target-type cak :member-name "cak"))
                                (:shape-name "AssociateMacSecKeyRequest"))

(smithy/sdk/shapes:define-output associate-mac-sec-key-response common-lisp:nil
                                 ((connection-id :target-type connection-id
                                   :member-name "connectionId")
                                  (mac-sec-keys :target-type mac-sec-key-list
                                   :member-name "macSecKeys"))
                                 (:shape-name "AssociateMacSecKeyResponse"))

(smithy/sdk/shapes:define-input associate-virtual-interface-request
                                common-lisp:nil
                                ((virtual-interface-id :target-type
                                  virtual-interface-id :required common-lisp:t
                                  :member-name "virtualInterfaceId")
                                 (connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "connectionId"))
                                (:shape-name
                                 "AssociateVirtualInterfaceRequest"))

(smithy/sdk/shapes:define-structure associated-core-network common-lisp:nil
                                    ((id :target-type core-network-identifier
                                      :member-name "id")
                                     (owner-account :target-type owner-account
                                      :member-name "ownerAccount")
                                     (attachment-id :target-type
                                      core-network-attachment-id :member-name
                                      "attachmentId"))
                                    (:shape-name "AssociatedCoreNetwork"))

(smithy/sdk/shapes:define-structure associated-gateway common-lisp:nil
                                    ((id :target-type gateway-identifier
                                      :member-name "id")
                                     (type :target-type gateway-type
                                      :member-name "type")
                                     (owner-account :target-type owner-account
                                      :member-name "ownerAccount")
                                     (region :target-type region :member-name
                                      "region"))
                                    (:shape-name "AssociatedGateway"))

(smithy/sdk/shapes:define-type associated-gateway-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list available-mac-sec-port-speeds :member port-speed)

(smithy/sdk/shapes:define-list available-port-speeds :member port-speed)

(smithy/sdk/shapes:define-type aws-device smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aws-device-v2 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aws-logical-device-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bgpauth-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure bgppeer common-lisp:nil
                                    ((bgp-peer-id :target-type bgppeer-id
                                      :member-name "bgpPeerId")
                                     (asn :target-type asn :member-name "asn")
                                     (auth-key :target-type bgpauth-key
                                      :member-name "authKey")
                                     (address-family :target-type
                                      address-family :member-name
                                      "addressFamily")
                                     (amazon-address :target-type
                                      amazon-address :member-name
                                      "amazonAddress")
                                     (customer-address :target-type
                                      customer-address :member-name
                                      "customerAddress")
                                     (bgp-peer-state :target-type bgppeer-state
                                      :member-name "bgpPeerState")
                                     (bgp-status :target-type bgpstatus
                                      :member-name "bgpStatus")
                                     (aws-device-v2 :target-type aws-device-v2
                                      :member-name "awsDeviceV2")
                                     (aws-logical-device-id :target-type
                                      aws-logical-device-id :member-name
                                      "awsLogicalDeviceId"))
                                    (:shape-name "BGPPeer"))

(smithy/sdk/shapes:define-type bgppeer-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list bgppeer-id-list :member bgppeer-id)

(smithy/sdk/shapes:define-list bgppeer-list :member bgppeer)

(smithy/sdk/shapes:define-enum bgppeer-state
    common-lisp:nil
  (:verifying "verifying")
  (:pending "pending")
  (:available "available")
  (:deleting "deleting")
  (:deleted "deleted"))

(smithy/sdk/shapes:define-enum bgpstatus
    common-lisp:nil
  (:up "up")
  (:down "down")
  (:unknown "unknown"))

(smithy/sdk/shapes:define-type bandwidth smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean-flag smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type cidr smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cak smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ckn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input confirm-connection-request common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "connectionId"))
                                (:shape-name "ConfirmConnectionRequest"))

(smithy/sdk/shapes:define-output confirm-connection-response common-lisp:nil
                                 ((connection-state :target-type
                                   connection-state :member-name
                                   "connectionState"))
                                 (:shape-name "ConfirmConnectionResponse"))

(smithy/sdk/shapes:define-input confirm-customer-agreement-request
                                common-lisp:nil
                                ((agreement-name :target-type agreement-name
                                  :member-name "agreementName"))
                                (:shape-name "ConfirmCustomerAgreementRequest"))

(smithy/sdk/shapes:define-output confirm-customer-agreement-response
                                 common-lisp:nil
                                 ((status :target-type status :member-name
                                   "status"))
                                 (:shape-name
                                  "ConfirmCustomerAgreementResponse"))

(smithy/sdk/shapes:define-input confirm-private-virtual-interface-request
                                common-lisp:nil
                                ((virtual-interface-id :target-type
                                  virtual-interface-id :required common-lisp:t
                                  :member-name "virtualInterfaceId")
                                 (virtual-gateway-id :target-type
                                  virtual-gateway-id :member-name
                                  "virtualGatewayId")
                                 (direct-connect-gateway-id :target-type
                                  direct-connect-gateway-id :member-name
                                  "directConnectGatewayId"))
                                (:shape-name
                                 "ConfirmPrivateVirtualInterfaceRequest"))

(smithy/sdk/shapes:define-output confirm-private-virtual-interface-response
                                 common-lisp:nil
                                 ((virtual-interface-state :target-type
                                   virtual-interface-state :member-name
                                   "virtualInterfaceState"))
                                 (:shape-name
                                  "ConfirmPrivateVirtualInterfaceResponse"))

(smithy/sdk/shapes:define-input confirm-public-virtual-interface-request
                                common-lisp:nil
                                ((virtual-interface-id :target-type
                                  virtual-interface-id :required common-lisp:t
                                  :member-name "virtualInterfaceId"))
                                (:shape-name
                                 "ConfirmPublicVirtualInterfaceRequest"))

(smithy/sdk/shapes:define-output confirm-public-virtual-interface-response
                                 common-lisp:nil
                                 ((virtual-interface-state :target-type
                                   virtual-interface-state :member-name
                                   "virtualInterfaceState"))
                                 (:shape-name
                                  "ConfirmPublicVirtualInterfaceResponse"))

(smithy/sdk/shapes:define-input confirm-transit-virtual-interface-request
                                common-lisp:nil
                                ((virtual-interface-id :target-type
                                  virtual-interface-id :required common-lisp:t
                                  :member-name "virtualInterfaceId")
                                 (direct-connect-gateway-id :target-type
                                  direct-connect-gateway-id :required
                                  common-lisp:t :member-name
                                  "directConnectGatewayId"))
                                (:shape-name
                                 "ConfirmTransitVirtualInterfaceRequest"))

(smithy/sdk/shapes:define-output confirm-transit-virtual-interface-response
                                 common-lisp:nil
                                 ((virtual-interface-state :target-type
                                   virtual-interface-state :member-name
                                   "virtualInterfaceState"))
                                 (:shape-name
                                  "ConfirmTransitVirtualInterfaceResponse"))

(smithy/sdk/shapes:define-structure connection common-lisp:nil
                                    ((owner-account :target-type owner-account
                                      :member-name "ownerAccount")
                                     (connection-id :target-type connection-id
                                      :member-name "connectionId")
                                     (connection-name :target-type
                                      connection-name :member-name
                                      "connectionName")
                                     (connection-state :target-type
                                      connection-state :member-name
                                      "connectionState")
                                     (region :target-type region :member-name
                                      "region")
                                     (location :target-type location-code
                                      :member-name "location")
                                     (bandwidth :target-type bandwidth
                                      :member-name "bandwidth")
                                     (vlan :target-type vlan :member-name
                                      "vlan")
                                     (partner-name :target-type partner-name
                                      :member-name "partnerName")
                                     (loa-issue-time :target-type
                                      loa-issue-time :member-name
                                      "loaIssueTime")
                                     (lag-id :target-type lag-id :member-name
                                      "lagId")
                                     (aws-device :target-type aws-device
                                      :member-name "awsDevice")
                                     (jumbo-frame-capable :target-type
                                      jumbo-frame-capable :member-name
                                      "jumboFrameCapable")
                                     (aws-device-v2 :target-type aws-device-v2
                                      :member-name "awsDeviceV2")
                                     (aws-logical-device-id :target-type
                                      aws-logical-device-id :member-name
                                      "awsLogicalDeviceId")
                                     (has-logical-redundancy :target-type
                                      has-logical-redundancy :member-name
                                      "hasLogicalRedundancy")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (provider-name :target-type provider-name
                                      :member-name "providerName")
                                     (mac-sec-capable :target-type
                                      mac-sec-capable :member-name
                                      "macSecCapable")
                                     (port-encryption-status :target-type
                                      port-encryption-status :member-name
                                      "portEncryptionStatus")
                                     (encryption-mode :target-type
                                      encryption-mode :member-name
                                      "encryptionMode")
                                     (mac-sec-keys :target-type
                                      mac-sec-key-list :member-name
                                      "macSecKeys")
                                     (partner-interconnect-mac-sec-capable
                                      :target-type
                                      partner-interconnect-mac-sec-capable
                                      :member-name
                                      "partnerInterconnectMacSecCapable"))
                                    (:shape-name "Connection"))

(smithy/sdk/shapes:define-type connection-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list connection-list :member connection)

(smithy/sdk/shapes:define-type connection-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum connection-state
    common-lisp:nil
  (:ordering "ordering")
  (:requested "requested")
  (:pending "pending")
  (:available "available")
  (:down "down")
  (:deleting "deleting")
  (:deleted "deleted")
  (:rejected "rejected")
  (:unknown "unknown"))

(smithy/sdk/shapes:define-structure connections common-lisp:nil
                                    ((connections :target-type connection-list
                                      :member-name "connections"))
                                    (:shape-name "Connections"))

(smithy/sdk/shapes:define-type core-network-attachment-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type core-network-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input create-bgppeer-request common-lisp:nil
                                ((virtual-interface-id :target-type
                                  virtual-interface-id :member-name
                                  "virtualInterfaceId")
                                 (new-bgppeer :target-type new-bgppeer
                                  :member-name "newBGPPeer"))
                                (:shape-name "CreateBGPPeerRequest"))

(smithy/sdk/shapes:define-output create-bgppeer-response common-lisp:nil
                                 ((virtual-interface :target-type
                                   virtual-interface :member-name
                                   "virtualInterface"))
                                 (:shape-name "CreateBGPPeerResponse"))

(smithy/sdk/shapes:define-input create-connection-request common-lisp:nil
                                ((location :target-type location-code :required
                                  common-lisp:t :member-name "location")
                                 (bandwidth :target-type bandwidth :required
                                  common-lisp:t :member-name "bandwidth")
                                 (connection-name :target-type connection-name
                                  :required common-lisp:t :member-name
                                  "connectionName")
                                 (lag-id :target-type lag-id :member-name
                                  "lagId")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (provider-name :target-type provider-name
                                  :member-name "providerName")
                                 (request-macsec :target-type request-macsec
                                  :member-name "requestMACSec"))
                                (:shape-name "CreateConnectionRequest"))

(smithy/sdk/shapes:define-input
 create-direct-connect-gateway-association-proposal-request common-lisp:nil
 ((direct-connect-gateway-id :target-type direct-connect-gateway-id :required
   common-lisp:t :member-name "directConnectGatewayId")
  (direct-connect-gateway-owner-account :target-type owner-account :required
   common-lisp:t :member-name "directConnectGatewayOwnerAccount")
  (gateway-id :target-type gateway-id-to-associate :required common-lisp:t
   :member-name "gatewayId")
  (add-allowed-prefixes-to-direct-connect-gateway :target-type
   route-filter-prefix-list :member-name
   "addAllowedPrefixesToDirectConnectGateway")
  (remove-allowed-prefixes-to-direct-connect-gateway :target-type
   route-filter-prefix-list :member-name
   "removeAllowedPrefixesToDirectConnectGateway"))
 (:shape-name "CreateDirectConnectGatewayAssociationProposalRequest"))

(smithy/sdk/shapes:define-output
 create-direct-connect-gateway-association-proposal-result common-lisp:nil
 ((direct-connect-gateway-association-proposal :target-type
   direct-connect-gateway-association-proposal :member-name
   "directConnectGatewayAssociationProposal"))
 (:shape-name "CreateDirectConnectGatewayAssociationProposalResult"))

(smithy/sdk/shapes:define-input
 create-direct-connect-gateway-association-request common-lisp:nil
 ((direct-connect-gateway-id :target-type direct-connect-gateway-id :required
   common-lisp:t :member-name "directConnectGatewayId")
  (gateway-id :target-type gateway-id-to-associate :member-name "gatewayId")
  (add-allowed-prefixes-to-direct-connect-gateway :target-type
   route-filter-prefix-list :member-name
   "addAllowedPrefixesToDirectConnectGateway")
  (virtual-gateway-id :target-type virtual-gateway-id :member-name
   "virtualGatewayId"))
 (:shape-name "CreateDirectConnectGatewayAssociationRequest"))

(smithy/sdk/shapes:define-output
 create-direct-connect-gateway-association-result common-lisp:nil
 ((direct-connect-gateway-association :target-type
   direct-connect-gateway-association :member-name
   "directConnectGatewayAssociation"))
 (:shape-name "CreateDirectConnectGatewayAssociationResult"))

(smithy/sdk/shapes:define-input create-direct-connect-gateway-request
                                common-lisp:nil
                                ((direct-connect-gateway-name :target-type
                                  direct-connect-gateway-name :required
                                  common-lisp:t :member-name
                                  "directConnectGatewayName")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (amazon-side-asn :target-type long-asn
                                  :member-name "amazonSideAsn"))
                                (:shape-name
                                 "CreateDirectConnectGatewayRequest"))

(smithy/sdk/shapes:define-output create-direct-connect-gateway-result
                                 common-lisp:nil
                                 ((direct-connect-gateway :target-type
                                   direct-connect-gateway :member-name
                                   "directConnectGateway"))
                                 (:shape-name
                                  "CreateDirectConnectGatewayResult"))

(smithy/sdk/shapes:define-input create-interconnect-request common-lisp:nil
                                ((interconnect-name :target-type
                                  interconnect-name :required common-lisp:t
                                  :member-name "interconnectName")
                                 (bandwidth :target-type bandwidth :required
                                  common-lisp:t :member-name "bandwidth")
                                 (location :target-type location-code :required
                                  common-lisp:t :member-name "location")
                                 (lag-id :target-type lag-id :member-name
                                  "lagId")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (provider-name :target-type provider-name
                                  :member-name "providerName")
                                 (request-macsec :target-type request-macsec
                                  :member-name "requestMACSec"))
                                (:shape-name "CreateInterconnectRequest"))

(smithy/sdk/shapes:define-input create-lag-request common-lisp:nil
                                ((number-of-connections :target-type count
                                  :required common-lisp:t :member-name
                                  "numberOfConnections")
                                 (location :target-type location-code :required
                                  common-lisp:t :member-name "location")
                                 (connections-bandwidth :target-type bandwidth
                                  :required common-lisp:t :member-name
                                  "connectionsBandwidth")
                                 (lag-name :target-type lag-name :required
                                  common-lisp:t :member-name "lagName")
                                 (connection-id :target-type connection-id
                                  :member-name "connectionId")
                                 (tags :target-type tag-list :member-name
                                  "tags")
                                 (child-connection-tags :target-type tag-list
                                  :member-name "childConnectionTags")
                                 (provider-name :target-type provider-name
                                  :member-name "providerName")
                                 (request-macsec :target-type request-macsec
                                  :member-name "requestMACSec"))
                                (:shape-name "CreateLagRequest"))

(smithy/sdk/shapes:define-input create-private-virtual-interface-request
                                common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "connectionId")
                                 (new-private-virtual-interface :target-type
                                  new-private-virtual-interface :required
                                  common-lisp:t :member-name
                                  "newPrivateVirtualInterface"))
                                (:shape-name
                                 "CreatePrivateVirtualInterfaceRequest"))

(smithy/sdk/shapes:define-input create-public-virtual-interface-request
                                common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "connectionId")
                                 (new-public-virtual-interface :target-type
                                  new-public-virtual-interface :required
                                  common-lisp:t :member-name
                                  "newPublicVirtualInterface"))
                                (:shape-name
                                 "CreatePublicVirtualInterfaceRequest"))

(smithy/sdk/shapes:define-input create-transit-virtual-interface-request
                                common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "connectionId")
                                 (new-transit-virtual-interface :target-type
                                  new-transit-virtual-interface :required
                                  common-lisp:t :member-name
                                  "newTransitVirtualInterface"))
                                (:shape-name
                                 "CreateTransitVirtualInterfaceRequest"))

(smithy/sdk/shapes:define-output create-transit-virtual-interface-result
                                 common-lisp:nil
                                 ((virtual-interface :target-type
                                   virtual-interface :member-name
                                   "virtualInterface"))
                                 (:shape-name
                                  "CreateTransitVirtualInterfaceResult"))

(smithy/sdk/shapes:define-type customer-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure customer-agreement common-lisp:nil
                                    ((agreement-name :target-type
                                      agreement-name :member-name
                                      "agreementName")
                                     (status :target-type status :member-name
                                      "status"))
                                    (:shape-name "CustomerAgreement"))

(smithy/sdk/shapes:define-input delete-bgppeer-request common-lisp:nil
                                ((virtual-interface-id :target-type
                                  virtual-interface-id :member-name
                                  "virtualInterfaceId")
                                 (asn :target-type asn :member-name "asn")
                                 (customer-address :target-type
                                  customer-address :member-name
                                  "customerAddress")
                                 (bgp-peer-id :target-type bgppeer-id
                                  :member-name "bgpPeerId"))
                                (:shape-name "DeleteBGPPeerRequest"))

(smithy/sdk/shapes:define-output delete-bgppeer-response common-lisp:nil
                                 ((virtual-interface :target-type
                                   virtual-interface :member-name
                                   "virtualInterface"))
                                 (:shape-name "DeleteBGPPeerResponse"))

(smithy/sdk/shapes:define-input delete-connection-request common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "connectionId"))
                                (:shape-name "DeleteConnectionRequest"))

(smithy/sdk/shapes:define-input
 delete-direct-connect-gateway-association-proposal-request common-lisp:nil
 ((proposal-id :target-type direct-connect-gateway-association-proposal-id
   :required common-lisp:t :member-name "proposalId"))
 (:shape-name "DeleteDirectConnectGatewayAssociationProposalRequest"))

(smithy/sdk/shapes:define-output
 delete-direct-connect-gateway-association-proposal-result common-lisp:nil
 ((direct-connect-gateway-association-proposal :target-type
   direct-connect-gateway-association-proposal :member-name
   "directConnectGatewayAssociationProposal"))
 (:shape-name "DeleteDirectConnectGatewayAssociationProposalResult"))

(smithy/sdk/shapes:define-input
 delete-direct-connect-gateway-association-request common-lisp:nil
 ((association-id :target-type direct-connect-gateway-association-id
   :member-name "associationId")
  (direct-connect-gateway-id :target-type direct-connect-gateway-id
   :member-name "directConnectGatewayId")
  (virtual-gateway-id :target-type virtual-gateway-id :member-name
   "virtualGatewayId"))
 (:shape-name "DeleteDirectConnectGatewayAssociationRequest"))

(smithy/sdk/shapes:define-output
 delete-direct-connect-gateway-association-result common-lisp:nil
 ((direct-connect-gateway-association :target-type
   direct-connect-gateway-association :member-name
   "directConnectGatewayAssociation"))
 (:shape-name "DeleteDirectConnectGatewayAssociationResult"))

(smithy/sdk/shapes:define-input delete-direct-connect-gateway-request
                                common-lisp:nil
                                ((direct-connect-gateway-id :target-type
                                  direct-connect-gateway-id :required
                                  common-lisp:t :member-name
                                  "directConnectGatewayId"))
                                (:shape-name
                                 "DeleteDirectConnectGatewayRequest"))

(smithy/sdk/shapes:define-output delete-direct-connect-gateway-result
                                 common-lisp:nil
                                 ((direct-connect-gateway :target-type
                                   direct-connect-gateway :member-name
                                   "directConnectGateway"))
                                 (:shape-name
                                  "DeleteDirectConnectGatewayResult"))

(smithy/sdk/shapes:define-input delete-interconnect-request common-lisp:nil
                                ((interconnect-id :target-type interconnect-id
                                  :required common-lisp:t :member-name
                                  "interconnectId"))
                                (:shape-name "DeleteInterconnectRequest"))

(smithy/sdk/shapes:define-output delete-interconnect-response common-lisp:nil
                                 ((interconnect-state :target-type
                                   interconnect-state :member-name
                                   "interconnectState"))
                                 (:shape-name "DeleteInterconnectResponse"))

(smithy/sdk/shapes:define-input delete-lag-request common-lisp:nil
                                ((lag-id :target-type lag-id :required
                                  common-lisp:t :member-name "lagId"))
                                (:shape-name "DeleteLagRequest"))

(smithy/sdk/shapes:define-input delete-virtual-interface-request
                                common-lisp:nil
                                ((virtual-interface-id :target-type
                                  virtual-interface-id :required common-lisp:t
                                  :member-name "virtualInterfaceId"))
                                (:shape-name "DeleteVirtualInterfaceRequest"))

(smithy/sdk/shapes:define-output delete-virtual-interface-response
                                 common-lisp:nil
                                 ((virtual-interface-state :target-type
                                   virtual-interface-state :member-name
                                   "virtualInterfaceState"))
                                 (:shape-name "DeleteVirtualInterfaceResponse"))

(smithy/sdk/shapes:define-input describe-connection-loa-request common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "connectionId")
                                 (provider-name :target-type provider-name
                                  :member-name "providerName")
                                 (loa-content-type :target-type
                                  loa-content-type :member-name
                                  "loaContentType"))
                                (:shape-name "DescribeConnectionLoaRequest"))

(smithy/sdk/shapes:define-output describe-connection-loa-response
                                 common-lisp:nil
                                 ((loa :target-type loa :member-name "loa"))
                                 (:shape-name "DescribeConnectionLoaResponse"))

(smithy/sdk/shapes:define-input describe-connections-on-interconnect-request
                                common-lisp:nil
                                ((interconnect-id :target-type interconnect-id
                                  :required common-lisp:t :member-name
                                  "interconnectId"))
                                (:shape-name
                                 "DescribeConnectionsOnInterconnectRequest"))

(smithy/sdk/shapes:define-input describe-connections-request common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :member-name "connectionId"))
                                (:shape-name "DescribeConnectionsRequest"))

(smithy/sdk/shapes:define-output describe-customer-metadata-response
                                 common-lisp:nil
                                 ((agreements :target-type agreement-list
                                   :member-name "agreements")
                                  (nni-partner-type :target-type
                                   nni-partner-type :member-name
                                   "nniPartnerType"))
                                 (:shape-name
                                  "DescribeCustomerMetadataResponse"))

(smithy/sdk/shapes:define-input
 describe-direct-connect-gateway-association-proposals-request common-lisp:nil
 ((direct-connect-gateway-id :target-type direct-connect-gateway-id
   :member-name "directConnectGatewayId")
  (proposal-id :target-type direct-connect-gateway-association-proposal-id
   :member-name "proposalId")
  (associated-gateway-id :target-type associated-gateway-id :member-name
   "associatedGatewayId")
  (max-results :target-type max-result-set-size :member-name "maxResults")
  (next-token :target-type pagination-token :member-name "nextToken"))
 (:shape-name "DescribeDirectConnectGatewayAssociationProposalsRequest"))

(smithy/sdk/shapes:define-output
 describe-direct-connect-gateway-association-proposals-result common-lisp:nil
 ((direct-connect-gateway-association-proposals :target-type
   direct-connect-gateway-association-proposal-list :member-name
   "directConnectGatewayAssociationProposals")
  (next-token :target-type pagination-token :member-name "nextToken"))
 (:shape-name "DescribeDirectConnectGatewayAssociationProposalsResult"))

(smithy/sdk/shapes:define-input
 describe-direct-connect-gateway-associations-request common-lisp:nil
 ((association-id :target-type direct-connect-gateway-association-id
   :member-name "associationId")
  (associated-gateway-id :target-type associated-gateway-id :member-name
   "associatedGatewayId")
  (direct-connect-gateway-id :target-type direct-connect-gateway-id
   :member-name "directConnectGatewayId")
  (max-results :target-type max-result-set-size :member-name "maxResults")
  (next-token :target-type pagination-token :member-name "nextToken")
  (virtual-gateway-id :target-type virtual-gateway-id :member-name
   "virtualGatewayId"))
 (:shape-name "DescribeDirectConnectGatewayAssociationsRequest"))

(smithy/sdk/shapes:define-output
 describe-direct-connect-gateway-associations-result common-lisp:nil
 ((direct-connect-gateway-associations :target-type
   direct-connect-gateway-association-list :member-name
   "directConnectGatewayAssociations")
  (next-token :target-type pagination-token :member-name "nextToken"))
 (:shape-name "DescribeDirectConnectGatewayAssociationsResult"))

(smithy/sdk/shapes:define-input
 describe-direct-connect-gateway-attachments-request common-lisp:nil
 ((direct-connect-gateway-id :target-type direct-connect-gateway-id
   :member-name "directConnectGatewayId")
  (virtual-interface-id :target-type virtual-interface-id :member-name
   "virtualInterfaceId")
  (max-results :target-type max-result-set-size :member-name "maxResults")
  (next-token :target-type pagination-token :member-name "nextToken"))
 (:shape-name "DescribeDirectConnectGatewayAttachmentsRequest"))

(smithy/sdk/shapes:define-output
 describe-direct-connect-gateway-attachments-result common-lisp:nil
 ((direct-connect-gateway-attachments :target-type
   direct-connect-gateway-attachment-list :member-name
   "directConnectGatewayAttachments")
  (next-token :target-type pagination-token :member-name "nextToken"))
 (:shape-name "DescribeDirectConnectGatewayAttachmentsResult"))

(smithy/sdk/shapes:define-input describe-direct-connect-gateways-request
                                common-lisp:nil
                                ((direct-connect-gateway-id :target-type
                                  direct-connect-gateway-id :member-name
                                  "directConnectGatewayId")
                                 (max-results :target-type max-result-set-size
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "DescribeDirectConnectGatewaysRequest"))

(smithy/sdk/shapes:define-output describe-direct-connect-gateways-result
                                 common-lisp:nil
                                 ((direct-connect-gateways :target-type
                                   direct-connect-gateway-list :member-name
                                   "directConnectGateways")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribeDirectConnectGatewaysResult"))

(smithy/sdk/shapes:define-input describe-hosted-connections-request
                                common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "connectionId"))
                                (:shape-name
                                 "DescribeHostedConnectionsRequest"))

(smithy/sdk/shapes:define-input describe-interconnect-loa-request
                                common-lisp:nil
                                ((interconnect-id :target-type interconnect-id
                                  :required common-lisp:t :member-name
                                  "interconnectId")
                                 (provider-name :target-type provider-name
                                  :member-name "providerName")
                                 (loa-content-type :target-type
                                  loa-content-type :member-name
                                  "loaContentType"))
                                (:shape-name "DescribeInterconnectLoaRequest"))

(smithy/sdk/shapes:define-output describe-interconnect-loa-response
                                 common-lisp:nil
                                 ((loa :target-type loa :member-name "loa"))
                                 (:shape-name
                                  "DescribeInterconnectLoaResponse"))

(smithy/sdk/shapes:define-input describe-interconnects-request common-lisp:nil
                                ((interconnect-id :target-type interconnect-id
                                  :member-name "interconnectId"))
                                (:shape-name "DescribeInterconnectsRequest"))

(smithy/sdk/shapes:define-input describe-lags-request common-lisp:nil
                                ((lag-id :target-type lag-id :member-name
                                  "lagId"))
                                (:shape-name "DescribeLagsRequest"))

(smithy/sdk/shapes:define-input describe-loa-request common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "connectionId")
                                 (provider-name :target-type provider-name
                                  :member-name "providerName")
                                 (loa-content-type :target-type
                                  loa-content-type :member-name
                                  "loaContentType"))
                                (:shape-name "DescribeLoaRequest"))

(smithy/sdk/shapes:define-input describe-router-configuration-request
                                common-lisp:nil
                                ((virtual-interface-id :target-type
                                  virtual-interface-id :required common-lisp:t
                                  :member-name "virtualInterfaceId")
                                 (router-type-identifier :target-type
                                  router-type-identifier :member-name
                                  "routerTypeIdentifier"))
                                (:shape-name
                                 "DescribeRouterConfigurationRequest"))

(smithy/sdk/shapes:define-output describe-router-configuration-response
                                 common-lisp:nil
                                 ((customer-router-config :target-type
                                   router-config :member-name
                                   "customerRouterConfig")
                                  (router :target-type router-type :member-name
                                   "router")
                                  (virtual-interface-id :target-type
                                   virtual-interface-id :member-name
                                   "virtualInterfaceId")
                                  (virtual-interface-name :target-type
                                   virtual-interface-name :member-name
                                   "virtualInterfaceName"))
                                 (:shape-name
                                  "DescribeRouterConfigurationResponse"))

(smithy/sdk/shapes:define-input describe-tags-request common-lisp:nil
                                ((resource-arns :target-type resource-arn-list
                                  :required common-lisp:t :member-name
                                  "resourceArns"))
                                (:shape-name "DescribeTagsRequest"))

(smithy/sdk/shapes:define-output describe-tags-response common-lisp:nil
                                 ((resource-tags :target-type resource-tag-list
                                   :member-name "resourceTags"))
                                 (:shape-name "DescribeTagsResponse"))

(smithy/sdk/shapes:define-input describe-virtual-interfaces-request
                                common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :member-name "connectionId")
                                 (virtual-interface-id :target-type
                                  virtual-interface-id :member-name
                                  "virtualInterfaceId"))
                                (:shape-name
                                 "DescribeVirtualInterfacesRequest"))

(smithy/sdk/shapes:define-error direct-connect-client-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DirectConnectClientException")
                                (:error-code 400)
                                (:base-class direct-connect-error))

(smithy/sdk/shapes:define-structure direct-connect-gateway common-lisp:nil
                                    ((direct-connect-gateway-id :target-type
                                      direct-connect-gateway-id :member-name
                                      "directConnectGatewayId")
                                     (direct-connect-gateway-name :target-type
                                      direct-connect-gateway-name :member-name
                                      "directConnectGatewayName")
                                     (amazon-side-asn :target-type long-asn
                                      :member-name "amazonSideAsn")
                                     (owner-account :target-type owner-account
                                      :member-name "ownerAccount")
                                     (direct-connect-gateway-state :target-type
                                      direct-connect-gateway-state :member-name
                                      "directConnectGatewayState")
                                     (state-change-error :target-type
                                      state-change-error :member-name
                                      "stateChangeError")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name "DirectConnectGateway"))

(smithy/sdk/shapes:define-structure direct-connect-gateway-association
                                    common-lisp:nil
                                    ((direct-connect-gateway-id :target-type
                                      direct-connect-gateway-id :member-name
                                      "directConnectGatewayId")
                                     (direct-connect-gateway-owner-account
                                      :target-type owner-account :member-name
                                      "directConnectGatewayOwnerAccount")
                                     (association-state :target-type
                                      direct-connect-gateway-association-state
                                      :member-name "associationState")
                                     (state-change-error :target-type
                                      state-change-error :member-name
                                      "stateChangeError")
                                     (associated-gateway :target-type
                                      associated-gateway :member-name
                                      "associatedGateway")
                                     (association-id :target-type
                                      direct-connect-gateway-association-id
                                      :member-name "associationId")
                                     (allowed-prefixes-to-direct-connect-gateway
                                      :target-type route-filter-prefix-list
                                      :member-name
                                      "allowedPrefixesToDirectConnectGateway")
                                     (associated-core-network :target-type
                                      associated-core-network :member-name
                                      "associatedCoreNetwork")
                                     (virtual-gateway-id :target-type
                                      virtual-gateway-id :member-name
                                      "virtualGatewayId")
                                     (virtual-gateway-region :target-type
                                      virtual-gateway-region :member-name
                                      "virtualGatewayRegion")
                                     (virtual-gateway-owner-account
                                      :target-type owner-account :member-name
                                      "virtualGatewayOwnerAccount"))
                                    (:shape-name
                                     "DirectConnectGatewayAssociation"))

(smithy/sdk/shapes:define-type direct-connect-gateway-association-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list direct-connect-gateway-association-list :member
                               direct-connect-gateway-association)

(smithy/sdk/shapes:define-structure direct-connect-gateway-association-proposal
                                    common-lisp:nil
                                    ((proposal-id :target-type
                                      direct-connect-gateway-association-proposal-id
                                      :member-name "proposalId")
                                     (direct-connect-gateway-id :target-type
                                      direct-connect-gateway-id :member-name
                                      "directConnectGatewayId")
                                     (direct-connect-gateway-owner-account
                                      :target-type owner-account :member-name
                                      "directConnectGatewayOwnerAccount")
                                     (proposal-state :target-type
                                      direct-connect-gateway-association-proposal-state
                                      :member-name "proposalState")
                                     (associated-gateway :target-type
                                      associated-gateway :member-name
                                      "associatedGateway")
                                     (existing-allowed-prefixes-to-direct-connect-gateway
                                      :target-type route-filter-prefix-list
                                      :member-name
                                      "existingAllowedPrefixesToDirectConnectGateway")
                                     (requested-allowed-prefixes-to-direct-connect-gateway
                                      :target-type route-filter-prefix-list
                                      :member-name
                                      "requestedAllowedPrefixesToDirectConnectGateway"))
                                    (:shape-name
                                     "DirectConnectGatewayAssociationProposal"))

(smithy/sdk/shapes:define-type direct-connect-gateway-association-proposal-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list direct-connect-gateway-association-proposal-list
                               :member
                               direct-connect-gateway-association-proposal)

(smithy/sdk/shapes:define-enum direct-connect-gateway-association-proposal-state
    common-lisp:nil
  (:requested "requested")
  (:accepted "accepted")
  (:deleted "deleted"))

(smithy/sdk/shapes:define-enum direct-connect-gateway-association-state
    common-lisp:nil
  (:associating "associating")
  (:associated "associated")
  (:disassociating "disassociating")
  (:disassociated "disassociated")
  (:updating "updating"))

(smithy/sdk/shapes:define-structure direct-connect-gateway-attachment
                                    common-lisp:nil
                                    ((direct-connect-gateway-id :target-type
                                      direct-connect-gateway-id :member-name
                                      "directConnectGatewayId")
                                     (virtual-interface-id :target-type
                                      virtual-interface-id :member-name
                                      "virtualInterfaceId")
                                     (virtual-interface-region :target-type
                                      virtual-interface-region :member-name
                                      "virtualInterfaceRegion")
                                     (virtual-interface-owner-account
                                      :target-type owner-account :member-name
                                      "virtualInterfaceOwnerAccount")
                                     (attachment-state :target-type
                                      direct-connect-gateway-attachment-state
                                      :member-name "attachmentState")
                                     (attachment-type :target-type
                                      direct-connect-gateway-attachment-type
                                      :member-name "attachmentType")
                                     (state-change-error :target-type
                                      state-change-error :member-name
                                      "stateChangeError"))
                                    (:shape-name
                                     "DirectConnectGatewayAttachment"))

(smithy/sdk/shapes:define-list direct-connect-gateway-attachment-list :member
                               direct-connect-gateway-attachment)

(smithy/sdk/shapes:define-enum direct-connect-gateway-attachment-state
    common-lisp:nil
  (:attaching "attaching")
  (:attached "attached")
  (:detaching "detaching")
  (:detached "detached"))

(smithy/sdk/shapes:define-enum direct-connect-gateway-attachment-type
    common-lisp:nil
  (:transit-virtual-interface "TransitVirtualInterface")
  (:private-virtual-interface "PrivateVirtualInterface"))

(smithy/sdk/shapes:define-type direct-connect-gateway-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list direct-connect-gateway-list :member
                               direct-connect-gateway)

(smithy/sdk/shapes:define-type direct-connect-gateway-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum direct-connect-gateway-state
    common-lisp:nil
  (:pending "pending")
  (:available "available")
  (:deleting "deleting")
  (:deleted "deleted"))

(smithy/sdk/shapes:define-error direct-connect-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DirectConnectServerException")
                                (:error-code 500)
                                (:base-class direct-connect-error))

(smithy/sdk/shapes:define-input disassociate-connection-from-lag-request
                                common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "connectionId")
                                 (lag-id :target-type lag-id :required
                                  common-lisp:t :member-name "lagId"))
                                (:shape-name
                                 "DisassociateConnectionFromLagRequest"))

(smithy/sdk/shapes:define-input disassociate-mac-sec-key-request
                                common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "connectionId")
                                 (secret-arn :target-type secret-arn :required
                                  common-lisp:t :member-name "secretARN"))
                                (:shape-name "DisassociateMacSecKeyRequest"))

(smithy/sdk/shapes:define-output disassociate-mac-sec-key-response
                                 common-lisp:nil
                                 ((connection-id :target-type connection-id
                                   :member-name "connectionId")
                                  (mac-sec-keys :target-type mac-sec-key-list
                                   :member-name "macSecKeys"))
                                 (:shape-name "DisassociateMacSecKeyResponse"))

(smithy/sdk/shapes:define-error duplicate-tag-keys-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "DuplicateTagKeysException")
                                (:error-code 400)
                                (:base-class direct-connect-error))

(smithy/sdk/shapes:define-type enable-site-link smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type encryption-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type end-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type failure-test-history-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type gateway-id-to-associate
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type gateway-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum gateway-type
    common-lisp:nil
  (:virtual-private-gateway "virtualPrivateGateway")
  (:transit-gateway "transitGateway"))

(smithy/sdk/shapes:define-enum has-logical-redundancy
    common-lisp:nil
  (:unknown "unknown")
  (:yes "yes")
  (:no "no"))

(smithy/sdk/shapes:define-structure interconnect common-lisp:nil
                                    ((interconnect-id :target-type
                                      interconnect-id :member-name
                                      "interconnectId")
                                     (interconnect-name :target-type
                                      interconnect-name :member-name
                                      "interconnectName")
                                     (interconnect-state :target-type
                                      interconnect-state :member-name
                                      "interconnectState")
                                     (region :target-type region :member-name
                                      "region")
                                     (location :target-type location-code
                                      :member-name "location")
                                     (bandwidth :target-type bandwidth
                                      :member-name "bandwidth")
                                     (loa-issue-time :target-type
                                      loa-issue-time :member-name
                                      "loaIssueTime")
                                     (lag-id :target-type lag-id :member-name
                                      "lagId")
                                     (aws-device :target-type aws-device
                                      :member-name "awsDevice")
                                     (jumbo-frame-capable :target-type
                                      jumbo-frame-capable :member-name
                                      "jumboFrameCapable")
                                     (aws-device-v2 :target-type aws-device-v2
                                      :member-name "awsDeviceV2")
                                     (aws-logical-device-id :target-type
                                      aws-logical-device-id :member-name
                                      "awsLogicalDeviceId")
                                     (has-logical-redundancy :target-type
                                      has-logical-redundancy :member-name
                                      "hasLogicalRedundancy")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (provider-name :target-type provider-name
                                      :member-name "providerName")
                                     (mac-sec-capable :target-type
                                      mac-sec-capable :member-name
                                      "macSecCapable")
                                     (port-encryption-status :target-type
                                      port-encryption-status :member-name
                                      "portEncryptionStatus")
                                     (encryption-mode :target-type
                                      encryption-mode :member-name
                                      "encryptionMode")
                                     (mac-sec-keys :target-type
                                      mac-sec-key-list :member-name
                                      "macSecKeys"))
                                    (:shape-name "Interconnect"))

(smithy/sdk/shapes:define-type interconnect-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list interconnect-list :member interconnect)

(smithy/sdk/shapes:define-type interconnect-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum interconnect-state
    common-lisp:nil
  (:requested "requested")
  (:pending "pending")
  (:available "available")
  (:down "down")
  (:deleting "deleting")
  (:deleted "deleted")
  (:unknown "unknown"))

(smithy/sdk/shapes:define-structure interconnects common-lisp:nil
                                    ((interconnects :target-type
                                      interconnect-list :member-name
                                      "interconnects"))
                                    (:shape-name "Interconnects"))

(smithy/sdk/shapes:define-type jumbo-frame-capable
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure lag common-lisp:nil
                                    ((connections-bandwidth :target-type
                                      bandwidth :member-name
                                      "connectionsBandwidth")
                                     (number-of-connections :target-type count
                                      :member-name "numberOfConnections")
                                     (lag-id :target-type lag-id :member-name
                                      "lagId")
                                     (owner-account :target-type owner-account
                                      :member-name "ownerAccount")
                                     (lag-name :target-type lag-name
                                      :member-name "lagName")
                                     (lag-state :target-type lag-state
                                      :member-name "lagState")
                                     (location :target-type location-code
                                      :member-name "location")
                                     (region :target-type region :member-name
                                      "region")
                                     (minimum-links :target-type count
                                      :member-name "minimumLinks")
                                     (aws-device :target-type aws-device
                                      :member-name "awsDevice")
                                     (aws-device-v2 :target-type aws-device-v2
                                      :member-name "awsDeviceV2")
                                     (aws-logical-device-id :target-type
                                      aws-logical-device-id :member-name
                                      "awsLogicalDeviceId")
                                     (connections :target-type connection-list
                                      :member-name "connections")
                                     (allows-hosted-connections :target-type
                                      boolean-flag :member-name
                                      "allowsHostedConnections")
                                     (jumbo-frame-capable :target-type
                                      jumbo-frame-capable :member-name
                                      "jumboFrameCapable")
                                     (has-logical-redundancy :target-type
                                      has-logical-redundancy :member-name
                                      "hasLogicalRedundancy")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (provider-name :target-type provider-name
                                      :member-name "providerName")
                                     (mac-sec-capable :target-type
                                      mac-sec-capable :member-name
                                      "macSecCapable")
                                     (encryption-mode :target-type
                                      encryption-mode :member-name
                                      "encryptionMode")
                                     (mac-sec-keys :target-type
                                      mac-sec-key-list :member-name
                                      "macSecKeys"))
                                    (:shape-name "Lag"))

(smithy/sdk/shapes:define-type lag-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list lag-list :member lag)

(smithy/sdk/shapes:define-type lag-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum lag-state
    common-lisp:nil
  (:requested "requested")
  (:pending "pending")
  (:available "available")
  (:down "down")
  (:deleting "deleting")
  (:deleted "deleted")
  (:unknown "unknown"))

(smithy/sdk/shapes:define-structure lags common-lisp:nil
                                    ((lags :target-type lag-list :member-name
                                      "lags"))
                                    (:shape-name "Lags"))

(smithy/sdk/shapes:define-input list-virtual-interface-test-history-request
                                common-lisp:nil
                                ((test-id :target-type test-id :member-name
                                  "testId")
                                 (virtual-interface-id :target-type
                                  virtual-interface-id :member-name
                                  "virtualInterfaceId")
                                 (bgp-peers :target-type bgppeer-id-list
                                  :member-name "bgpPeers")
                                 (status :target-type
                                  failure-test-history-status :member-name
                                  "status")
                                 (max-results :target-type max-result-set-size
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "ListVirtualInterfaceTestHistoryRequest"))

(smithy/sdk/shapes:define-output list-virtual-interface-test-history-response
                                 common-lisp:nil
                                 ((virtual-interface-test-history :target-type
                                   virtual-interface-test-history-list
                                   :member-name "virtualInterfaceTestHistory")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListVirtualInterfaceTestHistoryResponse"))

(smithy/sdk/shapes:define-structure loa common-lisp:nil
                                    ((loa-content :target-type loa-content
                                      :member-name "loaContent")
                                     (loa-content-type :target-type
                                      loa-content-type :member-name
                                      "loaContentType"))
                                    (:shape-name "Loa"))

(smithy/sdk/shapes:define-type loa-content smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-enum loa-content-type
    common-lisp:nil
  (:pdf "application/pdf"))

(smithy/sdk/shapes:define-type loa-issue-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure location common-lisp:nil
                                    ((location-code :target-type location-code
                                      :member-name "locationCode")
                                     (location-name :target-type location-name
                                      :member-name "locationName")
                                     (region :target-type region :member-name
                                      "region")
                                     (available-port-speeds :target-type
                                      available-port-speeds :member-name
                                      "availablePortSpeeds")
                                     (available-providers :target-type
                                      provider-list :member-name
                                      "availableProviders")
                                     (available-mac-sec-port-speeds
                                      :target-type
                                      available-mac-sec-port-speeds
                                      :member-name
                                      "availableMacSecPortSpeeds"))
                                    (:shape-name "Location"))

(smithy/sdk/shapes:define-type location-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list location-list :member location)

(smithy/sdk/shapes:define-type location-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure locations common-lisp:nil
                                    ((locations :target-type location-list
                                      :member-name "locations"))
                                    (:shape-name "Locations"))

(smithy/sdk/shapes:define-type long-asn smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type mtu smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type mac-sec-capable smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure mac-sec-key common-lisp:nil
                                    ((secret-arn :target-type secret-arn
                                      :member-name "secretARN")
                                     (ckn :target-type ckn :member-name "ckn")
                                     (state :target-type state :member-name
                                      "state")
                                     (start-on :target-type start-on-date
                                      :member-name "startOn"))
                                    (:shape-name "MacSecKey"))

(smithy/sdk/shapes:define-list mac-sec-key-list :member mac-sec-key)

(smithy/sdk/shapes:define-type max-result-set-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure new-bgppeer common-lisp:nil
                                    ((asn :target-type asn :member-name "asn")
                                     (auth-key :target-type bgpauth-key
                                      :member-name "authKey")
                                     (address-family :target-type
                                      address-family :member-name
                                      "addressFamily")
                                     (amazon-address :target-type
                                      amazon-address :member-name
                                      "amazonAddress")
                                     (customer-address :target-type
                                      customer-address :member-name
                                      "customerAddress"))
                                    (:shape-name "NewBGPPeer"))

(smithy/sdk/shapes:define-structure new-private-virtual-interface
                                    common-lisp:nil
                                    ((virtual-interface-name :target-type
                                      virtual-interface-name :required
                                      common-lisp:t :member-name
                                      "virtualInterfaceName")
                                     (vlan :target-type vlan :required
                                      common-lisp:t :member-name "vlan")
                                     (asn :target-type asn :required
                                      common-lisp:t :member-name "asn")
                                     (mtu :target-type mtu :member-name "mtu")
                                     (auth-key :target-type bgpauth-key
                                      :member-name "authKey")
                                     (amazon-address :target-type
                                      amazon-address :member-name
                                      "amazonAddress")
                                     (customer-address :target-type
                                      customer-address :member-name
                                      "customerAddress")
                                     (address-family :target-type
                                      address-family :member-name
                                      "addressFamily")
                                     (virtual-gateway-id :target-type
                                      virtual-gateway-id :member-name
                                      "virtualGatewayId")
                                     (direct-connect-gateway-id :target-type
                                      direct-connect-gateway-id :member-name
                                      "directConnectGatewayId")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (enable-site-link :target-type
                                      enable-site-link :member-name
                                      "enableSiteLink"))
                                    (:shape-name "NewPrivateVirtualInterface"))

(smithy/sdk/shapes:define-structure new-private-virtual-interface-allocation
                                    common-lisp:nil
                                    ((virtual-interface-name :target-type
                                      virtual-interface-name :required
                                      common-lisp:t :member-name
                                      "virtualInterfaceName")
                                     (vlan :target-type vlan :required
                                      common-lisp:t :member-name "vlan")
                                     (asn :target-type asn :required
                                      common-lisp:t :member-name "asn")
                                     (mtu :target-type mtu :member-name "mtu")
                                     (auth-key :target-type bgpauth-key
                                      :member-name "authKey")
                                     (amazon-address :target-type
                                      amazon-address :member-name
                                      "amazonAddress")
                                     (address-family :target-type
                                      address-family :member-name
                                      "addressFamily")
                                     (customer-address :target-type
                                      customer-address :member-name
                                      "customerAddress")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name
                                     "NewPrivateVirtualInterfaceAllocation"))

(smithy/sdk/shapes:define-structure new-public-virtual-interface
                                    common-lisp:nil
                                    ((virtual-interface-name :target-type
                                      virtual-interface-name :required
                                      common-lisp:t :member-name
                                      "virtualInterfaceName")
                                     (vlan :target-type vlan :required
                                      common-lisp:t :member-name "vlan")
                                     (asn :target-type asn :required
                                      common-lisp:t :member-name "asn")
                                     (auth-key :target-type bgpauth-key
                                      :member-name "authKey")
                                     (amazon-address :target-type
                                      amazon-address :member-name
                                      "amazonAddress")
                                     (customer-address :target-type
                                      customer-address :member-name
                                      "customerAddress")
                                     (address-family :target-type
                                      address-family :member-name
                                      "addressFamily")
                                     (route-filter-prefixes :target-type
                                      route-filter-prefix-list :member-name
                                      "routeFilterPrefixes")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name "NewPublicVirtualInterface"))

(smithy/sdk/shapes:define-structure new-public-virtual-interface-allocation
                                    common-lisp:nil
                                    ((virtual-interface-name :target-type
                                      virtual-interface-name :required
                                      common-lisp:t :member-name
                                      "virtualInterfaceName")
                                     (vlan :target-type vlan :required
                                      common-lisp:t :member-name "vlan")
                                     (asn :target-type asn :required
                                      common-lisp:t :member-name "asn")
                                     (auth-key :target-type bgpauth-key
                                      :member-name "authKey")
                                     (amazon-address :target-type
                                      amazon-address :member-name
                                      "amazonAddress")
                                     (customer-address :target-type
                                      customer-address :member-name
                                      "customerAddress")
                                     (address-family :target-type
                                      address-family :member-name
                                      "addressFamily")
                                     (route-filter-prefixes :target-type
                                      route-filter-prefix-list :member-name
                                      "routeFilterPrefixes")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name
                                     "NewPublicVirtualInterfaceAllocation"))

(smithy/sdk/shapes:define-structure new-transit-virtual-interface
                                    common-lisp:nil
                                    ((virtual-interface-name :target-type
                                      virtual-interface-name :member-name
                                      "virtualInterfaceName")
                                     (vlan :target-type vlan :member-name
                                      "vlan")
                                     (asn :target-type asn :member-name "asn")
                                     (mtu :target-type mtu :member-name "mtu")
                                     (auth-key :target-type bgpauth-key
                                      :member-name "authKey")
                                     (amazon-address :target-type
                                      amazon-address :member-name
                                      "amazonAddress")
                                     (customer-address :target-type
                                      customer-address :member-name
                                      "customerAddress")
                                     (address-family :target-type
                                      address-family :member-name
                                      "addressFamily")
                                     (direct-connect-gateway-id :target-type
                                      direct-connect-gateway-id :member-name
                                      "directConnectGatewayId")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (enable-site-link :target-type
                                      enable-site-link :member-name
                                      "enableSiteLink"))
                                    (:shape-name "NewTransitVirtualInterface"))

(smithy/sdk/shapes:define-structure new-transit-virtual-interface-allocation
                                    common-lisp:nil
                                    ((virtual-interface-name :target-type
                                      virtual-interface-name :member-name
                                      "virtualInterfaceName")
                                     (vlan :target-type vlan :member-name
                                      "vlan")
                                     (asn :target-type asn :member-name "asn")
                                     (mtu :target-type mtu :member-name "mtu")
                                     (auth-key :target-type bgpauth-key
                                      :member-name "authKey")
                                     (amazon-address :target-type
                                      amazon-address :member-name
                                      "amazonAddress")
                                     (customer-address :target-type
                                      customer-address :member-name
                                      "customerAddress")
                                     (address-family :target-type
                                      address-family :member-name
                                      "addressFamily")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name
                                     "NewTransitVirtualInterfaceAllocation"))

(smithy/sdk/shapes:define-enum nni-partner-type
    common-lisp:nil
  (:v1 "v1")
  (:v2 "v2")
  (:non-partner "nonPartner"))

(smithy/sdk/shapes:define-type owner-account smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type partner-interconnect-mac-sec-capable
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type partner-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type platform smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type port-encryption-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type port-speed smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list provider-list :member provider-name)

(smithy/sdk/shapes:define-type provider-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type request-macsec smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-arn-list :member resource-arn)

(smithy/sdk/shapes:define-structure resource-tag common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "resourceArn")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name "ResourceTag"))

(smithy/sdk/shapes:define-list resource-tag-list :member resource-tag)

(smithy/sdk/shapes:define-structure route-filter-prefix common-lisp:nil
                                    ((cidr :target-type cidr :member-name
                                      "cidr"))
                                    (:shape-name "RouteFilterPrefix"))

(smithy/sdk/shapes:define-list route-filter-prefix-list :member
                               route-filter-prefix)

(smithy/sdk/shapes:define-type router-config smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure router-type common-lisp:nil
                                    ((vendor :target-type vendor :member-name
                                      "vendor")
                                     (platform :target-type platform
                                      :member-name "platform")
                                     (software :target-type software
                                      :member-name "software")
                                     (xslt-template-name :target-type
                                      xslt-template-name :member-name
                                      "xsltTemplateName")
                                     (xslt-template-name-for-mac-sec
                                      :target-type
                                      xslt-template-name-for-mac-sec
                                      :member-name "xsltTemplateNameForMacSec")
                                     (router-type-identifier :target-type
                                      router-type-identifier :member-name
                                      "routerTypeIdentifier"))
                                    (:shape-name "RouterType"))

(smithy/sdk/shapes:define-type router-type-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type secret-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type site-link-enabled
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type software smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-bgp-failover-test-request common-lisp:nil
                                ((virtual-interface-id :target-type
                                  virtual-interface-id :required common-lisp:t
                                  :member-name "virtualInterfaceId")
                                 (bgp-peers :target-type bgppeer-id-list
                                  :member-name "bgpPeers")
                                 (test-duration-in-minutes :target-type
                                  test-duration :member-name
                                  "testDurationInMinutes"))
                                (:shape-name "StartBgpFailoverTestRequest"))

(smithy/sdk/shapes:define-output start-bgp-failover-test-response
                                 common-lisp:nil
                                 ((virtual-interface-test :target-type
                                   virtual-interface-test-history :member-name
                                   "virtualInterfaceTest"))
                                 (:shape-name "StartBgpFailoverTestResponse"))

(smithy/sdk/shapes:define-type start-on-date smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type start-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type state-change-error
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input stop-bgp-failover-test-request common-lisp:nil
                                ((virtual-interface-id :target-type
                                  virtual-interface-id :required common-lisp:t
                                  :member-name "virtualInterfaceId"))
                                (:shape-name "StopBgpFailoverTestRequest"))

(smithy/sdk/shapes:define-output stop-bgp-failover-test-response
                                 common-lisp:nil
                                 ((virtual-interface-test :target-type
                                   virtual-interface-test-history :member-name
                                   "virtualInterfaceTest"))
                                 (:shape-name "StopBgpFailoverTestResponse"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :member-name
                                      "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type test-duration smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type test-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400)
                                (:base-class direct-connect-error))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-connection-request common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "connectionId")
                                 (connection-name :target-type connection-name
                                  :member-name "connectionName")
                                 (encryption-mode :target-type encryption-mode
                                  :member-name "encryptionMode"))
                                (:shape-name "UpdateConnectionRequest"))

(smithy/sdk/shapes:define-input
 update-direct-connect-gateway-association-request common-lisp:nil
 ((association-id :target-type direct-connect-gateway-association-id
   :member-name "associationId")
  (add-allowed-prefixes-to-direct-connect-gateway :target-type
   route-filter-prefix-list :member-name
   "addAllowedPrefixesToDirectConnectGateway")
  (remove-allowed-prefixes-to-direct-connect-gateway :target-type
   route-filter-prefix-list :member-name
   "removeAllowedPrefixesToDirectConnectGateway"))
 (:shape-name "UpdateDirectConnectGatewayAssociationRequest"))

(smithy/sdk/shapes:define-output
 update-direct-connect-gateway-association-result common-lisp:nil
 ((direct-connect-gateway-association :target-type
   direct-connect-gateway-association :member-name
   "directConnectGatewayAssociation"))
 (:shape-name "UpdateDirectConnectGatewayAssociationResult"))

(smithy/sdk/shapes:define-input update-direct-connect-gateway-request
                                common-lisp:nil
                                ((direct-connect-gateway-id :target-type
                                  direct-connect-gateway-id :required
                                  common-lisp:t :member-name
                                  "directConnectGatewayId")
                                 (new-direct-connect-gateway-name :target-type
                                  direct-connect-gateway-name :required
                                  common-lisp:t :member-name
                                  "newDirectConnectGatewayName"))
                                (:shape-name
                                 "UpdateDirectConnectGatewayRequest"))

(smithy/sdk/shapes:define-output update-direct-connect-gateway-response
                                 common-lisp:nil
                                 ((direct-connect-gateway :target-type
                                   direct-connect-gateway :member-name
                                   "directConnectGateway"))
                                 (:shape-name
                                  "UpdateDirectConnectGatewayResponse"))

(smithy/sdk/shapes:define-input update-lag-request common-lisp:nil
                                ((lag-id :target-type lag-id :required
                                  common-lisp:t :member-name "lagId")
                                 (lag-name :target-type lag-name :member-name
                                  "lagName")
                                 (minimum-links :target-type count :member-name
                                  "minimumLinks")
                                 (encryption-mode :target-type encryption-mode
                                  :member-name "encryptionMode"))
                                (:shape-name "UpdateLagRequest"))

(smithy/sdk/shapes:define-input update-virtual-interface-attributes-request
                                common-lisp:nil
                                ((virtual-interface-id :target-type
                                  virtual-interface-id :required common-lisp:t
                                  :member-name "virtualInterfaceId")
                                 (mtu :target-type mtu :member-name "mtu")
                                 (enable-site-link :target-type
                                  enable-site-link :member-name
                                  "enableSiteLink")
                                 (virtual-interface-name :target-type
                                  virtual-interface-name :member-name
                                  "virtualInterfaceName"))
                                (:shape-name
                                 "UpdateVirtualInterfaceAttributesRequest"))

(smithy/sdk/shapes:define-type vlan smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type vendor smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure virtual-gateway common-lisp:nil
                                    ((virtual-gateway-id :target-type
                                      virtual-gateway-id :member-name
                                      "virtualGatewayId")
                                     (virtual-gateway-state :target-type
                                      virtual-gateway-state :member-name
                                      "virtualGatewayState"))
                                    (:shape-name "VirtualGateway"))

(smithy/sdk/shapes:define-type virtual-gateway-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list virtual-gateway-list :member virtual-gateway)

(smithy/sdk/shapes:define-type virtual-gateway-region
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type virtual-gateway-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure virtual-gateways common-lisp:nil
                                    ((virtual-gateways :target-type
                                      virtual-gateway-list :member-name
                                      "virtualGateways"))
                                    (:shape-name "VirtualGateways"))

(smithy/sdk/shapes:define-structure virtual-interface common-lisp:nil
                                    ((owner-account :target-type owner-account
                                      :member-name "ownerAccount")
                                     (virtual-interface-id :target-type
                                      virtual-interface-id :member-name
                                      "virtualInterfaceId")
                                     (location :target-type location-code
                                      :member-name "location")
                                     (connection-id :target-type connection-id
                                      :member-name "connectionId")
                                     (virtual-interface-type :target-type
                                      virtual-interface-type :member-name
                                      "virtualInterfaceType")
                                     (virtual-interface-name :target-type
                                      virtual-interface-name :member-name
                                      "virtualInterfaceName")
                                     (vlan :target-type vlan :member-name
                                      "vlan")
                                     (asn :target-type asn :member-name "asn")
                                     (amazon-side-asn :target-type long-asn
                                      :member-name "amazonSideAsn")
                                     (auth-key :target-type bgpauth-key
                                      :member-name "authKey")
                                     (amazon-address :target-type
                                      amazon-address :member-name
                                      "amazonAddress")
                                     (customer-address :target-type
                                      customer-address :member-name
                                      "customerAddress")
                                     (address-family :target-type
                                      address-family :member-name
                                      "addressFamily")
                                     (virtual-interface-state :target-type
                                      virtual-interface-state :member-name
                                      "virtualInterfaceState")
                                     (customer-router-config :target-type
                                      router-config :member-name
                                      "customerRouterConfig")
                                     (mtu :target-type mtu :member-name "mtu")
                                     (jumbo-frame-capable :target-type
                                      jumbo-frame-capable :member-name
                                      "jumboFrameCapable")
                                     (virtual-gateway-id :target-type
                                      virtual-gateway-id :member-name
                                      "virtualGatewayId")
                                     (direct-connect-gateway-id :target-type
                                      direct-connect-gateway-id :member-name
                                      "directConnectGatewayId")
                                     (route-filter-prefixes :target-type
                                      route-filter-prefix-list :member-name
                                      "routeFilterPrefixes")
                                     (bgp-peers :target-type bgppeer-list
                                      :member-name "bgpPeers")
                                     (region :target-type region :member-name
                                      "region")
                                     (aws-device-v2 :target-type aws-device-v2
                                      :member-name "awsDeviceV2")
                                     (aws-logical-device-id :target-type
                                      aws-logical-device-id :member-name
                                      "awsLogicalDeviceId")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (site-link-enabled :target-type
                                      site-link-enabled :member-name
                                      "siteLinkEnabled"))
                                    (:shape-name "VirtualInterface"))

(smithy/sdk/shapes:define-type virtual-interface-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list virtual-interface-list :member virtual-interface)

(smithy/sdk/shapes:define-type virtual-interface-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type virtual-interface-region
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum virtual-interface-state
    common-lisp:nil
  (:confirming "confirming")
  (:verifying "verifying")
  (:pending "pending")
  (:available "available")
  (:down "down")
  (:testing "testing")
  (:deleting "deleting")
  (:deleted "deleted")
  (:rejected "rejected")
  (:unknown "unknown"))

(smithy/sdk/shapes:define-structure virtual-interface-test-history
                                    common-lisp:nil
                                    ((test-id :target-type test-id :member-name
                                      "testId")
                                     (virtual-interface-id :target-type
                                      virtual-interface-id :member-name
                                      "virtualInterfaceId")
                                     (bgp-peers :target-type bgppeer-id-list
                                      :member-name "bgpPeers")
                                     (status :target-type
                                      failure-test-history-status :member-name
                                      "status")
                                     (owner-account :target-type owner-account
                                      :member-name "ownerAccount")
                                     (test-duration-in-minutes :target-type
                                      test-duration :member-name
                                      "testDurationInMinutes")
                                     (start-time :target-type start-time
                                      :member-name "startTime")
                                     (end-time :target-type end-time
                                      :member-name "endTime"))
                                    (:shape-name "VirtualInterfaceTestHistory"))

(smithy/sdk/shapes:define-list virtual-interface-test-history-list :member
                               virtual-interface-test-history)

(smithy/sdk/shapes:define-type virtual-interface-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure virtual-interfaces common-lisp:nil
                                    ((virtual-interfaces :target-type
                                      virtual-interface-list :member-name
                                      "virtualInterfaces"))
                                    (:shape-name "VirtualInterfaces"))

(smithy/sdk/shapes:define-type xslt-template-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type xslt-template-name-for-mac-sec
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation
 accept-direct-connect-gateway-association-proposal :shape-name
 "AcceptDirectConnectGatewayAssociationProposal" :input
 accept-direct-connect-gateway-association-proposal-request :output
 accept-direct-connect-gateway-association-proposal-result :errors
 (direct-connect-client-exception direct-connect-server-exception))

(smithy/sdk/operation:define-operation allocate-connection-on-interconnect
                                       :shape-name
                                       "AllocateConnectionOnInterconnect"
                                       :input
                                       allocate-connection-on-interconnect-request
                                       :output connection :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation allocate-hosted-connection :shape-name
                                       "AllocateHostedConnection" :input
                                       allocate-hosted-connection-request
                                       :output connection :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception
                                        duplicate-tag-keys-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation allocate-private-virtual-interface
                                       :shape-name
                                       "AllocatePrivateVirtualInterface" :input
                                       allocate-private-virtual-interface-request
                                       :output virtual-interface :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception
                                        duplicate-tag-keys-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation allocate-public-virtual-interface
                                       :shape-name
                                       "AllocatePublicVirtualInterface" :input
                                       allocate-public-virtual-interface-request
                                       :output virtual-interface :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception
                                        duplicate-tag-keys-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation allocate-transit-virtual-interface
                                       :shape-name
                                       "AllocateTransitVirtualInterface" :input
                                       allocate-transit-virtual-interface-request
                                       :output
                                       allocate-transit-virtual-interface-result
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception
                                        duplicate-tag-keys-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation associate-connection-with-lag
                                       :shape-name "AssociateConnectionWithLag"
                                       :input
                                       associate-connection-with-lag-request
                                       :output connection :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation associate-hosted-connection :shape-name
                                       "AssociateHostedConnection" :input
                                       associate-hosted-connection-request
                                       :output connection :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation associate-mac-sec-key :shape-name
                                       "AssociateMacSecKey" :input
                                       associate-mac-sec-key-request :output
                                       associate-mac-sec-key-response :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation associate-virtual-interface :shape-name
                                       "AssociateVirtualInterface" :input
                                       associate-virtual-interface-request
                                       :output virtual-interface :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation confirm-connection :shape-name
                                       "ConfirmConnection" :input
                                       confirm-connection-request :output
                                       confirm-connection-response :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation confirm-customer-agreement :shape-name
                                       "ConfirmCustomerAgreement" :input
                                       confirm-customer-agreement-request
                                       :output
                                       confirm-customer-agreement-response
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation confirm-private-virtual-interface
                                       :shape-name
                                       "ConfirmPrivateVirtualInterface" :input
                                       confirm-private-virtual-interface-request
                                       :output
                                       confirm-private-virtual-interface-response
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation confirm-public-virtual-interface
                                       :shape-name
                                       "ConfirmPublicVirtualInterface" :input
                                       confirm-public-virtual-interface-request
                                       :output
                                       confirm-public-virtual-interface-response
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation confirm-transit-virtual-interface
                                       :shape-name
                                       "ConfirmTransitVirtualInterface" :input
                                       confirm-transit-virtual-interface-request
                                       :output
                                       confirm-transit-virtual-interface-response
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation create-bgppeer :shape-name
                                       "CreateBGPPeer" :input
                                       create-bgppeer-request :output
                                       create-bgppeer-response :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation create-connection :shape-name
                                       "CreateConnection" :input
                                       create-connection-request :output
                                       connection :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception
                                        duplicate-tag-keys-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-direct-connect-gateway
                                       :shape-name "CreateDirectConnectGateway"
                                       :input
                                       create-direct-connect-gateway-request
                                       :output
                                       create-direct-connect-gateway-result
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation
 create-direct-connect-gateway-association :shape-name
 "CreateDirectConnectGatewayAssociation" :input
 create-direct-connect-gateway-association-request :output
 create-direct-connect-gateway-association-result :errors
 (direct-connect-client-exception direct-connect-server-exception))

(smithy/sdk/operation:define-operation
 create-direct-connect-gateway-association-proposal :shape-name
 "CreateDirectConnectGatewayAssociationProposal" :input
 create-direct-connect-gateway-association-proposal-request :output
 create-direct-connect-gateway-association-proposal-result :errors
 (direct-connect-client-exception direct-connect-server-exception))

(smithy/sdk/operation:define-operation create-interconnect :shape-name
                                       "CreateInterconnect" :input
                                       create-interconnect-request :output
                                       interconnect :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception
                                        duplicate-tag-keys-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-lag :shape-name "CreateLag"
                                       :input create-lag-request :output lag
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception
                                        duplicate-tag-keys-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-private-virtual-interface
                                       :shape-name
                                       "CreatePrivateVirtualInterface" :input
                                       create-private-virtual-interface-request
                                       :output virtual-interface :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception
                                        duplicate-tag-keys-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-public-virtual-interface
                                       :shape-name
                                       "CreatePublicVirtualInterface" :input
                                       create-public-virtual-interface-request
                                       :output virtual-interface :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception
                                        duplicate-tag-keys-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation create-transit-virtual-interface
                                       :shape-name
                                       "CreateTransitVirtualInterface" :input
                                       create-transit-virtual-interface-request
                                       :output
                                       create-transit-virtual-interface-result
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception
                                        duplicate-tag-keys-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation delete-bgppeer :shape-name
                                       "DeleteBGPPeer" :input
                                       delete-bgppeer-request :output
                                       delete-bgppeer-response :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation delete-connection :shape-name
                                       "DeleteConnection" :input
                                       delete-connection-request :output
                                       connection :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation delete-direct-connect-gateway
                                       :shape-name "DeleteDirectConnectGateway"
                                       :input
                                       delete-direct-connect-gateway-request
                                       :output
                                       delete-direct-connect-gateway-result
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation
 delete-direct-connect-gateway-association :shape-name
 "DeleteDirectConnectGatewayAssociation" :input
 delete-direct-connect-gateway-association-request :output
 delete-direct-connect-gateway-association-result :errors
 (direct-connect-client-exception direct-connect-server-exception))

(smithy/sdk/operation:define-operation
 delete-direct-connect-gateway-association-proposal :shape-name
 "DeleteDirectConnectGatewayAssociationProposal" :input
 delete-direct-connect-gateway-association-proposal-request :output
 delete-direct-connect-gateway-association-proposal-result :errors
 (direct-connect-client-exception direct-connect-server-exception))

(smithy/sdk/operation:define-operation delete-interconnect :shape-name
                                       "DeleteInterconnect" :input
                                       delete-interconnect-request :output
                                       delete-interconnect-response :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation delete-lag :shape-name "DeleteLag"
                                       :input delete-lag-request :output lag
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation delete-virtual-interface :shape-name
                                       "DeleteVirtualInterface" :input
                                       delete-virtual-interface-request :output
                                       delete-virtual-interface-response
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation describe-connection-loa :shape-name
                                       "DescribeConnectionLoa" :input
                                       describe-connection-loa-request :output
                                       describe-connection-loa-response :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation describe-connections :shape-name
                                       "DescribeConnections" :input
                                       describe-connections-request :output
                                       connections :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation describe-connections-on-interconnect
                                       :shape-name
                                       "DescribeConnectionsOnInterconnect"
                                       :input
                                       describe-connections-on-interconnect-request
                                       :output connections :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation describe-customer-metadata :shape-name
                                       "DescribeCustomerMetadata" :input
                                       common-lisp:null :output
                                       describe-customer-metadata-response
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation
 describe-direct-connect-gateway-association-proposals :shape-name
 "DescribeDirectConnectGatewayAssociationProposals" :input
 describe-direct-connect-gateway-association-proposals-request :output
 describe-direct-connect-gateway-association-proposals-result :errors
 (direct-connect-client-exception direct-connect-server-exception))

(smithy/sdk/operation:define-operation
 describe-direct-connect-gateway-associations :shape-name
 "DescribeDirectConnectGatewayAssociations" :input
 describe-direct-connect-gateway-associations-request :output
 describe-direct-connect-gateway-associations-result :errors
 (direct-connect-client-exception direct-connect-server-exception))

(smithy/sdk/operation:define-operation
 describe-direct-connect-gateway-attachments :shape-name
 "DescribeDirectConnectGatewayAttachments" :input
 describe-direct-connect-gateway-attachments-request :output
 describe-direct-connect-gateway-attachments-result :errors
 (direct-connect-client-exception direct-connect-server-exception))

(smithy/sdk/operation:define-operation describe-direct-connect-gateways
                                       :shape-name
                                       "DescribeDirectConnectGateways" :input
                                       describe-direct-connect-gateways-request
                                       :output
                                       describe-direct-connect-gateways-result
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation describe-hosted-connections :shape-name
                                       "DescribeHostedConnections" :input
                                       describe-hosted-connections-request
                                       :output connections :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation describe-interconnect-loa :shape-name
                                       "DescribeInterconnectLoa" :input
                                       describe-interconnect-loa-request
                                       :output
                                       describe-interconnect-loa-response
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation describe-interconnects :shape-name
                                       "DescribeInterconnects" :input
                                       describe-interconnects-request :output
                                       interconnects :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation describe-lags :shape-name "DescribeLags"
                                       :input describe-lags-request :output
                                       lags :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation describe-loa :shape-name "DescribeLoa"
                                       :input describe-loa-request :output loa
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation describe-locations :shape-name
                                       "DescribeLocations" :input
                                       common-lisp:null :output locations
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation describe-router-configuration
                                       :shape-name
                                       "DescribeRouterConfiguration" :input
                                       describe-router-configuration-request
                                       :output
                                       describe-router-configuration-response
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation describe-tags :shape-name "DescribeTags"
                                       :input describe-tags-request :output
                                       describe-tags-response :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation describe-virtual-gateways :shape-name
                                       "DescribeVirtualGateways" :input
                                       common-lisp:null :output
                                       virtual-gateways :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation describe-virtual-interfaces :shape-name
                                       "DescribeVirtualInterfaces" :input
                                       describe-virtual-interfaces-request
                                       :output virtual-interfaces :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation disassociate-connection-from-lag
                                       :shape-name
                                       "DisassociateConnectionFromLag" :input
                                       disassociate-connection-from-lag-request
                                       :output connection :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation disassociate-mac-sec-key :shape-name
                                       "DisassociateMacSecKey" :input
                                       disassociate-mac-sec-key-request :output
                                       disassociate-mac-sec-key-response
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation list-virtual-interface-test-history
                                       :shape-name
                                       "ListVirtualInterfaceTestHistory" :input
                                       list-virtual-interface-test-history-request
                                       :output
                                       list-virtual-interface-test-history-response
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation start-bgp-failover-test :shape-name
                                       "StartBgpFailoverTest" :input
                                       start-bgp-failover-test-request :output
                                       start-bgp-failover-test-response :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation stop-bgp-failover-test :shape-name
                                       "StopBgpFailoverTest" :input
                                       stop-bgp-failover-test-request :output
                                       stop-bgp-failover-test-response :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception
                                        duplicate-tag-keys-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation update-connection :shape-name
                                       "UpdateConnection" :input
                                       update-connection-request :output
                                       connection :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation update-direct-connect-gateway
                                       :shape-name "UpdateDirectConnectGateway"
                                       :input
                                       update-direct-connect-gateway-request
                                       :output
                                       update-direct-connect-gateway-response
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation
 update-direct-connect-gateway-association :shape-name
 "UpdateDirectConnectGatewayAssociation" :input
 update-direct-connect-gateway-association-request :output
 update-direct-connect-gateway-association-result :errors
 (direct-connect-client-exception direct-connect-server-exception))

(smithy/sdk/operation:define-operation update-lag :shape-name "UpdateLag"
                                       :input update-lag-request :output lag
                                       :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))

(smithy/sdk/operation:define-operation update-virtual-interface-attributes
                                       :shape-name
                                       "UpdateVirtualInterfaceAttributes"
                                       :input
                                       update-virtual-interface-attributes-request
                                       :output virtual-interface :errors
                                       (direct-connect-client-exception
                                        direct-connect-server-exception))
