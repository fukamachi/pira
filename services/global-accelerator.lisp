(uiop/package:define-package #:pira/global-accelerator (:use)
                             (:export #:accelerator #:accelerator-attributes
                              #:accelerator-event #:accelerator-events
                              #:accelerator-not-disabled-exception
                              #:accelerator-not-found-exception
                              #:accelerator-status #:accelerators
                              #:access-denied-exception
                              #:add-custom-routing-endpoints
                              #:add-custom-routing-endpoints-request
                              #:add-custom-routing-endpoints-response
                              #:add-endpoints #:add-endpoints-request
                              #:add-endpoints-response #:advertise-byoip-cidr
                              #:advertise-byoip-cidr-request
                              #:advertise-byoip-cidr-response
                              #:allow-custom-routing-traffic
                              #:allow-custom-routing-traffic-request
                              #:associated-endpoint-group-found-exception
                              #:associated-listener-found-exception
                              #:attachment #:attachment-name
                              #:attachment-not-found-exception #:attachments
                              #:aws-account-id #:aws-account-ids #:byoip-cidr
                              #:byoip-cidr-event #:byoip-cidr-events
                              #:byoip-cidr-not-found-exception
                              #:byoip-cidr-state #:byoip-cidrs
                              #:cidr-authorization-context #:client-affinity
                              #:conflict-exception #:create-accelerator
                              #:create-accelerator-request
                              #:create-accelerator-response
                              #:create-cross-account-attachment
                              #:create-cross-account-attachment-request
                              #:create-cross-account-attachment-response
                              #:create-custom-routing-accelerator
                              #:create-custom-routing-accelerator-request
                              #:create-custom-routing-accelerator-response
                              #:create-custom-routing-endpoint-group
                              #:create-custom-routing-endpoint-group-request
                              #:create-custom-routing-endpoint-group-response
                              #:create-custom-routing-listener
                              #:create-custom-routing-listener-request
                              #:create-custom-routing-listener-response
                              #:create-endpoint-group
                              #:create-endpoint-group-request
                              #:create-endpoint-group-response
                              #:create-listener #:create-listener-request
                              #:create-listener-response
                              #:cross-account-resource
                              #:cross-account-resources
                              #:custom-routing-accelerator
                              #:custom-routing-accelerator-attributes
                              #:custom-routing-accelerator-status
                              #:custom-routing-accelerators
                              #:custom-routing-destination-configuration
                              #:custom-routing-destination-configurations
                              #:custom-routing-destination-description
                              #:custom-routing-destination-descriptions
                              #:custom-routing-destination-traffic-state
                              #:custom-routing-endpoint-configuration
                              #:custom-routing-endpoint-configurations
                              #:custom-routing-endpoint-description
                              #:custom-routing-endpoint-descriptions
                              #:custom-routing-endpoint-group
                              #:custom-routing-endpoint-groups
                              #:custom-routing-listener
                              #:custom-routing-listeners
                              #:custom-routing-protocol
                              #:custom-routing-protocols #:delete-accelerator
                              #:delete-accelerator-request
                              #:delete-cross-account-attachment
                              #:delete-cross-account-attachment-request
                              #:delete-custom-routing-accelerator
                              #:delete-custom-routing-accelerator-request
                              #:delete-custom-routing-endpoint-group
                              #:delete-custom-routing-endpoint-group-request
                              #:delete-custom-routing-listener
                              #:delete-custom-routing-listener-request
                              #:delete-endpoint-group
                              #:delete-endpoint-group-request #:delete-listener
                              #:delete-listener-request
                              #:deny-custom-routing-traffic
                              #:deny-custom-routing-traffic-request
                              #:deprovision-byoip-cidr
                              #:deprovision-byoip-cidr-request
                              #:deprovision-byoip-cidr-response
                              #:describe-accelerator
                              #:describe-accelerator-attributes
                              #:describe-accelerator-attributes-request
                              #:describe-accelerator-attributes-response
                              #:describe-accelerator-request
                              #:describe-accelerator-response
                              #:describe-cross-account-attachment
                              #:describe-cross-account-attachment-request
                              #:describe-cross-account-attachment-response
                              #:describe-custom-routing-accelerator
                              #:describe-custom-routing-accelerator-attributes
                              #:describe-custom-routing-accelerator-attributes-request
                              #:describe-custom-routing-accelerator-attributes-response
                              #:describe-custom-routing-accelerator-request
                              #:describe-custom-routing-accelerator-response
                              #:describe-custom-routing-endpoint-group
                              #:describe-custom-routing-endpoint-group-request
                              #:describe-custom-routing-endpoint-group-response
                              #:describe-custom-routing-listener
                              #:describe-custom-routing-listener-request
                              #:describe-custom-routing-listener-response
                              #:describe-endpoint-group
                              #:describe-endpoint-group-request
                              #:describe-endpoint-group-response
                              #:describe-listener #:describe-listener-request
                              #:describe-listener-response
                              #:destination-addresses
                              #:destination-port-mapping
                              #:destination-port-mappings #:destination-ports
                              #:endpoint-already-exists-exception
                              #:endpoint-configuration
                              #:endpoint-configurations #:endpoint-description
                              #:endpoint-descriptions #:endpoint-group
                              #:endpoint-group-already-exists-exception
                              #:endpoint-group-not-found-exception
                              #:endpoint-groups #:endpoint-identifier
                              #:endpoint-identifiers #:endpoint-ids
                              #:endpoint-not-found-exception #:endpoint-weight
                              #:error-message #:generic-boolean
                              #:generic-string #:global-accelerator-v20180706
                              #:health-check-interval-seconds
                              #:health-check-path #:health-check-port
                              #:health-check-protocol #:health-state
                              #:idempotency-token
                              #:incorrect-cidr-state-exception
                              #:internal-service-error-exception
                              #:invalid-argument-exception
                              #:invalid-next-token-exception
                              #:invalid-port-range-exception #:ip-address
                              #:ip-address-family #:ip-address-type
                              #:ip-addresses #:ip-set #:ip-sets
                              #:limit-exceeded-exception #:list-accelerators
                              #:list-accelerators-request
                              #:list-accelerators-response #:list-byoip-cidrs
                              #:list-byoip-cidrs-request
                              #:list-byoip-cidrs-response
                              #:list-cross-account-attachments
                              #:list-cross-account-attachments-request
                              #:list-cross-account-attachments-response
                              #:list-cross-account-resource-accounts
                              #:list-cross-account-resource-accounts-request
                              #:list-cross-account-resource-accounts-response
                              #:list-cross-account-resources
                              #:list-cross-account-resources-request
                              #:list-cross-account-resources-response
                              #:list-custom-routing-accelerators
                              #:list-custom-routing-accelerators-request
                              #:list-custom-routing-accelerators-response
                              #:list-custom-routing-endpoint-groups
                              #:list-custom-routing-endpoint-groups-request
                              #:list-custom-routing-endpoint-groups-response
                              #:list-custom-routing-listeners
                              #:list-custom-routing-listeners-request
                              #:list-custom-routing-listeners-response
                              #:list-custom-routing-port-mappings
                              #:list-custom-routing-port-mappings-by-destination
                              #:list-custom-routing-port-mappings-by-destination-request
                              #:list-custom-routing-port-mappings-by-destination-response
                              #:list-custom-routing-port-mappings-request
                              #:list-custom-routing-port-mappings-response
                              #:list-endpoint-groups
                              #:list-endpoint-groups-request
                              #:list-endpoint-groups-response #:list-listeners
                              #:list-listeners-request
                              #:list-listeners-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:listener
                              #:listener-not-found-exception #:listeners
                              #:max-results #:port-mapping #:port-mappings
                              #:port-mappings-max-results #:port-number
                              #:port-override #:port-overrides #:port-range
                              #:port-ranges #:principal #:principals #:protocol
                              #:protocols #:provision-byoip-cidr
                              #:provision-byoip-cidr-request
                              #:provision-byoip-cidr-response
                              #:remove-custom-routing-endpoints
                              #:remove-custom-routing-endpoints-request
                              #:remove-endpoints #:remove-endpoints-request
                              #:resource #:resource-arn #:resources
                              #:socket-address #:socket-addresses #:tag
                              #:tag-key #:tag-keys #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:tags #:threshold-count #:timestamp
                              #:traffic-dial-percentage
                              #:transaction-in-progress-exception
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:update-accelerator
                              #:update-accelerator-attributes
                              #:update-accelerator-attributes-request
                              #:update-accelerator-attributes-response
                              #:update-accelerator-request
                              #:update-accelerator-response
                              #:update-cross-account-attachment
                              #:update-cross-account-attachment-request
                              #:update-cross-account-attachment-response
                              #:update-custom-routing-accelerator
                              #:update-custom-routing-accelerator-attributes
                              #:update-custom-routing-accelerator-attributes-request
                              #:update-custom-routing-accelerator-attributes-response
                              #:update-custom-routing-accelerator-request
                              #:update-custom-routing-accelerator-response
                              #:update-custom-routing-listener
                              #:update-custom-routing-listener-request
                              #:update-custom-routing-listener-response
                              #:update-endpoint-group
                              #:update-endpoint-group-request
                              #:update-endpoint-group-response
                              #:update-listener #:update-listener-request
                              #:update-listener-response #:withdraw-byoip-cidr
                              #:withdraw-byoip-cidr-request
                              #:withdraw-byoip-cidr-response))
(common-lisp:in-package #:pira/global-accelerator)

(smithy/sdk/service:define-service global-accelerator-v20180706 :shape-name
                                   "GlobalAccelerator_V20180706" :version
                                   "2018-08-08" :title "AWS Global Accelerator"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Global Accelerator")
                                      ("arnNamespace" . "globalaccelerator")
                                      ("cloudFormationName"
                                       . "GlobalAccelerator")
                                      ("cloudTrailEventSource"
                                       . "globalaccelerator.amazonaws.com")
                                      ("docId"
                                       . "globalaccelerator-2018-08-08")
                                      ("endpointPrefix" . "globalaccelerator"))
                                     ("aws.auth#sigv4"
                                      ("name" . "globalaccelerator"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-structure accelerator common-lisp:nil
                                    ((accelerator-arn :target-type
                                      generic-string :member-name
                                      "AcceleratorArn")
                                     (name :target-type generic-string
                                      :member-name "Name")
                                     (ip-address-type :target-type
                                      ip-address-type :member-name
                                      "IpAddressType")
                                     (enabled :target-type generic-boolean
                                      :member-name "Enabled")
                                     (ip-sets :target-type ip-sets :member-name
                                      "IpSets")
                                     (dns-name :target-type generic-string
                                      :member-name "DnsName")
                                     (status :target-type accelerator-status
                                      :member-name "Status")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime")
                                     (last-modified-time :target-type timestamp
                                      :member-name "LastModifiedTime")
                                     (dual-stack-dns-name :target-type
                                      generic-string :member-name
                                      "DualStackDnsName")
                                     (events :target-type accelerator-events
                                      :member-name "Events"))
                                    (:shape-name "Accelerator"))

(smithy/sdk/shapes:define-structure accelerator-attributes common-lisp:nil
                                    ((flow-logs-enabled :target-type
                                      generic-boolean :member-name
                                      "FlowLogsEnabled")
                                     (flow-logs-s3bucket :target-type
                                      generic-string :member-name
                                      "FlowLogsS3Bucket")
                                     (flow-logs-s3prefix :target-type
                                      generic-string :member-name
                                      "FlowLogsS3Prefix"))
                                    (:shape-name "AcceleratorAttributes"))

(smithy/sdk/shapes:define-structure accelerator-event common-lisp:nil
                                    ((message :target-type generic-string
                                      :member-name "Message")
                                     (timestamp :target-type timestamp
                                      :member-name "Timestamp"))
                                    (:shape-name "AcceleratorEvent"))

(smithy/sdk/shapes:define-list accelerator-events :member accelerator-event)

(smithy/sdk/shapes:define-error accelerator-not-disabled-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AcceleratorNotDisabledException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error accelerator-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AcceleratorNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum accelerator-status
    common-lisp:nil
  (:deployed "DEPLOYED")
  (:in-progress "IN_PROGRESS"))

(smithy/sdk/shapes:define-list accelerators :member accelerator)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input add-custom-routing-endpoints-request
                                common-lisp:nil
                                ((endpoint-configurations :target-type
                                  custom-routing-endpoint-configurations
                                  :required common-lisp:t :member-name
                                  "EndpointConfigurations")
                                 (endpoint-group-arn :target-type
                                  generic-string :required common-lisp:t
                                  :member-name "EndpointGroupArn"))
                                (:shape-name
                                 "AddCustomRoutingEndpointsRequest"))

(smithy/sdk/shapes:define-output add-custom-routing-endpoints-response
                                 common-lisp:nil
                                 ((endpoint-descriptions :target-type
                                   custom-routing-endpoint-descriptions
                                   :member-name "EndpointDescriptions")
                                  (endpoint-group-arn :target-type
                                   generic-string :member-name
                                   "EndpointGroupArn"))
                                 (:shape-name
                                  "AddCustomRoutingEndpointsResponse"))

(smithy/sdk/shapes:define-input add-endpoints-request common-lisp:nil
                                ((endpoint-configurations :target-type
                                  endpoint-configurations :required
                                  common-lisp:t :member-name
                                  "EndpointConfigurations")
                                 (endpoint-group-arn :target-type
                                  generic-string :required common-lisp:t
                                  :member-name "EndpointGroupArn"))
                                (:shape-name "AddEndpointsRequest"))

(smithy/sdk/shapes:define-output add-endpoints-response common-lisp:nil
                                 ((endpoint-descriptions :target-type
                                   endpoint-descriptions :member-name
                                   "EndpointDescriptions")
                                  (endpoint-group-arn :target-type
                                   generic-string :member-name
                                   "EndpointGroupArn"))
                                 (:shape-name "AddEndpointsResponse"))

(smithy/sdk/shapes:define-input advertise-byoip-cidr-request common-lisp:nil
                                ((cidr :target-type generic-string :required
                                  common-lisp:t :member-name "Cidr"))
                                (:shape-name "AdvertiseByoipCidrRequest"))

(smithy/sdk/shapes:define-output advertise-byoip-cidr-response common-lisp:nil
                                 ((byoip-cidr :target-type byoip-cidr
                                   :member-name "ByoipCidr"))
                                 (:shape-name "AdvertiseByoipCidrResponse"))

(smithy/sdk/shapes:define-input allow-custom-routing-traffic-request
                                common-lisp:nil
                                ((endpoint-group-arn :target-type
                                  generic-string :required common-lisp:t
                                  :member-name "EndpointGroupArn")
                                 (endpoint-id :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "EndpointId")
                                 (destination-addresses :target-type
                                  destination-addresses :member-name
                                  "DestinationAddresses")
                                 (destination-ports :target-type
                                  destination-ports :member-name
                                  "DestinationPorts")
                                 (allow-all-traffic-to-endpoint :target-type
                                  generic-boolean :member-name
                                  "AllowAllTrafficToEndpoint"))
                                (:shape-name
                                 "AllowCustomRoutingTrafficRequest"))

(smithy/sdk/shapes:define-error associated-endpoint-group-found-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "AssociatedEndpointGroupFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error associated-listener-found-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "AssociatedListenerFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure attachment common-lisp:nil
                                    ((attachment-arn :target-type
                                      generic-string :member-name
                                      "AttachmentArn")
                                     (name :target-type attachment-name
                                      :member-name "Name")
                                     (principals :target-type principals
                                      :member-name "Principals")
                                     (resources :target-type resources
                                      :member-name "Resources")
                                     (last-modified-time :target-type timestamp
                                      :member-name "LastModifiedTime")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime"))
                                    (:shape-name "Attachment"))

(smithy/sdk/shapes:define-type attachment-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error attachment-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AttachmentNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-list attachments :member attachment)

(smithy/sdk/shapes:define-type aws-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list aws-account-ids :member aws-account-id)

(smithy/sdk/shapes:define-structure byoip-cidr common-lisp:nil
                                    ((cidr :target-type generic-string
                                      :member-name "Cidr")
                                     (state :target-type byoip-cidr-state
                                      :member-name "State")
                                     (events :target-type byoip-cidr-events
                                      :member-name "Events"))
                                    (:shape-name "ByoipCidr"))

(smithy/sdk/shapes:define-structure byoip-cidr-event common-lisp:nil
                                    ((message :target-type generic-string
                                      :member-name "Message")
                                     (timestamp :target-type timestamp
                                      :member-name "Timestamp"))
                                    (:shape-name "ByoipCidrEvent"))

(smithy/sdk/shapes:define-list byoip-cidr-events :member byoip-cidr-event)

(smithy/sdk/shapes:define-error byoip-cidr-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ByoipCidrNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum byoip-cidr-state
    common-lisp:nil
  (:pending-provisioning "PENDING_PROVISIONING")
  (:ready "READY")
  (:pending-advertising "PENDING_ADVERTISING")
  (:advertising "ADVERTISING")
  (:pending-withdrawing "PENDING_WITHDRAWING")
  (:pending-deprovisioning "PENDING_DEPROVISIONING")
  (:deprovisioned "DEPROVISIONED")
  (:failed-provision "FAILED_PROVISION")
  (:failed-advertising "FAILED_ADVERTISING")
  (:failed-withdraw "FAILED_WITHDRAW")
  (:failed-deprovision "FAILED_DEPROVISION"))

(smithy/sdk/shapes:define-list byoip-cidrs :member byoip-cidr)

(smithy/sdk/shapes:define-structure cidr-authorization-context common-lisp:nil
                                    ((message :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "Message")
                                     (signature :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "Signature"))
                                    (:shape-name "CidrAuthorizationContext"))

(smithy/sdk/shapes:define-enum client-affinity
    common-lisp:nil
  (:none "NONE")
  (:source-ip "SOURCE_IP"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-accelerator-request common-lisp:nil
                                ((name :target-type generic-string :required
                                  common-lisp:t :member-name "Name")
                                 (ip-address-type :target-type ip-address-type
                                  :member-name "IpAddressType")
                                 (ip-addresses :target-type ip-addresses
                                  :member-name "IpAddresses")
                                 (enabled :target-type generic-boolean
                                  :member-name "Enabled")
                                 (idempotency-token :target-type
                                  idempotency-token :required common-lisp:t
                                  :member-name "IdempotencyToken")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateAcceleratorRequest"))

(smithy/sdk/shapes:define-output create-accelerator-response common-lisp:nil
                                 ((accelerator :target-type accelerator
                                   :member-name "Accelerator"))
                                 (:shape-name "CreateAcceleratorResponse"))

(smithy/sdk/shapes:define-input create-cross-account-attachment-request
                                common-lisp:nil
                                ((name :target-type attachment-name :required
                                  common-lisp:t :member-name "Name")
                                 (principals :target-type principals
                                  :member-name "Principals")
                                 (resources :target-type resources :member-name
                                  "Resources")
                                 (idempotency-token :target-type
                                  idempotency-token :required common-lisp:t
                                  :member-name "IdempotencyToken")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name
                                 "CreateCrossAccountAttachmentRequest"))

(smithy/sdk/shapes:define-output create-cross-account-attachment-response
                                 common-lisp:nil
                                 ((cross-account-attachment :target-type
                                   attachment :member-name
                                   "CrossAccountAttachment"))
                                 (:shape-name
                                  "CreateCrossAccountAttachmentResponse"))

(smithy/sdk/shapes:define-input create-custom-routing-accelerator-request
                                common-lisp:nil
                                ((name :target-type generic-string :required
                                  common-lisp:t :member-name "Name")
                                 (ip-address-type :target-type ip-address-type
                                  :member-name "IpAddressType")
                                 (ip-addresses :target-type ip-addresses
                                  :member-name "IpAddresses")
                                 (enabled :target-type generic-boolean
                                  :member-name "Enabled")
                                 (idempotency-token :target-type
                                  idempotency-token :required common-lisp:t
                                  :member-name "IdempotencyToken")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name
                                 "CreateCustomRoutingAcceleratorRequest"))

(smithy/sdk/shapes:define-output create-custom-routing-accelerator-response
                                 common-lisp:nil
                                 ((accelerator :target-type
                                   custom-routing-accelerator :member-name
                                   "Accelerator"))
                                 (:shape-name
                                  "CreateCustomRoutingAcceleratorResponse"))

(smithy/sdk/shapes:define-input create-custom-routing-endpoint-group-request
                                common-lisp:nil
                                ((listener-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "ListenerArn")
                                 (endpoint-group-region :target-type
                                  generic-string :required common-lisp:t
                                  :member-name "EndpointGroupRegion")
                                 (destination-configurations :target-type
                                  custom-routing-destination-configurations
                                  :required common-lisp:t :member-name
                                  "DestinationConfigurations")
                                 (idempotency-token :target-type
                                  idempotency-token :required common-lisp:t
                                  :member-name "IdempotencyToken"))
                                (:shape-name
                                 "CreateCustomRoutingEndpointGroupRequest"))

(smithy/sdk/shapes:define-output create-custom-routing-endpoint-group-response
                                 common-lisp:nil
                                 ((endpoint-group :target-type
                                   custom-routing-endpoint-group :member-name
                                   "EndpointGroup"))
                                 (:shape-name
                                  "CreateCustomRoutingEndpointGroupResponse"))

(smithy/sdk/shapes:define-input create-custom-routing-listener-request
                                common-lisp:nil
                                ((accelerator-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "AcceleratorArn")
                                 (port-ranges :target-type port-ranges
                                  :required common-lisp:t :member-name
                                  "PortRanges")
                                 (idempotency-token :target-type
                                  idempotency-token :required common-lisp:t
                                  :member-name "IdempotencyToken"))
                                (:shape-name
                                 "CreateCustomRoutingListenerRequest"))

(smithy/sdk/shapes:define-output create-custom-routing-listener-response
                                 common-lisp:nil
                                 ((listener :target-type
                                   custom-routing-listener :member-name
                                   "Listener"))
                                 (:shape-name
                                  "CreateCustomRoutingListenerResponse"))

(smithy/sdk/shapes:define-input create-endpoint-group-request common-lisp:nil
                                ((listener-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "ListenerArn")
                                 (endpoint-group-region :target-type
                                  generic-string :required common-lisp:t
                                  :member-name "EndpointGroupRegion")
                                 (endpoint-configurations :target-type
                                  endpoint-configurations :member-name
                                  "EndpointConfigurations")
                                 (traffic-dial-percentage :target-type
                                  traffic-dial-percentage :member-name
                                  "TrafficDialPercentage")
                                 (health-check-port :target-type
                                  health-check-port :member-name
                                  "HealthCheckPort")
                                 (health-check-protocol :target-type
                                  health-check-protocol :member-name
                                  "HealthCheckProtocol")
                                 (health-check-path :target-type
                                  health-check-path :member-name
                                  "HealthCheckPath")
                                 (health-check-interval-seconds :target-type
                                  health-check-interval-seconds :member-name
                                  "HealthCheckIntervalSeconds")
                                 (threshold-count :target-type threshold-count
                                  :member-name "ThresholdCount")
                                 (idempotency-token :target-type
                                  idempotency-token :required common-lisp:t
                                  :member-name "IdempotencyToken")
                                 (port-overrides :target-type port-overrides
                                  :member-name "PortOverrides"))
                                (:shape-name "CreateEndpointGroupRequest"))

(smithy/sdk/shapes:define-output create-endpoint-group-response common-lisp:nil
                                 ((endpoint-group :target-type endpoint-group
                                   :member-name "EndpointGroup"))
                                 (:shape-name "CreateEndpointGroupResponse"))

(smithy/sdk/shapes:define-input create-listener-request common-lisp:nil
                                ((accelerator-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "AcceleratorArn")
                                 (port-ranges :target-type port-ranges
                                  :required common-lisp:t :member-name
                                  "PortRanges")
                                 (protocol :target-type protocol :required
                                  common-lisp:t :member-name "Protocol")
                                 (client-affinity :target-type client-affinity
                                  :member-name "ClientAffinity")
                                 (idempotency-token :target-type
                                  idempotency-token :required common-lisp:t
                                  :member-name "IdempotencyToken"))
                                (:shape-name "CreateListenerRequest"))

(smithy/sdk/shapes:define-output create-listener-response common-lisp:nil
                                 ((listener :target-type listener :member-name
                                   "Listener"))
                                 (:shape-name "CreateListenerResponse"))

(smithy/sdk/shapes:define-structure cross-account-resource common-lisp:nil
                                    ((endpoint-id :target-type generic-string
                                      :member-name "EndpointId")
                                     (cidr :target-type generic-string
                                      :member-name "Cidr")
                                     (attachment-arn :target-type
                                      generic-string :member-name
                                      "AttachmentArn"))
                                    (:shape-name "CrossAccountResource"))

(smithy/sdk/shapes:define-list cross-account-resources :member
                               cross-account-resource)

(smithy/sdk/shapes:define-structure custom-routing-accelerator common-lisp:nil
                                    ((accelerator-arn :target-type
                                      generic-string :member-name
                                      "AcceleratorArn")
                                     (name :target-type generic-string
                                      :member-name "Name")
                                     (ip-address-type :target-type
                                      ip-address-type :member-name
                                      "IpAddressType")
                                     (enabled :target-type generic-boolean
                                      :member-name "Enabled")
                                     (ip-sets :target-type ip-sets :member-name
                                      "IpSets")
                                     (dns-name :target-type generic-string
                                      :member-name "DnsName")
                                     (status :target-type
                                      custom-routing-accelerator-status
                                      :member-name "Status")
                                     (created-time :target-type timestamp
                                      :member-name "CreatedTime")
                                     (last-modified-time :target-type timestamp
                                      :member-name "LastModifiedTime"))
                                    (:shape-name "CustomRoutingAccelerator"))

(smithy/sdk/shapes:define-structure custom-routing-accelerator-attributes
                                    common-lisp:nil
                                    ((flow-logs-enabled :target-type
                                      generic-boolean :member-name
                                      "FlowLogsEnabled")
                                     (flow-logs-s3bucket :target-type
                                      generic-string :member-name
                                      "FlowLogsS3Bucket")
                                     (flow-logs-s3prefix :target-type
                                      generic-string :member-name
                                      "FlowLogsS3Prefix"))
                                    (:shape-name
                                     "CustomRoutingAcceleratorAttributes"))

(smithy/sdk/shapes:define-enum custom-routing-accelerator-status
    common-lisp:nil
  (:deployed "DEPLOYED")
  (:in-progress "IN_PROGRESS"))

(smithy/sdk/shapes:define-list custom-routing-accelerators :member
                               custom-routing-accelerator)

(smithy/sdk/shapes:define-structure custom-routing-destination-configuration
                                    common-lisp:nil
                                    ((from-port :target-type port-number
                                      :required common-lisp:t :member-name
                                      "FromPort")
                                     (to-port :target-type port-number
                                      :required common-lisp:t :member-name
                                      "ToPort")
                                     (protocols :target-type
                                      custom-routing-protocols :required
                                      common-lisp:t :member-name "Protocols"))
                                    (:shape-name
                                     "CustomRoutingDestinationConfiguration"))

(smithy/sdk/shapes:define-list custom-routing-destination-configurations
                               :member custom-routing-destination-configuration)

(smithy/sdk/shapes:define-structure custom-routing-destination-description
                                    common-lisp:nil
                                    ((from-port :target-type port-number
                                      :member-name "FromPort")
                                     (to-port :target-type port-number
                                      :member-name "ToPort")
                                     (protocols :target-type protocols
                                      :member-name "Protocols"))
                                    (:shape-name
                                     "CustomRoutingDestinationDescription"))

(smithy/sdk/shapes:define-list custom-routing-destination-descriptions :member
                               custom-routing-destination-description)

(smithy/sdk/shapes:define-enum custom-routing-destination-traffic-state
    common-lisp:nil
  (:allow "ALLOW")
  (:deny "DENY"))

(smithy/sdk/shapes:define-structure custom-routing-endpoint-configuration
                                    common-lisp:nil
                                    ((endpoint-id :target-type generic-string
                                      :member-name "EndpointId")
                                     (attachment-arn :target-type
                                      generic-string :member-name
                                      "AttachmentArn"))
                                    (:shape-name
                                     "CustomRoutingEndpointConfiguration"))

(smithy/sdk/shapes:define-list custom-routing-endpoint-configurations :member
                               custom-routing-endpoint-configuration)

(smithy/sdk/shapes:define-structure custom-routing-endpoint-description
                                    common-lisp:nil
                                    ((endpoint-id :target-type generic-string
                                      :member-name "EndpointId"))
                                    (:shape-name
                                     "CustomRoutingEndpointDescription"))

(smithy/sdk/shapes:define-list custom-routing-endpoint-descriptions :member
                               custom-routing-endpoint-description)

(smithy/sdk/shapes:define-structure custom-routing-endpoint-group
                                    common-lisp:nil
                                    ((endpoint-group-arn :target-type
                                      generic-string :member-name
                                      "EndpointGroupArn")
                                     (endpoint-group-region :target-type
                                      generic-string :member-name
                                      "EndpointGroupRegion")
                                     (destination-descriptions :target-type
                                      custom-routing-destination-descriptions
                                      :member-name "DestinationDescriptions")
                                     (endpoint-descriptions :target-type
                                      custom-routing-endpoint-descriptions
                                      :member-name "EndpointDescriptions"))
                                    (:shape-name "CustomRoutingEndpointGroup"))

(smithy/sdk/shapes:define-list custom-routing-endpoint-groups :member
                               custom-routing-endpoint-group)

(smithy/sdk/shapes:define-structure custom-routing-listener common-lisp:nil
                                    ((listener-arn :target-type generic-string
                                      :member-name "ListenerArn")
                                     (port-ranges :target-type port-ranges
                                      :member-name "PortRanges"))
                                    (:shape-name "CustomRoutingListener"))

(smithy/sdk/shapes:define-list custom-routing-listeners :member
                               custom-routing-listener)

(smithy/sdk/shapes:define-enum custom-routing-protocol
    common-lisp:nil
  (:tcp "TCP")
  (:udp "UDP"))

(smithy/sdk/shapes:define-list custom-routing-protocols :member
                               custom-routing-protocol)

(smithy/sdk/shapes:define-input delete-accelerator-request common-lisp:nil
                                ((accelerator-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "AcceleratorArn"))
                                (:shape-name "DeleteAcceleratorRequest"))

(smithy/sdk/shapes:define-input delete-cross-account-attachment-request
                                common-lisp:nil
                                ((attachment-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "AttachmentArn"))
                                (:shape-name
                                 "DeleteCrossAccountAttachmentRequest"))

(smithy/sdk/shapes:define-input delete-custom-routing-accelerator-request
                                common-lisp:nil
                                ((accelerator-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "AcceleratorArn"))
                                (:shape-name
                                 "DeleteCustomRoutingAcceleratorRequest"))

(smithy/sdk/shapes:define-input delete-custom-routing-endpoint-group-request
                                common-lisp:nil
                                ((endpoint-group-arn :target-type
                                  generic-string :required common-lisp:t
                                  :member-name "EndpointGroupArn"))
                                (:shape-name
                                 "DeleteCustomRoutingEndpointGroupRequest"))

(smithy/sdk/shapes:define-input delete-custom-routing-listener-request
                                common-lisp:nil
                                ((listener-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "ListenerArn"))
                                (:shape-name
                                 "DeleteCustomRoutingListenerRequest"))

(smithy/sdk/shapes:define-input delete-endpoint-group-request common-lisp:nil
                                ((endpoint-group-arn :target-type
                                  generic-string :required common-lisp:t
                                  :member-name "EndpointGroupArn"))
                                (:shape-name "DeleteEndpointGroupRequest"))

(smithy/sdk/shapes:define-input delete-listener-request common-lisp:nil
                                ((listener-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "ListenerArn"))
                                (:shape-name "DeleteListenerRequest"))

(smithy/sdk/shapes:define-input deny-custom-routing-traffic-request
                                common-lisp:nil
                                ((endpoint-group-arn :target-type
                                  generic-string :required common-lisp:t
                                  :member-name "EndpointGroupArn")
                                 (endpoint-id :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "EndpointId")
                                 (destination-addresses :target-type
                                  destination-addresses :member-name
                                  "DestinationAddresses")
                                 (destination-ports :target-type
                                  destination-ports :member-name
                                  "DestinationPorts")
                                 (deny-all-traffic-to-endpoint :target-type
                                  generic-boolean :member-name
                                  "DenyAllTrafficToEndpoint"))
                                (:shape-name "DenyCustomRoutingTrafficRequest"))

(smithy/sdk/shapes:define-input deprovision-byoip-cidr-request common-lisp:nil
                                ((cidr :target-type generic-string :required
                                  common-lisp:t :member-name "Cidr"))
                                (:shape-name "DeprovisionByoipCidrRequest"))

(smithy/sdk/shapes:define-output deprovision-byoip-cidr-response
                                 common-lisp:nil
                                 ((byoip-cidr :target-type byoip-cidr
                                   :member-name "ByoipCidr"))
                                 (:shape-name "DeprovisionByoipCidrResponse"))

(smithy/sdk/shapes:define-input describe-accelerator-attributes-request
                                common-lisp:nil
                                ((accelerator-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "AcceleratorArn"))
                                (:shape-name
                                 "DescribeAcceleratorAttributesRequest"))

(smithy/sdk/shapes:define-output describe-accelerator-attributes-response
                                 common-lisp:nil
                                 ((accelerator-attributes :target-type
                                   accelerator-attributes :member-name
                                   "AcceleratorAttributes"))
                                 (:shape-name
                                  "DescribeAcceleratorAttributesResponse"))

(smithy/sdk/shapes:define-input describe-accelerator-request common-lisp:nil
                                ((accelerator-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "AcceleratorArn"))
                                (:shape-name "DescribeAcceleratorRequest"))

(smithy/sdk/shapes:define-output describe-accelerator-response common-lisp:nil
                                 ((accelerator :target-type accelerator
                                   :member-name "Accelerator"))
                                 (:shape-name "DescribeAcceleratorResponse"))

(smithy/sdk/shapes:define-input describe-cross-account-attachment-request
                                common-lisp:nil
                                ((attachment-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "AttachmentArn"))
                                (:shape-name
                                 "DescribeCrossAccountAttachmentRequest"))

(smithy/sdk/shapes:define-output describe-cross-account-attachment-response
                                 common-lisp:nil
                                 ((cross-account-attachment :target-type
                                   attachment :member-name
                                   "CrossAccountAttachment"))
                                 (:shape-name
                                  "DescribeCrossAccountAttachmentResponse"))

(smithy/sdk/shapes:define-input
 describe-custom-routing-accelerator-attributes-request common-lisp:nil
 ((accelerator-arn :target-type generic-string :required common-lisp:t
   :member-name "AcceleratorArn"))
 (:shape-name "DescribeCustomRoutingAcceleratorAttributesRequest"))

(smithy/sdk/shapes:define-output
 describe-custom-routing-accelerator-attributes-response common-lisp:nil
 ((accelerator-attributes :target-type custom-routing-accelerator-attributes
   :member-name "AcceleratorAttributes"))
 (:shape-name "DescribeCustomRoutingAcceleratorAttributesResponse"))

(smithy/sdk/shapes:define-input describe-custom-routing-accelerator-request
                                common-lisp:nil
                                ((accelerator-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "AcceleratorArn"))
                                (:shape-name
                                 "DescribeCustomRoutingAcceleratorRequest"))

(smithy/sdk/shapes:define-output describe-custom-routing-accelerator-response
                                 common-lisp:nil
                                 ((accelerator :target-type
                                   custom-routing-accelerator :member-name
                                   "Accelerator"))
                                 (:shape-name
                                  "DescribeCustomRoutingAcceleratorResponse"))

(smithy/sdk/shapes:define-input describe-custom-routing-endpoint-group-request
                                common-lisp:nil
                                ((endpoint-group-arn :target-type
                                  generic-string :required common-lisp:t
                                  :member-name "EndpointGroupArn"))
                                (:shape-name
                                 "DescribeCustomRoutingEndpointGroupRequest"))

(smithy/sdk/shapes:define-output
 describe-custom-routing-endpoint-group-response common-lisp:nil
 ((endpoint-group :target-type custom-routing-endpoint-group :member-name
   "EndpointGroup"))
 (:shape-name "DescribeCustomRoutingEndpointGroupResponse"))

(smithy/sdk/shapes:define-input describe-custom-routing-listener-request
                                common-lisp:nil
                                ((listener-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "ListenerArn"))
                                (:shape-name
                                 "DescribeCustomRoutingListenerRequest"))

(smithy/sdk/shapes:define-output describe-custom-routing-listener-response
                                 common-lisp:nil
                                 ((listener :target-type
                                   custom-routing-listener :member-name
                                   "Listener"))
                                 (:shape-name
                                  "DescribeCustomRoutingListenerResponse"))

(smithy/sdk/shapes:define-input describe-endpoint-group-request common-lisp:nil
                                ((endpoint-group-arn :target-type
                                  generic-string :required common-lisp:t
                                  :member-name "EndpointGroupArn"))
                                (:shape-name "DescribeEndpointGroupRequest"))

(smithy/sdk/shapes:define-output describe-endpoint-group-response
                                 common-lisp:nil
                                 ((endpoint-group :target-type endpoint-group
                                   :member-name "EndpointGroup"))
                                 (:shape-name "DescribeEndpointGroupResponse"))

(smithy/sdk/shapes:define-input describe-listener-request common-lisp:nil
                                ((listener-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "ListenerArn"))
                                (:shape-name "DescribeListenerRequest"))

(smithy/sdk/shapes:define-output describe-listener-response common-lisp:nil
                                 ((listener :target-type listener :member-name
                                   "Listener"))
                                 (:shape-name "DescribeListenerResponse"))

(smithy/sdk/shapes:define-list destination-addresses :member ip-address)

(smithy/sdk/shapes:define-structure destination-port-mapping common-lisp:nil
                                    ((accelerator-arn :target-type
                                      generic-string :member-name
                                      "AcceleratorArn")
                                     (accelerator-socket-addresses :target-type
                                      socket-addresses :member-name
                                      "AcceleratorSocketAddresses")
                                     (endpoint-group-arn :target-type
                                      generic-string :member-name
                                      "EndpointGroupArn")
                                     (endpoint-id :target-type generic-string
                                      :member-name "EndpointId")
                                     (endpoint-group-region :target-type
                                      generic-string :member-name
                                      "EndpointGroupRegion")
                                     (destination-socket-address :target-type
                                      socket-address :member-name
                                      "DestinationSocketAddress")
                                     (ip-address-type :target-type
                                      ip-address-type :member-name
                                      "IpAddressType")
                                     (destination-traffic-state :target-type
                                      custom-routing-destination-traffic-state
                                      :member-name "DestinationTrafficState"))
                                    (:shape-name "DestinationPortMapping"))

(smithy/sdk/shapes:define-list destination-port-mappings :member
                               destination-port-mapping)

(smithy/sdk/shapes:define-list destination-ports :member port-number)

(smithy/sdk/shapes:define-error endpoint-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "EndpointAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure endpoint-configuration common-lisp:nil
                                    ((endpoint-id :target-type generic-string
                                      :member-name "EndpointId")
                                     (weight :target-type endpoint-weight
                                      :member-name "Weight")
                                     (client-ippreservation-enabled
                                      :target-type generic-boolean :member-name
                                      "ClientIPPreservationEnabled")
                                     (attachment-arn :target-type
                                      generic-string :member-name
                                      "AttachmentArn"))
                                    (:shape-name "EndpointConfiguration"))

(smithy/sdk/shapes:define-list endpoint-configurations :member
                               endpoint-configuration)

(smithy/sdk/shapes:define-structure endpoint-description common-lisp:nil
                                    ((endpoint-id :target-type generic-string
                                      :member-name "EndpointId")
                                     (weight :target-type endpoint-weight
                                      :member-name "Weight")
                                     (health-state :target-type health-state
                                      :member-name "HealthState")
                                     (health-reason :target-type generic-string
                                      :member-name "HealthReason")
                                     (client-ippreservation-enabled
                                      :target-type generic-boolean :member-name
                                      "ClientIPPreservationEnabled"))
                                    (:shape-name "EndpointDescription"))

(smithy/sdk/shapes:define-list endpoint-descriptions :member
                               endpoint-description)

(smithy/sdk/shapes:define-structure endpoint-group common-lisp:nil
                                    ((endpoint-group-arn :target-type
                                      generic-string :member-name
                                      "EndpointGroupArn")
                                     (endpoint-group-region :target-type
                                      generic-string :member-name
                                      "EndpointGroupRegion")
                                     (endpoint-descriptions :target-type
                                      endpoint-descriptions :member-name
                                      "EndpointDescriptions")
                                     (traffic-dial-percentage :target-type
                                      traffic-dial-percentage :member-name
                                      "TrafficDialPercentage")
                                     (health-check-port :target-type
                                      health-check-port :member-name
                                      "HealthCheckPort")
                                     (health-check-protocol :target-type
                                      health-check-protocol :member-name
                                      "HealthCheckProtocol")
                                     (health-check-path :target-type
                                      health-check-path :member-name
                                      "HealthCheckPath")
                                     (health-check-interval-seconds
                                      :target-type
                                      health-check-interval-seconds
                                      :member-name
                                      "HealthCheckIntervalSeconds")
                                     (threshold-count :target-type
                                      threshold-count :member-name
                                      "ThresholdCount")
                                     (port-overrides :target-type
                                      port-overrides :member-name
                                      "PortOverrides"))
                                    (:shape-name "EndpointGroup"))

(smithy/sdk/shapes:define-error endpoint-group-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name
                                 "EndpointGroupAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error endpoint-group-not-found-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "EndpointGroupNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-list endpoint-groups :member endpoint-group)

(smithy/sdk/shapes:define-structure endpoint-identifier common-lisp:nil
                                    ((endpoint-id :target-type generic-string
                                      :required common-lisp:t :member-name
                                      "EndpointId")
                                     (client-ippreservation-enabled
                                      :target-type generic-boolean :member-name
                                      "ClientIPPreservationEnabled"))
                                    (:shape-name "EndpointIdentifier"))

(smithy/sdk/shapes:define-list endpoint-identifiers :member endpoint-identifier)

(smithy/sdk/shapes:define-list endpoint-ids :member generic-string)

(smithy/sdk/shapes:define-error endpoint-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "EndpointNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type endpoint-weight smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type generic-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type generic-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type health-check-interval-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type health-check-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type health-check-port
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum health-check-protocol
    common-lisp:nil
  (:tcp "TCP")
  (:http "HTTP")
  (:https "HTTPS"))

(smithy/sdk/shapes:define-enum health-state
    common-lisp:nil
  (:initial "INITIAL")
  (:healthy "HEALTHY")
  (:unhealthy "UNHEALTHY"))

(smithy/sdk/shapes:define-type idempotency-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error incorrect-cidr-state-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "IncorrectCidrStateException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error internal-service-error-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServiceErrorException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-argument-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidArgumentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-port-range-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidPortRangeException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ip-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum ip-address-family
    common-lisp:nil
  (:ipv4 "IPv4")
  (:ipv6 "IPv6"))

(smithy/sdk/shapes:define-enum ip-address-type
    common-lisp:nil
  (:ipv4 "IPV4")
  (:dual-stack "DUAL_STACK"))

(smithy/sdk/shapes:define-list ip-addresses :member ip-address)

(smithy/sdk/shapes:define-structure ip-set common-lisp:nil
                                    ((ip-family :target-type generic-string
                                      :member-name "IpFamily")
                                     (ip-addresses :target-type ip-addresses
                                      :member-name "IpAddresses")
                                     (ip-address-family :target-type
                                      ip-address-family :member-name
                                      "IpAddressFamily"))
                                    (:shape-name "IpSet"))

(smithy/sdk/shapes:define-list ip-sets :member ip-set)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input list-accelerators-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type generic-string
                                  :member-name "NextToken"))
                                (:shape-name "ListAcceleratorsRequest"))

(smithy/sdk/shapes:define-output list-accelerators-response common-lisp:nil
                                 ((accelerators :target-type accelerators
                                   :member-name "Accelerators")
                                  (next-token :target-type generic-string
                                   :member-name "NextToken"))
                                 (:shape-name "ListAcceleratorsResponse"))

(smithy/sdk/shapes:define-input list-byoip-cidrs-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type generic-string
                                  :member-name "NextToken"))
                                (:shape-name "ListByoipCidrsRequest"))

(smithy/sdk/shapes:define-output list-byoip-cidrs-response common-lisp:nil
                                 ((byoip-cidrs :target-type byoip-cidrs
                                   :member-name "ByoipCidrs")
                                  (next-token :target-type generic-string
                                   :member-name "NextToken"))
                                 (:shape-name "ListByoipCidrsResponse"))

(smithy/sdk/shapes:define-input list-cross-account-attachments-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type generic-string
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListCrossAccountAttachmentsRequest"))

(smithy/sdk/shapes:define-output list-cross-account-attachments-response
                                 common-lisp:nil
                                 ((cross-account-attachments :target-type
                                   attachments :member-name
                                   "CrossAccountAttachments")
                                  (next-token :target-type generic-string
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListCrossAccountAttachmentsResponse"))

(smithy/sdk/shapes:define-input list-cross-account-resource-accounts-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "ListCrossAccountResourceAccountsRequest"))

(smithy/sdk/shapes:define-output list-cross-account-resource-accounts-response
                                 common-lisp:nil
                                 ((resource-owner-aws-account-ids :target-type
                                   aws-account-ids :member-name
                                   "ResourceOwnerAwsAccountIds"))
                                 (:shape-name
                                  "ListCrossAccountResourceAccountsResponse"))

(smithy/sdk/shapes:define-input list-cross-account-resources-request
                                common-lisp:nil
                                ((accelerator-arn :target-type generic-string
                                  :member-name "AcceleratorArn")
                                 (resource-owner-aws-account-id :target-type
                                  aws-account-id :required common-lisp:t
                                  :member-name "ResourceOwnerAwsAccountId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type generic-string
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListCrossAccountResourcesRequest"))

(smithy/sdk/shapes:define-output list-cross-account-resources-response
                                 common-lisp:nil
                                 ((cross-account-resources :target-type
                                   cross-account-resources :member-name
                                   "CrossAccountResources")
                                  (next-token :target-type generic-string
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListCrossAccountResourcesResponse"))

(smithy/sdk/shapes:define-input list-custom-routing-accelerators-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type generic-string
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListCustomRoutingAcceleratorsRequest"))

(smithy/sdk/shapes:define-output list-custom-routing-accelerators-response
                                 common-lisp:nil
                                 ((accelerators :target-type
                                   custom-routing-accelerators :member-name
                                   "Accelerators")
                                  (next-token :target-type generic-string
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListCustomRoutingAcceleratorsResponse"))

(smithy/sdk/shapes:define-input list-custom-routing-endpoint-groups-request
                                common-lisp:nil
                                ((listener-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "ListenerArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type generic-string
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListCustomRoutingEndpointGroupsRequest"))

(smithy/sdk/shapes:define-output list-custom-routing-endpoint-groups-response
                                 common-lisp:nil
                                 ((endpoint-groups :target-type
                                   custom-routing-endpoint-groups :member-name
                                   "EndpointGroups")
                                  (next-token :target-type generic-string
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListCustomRoutingEndpointGroupsResponse"))

(smithy/sdk/shapes:define-input list-custom-routing-listeners-request
                                common-lisp:nil
                                ((accelerator-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "AcceleratorArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type generic-string
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListCustomRoutingListenersRequest"))

(smithy/sdk/shapes:define-output list-custom-routing-listeners-response
                                 common-lisp:nil
                                 ((listeners :target-type
                                   custom-routing-listeners :member-name
                                   "Listeners")
                                  (next-token :target-type generic-string
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListCustomRoutingListenersResponse"))

(smithy/sdk/shapes:define-input
 list-custom-routing-port-mappings-by-destination-request common-lisp:nil
 ((endpoint-id :target-type generic-string :required common-lisp:t :member-name
   "EndpointId")
  (destination-address :target-type generic-string :required common-lisp:t
   :member-name "DestinationAddress")
  (max-results :target-type port-mappings-max-results :member-name
   "MaxResults")
  (next-token :target-type generic-string :member-name "NextToken"))
 (:shape-name "ListCustomRoutingPortMappingsByDestinationRequest"))

(smithy/sdk/shapes:define-output
 list-custom-routing-port-mappings-by-destination-response common-lisp:nil
 ((destination-port-mappings :target-type destination-port-mappings
   :member-name "DestinationPortMappings")
  (next-token :target-type generic-string :member-name "NextToken"))
 (:shape-name "ListCustomRoutingPortMappingsByDestinationResponse"))

(smithy/sdk/shapes:define-input list-custom-routing-port-mappings-request
                                common-lisp:nil
                                ((accelerator-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "AcceleratorArn")
                                 (endpoint-group-arn :target-type
                                  generic-string :member-name
                                  "EndpointGroupArn")
                                 (max-results :target-type
                                  port-mappings-max-results :member-name
                                  "MaxResults")
                                 (next-token :target-type generic-string
                                  :member-name "NextToken"))
                                (:shape-name
                                 "ListCustomRoutingPortMappingsRequest"))

(smithy/sdk/shapes:define-output list-custom-routing-port-mappings-response
                                 common-lisp:nil
                                 ((port-mappings :target-type port-mappings
                                   :member-name "PortMappings")
                                  (next-token :target-type generic-string
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListCustomRoutingPortMappingsResponse"))

(smithy/sdk/shapes:define-input list-endpoint-groups-request common-lisp:nil
                                ((listener-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "ListenerArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type generic-string
                                  :member-name "NextToken"))
                                (:shape-name "ListEndpointGroupsRequest"))

(smithy/sdk/shapes:define-output list-endpoint-groups-response common-lisp:nil
                                 ((endpoint-groups :target-type endpoint-groups
                                   :member-name "EndpointGroups")
                                  (next-token :target-type generic-string
                                   :member-name "NextToken"))
                                 (:shape-name "ListEndpointGroupsResponse"))

(smithy/sdk/shapes:define-input list-listeners-request common-lisp:nil
                                ((accelerator-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "AcceleratorArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type generic-string
                                  :member-name "NextToken"))
                                (:shape-name "ListListenersRequest"))

(smithy/sdk/shapes:define-output list-listeners-response common-lisp:nil
                                 ((listeners :target-type listeners
                                   :member-name "Listeners")
                                  (next-token :target-type generic-string
                                   :member-name "NextToken"))
                                 (:shape-name "ListListenersResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure listener common-lisp:nil
                                    ((listener-arn :target-type generic-string
                                      :member-name "ListenerArn")
                                     (port-ranges :target-type port-ranges
                                      :member-name "PortRanges")
                                     (protocol :target-type protocol
                                      :member-name "Protocol")
                                     (client-affinity :target-type
                                      client-affinity :member-name
                                      "ClientAffinity"))
                                    (:shape-name "Listener"))

(smithy/sdk/shapes:define-error listener-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ListenerNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-list listeners :member listener)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure port-mapping common-lisp:nil
                                    ((accelerator-port :target-type port-number
                                      :member-name "AcceleratorPort")
                                     (endpoint-group-arn :target-type
                                      generic-string :member-name
                                      "EndpointGroupArn")
                                     (endpoint-id :target-type generic-string
                                      :member-name "EndpointId")
                                     (destination-socket-address :target-type
                                      socket-address :member-name
                                      "DestinationSocketAddress")
                                     (protocols :target-type
                                      custom-routing-protocols :member-name
                                      "Protocols")
                                     (destination-traffic-state :target-type
                                      custom-routing-destination-traffic-state
                                      :member-name "DestinationTrafficState"))
                                    (:shape-name "PortMapping"))

(smithy/sdk/shapes:define-list port-mappings :member port-mapping)

(smithy/sdk/shapes:define-type port-mappings-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type port-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure port-override common-lisp:nil
                                    ((listener-port :target-type port-number
                                      :member-name "ListenerPort")
                                     (endpoint-port :target-type port-number
                                      :member-name "EndpointPort"))
                                    (:shape-name "PortOverride"))

(smithy/sdk/shapes:define-list port-overrides :member port-override)

(smithy/sdk/shapes:define-structure port-range common-lisp:nil
                                    ((from-port :target-type port-number
                                      :member-name "FromPort")
                                     (to-port :target-type port-number
                                      :member-name "ToPort"))
                                    (:shape-name "PortRange"))

(smithy/sdk/shapes:define-list port-ranges :member port-range)

(smithy/sdk/shapes:define-type principal smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list principals :member principal)

(smithy/sdk/shapes:define-enum protocol
    common-lisp:nil
  (:tcp "TCP")
  (:udp "UDP"))

(smithy/sdk/shapes:define-list protocols :member protocol)

(smithy/sdk/shapes:define-input provision-byoip-cidr-request common-lisp:nil
                                ((cidr :target-type generic-string :required
                                  common-lisp:t :member-name "Cidr")
                                 (cidr-authorization-context :target-type
                                  cidr-authorization-context :required
                                  common-lisp:t :member-name
                                  "CidrAuthorizationContext"))
                                (:shape-name "ProvisionByoipCidrRequest"))

(smithy/sdk/shapes:define-output provision-byoip-cidr-response common-lisp:nil
                                 ((byoip-cidr :target-type byoip-cidr
                                   :member-name "ByoipCidr"))
                                 (:shape-name "ProvisionByoipCidrResponse"))

(smithy/sdk/shapes:define-input remove-custom-routing-endpoints-request
                                common-lisp:nil
                                ((endpoint-ids :target-type endpoint-ids
                                  :required common-lisp:t :member-name
                                  "EndpointIds")
                                 (endpoint-group-arn :target-type
                                  generic-string :required common-lisp:t
                                  :member-name "EndpointGroupArn"))
                                (:shape-name
                                 "RemoveCustomRoutingEndpointsRequest"))

(smithy/sdk/shapes:define-input remove-endpoints-request common-lisp:nil
                                ((endpoint-identifiers :target-type
                                  endpoint-identifiers :required common-lisp:t
                                  :member-name "EndpointIdentifiers")
                                 (endpoint-group-arn :target-type
                                  generic-string :required common-lisp:t
                                  :member-name "EndpointGroupArn"))
                                (:shape-name "RemoveEndpointsRequest"))

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((endpoint-id :target-type generic-string
                                      :member-name "EndpointId")
                                     (cidr :target-type generic-string
                                      :member-name "Cidr")
                                     (region :target-type generic-string
                                      :member-name "Region"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resources :member resource)

(smithy/sdk/shapes:define-structure socket-address common-lisp:nil
                                    ((ip-address :target-type generic-string
                                      :member-name "IpAddress")
                                     (port :target-type port-number
                                      :member-name "Port"))
                                    (:shape-name "SocketAddress"))

(smithy/sdk/shapes:define-list socket-addresses :member socket-address)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-type threshold-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type traffic-dial-percentage
                               smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-error transaction-in-progress-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "TransactionInProgressException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-accelerator-attributes-request
                                common-lisp:nil
                                ((accelerator-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "AcceleratorArn")
                                 (flow-logs-enabled :target-type
                                  generic-boolean :member-name
                                  "FlowLogsEnabled")
                                 (flow-logs-s3bucket :target-type
                                  generic-string :member-name
                                  "FlowLogsS3Bucket")
                                 (flow-logs-s3prefix :target-type
                                  generic-string :member-name
                                  "FlowLogsS3Prefix"))
                                (:shape-name
                                 "UpdateAcceleratorAttributesRequest"))

(smithy/sdk/shapes:define-output update-accelerator-attributes-response
                                 common-lisp:nil
                                 ((accelerator-attributes :target-type
                                   accelerator-attributes :member-name
                                   "AcceleratorAttributes"))
                                 (:shape-name
                                  "UpdateAcceleratorAttributesResponse"))

(smithy/sdk/shapes:define-input update-accelerator-request common-lisp:nil
                                ((accelerator-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "AcceleratorArn")
                                 (name :target-type generic-string :member-name
                                  "Name")
                                 (ip-address-type :target-type ip-address-type
                                  :member-name "IpAddressType")
                                 (ip-addresses :target-type ip-addresses
                                  :member-name "IpAddresses")
                                 (enabled :target-type generic-boolean
                                  :member-name "Enabled"))
                                (:shape-name "UpdateAcceleratorRequest"))

(smithy/sdk/shapes:define-output update-accelerator-response common-lisp:nil
                                 ((accelerator :target-type accelerator
                                   :member-name "Accelerator"))
                                 (:shape-name "UpdateAcceleratorResponse"))

(smithy/sdk/shapes:define-input update-cross-account-attachment-request
                                common-lisp:nil
                                ((attachment-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "AttachmentArn")
                                 (name :target-type attachment-name
                                  :member-name "Name")
                                 (add-principals :target-type principals
                                  :member-name "AddPrincipals")
                                 (remove-principals :target-type principals
                                  :member-name "RemovePrincipals")
                                 (add-resources :target-type resources
                                  :member-name "AddResources")
                                 (remove-resources :target-type resources
                                  :member-name "RemoveResources"))
                                (:shape-name
                                 "UpdateCrossAccountAttachmentRequest"))

(smithy/sdk/shapes:define-output update-cross-account-attachment-response
                                 common-lisp:nil
                                 ((cross-account-attachment :target-type
                                   attachment :member-name
                                   "CrossAccountAttachment"))
                                 (:shape-name
                                  "UpdateCrossAccountAttachmentResponse"))

(smithy/sdk/shapes:define-input
 update-custom-routing-accelerator-attributes-request common-lisp:nil
 ((accelerator-arn :target-type generic-string :required common-lisp:t
   :member-name "AcceleratorArn")
  (flow-logs-enabled :target-type generic-boolean :member-name
   "FlowLogsEnabled")
  (flow-logs-s3bucket :target-type generic-string :member-name
   "FlowLogsS3Bucket")
  (flow-logs-s3prefix :target-type generic-string :member-name
   "FlowLogsS3Prefix"))
 (:shape-name "UpdateCustomRoutingAcceleratorAttributesRequest"))

(smithy/sdk/shapes:define-output
 update-custom-routing-accelerator-attributes-response common-lisp:nil
 ((accelerator-attributes :target-type custom-routing-accelerator-attributes
   :member-name "AcceleratorAttributes"))
 (:shape-name "UpdateCustomRoutingAcceleratorAttributesResponse"))

(smithy/sdk/shapes:define-input update-custom-routing-accelerator-request
                                common-lisp:nil
                                ((accelerator-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "AcceleratorArn")
                                 (name :target-type generic-string :member-name
                                  "Name")
                                 (ip-address-type :target-type ip-address-type
                                  :member-name "IpAddressType")
                                 (ip-addresses :target-type ip-addresses
                                  :member-name "IpAddresses")
                                 (enabled :target-type generic-boolean
                                  :member-name "Enabled"))
                                (:shape-name
                                 "UpdateCustomRoutingAcceleratorRequest"))

(smithy/sdk/shapes:define-output update-custom-routing-accelerator-response
                                 common-lisp:nil
                                 ((accelerator :target-type
                                   custom-routing-accelerator :member-name
                                   "Accelerator"))
                                 (:shape-name
                                  "UpdateCustomRoutingAcceleratorResponse"))

(smithy/sdk/shapes:define-input update-custom-routing-listener-request
                                common-lisp:nil
                                ((listener-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "ListenerArn")
                                 (port-ranges :target-type port-ranges
                                  :required common-lisp:t :member-name
                                  "PortRanges"))
                                (:shape-name
                                 "UpdateCustomRoutingListenerRequest"))

(smithy/sdk/shapes:define-output update-custom-routing-listener-response
                                 common-lisp:nil
                                 ((listener :target-type
                                   custom-routing-listener :member-name
                                   "Listener"))
                                 (:shape-name
                                  "UpdateCustomRoutingListenerResponse"))

(smithy/sdk/shapes:define-input update-endpoint-group-request common-lisp:nil
                                ((endpoint-group-arn :target-type
                                  generic-string :required common-lisp:t
                                  :member-name "EndpointGroupArn")
                                 (endpoint-configurations :target-type
                                  endpoint-configurations :member-name
                                  "EndpointConfigurations")
                                 (traffic-dial-percentage :target-type
                                  traffic-dial-percentage :member-name
                                  "TrafficDialPercentage")
                                 (health-check-port :target-type
                                  health-check-port :member-name
                                  "HealthCheckPort")
                                 (health-check-protocol :target-type
                                  health-check-protocol :member-name
                                  "HealthCheckProtocol")
                                 (health-check-path :target-type
                                  health-check-path :member-name
                                  "HealthCheckPath")
                                 (health-check-interval-seconds :target-type
                                  health-check-interval-seconds :member-name
                                  "HealthCheckIntervalSeconds")
                                 (threshold-count :target-type threshold-count
                                  :member-name "ThresholdCount")
                                 (port-overrides :target-type port-overrides
                                  :member-name "PortOverrides"))
                                (:shape-name "UpdateEndpointGroupRequest"))

(smithy/sdk/shapes:define-output update-endpoint-group-response common-lisp:nil
                                 ((endpoint-group :target-type endpoint-group
                                   :member-name "EndpointGroup"))
                                 (:shape-name "UpdateEndpointGroupResponse"))

(smithy/sdk/shapes:define-input update-listener-request common-lisp:nil
                                ((listener-arn :target-type generic-string
                                  :required common-lisp:t :member-name
                                  "ListenerArn")
                                 (port-ranges :target-type port-ranges
                                  :member-name "PortRanges")
                                 (protocol :target-type protocol :member-name
                                  "Protocol")
                                 (client-affinity :target-type client-affinity
                                  :member-name "ClientAffinity"))
                                (:shape-name "UpdateListenerRequest"))

(smithy/sdk/shapes:define-output update-listener-response common-lisp:nil
                                 ((listener :target-type listener :member-name
                                   "Listener"))
                                 (:shape-name "UpdateListenerResponse"))

(smithy/sdk/shapes:define-input withdraw-byoip-cidr-request common-lisp:nil
                                ((cidr :target-type generic-string :required
                                  common-lisp:t :member-name "Cidr"))
                                (:shape-name "WithdrawByoipCidrRequest"))

(smithy/sdk/shapes:define-output withdraw-byoip-cidr-response common-lisp:nil
                                 ((byoip-cidr :target-type byoip-cidr
                                   :member-name "ByoipCidr"))
                                 (:shape-name "WithdrawByoipCidrResponse"))

(smithy/sdk/operation:define-operation add-custom-routing-endpoints :shape-name
                                       "AddCustomRoutingEndpoints" :input
                                       add-custom-routing-endpoints-request
                                       :output
                                       add-custom-routing-endpoints-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        endpoint-already-exists-exception
                                        endpoint-group-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation add-endpoints :shape-name "AddEndpoints"
                                       :input add-endpoints-request :output
                                       add-endpoints-response :errors
                                       (access-denied-exception
                                        endpoint-group-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        transaction-in-progress-exception))

(smithy/sdk/operation:define-operation advertise-byoip-cidr :shape-name
                                       "AdvertiseByoipCidr" :input
                                       advertise-byoip-cidr-request :output
                                       advertise-byoip-cidr-response :errors
                                       (access-denied-exception
                                        byoip-cidr-not-found-exception
                                        incorrect-cidr-state-exception
                                        internal-service-error-exception
                                        invalid-argument-exception))

(smithy/sdk/operation:define-operation allow-custom-routing-traffic :shape-name
                                       "AllowCustomRoutingTraffic" :input
                                       allow-custom-routing-traffic-request
                                       :output common-lisp:null :errors
                                       (endpoint-group-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception))

(smithy/sdk/operation:define-operation create-accelerator :shape-name
                                       "CreateAccelerator" :input
                                       create-accelerator-request :output
                                       create-accelerator-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        transaction-in-progress-exception))

(smithy/sdk/operation:define-operation create-cross-account-attachment
                                       :shape-name
                                       "CreateCrossAccountAttachment" :input
                                       create-cross-account-attachment-request
                                       :output
                                       create-cross-account-attachment-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        transaction-in-progress-exception))

(smithy/sdk/operation:define-operation create-custom-routing-accelerator
                                       :shape-name
                                       "CreateCustomRoutingAccelerator" :input
                                       create-custom-routing-accelerator-request
                                       :output
                                       create-custom-routing-accelerator-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        transaction-in-progress-exception))

(smithy/sdk/operation:define-operation create-custom-routing-endpoint-group
                                       :shape-name
                                       "CreateCustomRoutingEndpointGroup"
                                       :input
                                       create-custom-routing-endpoint-group-request
                                       :output
                                       create-custom-routing-endpoint-group-response
                                       :errors
                                       (accelerator-not-found-exception
                                        access-denied-exception
                                        endpoint-group-already-exists-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        invalid-port-range-exception
                                        limit-exceeded-exception
                                        listener-not-found-exception))

(smithy/sdk/operation:define-operation create-custom-routing-listener
                                       :shape-name
                                       "CreateCustomRoutingListener" :input
                                       create-custom-routing-listener-request
                                       :output
                                       create-custom-routing-listener-response
                                       :errors
                                       (accelerator-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        invalid-port-range-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation create-endpoint-group :shape-name
                                       "CreateEndpointGroup" :input
                                       create-endpoint-group-request :output
                                       create-endpoint-group-response :errors
                                       (accelerator-not-found-exception
                                        access-denied-exception
                                        endpoint-group-already-exists-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        listener-not-found-exception))

(smithy/sdk/operation:define-operation create-listener :shape-name
                                       "CreateListener" :input
                                       create-listener-request :output
                                       create-listener-response :errors
                                       (accelerator-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        invalid-port-range-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation delete-accelerator :shape-name
                                       "DeleteAccelerator" :input
                                       delete-accelerator-request :output
                                       common-lisp:null :errors
                                       (accelerator-not-disabled-exception
                                        accelerator-not-found-exception
                                        associated-listener-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        transaction-in-progress-exception))

(smithy/sdk/operation:define-operation delete-cross-account-attachment
                                       :shape-name
                                       "DeleteCrossAccountAttachment" :input
                                       delete-cross-account-attachment-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        attachment-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        transaction-in-progress-exception))

(smithy/sdk/operation:define-operation delete-custom-routing-accelerator
                                       :shape-name
                                       "DeleteCustomRoutingAccelerator" :input
                                       delete-custom-routing-accelerator-request
                                       :output common-lisp:null :errors
                                       (accelerator-not-disabled-exception
                                        accelerator-not-found-exception
                                        associated-listener-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        transaction-in-progress-exception))

(smithy/sdk/operation:define-operation delete-custom-routing-endpoint-group
                                       :shape-name
                                       "DeleteCustomRoutingEndpointGroup"
                                       :input
                                       delete-custom-routing-endpoint-group-request
                                       :output common-lisp:null :errors
                                       (endpoint-group-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception))

(smithy/sdk/operation:define-operation delete-custom-routing-listener
                                       :shape-name
                                       "DeleteCustomRoutingListener" :input
                                       delete-custom-routing-listener-request
                                       :output common-lisp:null :errors
                                       (associated-endpoint-group-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        listener-not-found-exception))

(smithy/sdk/operation:define-operation delete-endpoint-group :shape-name
                                       "DeleteEndpointGroup" :input
                                       delete-endpoint-group-request :output
                                       common-lisp:null :errors
                                       (endpoint-group-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception))

(smithy/sdk/operation:define-operation delete-listener :shape-name
                                       "DeleteListener" :input
                                       delete-listener-request :output
                                       common-lisp:null :errors
                                       (associated-endpoint-group-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        listener-not-found-exception))

(smithy/sdk/operation:define-operation deny-custom-routing-traffic :shape-name
                                       "DenyCustomRoutingTraffic" :input
                                       deny-custom-routing-traffic-request
                                       :output common-lisp:null :errors
                                       (endpoint-group-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception))

(smithy/sdk/operation:define-operation deprovision-byoip-cidr :shape-name
                                       "DeprovisionByoipCidr" :input
                                       deprovision-byoip-cidr-request :output
                                       deprovision-byoip-cidr-response :errors
                                       (access-denied-exception
                                        byoip-cidr-not-found-exception
                                        incorrect-cidr-state-exception
                                        internal-service-error-exception
                                        invalid-argument-exception))

(smithy/sdk/operation:define-operation describe-accelerator :shape-name
                                       "DescribeAccelerator" :input
                                       describe-accelerator-request :output
                                       describe-accelerator-response :errors
                                       (accelerator-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception))

(smithy/sdk/operation:define-operation describe-accelerator-attributes
                                       :shape-name
                                       "DescribeAcceleratorAttributes" :input
                                       describe-accelerator-attributes-request
                                       :output
                                       describe-accelerator-attributes-response
                                       :errors
                                       (accelerator-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception))

(smithy/sdk/operation:define-operation describe-cross-account-attachment
                                       :shape-name
                                       "DescribeCrossAccountAttachment" :input
                                       describe-cross-account-attachment-request
                                       :output
                                       describe-cross-account-attachment-response
                                       :errors
                                       (access-denied-exception
                                        attachment-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception))

(smithy/sdk/operation:define-operation describe-custom-routing-accelerator
                                       :shape-name
                                       "DescribeCustomRoutingAccelerator"
                                       :input
                                       describe-custom-routing-accelerator-request
                                       :output
                                       describe-custom-routing-accelerator-response
                                       :errors
                                       (accelerator-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception))

(smithy/sdk/operation:define-operation
 describe-custom-routing-accelerator-attributes :shape-name
 "DescribeCustomRoutingAcceleratorAttributes" :input
 describe-custom-routing-accelerator-attributes-request :output
 describe-custom-routing-accelerator-attributes-response :errors
 (accelerator-not-found-exception internal-service-error-exception
  invalid-argument-exception))

(smithy/sdk/operation:define-operation describe-custom-routing-endpoint-group
                                       :shape-name
                                       "DescribeCustomRoutingEndpointGroup"
                                       :input
                                       describe-custom-routing-endpoint-group-request
                                       :output
                                       describe-custom-routing-endpoint-group-response
                                       :errors
                                       (endpoint-group-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception))

(smithy/sdk/operation:define-operation describe-custom-routing-listener
                                       :shape-name
                                       "DescribeCustomRoutingListener" :input
                                       describe-custom-routing-listener-request
                                       :output
                                       describe-custom-routing-listener-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-argument-exception
                                        listener-not-found-exception))

(smithy/sdk/operation:define-operation describe-endpoint-group :shape-name
                                       "DescribeEndpointGroup" :input
                                       describe-endpoint-group-request :output
                                       describe-endpoint-group-response :errors
                                       (endpoint-group-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception))

(smithy/sdk/operation:define-operation describe-listener :shape-name
                                       "DescribeListener" :input
                                       describe-listener-request :output
                                       describe-listener-response :errors
                                       (internal-service-error-exception
                                        invalid-argument-exception
                                        listener-not-found-exception))

(smithy/sdk/operation:define-operation list-accelerators :shape-name
                                       "ListAccelerators" :input
                                       list-accelerators-request :output
                                       list-accelerators-response :errors
                                       (internal-service-error-exception
                                        invalid-argument-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-byoip-cidrs :shape-name
                                       "ListByoipCidrs" :input
                                       list-byoip-cidrs-request :output
                                       list-byoip-cidrs-response :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-cross-account-attachments
                                       :shape-name
                                       "ListCrossAccountAttachments" :input
                                       list-cross-account-attachments-request
                                       :output
                                       list-cross-account-attachments-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-cross-account-resource-accounts
                                       :shape-name
                                       "ListCrossAccountResourceAccounts"
                                       :input
                                       list-cross-account-resource-accounts-request
                                       :output
                                       list-cross-account-resource-accounts-response
                                       :errors
                                       (access-denied-exception
                                        internal-service-error-exception))

(smithy/sdk/operation:define-operation list-cross-account-resources :shape-name
                                       "ListCrossAccountResources" :input
                                       list-cross-account-resources-request
                                       :output
                                       list-cross-account-resources-response
                                       :errors
                                       (accelerator-not-found-exception
                                        access-denied-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-custom-routing-accelerators
                                       :shape-name
                                       "ListCustomRoutingAccelerators" :input
                                       list-custom-routing-accelerators-request
                                       :output
                                       list-custom-routing-accelerators-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-argument-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-custom-routing-endpoint-groups
                                       :shape-name
                                       "ListCustomRoutingEndpointGroups" :input
                                       list-custom-routing-endpoint-groups-request
                                       :output
                                       list-custom-routing-endpoint-groups-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-argument-exception
                                        invalid-next-token-exception
                                        listener-not-found-exception))

(smithy/sdk/operation:define-operation list-custom-routing-listeners
                                       :shape-name "ListCustomRoutingListeners"
                                       :input
                                       list-custom-routing-listeners-request
                                       :output
                                       list-custom-routing-listeners-response
                                       :errors
                                       (accelerator-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-custom-routing-port-mappings
                                       :shape-name
                                       "ListCustomRoutingPortMappings" :input
                                       list-custom-routing-port-mappings-request
                                       :output
                                       list-custom-routing-port-mappings-response
                                       :errors
                                       (accelerator-not-found-exception
                                        endpoint-group-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation
 list-custom-routing-port-mappings-by-destination :shape-name
 "ListCustomRoutingPortMappingsByDestination" :input
 list-custom-routing-port-mappings-by-destination-request :output
 list-custom-routing-port-mappings-by-destination-response :errors
 (endpoint-not-found-exception internal-service-error-exception
  invalid-argument-exception invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-endpoint-groups :shape-name
                                       "ListEndpointGroups" :input
                                       list-endpoint-groups-request :output
                                       list-endpoint-groups-response :errors
                                       (internal-service-error-exception
                                        invalid-argument-exception
                                        invalid-next-token-exception
                                        listener-not-found-exception))

(smithy/sdk/operation:define-operation list-listeners :shape-name
                                       "ListListeners" :input
                                       list-listeners-request :output
                                       list-listeners-response :errors
                                       (accelerator-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (accelerator-not-found-exception
                                        attachment-not-found-exception
                                        endpoint-group-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        listener-not-found-exception))

(smithy/sdk/operation:define-operation provision-byoip-cidr :shape-name
                                       "ProvisionByoipCidr" :input
                                       provision-byoip-cidr-request :output
                                       provision-byoip-cidr-response :errors
                                       (access-denied-exception
                                        incorrect-cidr-state-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation remove-custom-routing-endpoints
                                       :shape-name
                                       "RemoveCustomRoutingEndpoints" :input
                                       remove-custom-routing-endpoints-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        endpoint-group-not-found-exception
                                        endpoint-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception))

(smithy/sdk/operation:define-operation remove-endpoints :shape-name
                                       "RemoveEndpoints" :input
                                       remove-endpoints-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        endpoint-group-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        transaction-in-progress-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (accelerator-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (accelerator-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception))

(smithy/sdk/operation:define-operation update-accelerator :shape-name
                                       "UpdateAccelerator" :input
                                       update-accelerator-request :output
                                       update-accelerator-response :errors
                                       (accelerator-not-found-exception
                                        access-denied-exception
                                        conflict-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        transaction-in-progress-exception))

(smithy/sdk/operation:define-operation update-accelerator-attributes
                                       :shape-name
                                       "UpdateAcceleratorAttributes" :input
                                       update-accelerator-attributes-request
                                       :output
                                       update-accelerator-attributes-response
                                       :errors
                                       (accelerator-not-found-exception
                                        access-denied-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        transaction-in-progress-exception))

(smithy/sdk/operation:define-operation update-cross-account-attachment
                                       :shape-name
                                       "UpdateCrossAccountAttachment" :input
                                       update-cross-account-attachment-request
                                       :output
                                       update-cross-account-attachment-response
                                       :errors
                                       (access-denied-exception
                                        attachment-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception
                                        transaction-in-progress-exception))

(smithy/sdk/operation:define-operation update-custom-routing-accelerator
                                       :shape-name
                                       "UpdateCustomRoutingAccelerator" :input
                                       update-custom-routing-accelerator-request
                                       :output
                                       update-custom-routing-accelerator-response
                                       :errors
                                       (accelerator-not-found-exception
                                        conflict-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        transaction-in-progress-exception))

(smithy/sdk/operation:define-operation
 update-custom-routing-accelerator-attributes :shape-name
 "UpdateCustomRoutingAcceleratorAttributes" :input
 update-custom-routing-accelerator-attributes-request :output
 update-custom-routing-accelerator-attributes-response :errors
 (accelerator-not-found-exception access-denied-exception
  internal-service-error-exception invalid-argument-exception
  transaction-in-progress-exception))

(smithy/sdk/operation:define-operation update-custom-routing-listener
                                       :shape-name
                                       "UpdateCustomRoutingListener" :input
                                       update-custom-routing-listener-request
                                       :output
                                       update-custom-routing-listener-response
                                       :errors
                                       (internal-service-error-exception
                                        invalid-argument-exception
                                        invalid-port-range-exception
                                        limit-exceeded-exception
                                        listener-not-found-exception))

(smithy/sdk/operation:define-operation update-endpoint-group :shape-name
                                       "UpdateEndpointGroup" :input
                                       update-endpoint-group-request :output
                                       update-endpoint-group-response :errors
                                       (access-denied-exception
                                        endpoint-group-not-found-exception
                                        internal-service-error-exception
                                        invalid-argument-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation update-listener :shape-name
                                       "UpdateListener" :input
                                       update-listener-request :output
                                       update-listener-response :errors
                                       (internal-service-error-exception
                                        invalid-argument-exception
                                        invalid-port-range-exception
                                        limit-exceeded-exception
                                        listener-not-found-exception))

(smithy/sdk/operation:define-operation withdraw-byoip-cidr :shape-name
                                       "WithdrawByoipCidr" :input
                                       withdraw-byoip-cidr-request :output
                                       withdraw-byoip-cidr-response :errors
                                       (access-denied-exception
                                        byoip-cidr-not-found-exception
                                        incorrect-cidr-state-exception
                                        internal-service-error-exception
                                        invalid-argument-exception))
