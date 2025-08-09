(uiop/package:define-package #:pira/outposts (:use)
                             (:export #:awsservice-name #:awsservice-name-list
                              #:access-denied-exception #:account-id
                              #:account-id-list #:address #:address-line1
                              #:address-line2 #:address-line3 #:address-type
                              #:arn #:asset-id #:asset-id-input #:asset-id-list
                              #:asset-info #:asset-instance
                              #:asset-instance-capacity-list
                              #:asset-instance-list
                              #:asset-instance-type-capacity
                              #:asset-list-definition #:asset-location
                              #:asset-state #:asset-type #:availability-zone
                              #:availability-zone-id
                              #:availability-zone-id-list
                              #:availability-zone-list #:blocking-instance
                              #:blocking-instances-list #:cidr #:cidrlist
                              #:cancel-capacity-task
                              #:cancel-capacity-task-input
                              #:cancel-capacity-task-output #:cancel-order
                              #:cancel-order-input #:cancel-order-output
                              #:capacity-task-failure
                              #:capacity-task-failure-type #:capacity-task-id
                              #:capacity-task-list #:capacity-task-status
                              #:capacity-task-status-list
                              #:capacity-task-status-reason
                              #:capacity-task-summary #:catalog-item
                              #:catalog-item-class #:catalog-item-class-list
                              #:catalog-item-list-definition
                              #:catalog-item-power-kva #:catalog-item-status
                              #:catalog-item-weight-lbs #:city #:city-list
                              #:compute-asset-state #:compute-attributes
                              #:conflict-exception #:connection-details
                              #:connection-id #:contact-name
                              #:contact-phone-number #:country-code
                              #:country-code-list #:create-order
                              #:create-order-input #:create-order-output
                              #:create-outpost #:create-outpost-input
                              #:create-outpost-output #:create-site
                              #:create-site-input #:create-site-output
                              #:delete-outpost #:delete-outpost-input
                              #:delete-outpost-output #:delete-site
                              #:delete-site-input #:delete-site-output
                              #:device-serial-number #:district-or-county
                              #:dry-run #:ec2capacity
                              #:ec2capacity-list-definition #:ec2family-list
                              #:error-message #:family #:fiber-optic-cable-type
                              #:get-capacity-task #:get-capacity-task-input
                              #:get-capacity-task-output #:get-catalog-item
                              #:get-catalog-item-input
                              #:get-catalog-item-output #:get-connection
                              #:get-connection-request
                              #:get-connection-response #:get-order
                              #:get-order-input #:get-order-output
                              #:get-outpost #:get-outpost-billing-information
                              #:get-outpost-billing-information-input
                              #:get-outpost-billing-information-output
                              #:get-outpost-input #:get-outpost-instance-types
                              #:get-outpost-instance-types-input
                              #:get-outpost-instance-types-output
                              #:get-outpost-output
                              #:get-outpost-supported-instance-types
                              #:get-outpost-supported-instance-types-input
                              #:get-outpost-supported-instance-types-output
                              #:get-site #:get-site-address
                              #:get-site-address-input
                              #:get-site-address-output #:get-site-input
                              #:get-site-output #:host-id #:host-id-list
                              #:iso8601timestamp #:instance-families
                              #:instance-family-name #:instance-id
                              #:instance-id-list #:instance-type
                              #:instance-type-capacity #:instance-type-count
                              #:instance-type-item
                              #:instance-type-list-definition
                              #:instance-type-name #:instances-to-exclude
                              #:internal-server-exception #:life-cycle-status
                              #:life-cycle-status-list #:line-item
                              #:line-item-asset-information
                              #:line-item-asset-information-list #:line-item-id
                              #:line-item-list-definition #:line-item-quantity
                              #:line-item-request
                              #:line-item-request-list-definition
                              #:line-item-status #:line-item-status-counts
                              #:list-asset-instances
                              #:list-asset-instances-input
                              #:list-asset-instances-output #:list-assets
                              #:list-assets-input #:list-assets-output
                              #:list-blocking-instances-for-capacity-task
                              #:list-blocking-instances-for-capacity-task-input
                              #:list-blocking-instances-for-capacity-task-output
                              #:list-capacity-tasks #:list-capacity-tasks-input
                              #:list-capacity-tasks-output #:list-catalog-items
                              #:list-catalog-items-input
                              #:list-catalog-items-output #:list-orders
                              #:list-orders-input #:list-orders-output
                              #:list-outposts #:list-outposts-input
                              #:list-outposts-output #:list-sites
                              #:list-sites-input #:list-sites-output
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:mac-address
                              #:mac-address-list #:max-results1000 #:max-size
                              #:maximum-supported-weight-lbs #:municipality
                              #:network-interface-device-index
                              #:not-found-exception #:nullable-double
                              #:optical-standard #:order #:order-id
                              #:order-id-list #:order-status #:order-summary
                              #:order-summary-list-definition #:order-type
                              #:outpost #:outpost-arn #:outpost-description
                              #:outpost-id #:outpost-id-only
                              #:outpost-identifier #:outpost-instance-type
                              #:outpost-instance-type-list #:outpost-name
                              #:outposts-olaf-service #:owner-id
                              #:payment-option #:payment-term #:postal-code
                              #:power-connector #:power-draw-kva
                              #:power-feed-drop #:power-phase #:quantity
                              #:rack-elevation #:rack-id
                              #:rack-physical-properties
                              #:requested-instance-pools #:resource-type
                              #:server-endpoint
                              #:service-quota-exceeded-exception
                              #:shipment-carrier #:shipment-information #:site
                              #:site-arn #:site-description #:site-id
                              #:site-name #:site-notes #:sku-code
                              #:start-capacity-task #:start-capacity-task-input
                              #:start-capacity-task-output #:start-connection
                              #:start-connection-request
                              #:start-connection-response #:state-or-region
                              #:state-or-region-list #:status-list #:string
                              #:subscription #:subscription-list
                              #:subscription-status #:subscription-type
                              #:supported-hardware-type
                              #:supported-storage-enum #:supported-storage-list
                              #:supported-uplink-gbps
                              #:supported-uplink-gbps-list-definition #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:task-action-on-blocking-instances
                              #:token #:tracking-id #:underlay-ip-address
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:update-outpost
                              #:update-outpost-input #:update-outpost-output
                              #:update-site #:update-site-address
                              #:update-site-address-input
                              #:update-site-address-output #:update-site-input
                              #:update-site-output
                              #:update-site-rack-physical-properties
                              #:update-site-rack-physical-properties-input
                              #:update-site-rack-physical-properties-output
                              #:uplink-count #:uplink-gbps #:vcpucount
                              #:validation-exception #:wire-guard-public-key
                              #:outpost-list-definition #:site-list-definition))
(common-lisp:in-package #:pira/outposts)

(smithy/sdk/service:define-service outposts-olaf-service :shape-name
                                   "OutpostsOlafService" :version "2019-12-03"
                                   :title "AWS Outposts" :traits
                                   '(("aws.api#service" ("sdkId" . "Outposts")
                                      ("arnNamespace" . "outposts")
                                      ("cloudFormationName" . "Outposts")
                                      ("cloudTrailEventSource"
                                       . "outposts.amazonaws.com")
                                      ("endpointPrefix" . "outposts"))
                                     ("aws.auth#sigv4" ("name" . "outposts"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-enum awsservice-name
    common-lisp:nil
  (:aws "AWS")
  (:ec2 "EC2")
  (:elasticache "ELASTICACHE")
  (:elb "ELB")
  (:rds "RDS")
  (:route53 "ROUTE53"))

(smithy/sdk/shapes:define-list awsservice-name-list :member awsservice-name)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list account-id-list :member account-id)

(smithy/sdk/shapes:define-structure address common-lisp:nil
                                    ((contact-name :target-type contact-name
                                      :required common-lisp:t :member-name
                                      "ContactName")
                                     (contact-phone-number :target-type
                                      contact-phone-number :required
                                      common-lisp:t :member-name
                                      "ContactPhoneNumber")
                                     (address-line1 :target-type address-line1
                                      :required common-lisp:t :member-name
                                      "AddressLine1")
                                     (address-line2 :target-type address-line2
                                      :member-name "AddressLine2")
                                     (address-line3 :target-type address-line3
                                      :member-name "AddressLine3")
                                     (city :target-type city :required
                                      common-lisp:t :member-name "City")
                                     (state-or-region :target-type
                                      state-or-region :required common-lisp:t
                                      :member-name "StateOrRegion")
                                     (district-or-county :target-type
                                      district-or-county :member-name
                                      "DistrictOrCounty")
                                     (postal-code :target-type postal-code
                                      :required common-lisp:t :member-name
                                      "PostalCode")
                                     (country-code :target-type country-code
                                      :required common-lisp:t :member-name
                                      "CountryCode")
                                     (municipality :target-type municipality
                                      :member-name "Municipality"))
                                    (:shape-name "Address"))

(smithy/sdk/shapes:define-type address-line1 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type address-line2 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type address-line3 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum address-type
    common-lisp:nil
  (:shipping-address "SHIPPING_ADDRESS")
  (:operating-address "OPERATING_ADDRESS"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type asset-id-input smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list asset-id-list :member asset-id)

(smithy/sdk/shapes:define-structure asset-info common-lisp:nil
                                    ((asset-id :target-type asset-id
                                      :member-name "AssetId")
                                     (rack-id :target-type rack-id :member-name
                                      "RackId")
                                     (asset-type :target-type asset-type
                                      :member-name "AssetType")
                                     (compute-attributes :target-type
                                      compute-attributes :member-name
                                      "ComputeAttributes")
                                     (asset-location :target-type
                                      asset-location :member-name
                                      "AssetLocation"))
                                    (:shape-name "AssetInfo"))

(smithy/sdk/shapes:define-structure asset-instance common-lisp:nil
                                    ((instance-id :target-type instance-id
                                      :member-name "InstanceId")
                                     (instance-type :target-type
                                      outpost-instance-type :member-name
                                      "InstanceType")
                                     (asset-id :target-type asset-id
                                      :member-name "AssetId")
                                     (account-id :target-type account-id
                                      :member-name "AccountId")
                                     (aws-service-name :target-type
                                      awsservice-name :member-name
                                      "AwsServiceName"))
                                    (:shape-name "AssetInstance"))

(smithy/sdk/shapes:define-list asset-instance-capacity-list :member
                               asset-instance-type-capacity)

(smithy/sdk/shapes:define-list asset-instance-list :member asset-instance)

(smithy/sdk/shapes:define-structure asset-instance-type-capacity
                                    common-lisp:nil
                                    ((instance-type :target-type
                                      instance-type-name :required
                                      common-lisp:t :member-name
                                      "InstanceType")
                                     (count :target-type instance-type-count
                                      :required common-lisp:t :member-name
                                      "Count"))
                                    (:shape-name "AssetInstanceTypeCapacity"))

(smithy/sdk/shapes:define-list asset-list-definition :member asset-info)

(smithy/sdk/shapes:define-structure asset-location common-lisp:nil
                                    ((rack-elevation :target-type
                                      rack-elevation :member-name
                                      "RackElevation"))
                                    (:shape-name "AssetLocation"))

(smithy/sdk/shapes:define-enum asset-state
    common-lisp:nil
  (:active "ACTIVE")
  (:retiring "RETIRING")
  (:isolated "ISOLATED"))

(smithy/sdk/shapes:define-enum asset-type
    common-lisp:nil
  (:compute "COMPUTE"))

(smithy/sdk/shapes:define-type availability-zone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type availability-zone-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list availability-zone-id-list :member
                               availability-zone-id)

(smithy/sdk/shapes:define-list availability-zone-list :member availability-zone)

(smithy/sdk/shapes:define-structure blocking-instance common-lisp:nil
                                    ((instance-id :target-type instance-id
                                      :member-name "InstanceId")
                                     (account-id :target-type account-id
                                      :member-name "AccountId")
                                     (aws-service-name :target-type
                                      awsservice-name :member-name
                                      "AwsServiceName"))
                                    (:shape-name "BlockingInstance"))

(smithy/sdk/shapes:define-list blocking-instances-list :member
                               blocking-instance)

(smithy/sdk/shapes:define-type cidr smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list cidrlist :member cidr)

(smithy/sdk/shapes:define-input cancel-capacity-task-input common-lisp:nil
                                ((capacity-task-id :target-type
                                  capacity-task-id :required common-lisp:t
                                  :member-name "CapacityTaskId" :http-label
                                  common-lisp:t)
                                 (outpost-identifier :target-type
                                  outpost-identifier :required common-lisp:t
                                  :member-name "OutpostIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "CancelCapacityTaskInput"))

(smithy/sdk/shapes:define-output cancel-capacity-task-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelCapacityTaskOutput"))

(smithy/sdk/shapes:define-input cancel-order-input common-lisp:nil
                                ((order-id :target-type order-id :required
                                  common-lisp:t :member-name "OrderId"
                                  :http-label common-lisp:t))
                                (:shape-name "CancelOrderInput"))

(smithy/sdk/shapes:define-output cancel-order-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelOrderOutput"))

(smithy/sdk/shapes:define-structure capacity-task-failure common-lisp:nil
                                    ((reason :target-type
                                      capacity-task-status-reason :required
                                      common-lisp:t :member-name "Reason")
                                     (type :target-type
                                      capacity-task-failure-type :member-name
                                      "Type"))
                                    (:shape-name "CapacityTaskFailure"))

(smithy/sdk/shapes:define-enum capacity-task-failure-type
    common-lisp:nil
  (:unsupported-capacity-configuration "UNSUPPORTED_CAPACITY_CONFIGURATION")
  (:unexpected-asset-state "UNEXPECTED_ASSET_STATE")
  (:blocking-instances-not-evacuated "BLOCKING_INSTANCES_NOT_EVACUATED")
  (:internal-server-error "INTERNAL_SERVER_ERROR")
  (:resource-not-found "RESOURCE_NOT_FOUND"))

(smithy/sdk/shapes:define-type capacity-task-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list capacity-task-list :member capacity-task-summary)

(smithy/sdk/shapes:define-enum capacity-task-status
    common-lisp:nil
  (:requested "REQUESTED")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED")
  (:completed "COMPLETED")
  (:waiting-for-evacuation "WAITING_FOR_EVACUATION")
  (:cancellation-in-progress "CANCELLATION_IN_PROGRESS")
  (:cancelled "CANCELLED"))

(smithy/sdk/shapes:define-list capacity-task-status-list :member
                               capacity-task-status)

(smithy/sdk/shapes:define-type capacity-task-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure capacity-task-summary common-lisp:nil
                                    ((capacity-task-id :target-type
                                      capacity-task-id :member-name
                                      "CapacityTaskId")
                                     (outpost-id :target-type outpost-id
                                      :member-name "OutpostId")
                                     (order-id :target-type order-id
                                      :member-name "OrderId")
                                     (asset-id :target-type asset-id
                                      :member-name "AssetId")
                                     (capacity-task-status :target-type
                                      capacity-task-status :member-name
                                      "CapacityTaskStatus")
                                     (creation-date :target-type
                                      iso8601timestamp :member-name
                                      "CreationDate")
                                     (completion-date :target-type
                                      iso8601timestamp :member-name
                                      "CompletionDate")
                                     (last-modified-date :target-type
                                      iso8601timestamp :member-name
                                      "LastModifiedDate"))
                                    (:shape-name "CapacityTaskSummary"))

(smithy/sdk/shapes:define-structure catalog-item common-lisp:nil
                                    ((catalog-item-id :target-type sku-code
                                      :member-name "CatalogItemId")
                                     (item-status :target-type
                                      catalog-item-status :member-name
                                      "ItemStatus")
                                     (ec2capacities :target-type
                                      ec2capacity-list-definition :member-name
                                      "EC2Capacities")
                                     (power-kva :target-type
                                      catalog-item-power-kva :member-name
                                      "PowerKva")
                                     (weight-lbs :target-type
                                      catalog-item-weight-lbs :member-name
                                      "WeightLbs")
                                     (supported-uplink-gbps :target-type
                                      supported-uplink-gbps-list-definition
                                      :member-name "SupportedUplinkGbps")
                                     (supported-storage :target-type
                                      supported-storage-list :member-name
                                      "SupportedStorage"))
                                    (:shape-name "CatalogItem"))

(smithy/sdk/shapes:define-enum catalog-item-class
    common-lisp:nil
  (:rack "RACK")
  (:server "SERVER"))

(smithy/sdk/shapes:define-list catalog-item-class-list :member
                               catalog-item-class)

(smithy/sdk/shapes:define-list catalog-item-list-definition :member
                               catalog-item)

(smithy/sdk/shapes:define-type catalog-item-power-kva
                               smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-enum catalog-item-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:discontinued "DISCONTINUED"))

(smithy/sdk/shapes:define-type catalog-item-weight-lbs
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type city smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list city-list :member city)

(smithy/sdk/shapes:define-enum compute-asset-state
    common-lisp:nil
  (:active "ACTIVE")
  (:isolated "ISOLATED")
  (:retiring "RETIRING"))

(smithy/sdk/shapes:define-structure compute-attributes common-lisp:nil
                                    ((host-id :target-type host-id :member-name
                                      "HostId")
                                     (state :target-type compute-asset-state
                                      :member-name "State")
                                     (instance-families :target-type
                                      instance-families :member-name
                                      "InstanceFamilies")
                                     (instance-type-capacities :target-type
                                      asset-instance-capacity-list :member-name
                                      "InstanceTypeCapacities")
                                     (max-vcpus :target-type vcpucount
                                      :member-name "MaxVcpus"))
                                    (:shape-name "ComputeAttributes"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (resource-id :target-type string :member-name
                                  "ResourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure connection-details common-lisp:nil
                                    ((client-public-key :target-type
                                      wire-guard-public-key :member-name
                                      "ClientPublicKey")
                                     (server-public-key :target-type
                                      wire-guard-public-key :member-name
                                      "ServerPublicKey")
                                     (server-endpoint :target-type
                                      server-endpoint :member-name
                                      "ServerEndpoint")
                                     (client-tunnel-address :target-type cidr
                                      :member-name "ClientTunnelAddress")
                                     (server-tunnel-address :target-type cidr
                                      :member-name "ServerTunnelAddress")
                                     (allowed-ips :target-type cidrlist
                                      :member-name "AllowedIps"))
                                    (:shape-name "ConnectionDetails"))

(smithy/sdk/shapes:define-type connection-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type contact-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type contact-phone-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type country-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list country-code-list :member country-code)

(smithy/sdk/shapes:define-input create-order-input common-lisp:nil
                                ((outpost-identifier :target-type
                                  outpost-identifier :required common-lisp:t
                                  :member-name "OutpostIdentifier")
                                 (line-items :target-type
                                  line-item-request-list-definition :required
                                  common-lisp:t :member-name "LineItems")
                                 (payment-option :target-type payment-option
                                  :required common-lisp:t :member-name
                                  "PaymentOption")
                                 (payment-term :target-type payment-term
                                  :member-name "PaymentTerm"))
                                (:shape-name "CreateOrderInput"))

(smithy/sdk/shapes:define-output create-order-output common-lisp:nil
                                 ((order :target-type order :member-name
                                   "Order"))
                                 (:shape-name "CreateOrderOutput"))

(smithy/sdk/shapes:define-input create-outpost-input common-lisp:nil
                                ((name :target-type outpost-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type outpost-description
                                  :member-name "Description")
                                 (site-id :target-type site-id :required
                                  common-lisp:t :member-name "SiteId")
                                 (availability-zone :target-type
                                  availability-zone :member-name
                                  "AvailabilityZone")
                                 (availability-zone-id :target-type
                                  availability-zone-id :member-name
                                  "AvailabilityZoneId")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (supported-hardware-type :target-type
                                  supported-hardware-type :member-name
                                  "SupportedHardwareType"))
                                (:shape-name "CreateOutpostInput"))

(smithy/sdk/shapes:define-output create-outpost-output common-lisp:nil
                                 ((outpost :target-type outpost :member-name
                                   "Outpost"))
                                 (:shape-name "CreateOutpostOutput"))

(smithy/sdk/shapes:define-input create-site-input common-lisp:nil
                                ((name :target-type site-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type site-description
                                  :member-name "Description")
                                 (notes :target-type site-notes :member-name
                                  "Notes")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (operating-address :target-type address
                                  :member-name "OperatingAddress")
                                 (shipping-address :target-type address
                                  :member-name "ShippingAddress")
                                 (rack-physical-properties :target-type
                                  rack-physical-properties :member-name
                                  "RackPhysicalProperties"))
                                (:shape-name "CreateSiteInput"))

(smithy/sdk/shapes:define-output create-site-output common-lisp:nil
                                 ((site :target-type site :member-name "Site"))
                                 (:shape-name "CreateSiteOutput"))

(smithy/sdk/shapes:define-input delete-outpost-input common-lisp:nil
                                ((outpost-id :target-type outpost-id :required
                                  common-lisp:t :member-name "OutpostId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteOutpostInput"))

(smithy/sdk/shapes:define-output delete-outpost-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteOutpostOutput"))

(smithy/sdk/shapes:define-input delete-site-input common-lisp:nil
                                ((site-id :target-type site-id :required
                                  common-lisp:t :member-name "SiteId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteSiteInput"))

(smithy/sdk/shapes:define-output delete-site-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteSiteOutput"))

(smithy/sdk/shapes:define-type device-serial-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type district-or-county
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dry-run smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure ec2capacity common-lisp:nil
                                    ((family :target-type family :member-name
                                      "Family")
                                     (max-size :target-type max-size
                                      :member-name "MaxSize")
                                     (quantity :target-type quantity
                                      :member-name "Quantity"))
                                    (:shape-name "EC2Capacity"))

(smithy/sdk/shapes:define-list ec2capacity-list-definition :member ec2capacity)

(smithy/sdk/shapes:define-list ec2family-list :member family)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type family smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum fiber-optic-cable-type
    common-lisp:nil
  (:single-mode "SINGLE_MODE")
  (:multi-mode "MULTI_MODE"))

(smithy/sdk/shapes:define-input get-capacity-task-input common-lisp:nil
                                ((capacity-task-id :target-type
                                  capacity-task-id :required common-lisp:t
                                  :member-name "CapacityTaskId" :http-label
                                  common-lisp:t)
                                 (outpost-identifier :target-type
                                  outpost-identifier :required common-lisp:t
                                  :member-name "OutpostIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetCapacityTaskInput"))

(smithy/sdk/shapes:define-output get-capacity-task-output common-lisp:nil
                                 ((capacity-task-id :target-type
                                   capacity-task-id :member-name
                                   "CapacityTaskId")
                                  (outpost-id :target-type outpost-id
                                   :member-name "OutpostId")
                                  (order-id :target-type order-id :member-name
                                   "OrderId")
                                  (asset-id :target-type asset-id :member-name
                                   "AssetId")
                                  (requested-instance-pools :target-type
                                   requested-instance-pools :member-name
                                   "RequestedInstancePools")
                                  (instances-to-exclude :target-type
                                   instances-to-exclude :member-name
                                   "InstancesToExclude")
                                  (dry-run :target-type dry-run :member-name
                                   "DryRun")
                                  (capacity-task-status :target-type
                                   capacity-task-status :member-name
                                   "CapacityTaskStatus")
                                  (failed :target-type capacity-task-failure
                                   :member-name "Failed")
                                  (creation-date :target-type iso8601timestamp
                                   :member-name "CreationDate")
                                  (completion-date :target-type
                                   iso8601timestamp :member-name
                                   "CompletionDate")
                                  (last-modified-date :target-type
                                   iso8601timestamp :member-name
                                   "LastModifiedDate")
                                  (task-action-on-blocking-instances
                                   :target-type
                                   task-action-on-blocking-instances
                                   :member-name
                                   "TaskActionOnBlockingInstances"))
                                 (:shape-name "GetCapacityTaskOutput"))

(smithy/sdk/shapes:define-input get-catalog-item-input common-lisp:nil
                                ((catalog-item-id :target-type sku-code
                                  :required common-lisp:t :member-name
                                  "CatalogItemId" :http-label common-lisp:t))
                                (:shape-name "GetCatalogItemInput"))

(smithy/sdk/shapes:define-output get-catalog-item-output common-lisp:nil
                                 ((catalog-item :target-type catalog-item
                                   :member-name "CatalogItem"))
                                 (:shape-name "GetCatalogItemOutput"))

(smithy/sdk/shapes:define-input get-connection-request common-lisp:nil
                                ((connection-id :target-type connection-id
                                  :required common-lisp:t :member-name
                                  "ConnectionId" :http-label common-lisp:t))
                                (:shape-name "GetConnectionRequest"))

(smithy/sdk/shapes:define-output get-connection-response common-lisp:nil
                                 ((connection-id :target-type connection-id
                                   :member-name "ConnectionId")
                                  (connection-details :target-type
                                   connection-details :member-name
                                   "ConnectionDetails"))
                                 (:shape-name "GetConnectionResponse"))

(smithy/sdk/shapes:define-input get-order-input common-lisp:nil
                                ((order-id :target-type order-id :required
                                  common-lisp:t :member-name "OrderId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetOrderInput"))

(smithy/sdk/shapes:define-output get-order-output common-lisp:nil
                                 ((order :target-type order :member-name
                                   "Order"))
                                 (:shape-name "GetOrderOutput"))

(smithy/sdk/shapes:define-input get-outpost-billing-information-input
                                common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken" :http-query "NextToken")
                                 (max-results :target-type max-results1000
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (outpost-identifier :target-type
                                  outpost-identifier :required common-lisp:t
                                  :member-name "OutpostIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetOutpostBillingInformationInput"))

(smithy/sdk/shapes:define-output get-outpost-billing-information-output
                                 common-lisp:nil
                                 ((next-token :target-type token :member-name
                                   "NextToken")
                                  (subscriptions :target-type subscription-list
                                   :member-name "Subscriptions")
                                  (contract-end-date :target-type string
                                   :member-name "ContractEndDate"))
                                 (:shape-name
                                  "GetOutpostBillingInformationOutput"))

(smithy/sdk/shapes:define-input get-outpost-input common-lisp:nil
                                ((outpost-id :target-type outpost-id :required
                                  common-lisp:t :member-name "OutpostId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetOutpostInput"))

(smithy/sdk/shapes:define-input get-outpost-instance-types-input
                                common-lisp:nil
                                ((outpost-id :target-type outpost-id :required
                                  common-lisp:t :member-name "OutpostId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "NextToken")
                                 (max-results :target-type max-results1000
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "GetOutpostInstanceTypesInput"))

(smithy/sdk/shapes:define-output get-outpost-instance-types-output
                                 common-lisp:nil
                                 ((instance-types :target-type
                                   instance-type-list-definition :member-name
                                   "InstanceTypes")
                                  (next-token :target-type token :member-name
                                   "NextToken")
                                  (outpost-id :target-type outpost-id
                                   :member-name "OutpostId")
                                  (outpost-arn :target-type outpost-arn
                                   :member-name "OutpostArn"))
                                 (:shape-name "GetOutpostInstanceTypesOutput"))

(smithy/sdk/shapes:define-output get-outpost-output common-lisp:nil
                                 ((outpost :target-type outpost :member-name
                                   "Outpost"))
                                 (:shape-name "GetOutpostOutput"))

(smithy/sdk/shapes:define-input get-outpost-supported-instance-types-input
                                common-lisp:nil
                                ((outpost-identifier :target-type
                                  outpost-identifier :required common-lisp:t
                                  :member-name "OutpostIdentifier" :http-label
                                  common-lisp:t)
                                 (order-id :target-type order-id :member-name
                                  "OrderId" :http-query "OrderId")
                                 (asset-id :target-type asset-id-input
                                  :member-name "AssetId" :http-query "AssetId")
                                 (max-results :target-type max-results1000
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name
                                 "GetOutpostSupportedInstanceTypesInput"))

(smithy/sdk/shapes:define-output get-outpost-supported-instance-types-output
                                 common-lisp:nil
                                 ((instance-types :target-type
                                   instance-type-list-definition :member-name
                                   "InstanceTypes")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "GetOutpostSupportedInstanceTypesOutput"))

(smithy/sdk/shapes:define-input get-site-address-input common-lisp:nil
                                ((site-id :target-type site-id :required
                                  common-lisp:t :member-name "SiteId"
                                  :http-label common-lisp:t)
                                 (address-type :target-type address-type
                                  :required common-lisp:t :member-name
                                  "AddressType" :http-query "AddressType"))
                                (:shape-name "GetSiteAddressInput"))

(smithy/sdk/shapes:define-output get-site-address-output common-lisp:nil
                                 ((site-id :target-type site-id :member-name
                                   "SiteId")
                                  (address-type :target-type address-type
                                   :member-name "AddressType")
                                  (address :target-type address :member-name
                                   "Address"))
                                 (:shape-name "GetSiteAddressOutput"))

(smithy/sdk/shapes:define-input get-site-input common-lisp:nil
                                ((site-id :target-type site-id :required
                                  common-lisp:t :member-name "SiteId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSiteInput"))

(smithy/sdk/shapes:define-output get-site-output common-lisp:nil
                                 ((site :target-type site :member-name "Site"))
                                 (:shape-name "GetSiteOutput"))

(smithy/sdk/shapes:define-type host-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list host-id-list :member host-id)

(smithy/sdk/shapes:define-type iso8601timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list instance-families :member instance-family-name)

(smithy/sdk/shapes:define-type instance-family-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-id-list :member instance-id)

(smithy/sdk/shapes:define-type instance-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure instance-type-capacity common-lisp:nil
                                    ((instance-type :target-type
                                      instance-type-name :required
                                      common-lisp:t :member-name
                                      "InstanceType")
                                     (count :target-type instance-type-count
                                      :required common-lisp:t :member-name
                                      "Count"))
                                    (:shape-name "InstanceTypeCapacity"))

(smithy/sdk/shapes:define-type instance-type-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure instance-type-item common-lisp:nil
                                    ((instance-type :target-type instance-type
                                      :member-name "InstanceType")
                                     (vcpus :target-type vcpucount :member-name
                                      "VCPUs"))
                                    (:shape-name "InstanceTypeItem"))

(smithy/sdk/shapes:define-list instance-type-list-definition :member
                               instance-type-item)

(smithy/sdk/shapes:define-type instance-type-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure instances-to-exclude common-lisp:nil
                                    ((instances :target-type instance-id-list
                                      :member-name "Instances")
                                     (account-ids :target-type account-id-list
                                      :member-name "AccountIds")
                                     (services :target-type
                                      awsservice-name-list :member-name
                                      "Services"))
                                    (:shape-name "InstancesToExclude"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type life-cycle-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list life-cycle-status-list :member life-cycle-status)

(smithy/sdk/shapes:define-structure line-item common-lisp:nil
                                    ((catalog-item-id :target-type sku-code
                                      :member-name "CatalogItemId")
                                     (line-item-id :target-type line-item-id
                                      :member-name "LineItemId")
                                     (quantity :target-type line-item-quantity
                                      :member-name "Quantity")
                                     (status :target-type line-item-status
                                      :member-name "Status")
                                     (shipment-information :target-type
                                      shipment-information :member-name
                                      "ShipmentInformation")
                                     (asset-information-list :target-type
                                      line-item-asset-information-list
                                      :member-name "AssetInformationList")
                                     (previous-line-item-id :target-type
                                      line-item-id :member-name
                                      "PreviousLineItemId")
                                     (previous-order-id :target-type order-id
                                      :member-name "PreviousOrderId"))
                                    (:shape-name "LineItem"))

(smithy/sdk/shapes:define-structure line-item-asset-information common-lisp:nil
                                    ((asset-id :target-type asset-id
                                      :member-name "AssetId")
                                     (mac-address-list :target-type
                                      mac-address-list :member-name
                                      "MacAddressList"))
                                    (:shape-name "LineItemAssetInformation"))

(smithy/sdk/shapes:define-list line-item-asset-information-list :member
                               line-item-asset-information)

(smithy/sdk/shapes:define-type line-item-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list line-item-list-definition :member line-item)

(smithy/sdk/shapes:define-type line-item-quantity
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure line-item-request common-lisp:nil
                                    ((catalog-item-id :target-type sku-code
                                      :member-name "CatalogItemId")
                                     (quantity :target-type line-item-quantity
                                      :member-name "Quantity"))
                                    (:shape-name "LineItemRequest"))

(smithy/sdk/shapes:define-list line-item-request-list-definition :member
                               line-item-request)

(smithy/sdk/shapes:define-enum line-item-status
    common-lisp:nil
  (:preparing "PREPARING")
  (:building "BUILDING")
  (:shipped "SHIPPED")
  (:delivered "DELIVERED")
  (:installing "INSTALLING")
  (:installed "INSTALLED")
  (:error "ERROR")
  (:cancelled "CANCELLED")
  (:replaced "REPLACED"))

(smithy/sdk/shapes:define-map line-item-status-counts :key line-item-status
                              :value line-item-quantity)

(smithy/sdk/shapes:define-input list-asset-instances-input common-lisp:nil
                                ((outpost-identifier :target-type
                                  outpost-identifier :required common-lisp:t
                                  :member-name "OutpostIdentifier" :http-label
                                  common-lisp:t)
                                 (asset-id-filter :target-type asset-id-list
                                  :member-name "AssetIdFilter" :http-query
                                  "AssetIdFilter")
                                 (instance-type-filter :target-type
                                  outpost-instance-type-list :member-name
                                  "InstanceTypeFilter" :http-query
                                  "InstanceTypeFilter")
                                 (account-id-filter :target-type
                                  account-id-list :member-name
                                  "AccountIdFilter" :http-query
                                  "AccountIdFilter")
                                 (aws-service-filter :target-type
                                  awsservice-name-list :member-name
                                  "AwsServiceFilter" :http-query
                                  "AwsServiceFilter")
                                 (max-results :target-type max-results1000
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name "ListAssetInstancesInput"))

(smithy/sdk/shapes:define-output list-asset-instances-output common-lisp:nil
                                 ((asset-instances :target-type
                                   asset-instance-list :member-name
                                   "AssetInstances")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListAssetInstancesOutput"))

(smithy/sdk/shapes:define-input list-assets-input common-lisp:nil
                                ((outpost-identifier :target-type
                                  outpost-identifier :required common-lisp:t
                                  :member-name "OutpostIdentifier" :http-label
                                  common-lisp:t)
                                 (host-id-filter :target-type host-id-list
                                  :member-name "HostIdFilter" :http-query
                                  "HostIdFilter")
                                 (max-results :target-type max-results1000
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "NextToken")
                                 (status-filter :target-type status-list
                                  :member-name "StatusFilter" :http-query
                                  "StatusFilter"))
                                (:shape-name "ListAssetsInput"))

(smithy/sdk/shapes:define-output list-assets-output common-lisp:nil
                                 ((assets :target-type asset-list-definition
                                   :member-name "Assets")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListAssetsOutput"))

(smithy/sdk/shapes:define-input list-blocking-instances-for-capacity-task-input
                                common-lisp:nil
                                ((outpost-identifier :target-type
                                  outpost-identifier :required common-lisp:t
                                  :member-name "OutpostIdentifier" :http-label
                                  common-lisp:t)
                                 (capacity-task-id :target-type
                                  capacity-task-id :required common-lisp:t
                                  :member-name "CapacityTaskId" :http-label
                                  common-lisp:t)
                                 (max-results :target-type max-results1000
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "NextToken"))
                                (:shape-name
                                 "ListBlockingInstancesForCapacityTaskInput"))

(smithy/sdk/shapes:define-output
 list-blocking-instances-for-capacity-task-output common-lisp:nil
 ((blocking-instances :target-type blocking-instances-list :member-name
   "BlockingInstances")
  (next-token :target-type token :member-name "NextToken"))
 (:shape-name "ListBlockingInstancesForCapacityTaskOutput"))

(smithy/sdk/shapes:define-input list-capacity-tasks-input common-lisp:nil
                                ((outpost-identifier-filter :target-type
                                  outpost-identifier :member-name
                                  "OutpostIdentifierFilter" :http-query
                                  "OutpostIdentifierFilter")
                                 (max-results :target-type max-results1000
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "NextToken")
                                 (capacity-task-status-filter :target-type
                                  capacity-task-status-list :member-name
                                  "CapacityTaskStatusFilter" :http-query
                                  "CapacityTaskStatusFilter"))
                                (:shape-name "ListCapacityTasksInput"))

(smithy/sdk/shapes:define-output list-capacity-tasks-output common-lisp:nil
                                 ((capacity-tasks :target-type
                                   capacity-task-list :member-name
                                   "CapacityTasks")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListCapacityTasksOutput"))

(smithy/sdk/shapes:define-input list-catalog-items-input common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken" :http-query "NextToken")
                                 (max-results :target-type max-results1000
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (item-class-filter :target-type
                                  catalog-item-class-list :member-name
                                  "ItemClassFilter" :http-query
                                  "ItemClassFilter")
                                 (supported-storage-filter :target-type
                                  supported-storage-list :member-name
                                  "SupportedStorageFilter" :http-query
                                  "SupportedStorageFilter")
                                 (ec2family-filter :target-type ec2family-list
                                  :member-name "EC2FamilyFilter" :http-query
                                  "EC2FamilyFilter"))
                                (:shape-name "ListCatalogItemsInput"))

(smithy/sdk/shapes:define-output list-catalog-items-output common-lisp:nil
                                 ((catalog-items :target-type
                                   catalog-item-list-definition :member-name
                                   "CatalogItems")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListCatalogItemsOutput"))

(smithy/sdk/shapes:define-input list-orders-input common-lisp:nil
                                ((outpost-identifier-filter :target-type
                                  outpost-identifier :member-name
                                  "OutpostIdentifierFilter" :http-query
                                  "OutpostIdentifierFilter")
                                 (next-token :target-type token :member-name
                                  "NextToken" :http-query "NextToken")
                                 (max-results :target-type max-results1000
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListOrdersInput"))

(smithy/sdk/shapes:define-output list-orders-output common-lisp:nil
                                 ((orders :target-type
                                   order-summary-list-definition :member-name
                                   "Orders")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListOrdersOutput"))

(smithy/sdk/shapes:define-input list-outposts-input common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken" :http-query "NextToken")
                                 (max-results :target-type max-results1000
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (life-cycle-status-filter :target-type
                                  life-cycle-status-list :member-name
                                  "LifeCycleStatusFilter" :http-query
                                  "LifeCycleStatusFilter")
                                 (availability-zone-filter :target-type
                                  availability-zone-list :member-name
                                  "AvailabilityZoneFilter" :http-query
                                  "AvailabilityZoneFilter")
                                 (availability-zone-id-filter :target-type
                                  availability-zone-id-list :member-name
                                  "AvailabilityZoneIdFilter" :http-query
                                  "AvailabilityZoneIdFilter"))
                                (:shape-name "ListOutpostsInput"))

(smithy/sdk/shapes:define-output list-outposts-output common-lisp:nil
                                 ((outposts :target-type
                                   outpost-list-definition :member-name
                                   "Outposts")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListOutpostsOutput"))

(smithy/sdk/shapes:define-input list-sites-input common-lisp:nil
                                ((next-token :target-type token :member-name
                                  "NextToken" :http-query "NextToken")
                                 (max-results :target-type max-results1000
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (operating-address-country-code-filter
                                  :target-type country-code-list :member-name
                                  "OperatingAddressCountryCodeFilter"
                                  :http-query
                                  "OperatingAddressCountryCodeFilter")
                                 (operating-address-state-or-region-filter
                                  :target-type state-or-region-list
                                  :member-name
                                  "OperatingAddressStateOrRegionFilter"
                                  :http-query
                                  "OperatingAddressStateOrRegionFilter")
                                 (operating-address-city-filter :target-type
                                  city-list :member-name
                                  "OperatingAddressCityFilter" :http-query
                                  "OperatingAddressCityFilter"))
                                (:shape-name "ListSitesInput"))

(smithy/sdk/shapes:define-output list-sites-output common-lisp:nil
                                 ((sites :target-type site-list-definition
                                   :member-name "Sites")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListSitesOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type mac-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list mac-address-list :member mac-address)

(smithy/sdk/shapes:define-type max-results1000 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-size smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum maximum-supported-weight-lbs
    common-lisp:nil
  (:no-limit "NO_LIMIT")
  (:max-1400-lbs "MAX_1400_LBS")
  (:max-1600-lbs "MAX_1600_LBS")
  (:max-1800-lbs "MAX_1800_LBS")
  (:max-2000-lbs "MAX_2000_LBS"))

(smithy/sdk/shapes:define-type municipality smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type network-interface-device-index
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type nullable-double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-enum optical-standard
    common-lisp:nil
  (:optic-10gbase-sr "OPTIC_10GBASE_SR")
  (:optic-10gbase-ir "OPTIC_10GBASE_IR")
  (:optic-10gbase-lr "OPTIC_10GBASE_LR")
  (:optic-40gbase-sr "OPTIC_40GBASE_SR")
  (:optic-40gbase-esr "OPTIC_40GBASE_ESR")
  (:optic-40gbase-ir4-lr4l "OPTIC_40GBASE_IR4_LR4L")
  (:optic-40gbase-lr4 "OPTIC_40GBASE_LR4")
  (:optic-100gbase-sr4 "OPTIC_100GBASE_SR4")
  (:optic-100gbase-cwdm4 "OPTIC_100GBASE_CWDM4")
  (:optic-100gbase-lr4 "OPTIC_100GBASE_LR4")
  (:optic-100g-psm4-msa "OPTIC_100G_PSM4_MSA")
  (:optic-1000base-lx "OPTIC_1000BASE_LX")
  (:optic-1000base-sx "OPTIC_1000BASE_SX"))

(smithy/sdk/shapes:define-structure order common-lisp:nil
                                    ((outpost-id :target-type outpost-id-only
                                      :member-name "OutpostId")
                                     (order-id :target-type order-id
                                      :member-name "OrderId")
                                     (status :target-type order-status
                                      :member-name "Status")
                                     (line-items :target-type
                                      line-item-list-definition :member-name
                                      "LineItems")
                                     (payment-option :target-type
                                      payment-option :member-name
                                      "PaymentOption")
                                     (order-submission-date :target-type
                                      iso8601timestamp :member-name
                                      "OrderSubmissionDate")
                                     (order-fulfilled-date :target-type
                                      iso8601timestamp :member-name
                                      "OrderFulfilledDate")
                                     (payment-term :target-type payment-term
                                      :member-name "PaymentTerm")
                                     (order-type :target-type order-type
                                      :member-name "OrderType"))
                                    (:shape-name "Order"))

(smithy/sdk/shapes:define-type order-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list order-id-list :member string)

(smithy/sdk/shapes:define-enum order-status
    common-lisp:nil
  (:received "RECEIVED")
  (:pending "PENDING")
  (:processing "PROCESSING")
  (:installing "INSTALLING")
  (:fulfilled "FULFILLED")
  (:cancelled "CANCELLED")
  (:preparing "PREPARING")
  (:in-progress "IN_PROGRESS")
  (:delivered "DELIVERED")
  (:completed "COMPLETED")
  (:error "ERROR"))

(smithy/sdk/shapes:define-structure order-summary common-lisp:nil
                                    ((outpost-id :target-type outpost-id-only
                                      :member-name "OutpostId")
                                     (order-id :target-type order-id
                                      :member-name "OrderId")
                                     (order-type :target-type order-type
                                      :member-name "OrderType")
                                     (status :target-type order-status
                                      :member-name "Status")
                                     (line-item-counts-by-status :target-type
                                      line-item-status-counts :member-name
                                      "LineItemCountsByStatus")
                                     (order-submission-date :target-type
                                      iso8601timestamp :member-name
                                      "OrderSubmissionDate")
                                     (order-fulfilled-date :target-type
                                      iso8601timestamp :member-name
                                      "OrderFulfilledDate"))
                                    (:shape-name "OrderSummary"))

(smithy/sdk/shapes:define-list order-summary-list-definition :member
                               order-summary)

(smithy/sdk/shapes:define-enum order-type
    common-lisp:nil
  (:outpost "OUTPOST")
  (:replacement "REPLACEMENT"))

(smithy/sdk/shapes:define-structure outpost common-lisp:nil
                                    ((outpost-id :target-type outpost-id
                                      :member-name "OutpostId")
                                     (owner-id :target-type owner-id
                                      :member-name "OwnerId")
                                     (outpost-arn :target-type outpost-arn
                                      :member-name "OutpostArn")
                                     (site-id :target-type site-id :member-name
                                      "SiteId")
                                     (name :target-type outpost-name
                                      :member-name "Name")
                                     (description :target-type
                                      outpost-description :member-name
                                      "Description")
                                     (life-cycle-status :target-type
                                      life-cycle-status :member-name
                                      "LifeCycleStatus")
                                     (availability-zone :target-type
                                      availability-zone :member-name
                                      "AvailabilityZone")
                                     (availability-zone-id :target-type
                                      availability-zone-id :member-name
                                      "AvailabilityZoneId")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (site-arn :target-type site-arn
                                      :member-name "SiteArn")
                                     (supported-hardware-type :target-type
                                      supported-hardware-type :member-name
                                      "SupportedHardwareType"))
                                    (:shape-name "Outpost"))

(smithy/sdk/shapes:define-type outpost-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type outpost-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type outpost-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type outpost-id-only smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type outpost-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type outpost-instance-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list outpost-instance-type-list :member
                               outpost-instance-type)

(smithy/sdk/shapes:define-type outpost-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type owner-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum payment-option
    common-lisp:nil
  (:all-upfront "ALL_UPFRONT")
  (:no-upfront "NO_UPFRONT")
  (:partial-upfront "PARTIAL_UPFRONT"))

(smithy/sdk/shapes:define-enum payment-term
    common-lisp:nil
  (:three-years "THREE_YEARS")
  (:one-year "ONE_YEAR")
  (:five-years "FIVE_YEARS"))

(smithy/sdk/shapes:define-type postal-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum power-connector
    common-lisp:nil
  (:l6-30p "L6_30P")
  (:iec309 "IEC309")
  (:ah530p7w "AH530P7W")
  (:ah532p6w "AH532P6W")
  (:cs8365c "CS8365C"))

(smithy/sdk/shapes:define-enum power-draw-kva
    common-lisp:nil
  (:power-5-kva "POWER_5_KVA")
  (:power-10-kva "POWER_10_KVA")
  (:power-15-kva "POWER_15_KVA")
  (:power-30-kva "POWER_30_KVA"))

(smithy/sdk/shapes:define-enum power-feed-drop
    common-lisp:nil
  (:above-rack "ABOVE_RACK")
  (:below-rack "BELOW_RACK"))

(smithy/sdk/shapes:define-enum power-phase
    common-lisp:nil
  (:single-phase "SINGLE_PHASE")
  (:three-phase "THREE_PHASE"))

(smithy/sdk/shapes:define-type quantity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rack-elevation smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type rack-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rack-physical-properties common-lisp:nil
                                    ((power-draw-kva :target-type
                                      power-draw-kva :member-name
                                      "PowerDrawKva")
                                     (power-phase :target-type power-phase
                                      :member-name "PowerPhase")
                                     (power-connector :target-type
                                      power-connector :member-name
                                      "PowerConnector")
                                     (power-feed-drop :target-type
                                      power-feed-drop :member-name
                                      "PowerFeedDrop")
                                     (uplink-gbps :target-type uplink-gbps
                                      :member-name "UplinkGbps")
                                     (uplink-count :target-type uplink-count
                                      :member-name "UplinkCount")
                                     (fiber-optic-cable-type :target-type
                                      fiber-optic-cable-type :member-name
                                      "FiberOpticCableType")
                                     (optical-standard :target-type
                                      optical-standard :member-name
                                      "OpticalStandard")
                                     (maximum-supported-weight-lbs :target-type
                                      maximum-supported-weight-lbs :member-name
                                      "MaximumSupportedWeightLbs"))
                                    (:shape-name "RackPhysicalProperties"))

(smithy/sdk/shapes:define-list requested-instance-pools :member
                               instance-type-capacity)

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:outpost "OUTPOST")
  (:order "ORDER"))

(smithy/sdk/shapes:define-type server-endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-enum shipment-carrier
    common-lisp:nil
  (:dhl "DHL")
  (:dbs "DBS")
  (:fedex "FEDEX")
  (:ups "UPS")
  (:expeditors "EXPEDITORS"))

(smithy/sdk/shapes:define-structure shipment-information common-lisp:nil
                                    ((shipment-tracking-number :target-type
                                      tracking-id :member-name
                                      "ShipmentTrackingNumber")
                                     (shipment-carrier :target-type
                                      shipment-carrier :member-name
                                      "ShipmentCarrier"))
                                    (:shape-name "ShipmentInformation"))

(smithy/sdk/shapes:define-structure site common-lisp:nil
                                    ((site-id :target-type site-id :member-name
                                      "SiteId")
                                     (account-id :target-type account-id
                                      :member-name "AccountId")
                                     (name :target-type site-name :member-name
                                      "Name")
                                     (description :target-type site-description
                                      :member-name "Description")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (site-arn :target-type site-arn
                                      :member-name "SiteArn")
                                     (notes :target-type site-notes
                                      :member-name "Notes")
                                     (operating-address-country-code
                                      :target-type country-code :member-name
                                      "OperatingAddressCountryCode")
                                     (operating-address-state-or-region
                                      :target-type state-or-region :member-name
                                      "OperatingAddressStateOrRegion")
                                     (operating-address-city :target-type city
                                      :member-name "OperatingAddressCity")
                                     (rack-physical-properties :target-type
                                      rack-physical-properties :member-name
                                      "RackPhysicalProperties"))
                                    (:shape-name "Site"))

(smithy/sdk/shapes:define-type site-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type site-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type site-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type site-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type site-notes smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type sku-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-capacity-task-input common-lisp:nil
                                ((outpost-identifier :target-type
                                  outpost-identifier :required common-lisp:t
                                  :member-name "OutpostIdentifier" :http-label
                                  common-lisp:t)
                                 (order-id :target-type order-id :member-name
                                  "OrderId")
                                 (asset-id :target-type asset-id-input
                                  :member-name "AssetId")
                                 (instance-pools :target-type
                                  requested-instance-pools :required
                                  common-lisp:t :member-name "InstancePools")
                                 (instances-to-exclude :target-type
                                  instances-to-exclude :member-name
                                  "InstancesToExclude")
                                 (dry-run :target-type dry-run :member-name
                                  "DryRun")
                                 (task-action-on-blocking-instances
                                  :target-type
                                  task-action-on-blocking-instances
                                  :member-name
                                  "TaskActionOnBlockingInstances"))
                                (:shape-name "StartCapacityTaskInput"))

(smithy/sdk/shapes:define-output start-capacity-task-output common-lisp:nil
                                 ((capacity-task-id :target-type
                                   capacity-task-id :member-name
                                   "CapacityTaskId")
                                  (outpost-id :target-type outpost-id
                                   :member-name "OutpostId")
                                  (order-id :target-type order-id :member-name
                                   "OrderId")
                                  (asset-id :target-type asset-id :member-name
                                   "AssetId")
                                  (requested-instance-pools :target-type
                                   requested-instance-pools :member-name
                                   "RequestedInstancePools")
                                  (instances-to-exclude :target-type
                                   instances-to-exclude :member-name
                                   "InstancesToExclude")
                                  (dry-run :target-type dry-run :member-name
                                   "DryRun")
                                  (capacity-task-status :target-type
                                   capacity-task-status :member-name
                                   "CapacityTaskStatus")
                                  (failed :target-type capacity-task-failure
                                   :member-name "Failed")
                                  (creation-date :target-type iso8601timestamp
                                   :member-name "CreationDate")
                                  (completion-date :target-type
                                   iso8601timestamp :member-name
                                   "CompletionDate")
                                  (last-modified-date :target-type
                                   iso8601timestamp :member-name
                                   "LastModifiedDate")
                                  (task-action-on-blocking-instances
                                   :target-type
                                   task-action-on-blocking-instances
                                   :member-name
                                   "TaskActionOnBlockingInstances"))
                                 (:shape-name "StartCapacityTaskOutput"))

(smithy/sdk/shapes:define-input start-connection-request common-lisp:nil
                                ((device-serial-number :target-type
                                  device-serial-number :member-name
                                  "DeviceSerialNumber")
                                 (asset-id :target-type asset-id :required
                                  common-lisp:t :member-name "AssetId")
                                 (client-public-key :target-type
                                  wire-guard-public-key :required common-lisp:t
                                  :member-name "ClientPublicKey")
                                 (network-interface-device-index :target-type
                                  network-interface-device-index :required
                                  common-lisp:t :member-name
                                  "NetworkInterfaceDeviceIndex"))
                                (:shape-name "StartConnectionRequest"))

(smithy/sdk/shapes:define-output start-connection-response common-lisp:nil
                                 ((connection-id :target-type connection-id
                                   :member-name "ConnectionId")
                                  (underlay-ip-address :target-type
                                   underlay-ip-address :member-name
                                   "UnderlayIpAddress"))
                                 (:shape-name "StartConnectionResponse"))

(smithy/sdk/shapes:define-type state-or-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list state-or-region-list :member state-or-region)

(smithy/sdk/shapes:define-list status-list :member asset-state)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure subscription common-lisp:nil
                                    ((subscription-id :target-type string
                                      :member-name "SubscriptionId")
                                     (subscription-type :target-type
                                      subscription-type :member-name
                                      "SubscriptionType")
                                     (subscription-status :target-type
                                      subscription-status :member-name
                                      "SubscriptionStatus")
                                     (order-ids :target-type order-id-list
                                      :member-name "OrderIds")
                                     (begin-date :target-type iso8601timestamp
                                      :member-name "BeginDate")
                                     (end-date :target-type iso8601timestamp
                                      :member-name "EndDate")
                                     (monthly-recurring-price :target-type
                                      nullable-double :member-name
                                      "MonthlyRecurringPrice")
                                     (upfront-price :target-type
                                      nullable-double :member-name
                                      "UpfrontPrice"))
                                    (:shape-name "Subscription"))

(smithy/sdk/shapes:define-list subscription-list :member subscription)

(smithy/sdk/shapes:define-enum subscription-status
    common-lisp:nil
  (:active "ACTIVE")
  (:inactive "INACTIVE")
  (:cancelled "CANCELLED"))

(smithy/sdk/shapes:define-enum subscription-type
    common-lisp:nil
  (:original "ORIGINAL")
  (:renewal "RENEWAL")
  (:capacity-increase "CAPACITY_INCREASE"))

(smithy/sdk/shapes:define-enum supported-hardware-type
    common-lisp:nil
  (:rack "RACK")
  (:server "SERVER"))

(smithy/sdk/shapes:define-enum supported-storage-enum
    common-lisp:nil
  (:ebs "EBS")
  (:s3 "S3"))

(smithy/sdk/shapes:define-list supported-storage-list :member
                               supported-storage-enum)

(smithy/sdk/shapes:define-type supported-uplink-gbps
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list supported-uplink-gbps-list-definition :member
                               supported-uplink-gbps)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum task-action-on-blocking-instances
    common-lisp:nil
  (:wait-for-evacuation "WAIT_FOR_EVACUATION")
  (:fail-task "FAIL_TASK"))

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tracking-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type underlay-ip-address
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-outpost-input common-lisp:nil
                                ((outpost-id :target-type outpost-id :required
                                  common-lisp:t :member-name "OutpostId"
                                  :http-label common-lisp:t)
                                 (name :target-type outpost-name :member-name
                                  "Name")
                                 (description :target-type outpost-description
                                  :member-name "Description")
                                 (supported-hardware-type :target-type
                                  supported-hardware-type :member-name
                                  "SupportedHardwareType"))
                                (:shape-name "UpdateOutpostInput"))

(smithy/sdk/shapes:define-output update-outpost-output common-lisp:nil
                                 ((outpost :target-type outpost :member-name
                                   "Outpost"))
                                 (:shape-name "UpdateOutpostOutput"))

(smithy/sdk/shapes:define-input update-site-address-input common-lisp:nil
                                ((site-id :target-type site-id :required
                                  common-lisp:t :member-name "SiteId"
                                  :http-label common-lisp:t)
                                 (address-type :target-type address-type
                                  :required common-lisp:t :member-name
                                  "AddressType")
                                 (address :target-type address :required
                                  common-lisp:t :member-name "Address"))
                                (:shape-name "UpdateSiteAddressInput"))

(smithy/sdk/shapes:define-output update-site-address-output common-lisp:nil
                                 ((address-type :target-type address-type
                                   :member-name "AddressType")
                                  (address :target-type address :member-name
                                   "Address"))
                                 (:shape-name "UpdateSiteAddressOutput"))

(smithy/sdk/shapes:define-input update-site-input common-lisp:nil
                                ((site-id :target-type site-id :required
                                  common-lisp:t :member-name "SiteId"
                                  :http-label common-lisp:t)
                                 (name :target-type site-name :member-name
                                  "Name")
                                 (description :target-type site-description
                                  :member-name "Description")
                                 (notes :target-type site-notes :member-name
                                  "Notes"))
                                (:shape-name "UpdateSiteInput"))

(smithy/sdk/shapes:define-output update-site-output common-lisp:nil
                                 ((site :target-type site :member-name "Site"))
                                 (:shape-name "UpdateSiteOutput"))

(smithy/sdk/shapes:define-input update-site-rack-physical-properties-input
                                common-lisp:nil
                                ((site-id :target-type site-id :required
                                  common-lisp:t :member-name "SiteId"
                                  :http-label common-lisp:t)
                                 (power-draw-kva :target-type power-draw-kva
                                  :member-name "PowerDrawKva")
                                 (power-phase :target-type power-phase
                                  :member-name "PowerPhase")
                                 (power-connector :target-type power-connector
                                  :member-name "PowerConnector")
                                 (power-feed-drop :target-type power-feed-drop
                                  :member-name "PowerFeedDrop")
                                 (uplink-gbps :target-type uplink-gbps
                                  :member-name "UplinkGbps")
                                 (uplink-count :target-type uplink-count
                                  :member-name "UplinkCount")
                                 (fiber-optic-cable-type :target-type
                                  fiber-optic-cable-type :member-name
                                  "FiberOpticCableType")
                                 (optical-standard :target-type
                                  optical-standard :member-name
                                  "OpticalStandard")
                                 (maximum-supported-weight-lbs :target-type
                                  maximum-supported-weight-lbs :member-name
                                  "MaximumSupportedWeightLbs"))
                                (:shape-name
                                 "UpdateSiteRackPhysicalPropertiesInput"))

(smithy/sdk/shapes:define-output update-site-rack-physical-properties-output
                                 common-lisp:nil
                                 ((site :target-type site :member-name "Site"))
                                 (:shape-name
                                  "UpdateSiteRackPhysicalPropertiesOutput"))

(smithy/sdk/shapes:define-enum uplink-count
    common-lisp:nil
  (:uplink-count-1 "UPLINK_COUNT_1")
  (:uplink-count-2 "UPLINK_COUNT_2")
  (:uplink-count-3 "UPLINK_COUNT_3")
  (:uplink-count-4 "UPLINK_COUNT_4")
  (:uplink-count-5 "UPLINK_COUNT_5")
  (:uplink-count-6 "UPLINK_COUNT_6")
  (:uplink-count-7 "UPLINK_COUNT_7")
  (:uplink-count-8 "UPLINK_COUNT_8")
  (:uplink-count-12 "UPLINK_COUNT_12")
  (:uplink-count-16 "UPLINK_COUNT_16"))

(smithy/sdk/shapes:define-enum uplink-gbps
    common-lisp:nil
  (:uplink-1g "UPLINK_1G")
  (:uplink-10g "UPLINK_10G")
  (:uplink-40g "UPLINK_40G")
  (:uplink-100g "UPLINK_100G"))

(smithy/sdk/shapes:define-type vcpucount smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type wire-guard-public-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list outpost-list-definition :member outpost)

(smithy/sdk/shapes:define-list site-list-definition :member site)

(smithy/sdk/operation:define-operation cancel-capacity-task :shape-name
                                       "CancelCapacityTask" :input
                                       cancel-capacity-task-input :output
                                       cancel-capacity-task-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/outposts/{OutpostIdentifier}/capacity/{CapacityTaskId}"
                                       :code 200)

(smithy/sdk/operation:define-operation cancel-order :shape-name "CancelOrder"
                                       :input cancel-order-input :output
                                       cancel-order-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/orders/{OrderId}/cancel" :code 200)

(smithy/sdk/operation:define-operation create-order :shape-name "CreateOrder"
                                       :input create-order-input :output
                                       create-order-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/orders" :code 200)

(smithy/sdk/operation:define-operation create-outpost :shape-name
                                       "CreateOutpost" :input
                                       create-outpost-input :output
                                       create-outpost-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/outposts" :code
                                       200)

(smithy/sdk/operation:define-operation create-site :shape-name "CreateSite"
                                       :input create-site-input :output
                                       create-site-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/sites" :code 200)

(smithy/sdk/operation:define-operation delete-outpost :shape-name
                                       "DeleteOutpost" :input
                                       delete-outpost-input :output
                                       delete-outpost-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/outposts/{OutpostId}" :code 200)

(smithy/sdk/operation:define-operation delete-site :shape-name "DeleteSite"
                                       :input delete-site-input :output
                                       delete-site-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/sites/{SiteId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-capacity-task :shape-name
                                       "GetCapacityTask" :input
                                       get-capacity-task-input :output
                                       get-capacity-task-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/outposts/{OutpostIdentifier}/capacity/{CapacityTaskId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-catalog-item :shape-name
                                       "GetCatalogItem" :input
                                       get-catalog-item-input :output
                                       get-catalog-item-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/catalog/item/{CatalogItemId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-connection :shape-name
                                       "GetConnection" :input
                                       get-connection-request :output
                                       get-connection-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/connections/{ConnectionId}" :code 200)

(smithy/sdk/operation:define-operation get-order :shape-name "GetOrder" :input
                                       get-order-input :output get-order-output
                                       :errors
                                       (internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/orders/{OrderId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-outpost :shape-name "GetOutpost"
                                       :input get-outpost-input :output
                                       get-outpost-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/outposts/{OutpostId}" :code 200)

(smithy/sdk/operation:define-operation get-outpost-billing-information
                                       :shape-name
                                       "GetOutpostBillingInformation" :input
                                       get-outpost-billing-information-input
                                       :output
                                       get-outpost-billing-information-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/outpost/{OutpostIdentifier}/billing-information"
                                       :code 200)

(smithy/sdk/operation:define-operation get-outpost-instance-types :shape-name
                                       "GetOutpostInstanceTypes" :input
                                       get-outpost-instance-types-input :output
                                       get-outpost-instance-types-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/outposts/{OutpostId}/instanceTypes"
                                       :code 200)

(smithy/sdk/operation:define-operation get-outpost-supported-instance-types
                                       :shape-name
                                       "GetOutpostSupportedInstanceTypes"
                                       :input
                                       get-outpost-supported-instance-types-input
                                       :output
                                       get-outpost-supported-instance-types-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/outposts/{OutpostIdentifier}/supportedInstanceTypes"
                                       :code 200)

(smithy/sdk/operation:define-operation get-site :shape-name "GetSite" :input
                                       get-site-input :output get-site-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/sites/{SiteId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-site-address :shape-name
                                       "GetSiteAddress" :input
                                       get-site-address-input :output
                                       get-site-address-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/sites/{SiteId}/address" :code 200)

(smithy/sdk/operation:define-operation list-asset-instances :shape-name
                                       "ListAssetInstances" :input
                                       list-asset-instances-input :output
                                       list-asset-instances-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/outposts/{OutpostIdentifier}/assetInstances"
                                       :code 200)

(smithy/sdk/operation:define-operation list-assets :shape-name "ListAssets"
                                       :input list-assets-input :output
                                       list-assets-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/outposts/{OutpostIdentifier}/assets"
                                       :code 200)

(smithy/sdk/operation:define-operation
 list-blocking-instances-for-capacity-task :shape-name
 "ListBlockingInstancesForCapacityTask" :input
 list-blocking-instances-for-capacity-task-input :output
 list-blocking-instances-for-capacity-task-output :errors
 (access-denied-exception internal-server-exception not-found-exception
  validation-exception)
 :method "GET" :uri
 "/outposts/{OutpostIdentifier}/capacity/{CapacityTaskId}/blockingInstances"
 :code 200)

(smithy/sdk/operation:define-operation list-capacity-tasks :shape-name
                                       "ListCapacityTasks" :input
                                       list-capacity-tasks-input :output
                                       list-capacity-tasks-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/capacity/tasks"
                                       :code 200)

(smithy/sdk/operation:define-operation list-catalog-items :shape-name
                                       "ListCatalogItems" :input
                                       list-catalog-items-input :output
                                       list-catalog-items-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/catalog/items"
                                       :code 200)

(smithy/sdk/operation:define-operation list-orders :shape-name "ListOrders"
                                       :input list-orders-input :output
                                       list-orders-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/list-orders" :code
                                       200)

(smithy/sdk/operation:define-operation list-outposts :shape-name "ListOutposts"
                                       :input list-outposts-input :output
                                       list-outposts-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/outposts" :code 200)

(smithy/sdk/operation:define-operation list-sites :shape-name "ListSites"
                                       :input list-sites-input :output
                                       list-sites-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/sites" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation start-capacity-task :shape-name
                                       "StartCapacityTask" :input
                                       start-capacity-task-input :output
                                       start-capacity-task-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/outposts/{OutpostIdentifier}/capacity"
                                       :code 200)

(smithy/sdk/operation:define-operation start-connection :shape-name
                                       "StartConnection" :input
                                       start-connection-request :output
                                       start-connection-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/connections" :code
                                       200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-outpost :shape-name
                                       "UpdateOutpost" :input
                                       update-outpost-input :output
                                       update-outpost-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/outposts/{OutpostId}" :code 200)

(smithy/sdk/operation:define-operation update-site :shape-name "UpdateSite"
                                       :input update-site-input :output
                                       update-site-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "PATCH" :uri "/sites/{SiteId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-site-address :shape-name
                                       "UpdateSiteAddress" :input
                                       update-site-address-input :output
                                       update-site-address-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/sites/{SiteId}/address" :code 200)

(smithy/sdk/operation:define-operation update-site-rack-physical-properties
                                       :shape-name
                                       "UpdateSiteRackPhysicalProperties"
                                       :input
                                       update-site-rack-physical-properties-input
                                       :output
                                       update-site-rack-physical-properties-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        not-found-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/sites/{SiteId}/rackPhysicalProperties"
                                       :code 200)
