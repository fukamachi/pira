(uiop/package:define-package #:pira/vpc-lattice (:use)
                             (:export #:access-log-destination-arn
                              #:access-log-subscription
                              #:access-log-subscription-arn
                              #:access-log-subscription-id
                              #:access-log-subscription-identifier
                              #:access-log-subscription-list
                              #:access-log-subscription-summary #:account-id
                              #:arn #:arn-resource #:auth-policy-state
                              #:auth-policy-string #:auth-type
                              #:batch-update-rule #:batch-update-rule-request
                              #:batch-update-rule-response #:boolean
                              #:certificate-arn #:client-token
                              #:create-access-log-subscription
                              #:create-access-log-subscription-request
                              #:create-access-log-subscription-response
                              #:create-listener #:create-listener-request
                              #:create-listener-response
                              #:create-resource-configuration
                              #:create-resource-gateway #:create-rule
                              #:create-rule-request #:create-rule-response
                              #:create-service #:create-service-network
                              #:create-service-network-request
                              #:create-service-network-resource-association
                              #:create-service-network-response
                              #:create-service-network-service-association
                              #:create-service-network-service-association-request
                              #:create-service-network-service-association-response
                              #:create-service-network-vpc-association
                              #:create-service-network-vpc-association-request
                              #:create-service-network-vpc-association-response
                              #:create-service-request
                              #:create-service-response #:create-target-group
                              #:create-target-group-request
                              #:create-target-group-response
                              #:delete-access-log-subscription
                              #:delete-access-log-subscription-request
                              #:delete-access-log-subscription-response
                              #:delete-auth-policy #:delete-auth-policy-request
                              #:delete-auth-policy-response #:delete-listener
                              #:delete-listener-request
                              #:delete-listener-response
                              #:delete-resource-configuration
                              #:delete-resource-endpoint-association
                              #:delete-resource-gateway
                              #:delete-resource-policy
                              #:delete-resource-policy-request
                              #:delete-resource-policy-response #:delete-rule
                              #:delete-rule-request #:delete-rule-response
                              #:delete-service #:delete-service-network
                              #:delete-service-network-request
                              #:delete-service-network-resource-association
                              #:delete-service-network-response
                              #:delete-service-network-service-association
                              #:delete-service-network-service-association-request
                              #:delete-service-network-service-association-response
                              #:delete-service-network-vpc-association
                              #:delete-service-network-vpc-association-request
                              #:delete-service-network-vpc-association-response
                              #:delete-service-request
                              #:delete-service-response #:delete-target-group
                              #:delete-target-group-request
                              #:delete-target-group-response
                              #:deregister-targets #:deregister-targets-request
                              #:deregister-targets-response #:dns-entry
                              #:dns-resource #:domain-name #:failure-code
                              #:failure-message #:fixed-response-action
                              #:forward-action #:get-access-log-subscription
                              #:get-access-log-subscription-request
                              #:get-access-log-subscription-response
                              #:get-auth-policy #:get-auth-policy-request
                              #:get-auth-policy-response #:get-listener
                              #:get-listener-request #:get-listener-response
                              #:get-resource-configuration
                              #:get-resource-gateway #:get-resource-policy
                              #:get-resource-policy-request
                              #:get-resource-policy-response #:get-rule
                              #:get-rule-request #:get-rule-response
                              #:get-service #:get-service-network
                              #:get-service-network-request
                              #:get-service-network-resource-association
                              #:get-service-network-response
                              #:get-service-network-service-association
                              #:get-service-network-service-association-request
                              #:get-service-network-service-association-response
                              #:get-service-network-vpc-association
                              #:get-service-network-vpc-association-request
                              #:get-service-network-vpc-association-response
                              #:get-service-request #:get-service-response
                              #:get-target-group #:get-target-group-request
                              #:get-target-group-response #:header-match
                              #:header-match-contains #:header-match-exact
                              #:header-match-list #:header-match-name
                              #:header-match-prefix #:header-match-type
                              #:health-check-config
                              #:health-check-interval-seconds
                              #:health-check-path #:health-check-port
                              #:health-check-protocol-version
                              #:health-check-timeout-seconds
                              #:healthy-threshold-count #:http-code-matcher
                              #:http-match #:http-method #:http-status-code
                              #:ip-address #:ip-address-type #:ip-resource
                              #:lambda-event-structure-version
                              #:list-access-log-subscriptions
                              #:list-access-log-subscriptions-request
                              #:list-access-log-subscriptions-response
                              #:list-listeners #:list-listeners-request
                              #:list-listeners-response
                              #:list-resource-configurations
                              #:list-resource-endpoint-associations
                              #:list-resource-gateways #:list-rules
                              #:list-rules-request #:list-rules-response
                              #:list-service-network-resource-associations
                              #:list-service-network-service-associations
                              #:list-service-network-service-associations-request
                              #:list-service-network-service-associations-response
                              #:list-service-network-vpc-associations
                              #:list-service-network-vpc-associations-request
                              #:list-service-network-vpc-associations-response
                              #:list-service-network-vpc-endpoint-associations
                              #:list-service-networks
                              #:list-service-networks-request
                              #:list-service-networks-response #:list-services
                              #:list-services-request #:list-services-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-target-groups #:list-target-groups-request
                              #:list-target-groups-response #:list-targets
                              #:list-targets-request #:list-targets-response
                              #:listener #:listener-arn #:listener-id
                              #:listener-identifier #:listener-name
                              #:listener-protocol #:listener-summary
                              #:listener-summary-list #:matcher #:max-results
                              #:mercury-control-plane #:next-token #:path-match
                              #:path-match-exact #:path-match-prefix
                              #:path-match-type #:policy-string #:port
                              #:port-range #:port-range-list #:protocol-type
                              #:put-auth-policy #:put-auth-policy-request
                              #:put-auth-policy-response #:put-resource-policy
                              #:put-resource-policy-request
                              #:put-resource-policy-response #:register-targets
                              #:register-targets-request
                              #:register-targets-response #:resource-arn
                              #:resource-configuration
                              #:resource-configuration-arn
                              #:resource-configuration-definition
                              #:resource-configuration-id
                              #:resource-configuration-identifier
                              #:resource-configuration-ip-address-type
                              #:resource-configuration-name
                              #:resource-configuration-status
                              #:resource-configuration-summary
                              #:resource-configuration-summary-list
                              #:resource-configuration-type
                              #:resource-endpoint-association
                              #:resource-endpoint-association-arn
                              #:resource-endpoint-association-id
                              #:resource-endpoint-association-identifier
                              #:resource-endpoint-association-list
                              #:resource-endpoint-association-summary
                              #:resource-gateway #:resource-gateway-arn
                              #:resource-gateway-id
                              #:resource-gateway-identifier
                              #:resource-gateway-ip-address-type
                              #:resource-gateway-list #:resource-gateway-name
                              #:resource-gateway-status
                              #:resource-gateway-summary #:resource-id
                              #:resource-identifier #:rule #:rule-action
                              #:rule-arn #:rule-id #:rule-identifier
                              #:rule-match #:rule-name #:rule-priority
                              #:rule-summary #:rule-summary-list #:rule-update
                              #:rule-update-failure #:rule-update-failure-list
                              #:rule-update-list #:rule-update-success
                              #:rule-update-success-list #:security-group-id
                              #:security-group-list #:service #:service-arn
                              #:service-arn-list #:service-custom-domain-name
                              #:service-id #:service-identifier #:service-list
                              #:service-load-balancer-association
                              #:service-load-balancer-association-identifier
                              #:service-name #:service-network
                              #:service-network-arn
                              #:service-network-arn-without-regex
                              #:service-network-endpoint-association
                              #:service-network-id #:service-network-identifier
                              #:service-network-identifier-without-regex
                              #:service-network-list #:service-network-log-type
                              #:service-network-name
                              #:service-network-name-without-regex
                              #:service-network-resource-association
                              #:service-network-resource-association-arn
                              #:service-network-resource-association-id
                              #:service-network-resource-association-identifier
                              #:service-network-resource-association-list
                              #:service-network-resource-association-status
                              #:service-network-resource-association-summary
                              #:service-network-service-association
                              #:service-network-service-association-arn
                              #:service-network-service-association-identifier
                              #:service-network-service-association-list
                              #:service-network-service-association-status
                              #:service-network-service-association-summary
                              #:service-network-summary
                              #:service-network-vpc-association
                              #:service-network-vpc-association-arn
                              #:service-network-vpc-association-id
                              #:service-network-vpc-association-identifier
                              #:service-network-vpc-association-list
                              #:service-network-vpc-association-status
                              #:service-network-vpc-association-summary
                              #:service-network-vpc-endpoint-association-list
                              #:service-status #:service-summary
                              #:sharing-config #:subnet-id #:subnet-list
                              #:tag-key #:tag-keys #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:target #:target-failure
                              #:target-failure-list #:target-group
                              #:target-group-arn #:target-group-config
                              #:target-group-id #:target-group-identifier
                              #:target-group-list #:target-group-name
                              #:target-group-protocol
                              #:target-group-protocol-version
                              #:target-group-status #:target-group-summary
                              #:target-group-type #:target-group-weight
                              #:target-list #:target-status #:target-summary
                              #:target-summary-list #:timestamp
                              #:unhealthy-threshold-count #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response
                              #:update-access-log-subscription
                              #:update-access-log-subscription-request
                              #:update-access-log-subscription-response
                              #:update-listener #:update-listener-request
                              #:update-listener-response
                              #:update-resource-configuration
                              #:update-resource-gateway #:update-rule
                              #:update-rule-request #:update-rule-response
                              #:update-service #:update-service-network
                              #:update-service-network-request
                              #:update-service-network-response
                              #:update-service-network-vpc-association
                              #:update-service-network-vpc-association-request
                              #:update-service-network-vpc-association-response
                              #:update-service-request
                              #:update-service-response #:update-target-group
                              #:update-target-group-request
                              #:update-target-group-response
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:vpc-endpoint-id
                              #:vpc-endpoint-owner #:vpc-id
                              #:weighted-target-group
                              #:weighted-target-group-list #:wildcard-arn))
(common-lisp:in-package #:pira/vpc-lattice)

(smithy/sdk/service:define-service mercury-control-plane :shape-name
                                   "MercuryControlPlane" :version "2022-11-30"
                                   :title "Amazon VPC Lattice" :operations
                                   '(batch-update-rule delete-auth-policy
                                     delete-resource-policy get-auth-policy
                                     get-resource-policy
                                     list-service-network-vpc-endpoint-associations
                                     list-tags-for-resource put-auth-policy
                                     put-resource-policy tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "VPC Lattice")
                                      ("arnNamespace" . "vpc-lattice")
                                      ("cloudFormationName" . "VpcLattice")
                                      ("cloudTrailEventSource"
                                       . "vpc-lattice.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "vpc-lattice"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type access-log-destination-arn
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type access-log-subscription-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-log-subscription-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-log-subscription-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list access-log-subscription-list :member
                               access-log-subscription-summary)

(smithy/sdk/shapes:define-structure access-log-subscription-summary
                                    common-lisp:nil
                                    ((id :target-type
                                      access-log-subscription-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type
                                      access-log-subscription-arn :required
                                      common-lisp:t :member-name "arn")
                                     (resource-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "resourceId")
                                     (resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn")
                                     (destination-arn :target-type
                                      access-log-destination-arn :required
                                      common-lisp:t :member-name
                                      "destinationArn")
                                     (service-network-log-type :target-type
                                      service-network-log-type :member-name
                                      "serviceNetworkLogType")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedAt"))
                                    (:shape-name
                                     "AccessLogSubscriptionSummary"))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure arn-resource common-lisp:nil
                                    ((arn :target-type wildcard-arn
                                      :member-name "arn"))
                                    (:shape-name "ArnResource"))

(smithy/sdk/shapes:define-type auth-policy-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type auth-policy-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type auth-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure batch-update-rule-request common-lisp:nil
                                    ((service-identifier :target-type
                                      service-identifier :required
                                      common-lisp:t :member-name
                                      "serviceIdentifier")
                                     (listener-identifier :target-type
                                      listener-identifier :required
                                      common-lisp:t :member-name
                                      "listenerIdentifier")
                                     (rules :target-type rule-update-list
                                      :required common-lisp:t :member-name
                                      "rules"))
                                    (:shape-name "BatchUpdateRuleRequest"))

(smithy/sdk/shapes:define-structure batch-update-rule-response common-lisp:nil
                                    ((successful :target-type
                                      rule-update-success-list :member-name
                                      "successful")
                                     (unsuccessful :target-type
                                      rule-update-failure-list :member-name
                                      "unsuccessful"))
                                    (:shape-name "BatchUpdateRuleResponse"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type certificate-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure create-access-log-subscription-request
                                    common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "clientToken")
                                     (resource-identifier :target-type
                                      resource-identifier :required
                                      common-lisp:t :member-name
                                      "resourceIdentifier")
                                     (destination-arn :target-type
                                      access-log-destination-arn :required
                                      common-lisp:t :member-name
                                      "destinationArn")
                                     (service-network-log-type :target-type
                                      service-network-log-type :member-name
                                      "serviceNetworkLogType")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name
                                     "CreateAccessLogSubscriptionRequest"))

(smithy/sdk/shapes:define-structure create-access-log-subscription-response
                                    common-lisp:nil
                                    ((id :target-type
                                      access-log-subscription-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type
                                      access-log-subscription-arn :required
                                      common-lisp:t :member-name "arn")
                                     (resource-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "resourceId")
                                     (resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn")
                                     (service-network-log-type :target-type
                                      service-network-log-type :member-name
                                      "serviceNetworkLogType")
                                     (destination-arn :target-type
                                      access-log-destination-arn :required
                                      common-lisp:t :member-name
                                      "destinationArn"))
                                    (:shape-name
                                     "CreateAccessLogSubscriptionResponse"))

(smithy/sdk/shapes:define-structure create-listener-request common-lisp:nil
                                    ((service-identifier :target-type
                                      service-identifier :required
                                      common-lisp:t :member-name
                                      "serviceIdentifier")
                                     (name :target-type listener-name :required
                                      common-lisp:t :member-name "name")
                                     (protocol :target-type listener-protocol
                                      :required common-lisp:t :member-name
                                      "protocol")
                                     (port :target-type port :member-name
                                      "port")
                                     (default-action :target-type rule-action
                                      :required common-lisp:t :member-name
                                      "defaultAction")
                                     (client-token :target-type client-token
                                      :member-name "clientToken")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "CreateListenerRequest"))

(smithy/sdk/shapes:define-structure create-listener-response common-lisp:nil
                                    ((arn :target-type listener-arn
                                      :member-name "arn")
                                     (id :target-type listener-id :member-name
                                      "id")
                                     (name :target-type listener-name
                                      :member-name "name")
                                     (protocol :target-type listener-protocol
                                      :member-name "protocol")
                                     (port :target-type port :member-name
                                      "port")
                                     (service-arn :target-type service-arn
                                      :member-name "serviceArn")
                                     (service-id :target-type service-id
                                      :member-name "serviceId")
                                     (default-action :target-type rule-action
                                      :member-name "defaultAction"))
                                    (:shape-name "CreateListenerResponse"))

(smithy/sdk/shapes:define-input create-resource-configuration-request
                                common-lisp:nil
                                ((name :target-type resource-configuration-name
                                  :required common-lisp:t :member-name "name")
                                 (type :target-type resource-configuration-type
                                  :required common-lisp:t :member-name "type")
                                 (port-ranges :target-type port-range-list
                                  :member-name "portRanges")
                                 (protocol :target-type protocol-type
                                  :member-name "protocol")
                                 (resource-gateway-identifier :target-type
                                  resource-gateway-identifier :member-name
                                  "resourceGatewayIdentifier")
                                 (resource-configuration-group-identifier
                                  :target-type
                                  resource-configuration-identifier
                                  :member-name
                                  "resourceConfigurationGroupIdentifier")
                                 (resource-configuration-definition
                                  :target-type
                                  resource-configuration-definition
                                  :member-name
                                  "resourceConfigurationDefinition")
                                 (allow-association-to-shareable-service-network
                                  :target-type boolean :member-name
                                  "allowAssociationToShareableServiceNetwork")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name
                                 "CreateResourceConfigurationRequest"))

(smithy/sdk/shapes:define-output create-resource-configuration-response
                                 common-lisp:nil
                                 ((id :target-type resource-configuration-id
                                   :member-name "id")
                                  (name :target-type
                                   resource-configuration-name :member-name
                                   "name")
                                  (arn :target-type resource-configuration-arn
                                   :member-name "arn")
                                  (resource-gateway-id :target-type
                                   resource-gateway-id :member-name
                                   "resourceGatewayId")
                                  (resource-configuration-group-id :target-type
                                   resource-configuration-id :member-name
                                   "resourceConfigurationGroupId")
                                  (type :target-type
                                   resource-configuration-type :member-name
                                   "type")
                                  (port-ranges :target-type port-range-list
                                   :member-name "portRanges")
                                  (protocol :target-type protocol-type
                                   :member-name "protocol")
                                  (status :target-type
                                   resource-configuration-status :member-name
                                   "status")
                                  (resource-configuration-definition
                                   :target-type
                                   resource-configuration-definition
                                   :member-name
                                   "resourceConfigurationDefinition")
                                  (allow-association-to-shareable-service-network
                                   :target-type boolean :member-name
                                   "allowAssociationToShareableServiceNetwork")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt")
                                  (failure-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "failureReason"))
                                 (:shape-name
                                  "CreateResourceConfigurationResponse"))

(smithy/sdk/shapes:define-input create-resource-gateway-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (name :target-type resource-gateway-name
                                  :required common-lisp:t :member-name "name")
                                 (vpc-identifier :target-type vpc-id :required
                                  common-lisp:t :member-name "vpcIdentifier")
                                 (subnet-ids :target-type subnet-list :required
                                  common-lisp:t :member-name "subnetIds")
                                 (security-group-ids :target-type
                                  security-group-list :member-name
                                  "securityGroupIds")
                                 (ip-address-type :target-type
                                  resource-gateway-ip-address-type :member-name
                                  "ipAddressType")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateResourceGatewayRequest"))

(smithy/sdk/shapes:define-output create-resource-gateway-response
                                 common-lisp:nil
                                 ((name :target-type resource-gateway-name
                                   :member-name "name")
                                  (id :target-type resource-gateway-id
                                   :member-name "id")
                                  (arn :target-type resource-gateway-arn
                                   :member-name "arn")
                                  (status :target-type resource-gateway-status
                                   :member-name "status")
                                  (vpc-identifier :target-type vpc-id
                                   :member-name "vpcIdentifier")
                                  (subnet-ids :target-type subnet-list
                                   :member-name "subnetIds")
                                  (security-group-ids :target-type
                                   security-group-list :member-name
                                   "securityGroupIds")
                                  (ip-address-type :target-type
                                   resource-gateway-ip-address-type
                                   :member-name "ipAddressType"))
                                 (:shape-name "CreateResourceGatewayResponse"))

(smithy/sdk/shapes:define-structure create-rule-request common-lisp:nil
                                    ((service-identifier :target-type
                                      service-identifier :required
                                      common-lisp:t :member-name
                                      "serviceIdentifier")
                                     (listener-identifier :target-type
                                      listener-identifier :required
                                      common-lisp:t :member-name
                                      "listenerIdentifier")
                                     (name :target-type rule-name :required
                                      common-lisp:t :member-name "name")
                                     (match :target-type rule-match :required
                                      common-lisp:t :member-name "match")
                                     (priority :target-type rule-priority
                                      :required common-lisp:t :member-name
                                      "priority")
                                     (action :target-type rule-action :required
                                      common-lisp:t :member-name "action")
                                     (client-token :target-type client-token
                                      :member-name "clientToken")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "CreateRuleRequest"))

(smithy/sdk/shapes:define-structure create-rule-response common-lisp:nil
                                    ((arn :target-type rule-arn :member-name
                                      "arn")
                                     (id :target-type rule-id :member-name
                                      "id")
                                     (name :target-type rule-name :member-name
                                      "name")
                                     (match :target-type rule-match
                                      :member-name "match")
                                     (priority :target-type rule-priority
                                      :member-name "priority")
                                     (action :target-type rule-action
                                      :member-name "action"))
                                    (:shape-name "CreateRuleResponse"))

(smithy/sdk/shapes:define-structure create-service-network-request
                                    common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "clientToken")
                                     (name :target-type service-network-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (auth-type :target-type auth-type
                                      :member-name "authType")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (sharing-config :target-type
                                      sharing-config :member-name
                                      "sharingConfig"))
                                    (:shape-name "CreateServiceNetworkRequest"))

(smithy/sdk/shapes:define-input
 create-service-network-resource-association-request common-lisp:nil
 ((client-token :target-type client-token :member-name "clientToken")
  (resource-configuration-identifier :target-type
   resource-configuration-identifier :required common-lisp:t :member-name
   "resourceConfigurationIdentifier")
  (service-network-identifier :target-type
   service-network-identifier-without-regex :required common-lisp:t
   :member-name "serviceNetworkIdentifier")
  (tags :target-type tag-map :member-name "tags"))
 (:shape-name "CreateServiceNetworkResourceAssociationRequest"))

(smithy/sdk/shapes:define-output
 create-service-network-resource-association-response common-lisp:nil
 ((id :target-type service-network-resource-association-id :member-name "id")
  (arn :target-type service-network-resource-association-arn :member-name
   "arn")
  (status :target-type service-network-resource-association-status :member-name
   "status")
  (created-by :target-type account-id :member-name "createdBy"))
 (:shape-name "CreateServiceNetworkResourceAssociationResponse"))

(smithy/sdk/shapes:define-structure create-service-network-response
                                    common-lisp:nil
                                    ((id :target-type service-network-id
                                      :member-name "id")
                                     (name :target-type service-network-name
                                      :member-name "name")
                                     (arn :target-type service-network-arn
                                      :member-name "arn")
                                     (sharing-config :target-type
                                      sharing-config :member-name
                                      "sharingConfig")
                                     (auth-type :target-type auth-type
                                      :member-name "authType"))
                                    (:shape-name
                                     "CreateServiceNetworkResponse"))

(smithy/sdk/shapes:define-structure
 create-service-network-service-association-request common-lisp:nil
 ((client-token :target-type client-token :member-name "clientToken")
  (service-identifier :target-type service-identifier :required common-lisp:t
   :member-name "serviceIdentifier")
  (service-network-identifier :target-type service-network-identifier :required
   common-lisp:t :member-name "serviceNetworkIdentifier")
  (tags :target-type tag-map :member-name "tags"))
 (:shape-name "CreateServiceNetworkServiceAssociationRequest"))

(smithy/sdk/shapes:define-structure
 create-service-network-service-association-response common-lisp:nil
 ((id :target-type service-network-service-association-identifier :member-name
   "id")
  (status :target-type service-network-service-association-status :member-name
   "status")
  (arn :target-type service-network-service-association-arn :member-name "arn")
  (created-by :target-type account-id :member-name "createdBy")
  (custom-domain-name :target-type service-custom-domain-name :member-name
   "customDomainName")
  (dns-entry :target-type dns-entry :member-name "dnsEntry"))
 (:shape-name "CreateServiceNetworkServiceAssociationResponse"))

(smithy/sdk/shapes:define-structure
 create-service-network-vpc-association-request common-lisp:nil
 ((client-token :target-type client-token :member-name "clientToken")
  (service-network-identifier :target-type service-network-identifier :required
   common-lisp:t :member-name "serviceNetworkIdentifier")
  (vpc-identifier :target-type vpc-id :required common-lisp:t :member-name
   "vpcIdentifier")
  (security-group-ids :target-type security-group-list :member-name
   "securityGroupIds")
  (tags :target-type tag-map :member-name "tags"))
 (:shape-name "CreateServiceNetworkVpcAssociationRequest"))

(smithy/sdk/shapes:define-structure
 create-service-network-vpc-association-response common-lisp:nil
 ((id :target-type service-network-vpc-association-id :member-name "id")
  (status :target-type service-network-vpc-association-status :member-name
   "status")
  (arn :target-type service-network-vpc-association-arn :member-name "arn")
  (created-by :target-type account-id :member-name "createdBy")
  (security-group-ids :target-type security-group-list :member-name
   "securityGroupIds"))
 (:shape-name "CreateServiceNetworkVpcAssociationResponse"))

(smithy/sdk/shapes:define-structure create-service-request common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "clientToken")
                                     (name :target-type service-name :required
                                      common-lisp:t :member-name "name")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (custom-domain-name :target-type
                                      service-custom-domain-name :member-name
                                      "customDomainName")
                                     (certificate-arn :target-type
                                      certificate-arn :member-name
                                      "certificateArn")
                                     (auth-type :target-type auth-type
                                      :member-name "authType"))
                                    (:shape-name "CreateServiceRequest"))

(smithy/sdk/shapes:define-structure create-service-response common-lisp:nil
                                    ((id :target-type service-id :member-name
                                      "id")
                                     (arn :target-type service-arn :member-name
                                      "arn")
                                     (name :target-type service-name
                                      :member-name "name")
                                     (custom-domain-name :target-type
                                      service-custom-domain-name :member-name
                                      "customDomainName")
                                     (certificate-arn :target-type
                                      certificate-arn :member-name
                                      "certificateArn")
                                     (status :target-type service-status
                                      :member-name "status")
                                     (auth-type :target-type auth-type
                                      :member-name "authType")
                                     (dns-entry :target-type dns-entry
                                      :member-name "dnsEntry"))
                                    (:shape-name "CreateServiceResponse"))

(smithy/sdk/shapes:define-structure create-target-group-request common-lisp:nil
                                    ((name :target-type target-group-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (type :target-type target-group-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (config :target-type target-group-config
                                      :member-name "config")
                                     (client-token :target-type client-token
                                      :member-name "clientToken")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "CreateTargetGroupRequest"))

(smithy/sdk/shapes:define-structure create-target-group-response
                                    common-lisp:nil
                                    ((id :target-type target-group-id
                                      :member-name "id")
                                     (arn :target-type target-group-arn
                                      :member-name "arn")
                                     (name :target-type target-group-name
                                      :member-name "name")
                                     (type :target-type target-group-type
                                      :member-name "type")
                                     (config :target-type target-group-config
                                      :member-name "config")
                                     (status :target-type target-group-status
                                      :member-name "status"))
                                    (:shape-name "CreateTargetGroupResponse"))

(smithy/sdk/shapes:define-structure delete-access-log-subscription-request
                                    common-lisp:nil
                                    ((access-log-subscription-identifier
                                      :target-type
                                      access-log-subscription-identifier
                                      :required common-lisp:t :member-name
                                      "accessLogSubscriptionIdentifier"))
                                    (:shape-name
                                     "DeleteAccessLogSubscriptionRequest"))

(smithy/sdk/shapes:define-structure delete-access-log-subscription-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeleteAccessLogSubscriptionResponse"))

(smithy/sdk/shapes:define-structure delete-auth-policy-request common-lisp:nil
                                    ((resource-identifier :target-type
                                      resource-identifier :required
                                      common-lisp:t :member-name
                                      "resourceIdentifier"))
                                    (:shape-name "DeleteAuthPolicyRequest"))

(smithy/sdk/shapes:define-structure delete-auth-policy-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteAuthPolicyResponse"))

(smithy/sdk/shapes:define-structure delete-listener-request common-lisp:nil
                                    ((service-identifier :target-type
                                      service-identifier :required
                                      common-lisp:t :member-name
                                      "serviceIdentifier")
                                     (listener-identifier :target-type
                                      listener-identifier :required
                                      common-lisp:t :member-name
                                      "listenerIdentifier"))
                                    (:shape-name "DeleteListenerRequest"))

(smithy/sdk/shapes:define-structure delete-listener-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteListenerResponse"))

(smithy/sdk/shapes:define-input delete-resource-configuration-request
                                common-lisp:nil
                                ((resource-configuration-identifier
                                  :target-type
                                  resource-configuration-identifier :required
                                  common-lisp:t :member-name
                                  "resourceConfigurationIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteResourceConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-resource-configuration-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteResourceConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-resource-endpoint-association-request
                                common-lisp:nil
                                ((resource-endpoint-association-identifier
                                  :target-type
                                  resource-endpoint-association-identifier
                                  :required common-lisp:t :member-name
                                  "resourceEndpointAssociationIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteResourceEndpointAssociationRequest"))

(smithy/sdk/shapes:define-output delete-resource-endpoint-association-response
                                 common-lisp:nil
                                 ((id :target-type
                                   resource-endpoint-association-id
                                   :member-name "id")
                                  (arn :target-type
                                   resource-endpoint-association-arn
                                   :member-name "arn")
                                  (resource-configuration-id :target-type
                                   resource-configuration-id :member-name
                                   "resourceConfigurationId")
                                  (resource-configuration-arn :target-type
                                   resource-configuration-arn :member-name
                                   "resourceConfigurationArn")
                                  (vpc-endpoint-id :target-type vpc-endpoint-id
                                   :member-name "vpcEndpointId"))
                                 (:shape-name
                                  "DeleteResourceEndpointAssociationResponse"))

(smithy/sdk/shapes:define-input delete-resource-gateway-request common-lisp:nil
                                ((resource-gateway-identifier :target-type
                                  resource-gateway-identifier :required
                                  common-lisp:t :member-name
                                  "resourceGatewayIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteResourceGatewayRequest"))

(smithy/sdk/shapes:define-output delete-resource-gateway-response
                                 common-lisp:nil
                                 ((id :target-type resource-gateway-id
                                   :member-name "id")
                                  (arn :target-type resource-gateway-arn
                                   :member-name "arn")
                                  (name :target-type resource-gateway-name
                                   :member-name "name")
                                  (status :target-type resource-gateway-status
                                   :member-name "status"))
                                 (:shape-name "DeleteResourceGatewayResponse"))

(smithy/sdk/shapes:define-structure delete-resource-policy-request
                                    common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "DeleteResourcePolicyRequest"))

(smithy/sdk/shapes:define-structure delete-resource-policy-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeleteResourcePolicyResponse"))

(smithy/sdk/shapes:define-structure delete-rule-request common-lisp:nil
                                    ((service-identifier :target-type
                                      service-identifier :required
                                      common-lisp:t :member-name
                                      "serviceIdentifier")
                                     (listener-identifier :target-type
                                      listener-identifier :required
                                      common-lisp:t :member-name
                                      "listenerIdentifier")
                                     (rule-identifier :target-type
                                      rule-identifier :required common-lisp:t
                                      :member-name "ruleIdentifier"))
                                    (:shape-name "DeleteRuleRequest"))

(smithy/sdk/shapes:define-structure delete-rule-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteRuleResponse"))

(smithy/sdk/shapes:define-structure delete-service-network-request
                                    common-lisp:nil
                                    ((service-network-identifier :target-type
                                      service-network-identifier :required
                                      common-lisp:t :member-name
                                      "serviceNetworkIdentifier"))
                                    (:shape-name "DeleteServiceNetworkRequest"))

(smithy/sdk/shapes:define-input
 delete-service-network-resource-association-request common-lisp:nil
 ((service-network-resource-association-identifier :target-type
   service-network-resource-association-identifier :required common-lisp:t
   :member-name "serviceNetworkResourceAssociationIdentifier" :http-label
   common-lisp:t))
 (:shape-name "DeleteServiceNetworkResourceAssociationRequest"))

(smithy/sdk/shapes:define-output
 delete-service-network-resource-association-response common-lisp:nil
 ((id :target-type service-network-resource-association-id :member-name "id")
  (arn :target-type service-network-resource-association-arn :member-name
   "arn")
  (status :target-type service-network-resource-association-status :member-name
   "status"))
 (:shape-name "DeleteServiceNetworkResourceAssociationResponse"))

(smithy/sdk/shapes:define-structure delete-service-network-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeleteServiceNetworkResponse"))

(smithy/sdk/shapes:define-structure
 delete-service-network-service-association-request common-lisp:nil
 ((service-network-service-association-identifier :target-type
   service-network-service-association-identifier :required common-lisp:t
   :member-name "serviceNetworkServiceAssociationIdentifier"))
 (:shape-name "DeleteServiceNetworkServiceAssociationRequest"))

(smithy/sdk/shapes:define-structure
 delete-service-network-service-association-response common-lisp:nil
 ((id :target-type service-network-service-association-identifier :member-name
   "id")
  (status :target-type service-network-service-association-status :member-name
   "status")
  (arn :target-type service-network-service-association-arn :member-name
   "arn"))
 (:shape-name "DeleteServiceNetworkServiceAssociationResponse"))

(smithy/sdk/shapes:define-structure
 delete-service-network-vpc-association-request common-lisp:nil
 ((service-network-vpc-association-identifier :target-type
   service-network-vpc-association-identifier :required common-lisp:t
   :member-name "serviceNetworkVpcAssociationIdentifier"))
 (:shape-name "DeleteServiceNetworkVpcAssociationRequest"))

(smithy/sdk/shapes:define-structure
 delete-service-network-vpc-association-response common-lisp:nil
 ((id :target-type service-network-vpc-association-id :member-name "id")
  (status :target-type service-network-vpc-association-status :member-name
   "status")
  (arn :target-type service-network-vpc-association-arn :member-name "arn"))
 (:shape-name "DeleteServiceNetworkVpcAssociationResponse"))

(smithy/sdk/shapes:define-structure delete-service-request common-lisp:nil
                                    ((service-identifier :target-type
                                      service-identifier :required
                                      common-lisp:t :member-name
                                      "serviceIdentifier"))
                                    (:shape-name "DeleteServiceRequest"))

(smithy/sdk/shapes:define-structure delete-service-response common-lisp:nil
                                    ((id :target-type service-id :member-name
                                      "id")
                                     (arn :target-type service-arn :member-name
                                      "arn")
                                     (name :target-type service-name
                                      :member-name "name")
                                     (status :target-type service-status
                                      :member-name "status"))
                                    (:shape-name "DeleteServiceResponse"))

(smithy/sdk/shapes:define-structure delete-target-group-request common-lisp:nil
                                    ((target-group-identifier :target-type
                                      target-group-identifier :required
                                      common-lisp:t :member-name
                                      "targetGroupIdentifier"))
                                    (:shape-name "DeleteTargetGroupRequest"))

(smithy/sdk/shapes:define-structure delete-target-group-response
                                    common-lisp:nil
                                    ((id :target-type target-group-id
                                      :member-name "id")
                                     (arn :target-type target-group-arn
                                      :member-name "arn")
                                     (status :target-type target-group-status
                                      :member-name "status"))
                                    (:shape-name "DeleteTargetGroupResponse"))

(smithy/sdk/shapes:define-structure deregister-targets-request common-lisp:nil
                                    ((target-group-identifier :target-type
                                      target-group-identifier :required
                                      common-lisp:t :member-name
                                      "targetGroupIdentifier")
                                     (targets :target-type target-list
                                      :required common-lisp:t :member-name
                                      "targets"))
                                    (:shape-name "DeregisterTargetsRequest"))

(smithy/sdk/shapes:define-structure deregister-targets-response common-lisp:nil
                                    ((successful :target-type target-list
                                      :member-name "successful")
                                     (unsuccessful :target-type
                                      target-failure-list :member-name
                                      "unsuccessful"))
                                    (:shape-name "DeregisterTargetsResponse"))

(smithy/sdk/shapes:define-structure dns-entry common-lisp:nil
                                    ((domain-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "domainName")
                                     (hosted-zone-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "hostedZoneId"))
                                    (:shape-name "DnsEntry"))

(smithy/sdk/shapes:define-structure dns-resource common-lisp:nil
                                    ((domain-name :target-type domain-name
                                      :member-name "domainName")
                                     (ip-address-type :target-type
                                      resource-configuration-ip-address-type
                                      :member-name "ipAddressType"))
                                    (:shape-name "DnsResource"))

(smithy/sdk/shapes:define-type domain-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type failure-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type failure-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure fixed-response-action common-lisp:nil
                                    ((status-code :target-type http-status-code
                                      :required common-lisp:t :member-name
                                      "statusCode"))
                                    (:shape-name "FixedResponseAction"))

(smithy/sdk/shapes:define-structure forward-action common-lisp:nil
                                    ((target-groups :target-type
                                      weighted-target-group-list :required
                                      common-lisp:t :member-name
                                      "targetGroups"))
                                    (:shape-name "ForwardAction"))

(smithy/sdk/shapes:define-structure get-access-log-subscription-request
                                    common-lisp:nil
                                    ((access-log-subscription-identifier
                                      :target-type
                                      access-log-subscription-identifier
                                      :required common-lisp:t :member-name
                                      "accessLogSubscriptionIdentifier"))
                                    (:shape-name
                                     "GetAccessLogSubscriptionRequest"))

(smithy/sdk/shapes:define-structure get-access-log-subscription-response
                                    common-lisp:nil
                                    ((id :target-type
                                      access-log-subscription-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type
                                      access-log-subscription-arn :required
                                      common-lisp:t :member-name "arn")
                                     (resource-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "resourceId")
                                     (resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn")
                                     (destination-arn :target-type
                                      access-log-destination-arn :required
                                      common-lisp:t :member-name
                                      "destinationArn")
                                     (service-network-log-type :target-type
                                      service-network-log-type :member-name
                                      "serviceNetworkLogType")
                                     (created-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-updated-at :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedAt"))
                                    (:shape-name
                                     "GetAccessLogSubscriptionResponse"))

(smithy/sdk/shapes:define-structure get-auth-policy-request common-lisp:nil
                                    ((resource-identifier :target-type
                                      resource-identifier :required
                                      common-lisp:t :member-name
                                      "resourceIdentifier"))
                                    (:shape-name "GetAuthPolicyRequest"))

(smithy/sdk/shapes:define-structure get-auth-policy-response common-lisp:nil
                                    ((policy :target-type auth-policy-string
                                      :member-name "policy")
                                     (state :target-type auth-policy-state
                                      :member-name "state")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name "GetAuthPolicyResponse"))

(smithy/sdk/shapes:define-structure get-listener-request common-lisp:nil
                                    ((service-identifier :target-type
                                      service-identifier :required
                                      common-lisp:t :member-name
                                      "serviceIdentifier")
                                     (listener-identifier :target-type
                                      listener-identifier :required
                                      common-lisp:t :member-name
                                      "listenerIdentifier"))
                                    (:shape-name "GetListenerRequest"))

(smithy/sdk/shapes:define-structure get-listener-response common-lisp:nil
                                    ((arn :target-type listener-arn
                                      :member-name "arn")
                                     (id :target-type listener-id :member-name
                                      "id")
                                     (name :target-type listener-name
                                      :member-name "name")
                                     (protocol :target-type listener-protocol
                                      :member-name "protocol")
                                     (port :target-type port :member-name
                                      "port")
                                     (service-arn :target-type service-arn
                                      :member-name "serviceArn")
                                     (service-id :target-type service-id
                                      :member-name "serviceId")
                                     (default-action :target-type rule-action
                                      :member-name "defaultAction")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name "GetListenerResponse"))

(smithy/sdk/shapes:define-input get-resource-configuration-request
                                common-lisp:nil
                                ((resource-configuration-identifier
                                  :target-type
                                  resource-configuration-identifier :required
                                  common-lisp:t :member-name
                                  "resourceConfigurationIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetResourceConfigurationRequest"))

(smithy/sdk/shapes:define-output get-resource-configuration-response
                                 common-lisp:nil
                                 ((id :target-type resource-configuration-id
                                   :member-name "id")
                                  (name :target-type
                                   resource-configuration-name :member-name
                                   "name")
                                  (arn :target-type resource-configuration-arn
                                   :member-name "arn")
                                  (resource-gateway-id :target-type
                                   resource-gateway-id :member-name
                                   "resourceGatewayId")
                                  (resource-configuration-group-id :target-type
                                   resource-configuration-id :member-name
                                   "resourceConfigurationGroupId")
                                  (type :target-type
                                   resource-configuration-type :member-name
                                   "type")
                                  (allow-association-to-shareable-service-network
                                   :target-type boolean :member-name
                                   "allowAssociationToShareableServiceNetwork")
                                  (port-ranges :target-type port-range-list
                                   :member-name "portRanges")
                                  (protocol :target-type protocol-type
                                   :member-name "protocol")
                                  (custom-domain-name :target-type domain-name
                                   :member-name "customDomainName")
                                  (status :target-type
                                   resource-configuration-status :member-name
                                   "status")
                                  (resource-configuration-definition
                                   :target-type
                                   resource-configuration-definition
                                   :member-name
                                   "resourceConfigurationDefinition")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt")
                                  (amazon-managed :target-type boolean
                                   :member-name "amazonManaged")
                                  (failure-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "failureReason")
                                  (last-updated-at :target-type timestamp
                                   :member-name "lastUpdatedAt"))
                                 (:shape-name
                                  "GetResourceConfigurationResponse"))

(smithy/sdk/shapes:define-input get-resource-gateway-request common-lisp:nil
                                ((resource-gateway-identifier :target-type
                                  resource-gateway-identifier :required
                                  common-lisp:t :member-name
                                  "resourceGatewayIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetResourceGatewayRequest"))

(smithy/sdk/shapes:define-output get-resource-gateway-response common-lisp:nil
                                 ((name :target-type resource-gateway-name
                                   :member-name "name")
                                  (id :target-type resource-gateway-id
                                   :member-name "id")
                                  (arn :target-type resource-gateway-arn
                                   :member-name "arn")
                                  (status :target-type resource-gateway-status
                                   :member-name "status")
                                  (vpc-id :target-type vpc-id :member-name
                                   "vpcId")
                                  (subnet-ids :target-type subnet-list
                                   :member-name "subnetIds")
                                  (security-group-ids :target-type
                                   security-group-list :member-name
                                   "securityGroupIds")
                                  (ip-address-type :target-type
                                   resource-gateway-ip-address-type
                                   :member-name "ipAddressType")
                                  (created-at :target-type timestamp
                                   :member-name "createdAt")
                                  (last-updated-at :target-type timestamp
                                   :member-name "lastUpdatedAt"))
                                 (:shape-name "GetResourceGatewayResponse"))

(smithy/sdk/shapes:define-structure get-resource-policy-request common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "GetResourcePolicyRequest"))

(smithy/sdk/shapes:define-structure get-resource-policy-response
                                    common-lisp:nil
                                    ((policy :target-type policy-string
                                      :member-name "policy"))
                                    (:shape-name "GetResourcePolicyResponse"))

(smithy/sdk/shapes:define-structure get-rule-request common-lisp:nil
                                    ((service-identifier :target-type
                                      service-identifier :required
                                      common-lisp:t :member-name
                                      "serviceIdentifier")
                                     (listener-identifier :target-type
                                      listener-identifier :required
                                      common-lisp:t :member-name
                                      "listenerIdentifier")
                                     (rule-identifier :target-type
                                      rule-identifier :required common-lisp:t
                                      :member-name "ruleIdentifier"))
                                    (:shape-name "GetRuleRequest"))

(smithy/sdk/shapes:define-structure get-rule-response common-lisp:nil
                                    ((arn :target-type rule-arn :member-name
                                      "arn")
                                     (id :target-type rule-id :member-name
                                      "id")
                                     (name :target-type rule-name :member-name
                                      "name")
                                     (is-default :target-type boolean
                                      :member-name "isDefault")
                                     (match :target-type rule-match
                                      :member-name "match")
                                     (priority :target-type rule-priority
                                      :member-name "priority")
                                     (action :target-type rule-action
                                      :member-name "action")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name "GetRuleResponse"))

(smithy/sdk/shapes:define-structure get-service-network-request common-lisp:nil
                                    ((service-network-identifier :target-type
                                      service-network-identifier :required
                                      common-lisp:t :member-name
                                      "serviceNetworkIdentifier"))
                                    (:shape-name "GetServiceNetworkRequest"))

(smithy/sdk/shapes:define-input
 get-service-network-resource-association-request common-lisp:nil
 ((service-network-resource-association-identifier :target-type
   service-network-resource-association-identifier :required common-lisp:t
   :member-name "serviceNetworkResourceAssociationIdentifier" :http-label
   common-lisp:t))
 (:shape-name "GetServiceNetworkResourceAssociationRequest"))

(smithy/sdk/shapes:define-output
 get-service-network-resource-association-response common-lisp:nil
 ((id :target-type service-network-resource-association-id :member-name "id")
  (arn :target-type service-network-resource-association-arn :member-name
   "arn")
  (status :target-type service-network-resource-association-status :member-name
   "status")
  (created-by :target-type account-id :member-name "createdBy")
  (created-at :target-type timestamp :member-name "createdAt")
  (resource-configuration-id :target-type resource-configuration-id
   :member-name "resourceConfigurationId")
  (resource-configuration-arn :target-type resource-configuration-arn
   :member-name "resourceConfigurationArn")
  (resource-configuration-name :target-type resource-configuration-name
   :member-name "resourceConfigurationName")
  (service-network-id :target-type service-network-identifier-without-regex
   :member-name "serviceNetworkId")
  (service-network-arn :target-type service-network-identifier-without-regex
   :member-name "serviceNetworkArn")
  (service-network-name :target-type service-network-name-without-regex
   :member-name "serviceNetworkName")
  (failure-reason :target-type smithy/sdk/smithy-types:string :member-name
   "failureReason")
  (failure-code :target-type smithy/sdk/smithy-types:string :member-name
   "failureCode")
  (last-updated-at :target-type timestamp :member-name "lastUpdatedAt")
  (private-dns-entry :target-type dns-entry :member-name "privateDnsEntry")
  (dns-entry :target-type dns-entry :member-name "dnsEntry")
  (is-managed-association :target-type boolean :member-name
   "isManagedAssociation"))
 (:shape-name "GetServiceNetworkResourceAssociationResponse"))

(smithy/sdk/shapes:define-structure get-service-network-response
                                    common-lisp:nil
                                    ((id :target-type service-network-id
                                      :member-name "id")
                                     (name :target-type service-network-name
                                      :member-name "name")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt")
                                     (arn :target-type service-network-arn
                                      :member-name "arn")
                                     (auth-type :target-type auth-type
                                      :member-name "authType")
                                     (sharing-config :target-type
                                      sharing-config :member-name
                                      "sharingConfig")
                                     (number-of-associated-vpcs :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "numberOfAssociatedVPCs")
                                     (number-of-associated-services
                                      :target-type smithy/sdk/smithy-types:long
                                      :member-name
                                      "numberOfAssociatedServices"))
                                    (:shape-name "GetServiceNetworkResponse"))

(smithy/sdk/shapes:define-structure
 get-service-network-service-association-request common-lisp:nil
 ((service-network-service-association-identifier :target-type
   service-network-service-association-identifier :required common-lisp:t
   :member-name "serviceNetworkServiceAssociationIdentifier"))
 (:shape-name "GetServiceNetworkServiceAssociationRequest"))

(smithy/sdk/shapes:define-structure
 get-service-network-service-association-response common-lisp:nil
 ((id :target-type service-network-service-association-identifier :member-name
   "id")
  (status :target-type service-network-service-association-status :member-name
   "status")
  (arn :target-type service-network-service-association-arn :member-name "arn")
  (created-by :target-type account-id :member-name "createdBy")
  (created-at :target-type timestamp :member-name "createdAt")
  (service-id :target-type service-id :member-name "serviceId")
  (service-name :target-type service-name :member-name "serviceName")
  (service-arn :target-type service-arn :member-name "serviceArn")
  (service-network-id :target-type service-network-id :member-name
   "serviceNetworkId")
  (service-network-name :target-type service-network-name :member-name
   "serviceNetworkName")
  (service-network-arn :target-type service-network-arn :member-name
   "serviceNetworkArn")
  (dns-entry :target-type dns-entry :member-name "dnsEntry")
  (custom-domain-name :target-type service-custom-domain-name :member-name
   "customDomainName")
  (failure-message :target-type smithy/sdk/smithy-types:string :member-name
   "failureMessage")
  (failure-code :target-type smithy/sdk/smithy-types:string :member-name
   "failureCode"))
 (:shape-name "GetServiceNetworkServiceAssociationResponse"))

(smithy/sdk/shapes:define-structure get-service-network-vpc-association-request
                                    common-lisp:nil
                                    ((service-network-vpc-association-identifier
                                      :target-type
                                      service-network-vpc-association-identifier
                                      :required common-lisp:t :member-name
                                      "serviceNetworkVpcAssociationIdentifier"))
                                    (:shape-name
                                     "GetServiceNetworkVpcAssociationRequest"))

(smithy/sdk/shapes:define-structure
 get-service-network-vpc-association-response common-lisp:nil
 ((id :target-type service-network-vpc-association-id :member-name "id")
  (status :target-type service-network-vpc-association-status :member-name
   "status")
  (arn :target-type service-network-vpc-association-arn :member-name "arn")
  (created-by :target-type account-id :member-name "createdBy")
  (created-at :target-type timestamp :member-name "createdAt")
  (service-network-id :target-type service-network-id :member-name
   "serviceNetworkId")
  (service-network-name :target-type service-network-name :member-name
   "serviceNetworkName")
  (service-network-arn :target-type service-network-arn :member-name
   "serviceNetworkArn")
  (vpc-id :target-type vpc-id :member-name "vpcId")
  (security-group-ids :target-type security-group-list :member-name
   "securityGroupIds")
  (failure-message :target-type smithy/sdk/smithy-types:string :member-name
   "failureMessage")
  (failure-code :target-type smithy/sdk/smithy-types:string :member-name
   "failureCode")
  (last-updated-at :target-type timestamp :member-name "lastUpdatedAt"))
 (:shape-name "GetServiceNetworkVpcAssociationResponse"))

(smithy/sdk/shapes:define-structure get-service-request common-lisp:nil
                                    ((service-identifier :target-type
                                      service-identifier :required
                                      common-lisp:t :member-name
                                      "serviceIdentifier"))
                                    (:shape-name "GetServiceRequest"))

(smithy/sdk/shapes:define-structure get-service-response common-lisp:nil
                                    ((id :target-type service-id :member-name
                                      "id")
                                     (name :target-type service-name
                                      :member-name "name")
                                     (arn :target-type service-arn :member-name
                                      "arn")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt")
                                     (dns-entry :target-type dns-entry
                                      :member-name "dnsEntry")
                                     (custom-domain-name :target-type
                                      service-custom-domain-name :member-name
                                      "customDomainName")
                                     (certificate-arn :target-type
                                      certificate-arn :member-name
                                      "certificateArn")
                                     (status :target-type service-status
                                      :member-name "status")
                                     (auth-type :target-type auth-type
                                      :member-name "authType")
                                     (failure-code :target-type failure-code
                                      :member-name "failureCode")
                                     (failure-message :target-type
                                      failure-message :member-name
                                      "failureMessage"))
                                    (:shape-name "GetServiceResponse"))

(smithy/sdk/shapes:define-structure get-target-group-request common-lisp:nil
                                    ((target-group-identifier :target-type
                                      target-group-identifier :required
                                      common-lisp:t :member-name
                                      "targetGroupIdentifier"))
                                    (:shape-name "GetTargetGroupRequest"))

(smithy/sdk/shapes:define-structure get-target-group-response common-lisp:nil
                                    ((id :target-type target-group-id
                                      :member-name "id")
                                     (arn :target-type target-group-arn
                                      :member-name "arn")
                                     (name :target-type target-group-name
                                      :member-name "name")
                                     (type :target-type target-group-type
                                      :member-name "type")
                                     (config :target-type target-group-config
                                      :member-name "config")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt")
                                     (status :target-type target-group-status
                                      :member-name "status")
                                     (service-arns :target-type
                                      service-arn-list :member-name
                                      "serviceArns")
                                     (failure-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "failureMessage")
                                     (failure-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "failureCode"))
                                    (:shape-name "GetTargetGroupResponse"))

(smithy/sdk/shapes:define-structure header-match common-lisp:nil
                                    ((name :target-type header-match-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (match :target-type header-match-type
                                      :required common-lisp:t :member-name
                                      "match")
                                     (case-sensitive :target-type boolean
                                      :member-name "caseSensitive"))
                                    (:shape-name "HeaderMatch"))

(smithy/sdk/shapes:define-type header-match-contains
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type header-match-exact
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list header-match-list :member header-match)

(smithy/sdk/shapes:define-type header-match-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type header-match-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union header-match-type common-lisp:nil
                                ((exact :target-type header-match-exact
                                  :member-name "exact")
                                 (prefix :target-type header-match-prefix
                                  :member-name "prefix")
                                 (contains :target-type header-match-contains
                                  :member-name "contains"))
                                (:shape-name "HeaderMatchType"))

(smithy/sdk/shapes:define-structure health-check-config common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "enabled")
                                     (protocol :target-type
                                      target-group-protocol :member-name
                                      "protocol")
                                     (protocol-version :target-type
                                      health-check-protocol-version
                                      :member-name "protocolVersion")
                                     (port :target-type health-check-port
                                      :member-name "port")
                                     (path :target-type health-check-path
                                      :member-name "path")
                                     (health-check-interval-seconds
                                      :target-type
                                      health-check-interval-seconds
                                      :member-name
                                      "healthCheckIntervalSeconds")
                                     (health-check-timeout-seconds :target-type
                                      health-check-timeout-seconds :member-name
                                      "healthCheckTimeoutSeconds")
                                     (healthy-threshold-count :target-type
                                      healthy-threshold-count :member-name
                                      "healthyThresholdCount")
                                     (unhealthy-threshold-count :target-type
                                      unhealthy-threshold-count :member-name
                                      "unhealthyThresholdCount")
                                     (matcher :target-type matcher :member-name
                                      "matcher"))
                                    (:shape-name "HealthCheckConfig"))

(smithy/sdk/shapes:define-type health-check-interval-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type health-check-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type health-check-port
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type health-check-protocol-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type health-check-timeout-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type healthy-threshold-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type http-code-matcher smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure http-match common-lisp:nil
                                    ((method :target-type http-method
                                      :member-name "method")
                                     (path-match :target-type path-match
                                      :member-name "pathMatch")
                                     (header-matches :target-type
                                      header-match-list :member-name
                                      "headerMatches"))
                                    (:shape-name "HttpMatch"))

(smithy/sdk/shapes:define-type http-method smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type http-status-code smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type ip-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ip-address-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ip-resource common-lisp:nil
                                    ((ip-address :target-type ip-address
                                      :member-name "ipAddress"))
                                    (:shape-name "IpResource"))

(smithy/sdk/shapes:define-type lambda-event-structure-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure list-access-log-subscriptions-request
                                    common-lisp:nil
                                    ((resource-identifier :target-type
                                      resource-identifier :required
                                      common-lisp:t :member-name
                                      "resourceIdentifier" :http-query
                                      "resourceIdentifier")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken"))
                                    (:shape-name
                                     "ListAccessLogSubscriptionsRequest"))

(smithy/sdk/shapes:define-structure list-access-log-subscriptions-response
                                    common-lisp:nil
                                    ((items :target-type
                                      access-log-subscription-list :required
                                      common-lisp:t :member-name "items")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListAccessLogSubscriptionsResponse"))

(smithy/sdk/shapes:define-structure list-listeners-request common-lisp:nil
                                    ((service-identifier :target-type
                                      service-identifier :required
                                      common-lisp:t :member-name
                                      "serviceIdentifier")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken"))
                                    (:shape-name "ListListenersRequest"))

(smithy/sdk/shapes:define-structure list-listeners-response common-lisp:nil
                                    ((items :target-type listener-summary-list
                                      :required common-lisp:t :member-name
                                      "items")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListListenersResponse"))

(smithy/sdk/shapes:define-input list-resource-configurations-request
                                common-lisp:nil
                                ((resource-gateway-identifier :target-type
                                  resource-gateway-identifier :member-name
                                  "resourceGatewayIdentifier" :http-query
                                  "resourceGatewayIdentifier")
                                 (resource-configuration-group-identifier
                                  :target-type
                                  resource-configuration-identifier
                                  :member-name
                                  "resourceConfigurationGroupIdentifier"
                                  :http-query
                                  "resourceConfigurationGroupIdentifier")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListResourceConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-resource-configurations-response
                                 common-lisp:nil
                                 ((items :target-type
                                   resource-configuration-summary-list
                                   :member-name "items")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListResourceConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-resource-endpoint-associations-request
                                common-lisp:nil
                                ((resource-configuration-identifier
                                  :target-type
                                  resource-configuration-identifier :required
                                  common-lisp:t :member-name
                                  "resourceConfigurationIdentifier" :http-query
                                  "resourceConfigurationIdentifier")
                                 (resource-endpoint-association-identifier
                                  :target-type
                                  resource-endpoint-association-identifier
                                  :member-name
                                  "resourceEndpointAssociationIdentifier"
                                  :http-query
                                  "resourceEndpointAssociationIdentifier")
                                 (vpc-endpoint-id :target-type vpc-endpoint-id
                                  :member-name "vpcEndpointId" :http-query
                                  "vpcEndpointId")
                                 (vpc-endpoint-owner :target-type
                                  vpc-endpoint-owner :member-name
                                  "vpcEndpointOwner" :http-query
                                  "vpcEndpointOwner")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListResourceEndpointAssociationsRequest"))

(smithy/sdk/shapes:define-output list-resource-endpoint-associations-response
                                 common-lisp:nil
                                 ((items :target-type
                                   resource-endpoint-association-list :required
                                   common-lisp:t :member-name "items")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListResourceEndpointAssociationsResponse"))

(smithy/sdk/shapes:define-input list-resource-gateways-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListResourceGatewaysRequest"))

(smithy/sdk/shapes:define-output list-resource-gateways-response
                                 common-lisp:nil
                                 ((items :target-type resource-gateway-list
                                   :member-name "items")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListResourceGatewaysResponse"))

(smithy/sdk/shapes:define-structure list-rules-request common-lisp:nil
                                    ((service-identifier :target-type
                                      service-identifier :required
                                      common-lisp:t :member-name
                                      "serviceIdentifier")
                                     (listener-identifier :target-type
                                      listener-identifier :required
                                      common-lisp:t :member-name
                                      "listenerIdentifier")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken"))
                                    (:shape-name "ListRulesRequest"))

(smithy/sdk/shapes:define-structure list-rules-response common-lisp:nil
                                    ((items :target-type rule-summary-list
                                      :required common-lisp:t :member-name
                                      "items")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListRulesResponse"))

(smithy/sdk/shapes:define-input
 list-service-network-resource-associations-request common-lisp:nil
 ((service-network-identifier :target-type service-network-identifier
   :member-name "serviceNetworkIdentifier" :http-query
   "serviceNetworkIdentifier")
  (resource-configuration-identifier :target-type
   resource-configuration-identifier :member-name
   "resourceConfigurationIdentifier" :http-query
   "resourceConfigurationIdentifier")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults")
  (next-token :target-type next-token :member-name "nextToken" :http-query
   "nextToken"))
 (:shape-name "ListServiceNetworkResourceAssociationsRequest"))

(smithy/sdk/shapes:define-output
 list-service-network-resource-associations-response common-lisp:nil
 ((items :target-type service-network-resource-association-list :required
   common-lisp:t :member-name "items")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "ListServiceNetworkResourceAssociationsResponse"))

(smithy/sdk/shapes:define-structure
 list-service-network-service-associations-request common-lisp:nil
 ((service-network-identifier :target-type service-network-identifier
   :member-name "serviceNetworkIdentifier" :http-query
   "serviceNetworkIdentifier")
  (service-identifier :target-type service-identifier :member-name
   "serviceIdentifier" :http-query "serviceIdentifier")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults")
  (next-token :target-type next-token :member-name "nextToken" :http-query
   "nextToken"))
 (:shape-name "ListServiceNetworkServiceAssociationsRequest"))

(smithy/sdk/shapes:define-structure
 list-service-network-service-associations-response common-lisp:nil
 ((items :target-type service-network-service-association-list :required
   common-lisp:t :member-name "items")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "ListServiceNetworkServiceAssociationsResponse"))

(smithy/sdk/shapes:define-structure
 list-service-network-vpc-associations-request common-lisp:nil
 ((service-network-identifier :target-type service-network-identifier
   :member-name "serviceNetworkIdentifier" :http-query
   "serviceNetworkIdentifier")
  (vpc-identifier :target-type vpc-id :member-name "vpcIdentifier" :http-query
   "vpcIdentifier")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults")
  (next-token :target-type next-token :member-name "nextToken" :http-query
   "nextToken"))
 (:shape-name "ListServiceNetworkVpcAssociationsRequest"))

(smithy/sdk/shapes:define-structure
 list-service-network-vpc-associations-response common-lisp:nil
 ((items :target-type service-network-vpc-association-list :required
   common-lisp:t :member-name "items")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "ListServiceNetworkVpcAssociationsResponse"))

(smithy/sdk/shapes:define-input
 list-service-network-vpc-endpoint-associations-request common-lisp:nil
 ((service-network-identifier :target-type service-network-identifier :required
   common-lisp:t :member-name "serviceNetworkIdentifier" :http-query
   "serviceNetworkIdentifier")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults")
  (next-token :target-type next-token :member-name "nextToken" :http-query
   "nextToken"))
 (:shape-name "ListServiceNetworkVpcEndpointAssociationsRequest"))

(smithy/sdk/shapes:define-output
 list-service-network-vpc-endpoint-associations-response common-lisp:nil
 ((items :target-type service-network-vpc-endpoint-association-list :required
   common-lisp:t :member-name "items")
  (next-token :target-type next-token :member-name "nextToken"))
 (:shape-name "ListServiceNetworkVpcEndpointAssociationsResponse"))

(smithy/sdk/shapes:define-structure list-service-networks-request
                                    common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken"))
                                    (:shape-name "ListServiceNetworksRequest"))

(smithy/sdk/shapes:define-structure list-service-networks-response
                                    common-lisp:nil
                                    ((items :target-type service-network-list
                                      :required common-lisp:t :member-name
                                      "items")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListServiceNetworksResponse"))

(smithy/sdk/shapes:define-structure list-services-request common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken"))
                                    (:shape-name "ListServicesRequest"))

(smithy/sdk/shapes:define-structure list-services-response common-lisp:nil
                                    ((items :target-type service-list
                                      :member-name "items")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListServicesResponse"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure list-target-groups-request common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (vpc-identifier :target-type vpc-id
                                      :member-name "vpcIdentifier" :http-query
                                      "vpcIdentifier")
                                     (target-group-type :target-type
                                      target-group-type :member-name
                                      "targetGroupType" :http-query
                                      "targetGroupType"))
                                    (:shape-name "ListTargetGroupsRequest"))

(smithy/sdk/shapes:define-structure list-target-groups-response common-lisp:nil
                                    ((items :target-type target-group-list
                                      :member-name "items")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListTargetGroupsResponse"))

(smithy/sdk/shapes:define-structure list-targets-request common-lisp:nil
                                    ((target-group-identifier :target-type
                                      target-group-identifier :required
                                      common-lisp:t :member-name
                                      "targetGroupIdentifier")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (targets :target-type target-list
                                      :member-name "targets"))
                                    (:shape-name "ListTargetsRequest"))

(smithy/sdk/shapes:define-structure list-targets-response common-lisp:nil
                                    ((items :target-type target-summary-list
                                      :required common-lisp:t :member-name
                                      "items")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListTargetsResponse"))

common-lisp:nil

(smithy/sdk/shapes:define-type listener-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type listener-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type listener-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type listener-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type listener-protocol smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure listener-summary common-lisp:nil
                                    ((arn :target-type listener-arn
                                      :member-name "arn")
                                     (id :target-type listener-id :member-name
                                      "id")
                                     (name :target-type listener-name
                                      :member-name "name")
                                     (protocol :target-type listener-protocol
                                      :member-name "protocol")
                                     (port :target-type port :member-name
                                      "port")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name "ListenerSummary"))

(smithy/sdk/shapes:define-list listener-summary-list :member listener-summary)

(smithy/sdk/shapes:define-union matcher common-lisp:nil
                                ((http-code :target-type http-code-matcher
                                  :member-name "httpCode"))
                                (:shape-name "Matcher"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure path-match common-lisp:nil
                                    ((match :target-type path-match-type
                                      :required common-lisp:t :member-name
                                      "match")
                                     (case-sensitive :target-type boolean
                                      :member-name "caseSensitive"))
                                    (:shape-name "PathMatch"))

(smithy/sdk/shapes:define-type path-match-exact smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type path-match-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union path-match-type common-lisp:nil
                                ((exact :target-type path-match-exact
                                  :member-name "exact")
                                 (prefix :target-type path-match-prefix
                                  :member-name "prefix"))
                                (:shape-name "PathMatchType"))

(smithy/sdk/shapes:define-type policy-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type port smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type port-range smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list port-range-list :member port-range)

(smithy/sdk/shapes:define-type protocol-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure put-auth-policy-request common-lisp:nil
                                    ((resource-identifier :target-type
                                      resource-identifier :required
                                      common-lisp:t :member-name
                                      "resourceIdentifier")
                                     (policy :target-type auth-policy-string
                                      :required common-lisp:t :member-name
                                      "policy"))
                                    (:shape-name "PutAuthPolicyRequest"))

(smithy/sdk/shapes:define-structure put-auth-policy-response common-lisp:nil
                                    ((policy :target-type auth-policy-string
                                      :member-name "policy")
                                     (state :target-type auth-policy-state
                                      :member-name "state"))
                                    (:shape-name "PutAuthPolicyResponse"))

(smithy/sdk/shapes:define-structure put-resource-policy-request common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn")
                                     (policy :target-type policy-string
                                      :required common-lisp:t :member-name
                                      "policy"))
                                    (:shape-name "PutResourcePolicyRequest"))

(smithy/sdk/shapes:define-structure put-resource-policy-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "PutResourcePolicyResponse"))

(smithy/sdk/shapes:define-structure register-targets-request common-lisp:nil
                                    ((target-group-identifier :target-type
                                      target-group-identifier :required
                                      common-lisp:t :member-name
                                      "targetGroupIdentifier")
                                     (targets :target-type target-list
                                      :required common-lisp:t :member-name
                                      "targets"))
                                    (:shape-name "RegisterTargetsRequest"))

(smithy/sdk/shapes:define-structure register-targets-response common-lisp:nil
                                    ((successful :target-type target-list
                                      :member-name "successful")
                                     (unsuccessful :target-type
                                      target-failure-list :member-name
                                      "unsuccessful"))
                                    (:shape-name "RegisterTargetsResponse"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type resource-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union resource-configuration-definition
                                common-lisp:nil
                                ((dns-resource :target-type dns-resource
                                  :member-name "dnsResource")
                                 (ip-resource :target-type ip-resource
                                  :member-name "ipResource")
                                 (arn-resource :target-type arn-resource
                                  :member-name "arnResource"))
                                (:shape-name "ResourceConfigurationDefinition"))

(smithy/sdk/shapes:define-type resource-configuration-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-configuration-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-configuration-ip-address-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-configuration-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-configuration-summary
                                    common-lisp:nil
                                    ((id :target-type resource-configuration-id
                                      :member-name "id")
                                     (name :target-type
                                      resource-configuration-name :member-name
                                      "name")
                                     (arn :target-type
                                      resource-configuration-arn :member-name
                                      "arn")
                                     (resource-gateway-id :target-type
                                      resource-gateway-id :member-name
                                      "resourceGatewayId")
                                     (resource-configuration-group-id
                                      :target-type resource-configuration-id
                                      :member-name
                                      "resourceConfigurationGroupId")
                                     (type :target-type
                                      resource-configuration-type :member-name
                                      "type")
                                     (status :target-type
                                      resource-configuration-status
                                      :member-name "status")
                                     (amazon-managed :target-type boolean
                                      :member-name "amazonManaged")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name
                                     "ResourceConfigurationSummary"))

(smithy/sdk/shapes:define-list resource-configuration-summary-list :member
                               resource-configuration-summary)

(smithy/sdk/shapes:define-type resource-configuration-type
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type resource-endpoint-association-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-endpoint-association-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-endpoint-association-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-endpoint-association-list :member
                               resource-endpoint-association-summary)

(smithy/sdk/shapes:define-structure resource-endpoint-association-summary
                                    common-lisp:nil
                                    ((id :target-type
                                      resource-endpoint-association-id
                                      :member-name "id")
                                     (arn :target-type
                                      resource-endpoint-association-arn
                                      :member-name "arn")
                                     (resource-configuration-id :target-type
                                      resource-configuration-id :member-name
                                      "resourceConfigurationId")
                                     (resource-configuration-arn :target-type
                                      resource-configuration-arn :member-name
                                      "resourceConfigurationArn")
                                     (resource-configuration-name :target-type
                                      resource-configuration-name :member-name
                                      "resourceConfigurationName")
                                     (vpc-endpoint-id :target-type
                                      vpc-endpoint-id :member-name
                                      "vpcEndpointId")
                                     (vpc-endpoint-owner :target-type
                                      vpc-endpoint-owner :member-name
                                      "vpcEndpointOwner")
                                     (created-by :target-type account-id
                                      :member-name "createdBy")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt"))
                                    (:shape-name
                                     "ResourceEndpointAssociationSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-type resource-gateway-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-gateway-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-gateway-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-gateway-ip-address-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-gateway-list :member
                               resource-gateway-summary)

(smithy/sdk/shapes:define-type resource-gateway-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-gateway-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-gateway-summary common-lisp:nil
                                    ((name :target-type resource-gateway-name
                                      :member-name "name")
                                     (id :target-type resource-gateway-id
                                      :member-name "id")
                                     (arn :target-type resource-gateway-arn
                                      :member-name "arn")
                                     (status :target-type
                                      resource-gateway-status :member-name
                                      "status")
                                     (vpc-identifier :target-type vpc-id
                                      :member-name "vpcIdentifier")
                                     (subnet-ids :target-type subnet-list
                                      :member-name "subnetIds")
                                     (security-group-ids :target-type
                                      security-group-list :member-name
                                      "securityGroupIds")
                                     (ip-address-type :target-type
                                      resource-gateway-ip-address-type
                                      :member-name "ipAddressType")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name "ResourceGatewaySummary"))

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

common-lisp:nil

(smithy/sdk/shapes:define-union rule-action common-lisp:nil
                                ((forward :target-type forward-action
                                  :member-name "forward")
                                 (fixed-response :target-type
                                  fixed-response-action :member-name
                                  "fixedResponse"))
                                (:shape-name "RuleAction"))

(smithy/sdk/shapes:define-type rule-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rule-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rule-identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union rule-match common-lisp:nil
                                ((http-match :target-type http-match
                                  :member-name "httpMatch"))
                                (:shape-name "RuleMatch"))

(smithy/sdk/shapes:define-type rule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rule-priority smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure rule-summary common-lisp:nil
                                    ((arn :target-type rule-arn :member-name
                                      "arn")
                                     (id :target-type rule-id :member-name
                                      "id")
                                     (name :target-type rule-name :member-name
                                      "name")
                                     (is-default :target-type boolean
                                      :member-name "isDefault")
                                     (priority :target-type rule-priority
                                      :member-name "priority")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name "RuleSummary"))

(smithy/sdk/shapes:define-list rule-summary-list :member rule-summary)

(smithy/sdk/shapes:define-structure rule-update common-lisp:nil
                                    ((rule-identifier :target-type
                                      rule-identifier :required common-lisp:t
                                      :member-name "ruleIdentifier")
                                     (match :target-type rule-match
                                      :member-name "match")
                                     (priority :target-type rule-priority
                                      :member-name "priority")
                                     (action :target-type rule-action
                                      :member-name "action"))
                                    (:shape-name "RuleUpdate"))

(smithy/sdk/shapes:define-structure rule-update-failure common-lisp:nil
                                    ((rule-identifier :target-type
                                      rule-identifier :member-name
                                      "ruleIdentifier")
                                     (failure-code :target-type failure-code
                                      :member-name "failureCode")
                                     (failure-message :target-type
                                      failure-message :member-name
                                      "failureMessage"))
                                    (:shape-name "RuleUpdateFailure"))

(smithy/sdk/shapes:define-list rule-update-failure-list :member
                               rule-update-failure)

(smithy/sdk/shapes:define-list rule-update-list :member rule-update)

(smithy/sdk/shapes:define-structure rule-update-success common-lisp:nil
                                    ((arn :target-type rule-arn :member-name
                                      "arn")
                                     (id :target-type rule-id :member-name
                                      "id")
                                     (name :target-type rule-name :member-name
                                      "name")
                                     (is-default :target-type boolean
                                      :member-name "isDefault")
                                     (match :target-type rule-match
                                      :member-name "match")
                                     (priority :target-type rule-priority
                                      :member-name "priority")
                                     (action :target-type rule-action
                                      :member-name "action"))
                                    (:shape-name "RuleUpdateSuccess"))

(smithy/sdk/shapes:define-list rule-update-success-list :member
                               rule-update-success)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-list :member security-group-id)

common-lisp:nil

(smithy/sdk/shapes:define-type service-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-arn-list :member service-arn)

(smithy/sdk/shapes:define-type service-custom-domain-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-list :member service-summary)

common-lisp:nil

(smithy/sdk/shapes:define-type service-load-balancer-association-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type service-network-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-network-arn-without-regex
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-network-endpoint-association
                                    common-lisp:nil
                                    ((vpc-endpoint-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "vpcEndpointId")
                                     (vpc-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "vpcId")
                                     (vpc-endpoint-owner-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "vpcEndpointOwnerId")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id")
                                     (state :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "state")
                                     (service-network-arn :target-type
                                      service-network-arn :member-name
                                      "serviceNetworkArn")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt"))
                                    (:shape-name
                                     "ServiceNetworkEndpointAssociation"))

(smithy/sdk/shapes:define-type service-network-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-network-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-network-identifier-without-regex
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-network-list :member
                               service-network-summary)

(smithy/sdk/shapes:define-type service-network-log-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-network-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-network-name-without-regex
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type service-network-resource-association-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-network-resource-association-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-network-resource-association-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-network-resource-association-list
                               :member
                               service-network-resource-association-summary)

(smithy/sdk/shapes:define-type service-network-resource-association-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 service-network-resource-association-summary common-lisp:nil
 ((id :target-type service-network-resource-association-id :member-name "id")
  (arn :target-type service-network-resource-association-arn :member-name
   "arn")
  (status :target-type service-network-resource-association-status :member-name
   "status")
  (created-by :target-type account-id :member-name "createdBy")
  (created-at :target-type timestamp :member-name "createdAt")
  (resource-configuration-id :target-type resource-configuration-id
   :member-name "resourceConfigurationId")
  (resource-configuration-arn :target-type resource-configuration-arn
   :member-name "resourceConfigurationArn")
  (resource-configuration-name :target-type resource-configuration-name
   :member-name "resourceConfigurationName")
  (service-network-id :target-type service-network-identifier-without-regex
   :member-name "serviceNetworkId")
  (service-network-arn :target-type service-network-arn-without-regex
   :member-name "serviceNetworkArn")
  (service-network-name :target-type service-network-name-without-regex
   :member-name "serviceNetworkName")
  (dns-entry :target-type dns-entry :member-name "dnsEntry")
  (private-dns-entry :target-type dns-entry :member-name "privateDnsEntry")
  (is-managed-association :target-type boolean :member-name
   "isManagedAssociation")
  (failure-code :target-type smithy/sdk/smithy-types:string :member-name
   "failureCode"))
 (:shape-name "ServiceNetworkResourceAssociationSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-type service-network-service-association-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-network-service-association-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-network-service-association-list :member
                               service-network-service-association-summary)

(smithy/sdk/shapes:define-type service-network-service-association-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-network-service-association-summary
                                    common-lisp:nil
                                    ((id :target-type
                                      service-network-service-association-identifier
                                      :member-name "id")
                                     (status :target-type
                                      service-network-service-association-status
                                      :member-name "status")
                                     (arn :target-type
                                      service-network-service-association-arn
                                      :member-name "arn")
                                     (created-by :target-type account-id
                                      :member-name "createdBy")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (service-id :target-type service-id
                                      :member-name "serviceId")
                                     (service-name :target-type service-name
                                      :member-name "serviceName")
                                     (service-arn :target-type service-arn
                                      :member-name "serviceArn")
                                     (service-network-id :target-type
                                      service-network-id :member-name
                                      "serviceNetworkId")
                                     (service-network-name :target-type
                                      service-network-name :member-name
                                      "serviceNetworkName")
                                     (service-network-arn :target-type
                                      service-network-arn :member-name
                                      "serviceNetworkArn")
                                     (dns-entry :target-type dns-entry
                                      :member-name "dnsEntry")
                                     (custom-domain-name :target-type
                                      service-custom-domain-name :member-name
                                      "customDomainName"))
                                    (:shape-name
                                     "ServiceNetworkServiceAssociationSummary"))

(smithy/sdk/shapes:define-structure service-network-summary common-lisp:nil
                                    ((id :target-type service-network-id
                                      :member-name "id")
                                     (name :target-type service-network-name
                                      :member-name "name")
                                     (arn :target-type service-network-arn
                                      :member-name "arn")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt")
                                     (number-of-associated-vpcs :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "numberOfAssociatedVPCs")
                                     (number-of-associated-services
                                      :target-type smithy/sdk/smithy-types:long
                                      :member-name
                                      "numberOfAssociatedServices")
                                     (number-of-associated-resource-configurations
                                      :target-type smithy/sdk/smithy-types:long
                                      :member-name
                                      "numberOfAssociatedResourceConfigurations"))
                                    (:shape-name "ServiceNetworkSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-type service-network-vpc-association-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-network-vpc-association-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-network-vpc-association-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-network-vpc-association-list :member
                               service-network-vpc-association-summary)

(smithy/sdk/shapes:define-type service-network-vpc-association-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-network-vpc-association-summary
                                    common-lisp:nil
                                    ((id :target-type
                                      service-network-vpc-association-id
                                      :member-name "id")
                                     (arn :target-type
                                      service-network-vpc-association-arn
                                      :member-name "arn")
                                     (status :target-type
                                      service-network-vpc-association-status
                                      :member-name "status")
                                     (created-by :target-type account-id
                                      :member-name "createdBy")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (service-network-id :target-type
                                      service-network-id :member-name
                                      "serviceNetworkId")
                                     (service-network-name :target-type
                                      service-network-name :member-name
                                      "serviceNetworkName")
                                     (service-network-arn :target-type
                                      service-network-arn :member-name
                                      "serviceNetworkArn")
                                     (vpc-id :target-type vpc-id :member-name
                                      "vpcId")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name
                                     "ServiceNetworkVpcAssociationSummary"))

(smithy/sdk/shapes:define-list service-network-vpc-endpoint-association-list
                               :member service-network-endpoint-association)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type service-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-summary common-lisp:nil
                                    ((id :target-type service-id :member-name
                                      "id")
                                     (name :target-type service-name
                                      :member-name "name")
                                     (arn :target-type service-arn :member-name
                                      "arn")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt")
                                     (dns-entry :target-type dns-entry
                                      :member-name "dnsEntry")
                                     (custom-domain-name :target-type
                                      service-custom-domain-name :member-name
                                      "customDomainName")
                                     (status :target-type service-status
                                      :member-name "status"))
                                    (:shape-name "ServiceSummary"))

(smithy/sdk/shapes:define-structure sharing-config common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "enabled"))
                                    (:shape-name "SharingConfig"))

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-list :member subnet-id)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tags :target-type tag-map :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure target common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (port :target-type port :member-name
                                      "port"))
                                    (:shape-name "Target"))

(smithy/sdk/shapes:define-structure target-failure common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id")
                                     (port :target-type port :member-name
                                      "port")
                                     (failure-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "failureCode")
                                     (failure-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "failureMessage"))
                                    (:shape-name "TargetFailure"))

(smithy/sdk/shapes:define-list target-failure-list :member target-failure)

common-lisp:nil

(smithy/sdk/shapes:define-type target-group-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure target-group-config common-lisp:nil
                                    ((port :target-type port :member-name
                                      "port")
                                     (protocol :target-type
                                      target-group-protocol :member-name
                                      "protocol")
                                     (protocol-version :target-type
                                      target-group-protocol-version
                                      :member-name "protocolVersion")
                                     (ip-address-type :target-type
                                      ip-address-type :member-name
                                      "ipAddressType")
                                     (vpc-identifier :target-type vpc-id
                                      :member-name "vpcIdentifier")
                                     (health-check :target-type
                                      health-check-config :member-name
                                      "healthCheck")
                                     (lambda-event-structure-version
                                      :target-type
                                      lambda-event-structure-version
                                      :member-name
                                      "lambdaEventStructureVersion"))
                                    (:shape-name "TargetGroupConfig"))

(smithy/sdk/shapes:define-type target-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-group-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-group-list :member target-group-summary)

(smithy/sdk/shapes:define-type target-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-group-protocol
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-group-protocol-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-group-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure target-group-summary common-lisp:nil
                                    ((id :target-type target-group-id
                                      :member-name "id")
                                     (arn :target-type target-group-arn
                                      :member-name "arn")
                                     (name :target-type target-group-name
                                      :member-name "name")
                                     (type :target-type target-group-type
                                      :member-name "type")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (port :target-type port :member-name
                                      "port")
                                     (protocol :target-type
                                      target-group-protocol :member-name
                                      "protocol")
                                     (ip-address-type :target-type
                                      ip-address-type :member-name
                                      "ipAddressType")
                                     (vpc-identifier :target-type vpc-id
                                      :member-name "vpcIdentifier")
                                     (last-updated-at :target-type timestamp
                                      :member-name "lastUpdatedAt")
                                     (status :target-type target-group-status
                                      :member-name "status")
                                     (service-arns :target-type
                                      service-arn-list :member-name
                                      "serviceArns")
                                     (lambda-event-structure-version
                                      :target-type
                                      lambda-event-structure-version
                                      :member-name
                                      "lambdaEventStructureVersion"))
                                    (:shape-name "TargetGroupSummary"))

(smithy/sdk/shapes:define-type target-group-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-group-weight
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list target-list :member target)

(smithy/sdk/shapes:define-type target-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure target-summary common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id")
                                     (port :target-type port :member-name
                                      "port")
                                     (status :target-type target-status
                                      :member-name "status")
                                     (reason-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "reasonCode"))
                                    (:shape-name "TargetSummary"))

(smithy/sdk/shapes:define-list target-summary-list :member target-summary)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type unhealthy-threshold-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn")
                                     (tag-keys :target-type tag-keys :required
                                      common-lisp:t :member-name "tagKeys"
                                      :http-query "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update-access-log-subscription-request
                                    common-lisp:nil
                                    ((access-log-subscription-identifier
                                      :target-type
                                      access-log-subscription-identifier
                                      :required common-lisp:t :member-name
                                      "accessLogSubscriptionIdentifier")
                                     (destination-arn :target-type
                                      access-log-destination-arn :required
                                      common-lisp:t :member-name
                                      "destinationArn"))
                                    (:shape-name
                                     "UpdateAccessLogSubscriptionRequest"))

(smithy/sdk/shapes:define-structure update-access-log-subscription-response
                                    common-lisp:nil
                                    ((id :target-type
                                      access-log-subscription-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type
                                      access-log-subscription-arn :required
                                      common-lisp:t :member-name "arn")
                                     (resource-id :target-type resource-id
                                      :required common-lisp:t :member-name
                                      "resourceId")
                                     (resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn")
                                     (destination-arn :target-type
                                      access-log-destination-arn :required
                                      common-lisp:t :member-name
                                      "destinationArn"))
                                    (:shape-name
                                     "UpdateAccessLogSubscriptionResponse"))

(smithy/sdk/shapes:define-structure update-listener-request common-lisp:nil
                                    ((service-identifier :target-type
                                      service-identifier :required
                                      common-lisp:t :member-name
                                      "serviceIdentifier")
                                     (listener-identifier :target-type
                                      listener-identifier :required
                                      common-lisp:t :member-name
                                      "listenerIdentifier")
                                     (default-action :target-type rule-action
                                      :required common-lisp:t :member-name
                                      "defaultAction"))
                                    (:shape-name "UpdateListenerRequest"))

(smithy/sdk/shapes:define-structure update-listener-response common-lisp:nil
                                    ((arn :target-type listener-arn
                                      :member-name "arn")
                                     (id :target-type listener-id :member-name
                                      "id")
                                     (name :target-type listener-name
                                      :member-name "name")
                                     (protocol :target-type listener-protocol
                                      :member-name "protocol")
                                     (port :target-type port :member-name
                                      "port")
                                     (service-arn :target-type service-arn
                                      :member-name "serviceArn")
                                     (service-id :target-type service-id
                                      :member-name "serviceId")
                                     (default-action :target-type rule-action
                                      :member-name "defaultAction"))
                                    (:shape-name "UpdateListenerResponse"))

(smithy/sdk/shapes:define-input update-resource-configuration-request
                                common-lisp:nil
                                ((resource-configuration-identifier
                                  :target-type
                                  resource-configuration-identifier :required
                                  common-lisp:t :member-name
                                  "resourceConfigurationIdentifier" :http-label
                                  common-lisp:t)
                                 (resource-configuration-definition
                                  :target-type
                                  resource-configuration-definition
                                  :member-name
                                  "resourceConfigurationDefinition")
                                 (allow-association-to-shareable-service-network
                                  :target-type boolean :member-name
                                  "allowAssociationToShareableServiceNetwork")
                                 (port-ranges :target-type port-range-list
                                  :member-name "portRanges"))
                                (:shape-name
                                 "UpdateResourceConfigurationRequest"))

(smithy/sdk/shapes:define-output update-resource-configuration-response
                                 common-lisp:nil
                                 ((id :target-type resource-configuration-id
                                   :member-name "id")
                                  (name :target-type
                                   resource-configuration-name :member-name
                                   "name")
                                  (arn :target-type resource-configuration-arn
                                   :member-name "arn")
                                  (resource-gateway-id :target-type
                                   resource-gateway-id :member-name
                                   "resourceGatewayId")
                                  (resource-configuration-group-id :target-type
                                   resource-configuration-id :member-name
                                   "resourceConfigurationGroupId")
                                  (type :target-type
                                   resource-configuration-type :member-name
                                   "type")
                                  (port-ranges :target-type port-range-list
                                   :member-name "portRanges")
                                  (allow-association-to-shareable-service-network
                                   :target-type boolean :member-name
                                   "allowAssociationToShareableServiceNetwork")
                                  (protocol :target-type protocol-type
                                   :member-name "protocol")
                                  (status :target-type
                                   resource-configuration-status :member-name
                                   "status")
                                  (resource-configuration-definition
                                   :target-type
                                   resource-configuration-definition
                                   :member-name
                                   "resourceConfigurationDefinition"))
                                 (:shape-name
                                  "UpdateResourceConfigurationResponse"))

(smithy/sdk/shapes:define-input update-resource-gateway-request common-lisp:nil
                                ((resource-gateway-identifier :target-type
                                  resource-gateway-identifier :required
                                  common-lisp:t :member-name
                                  "resourceGatewayIdentifier" :http-label
                                  common-lisp:t)
                                 (security-group-ids :target-type
                                  security-group-list :member-name
                                  "securityGroupIds"))
                                (:shape-name "UpdateResourceGatewayRequest"))

(smithy/sdk/shapes:define-output update-resource-gateway-response
                                 common-lisp:nil
                                 ((name :target-type resource-gateway-name
                                   :member-name "name")
                                  (id :target-type resource-gateway-id
                                   :member-name "id")
                                  (arn :target-type resource-gateway-arn
                                   :member-name "arn")
                                  (status :target-type resource-gateway-status
                                   :member-name "status")
                                  (vpc-id :target-type vpc-id :member-name
                                   "vpcId")
                                  (subnet-ids :target-type subnet-list
                                   :member-name "subnetIds")
                                  (security-group-ids :target-type
                                   security-group-list :member-name
                                   "securityGroupIds")
                                  (ip-address-type :target-type ip-address-type
                                   :member-name "ipAddressType"))
                                 (:shape-name "UpdateResourceGatewayResponse"))

(smithy/sdk/shapes:define-structure update-rule-request common-lisp:nil
                                    ((service-identifier :target-type
                                      service-identifier :required
                                      common-lisp:t :member-name
                                      "serviceIdentifier")
                                     (listener-identifier :target-type
                                      listener-identifier :required
                                      common-lisp:t :member-name
                                      "listenerIdentifier")
                                     (rule-identifier :target-type
                                      rule-identifier :required common-lisp:t
                                      :member-name "ruleIdentifier")
                                     (match :target-type rule-match
                                      :member-name "match")
                                     (priority :target-type rule-priority
                                      :member-name "priority")
                                     (action :target-type rule-action
                                      :member-name "action"))
                                    (:shape-name "UpdateRuleRequest"))

(smithy/sdk/shapes:define-structure update-rule-response common-lisp:nil
                                    ((arn :target-type rule-arn :member-name
                                      "arn")
                                     (id :target-type rule-id :member-name
                                      "id")
                                     (name :target-type rule-name :member-name
                                      "name")
                                     (is-default :target-type boolean
                                      :member-name "isDefault")
                                     (match :target-type rule-match
                                      :member-name "match")
                                     (priority :target-type rule-priority
                                      :member-name "priority")
                                     (action :target-type rule-action
                                      :member-name "action"))
                                    (:shape-name "UpdateRuleResponse"))

(smithy/sdk/shapes:define-structure update-service-network-request
                                    common-lisp:nil
                                    ((service-network-identifier :target-type
                                      service-network-identifier :required
                                      common-lisp:t :member-name
                                      "serviceNetworkIdentifier")
                                     (auth-type :target-type auth-type
                                      :required common-lisp:t :member-name
                                      "authType"))
                                    (:shape-name "UpdateServiceNetworkRequest"))

(smithy/sdk/shapes:define-structure update-service-network-response
                                    common-lisp:nil
                                    ((id :target-type service-network-id
                                      :member-name "id")
                                     (name :target-type service-network-name
                                      :member-name "name")
                                     (arn :target-type service-network-arn
                                      :member-name "arn")
                                     (auth-type :target-type auth-type
                                      :member-name "authType"))
                                    (:shape-name
                                     "UpdateServiceNetworkResponse"))

(smithy/sdk/shapes:define-structure
 update-service-network-vpc-association-request common-lisp:nil
 ((service-network-vpc-association-identifier :target-type
   service-network-vpc-association-identifier :required common-lisp:t
   :member-name "serviceNetworkVpcAssociationIdentifier")
  (security-group-ids :target-type security-group-list :required common-lisp:t
   :member-name "securityGroupIds"))
 (:shape-name "UpdateServiceNetworkVpcAssociationRequest"))

(smithy/sdk/shapes:define-structure
 update-service-network-vpc-association-response common-lisp:nil
 ((id :target-type service-network-vpc-association-id :member-name "id")
  (arn :target-type service-network-vpc-association-arn :member-name "arn")
  (status :target-type service-network-vpc-association-status :member-name
   "status")
  (created-by :target-type account-id :member-name "createdBy")
  (security-group-ids :target-type security-group-list :member-name
   "securityGroupIds"))
 (:shape-name "UpdateServiceNetworkVpcAssociationResponse"))

(smithy/sdk/shapes:define-structure update-service-request common-lisp:nil
                                    ((service-identifier :target-type
                                      service-identifier :required
                                      common-lisp:t :member-name
                                      "serviceIdentifier")
                                     (certificate-arn :target-type
                                      certificate-arn :member-name
                                      "certificateArn")
                                     (auth-type :target-type auth-type
                                      :member-name "authType"))
                                    (:shape-name "UpdateServiceRequest"))

(smithy/sdk/shapes:define-structure update-service-response common-lisp:nil
                                    ((id :target-type service-id :member-name
                                      "id")
                                     (arn :target-type service-arn :member-name
                                      "arn")
                                     (name :target-type service-name
                                      :member-name "name")
                                     (custom-domain-name :target-type
                                      service-custom-domain-name :member-name
                                      "customDomainName")
                                     (certificate-arn :target-type
                                      certificate-arn :member-name
                                      "certificateArn")
                                     (auth-type :target-type auth-type
                                      :member-name "authType"))
                                    (:shape-name "UpdateServiceResponse"))

(smithy/sdk/shapes:define-structure update-target-group-request common-lisp:nil
                                    ((target-group-identifier :target-type
                                      target-group-identifier :required
                                      common-lisp:t :member-name
                                      "targetGroupIdentifier")
                                     (health-check :target-type
                                      health-check-config :required
                                      common-lisp:t :member-name
                                      "healthCheck"))
                                    (:shape-name "UpdateTargetGroupRequest"))

(smithy/sdk/shapes:define-structure update-target-group-response
                                    common-lisp:nil
                                    ((id :target-type target-group-id
                                      :member-name "id")
                                     (arn :target-type target-group-arn
                                      :member-name "arn")
                                     (name :target-type target-group-name
                                      :member-name "name")
                                     (type :target-type target-group-type
                                      :member-name "type")
                                     (config :target-type target-group-config
                                      :member-name "config")
                                     (status :target-type target-group-status
                                      :member-name "status"))
                                    (:shape-name "UpdateTargetGroupResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type validation-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vpc-endpoint-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vpc-endpoint-owner
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure weighted-target-group common-lisp:nil
                                    ((target-group-identifier :target-type
                                      target-group-identifier :required
                                      common-lisp:t :member-name
                                      "targetGroupIdentifier")
                                     (weight :target-type target-group-weight
                                      :member-name "weight"))
                                    (:shape-name "WeightedTargetGroup"))

(smithy/sdk/shapes:define-list weighted-target-group-list :member
                               weighted-target-group)

(smithy/sdk/shapes:define-type wildcard-arn smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation batch-update-rule :shape-name
                                       "BatchUpdateRule" :input
                                       batch-update-rule-request :output
                                       batch-update-rule-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules"
                                       :code 200)

(smithy/sdk/operation:define-operation create-access-log-subscription
                                       :shape-name
                                       "CreateAccessLogSubscription" :input
                                       create-access-log-subscription-request
                                       :output
                                       create-access-log-subscription-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/accesslogsubscriptions" :code 201)

(smithy/sdk/operation:define-operation create-listener :shape-name
                                       "CreateListener" :input
                                       create-listener-request :output
                                       create-listener-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/services/{serviceIdentifier}/listeners"
                                       :code 201)

(smithy/sdk/operation:define-operation create-resource-configuration
                                       :shape-name
                                       "CreateResourceConfiguration" :input
                                       create-resource-configuration-request
                                       :output
                                       create-resource-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/resourceconfigurations" :code 201)

(smithy/sdk/operation:define-operation create-resource-gateway :shape-name
                                       "CreateResourceGateway" :input
                                       create-resource-gateway-request :output
                                       create-resource-gateway-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/resourcegateways"
                                       :code 201)

(smithy/sdk/operation:define-operation create-rule :shape-name "CreateRule"
                                       :input create-rule-request :output
                                       create-rule-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules"
                                       :code 201)

(smithy/sdk/operation:define-operation create-service :shape-name
                                       "CreateService" :input
                                       create-service-request :output
                                       create-service-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/services" :code
                                       201)

(smithy/sdk/operation:define-operation create-service-network :shape-name
                                       "CreateServiceNetwork" :input
                                       create-service-network-request :output
                                       create-service-network-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/servicenetworks"
                                       :code 201)

(smithy/sdk/operation:define-operation
 create-service-network-resource-association :shape-name
 "CreateServiceNetworkResourceAssociation" :input
 create-service-network-resource-association-request :output
 create-service-network-resource-association-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception service-quota-exceeded-exception
  throttling-exception validation-exception)
 :method "POST" :uri "/servicenetworkresourceassociations" :code 201)

(smithy/sdk/operation:define-operation
 create-service-network-service-association :shape-name
 "CreateServiceNetworkServiceAssociation" :input
 create-service-network-service-association-request :output
 create-service-network-service-association-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception service-quota-exceeded-exception
  throttling-exception validation-exception)
 :method "POST" :uri "/servicenetworkserviceassociations" :code 200)

(smithy/sdk/operation:define-operation create-service-network-vpc-association
                                       :shape-name
                                       "CreateServiceNetworkVpcAssociation"
                                       :input
                                       create-service-network-vpc-association-request
                                       :output
                                       create-service-network-vpc-association-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/servicenetworkvpcassociations" :code
                                       200)

(smithy/sdk/operation:define-operation create-target-group :shape-name
                                       "CreateTargetGroup" :input
                                       create-target-group-request :output
                                       create-target-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/targetgroups"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-access-log-subscription
                                       :shape-name
                                       "DeleteAccessLogSubscription" :input
                                       delete-access-log-subscription-request
                                       :output
                                       delete-access-log-subscription-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/accesslogsubscriptions/{accessLogSubscriptionIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-auth-policy :shape-name
                                       "DeleteAuthPolicy" :input
                                       delete-auth-policy-request :output
                                       delete-auth-policy-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/authpolicy/{resourceIdentifier}" :code
                                       204)

(smithy/sdk/operation:define-operation delete-listener :shape-name
                                       "DeleteListener" :input
                                       delete-listener-request :output
                                       delete-listener-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/services/{serviceIdentifier}/listeners/{listenerIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-resource-configuration
                                       :shape-name
                                       "DeleteResourceConfiguration" :input
                                       delete-resource-configuration-request
                                       :output
                                       delete-resource-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/resourceconfigurations/{resourceConfigurationIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-resource-endpoint-association
                                       :shape-name
                                       "DeleteResourceEndpointAssociation"
                                       :input
                                       delete-resource-endpoint-association-request
                                       :output
                                       delete-resource-endpoint-association-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/resourceendpointassociations/{resourceEndpointAssociationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-resource-gateway :shape-name
                                       "DeleteResourceGateway" :input
                                       delete-resource-gateway-request :output
                                       delete-resource-gateway-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/resourcegateways/{resourceGatewayIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-request :output
                                       delete-resource-policy-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/resourcepolicy/{resourceArn}" :code
                                       204)

(smithy/sdk/operation:define-operation delete-rule :shape-name "DeleteRule"
                                       :input delete-rule-request :output
                                       delete-rule-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules/{ruleIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-service :shape-name
                                       "DeleteService" :input
                                       delete-service-request :output
                                       delete-service-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/services/{serviceIdentifier}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-service-network :shape-name
                                       "DeleteServiceNetwork" :input
                                       delete-service-network-request :output
                                       delete-service-network-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/servicenetworks/{serviceNetworkIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation
 delete-service-network-resource-association :shape-name
 "DeleteServiceNetworkResourceAssociation" :input
 delete-service-network-resource-association-request :output
 delete-service-network-resource-association-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "DELETE" :uri
 "/servicenetworkresourceassociations/{serviceNetworkResourceAssociationIdentifier}"
 :code 200)

(smithy/sdk/operation:define-operation
 delete-service-network-service-association :shape-name
 "DeleteServiceNetworkServiceAssociation" :input
 delete-service-network-service-association-request :output
 delete-service-network-service-association-response :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "DELETE" :uri
 "/servicenetworkserviceassociations/{serviceNetworkServiceAssociationIdentifier}"
 :code 200)

(smithy/sdk/operation:define-operation delete-service-network-vpc-association
                                       :shape-name
                                       "DeleteServiceNetworkVpcAssociation"
                                       :input
                                       delete-service-network-vpc-association-request
                                       :output
                                       delete-service-network-vpc-association-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/servicenetworkvpcassociations/{serviceNetworkVpcAssociationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-target-group :shape-name
                                       "DeleteTargetGroup" :input
                                       delete-target-group-request :output
                                       delete-target-group-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/targetgroups/{targetGroupIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation deregister-targets :shape-name
                                       "DeregisterTargets" :input
                                       deregister-targets-request :output
                                       deregister-targets-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/targetgroups/{targetGroupIdentifier}/deregistertargets"
                                       :code 200)

(smithy/sdk/operation:define-operation get-access-log-subscription :shape-name
                                       "GetAccessLogSubscription" :input
                                       get-access-log-subscription-request
                                       :output
                                       get-access-log-subscription-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/accesslogsubscriptions/{accessLogSubscriptionIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-auth-policy :shape-name
                                       "GetAuthPolicy" :input
                                       get-auth-policy-request :output
                                       get-auth-policy-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/authpolicy/{resourceIdentifier}" :code
                                       200)

(smithy/sdk/operation:define-operation get-listener :shape-name "GetListener"
                                       :input get-listener-request :output
                                       get-listener-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/services/{serviceIdentifier}/listeners/{listenerIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-resource-configuration :shape-name
                                       "GetResourceConfiguration" :input
                                       get-resource-configuration-request
                                       :output
                                       get-resource-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/resourceconfigurations/{resourceConfigurationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-resource-gateway :shape-name
                                       "GetResourceGateway" :input
                                       get-resource-gateway-request :output
                                       get-resource-gateway-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/resourcegateways/{resourceGatewayIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-resource-policy :shape-name
                                       "GetResourcePolicy" :input
                                       get-resource-policy-request :output
                                       get-resource-policy-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/resourcepolicy/{resourceArn}" :code
                                       200)

(smithy/sdk/operation:define-operation get-rule :shape-name "GetRule" :input
                                       get-rule-request :output
                                       get-rule-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules/{ruleIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-service :shape-name "GetService"
                                       :input get-service-request :output
                                       get-service-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/services/{serviceIdentifier}" :code
                                       200)

(smithy/sdk/operation:define-operation get-service-network :shape-name
                                       "GetServiceNetwork" :input
                                       get-service-network-request :output
                                       get-service-network-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/servicenetworks/{serviceNetworkIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-service-network-resource-association
                                       :shape-name
                                       "GetServiceNetworkResourceAssociation"
                                       :input
                                       get-service-network-resource-association-request
                                       :output
                                       get-service-network-resource-association-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/servicenetworkresourceassociations/{serviceNetworkResourceAssociationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-service-network-service-association
                                       :shape-name
                                       "GetServiceNetworkServiceAssociation"
                                       :input
                                       get-service-network-service-association-request
                                       :output
                                       get-service-network-service-association-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/servicenetworkserviceassociations/{serviceNetworkServiceAssociationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-service-network-vpc-association
                                       :shape-name
                                       "GetServiceNetworkVpcAssociation" :input
                                       get-service-network-vpc-association-request
                                       :output
                                       get-service-network-vpc-association-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/servicenetworkvpcassociations/{serviceNetworkVpcAssociationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-target-group :shape-name
                                       "GetTargetGroup" :input
                                       get-target-group-request :output
                                       get-target-group-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/targetgroups/{targetGroupIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-access-log-subscriptions
                                       :shape-name "ListAccessLogSubscriptions"
                                       :input
                                       list-access-log-subscriptions-request
                                       :output
                                       list-access-log-subscriptions-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/accesslogsubscriptions" :code 200)

(smithy/sdk/operation:define-operation list-listeners :shape-name
                                       "ListListeners" :input
                                       list-listeners-request :output
                                       list-listeners-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/services/{serviceIdentifier}/listeners"
                                       :code 200)

(smithy/sdk/operation:define-operation list-resource-configurations :shape-name
                                       "ListResourceConfigurations" :input
                                       list-resource-configurations-request
                                       :output
                                       list-resource-configurations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/resourceconfigurations" :code 200)

(smithy/sdk/operation:define-operation list-resource-endpoint-associations
                                       :shape-name
                                       "ListResourceEndpointAssociations"
                                       :input
                                       list-resource-endpoint-associations-request
                                       :output
                                       list-resource-endpoint-associations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/resourceendpointassociations" :code
                                       200)

(smithy/sdk/operation:define-operation list-resource-gateways :shape-name
                                       "ListResourceGateways" :input
                                       list-resource-gateways-request :output
                                       list-resource-gateways-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/resourcegateways"
                                       :code 200)

(smithy/sdk/operation:define-operation list-rules :shape-name "ListRules"
                                       :input list-rules-request :output
                                       list-rules-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules"
                                       :code 200)

(smithy/sdk/operation:define-operation
 list-service-network-resource-associations :shape-name
 "ListServiceNetworkResourceAssociations" :input
 list-service-network-resource-associations-request :output
 list-service-network-resource-associations-response :errors
 (access-denied-exception internal-server-exception throttling-exception
  validation-exception)
 :method "GET" :uri "/servicenetworkresourceassociations" :code 200)

(smithy/sdk/operation:define-operation
 list-service-network-service-associations :shape-name
 "ListServiceNetworkServiceAssociations" :input
 list-service-network-service-associations-request :output
 list-service-network-service-associations-response :errors
 (access-denied-exception internal-server-exception throttling-exception
  validation-exception)
 :method "GET" :uri "/servicenetworkserviceassociations" :code 200)

(smithy/sdk/operation:define-operation list-service-network-vpc-associations
                                       :shape-name
                                       "ListServiceNetworkVpcAssociations"
                                       :input
                                       list-service-network-vpc-associations-request
                                       :output
                                       list-service-network-vpc-associations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/servicenetworkvpcassociations" :code
                                       200)

(smithy/sdk/operation:define-operation
 list-service-network-vpc-endpoint-associations :shape-name
 "ListServiceNetworkVpcEndpointAssociations" :input
 list-service-network-vpc-endpoint-associations-request :output
 list-service-network-vpc-endpoint-associations-response :errors
 (access-denied-exception internal-server-exception throttling-exception
  validation-exception)
 :method "GET" :uri "/servicenetworkvpcendpointassociations" :code 200)

(smithy/sdk/operation:define-operation list-service-networks :shape-name
                                       "ListServiceNetworks" :input
                                       list-service-networks-request :output
                                       list-service-networks-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/servicenetworks"
                                       :code 200)

(smithy/sdk/operation:define-operation list-services :shape-name "ListServices"
                                       :input list-services-request :output
                                       list-services-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/services" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation list-target-groups :shape-name
                                       "ListTargetGroups" :input
                                       list-target-groups-request :output
                                       list-target-groups-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/targetgroups" :code
                                       200)

(smithy/sdk/operation:define-operation list-targets :shape-name "ListTargets"
                                       :input list-targets-request :output
                                       list-targets-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/targetgroups/{targetGroupIdentifier}/listtargets"
                                       :code 200)

(smithy/sdk/operation:define-operation put-auth-policy :shape-name
                                       "PutAuthPolicy" :input
                                       put-auth-policy-request :output
                                       put-auth-policy-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/authpolicy/{resourceIdentifier}" :code
                                       200)

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-request :output
                                       put-resource-policy-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/resourcepolicy/{resourceArn}" :code
                                       200)

(smithy/sdk/operation:define-operation register-targets :shape-name
                                       "RegisterTargets" :input
                                       register-targets-request :output
                                       register-targets-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/targetgroups/{targetGroupIdentifier}/registertargets"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-access-log-subscription
                                       :shape-name
                                       "UpdateAccessLogSubscription" :input
                                       update-access-log-subscription-request
                                       :output
                                       update-access-log-subscription-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/accesslogsubscriptions/{accessLogSubscriptionIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-listener :shape-name
                                       "UpdateListener" :input
                                       update-listener-request :output
                                       update-listener-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/services/{serviceIdentifier}/listeners/{listenerIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-resource-configuration
                                       :shape-name
                                       "UpdateResourceConfiguration" :input
                                       update-resource-configuration-request
                                       :output
                                       update-resource-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/resourceconfigurations/{resourceConfigurationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-resource-gateway :shape-name
                                       "UpdateResourceGateway" :input
                                       update-resource-gateway-request :output
                                       update-resource-gateway-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/resourcegateways/{resourceGatewayIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-rule :shape-name "UpdateRule"
                                       :input update-rule-request :output
                                       update-rule-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/services/{serviceIdentifier}/listeners/{listenerIdentifier}/rules/{ruleIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-service :shape-name
                                       "UpdateService" :input
                                       update-service-request :output
                                       update-service-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/services/{serviceIdentifier}" :code
                                       200)

(smithy/sdk/operation:define-operation update-service-network :shape-name
                                       "UpdateServiceNetwork" :input
                                       update-service-network-request :output
                                       update-service-network-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/servicenetworks/{serviceNetworkIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-service-network-vpc-association
                                       :shape-name
                                       "UpdateServiceNetworkVpcAssociation"
                                       :input
                                       update-service-network-vpc-association-request
                                       :output
                                       update-service-network-vpc-association-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/servicenetworkvpcassociations/{serviceNetworkVpcAssociationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-target-group :shape-name
                                       "UpdateTargetGroup" :input
                                       update-target-group-request :output
                                       update-target-group-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/targetgroups/{targetGroupIdentifier}"
                                       :code 200)
