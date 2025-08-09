(uiop/package:define-package #:pira/evs (:use)
                             (:export #:amazon-elastic-vmware-service #:arn
                              #:check #:check-result #:check-type #:checks-list
                              #:cidr #:client-token #:connectivity-info
                              #:create-environment #:create-environment-host
                              #:dedicated-host-id #:delete-environment
                              #:delete-environment-host #:environment
                              #:environment-id #:environment-name
                              #:environment-resource #:environment-state
                              #:environment-state-list #:environment-summary
                              #:environment-summary-list #:get-environment
                              #:host #:host-info-for-create
                              #:host-info-for-create-list #:host-list
                              #:host-name #:host-state #:initial-vlan-info
                              #:initial-vlans #:instance-type #:ip-address
                              #:key-name #:license-info #:license-info-list
                              #:list-environment-hosts #:list-environment-vlans
                              #:list-environments #:list-tags-for-resource
                              #:max-results #:network-interface
                              #:network-interface-id #:network-interface-list
                              #:pagination-token #:placement-group-id
                              #:request-tag-map #:response-tag-map
                              #:route-server-peering
                              #:route-server-peering-list #:secret
                              #:secret-list #:security-group-id
                              #:security-groups
                              #:service-access-security-groups #:solution-key
                              #:state-details #:subnet-id #:tag-key #:tag-keys
                              #:tag-resource #:tag-value #:untag-resource
                              #:vsan-license-key #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:vcf-hostnames
                              #:vcf-version #:vlan #:vlan-id #:vlan-list
                              #:vlan-state #:vpc-id))
(common-lisp:in-package #:pira/evs)

(smithy/sdk/service:define-service amazon-elastic-vmware-service :shape-name
                                   "AmazonElasticVMwareService" :version
                                   "2023-07-27" :title
                                   "Amazon Elastic VMware Service" :traits
                                   '(("aws.api#service" ("sdkId" . "evs")
                                      ("arnNamespace" . "evs"))
                                     ("aws.auth#sigv4" ("name" . "evs"))
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by a tag key and value pair of a resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by a tag key and value pair that is allowed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by a list of tag keys that are allowed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys")))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure check common-lisp:nil
                                    ((type :target-type check-type :member-name
                                      "type")
                                     (result :target-type check-result
                                      :member-name "result")
                                     (impaired-since :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "impairedSince"))
                                    (:shape-name "Check"))

(smithy/sdk/shapes:define-enum check-result
    common-lisp:nil
  (:passed "PASSED")
  (:failed "FAILED")
  (:unknown "UNKNOWN"))

(smithy/sdk/shapes:define-enum check-type
    common-lisp:nil
  (:key-reuse "KEY_REUSE")
  (:key-coverage "KEY_COVERAGE")
  (:reachability "REACHABILITY")
  (:host-count "HOST_COUNT"))

(smithy/sdk/shapes:define-list checks-list :member check)

(smithy/sdk/shapes:define-type cidr smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure connectivity-info common-lisp:nil
                                    ((private-route-server-peerings
                                      :target-type route-server-peering-list
                                      :required common-lisp:t :member-name
                                      "privateRouteServerPeerings"))
                                    (:shape-name "ConnectivityInfo"))

(smithy/sdk/shapes:define-input create-environment-host-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId")
                                 (host :target-type host-info-for-create
                                  :required common-lisp:t :member-name "host"))
                                (:shape-name "CreateEnvironmentHostRequest"))

(smithy/sdk/shapes:define-output create-environment-host-response
                                 common-lisp:nil
                                 ((environment-summary :target-type
                                   environment-summary :member-name
                                   "environmentSummary")
                                  (host :target-type host :member-name "host"))
                                 (:shape-name "CreateEnvironmentHostResponse"))

(smithy/sdk/shapes:define-input create-environment-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (environment-name :target-type
                                  environment-name :member-name
                                  "environmentName")
                                 (kms-key-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "kmsKeyId")
                                 (tags :target-type request-tag-map
                                  :member-name "tags")
                                 (service-access-security-groups :target-type
                                  service-access-security-groups :member-name
                                  "serviceAccessSecurityGroups")
                                 (vpc-id :target-type vpc-id :required
                                  common-lisp:t :member-name "vpcId")
                                 (service-access-subnet-id :target-type
                                  subnet-id :required common-lisp:t
                                  :member-name "serviceAccessSubnetId")
                                 (vcf-version :target-type vcf-version
                                  :required common-lisp:t :member-name
                                  "vcfVersion")
                                 (terms-accepted :target-type
                                  smithy/sdk/smithy-types:boolean :required
                                  common-lisp:t :member-name "termsAccepted")
                                 (license-info :target-type license-info-list
                                  :required common-lisp:t :member-name
                                  "licenseInfo")
                                 (initial-vlans :target-type initial-vlans
                                  :required common-lisp:t :member-name
                                  "initialVlans")
                                 (hosts :target-type host-info-for-create-list
                                  :required common-lisp:t :member-name "hosts")
                                 (connectivity-info :target-type
                                  connectivity-info :required common-lisp:t
                                  :member-name "connectivityInfo")
                                 (vcf-hostnames :target-type vcf-hostnames
                                  :required common-lisp:t :member-name
                                  "vcfHostnames")
                                 (site-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "siteId"))
                                (:shape-name "CreateEnvironmentRequest"))

(smithy/sdk/shapes:define-output create-environment-response common-lisp:nil
                                 ((environment :target-type environment
                                   :member-name "environment"))
                                 (:shape-name "CreateEnvironmentResponse"))

(smithy/sdk/shapes:define-type dedicated-host-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-environment-host-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId")
                                 (host-name :target-type host-name :required
                                  common-lisp:t :member-name "hostName"))
                                (:shape-name "DeleteEnvironmentHostRequest"))

(smithy/sdk/shapes:define-output delete-environment-host-response
                                 common-lisp:nil
                                 ((environment-summary :target-type
                                   environment-summary :member-name
                                   "environmentSummary")
                                  (host :target-type host :member-name "host"))
                                 (:shape-name "DeleteEnvironmentHostResponse"))

(smithy/sdk/shapes:define-input delete-environment-request common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "clientToken")
                                 (environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t))
                                (:shape-name "DeleteEnvironmentRequest"))

(smithy/sdk/shapes:define-output delete-environment-response common-lisp:nil
                                 ((environment :target-type environment
                                   :member-name "environment"))
                                 (:shape-name "DeleteEnvironmentResponse"))

(smithy/sdk/shapes:define-structure environment common-lisp:nil
                                    ((environment-id :target-type
                                      environment-id :member-name
                                      "environmentId")
                                     (environment-state :target-type
                                      environment-state :member-name
                                      "environmentState")
                                     (state-details :target-type state-details
                                      :member-name "stateDetails")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "modifiedAt")
                                     (environment-arn :target-type arn
                                      :member-name "environmentArn")
                                     (environment-name :target-type
                                      environment-name :member-name
                                      "environmentName")
                                     (vpc-id :target-type vpc-id :member-name
                                      "vpcId")
                                     (service-access-subnet-id :target-type
                                      subnet-id :member-name
                                      "serviceAccessSubnetId")
                                     (vcf-version :target-type vcf-version
                                      :member-name "vcfVersion")
                                     (terms-accepted :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "termsAccepted")
                                     (license-info :target-type
                                      license-info-list :member-name
                                      "licenseInfo")
                                     (site-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "siteId")
                                     (environment-status :target-type
                                      check-result :member-name
                                      "environmentStatus")
                                     (checks :target-type checks-list
                                      :member-name "checks")
                                     (connectivity-info :target-type
                                      connectivity-info :member-name
                                      "connectivityInfo")
                                     (vcf-hostnames :target-type vcf-hostnames
                                      :member-name "vcfHostnames")
                                     (kms-key-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "kmsKeyId")
                                     (service-access-security-groups
                                      :target-type
                                      service-access-security-groups
                                      :member-name
                                      "serviceAccessSecurityGroups")
                                     (credentials :target-type secret-list
                                      :member-name "credentials"))
                                    (:shape-name "Environment"))

(smithy/sdk/shapes:define-type environment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum environment-state
    common-lisp:nil
  (:creating "CREATING")
  (:created "CREATED")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:create-failed "CREATE_FAILED"))

(smithy/sdk/shapes:define-list environment-state-list :member environment-state)

(smithy/sdk/shapes:define-structure environment-summary common-lisp:nil
                                    ((environment-id :target-type
                                      environment-id :member-name
                                      "environmentId")
                                     (environment-name :target-type
                                      environment-name :member-name
                                      "environmentName")
                                     (vcf-version :target-type vcf-version
                                      :member-name "vcfVersion")
                                     (environment-status :target-type
                                      check-result :member-name
                                      "environmentStatus")
                                     (environment-state :target-type
                                      environment-state :member-name
                                      "environmentState")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "modifiedAt")
                                     (environment-arn :target-type arn
                                      :member-name "environmentArn"))
                                    (:shape-name "EnvironmentSummary"))

(smithy/sdk/shapes:define-list environment-summary-list :member
                               environment-summary)

(smithy/sdk/shapes:define-input get-environment-request common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t))
                                (:shape-name "GetEnvironmentRequest"))

(smithy/sdk/shapes:define-output get-environment-response common-lisp:nil
                                 ((environment :target-type environment
                                   :member-name "environment"))
                                 (:shape-name "GetEnvironmentResponse"))

(smithy/sdk/shapes:define-structure host common-lisp:nil
                                    ((host-name :target-type host-name
                                      :member-name "hostName")
                                     (ip-address :target-type ip-address
                                      :member-name "ipAddress")
                                     (key-name :target-type key-name
                                      :member-name "keyName")
                                     (instance-type :target-type instance-type
                                      :member-name "instanceType")
                                     (placement-group-id :target-type
                                      placement-group-id :member-name
                                      "placementGroupId")
                                     (dedicated-host-id :target-type
                                      dedicated-host-id :member-name
                                      "dedicatedHostId")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "modifiedAt")
                                     (host-state :target-type host-state
                                      :member-name "hostState")
                                     (state-details :target-type state-details
                                      :member-name "stateDetails")
                                     (ec2instance-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ec2InstanceId")
                                     (network-interfaces :target-type
                                      network-interface-list :member-name
                                      "networkInterfaces"))
                                    (:shape-name "Host"))

(smithy/sdk/shapes:define-structure host-info-for-create common-lisp:nil
                                    ((host-name :target-type host-name
                                      :required common-lisp:t :member-name
                                      "hostName")
                                     (key-name :target-type key-name :required
                                      common-lisp:t :member-name "keyName")
                                     (instance-type :target-type instance-type
                                      :required common-lisp:t :member-name
                                      "instanceType")
                                     (placement-group-id :target-type
                                      placement-group-id :member-name
                                      "placementGroupId")
                                     (dedicated-host-id :target-type
                                      dedicated-host-id :member-name
                                      "dedicatedHostId"))
                                    (:shape-name "HostInfoForCreate"))

(smithy/sdk/shapes:define-list host-info-for-create-list :member
                               host-info-for-create)

(smithy/sdk/shapes:define-list host-list :member host)

(smithy/sdk/shapes:define-type host-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum host-state
    common-lisp:nil
  (:creating "CREATING")
  (:created "CREATED")
  (:updating "UPDATING")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:create-failed "CREATE_FAILED")
  (:update-failed "UPDATE_FAILED"))

(smithy/sdk/shapes:define-structure initial-vlan-info common-lisp:nil
                                    ((cidr :target-type cidr :required
                                      common-lisp:t :member-name "cidr"))
                                    (:shape-name "InitialVlanInfo"))

(smithy/sdk/shapes:define-structure initial-vlans common-lisp:nil
                                    ((vmk-management :target-type
                                      initial-vlan-info :required common-lisp:t
                                      :member-name "vmkManagement")
                                     (vm-management :target-type
                                      initial-vlan-info :required common-lisp:t
                                      :member-name "vmManagement")
                                     (v-motion :target-type initial-vlan-info
                                      :required common-lisp:t :member-name
                                      "vMotion")
                                     (v-san :target-type initial-vlan-info
                                      :required common-lisp:t :member-name
                                      "vSan")
                                     (v-tep :target-type initial-vlan-info
                                      :required common-lisp:t :member-name
                                      "vTep")
                                     (edge-vtep :target-type initial-vlan-info
                                      :required common-lisp:t :member-name
                                      "edgeVTep")
                                     (nsx-uplink :target-type initial-vlan-info
                                      :required common-lisp:t :member-name
                                      "nsxUplink")
                                     (hcx :target-type initial-vlan-info
                                      :required common-lisp:t :member-name
                                      "hcx")
                                     (expansion-vlan1 :target-type
                                      initial-vlan-info :required common-lisp:t
                                      :member-name "expansionVlan1")
                                     (expansion-vlan2 :target-type
                                      initial-vlan-info :required common-lisp:t
                                      :member-name "expansionVlan2"))
                                    (:shape-name "InitialVlans"))

(smithy/sdk/shapes:define-enum instance-type
    common-lisp:nil
  (:i4i-metal "i4i.metal"))

(smithy/sdk/shapes:define-type ip-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure license-info common-lisp:nil
                                    ((solution-key :target-type solution-key
                                      :required common-lisp:t :member-name
                                      "solutionKey")
                                     (vsan-key :target-type vsan-license-key
                                      :required common-lisp:t :member-name
                                      "vsanKey"))
                                    (:shape-name "LicenseInfo"))

(smithy/sdk/shapes:define-list license-info-list :member license-info)

(smithy/sdk/shapes:define-input list-environment-hosts-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t))
                                (:shape-name "ListEnvironmentHostsRequest"))

(smithy/sdk/shapes:define-output list-environment-hosts-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (environment-hosts :target-type host-list
                                   :member-name "environmentHosts"))
                                 (:shape-name "ListEnvironmentHostsResponse"))

(smithy/sdk/shapes:define-input list-environment-vlans-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (environment-id :target-type environment-id
                                  :required common-lisp:t :member-name
                                  "environmentId" :http-label common-lisp:t))
                                (:shape-name "ListEnvironmentVlansRequest"))

(smithy/sdk/shapes:define-output list-environment-vlans-response
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (environment-vlans :target-type vlan-list
                                   :member-name "environmentVlans"))
                                 (:shape-name "ListEnvironmentVlansResponse"))

(smithy/sdk/shapes:define-input list-environments-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (state :target-type environment-state-list
                                  :member-name "state" :http-query "state"))
                                (:shape-name "ListEnvironmentsRequest"))

(smithy/sdk/shapes:define-output list-environments-response common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (environment-summaries :target-type
                                   environment-summary-list :member-name
                                   "environmentSummaries"))
                                 (:shape-name "ListEnvironmentsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type response-tag-map
                                   :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure network-interface common-lisp:nil
                                    ((network-interface-id :target-type
                                      network-interface-id :member-name
                                      "networkInterfaceId"))
                                    (:shape-name "NetworkInterface"))

(smithy/sdk/shapes:define-type network-interface-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list network-interface-list :member network-interface)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type placement-group-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map request-tag-map :key tag-key :value tag-value)

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

(smithy/sdk/shapes:define-map response-tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-type route-server-peering
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list route-server-peering-list :member
                               route-server-peering)

(smithy/sdk/shapes:define-structure secret common-lisp:nil
                                    ((secret-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "secretArn"))
                                    (:shape-name "Secret"))

(smithy/sdk/shapes:define-list secret-list :member secret)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-groups :member security-group-id)

(smithy/sdk/shapes:define-structure service-access-security-groups
                                    common-lisp:nil
                                    ((security-groups :target-type
                                      security-groups :member-name
                                      "securityGroups"))
                                    (:shape-name "ServiceAccessSecurityGroups"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type solution-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type state-details smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-error tag-policy-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "TagPolicyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn")
                                 (tags :target-type request-tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "TooManyTagsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn")
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-type vsan-license-key smithy/sdk/smithy-types:string)

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

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:unknown-operation "unknownOperation")
  (:cannot-parse "cannotParse")
  (:field-validation-failed "fieldValidationFailed")
  (:other "other"))

(smithy/sdk/shapes:define-structure vcf-hostnames common-lisp:nil
                                    ((v-center :target-type host-name :required
                                      common-lisp:t :member-name "vCenter")
                                     (nsx :target-type host-name :required
                                      common-lisp:t :member-name "nsx")
                                     (nsx-manager1 :target-type host-name
                                      :required common-lisp:t :member-name
                                      "nsxManager1")
                                     (nsx-manager2 :target-type host-name
                                      :required common-lisp:t :member-name
                                      "nsxManager2")
                                     (nsx-manager3 :target-type host-name
                                      :required common-lisp:t :member-name
                                      "nsxManager3")
                                     (nsx-edge1 :target-type host-name
                                      :required common-lisp:t :member-name
                                      "nsxEdge1")
                                     (nsx-edge2 :target-type host-name
                                      :required common-lisp:t :member-name
                                      "nsxEdge2")
                                     (sddc-manager :target-type host-name
                                      :required common-lisp:t :member-name
                                      "sddcManager")
                                     (cloud-builder :target-type host-name
                                      :required common-lisp:t :member-name
                                      "cloudBuilder"))
                                    (:shape-name "VcfHostnames"))

(smithy/sdk/shapes:define-enum vcf-version
    common-lisp:nil
  (:vcf-5-2-1 "VCF-5.2.1"))

(smithy/sdk/shapes:define-structure vlan common-lisp:nil
                                    ((vlan-id :target-type vlan-id :member-name
                                      "vlanId")
                                     (cidr :target-type cidr :member-name
                                      "cidr")
                                     (availability-zone :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "availabilityZone")
                                     (function-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "functionName")
                                     (subnet-id :target-type subnet-id
                                      :member-name "subnetId")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt")
                                     (modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "modifiedAt")
                                     (vlan-state :target-type vlan-state
                                      :member-name "vlanState")
                                     (state-details :target-type state-details
                                      :member-name "stateDetails"))
                                    (:shape-name "Vlan"))

(smithy/sdk/shapes:define-type vlan-id smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list vlan-list :member vlan)

(smithy/sdk/shapes:define-enum vlan-state
    common-lisp:nil
  (:creating "CREATING")
  (:created "CREATED")
  (:deleting "DELETING")
  (:deleted "DELETED")
  (:create-failed "CREATE_FAILED"))

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-environment :shape-name
                                       "CreateEnvironment" :input
                                       create-environment-request :output
                                       create-environment-response :errors
                                       (validation-exception))

(smithy/sdk/operation:define-operation create-environment-host :shape-name
                                       "CreateEnvironmentHost" :input
                                       create-environment-host-request :output
                                       create-environment-host-response :errors
                                       (throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-environment :shape-name
                                       "DeleteEnvironment" :input
                                       delete-environment-request :output
                                       delete-environment-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-environment-host :shape-name
                                       "DeleteEnvironmentHost" :input
                                       delete-environment-host-request :output
                                       delete-environment-host-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-environment :shape-name
                                       "GetEnvironment" :input
                                       get-environment-request :output
                                       get-environment-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-environment-hosts :shape-name
                                       "ListEnvironmentHosts" :input
                                       list-environment-hosts-request :output
                                       list-environment-hosts-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-environment-vlans :shape-name
                                       "ListEnvironmentVlans" :input
                                       list-environment-vlans-request :output
                                       list-environment-vlans-response :errors
                                       (resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-environments :shape-name
                                       "ListEnvironments" :input
                                       list-environments-request :output
                                       list-environments-response :errors
                                       (validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (resource-not-found-exception
                                        service-quota-exceeded-exception
                                        tag-policy-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (resource-not-found-exception
                                        tag-policy-exception))
