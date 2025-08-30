(uiop/package:define-package #:pira/privatenetworks (:use)
                             (:export #:access-denied-exception
                              #:acknowledge-order-receipt
                              #:acknowledge-order-receipt-request
                              #:acknowledge-order-receipt-response
                              #:acknowledgment-status
                              #:activate-device-identifier
                              #:activate-device-identifier-request
                              #:activate-device-identifier-response
                              #:activate-network-site
                              #:activate-network-site-request
                              #:activate-network-site-response #:address
                              #:address-content #:arn #:client-token
                              #:commitment-configuration
                              #:commitment-information #:commitment-length
                              #:configure-access-point
                              #:configure-access-point-request
                              #:configure-access-point-response
                              #:create-network #:create-network-request
                              #:create-network-response #:create-network-site
                              #:create-network-site-request
                              #:create-network-site-response
                              #:deactivate-device-identifier
                              #:deactivate-device-identifier-request
                              #:deactivate-device-identifier-response
                              #:delete-network #:delete-network-request
                              #:delete-network-response #:delete-network-site
                              #:delete-network-site-request
                              #:delete-network-site-response #:description
                              #:device-identifier
                              #:device-identifier-filter-keys
                              #:device-identifier-filter-values
                              #:device-identifier-filters
                              #:device-identifier-list
                              #:device-identifier-status
                              #:e5gnetwork-controller-lambda
                              #:elevation-reference #:elevation-unit
                              #:get-device-identifier
                              #:get-device-identifier-request
                              #:get-device-identifier-response #:get-network
                              #:get-network-request #:get-network-resource
                              #:get-network-resource-request
                              #:get-network-resource-response
                              #:get-network-response #:get-network-site
                              #:get-network-site-request
                              #:get-network-site-response #:get-order
                              #:get-order-request #:get-order-response
                              #:health-status #:internal-server-exception
                              #:limit-exceeded-exception
                              #:list-device-identifiers
                              #:list-device-identifiers-request
                              #:list-device-identifiers-response
                              #:list-network-resources
                              #:list-network-resources-request
                              #:list-network-resources-response
                              #:list-network-sites #:list-network-sites-request
                              #:list-network-sites-response #:list-networks
                              #:list-networks-request #:list-networks-response
                              #:list-orders #:list-orders-request
                              #:list-orders-response #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:name
                              #:name-value-pair #:name-value-pairs #:network
                              #:network-filter-keys #:network-filter-values
                              #:network-filters #:network-list
                              #:network-resource #:network-resource-definition
                              #:network-resource-definition-type
                              #:network-resource-definitions
                              #:network-resource-filter-keys
                              #:network-resource-filter-values
                              #:network-resource-filters
                              #:network-resource-list #:network-resource-status
                              #:network-resource-type #:network-site
                              #:network-site-filter-keys
                              #:network-site-filter-values
                              #:network-site-filters #:network-site-list
                              #:network-site-status #:network-status #:options
                              #:order #:order-filter-keys #:order-filter-values
                              #:order-filters #:order-list
                              #:ordered-resource-definition
                              #:ordered-resource-definitions #:pagination-token
                              #:ping #:ping-response #:position
                              #:resource-not-found-exception
                              #:return-information #:sensitive-string
                              #:site-plan #:start-network-resource-update
                              #:start-network-resource-update-request
                              #:start-network-resource-update-response
                              #:tag-key #:tag-key-list #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:throttling-exception #:timestamp
                              #:tracking-information
                              #:tracking-information-list #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-network-site
                              #:update-network-site-plan
                              #:update-network-site-plan-request
                              #:update-network-site-request
                              #:update-network-site-response #:update-type
                              #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason
                              #:privatenetworks-error))
(common-lisp:in-package #:pira/privatenetworks)

(common-lisp:define-condition privatenetworks-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service e5gnetwork-controller-lambda :shape-name
                                   "E5GNetworkControllerLambda" :version
                                   "2021-12-03" :title "AWS Private 5G"
                                   :operations
                                   '(acknowledge-order-receipt
                                     activate-device-identifier
                                     activate-network-site
                                     configure-access-point create-network
                                     create-network-site
                                     deactivate-device-identifier
                                     delete-network delete-network-site
                                     get-device-identifier get-network
                                     get-network-resource get-network-site
                                     get-order list-device-identifiers
                                     list-network-resources list-networks
                                     list-network-sites list-orders
                                     list-tags-for-resource ping
                                     start-network-resource-update tag-resource
                                     untag-resource update-network-site
                                     update-network-site-plan)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "PrivateNetworks")
                                      ("arnNamespace" . "private-networks"))
                                     ("aws.auth#sigv4"
                                      ("name" . "private-networks"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class privatenetworks-error))

(smithy/sdk/shapes:define-structure acknowledge-order-receipt-request
                                    common-lisp:nil
                                    ((order-arn :target-type arn :required
                                      common-lisp:t :member-name "orderArn"))
                                    (:shape-name
                                     "AcknowledgeOrderReceiptRequest"))

(smithy/sdk/shapes:define-structure acknowledge-order-receipt-response
                                    common-lisp:nil
                                    ((order :target-type order :required
                                      common-lisp:t :member-name "order"))
                                    (:shape-name
                                     "AcknowledgeOrderReceiptResponse"))

(smithy/sdk/shapes:define-type acknowledgment-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure activate-device-identifier-request
                                    common-lisp:nil
                                    ((device-identifier-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "deviceIdentifierArn")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name
                                     "ActivateDeviceIdentifierRequest"))

(smithy/sdk/shapes:define-structure activate-device-identifier-response
                                    common-lisp:nil
                                    ((device-identifier :target-type
                                      device-identifier :required common-lisp:t
                                      :member-name "deviceIdentifier")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name
                                     "ActivateDeviceIdentifierResponse"))

(smithy/sdk/shapes:define-structure activate-network-site-request
                                    common-lisp:nil
                                    ((network-site-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "networkSiteArn")
                                     (shipping-address :target-type address
                                      :required common-lisp:t :member-name
                                      "shippingAddress")
                                     (client-token :target-type client-token
                                      :member-name "clientToken")
                                     (commitment-configuration :target-type
                                      commitment-configuration :member-name
                                      "commitmentConfiguration"))
                                    (:shape-name "ActivateNetworkSiteRequest"))

(smithy/sdk/shapes:define-structure activate-network-site-response
                                    common-lisp:nil
                                    ((network-site :target-type network-site
                                      :member-name "networkSite"))
                                    (:shape-name "ActivateNetworkSiteResponse"))

(smithy/sdk/shapes:define-structure address common-lisp:nil
                                    ((city :target-type address-content
                                      :required common-lisp:t :member-name
                                      "city")
                                     (company :target-type address-content
                                      :member-name "company")
                                     (country :target-type address-content
                                      :required common-lisp:t :member-name
                                      "country")
                                     (name :target-type address-content
                                      :required common-lisp:t :member-name
                                      "name")
                                     (phone-number :target-type address-content
                                      :member-name "phoneNumber")
                                     (postal-code :target-type address-content
                                      :required common-lisp:t :member-name
                                      "postalCode")
                                     (state-or-province :target-type
                                      address-content :required common-lisp:t
                                      :member-name "stateOrProvince")
                                     (street1 :target-type address-content
                                      :required common-lisp:t :member-name
                                      "street1")
                                     (street2 :target-type address-content
                                      :member-name "street2")
                                     (street3 :target-type address-content
                                      :member-name "street3")
                                     (email-address :target-type
                                      address-content :member-name
                                      "emailAddress"))
                                    (:shape-name "Address"))

(smithy/sdk/shapes:define-type address-content smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure commitment-configuration common-lisp:nil
                                    ((commitment-length :target-type
                                      commitment-length :required common-lisp:t
                                      :member-name "commitmentLength")
                                     (automatic-renewal :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "automaticRenewal"))
                                    (:shape-name "CommitmentConfiguration"))

(smithy/sdk/shapes:define-structure commitment-information common-lisp:nil
                                    ((commitment-configuration :target-type
                                      commitment-configuration :required
                                      common-lisp:t :member-name
                                      "commitmentConfiguration")
                                     (start-at :target-type timestamp
                                      :member-name "startAt")
                                     (expires-on :target-type timestamp
                                      :member-name "expiresOn"))
                                    (:shape-name "CommitmentInformation"))

(smithy/sdk/shapes:define-type commitment-length smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure configure-access-point-request
                                    common-lisp:nil
                                    ((access-point-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "accessPointArn")
                                     (position :target-type position
                                      :member-name "position")
                                     (cpi-username :target-type
                                      sensitive-string :member-name
                                      "cpiUsername")
                                     (cpi-user-id :target-type sensitive-string
                                      :member-name "cpiUserId")
                                     (cpi-user-password :target-type
                                      sensitive-string :member-name
                                      "cpiUserPassword")
                                     (cpi-secret-key :target-type
                                      sensitive-string :member-name
                                      "cpiSecretKey"))
                                    (:shape-name "ConfigureAccessPointRequest"))

(smithy/sdk/shapes:define-structure configure-access-point-response
                                    common-lisp:nil
                                    ((access-point :target-type
                                      network-resource :required common-lisp:t
                                      :member-name "accessPoint"))
                                    (:shape-name
                                     "ConfigureAccessPointResponse"))

(smithy/sdk/shapes:define-structure create-network-request common-lisp:nil
                                    ((network-name :target-type name :required
                                      common-lisp:t :member-name "networkName")
                                     (description :target-type description
                                      :member-name "description")
                                     (client-token :target-type client-token
                                      :member-name "clientToken")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "CreateNetworkRequest"))

(smithy/sdk/shapes:define-structure create-network-response common-lisp:nil
                                    ((network :target-type network :required
                                      common-lisp:t :member-name "network")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "CreateNetworkResponse"))

(smithy/sdk/shapes:define-structure create-network-site-request common-lisp:nil
                                    ((network-site-name :target-type name
                                      :required common-lisp:t :member-name
                                      "networkSiteName")
                                     (description :target-type description
                                      :member-name "description")
                                     (network-arn :target-type arn :required
                                      common-lisp:t :member-name "networkArn")
                                     (pending-plan :target-type site-plan
                                      :member-name "pendingPlan")
                                     (client-token :target-type client-token
                                      :member-name "clientToken")
                                     (availability-zone :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "availabilityZone")
                                     (availability-zone-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "availabilityZoneId")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "CreateNetworkSiteRequest"))

(smithy/sdk/shapes:define-structure create-network-site-response
                                    common-lisp:nil
                                    ((network-site :target-type network-site
                                      :member-name "networkSite")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "CreateNetworkSiteResponse"))

(smithy/sdk/shapes:define-structure deactivate-device-identifier-request
                                    common-lisp:nil
                                    ((device-identifier-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "deviceIdentifierArn")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name
                                     "DeactivateDeviceIdentifierRequest"))

(smithy/sdk/shapes:define-structure deactivate-device-identifier-response
                                    common-lisp:nil
                                    ((device-identifier :target-type
                                      device-identifier :required common-lisp:t
                                      :member-name "deviceIdentifier"))
                                    (:shape-name
                                     "DeactivateDeviceIdentifierResponse"))

(smithy/sdk/shapes:define-input delete-network-request common-lisp:nil
                                ((network-arn :target-type arn :required
                                  common-lisp:t :member-name "networkArn"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeleteNetworkRequest"))

(smithy/sdk/shapes:define-structure delete-network-response common-lisp:nil
                                    ((network :target-type network :required
                                      common-lisp:t :member-name "network"))
                                    (:shape-name "DeleteNetworkResponse"))

(smithy/sdk/shapes:define-input delete-network-site-request common-lisp:nil
                                ((network-site-arn :target-type arn :required
                                  common-lisp:t :member-name "networkSiteArn"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeleteNetworkSiteRequest"))

(smithy/sdk/shapes:define-structure delete-network-site-response
                                    common-lisp:nil
                                    ((network-site :target-type network-site
                                      :member-name "networkSite"))
                                    (:shape-name "DeleteNetworkSiteResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure device-identifier common-lisp:nil
                                    ((device-identifier-arn :target-type arn
                                      :member-name "deviceIdentifierArn")
                                     (traffic-group-arn :target-type arn
                                      :member-name "trafficGroupArn")
                                     (network-arn :target-type arn :member-name
                                      "networkArn")
                                     (imsi :target-type sensitive-string
                                      :member-name "imsi")
                                     (iccid :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "iccid")
                                     (vendor :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "vendor")
                                     (status :target-type
                                      device-identifier-status :member-name
                                      "status")
                                     (order-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "orderArn")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt"))
                                    (:shape-name "DeviceIdentifier"))

(smithy/sdk/shapes:define-type device-identifier-filter-keys
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list device-identifier-filter-values :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map device-identifier-filters :key
                              device-identifier-filter-keys :value
                              device-identifier-filter-values)

(smithy/sdk/shapes:define-list device-identifier-list :member device-identifier)

(smithy/sdk/shapes:define-type device-identifier-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type elevation-reference
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type elevation-unit smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-device-identifier-request common-lisp:nil
                                ((device-identifier-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "deviceIdentifierArn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetDeviceIdentifierRequest"))

(smithy/sdk/shapes:define-structure get-device-identifier-response
                                    common-lisp:nil
                                    ((device-identifier :target-type
                                      device-identifier :member-name
                                      "deviceIdentifier")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "GetDeviceIdentifierResponse"))

(smithy/sdk/shapes:define-input get-network-request common-lisp:nil
                                ((network-arn :target-type arn :required
                                  common-lisp:t :member-name "networkArn"
                                  :http-label common-lisp:t))
                                (:shape-name "GetNetworkRequest"))

(smithy/sdk/shapes:define-input get-network-resource-request common-lisp:nil
                                ((network-resource-arn :target-type arn
                                  :required common-lisp:t :member-name
                                  "networkResourceArn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetNetworkResourceRequest"))

(smithy/sdk/shapes:define-structure get-network-resource-response
                                    common-lisp:nil
                                    ((network-resource :target-type
                                      network-resource :required common-lisp:t
                                      :member-name "networkResource")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "GetNetworkResourceResponse"))

(smithy/sdk/shapes:define-structure get-network-response common-lisp:nil
                                    ((network :target-type network :required
                                      common-lisp:t :member-name "network")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "GetNetworkResponse"))

(smithy/sdk/shapes:define-input get-network-site-request common-lisp:nil
                                ((network-site-arn :target-type arn :required
                                  common-lisp:t :member-name "networkSiteArn"
                                  :http-label common-lisp:t))
                                (:shape-name "GetNetworkSiteRequest"))

(smithy/sdk/shapes:define-structure get-network-site-response common-lisp:nil
                                    ((network-site :target-type network-site
                                      :member-name "networkSite")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "GetNetworkSiteResponse"))

(smithy/sdk/shapes:define-input get-order-request common-lisp:nil
                                ((order-arn :target-type arn :required
                                  common-lisp:t :member-name "orderArn"
                                  :http-label common-lisp:t))
                                (:shape-name "GetOrderRequest"))

(smithy/sdk/shapes:define-structure get-order-response common-lisp:nil
                                    ((order :target-type order :required
                                      common-lisp:t :member-name "order")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "GetOrderResponse"))

(smithy/sdk/shapes:define-type health-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class privatenetworks-error))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400)
                                (:base-class privatenetworks-error))

(smithy/sdk/shapes:define-structure list-device-identifiers-request
                                    common-lisp:nil
                                    ((filters :target-type
                                      device-identifier-filters :member-name
                                      "filters")
                                     (network-arn :target-type arn :required
                                      common-lisp:t :member-name "networkArn")
                                     (start-token :target-type pagination-token
                                      :member-name "startToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults"))
                                    (:shape-name
                                     "ListDeviceIdentifiersRequest"))

(smithy/sdk/shapes:define-structure list-device-identifiers-response
                                    common-lisp:nil
                                    ((device-identifiers :target-type
                                      device-identifier-list :member-name
                                      "deviceIdentifiers")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListDeviceIdentifiersResponse"))

(smithy/sdk/shapes:define-structure list-network-resources-request
                                    common-lisp:nil
                                    ((filters :target-type
                                      network-resource-filters :member-name
                                      "filters")
                                     (network-arn :target-type arn :required
                                      common-lisp:t :member-name "networkArn")
                                     (start-token :target-type pagination-token
                                      :member-name "startToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults"))
                                    (:shape-name "ListNetworkResourcesRequest"))

(smithy/sdk/shapes:define-structure list-network-resources-response
                                    common-lisp:nil
                                    ((network-resources :target-type
                                      network-resource-list :member-name
                                      "networkResources")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListNetworkResourcesResponse"))

(smithy/sdk/shapes:define-structure list-network-sites-request common-lisp:nil
                                    ((filters :target-type network-site-filters
                                      :member-name "filters")
                                     (network-arn :target-type arn :required
                                      common-lisp:t :member-name "networkArn")
                                     (start-token :target-type pagination-token
                                      :member-name "startToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults"))
                                    (:shape-name "ListNetworkSitesRequest"))

(smithy/sdk/shapes:define-structure list-network-sites-response common-lisp:nil
                                    ((network-sites :target-type
                                      network-site-list :member-name
                                      "networkSites")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListNetworkSitesResponse"))

(smithy/sdk/shapes:define-structure list-networks-request common-lisp:nil
                                    ((filters :target-type network-filters
                                      :member-name "filters")
                                     (start-token :target-type pagination-token
                                      :member-name "startToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults"))
                                    (:shape-name "ListNetworksRequest"))

(smithy/sdk/shapes:define-structure list-networks-response common-lisp:nil
                                    ((networks :target-type network-list
                                      :member-name "networks")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListNetworksResponse"))

(smithy/sdk/shapes:define-structure list-orders-request common-lisp:nil
                                    ((network-arn :target-type arn :required
                                      common-lisp:t :member-name "networkArn")
                                     (start-token :target-type pagination-token
                                      :member-name "startToken")
                                     (max-results :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxResults")
                                     (filters :target-type order-filters
                                      :member-name "filters"))
                                    (:shape-name "ListOrdersRequest"))

(smithy/sdk/shapes:define-structure list-orders-response common-lisp:nil
                                    ((orders :target-type order-list
                                      :member-name "orders")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListOrdersResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure name-value-pair common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "value"))
                                    (:shape-name "NameValuePair"))

(smithy/sdk/shapes:define-list name-value-pairs :member name-value-pair)

(smithy/sdk/shapes:define-structure network common-lisp:nil
                                    ((network-arn :target-type arn :required
                                      common-lisp:t :member-name "networkArn")
                                     (network-name :target-type name :required
                                      common-lisp:t :member-name "networkName")
                                     (description :target-type description
                                      :member-name "description")
                                     (status :target-type network-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt"))
                                    (:shape-name "Network"))

(smithy/sdk/shapes:define-type network-filter-keys
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list network-filter-values :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map network-filters :key network-filter-keys :value
                              network-filter-values)

(smithy/sdk/shapes:define-list network-list :member network)

(smithy/sdk/shapes:define-structure network-resource common-lisp:nil
                                    ((network-resource-arn :target-type arn
                                      :member-name "networkResourceArn")
                                     (description :target-type description
                                      :member-name "description")
                                     (type :target-type network-resource-type
                                      :member-name "type")
                                     (status :target-type
                                      network-resource-status :member-name
                                      "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (vendor :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "vendor")
                                     (model :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "model")
                                     (serial-number :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "serialNumber")
                                     (health :target-type health-status
                                      :member-name "health")
                                     (network-arn :target-type arn :member-name
                                      "networkArn")
                                     (network-site-arn :target-type arn
                                      :member-name "networkSiteArn")
                                     (order-arn :target-type arn :member-name
                                      "orderArn")
                                     (attributes :target-type name-value-pairs
                                      :member-name "attributes")
                                     (position :target-type position
                                      :member-name "position")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (return-information :target-type
                                      return-information :member-name
                                      "returnInformation")
                                     (commitment-information :target-type
                                      commitment-information :member-name
                                      "commitmentInformation"))
                                    (:shape-name "NetworkResource"))

(smithy/sdk/shapes:define-structure network-resource-definition common-lisp:nil
                                    ((type :target-type
                                      network-resource-definition-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (options :target-type options :member-name
                                      "options")
                                     (count :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "count"))
                                    (:shape-name "NetworkResourceDefinition"))

(smithy/sdk/shapes:define-type network-resource-definition-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list network-resource-definitions :member
                               network-resource-definition)

(smithy/sdk/shapes:define-type network-resource-filter-keys
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list network-resource-filter-values :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map network-resource-filters :key
                              network-resource-filter-keys :value
                              network-resource-filter-values)

(smithy/sdk/shapes:define-list network-resource-list :member network-resource)

(smithy/sdk/shapes:define-type network-resource-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type network-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure network-site common-lisp:nil
                                    ((network-site-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "networkSiteArn")
                                     (network-site-name :target-type name
                                      :required common-lisp:t :member-name
                                      "networkSiteName")
                                     (description :target-type description
                                      :member-name "description")
                                     (status :target-type network-site-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (network-arn :target-type arn :required
                                      common-lisp:t :member-name "networkArn")
                                     (pending-plan :target-type site-plan
                                      :member-name "pendingPlan")
                                     (current-plan :target-type site-plan
                                      :member-name "currentPlan")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (availability-zone :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "availabilityZone")
                                     (availability-zone-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "availabilityZoneId"))
                                    (:shape-name "NetworkSite"))

(smithy/sdk/shapes:define-type network-site-filter-keys
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list network-site-filter-values :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map network-site-filters :key
                              network-site-filter-keys :value
                              network-site-filter-values)

(smithy/sdk/shapes:define-list network-site-list :member network-site)

(smithy/sdk/shapes:define-type network-site-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type network-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list options :member name-value-pair)

(smithy/sdk/shapes:define-structure order common-lisp:nil
                                    ((order-arn :target-type arn :member-name
                                      "orderArn")
                                     (shipping-address :target-type address
                                      :member-name "shippingAddress")
                                     (network-arn :target-type arn :member-name
                                      "networkArn")
                                     (network-site-arn :target-type arn
                                      :member-name "networkSiteArn")
                                     (tracking-information :target-type
                                      tracking-information-list :member-name
                                      "trackingInformation")
                                     (acknowledgment-status :target-type
                                      acknowledgment-status :member-name
                                      "acknowledgmentStatus")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (ordered-resources :target-type
                                      ordered-resource-definitions :member-name
                                      "orderedResources"))
                                    (:shape-name "Order"))

(smithy/sdk/shapes:define-type order-filter-keys smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list order-filter-values :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map order-filters :key order-filter-keys :value
                              order-filter-values)

(smithy/sdk/shapes:define-list order-list :member order)

(smithy/sdk/shapes:define-structure ordered-resource-definition common-lisp:nil
                                    ((type :target-type
                                      network-resource-definition-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (count :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "count")
                                     (commitment-configuration :target-type
                                      commitment-configuration :member-name
                                      "commitmentConfiguration"))
                                    (:shape-name "OrderedResourceDefinition"))

(smithy/sdk/shapes:define-list ordered-resource-definitions :member
                               ordered-resource-definition)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ping-response common-lisp:nil
                                    ((status :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "status"))
                                    (:shape-name "PingResponse"))

(smithy/sdk/shapes:define-structure position common-lisp:nil
                                    ((latitude :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "latitude")
                                     (longitude :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "longitude")
                                     (elevation :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "elevation")
                                     (elevation-unit :target-type
                                      elevation-unit :member-name
                                      "elevationUnit")
                                     (elevation-reference :target-type
                                      elevation-reference :member-name
                                      "elevationReference"))
                                    (:shape-name "Position"))

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
                                (:error-code 404)
                                (:base-class privatenetworks-error))

(smithy/sdk/shapes:define-structure return-information common-lisp:nil
                                    ((shipping-address :target-type address
                                      :member-name "shippingAddress")
                                     (return-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "returnReason")
                                     (replacement-order-arn :target-type arn
                                      :member-name "replacementOrderArn")
                                     (shipping-label :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "shippingLabel"))
                                    (:shape-name "ReturnInformation"))

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure site-plan common-lisp:nil
                                    ((resource-definitions :target-type
                                      network-resource-definitions :member-name
                                      "resourceDefinitions")
                                     (options :target-type options :member-name
                                      "options"))
                                    (:shape-name "SitePlan"))

(smithy/sdk/shapes:define-structure start-network-resource-update-request
                                    common-lisp:nil
                                    ((network-resource-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "networkResourceArn")
                                     (update-type :target-type update-type
                                      :required common-lisp:t :member-name
                                      "updateType")
                                     (shipping-address :target-type address
                                      :member-name "shippingAddress")
                                     (return-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "returnReason")
                                     (commitment-configuration :target-type
                                      commitment-configuration :member-name
                                      "commitmentConfiguration"))
                                    (:shape-name
                                     "StartNetworkResourceUpdateRequest"))

(smithy/sdk/shapes:define-structure start-network-resource-update-response
                                    common-lisp:nil
                                    ((network-resource :target-type
                                      network-resource :member-name
                                      "networkResource"))
                                    (:shape-name
                                     "StartNetworkResourceUpdateResponse"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class privatenetworks-error))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/shapes:define-structure tracking-information common-lisp:nil
                                    ((tracking-number :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "trackingNumber"))
                                    (:shape-name "TrackingInformation"))

(smithy/sdk/shapes:define-list tracking-information-list :member
                               tracking-information)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update-network-site-plan-request
                                    common-lisp:nil
                                    ((network-site-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "networkSiteArn")
                                     (pending-plan :target-type site-plan
                                      :required common-lisp:t :member-name
                                      "pendingPlan")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name
                                     "UpdateNetworkSitePlanRequest"))

(smithy/sdk/shapes:define-structure update-network-site-request common-lisp:nil
                                    ((network-site-arn :target-type arn
                                      :required common-lisp:t :member-name
                                      "networkSiteArn")
                                     (client-token :target-type client-token
                                      :member-name "clientToken")
                                     (description :target-type description
                                      :member-name "description"))
                                    (:shape-name "UpdateNetworkSiteRequest"))

(smithy/sdk/shapes:define-structure update-network-site-response
                                    common-lisp:nil
                                    ((network-site :target-type network-site
                                      :member-name "networkSite")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "UpdateNetworkSiteResponse"))

(smithy/sdk/shapes:define-type update-type smithy/sdk/smithy-types:string)

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
                                (:error-code 400)
                                (:base-class privatenetworks-error))

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

(smithy/sdk/operation:define-operation acknowledge-order-receipt :shape-name
                                       "AcknowledgeOrderReceipt" :input
                                       acknowledge-order-receipt-request
                                       :output
                                       acknowledge-order-receipt-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/orders/acknowledge" :code 200)

(smithy/sdk/operation:define-operation activate-device-identifier :shape-name
                                       "ActivateDeviceIdentifier" :input
                                       activate-device-identifier-request
                                       :output
                                       activate-device-identifier-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/device-identifiers/activate" :code
                                       200)

(smithy/sdk/operation:define-operation activate-network-site :shape-name
                                       "ActivateNetworkSite" :input
                                       activate-network-site-request :output
                                       activate-network-site-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/network-sites/activate" :code 200)

(smithy/sdk/operation:define-operation configure-access-point :shape-name
                                       "ConfigureAccessPoint" :input
                                       configure-access-point-request :output
                                       configure-access-point-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/network-resources/configure" :code
                                       200)

(smithy/sdk/operation:define-operation create-network :shape-name
                                       "CreateNetwork" :input
                                       create-network-request :output
                                       create-network-response :errors
                                       (internal-server-exception
                                        limit-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1/networks" :code
                                       200)

(smithy/sdk/operation:define-operation create-network-site :shape-name
                                       "CreateNetworkSite" :input
                                       create-network-site-request :output
                                       create-network-site-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1/network-sites"
                                       :code 200)

(smithy/sdk/operation:define-operation deactivate-device-identifier :shape-name
                                       "DeactivateDeviceIdentifier" :input
                                       deactivate-device-identifier-request
                                       :output
                                       deactivate-device-identifier-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/device-identifiers/deactivate"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-network :shape-name
                                       "DeleteNetwork" :input
                                       delete-network-request :output
                                       delete-network-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v1/networks/{networkArn}" :code 200)

(smithy/sdk/operation:define-operation delete-network-site :shape-name
                                       "DeleteNetworkSite" :input
                                       delete-network-site-request :output
                                       delete-network-site-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/v1/network-sites/{networkSiteArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-device-identifier :shape-name
                                       "GetDeviceIdentifier" :input
                                       get-device-identifier-request :output
                                       get-device-identifier-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/device-identifiers/{deviceIdentifierArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-network :shape-name "GetNetwork"
                                       :input get-network-request :output
                                       get-network-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/networks/{networkArn}" :code 200)

(smithy/sdk/operation:define-operation get-network-resource :shape-name
                                       "GetNetworkResource" :input
                                       get-network-resource-request :output
                                       get-network-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/network-resources/{networkResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-network-site :shape-name
                                       "GetNetworkSite" :input
                                       get-network-site-request :output
                                       get-network-site-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/network-sites/{networkSiteArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-order :shape-name "GetOrder" :input
                                       get-order-request :output
                                       get-order-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/v1/orders/{orderArn}" :code 200)

(smithy/sdk/operation:define-operation list-device-identifiers :shape-name
                                       "ListDeviceIdentifiers" :input
                                       list-device-identifiers-request :output
                                       list-device-identifiers-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/device-identifiers/list" :code 200)

(smithy/sdk/operation:define-operation list-network-resources :shape-name
                                       "ListNetworkResources" :input
                                       list-network-resources-request :output
                                       list-network-resources-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/network-resources" :code 200)

(smithy/sdk/operation:define-operation list-network-sites :shape-name
                                       "ListNetworkSites" :input
                                       list-network-sites-request :output
                                       list-network-sites-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/network-sites/list" :code 200)

(smithy/sdk/operation:define-operation list-networks :shape-name "ListNetworks"
                                       :input list-networks-request :output
                                       list-networks-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1/networks/list"
                                       :code 200)

(smithy/sdk/operation:define-operation list-orders :shape-name "ListOrders"
                                       :input list-orders-request :output
                                       list-orders-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/v1/orders/list"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation ping :shape-name "Ping" :input
                                       common-lisp:null :output ping-response
                                       :errors (internal-server-exception)
                                       :method "GET" :uri "/ping" :code 200)

(smithy/sdk/operation:define-operation start-network-resource-update
                                       :shape-name "StartNetworkResourceUpdate"
                                       :input
                                       start-network-resource-update-request
                                       :output
                                       start-network-resource-update-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/v1/network-resources/update" :code 200)

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
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-network-site :shape-name
                                       "UpdateNetworkSite" :input
                                       update-network-site-request :output
                                       update-network-site-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v1/network-sites/site" :code 200)

(smithy/sdk/operation:define-operation update-network-site-plan :shape-name
                                       "UpdateNetworkSitePlan" :input
                                       update-network-site-plan-request :output
                                       update-network-site-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/v1/network-sites/plan" :code 200)
