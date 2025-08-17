(uiop/package:define-package #:pira/workspaces-instances (:use)
                             (:export #:arn #:amd-sev-snp-enum
                              #:associate-volume #:auto-recovery-enum
                              #:availability-zone #:bandwidth-weighting-enum
                              #:block-device-mapping-request
                              #:block-device-mappings
                              #:capacity-reservation-preference-enum
                              #:capacity-reservation-specification
                              #:capacity-reservation-target #:client-token
                              #:connection-tracking-specification-request
                              #:cpu-credits-enum #:cpu-options-request
                              #:create-volume #:create-workspace-instance
                              #:credit-specification-request #:delete-volume
                              #:delete-workspace-instance #:description
                              #:device-name #:disassociate-mode-enum
                              #:disassociate-volume #:ec2instance-error
                              #:ec2instance-errors #:ec2managed-instance
                              #:eucmifrontend-apiservice #:ebs-block-device
                              #:ena-srd-specification-request
                              #:ena-srd-udp-specification-request
                              #:enclave-options-request
                              #:get-workspace-instance
                              #:hibernation-options-request #:host-id
                              #:hostname-type-enum #:http-endpoint-enum
                              #:http-protocol-ipv6enum
                              #:http-put-response-hop-limit #:http-tokens-enum
                              #:iam-instance-profile-specification #:image-id
                              #:instance-interruption-behavior-enum
                              #:instance-ipv6address
                              #:instance-maintenance-options-request
                              #:instance-market-options-request
                              #:instance-metadata-options-request
                              #:instance-metadata-tags-enum
                              #:instance-network-interface-specification
                              #:instance-network-performance-options-request
                              #:instance-type #:instance-type-info
                              #:instance-types #:interface-type-enum
                              #:ipv4address #:ipv4prefix
                              #:ipv4prefix-specification-request #:ipv4prefixes
                              #:ipv6address #:ipv6addresses #:ipv6prefix
                              #:ipv6prefix-specification-request #:ipv6prefixes
                              #:kms-key-id #:license-configuration-request
                              #:license-specifications #:list-instance-types
                              #:list-regions #:list-tags-for-resource
                              #:list-workspace-instances
                              #:managed-instance-request #:market-type-enum
                              #:max-results #:network-interface-id
                              #:network-interfaces #:next-token
                              #:non-negative-integer #:placement
                              #:placement-group-id
                              #:private-dns-name-options-request
                              #:private-ip-address-specification
                              #:private-ip-addresses #:provision-state-enum
                              #:provision-states #:region #:region-list
                              #:region-name #:resource-type-enum
                              #:run-instances-monitoring-enabled
                              #:security-group-id #:security-group-ids
                              #:security-group-name #:security-group-names
                              #:snapshot-id #:spot-instance-type-enum
                              #:spot-market-options #:string128 #:string64
                              #:subnet-id #:tag #:tag-key #:tag-key-list
                              #:tag-list #:tag-resource #:tag-specification
                              #:tag-specifications #:tag-value #:tenancy-enum
                              #:untag-resource #:user-data
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:virtual-name
                              #:volume-id #:volume-type-enum
                              #:workspace-instance #:workspace-instance-error
                              #:workspace-instance-errors
                              #:workspace-instance-id #:workspace-instances))
(common-lisp:in-package #:pira/workspaces-instances)

(smithy/sdk/service:define-service eucmifrontend-apiservice :shape-name
                                   "EUCMIFrontendAPIService" :version
                                   "2022-07-26" :title
                                   "Amazon Workspaces Instances" :operations
                                   '(associate-volume create-volume
                                     create-workspace-instance delete-volume
                                     delete-workspace-instance
                                     disassociate-volume get-workspace-instance
                                     list-instance-types list-regions
                                     list-tags-for-resource
                                     list-workspace-instances tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Workspaces Instances")
                                      ("arnNamespace" . "workspaces-instances")
                                      ("cloudFormationName"
                                       . "WorkspacesInstances")
                                      ("cloudTrailEventSource"
                                       . "workspaces-instances.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "workspaces-instances"))
                                     ("aws.endpoints#dualStackOnlyEndpoints")
                                     ("aws.endpoints#standardRegionalEndpoints")
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access based on the tags associated with the resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access based on the tags that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access based on the tag keys that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys")))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-enum amd-sev-snp-enum
    common-lisp:nil
  (:enabled "enabled")
  (:disabled "disabled"))

(smithy/sdk/shapes:define-input associate-volume-request common-lisp:nil
                                ((workspace-instance-id :target-type
                                  workspace-instance-id :required common-lisp:t
                                  :member-name "WorkspaceInstanceId")
                                 (volume-id :target-type volume-id :required
                                  common-lisp:t :member-name "VolumeId")
                                 (device :target-type device-name :required
                                  common-lisp:t :member-name "Device"))
                                (:shape-name "AssociateVolumeRequest"))

(smithy/sdk/shapes:define-output associate-volume-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AssociateVolumeResponse"))

(smithy/sdk/shapes:define-enum auto-recovery-enum
    common-lisp:nil
  (:disabled "disabled")
  (:default "default"))

(smithy/sdk/shapes:define-type availability-zone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum bandwidth-weighting-enum
    common-lisp:nil
  (:default "default")
  (:vpc-1 "vpc-1")
  (:ebs-1 "ebs-1"))

(smithy/sdk/shapes:define-structure block-device-mapping-request
                                    common-lisp:nil
                                    ((device-name :target-type device-name
                                      :member-name "DeviceName")
                                     (ebs :target-type ebs-block-device
                                      :member-name "Ebs")
                                     (no-device :target-type device-name
                                      :member-name "NoDevice")
                                     (virtual-name :target-type virtual-name
                                      :member-name "VirtualName"))
                                    (:shape-name "BlockDeviceMappingRequest"))

(smithy/sdk/shapes:define-list block-device-mappings :member
                               block-device-mapping-request)

(smithy/sdk/shapes:define-enum capacity-reservation-preference-enum
    common-lisp:nil
  (:capacity-reservations-only "capacity-reservations-only")
  (:open "open")
  (:none "none"))

(smithy/sdk/shapes:define-structure capacity-reservation-specification
                                    common-lisp:nil
                                    ((capacity-reservation-preference
                                      :target-type
                                      capacity-reservation-preference-enum
                                      :member-name
                                      "CapacityReservationPreference")
                                     (capacity-reservation-target :target-type
                                      capacity-reservation-target :member-name
                                      "CapacityReservationTarget"))
                                    (:shape-name
                                     "CapacityReservationSpecification"))

(smithy/sdk/shapes:define-structure capacity-reservation-target common-lisp:nil
                                    ((capacity-reservation-id :target-type
                                      string128 :member-name
                                      "CapacityReservationId")
                                     (capacity-reservation-resource-group-arn
                                      :target-type arn :member-name
                                      "CapacityReservationResourceGroupArn"))
                                    (:shape-name "CapacityReservationTarget"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure connection-tracking-specification-request
                                    common-lisp:nil
                                    ((tcp-established-timeout :target-type
                                      non-negative-integer :member-name
                                      "TcpEstablishedTimeout")
                                     (udp-stream-timeout :target-type
                                      non-negative-integer :member-name
                                      "UdpStreamTimeout")
                                     (udp-timeout :target-type
                                      non-negative-integer :member-name
                                      "UdpTimeout"))
                                    (:shape-name
                                     "ConnectionTrackingSpecificationRequest"))

(smithy/sdk/shapes:define-enum cpu-credits-enum
    common-lisp:nil
  (:standard "standard")
  (:unlimited "unlimited"))

(smithy/sdk/shapes:define-structure cpu-options-request common-lisp:nil
                                    ((amd-sev-snp :target-type amd-sev-snp-enum
                                      :member-name "AmdSevSnp")
                                     (core-count :target-type
                                      non-negative-integer :member-name
                                      "CoreCount")
                                     (threads-per-core :target-type
                                      non-negative-integer :member-name
                                      "ThreadsPerCore"))
                                    (:shape-name "CpuOptionsRequest"))

(smithy/sdk/shapes:define-input create-volume-request common-lisp:nil
                                ((availability-zone :target-type string64
                                  :required common-lisp:t :member-name
                                  "AvailabilityZone")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (encrypted :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "Encrypted")
                                 (iops :target-type non-negative-integer
                                  :member-name "Iops")
                                 (kms-key-id :target-type kms-key-id
                                  :member-name "KmsKeyId")
                                 (size-in-gb :target-type non-negative-integer
                                  :member-name "SizeInGB")
                                 (snapshot-id :target-type snapshot-id
                                  :member-name "SnapshotId")
                                 (tag-specifications :target-type
                                  tag-specifications :member-name
                                  "TagSpecifications")
                                 (throughput :target-type non-negative-integer
                                  :member-name "Throughput")
                                 (volume-type :target-type volume-type-enum
                                  :member-name "VolumeType"))
                                (:shape-name "CreateVolumeRequest"))

(smithy/sdk/shapes:define-output create-volume-response common-lisp:nil
                                 ((volume-id :target-type volume-id
                                   :member-name "VolumeId"))
                                 (:shape-name "CreateVolumeResponse"))

(smithy/sdk/shapes:define-input create-workspace-instance-request
                                common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (managed-instance :target-type
                                  managed-instance-request :required
                                  common-lisp:t :member-name
                                  "ManagedInstance"))
                                (:shape-name "CreateWorkspaceInstanceRequest"))

(smithy/sdk/shapes:define-output create-workspace-instance-response
                                 common-lisp:nil
                                 ((workspace-instance-id :target-type
                                   workspace-instance-id :member-name
                                   "WorkspaceInstanceId"))
                                 (:shape-name
                                  "CreateWorkspaceInstanceResponse"))

(smithy/sdk/shapes:define-structure credit-specification-request
                                    common-lisp:nil
                                    ((cpu-credits :target-type cpu-credits-enum
                                      :member-name "CpuCredits"))
                                    (:shape-name "CreditSpecificationRequest"))

(smithy/sdk/shapes:define-input delete-volume-request common-lisp:nil
                                ((volume-id :target-type volume-id :required
                                  common-lisp:t :member-name "VolumeId"))
                                (:shape-name "DeleteVolumeRequest"))

(smithy/sdk/shapes:define-output delete-volume-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteVolumeResponse"))

(smithy/sdk/shapes:define-input delete-workspace-instance-request
                                common-lisp:nil
                                ((workspace-instance-id :target-type
                                  workspace-instance-id :required common-lisp:t
                                  :member-name "WorkspaceInstanceId"))
                                (:shape-name "DeleteWorkspaceInstanceRequest"))

(smithy/sdk/shapes:define-output delete-workspace-instance-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteWorkspaceInstanceResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type device-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum disassociate-mode-enum
    common-lisp:nil
  (:force "FORCE")
  (:no-force "NO_FORCE"))

(smithy/sdk/shapes:define-input disassociate-volume-request common-lisp:nil
                                ((workspace-instance-id :target-type
                                  workspace-instance-id :required common-lisp:t
                                  :member-name "WorkspaceInstanceId")
                                 (volume-id :target-type volume-id :required
                                  common-lisp:t :member-name "VolumeId")
                                 (device :target-type device-name :member-name
                                  "Device")
                                 (disassociate-mode :target-type
                                  disassociate-mode-enum :member-name
                                  "DisassociateMode"))
                                (:shape-name "DisassociateVolumeRequest"))

(smithy/sdk/shapes:define-output disassociate-volume-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DisassociateVolumeResponse"))

(smithy/sdk/shapes:define-structure ec2instance-error common-lisp:nil
                                    ((ec2error-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "EC2ErrorCode")
                                     (ec2exception-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "EC2ExceptionType")
                                     (ec2error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "EC2ErrorMessage"))
                                    (:shape-name "EC2InstanceError"))

(smithy/sdk/shapes:define-list ec2instance-errors :member ec2instance-error)

(smithy/sdk/shapes:define-structure ec2managed-instance common-lisp:nil
                                    ((instance-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "InstanceId"))
                                    (:shape-name "EC2ManagedInstance"))

(smithy/sdk/shapes:define-structure ebs-block-device common-lisp:nil
                                    ((volume-type :target-type volume-type-enum
                                      :member-name "VolumeType")
                                     (encrypted :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Encrypted")
                                     (kms-key-id :target-type kms-key-id
                                      :member-name "KmsKeyId")
                                     (iops :target-type non-negative-integer
                                      :member-name "Iops")
                                     (throughput :target-type
                                      non-negative-integer :member-name
                                      "Throughput")
                                     (volume-size :target-type
                                      non-negative-integer :member-name
                                      "VolumeSize"))
                                    (:shape-name "EbsBlockDevice"))

(smithy/sdk/shapes:define-structure ena-srd-specification-request
                                    common-lisp:nil
                                    ((ena-srd-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "EnaSrdEnabled")
                                     (ena-srd-udp-specification :target-type
                                      ena-srd-udp-specification-request
                                      :member-name "EnaSrdUdpSpecification"))
                                    (:shape-name "EnaSrdSpecificationRequest"))

(smithy/sdk/shapes:define-structure ena-srd-udp-specification-request
                                    common-lisp:nil
                                    ((ena-srd-udp-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "EnaSrdUdpEnabled"))
                                    (:shape-name
                                     "EnaSrdUdpSpecificationRequest"))

(smithy/sdk/shapes:define-structure enclave-options-request common-lisp:nil
                                    ((enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Enabled"))
                                    (:shape-name "EnclaveOptionsRequest"))

(smithy/sdk/shapes:define-input get-workspace-instance-request common-lisp:nil
                                ((workspace-instance-id :target-type
                                  workspace-instance-id :required common-lisp:t
                                  :member-name "WorkspaceInstanceId"))
                                (:shape-name "GetWorkspaceInstanceRequest"))

(smithy/sdk/shapes:define-output get-workspace-instance-response
                                 common-lisp:nil
                                 ((workspace-instance-errors :target-type
                                   workspace-instance-errors :member-name
                                   "WorkspaceInstanceErrors")
                                  (ec2instance-errors :target-type
                                   ec2instance-errors :member-name
                                   "EC2InstanceErrors")
                                  (provision-state :target-type
                                   provision-state-enum :member-name
                                   "ProvisionState")
                                  (workspace-instance-id :target-type
                                   workspace-instance-id :member-name
                                   "WorkspaceInstanceId")
                                  (ec2managed-instance :target-type
                                   ec2managed-instance :member-name
                                   "EC2ManagedInstance"))
                                 (:shape-name "GetWorkspaceInstanceResponse"))

(smithy/sdk/shapes:define-structure hibernation-options-request common-lisp:nil
                                    ((configured :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Configured"))
                                    (:shape-name "HibernationOptionsRequest"))

(smithy/sdk/shapes:define-type host-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum hostname-type-enum
    common-lisp:nil
  (:ip-name "ip-name")
  (:resource-name "resource-name"))

(smithy/sdk/shapes:define-enum http-endpoint-enum
    common-lisp:nil
  (:enabled "enabled")
  (:disabled "disabled"))

(smithy/sdk/shapes:define-enum http-protocol-ipv6enum
    common-lisp:nil
  (:enabled "enabled")
  (:disabled "disabled"))

(smithy/sdk/shapes:define-type http-put-response-hop-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum http-tokens-enum
    common-lisp:nil
  (:optional "optional")
  (:required "required"))

(smithy/sdk/shapes:define-structure iam-instance-profile-specification
                                    common-lisp:nil
                                    ((arn :target-type arn :member-name "Arn")
                                     (name :target-type string64 :member-name
                                      "Name"))
                                    (:shape-name
                                     "IamInstanceProfileSpecification"))

(smithy/sdk/shapes:define-type image-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum instance-interruption-behavior-enum
    common-lisp:nil
  (:hibernate "hibernate")
  (:stop "stop"))

(smithy/sdk/shapes:define-structure instance-ipv6address common-lisp:nil
                                    ((ipv6address :target-type ipv6address
                                      :member-name "Ipv6Address")
                                     (is-primary-ipv6 :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "IsPrimaryIpv6"))
                                    (:shape-name "InstanceIpv6Address"))

(smithy/sdk/shapes:define-structure instance-maintenance-options-request
                                    common-lisp:nil
                                    ((auto-recovery :target-type
                                      auto-recovery-enum :member-name
                                      "AutoRecovery"))
                                    (:shape-name
                                     "InstanceMaintenanceOptionsRequest"))

(smithy/sdk/shapes:define-structure instance-market-options-request
                                    common-lisp:nil
                                    ((market-type :target-type market-type-enum
                                      :member-name "MarketType")
                                     (spot-options :target-type
                                      spot-market-options :member-name
                                      "SpotOptions"))
                                    (:shape-name
                                     "InstanceMarketOptionsRequest"))

(smithy/sdk/shapes:define-structure instance-metadata-options-request
                                    common-lisp:nil
                                    ((http-endpoint :target-type
                                      http-endpoint-enum :member-name
                                      "HttpEndpoint")
                                     (http-protocol-ipv6 :target-type
                                      http-protocol-ipv6enum :member-name
                                      "HttpProtocolIpv6")
                                     (http-put-response-hop-limit :target-type
                                      http-put-response-hop-limit :member-name
                                      "HttpPutResponseHopLimit")
                                     (http-tokens :target-type http-tokens-enum
                                      :member-name "HttpTokens")
                                     (instance-metadata-tags :target-type
                                      instance-metadata-tags-enum :member-name
                                      "InstanceMetadataTags"))
                                    (:shape-name
                                     "InstanceMetadataOptionsRequest"))

(smithy/sdk/shapes:define-enum instance-metadata-tags-enum
    common-lisp:nil
  (:enabled "enabled")
  (:disabled "disabled"))

(smithy/sdk/shapes:define-structure instance-network-interface-specification
                                    common-lisp:nil
                                    ((associate-carrier-ip-address :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AssociateCarrierIpAddress")
                                     (associate-public-ip-address :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AssociatePublicIpAddress")
                                     (connection-tracking-specification
                                      :target-type
                                      connection-tracking-specification-request
                                      :member-name
                                      "ConnectionTrackingSpecification")
                                     (description :target-type description
                                      :member-name "Description")
                                     (device-index :target-type
                                      non-negative-integer :member-name
                                      "DeviceIndex")
                                     (ena-srd-specification :target-type
                                      ena-srd-specification-request
                                      :member-name "EnaSrdSpecification")
                                     (interface-type :target-type
                                      interface-type-enum :member-name
                                      "InterfaceType")
                                     (ipv4prefixes :target-type ipv4prefixes
                                      :member-name "Ipv4Prefixes")
                                     (ipv4prefix-count :target-type
                                      non-negative-integer :member-name
                                      "Ipv4PrefixCount")
                                     (ipv6address-count :target-type
                                      non-negative-integer :member-name
                                      "Ipv6AddressCount")
                                     (ipv6addresses :target-type ipv6addresses
                                      :member-name "Ipv6Addresses")
                                     (ipv6prefixes :target-type ipv6prefixes
                                      :member-name "Ipv6Prefixes")
                                     (ipv6prefix-count :target-type
                                      non-negative-integer :member-name
                                      "Ipv6PrefixCount")
                                     (network-card-index :target-type
                                      non-negative-integer :member-name
                                      "NetworkCardIndex")
                                     (network-interface-id :target-type
                                      network-interface-id :member-name
                                      "NetworkInterfaceId")
                                     (primary-ipv6 :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "PrimaryIpv6")
                                     (private-ip-address :target-type
                                      ipv4address :member-name
                                      "PrivateIpAddress")
                                     (private-ip-addresses :target-type
                                      private-ip-addresses :member-name
                                      "PrivateIpAddresses")
                                     (secondary-private-ip-address-count
                                      :target-type non-negative-integer
                                      :member-name
                                      "SecondaryPrivateIpAddressCount")
                                     (groups :target-type security-group-ids
                                      :member-name "Groups")
                                     (subnet-id :target-type subnet-id
                                      :member-name "SubnetId"))
                                    (:shape-name
                                     "InstanceNetworkInterfaceSpecification"))

(smithy/sdk/shapes:define-structure
 instance-network-performance-options-request common-lisp:nil
 ((bandwidth-weighting :target-type bandwidth-weighting-enum :member-name
   "BandwidthWeighting"))
 (:shape-name "InstanceNetworkPerformanceOptionsRequest"))

(smithy/sdk/shapes:define-type instance-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure instance-type-info common-lisp:nil
                                    ((instance-type :target-type instance-type
                                      :member-name "InstanceType"))
                                    (:shape-name "InstanceTypeInfo"))

(smithy/sdk/shapes:define-list instance-types :member instance-type-info)

(smithy/sdk/shapes:define-enum interface-type-enum
    common-lisp:nil
  (:interface "interface")
  (:efa "efa")
  (:efa-only "efa-only"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type ipv4address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ipv4prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ipv4prefix-specification-request
                                    common-lisp:nil
                                    ((ipv4prefix :target-type ipv4prefix
                                      :member-name "Ipv4Prefix"))
                                    (:shape-name
                                     "Ipv4PrefixSpecificationRequest"))

(smithy/sdk/shapes:define-list ipv4prefixes :member
                               ipv4prefix-specification-request)

(smithy/sdk/shapes:define-type ipv6address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ipv6addresses :member instance-ipv6address)

(smithy/sdk/shapes:define-type ipv6prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ipv6prefix-specification-request
                                    common-lisp:nil
                                    ((ipv6prefix :target-type ipv6prefix
                                      :member-name "Ipv6Prefix"))
                                    (:shape-name
                                     "Ipv6PrefixSpecificationRequest"))

(smithy/sdk/shapes:define-list ipv6prefixes :member
                               ipv6prefix-specification-request)

(smithy/sdk/shapes:define-type kms-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure license-configuration-request
                                    common-lisp:nil
                                    ((license-configuration-arn :target-type
                                      arn :member-name
                                      "LicenseConfigurationArn"))
                                    (:shape-name "LicenseConfigurationRequest"))

(smithy/sdk/shapes:define-list license-specifications :member
                               license-configuration-request)

(smithy/sdk/shapes:define-input list-instance-types-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListInstanceTypesRequest"))

(smithy/sdk/shapes:define-output list-instance-types-response common-lisp:nil
                                 ((instance-types :target-type instance-types
                                   :required common-lisp:t :member-name
                                   "InstanceTypes")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListInstanceTypesResponse"))

(smithy/sdk/shapes:define-input list-regions-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListRegionsRequest"))

(smithy/sdk/shapes:define-output list-regions-response common-lisp:nil
                                 ((regions :target-type region-list :required
                                   common-lisp:t :member-name "Regions")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListRegionsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((workspace-instance-id :target-type
                                  workspace-instance-id :required common-lisp:t
                                  :member-name "WorkspaceInstanceId"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-workspace-instances-request
                                common-lisp:nil
                                ((provision-states :target-type
                                  provision-states :member-name
                                  "ProvisionStates")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListWorkspaceInstancesRequest"))

(smithy/sdk/shapes:define-output list-workspace-instances-response
                                 common-lisp:nil
                                 ((workspace-instances :target-type
                                   workspace-instances :required common-lisp:t
                                   :member-name "WorkspaceInstances")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListWorkspaceInstancesResponse"))

(smithy/sdk/shapes:define-structure managed-instance-request common-lisp:nil
                                    ((block-device-mappings :target-type
                                      block-device-mappings :member-name
                                      "BlockDeviceMappings")
                                     (capacity-reservation-specification
                                      :target-type
                                      capacity-reservation-specification
                                      :member-name
                                      "CapacityReservationSpecification")
                                     (cpu-options :target-type
                                      cpu-options-request :member-name
                                      "CpuOptions")
                                     (credit-specification :target-type
                                      credit-specification-request :member-name
                                      "CreditSpecification")
                                     (disable-api-stop :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "DisableApiStop")
                                     (ebs-optimized :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "EbsOptimized")
                                     (enable-primary-ipv6 :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "EnablePrimaryIpv6")
                                     (enclave-options :target-type
                                      enclave-options-request :member-name
                                      "EnclaveOptions")
                                     (hibernation-options :target-type
                                      hibernation-options-request :member-name
                                      "HibernationOptions")
                                     (iam-instance-profile :target-type
                                      iam-instance-profile-specification
                                      :member-name "IamInstanceProfile")
                                     (image-id :target-type image-id
                                      :member-name "ImageId")
                                     (instance-market-options :target-type
                                      instance-market-options-request
                                      :member-name "InstanceMarketOptions")
                                     (instance-type :target-type instance-type
                                      :member-name "InstanceType")
                                     (ipv6addresses :target-type ipv6addresses
                                      :member-name "Ipv6Addresses")
                                     (ipv6address-count :target-type
                                      non-negative-integer :member-name
                                      "Ipv6AddressCount")
                                     (kernel-id :target-type string128
                                      :member-name "KernelId")
                                     (key-name :target-type string64
                                      :member-name "KeyName")
                                     (license-specifications :target-type
                                      license-specifications :member-name
                                      "LicenseSpecifications")
                                     (maintenance-options :target-type
                                      instance-maintenance-options-request
                                      :member-name "MaintenanceOptions")
                                     (metadata-options :target-type
                                      instance-metadata-options-request
                                      :member-name "MetadataOptions")
                                     (monitoring :target-type
                                      run-instances-monitoring-enabled
                                      :member-name "Monitoring")
                                     (network-interfaces :target-type
                                      network-interfaces :member-name
                                      "NetworkInterfaces")
                                     (network-performance-options :target-type
                                      instance-network-performance-options-request
                                      :member-name "NetworkPerformanceOptions")
                                     (placement :target-type placement
                                      :member-name "Placement")
                                     (private-dns-name-options :target-type
                                      private-dns-name-options-request
                                      :member-name "PrivateDnsNameOptions")
                                     (private-ip-address :target-type
                                      ipv4address :member-name
                                      "PrivateIpAddress")
                                     (ramdisk-id :target-type string128
                                      :member-name "RamdiskId")
                                     (security-group-ids :target-type
                                      security-group-ids :member-name
                                      "SecurityGroupIds")
                                     (security-groups :target-type
                                      security-group-names :member-name
                                      "SecurityGroups")
                                     (subnet-id :target-type subnet-id
                                      :member-name "SubnetId")
                                     (tag-specifications :target-type
                                      tag-specifications :member-name
                                      "TagSpecifications")
                                     (user-data :target-type user-data
                                      :member-name "UserData"))
                                    (:shape-name "ManagedInstanceRequest"))

(smithy/sdk/shapes:define-enum market-type-enum
    common-lisp:nil
  (:spot "spot")
  (:capacity-block "capacity-block"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type network-interface-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list network-interfaces :member
                               instance-network-interface-specification)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-negative-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure placement common-lisp:nil
                                    ((affinity :target-type string64
                                      :member-name "Affinity")
                                     (availability-zone :target-type
                                      availability-zone :member-name
                                      "AvailabilityZone")
                                     (group-id :target-type placement-group-id
                                      :member-name "GroupId")
                                     (group-name :target-type string64
                                      :member-name "GroupName")
                                     (host-id :target-type host-id :member-name
                                      "HostId")
                                     (host-resource-group-arn :target-type arn
                                      :member-name "HostResourceGroupArn")
                                     (partition-number :target-type
                                      non-negative-integer :member-name
                                      "PartitionNumber")
                                     (tenancy :target-type tenancy-enum
                                      :member-name "Tenancy"))
                                    (:shape-name "Placement"))

(smithy/sdk/shapes:define-type placement-group-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure private-dns-name-options-request
                                    common-lisp:nil
                                    ((hostname-type :target-type
                                      hostname-type-enum :member-name
                                      "HostnameType")
                                     (enable-resource-name-dns-arecord
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "EnableResourceNameDnsARecord")
                                     (enable-resource-name-dns-aaaarecord
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "EnableResourceNameDnsAAAARecord"))
                                    (:shape-name
                                     "PrivateDnsNameOptionsRequest"))

(smithy/sdk/shapes:define-structure private-ip-address-specification
                                    common-lisp:nil
                                    ((primary :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Primary")
                                     (private-ip-address :target-type
                                      ipv4address :member-name
                                      "PrivateIpAddress"))
                                    (:shape-name
                                     "PrivateIpAddressSpecification"))

(smithy/sdk/shapes:define-list private-ip-addresses :member
                               private-ip-address-specification)

(smithy/sdk/shapes:define-enum provision-state-enum
    common-lisp:nil
  (:allocating "ALLOCATING")
  (:allocated "ALLOCATED")
  (:deallocating "DEALLOCATING")
  (:deallocated "DEALLOCATED")
  (:error-allocating "ERROR_ALLOCATING")
  (:error-deallocating "ERROR_DEALLOCATING"))

(smithy/sdk/shapes:define-list provision-states :member provision-state-enum)

(smithy/sdk/shapes:define-structure region common-lisp:nil
                                    ((region-name :target-type region-name
                                      :member-name "RegionName"))
                                    (:shape-name "Region"))

(smithy/sdk/shapes:define-list region-list :member region)

(smithy/sdk/shapes:define-type region-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-enum resource-type-enum
    common-lisp:nil
  (:instance "instance")
  (:volume "volume")
  (:spot-instances-request "spot-instances-request")
  (:network-interface "network-interface"))

(smithy/sdk/shapes:define-structure run-instances-monitoring-enabled
                                    common-lisp:nil
                                    ((enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "Enabled"))
                                    (:shape-name
                                     "RunInstancesMonitoringEnabled"))

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-ids :member security-group-id)

(smithy/sdk/shapes:define-type security-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-names :member security-group-name)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceType")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ServiceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "QuotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type snapshot-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum spot-instance-type-enum
    common-lisp:nil
  (:one-time "one-time")
  (:persistent "persistent"))

(smithy/sdk/shapes:define-structure spot-market-options common-lisp:nil
                                    ((block-duration-minutes :target-type
                                      non-negative-integer :member-name
                                      "BlockDurationMinutes")
                                     (instance-interruption-behavior
                                      :target-type
                                      instance-interruption-behavior-enum
                                      :member-name
                                      "InstanceInterruptionBehavior")
                                     (max-price :target-type string64
                                      :member-name "MaxPrice")
                                     (spot-instance-type :target-type
                                      spot-instance-type-enum :member-name
                                      "SpotInstanceType")
                                     (valid-until-utc :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "ValidUntilUtc"))
                                    (:shape-name "SpotMarketOptions"))

(smithy/sdk/shapes:define-type string128 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string64 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

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
                                ((workspace-instance-id :target-type
                                  workspace-instance-id :required common-lisp:t
                                  :member-name "WorkspaceInstanceId")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-structure tag-specification common-lisp:nil
                                    ((resource-type :target-type
                                      resource-type-enum :member-name
                                      "ResourceType")
                                     (tags :target-type tag-list :member-name
                                      "Tags"))
                                    (:shape-name "TagSpecification"))

(smithy/sdk/shapes:define-list tag-specifications :member tag-specification)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum tenancy-enum
    common-lisp:nil
  (:default "default")
  (:dedicated "dedicated")
  (:host "host"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ServiceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "QuotaCode")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((workspace-instance-id :target-type
                                  workspace-instance-id :required common-lisp:t
                                  :member-name "WorkspaceInstanceId")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-type user-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "Reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "FieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Name")
                                     (reason :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Reason")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:unknown-operation "UNKNOWN_OPERATION")
  (:unsupported-operation "UNSUPPORTED_OPERATION")
  (:cannot-parse "CANNOT_PARSE")
  (:field-validation-failed "FIELD_VALIDATION_FAILED")
  (:dependency-failure "DEPENDENCY_FAILURE")
  (:other "OTHER"))

(smithy/sdk/shapes:define-type virtual-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type volume-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum volume-type-enum
    common-lisp:nil
  (:standard "standard")
  (:io1 "io1")
  (:io2 "io2")
  (:gp2 "gp2")
  (:sc1 "sc1")
  (:st1 "st1")
  (:gp3 "gp3"))

(smithy/sdk/shapes:define-structure workspace-instance common-lisp:nil
                                    ((provision-state :target-type
                                      provision-state-enum :member-name
                                      "ProvisionState")
                                     (workspace-instance-id :target-type
                                      workspace-instance-id :member-name
                                      "WorkspaceInstanceId")
                                     (ec2managed-instance :target-type
                                      ec2managed-instance :member-name
                                      "EC2ManagedInstance"))
                                    (:shape-name "WorkspaceInstance"))

(smithy/sdk/shapes:define-structure workspace-instance-error common-lisp:nil
                                    ((error-code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ErrorCode")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ErrorMessage"))
                                    (:shape-name "WorkspaceInstanceError"))

(smithy/sdk/shapes:define-list workspace-instance-errors :member
                               workspace-instance-error)

(smithy/sdk/shapes:define-type workspace-instance-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list workspace-instances :member workspace-instance)

(smithy/sdk/operation:define-operation associate-volume :shape-name
                                       "AssociateVolume" :input
                                       associate-volume-request :output
                                       associate-volume-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-volume :shape-name "CreateVolume"
                                       :input create-volume-request :output
                                       create-volume-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-workspace-instance :shape-name
                                       "CreateWorkspaceInstance" :input
                                       create-workspace-instance-request
                                       :output
                                       create-workspace-instance-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-volume :shape-name "DeleteVolume"
                                       :input delete-volume-request :output
                                       delete-volume-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-workspace-instance :shape-name
                                       "DeleteWorkspaceInstance" :input
                                       delete-workspace-instance-request
                                       :output
                                       delete-workspace-instance-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation disassociate-volume :shape-name
                                       "DisassociateVolume" :input
                                       disassociate-volume-request :output
                                       disassociate-volume-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-workspace-instance :shape-name
                                       "GetWorkspaceInstance" :input
                                       get-workspace-instance-request :output
                                       get-workspace-instance-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-instance-types :shape-name
                                       "ListInstanceTypes" :input
                                       list-instance-types-request :output
                                       list-instance-types-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-regions :shape-name "ListRegions"
                                       :input list-regions-request :output
                                       list-regions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-workspace-instances :shape-name
                                       "ListWorkspaceInstances" :input
                                       list-workspace-instances-request :output
                                       list-workspace-instances-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))
