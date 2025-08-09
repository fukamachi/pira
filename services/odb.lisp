(uiop/package:define-package #:pira/odb (:use)
                             (:export #:accept-marketplace-registration
                              #:accept-marketplace-registration-input
                              #:accept-marketplace-registration-output #:access
                              #:access-denied-exception
                              #:autonomous-virtual-machine-list
                              #:autonomous-virtual-machine-summary
                              #:cloud-autonomous-vm-cluster
                              #:cloud-autonomous-vm-cluster-list
                              #:cloud-autonomous-vm-cluster-resource
                              #:cloud-autonomous-vm-cluster-resource-details
                              #:cloud-autonomous-vm-cluster-resource-details-list
                              #:cloud-autonomous-vm-cluster-summary
                              #:cloud-exadata-infrastructure
                              #:cloud-exadata-infrastructure-list
                              #:cloud-exadata-infrastructure-resource
                              #:cloud-exadata-infrastructure-summary
                              #:cloud-exadata-infrastructure-unallocated-resources
                              #:cloud-vm-cluster #:cloud-vm-cluster-list
                              #:cloud-vm-cluster-resource
                              #:cloud-vm-cluster-summary #:compute-model
                              #:conflict-exception
                              #:create-cloud-autonomous-vm-cluster
                              #:create-cloud-autonomous-vm-cluster-input
                              #:create-cloud-autonomous-vm-cluster-output
                              #:create-cloud-exadata-infrastructure
                              #:create-cloud-exadata-infrastructure-input
                              #:create-cloud-exadata-infrastructure-output
                              #:create-cloud-vm-cluster
                              #:create-cloud-vm-cluster-input
                              #:create-cloud-vm-cluster-output
                              #:create-odb-network #:create-odb-network-input
                              #:create-odb-network-output
                              #:create-odb-peering-connection
                              #:create-odb-peering-connection-input
                              #:create-odb-peering-connection-output
                              #:customer-contact #:customer-contacts
                              #:data-collection-options #:day-of-week
                              #:day-of-week-name #:days-of-week
                              #:db-iorm-config #:db-iorm-config-list #:db-node
                              #:db-node-list #:db-node-maintenance-type
                              #:db-node-resource #:db-node-resource-status
                              #:db-node-summary #:db-server #:db-server-list
                              #:db-server-patching-details
                              #:db-server-patching-status #:db-server-summary
                              #:db-system-shape-list #:db-system-shape-summary
                              #:delete-cloud-autonomous-vm-cluster
                              #:delete-cloud-autonomous-vm-cluster-input
                              #:delete-cloud-autonomous-vm-cluster-output
                              #:delete-cloud-exadata-infrastructure
                              #:delete-cloud-exadata-infrastructure-input
                              #:delete-cloud-exadata-infrastructure-output
                              #:delete-cloud-vm-cluster
                              #:delete-cloud-vm-cluster-input
                              #:delete-cloud-vm-cluster-output
                              #:delete-odb-network #:delete-odb-network-input
                              #:delete-odb-network-output
                              #:delete-odb-peering-connection
                              #:delete-odb-peering-connection-input
                              #:delete-odb-peering-connection-output
                              #:disk-redundancy #:exadata-iorm-config
                              #:general-input-string
                              #:get-cloud-autonomous-vm-cluster
                              #:get-cloud-autonomous-vm-cluster-input
                              #:get-cloud-autonomous-vm-cluster-output
                              #:get-cloud-exadata-infrastructure
                              #:get-cloud-exadata-infrastructure-input
                              #:get-cloud-exadata-infrastructure-output
                              #:get-cloud-exadata-infrastructure-unallocated-resources
                              #:get-cloud-exadata-infrastructure-unallocated-resources-input
                              #:get-cloud-exadata-infrastructure-unallocated-resources-output
                              #:get-cloud-vm-cluster
                              #:get-cloud-vm-cluster-input
                              #:get-cloud-vm-cluster-output #:get-db-node
                              #:get-db-node-input #:get-db-node-output
                              #:get-db-server #:get-db-server-input
                              #:get-db-server-output
                              #:get-oci-onboarding-status
                              #:get-oci-onboarding-status-input
                              #:get-oci-onboarding-status-output
                              #:get-odb-network #:get-odb-network-input
                              #:get-odb-network-output
                              #:get-odb-peering-connection
                              #:get-odb-peering-connection-input
                              #:get-odb-peering-connection-output
                              #:gi-version-list #:gi-version-summary
                              #:hours-of-day #:initialize-service
                              #:initialize-service-input
                              #:initialize-service-output
                              #:internal-server-exception
                              #:iorm-lifecycle-state #:license-model
                              #:list-autonomous-virtual-machines
                              #:list-autonomous-virtual-machines-input
                              #:list-autonomous-virtual-machines-output
                              #:list-cloud-autonomous-vm-clusters
                              #:list-cloud-autonomous-vm-clusters-input
                              #:list-cloud-autonomous-vm-clusters-output
                              #:list-cloud-exadata-infrastructures
                              #:list-cloud-exadata-infrastructures-input
                              #:list-cloud-exadata-infrastructures-output
                              #:list-cloud-vm-clusters
                              #:list-cloud-vm-clusters-input
                              #:list-cloud-vm-clusters-output #:list-db-nodes
                              #:list-db-nodes-input #:list-db-nodes-output
                              #:list-db-servers #:list-db-servers-input
                              #:list-db-servers-output #:list-db-system-shapes
                              #:list-db-system-shapes-input
                              #:list-db-system-shapes-output #:list-gi-versions
                              #:list-gi-versions-input
                              #:list-gi-versions-output #:list-odb-networks
                              #:list-odb-networks-input
                              #:list-odb-networks-output
                              #:list-odb-peering-connections
                              #:list-odb-peering-connections-input
                              #:list-odb-peering-connections-output
                              #:list-system-versions
                              #:list-system-versions-input
                              #:list-system-versions-output
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:maintenance-window #:managed-resource-status
                              #:managed-s3backup-access #:managed-services
                              #:month #:month-name #:months #:objective
                              #:oci-dns-forwarding-config
                              #:oci-dns-forwarding-config-list
                              #:oci-onboarding-status #:odb #:odb-network
                              #:odb-network-list #:odb-network-resource
                              #:odb-network-summary #:odb-peering-connection
                              #:odb-peering-connection-list
                              #:odb-peering-connection-resource
                              #:odb-peering-connection-summary
                              #:patching-mode-type #:policy-document
                              #:preference-type #:reboot-db-node
                              #:reboot-db-node-input #:reboot-db-node-output
                              #:request-tag-map #:resource-arn
                              #:resource-display-name #:resource-id
                              #:resource-id-or-arn
                              #:resource-not-found-exception #:resource-status
                              #:response-tag-map #:s3access #:sensitive-string
                              #:sensitive-string-list
                              #:service-network-endpoint
                              #:service-quota-exceeded-exception #:shape-type
                              #:start-db-node #:start-db-node-input
                              #:start-db-node-output #:stop-db-node
                              #:stop-db-node-input #:stop-db-node-output
                              #:string-list #:system-version-list
                              #:system-version-summary #:tag-key #:tag-keys
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value
                              #:throttling-exception #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response
                              #:update-cloud-exadata-infrastructure
                              #:update-cloud-exadata-infrastructure-input
                              #:update-cloud-exadata-infrastructure-output
                              #:update-odb-network #:update-odb-network-input
                              #:update-odb-network-output
                              #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:vpc-endpoint-type
                              #:weeks-of-month #:zero-etl-access))
(common-lisp:in-package #:pira/odb)

(smithy/sdk/service:define-service odb :shape-name "Odb" :version "2024-08-20"
                                   :title "odb" :traits
                                   '(("aws.api#service" ("sdkId" . "odb")
                                      ("arnNamespace" . "odb"))
                                     ("aws.auth#sigv4" ("name" . "odb"))
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
                                     ("aws.iam#disableConditionKeyInference")
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-input accept-marketplace-registration-input
                                common-lisp:nil
                                ((marketplace-registration-token :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "marketplaceRegistrationToken"))
                                (:shape-name
                                 "AcceptMarketplaceRegistrationInput"))

(smithy/sdk/shapes:define-output accept-marketplace-registration-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AcceptMarketplaceRegistrationOutput"))

(smithy/sdk/shapes:define-enum access
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-list autonomous-virtual-machine-list :member
                               autonomous-virtual-machine-summary)

(smithy/sdk/shapes:define-structure autonomous-virtual-machine-summary
                                    common-lisp:nil
                                    ((autonomous-virtual-machine-id
                                      :target-type resource-id :member-name
                                      "autonomousVirtualMachineId")
                                     (status :target-type resource-status
                                      :member-name "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (vm-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "vmName")
                                     (db-server-id :target-type resource-id
                                      :member-name "dbServerId")
                                     (db-server-display-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "dbServerDisplayName")
                                     (cpu-core-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "cpuCoreCount")
                                     (memory-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "memorySizeInGBs")
                                     (db-node-storage-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "dbNodeStorageSizeInGBs")
                                     (client-ip-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientIpAddress")
                                     (cloud-autonomous-vm-cluster-id
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "cloudAutonomousVmClusterId")
                                     (ocid :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ocid")
                                     (oci-resource-anchor-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociResourceAnchorName"))
                                    (:shape-name
                                     "AutonomousVirtualMachineSummary"))

(smithy/sdk/shapes:define-structure cloud-autonomous-vm-cluster common-lisp:nil
                                    ((cloud-autonomous-vm-cluster-id
                                      :target-type resource-id :required
                                      common-lisp:t :member-name
                                      "cloudAutonomousVmClusterId")
                                     (cloud-autonomous-vm-cluster-arn
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "cloudAutonomousVmClusterArn")
                                     (odb-network-id :target-type
                                      resource-id-or-arn :member-name
                                      "odbNetworkId")
                                     (oci-resource-anchor-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociResourceAnchorName")
                                     (percent-progress :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "percentProgress")
                                     (display-name :target-type
                                      resource-display-name :member-name
                                      "displayName")
                                     (status :target-type resource-status
                                      :member-name "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (cloud-exadata-infrastructure-id
                                      :target-type resource-id-or-arn
                                      :member-name
                                      "cloudExadataInfrastructureId")
                                     (autonomous-data-storage-percentage
                                      :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name
                                      "autonomousDataStoragePercentage")
                                     (autonomous-data-storage-size-in-tbs
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "autonomousDataStorageSizeInTBs")
                                     (available-autonomous-data-storage-size-in-tbs
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "availableAutonomousDataStorageSizeInTBs")
                                     (available-container-databases
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "availableContainerDatabases")
                                     (available-cpus :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "availableCpus")
                                     (compute-model :target-type compute-model
                                      :member-name "computeModel")
                                     (cpu-core-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "cpuCoreCount")
                                     (cpu-core-count-per-node :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "cpuCoreCountPerNode")
                                     (cpu-percentage :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "cpuPercentage")
                                     (data-storage-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "dataStorageSizeInGBs")
                                     (data-storage-size-in-tbs :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "dataStorageSizeInTBs")
                                     (db-node-storage-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "dbNodeStorageSizeInGBs")
                                     (db-servers :target-type string-list
                                      :member-name "dbServers")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (domain :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "domain")
                                     (exadata-storage-in-tbs-lowest-scaled-value
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "exadataStorageInTBsLowestScaledValue")
                                     (hostname :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "hostname")
                                     (ocid :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ocid")
                                     (oci-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociUrl")
                                     (is-mtls-enabled-vm-cluster :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isMtlsEnabledVmCluster")
                                     (license-model :target-type license-model
                                      :member-name "licenseModel")
                                     (maintenance-window :target-type
                                      maintenance-window :member-name
                                      "maintenanceWindow")
                                     (max-acds-lowest-scaled-value :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxAcdsLowestScaledValue")
                                     (memory-per-oracle-compute-unit-in-gbs
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "memoryPerOracleComputeUnitInGBs")
                                     (memory-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "memorySizeInGBs")
                                     (node-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "nodeCount")
                                     (non-provisionable-autonomous-container-databases
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "nonProvisionableAutonomousContainerDatabases")
                                     (provisionable-autonomous-container-databases
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "provisionableAutonomousContainerDatabases")
                                     (provisioned-autonomous-container-databases
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "provisionedAutonomousContainerDatabases")
                                     (provisioned-cpus :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "provisionedCpus")
                                     (reclaimable-cpus :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "reclaimableCpus")
                                     (reserved-cpus :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "reservedCpus")
                                     (scan-listener-port-non-tls :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "scanListenerPortNonTls")
                                     (scan-listener-port-tls :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "scanListenerPortTls")
                                     (shape :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "shape")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (time-database-ssl-certificate-expires
                                      :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name
                                      "timeDatabaseSslCertificateExpires"
                                      :timestamp-format "date-time")
                                     (time-ords-certificate-expires
                                      :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "timeOrdsCertificateExpires"
                                      :timestamp-format "date-time")
                                     (time-zone :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "timeZone")
                                     (total-container-databases :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalContainerDatabases"))
                                    (:shape-name "CloudAutonomousVmCluster"))

(smithy/sdk/shapes:define-list cloud-autonomous-vm-cluster-list :member
                               cloud-autonomous-vm-cluster-summary)

common-lisp:nil

(smithy/sdk/shapes:define-structure
 cloud-autonomous-vm-cluster-resource-details common-lisp:nil
 ((cloud-autonomous-vm-cluster-id :target-type resource-id :member-name
   "cloudAutonomousVmClusterId")
  (unallocated-adb-storage-in-tbs :target-type smithy/sdk/smithy-types:double
   :member-name "unallocatedAdbStorageInTBs"))
 (:shape-name "CloudAutonomousVmClusterResourceDetails"))

(smithy/sdk/shapes:define-list
 cloud-autonomous-vm-cluster-resource-details-list :member
 cloud-autonomous-vm-cluster-resource-details)

(smithy/sdk/shapes:define-structure cloud-autonomous-vm-cluster-summary
                                    common-lisp:nil
                                    ((cloud-autonomous-vm-cluster-id
                                      :target-type resource-id :required
                                      common-lisp:t :member-name
                                      "cloudAutonomousVmClusterId")
                                     (cloud-autonomous-vm-cluster-arn
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "cloudAutonomousVmClusterArn")
                                     (odb-network-id :target-type
                                      resource-id-or-arn :member-name
                                      "odbNetworkId")
                                     (oci-resource-anchor-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociResourceAnchorName")
                                     (percent-progress :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "percentProgress")
                                     (display-name :target-type
                                      resource-display-name :member-name
                                      "displayName")
                                     (status :target-type resource-status
                                      :member-name "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (cloud-exadata-infrastructure-id
                                      :target-type resource-id-or-arn
                                      :member-name
                                      "cloudExadataInfrastructureId")
                                     (autonomous-data-storage-percentage
                                      :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name
                                      "autonomousDataStoragePercentage")
                                     (autonomous-data-storage-size-in-tbs
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "autonomousDataStorageSizeInTBs")
                                     (available-autonomous-data-storage-size-in-tbs
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "availableAutonomousDataStorageSizeInTBs")
                                     (available-container-databases
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "availableContainerDatabases")
                                     (available-cpus :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "availableCpus")
                                     (compute-model :target-type compute-model
                                      :member-name "computeModel")
                                     (cpu-core-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "cpuCoreCount")
                                     (cpu-core-count-per-node :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "cpuCoreCountPerNode")
                                     (cpu-percentage :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "cpuPercentage")
                                     (data-storage-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "dataStorageSizeInGBs")
                                     (data-storage-size-in-tbs :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "dataStorageSizeInTBs")
                                     (db-node-storage-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "dbNodeStorageSizeInGBs")
                                     (db-servers :target-type string-list
                                      :member-name "dbServers")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (domain :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "domain")
                                     (exadata-storage-in-tbs-lowest-scaled-value
                                      :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name
                                      "exadataStorageInTBsLowestScaledValue")
                                     (hostname :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "hostname")
                                     (ocid :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ocid")
                                     (oci-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociUrl")
                                     (is-mtls-enabled-vm-cluster :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isMtlsEnabledVmCluster")
                                     (license-model :target-type license-model
                                      :member-name "licenseModel")
                                     (maintenance-window :target-type
                                      maintenance-window :member-name
                                      "maintenanceWindow")
                                     (max-acds-lowest-scaled-value :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxAcdsLowestScaledValue")
                                     (memory-per-oracle-compute-unit-in-gbs
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "memoryPerOracleComputeUnitInGBs")
                                     (memory-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "memorySizeInGBs")
                                     (node-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "nodeCount")
                                     (non-provisionable-autonomous-container-databases
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "nonProvisionableAutonomousContainerDatabases")
                                     (provisionable-autonomous-container-databases
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "provisionableAutonomousContainerDatabases")
                                     (provisioned-autonomous-container-databases
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "provisionedAutonomousContainerDatabases")
                                     (provisioned-cpus :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "provisionedCpus")
                                     (reclaimable-cpus :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "reclaimableCpus")
                                     (reserved-cpus :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "reservedCpus")
                                     (scan-listener-port-non-tls :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "scanListenerPortNonTls")
                                     (scan-listener-port-tls :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "scanListenerPortTls")
                                     (shape :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "shape")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (time-database-ssl-certificate-expires
                                      :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name
                                      "timeDatabaseSslCertificateExpires"
                                      :timestamp-format "date-time")
                                     (time-ords-certificate-expires
                                      :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "timeOrdsCertificateExpires"
                                      :timestamp-format "date-time")
                                     (time-zone :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "timeZone")
                                     (total-container-databases :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalContainerDatabases"))
                                    (:shape-name
                                     "CloudAutonomousVmClusterSummary"))

(smithy/sdk/shapes:define-structure cloud-exadata-infrastructure
                                    common-lisp:nil
                                    ((cloud-exadata-infrastructure-id
                                      :target-type resource-id-or-arn :required
                                      common-lisp:t :member-name
                                      "cloudExadataInfrastructureId")
                                     (display-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "displayName")
                                     (status :target-type resource-status
                                      :member-name "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (cloud-exadata-infrastructure-arn
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "cloudExadataInfrastructureArn")
                                     (activated-storage-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "activatedStorageCount")
                                     (additional-storage-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "additionalStorageCount")
                                     (available-storage-size-in-gbs
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "availableStorageSizeInGBs")
                                     (availability-zone :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "availabilityZone")
                                     (availability-zone-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "availabilityZoneId")
                                     (compute-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "computeCount")
                                     (cpu-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "cpuCount")
                                     (customer-contacts-to-send-to-oci
                                      :target-type customer-contacts
                                      :member-name
                                      "customerContactsToSendToOCI")
                                     (data-storage-size-in-tbs :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "dataStorageSizeInTBs")
                                     (db-node-storage-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "dbNodeStorageSizeInGBs")
                                     (db-server-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "dbServerVersion")
                                     (last-maintenance-run-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "lastMaintenanceRunId")
                                     (maintenance-window :target-type
                                      maintenance-window :member-name
                                      "maintenanceWindow")
                                     (max-cpu-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxCpuCount")
                                     (max-data-storage-in-tbs :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "maxDataStorageInTBs")
                                     (max-db-node-storage-size-in-gbs
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxDbNodeStorageSizeInGBs")
                                     (max-memory-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxMemoryInGBs")
                                     (memory-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "memorySizeInGBs")
                                     (monthly-db-server-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "monthlyDbServerVersion")
                                     (monthly-storage-server-version
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "monthlyStorageServerVersion")
                                     (next-maintenance-run-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextMaintenanceRunId")
                                     (oci-resource-anchor-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociResourceAnchorName")
                                     (oci-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociUrl")
                                     (ocid :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ocid")
                                     (shape :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "shape")
                                     (storage-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "storageCount")
                                     (storage-server-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "storageServerVersion")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (total-storage-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalStorageSizeInGBs")
                                     (percent-progress :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "percentProgress")
                                     (database-server-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "databaseServerType")
                                     (storage-server-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "storageServerType")
                                     (compute-model :target-type compute-model
                                      :member-name "computeModel"))
                                    (:shape-name "CloudExadataInfrastructure"))

(smithy/sdk/shapes:define-list cloud-exadata-infrastructure-list :member
                               cloud-exadata-infrastructure-summary)

common-lisp:nil

(smithy/sdk/shapes:define-structure cloud-exadata-infrastructure-summary
                                    common-lisp:nil
                                    ((cloud-exadata-infrastructure-id
                                      :target-type resource-id-or-arn :required
                                      common-lisp:t :member-name
                                      "cloudExadataInfrastructureId")
                                     (display-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "displayName")
                                     (status :target-type resource-status
                                      :member-name "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (cloud-exadata-infrastructure-arn
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "cloudExadataInfrastructureArn")
                                     (activated-storage-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "activatedStorageCount")
                                     (additional-storage-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "additionalStorageCount")
                                     (available-storage-size-in-gbs
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "availableStorageSizeInGBs")
                                     (availability-zone :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "availabilityZone")
                                     (availability-zone-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "availabilityZoneId")
                                     (compute-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "computeCount")
                                     (cpu-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "cpuCount")
                                     (customer-contacts-to-send-to-oci
                                      :target-type customer-contacts
                                      :member-name
                                      "customerContactsToSendToOCI")
                                     (data-storage-size-in-tbs :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "dataStorageSizeInTBs")
                                     (db-node-storage-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "dbNodeStorageSizeInGBs")
                                     (db-server-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "dbServerVersion")
                                     (last-maintenance-run-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "lastMaintenanceRunId")
                                     (maintenance-window :target-type
                                      maintenance-window :member-name
                                      "maintenanceWindow")
                                     (max-cpu-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxCpuCount")
                                     (max-data-storage-in-tbs :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "maxDataStorageInTBs")
                                     (max-db-node-storage-size-in-gbs
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxDbNodeStorageSizeInGBs")
                                     (max-memory-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxMemoryInGBs")
                                     (memory-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "memorySizeInGBs")
                                     (monthly-db-server-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "monthlyDbServerVersion")
                                     (monthly-storage-server-version
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "monthlyStorageServerVersion")
                                     (next-maintenance-run-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextMaintenanceRunId")
                                     (oci-resource-anchor-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociResourceAnchorName")
                                     (oci-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociUrl")
                                     (ocid :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ocid")
                                     (shape :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "shape")
                                     (storage-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "storageCount")
                                     (storage-server-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "storageServerVersion")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (total-storage-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalStorageSizeInGBs")
                                     (percent-progress :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "percentProgress")
                                     (database-server-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "databaseServerType")
                                     (storage-server-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "storageServerType")
                                     (compute-model :target-type compute-model
                                      :member-name "computeModel"))
                                    (:shape-name
                                     "CloudExadataInfrastructureSummary"))

(smithy/sdk/shapes:define-structure
 cloud-exadata-infrastructure-unallocated-resources common-lisp:nil
 ((cloud-autonomous-vm-clusters :target-type
   cloud-autonomous-vm-cluster-resource-details-list :member-name
   "cloudAutonomousVmClusters")
  (cloud-exadata-infrastructure-display-name :target-type
   smithy/sdk/smithy-types:string :member-name
   "cloudExadataInfrastructureDisplayName")
  (exadata-storage-in-tbs :target-type smithy/sdk/smithy-types:double
   :member-name "exadataStorageInTBs")
  (cloud-exadata-infrastructure-id :target-type resource-id-or-arn :member-name
   "cloudExadataInfrastructureId")
  (local-storage-in-gbs :target-type smithy/sdk/smithy-types:integer
   :member-name "localStorageInGBs")
  (memory-in-gbs :target-type smithy/sdk/smithy-types:integer :member-name
   "memoryInGBs")
  (ocpus :target-type smithy/sdk/smithy-types:integer :member-name "ocpus"))
 (:shape-name "CloudExadataInfrastructureUnallocatedResources"))

(smithy/sdk/shapes:define-structure cloud-vm-cluster common-lisp:nil
                                    ((cloud-vm-cluster-id :target-type
                                      resource-id :required common-lisp:t
                                      :member-name "cloudVmClusterId")
                                     (display-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "displayName")
                                     (status :target-type resource-status
                                      :member-name "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (cloud-vm-cluster-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "cloudVmClusterArn")
                                     (cloud-exadata-infrastructure-id
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "cloudExadataInfrastructureId")
                                     (cluster-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clusterName")
                                     (cpu-core-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "cpuCoreCount")
                                     (data-collection-options :target-type
                                      data-collection-options :member-name
                                      "dataCollectionOptions")
                                     (data-storage-size-in-tbs :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "dataStorageSizeInTBs")
                                     (db-node-storage-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "dbNodeStorageSizeInGBs")
                                     (db-servers :target-type string-list
                                      :member-name "dbServers")
                                     (disk-redundancy :target-type
                                      disk-redundancy :member-name
                                      "diskRedundancy")
                                     (gi-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "giVersion")
                                     (hostname :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "hostname")
                                     (iorm-config-cache :target-type
                                      exadata-iorm-config :member-name
                                      "iormConfigCache")
                                     (is-local-backup-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isLocalBackupEnabled")
                                     (is-sparse-diskgroup-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isSparseDiskgroupEnabled")
                                     (last-update-history-entry-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "lastUpdateHistoryEntryId")
                                     (license-model :target-type license-model
                                      :member-name "licenseModel")
                                     (listener-port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "listenerPort")
                                     (memory-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "memorySizeInGBs")
                                     (node-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "nodeCount")
                                     (ocid :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ocid")
                                     (oci-resource-anchor-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociResourceAnchorName")
                                     (oci-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociUrl")
                                     (domain :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "domain")
                                     (scan-dns-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "scanDnsName")
                                     (scan-dns-record-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "scanDnsRecordId")
                                     (scan-ip-ids :target-type string-list
                                      :member-name "scanIpIds")
                                     (shape :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "shape")
                                     (ssh-public-keys :target-type
                                      sensitive-string-list :member-name
                                      "sshPublicKeys")
                                     (storage-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "storageSizeInGBs")
                                     (system-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "systemVersion")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (time-zone :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "timeZone")
                                     (vip-ids :target-type string-list
                                      :member-name "vipIds")
                                     (odb-network-id :target-type
                                      resource-id-or-arn :member-name
                                      "odbNetworkId")
                                     (percent-progress :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "percentProgress")
                                     (compute-model :target-type compute-model
                                      :member-name "computeModel"))
                                    (:shape-name "CloudVmCluster"))

(smithy/sdk/shapes:define-list cloud-vm-cluster-list :member
                               cloud-vm-cluster-summary)

common-lisp:nil

(smithy/sdk/shapes:define-structure cloud-vm-cluster-summary common-lisp:nil
                                    ((cloud-vm-cluster-id :target-type
                                      resource-id :required common-lisp:t
                                      :member-name "cloudVmClusterId")
                                     (display-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "displayName")
                                     (status :target-type resource-status
                                      :member-name "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (cloud-vm-cluster-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "cloudVmClusterArn")
                                     (cloud-exadata-infrastructure-id
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "cloudExadataInfrastructureId")
                                     (cluster-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clusterName")
                                     (cpu-core-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "cpuCoreCount")
                                     (data-collection-options :target-type
                                      data-collection-options :member-name
                                      "dataCollectionOptions")
                                     (data-storage-size-in-tbs :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "dataStorageSizeInTBs")
                                     (db-node-storage-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "dbNodeStorageSizeInGBs")
                                     (db-servers :target-type string-list
                                      :member-name "dbServers")
                                     (disk-redundancy :target-type
                                      disk-redundancy :member-name
                                      "diskRedundancy")
                                     (gi-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "giVersion")
                                     (hostname :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "hostname")
                                     (iorm-config-cache :target-type
                                      exadata-iorm-config :member-name
                                      "iormConfigCache")
                                     (is-local-backup-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isLocalBackupEnabled")
                                     (is-sparse-diskgroup-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isSparseDiskgroupEnabled")
                                     (last-update-history-entry-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "lastUpdateHistoryEntryId")
                                     (license-model :target-type license-model
                                      :member-name "licenseModel")
                                     (listener-port :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "listenerPort")
                                     (memory-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "memorySizeInGBs")
                                     (node-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "nodeCount")
                                     (ocid :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ocid")
                                     (oci-resource-anchor-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociResourceAnchorName")
                                     (oci-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociUrl")
                                     (domain :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "domain")
                                     (scan-dns-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "scanDnsName")
                                     (scan-dns-record-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "scanDnsRecordId")
                                     (scan-ip-ids :target-type string-list
                                      :member-name "scanIpIds")
                                     (shape :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "shape")
                                     (ssh-public-keys :target-type
                                      sensitive-string-list :member-name
                                      "sshPublicKeys")
                                     (storage-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "storageSizeInGBs")
                                     (system-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "systemVersion")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (time-zone :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "timeZone")
                                     (vip-ids :target-type string-list
                                      :member-name "vipIds")
                                     (odb-network-id :target-type
                                      resource-id-or-arn :member-name
                                      "odbNetworkId")
                                     (percent-progress :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "percentProgress")
                                     (compute-model :target-type compute-model
                                      :member-name "computeModel"))
                                    (:shape-name "CloudVmClusterSummary"))

(smithy/sdk/shapes:define-enum compute-model
    common-lisp:nil
  (:ecpu "ECPU")
  (:ocpu "OCPU"))

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

(smithy/sdk/shapes:define-input create-cloud-autonomous-vm-cluster-input
                                common-lisp:nil
                                ((cloud-exadata-infrastructure-id :target-type
                                  resource-id-or-arn :required common-lisp:t
                                  :member-name "cloudExadataInfrastructureId")
                                 (odb-network-id :target-type
                                  resource-id-or-arn :required common-lisp:t
                                  :member-name "odbNetworkId")
                                 (display-name :target-type
                                  resource-display-name :required common-lisp:t
                                  :member-name "displayName")
                                 (client-token :target-type
                                  general-input-string :member-name
                                  "clientToken")
                                 (autonomous-data-storage-size-in-tbs
                                  :target-type smithy/sdk/smithy-types:double
                                  :required common-lisp:t :member-name
                                  "autonomousDataStorageSizeInTBs")
                                 (cpu-core-count-per-node :target-type
                                  smithy/sdk/smithy-types:integer :required
                                  common-lisp:t :member-name
                                  "cpuCoreCountPerNode")
                                 (db-servers :target-type string-list
                                  :member-name "dbServers")
                                 (description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "description")
                                 (is-mtls-enabled-vm-cluster :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "isMtlsEnabledVmCluster")
                                 (license-model :target-type license-model
                                  :member-name "licenseModel")
                                 (maintenance-window :target-type
                                  maintenance-window :member-name
                                  "maintenanceWindow")
                                 (memory-per-oracle-compute-unit-in-gbs
                                  :target-type smithy/sdk/smithy-types:integer
                                  :required common-lisp:t :member-name
                                  "memoryPerOracleComputeUnitInGBs")
                                 (scan-listener-port-non-tls :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "scanListenerPortNonTls")
                                 (scan-listener-port-tls :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "scanListenerPortTls")
                                 (tags :target-type request-tag-map
                                  :member-name "tags")
                                 (time-zone :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "timeZone")
                                 (total-container-databases :target-type
                                  smithy/sdk/smithy-types:integer :required
                                  common-lisp:t :member-name
                                  "totalContainerDatabases"))
                                (:shape-name
                                 "CreateCloudAutonomousVmClusterInput"))

(smithy/sdk/shapes:define-output create-cloud-autonomous-vm-cluster-output
                                 common-lisp:nil
                                 ((display-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "displayName")
                                  (status :target-type resource-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (cloud-autonomous-vm-cluster-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "cloudAutonomousVmClusterId"))
                                 (:shape-name
                                  "CreateCloudAutonomousVmClusterOutput"))

(smithy/sdk/shapes:define-input create-cloud-exadata-infrastructure-input
                                common-lisp:nil
                                ((display-name :target-type
                                  resource-display-name :required common-lisp:t
                                  :member-name "displayName")
                                 (shape :target-type general-input-string
                                  :required common-lisp:t :member-name "shape")
                                 (availability-zone :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "availabilityZone")
                                 (availability-zone-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "availabilityZoneId")
                                 (tags :target-type request-tag-map
                                  :member-name "tags")
                                 (compute-count :target-type
                                  smithy/sdk/smithy-types:integer :required
                                  common-lisp:t :member-name "computeCount")
                                 (customer-contacts-to-send-to-oci :target-type
                                  customer-contacts :member-name
                                  "customerContactsToSendToOCI")
                                 (maintenance-window :target-type
                                  maintenance-window :member-name
                                  "maintenanceWindow")
                                 (storage-count :target-type
                                  smithy/sdk/smithy-types:integer :required
                                  common-lisp:t :member-name "storageCount")
                                 (client-token :target-type
                                  general-input-string :member-name
                                  "clientToken")
                                 (database-server-type :target-type
                                  general-input-string :member-name
                                  "databaseServerType")
                                 (storage-server-type :target-type
                                  general-input-string :member-name
                                  "storageServerType"))
                                (:shape-name
                                 "CreateCloudExadataInfrastructureInput"))

(smithy/sdk/shapes:define-output create-cloud-exadata-infrastructure-output
                                 common-lisp:nil
                                 ((display-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "displayName")
                                  (status :target-type resource-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (cloud-exadata-infrastructure-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "cloudExadataInfrastructureId"))
                                 (:shape-name
                                  "CreateCloudExadataInfrastructureOutput"))

(smithy/sdk/shapes:define-input create-cloud-vm-cluster-input common-lisp:nil
                                ((cloud-exadata-infrastructure-id :target-type
                                  resource-id-or-arn :required common-lisp:t
                                  :member-name "cloudExadataInfrastructureId")
                                 (cpu-core-count :target-type
                                  smithy/sdk/smithy-types:integer :required
                                  common-lisp:t :member-name "cpuCoreCount")
                                 (display-name :target-type
                                  resource-display-name :required common-lisp:t
                                  :member-name "displayName")
                                 (gi-version :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "giVersion")
                                 (hostname :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "hostname")
                                 (ssh-public-keys :target-type string-list
                                  :required common-lisp:t :member-name
                                  "sshPublicKeys")
                                 (odb-network-id :target-type
                                  resource-id-or-arn :required common-lisp:t
                                  :member-name "odbNetworkId")
                                 (cluster-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "clusterName")
                                 (data-collection-options :target-type
                                  data-collection-options :member-name
                                  "dataCollectionOptions")
                                 (data-storage-size-in-tbs :target-type
                                  smithy/sdk/smithy-types:double :member-name
                                  "dataStorageSizeInTBs")
                                 (db-node-storage-size-in-gbs :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "dbNodeStorageSizeInGBs")
                                 (db-servers :target-type string-list
                                  :member-name "dbServers")
                                 (tags :target-type request-tag-map
                                  :member-name "tags")
                                 (is-local-backup-enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "isLocalBackupEnabled")
                                 (is-sparse-diskgroup-enabled :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "isSparseDiskgroupEnabled")
                                 (license-model :target-type license-model
                                  :member-name "licenseModel")
                                 (memory-size-in-gbs :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "memorySizeInGBs")
                                 (system-version :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "systemVersion")
                                 (time-zone :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "timeZone")
                                 (client-token :target-type
                                  general-input-string :member-name
                                  "clientToken")
                                 (scan-listener-port-tcp :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "scanListenerPortTcp"))
                                (:shape-name "CreateCloudVmClusterInput"))

(smithy/sdk/shapes:define-output create-cloud-vm-cluster-output common-lisp:nil
                                 ((display-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "displayName")
                                  (status :target-type resource-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (cloud-vm-cluster-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "cloudVmClusterId"))
                                 (:shape-name "CreateCloudVmClusterOutput"))

(smithy/sdk/shapes:define-input create-odb-network-input common-lisp:nil
                                ((display-name :target-type
                                  resource-display-name :required common-lisp:t
                                  :member-name "displayName")
                                 (availability-zone :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "availabilityZone")
                                 (availability-zone-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "availabilityZoneId")
                                 (client-subnet-cidr :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name
                                  "clientSubnetCidr")
                                 (backup-subnet-cidr :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "backupSubnetCidr")
                                 (custom-domain-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "customDomainName")
                                 (default-dns-prefix :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "defaultDnsPrefix")
                                 (client-token :target-type
                                  general-input-string :member-name
                                  "clientToken")
                                 (s3access :target-type access :member-name
                                  "s3Access")
                                 (zero-etl-access :target-type access
                                  :member-name "zeroEtlAccess")
                                 (s3policy-document :target-type
                                  policy-document :member-name
                                  "s3PolicyDocument")
                                 (tags :target-type request-tag-map
                                  :member-name "tags"))
                                (:shape-name "CreateOdbNetworkInput"))

(smithy/sdk/shapes:define-output create-odb-network-output common-lisp:nil
                                 ((display-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "displayName")
                                  (status :target-type resource-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (odb-network-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "odbNetworkId"))
                                 (:shape-name "CreateOdbNetworkOutput"))

(smithy/sdk/shapes:define-input create-odb-peering-connection-input
                                common-lisp:nil
                                ((odb-network-id :target-type
                                  resource-id-or-arn :required common-lisp:t
                                  :member-name "odbNetworkId")
                                 (peer-network-id :target-type
                                  resource-id-or-arn :required common-lisp:t
                                  :member-name "peerNetworkId")
                                 (display-name :target-type
                                  resource-display-name :member-name
                                  "displayName")
                                 (client-token :target-type
                                  general-input-string :member-name
                                  "clientToken")
                                 (tags :target-type request-tag-map
                                  :member-name "tags"))
                                (:shape-name "CreateOdbPeeringConnectionInput"))

(smithy/sdk/shapes:define-output create-odb-peering-connection-output
                                 common-lisp:nil
                                 ((display-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "displayName")
                                  (status :target-type resource-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (odb-peering-connection-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "odbPeeringConnectionId"))
                                 (:shape-name
                                  "CreateOdbPeeringConnectionOutput"))

(smithy/sdk/shapes:define-structure customer-contact common-lisp:nil
                                    ((email :target-type sensitive-string
                                      :member-name "email"))
                                    (:shape-name "CustomerContact"))

(smithy/sdk/shapes:define-list customer-contacts :member customer-contact)

(smithy/sdk/shapes:define-structure data-collection-options common-lisp:nil
                                    ((is-diagnostics-events-enabled
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "isDiagnosticsEventsEnabled")
                                     (is-health-monitoring-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isHealthMonitoringEnabled")
                                     (is-incident-logs-enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "isIncidentLogsEnabled"))
                                    (:shape-name "DataCollectionOptions"))

(smithy/sdk/shapes:define-structure day-of-week common-lisp:nil
                                    ((name :target-type day-of-week-name
                                      :member-name "name"))
                                    (:shape-name "DayOfWeek"))

(smithy/sdk/shapes:define-enum day-of-week-name
    common-lisp:nil
  (:monday "MONDAY")
  (:tuesday "TUESDAY")
  (:wednesday "WEDNESDAY")
  (:thursday "THURSDAY")
  (:friday "FRIDAY")
  (:saturday "SATURDAY")
  (:sunday "SUNDAY"))

(smithy/sdk/shapes:define-list days-of-week :member day-of-week)

(smithy/sdk/shapes:define-structure db-iorm-config common-lisp:nil
                                    ((db-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "dbName")
                                     (flash-cache-limit :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "flashCacheLimit")
                                     (share :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "share"))
                                    (:shape-name "DbIormConfig"))

(smithy/sdk/shapes:define-list db-iorm-config-list :member db-iorm-config)

(smithy/sdk/shapes:define-structure db-node common-lisp:nil
                                    ((db-node-id :target-type resource-id
                                      :member-name "dbNodeId")
                                     (db-node-arn :target-type resource-arn
                                      :member-name "dbNodeArn")
                                     (status :target-type
                                      db-node-resource-status :member-name
                                      "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (additional-details :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "additionalDetails")
                                     (backup-ip-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "backupIpId")
                                     (backup-vnic2id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "backupVnic2Id")
                                     (backup-vnic-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "backupVnicId")
                                     (cpu-core-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "cpuCoreCount")
                                     (db-node-storage-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "dbNodeStorageSizeInGBs")
                                     (db-server-id :target-type resource-id
                                      :member-name "dbServerId")
                                     (db-system-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "dbSystemId")
                                     (fault-domain :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "faultDomain")
                                     (host-ip-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "hostIpId")
                                     (hostname :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "hostname")
                                     (ocid :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ocid")
                                     (oci-resource-anchor-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociResourceAnchorName")
                                     (maintenance-type :target-type
                                      db-node-maintenance-type :member-name
                                      "maintenanceType")
                                     (memory-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "memorySizeInGBs")
                                     (software-storage-size-in-gb :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "softwareStorageSizeInGB")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (time-maintenance-window-end :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "timeMaintenanceWindowEnd")
                                     (time-maintenance-window-start
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "timeMaintenanceWindowStart")
                                     (total-cpu-core-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalCpuCoreCount")
                                     (vnic2id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "vnic2Id")
                                     (vnic-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "vnicId")
                                     (private-ip-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "privateIpAddress")
                                     (floating-ip-address :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "floatingIpAddress"))
                                    (:shape-name "DbNode"))

(smithy/sdk/shapes:define-list db-node-list :member db-node-summary)

(smithy/sdk/shapes:define-enum db-node-maintenance-type
    common-lisp:nil
  (:vmdb-reboot-migration "VMDB_REBOOT_MIGRATION"))

common-lisp:nil

(smithy/sdk/shapes:define-enum db-node-resource-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:failed "FAILED")
  (:provisioning "PROVISIONING")
  (:terminated "TERMINATED")
  (:terminating "TERMINATING")
  (:updating "UPDATING")
  (:stopping "STOPPING")
  (:stopped "STOPPED")
  (:starting "STARTING"))

(smithy/sdk/shapes:define-structure db-node-summary common-lisp:nil
                                    ((db-node-id :target-type resource-id
                                      :member-name "dbNodeId")
                                     (db-node-arn :target-type resource-arn
                                      :member-name "dbNodeArn")
                                     (status :target-type
                                      db-node-resource-status :member-name
                                      "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (additional-details :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "additionalDetails")
                                     (backup-ip-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "backupIpId")
                                     (backup-vnic2id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "backupVnic2Id")
                                     (backup-vnic-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "backupVnicId")
                                     (cpu-core-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "cpuCoreCount")
                                     (db-node-storage-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "dbNodeStorageSizeInGBs")
                                     (db-server-id :target-type resource-id
                                      :member-name "dbServerId")
                                     (db-system-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "dbSystemId")
                                     (fault-domain :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "faultDomain")
                                     (host-ip-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "hostIpId")
                                     (hostname :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "hostname")
                                     (ocid :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ocid")
                                     (oci-resource-anchor-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociResourceAnchorName")
                                     (maintenance-type :target-type
                                      db-node-maintenance-type :member-name
                                      "maintenanceType")
                                     (memory-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "memorySizeInGBs")
                                     (software-storage-size-in-gb :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "softwareStorageSizeInGB")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (time-maintenance-window-end :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "timeMaintenanceWindowEnd")
                                     (time-maintenance-window-start
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "timeMaintenanceWindowStart")
                                     (total-cpu-core-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalCpuCoreCount")
                                     (vnic2id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "vnic2Id")
                                     (vnic-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "vnicId"))
                                    (:shape-name "DbNodeSummary"))

(smithy/sdk/shapes:define-structure db-server common-lisp:nil
                                    ((db-server-id :target-type resource-id
                                      :member-name "dbServerId")
                                     (status :target-type resource-status
                                      :member-name "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (cpu-core-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "cpuCoreCount")
                                     (db-node-storage-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "dbNodeStorageSizeInGBs")
                                     (db-server-patching-details :target-type
                                      db-server-patching-details :member-name
                                      "dbServerPatchingDetails")
                                     (display-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "displayName")
                                     (exadata-infrastructure-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "exadataInfrastructureId")
                                     (ocid :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ocid")
                                     (oci-resource-anchor-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociResourceAnchorName")
                                     (max-cpu-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxCpuCount")
                                     (max-db-node-storage-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxDbNodeStorageInGBs")
                                     (max-memory-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxMemoryInGBs")
                                     (memory-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "memorySizeInGBs")
                                     (shape :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "shape")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (vm-cluster-ids :target-type string-list
                                      :member-name "vmClusterIds")
                                     (compute-model :target-type compute-model
                                      :member-name "computeModel")
                                     (autonomous-vm-cluster-ids :target-type
                                      string-list :member-name
                                      "autonomousVmClusterIds")
                                     (autonomous-virtual-machine-ids
                                      :target-type string-list :member-name
                                      "autonomousVirtualMachineIds"))
                                    (:shape-name "DbServer"))

(smithy/sdk/shapes:define-list db-server-list :member db-server-summary)

(smithy/sdk/shapes:define-structure db-server-patching-details common-lisp:nil
                                    ((estimated-patch-duration :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "estimatedPatchDuration")
                                     (patching-status :target-type
                                      db-server-patching-status :member-name
                                      "patchingStatus")
                                     (time-patching-ended :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "timePatchingEnded")
                                     (time-patching-started :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "timePatchingStarted"))
                                    (:shape-name "DbServerPatchingDetails"))

(smithy/sdk/shapes:define-enum db-server-patching-status
    common-lisp:nil
  (:complete "COMPLETE")
  (:failed "FAILED")
  (:maintenance-in-progress "MAINTENANCE_IN_PROGRESS")
  (:scheduled "SCHEDULED"))

(smithy/sdk/shapes:define-structure db-server-summary common-lisp:nil
                                    ((db-server-id :target-type resource-id
                                      :member-name "dbServerId")
                                     (status :target-type resource-status
                                      :member-name "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (cpu-core-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "cpuCoreCount")
                                     (db-node-storage-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "dbNodeStorageSizeInGBs")
                                     (db-server-patching-details :target-type
                                      db-server-patching-details :member-name
                                      "dbServerPatchingDetails")
                                     (display-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "displayName")
                                     (exadata-infrastructure-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "exadataInfrastructureId")
                                     (ocid :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ocid")
                                     (oci-resource-anchor-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociResourceAnchorName")
                                     (max-cpu-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxCpuCount")
                                     (max-db-node-storage-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxDbNodeStorageInGBs")
                                     (max-memory-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxMemoryInGBs")
                                     (memory-size-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "memorySizeInGBs")
                                     (shape :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "shape")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (vm-cluster-ids :target-type string-list
                                      :member-name "vmClusterIds")
                                     (compute-model :target-type compute-model
                                      :member-name "computeModel")
                                     (autonomous-vm-cluster-ids :target-type
                                      string-list :member-name
                                      "autonomousVmClusterIds")
                                     (autonomous-virtual-machine-ids
                                      :target-type string-list :member-name
                                      "autonomousVirtualMachineIds"))
                                    (:shape-name "DbServerSummary"))

(smithy/sdk/shapes:define-list db-system-shape-list :member
                               db-system-shape-summary)

(smithy/sdk/shapes:define-structure db-system-shape-summary common-lisp:nil
                                    ((available-core-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "availableCoreCount")
                                     (available-core-count-per-node
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "availableCoreCountPerNode")
                                     (available-data-storage-in-tbs
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "availableDataStorageInTBs")
                                     (available-data-storage-per-server-in-tbs
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "availableDataStoragePerServerInTBs")
                                     (available-db-node-per-node-in-gbs
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "availableDbNodePerNodeInGBs")
                                     (available-db-node-storage-in-gbs
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "availableDbNodeStorageInGBs")
                                     (available-memory-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "availableMemoryInGBs")
                                     (available-memory-per-node-in-gbs
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "availableMemoryPerNodeInGBs")
                                     (core-count-increment :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "coreCountIncrement")
                                     (max-storage-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maxStorageCount")
                                     (maximum-node-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "maximumNodeCount")
                                     (min-core-count-per-node :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "minCoreCountPerNode")
                                     (min-data-storage-in-tbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "minDataStorageInTBs")
                                     (min-db-node-storage-per-node-in-gbs
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name
                                      "minDbNodeStoragePerNodeInGBs")
                                     (min-memory-per-node-in-gbs :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "minMemoryPerNodeInGBs")
                                     (min-storage-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "minStorageCount")
                                     (minimum-core-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "minimumCoreCount")
                                     (minimum-node-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "minimumNodeCount")
                                     (runtime-minimum-core-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "runtimeMinimumCoreCount")
                                     (shape-family :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "shapeFamily")
                                     (shape-type :target-type shape-type
                                      :member-name "shapeType")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (compute-model :target-type compute-model
                                      :member-name "computeModel")
                                     (are-server-types-supported :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "areServerTypesSupported"))
                                    (:shape-name "DbSystemShapeSummary"))

(smithy/sdk/shapes:define-input delete-cloud-autonomous-vm-cluster-input
                                common-lisp:nil
                                ((cloud-autonomous-vm-cluster-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "cloudAutonomousVmClusterId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteCloudAutonomousVmClusterInput"))

(smithy/sdk/shapes:define-output delete-cloud-autonomous-vm-cluster-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteCloudAutonomousVmClusterOutput"))

(smithy/sdk/shapes:define-input delete-cloud-exadata-infrastructure-input
                                common-lisp:nil
                                ((cloud-exadata-infrastructure-id :target-type
                                  resource-id-or-arn :required common-lisp:t
                                  :member-name "cloudExadataInfrastructureId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteCloudExadataInfrastructureInput"))

(smithy/sdk/shapes:define-output delete-cloud-exadata-infrastructure-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteCloudExadataInfrastructureOutput"))

(smithy/sdk/shapes:define-input delete-cloud-vm-cluster-input common-lisp:nil
                                ((cloud-vm-cluster-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "cloudVmClusterId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteCloudVmClusterInput"))

(smithy/sdk/shapes:define-output delete-cloud-vm-cluster-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteCloudVmClusterOutput"))

(smithy/sdk/shapes:define-input delete-odb-network-input common-lisp:nil
                                ((odb-network-id :target-type
                                  resource-id-or-arn :required common-lisp:t
                                  :member-name "odbNetworkId" :http-label
                                  common-lisp:t)
                                 (delete-associated-resources :target-type
                                  smithy/sdk/smithy-types:boolean :required
                                  common-lisp:t :member-name
                                  "deleteAssociatedResources"))
                                (:shape-name "DeleteOdbNetworkInput"))

(smithy/sdk/shapes:define-output delete-odb-network-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteOdbNetworkOutput"))

(smithy/sdk/shapes:define-input delete-odb-peering-connection-input
                                common-lisp:nil
                                ((odb-peering-connection-id :target-type
                                  resource-id-or-arn :required common-lisp:t
                                  :member-name "odbPeeringConnectionId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteOdbPeeringConnectionInput"))

(smithy/sdk/shapes:define-output delete-odb-peering-connection-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteOdbPeeringConnectionOutput"))

(smithy/sdk/shapes:define-enum disk-redundancy
    common-lisp:nil
  (:high "HIGH")
  (:normal "NORMAL"))

(smithy/sdk/shapes:define-structure exadata-iorm-config common-lisp:nil
                                    ((db-plans :target-type db-iorm-config-list
                                      :member-name "dbPlans")
                                     (lifecycle-details :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "lifecycleDetails")
                                     (lifecycle-state :target-type
                                      iorm-lifecycle-state :member-name
                                      "lifecycleState")
                                     (objective :target-type objective
                                      :member-name "objective"))
                                    (:shape-name "ExadataIormConfig"))

(smithy/sdk/shapes:define-type general-input-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-cloud-autonomous-vm-cluster-input
                                common-lisp:nil
                                ((cloud-autonomous-vm-cluster-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "cloudAutonomousVmClusterId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetCloudAutonomousVmClusterInput"))

(smithy/sdk/shapes:define-output get-cloud-autonomous-vm-cluster-output
                                 common-lisp:nil
                                 ((cloud-autonomous-vm-cluster :target-type
                                   cloud-autonomous-vm-cluster :member-name
                                   "cloudAutonomousVmCluster"))
                                 (:shape-name
                                  "GetCloudAutonomousVmClusterOutput"))

(smithy/sdk/shapes:define-input get-cloud-exadata-infrastructure-input
                                common-lisp:nil
                                ((cloud-exadata-infrastructure-id :target-type
                                  resource-id-or-arn :required common-lisp:t
                                  :member-name "cloudExadataInfrastructureId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetCloudExadataInfrastructureInput"))

(smithy/sdk/shapes:define-output get-cloud-exadata-infrastructure-output
                                 common-lisp:nil
                                 ((cloud-exadata-infrastructure :target-type
                                   cloud-exadata-infrastructure :member-name
                                   "cloudExadataInfrastructure"))
                                 (:shape-name
                                  "GetCloudExadataInfrastructureOutput"))

(smithy/sdk/shapes:define-input
 get-cloud-exadata-infrastructure-unallocated-resources-input common-lisp:nil
 ((cloud-exadata-infrastructure-id :target-type resource-id-or-arn :required
   common-lisp:t :member-name "cloudExadataInfrastructureId" :http-label
   common-lisp:t)
  (db-servers :target-type string-list :member-name "dbServers"))
 (:shape-name "GetCloudExadataInfrastructureUnallocatedResourcesInput"))

(smithy/sdk/shapes:define-output
 get-cloud-exadata-infrastructure-unallocated-resources-output common-lisp:nil
 ((cloud-exadata-infrastructure-unallocated-resources :target-type
   cloud-exadata-infrastructure-unallocated-resources :member-name
   "cloudExadataInfrastructureUnallocatedResources"))
 (:shape-name "GetCloudExadataInfrastructureUnallocatedResourcesOutput"))

(smithy/sdk/shapes:define-input get-cloud-vm-cluster-input common-lisp:nil
                                ((cloud-vm-cluster-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "cloudVmClusterId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetCloudVmClusterInput"))

(smithy/sdk/shapes:define-output get-cloud-vm-cluster-output common-lisp:nil
                                 ((cloud-vm-cluster :target-type
                                   cloud-vm-cluster :member-name
                                   "cloudVmCluster"))
                                 (:shape-name "GetCloudVmClusterOutput"))

(smithy/sdk/shapes:define-input get-db-node-input common-lisp:nil
                                ((cloud-vm-cluster-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "cloudVmClusterId" :http-label common-lisp:t)
                                 (db-node-id :target-type resource-id :required
                                  common-lisp:t :member-name "dbNodeId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDbNodeInput"))

(smithy/sdk/shapes:define-output get-db-node-output common-lisp:nil
                                 ((db-node :target-type db-node :member-name
                                   "dbNode"))
                                 (:shape-name "GetDbNodeOutput"))

(smithy/sdk/shapes:define-input get-db-server-input common-lisp:nil
                                ((cloud-exadata-infrastructure-id :target-type
                                  resource-id-or-arn :required common-lisp:t
                                  :member-name "cloudExadataInfrastructureId"
                                  :http-label common-lisp:t)
                                 (db-server-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "dbServerId" :http-label common-lisp:t))
                                (:shape-name "GetDbServerInput"))

(smithy/sdk/shapes:define-output get-db-server-output common-lisp:nil
                                 ((db-server :target-type db-server
                                   :member-name "dbServer"))
                                 (:shape-name "GetDbServerOutput"))

(smithy/sdk/shapes:define-input get-oci-onboarding-status-input common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetOciOnboardingStatusInput"))

(smithy/sdk/shapes:define-output get-oci-onboarding-status-output
                                 common-lisp:nil
                                 ((status :target-type oci-onboarding-status
                                   :member-name "status")
                                  (existing-tenancy-activation-link
                                   :target-type smithy/sdk/smithy-types:string
                                   :member-name
                                   "existingTenancyActivationLink")
                                  (new-tenancy-activation-link :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "newTenancyActivationLink"))
                                 (:shape-name "GetOciOnboardingStatusOutput"))

(smithy/sdk/shapes:define-input get-odb-network-input common-lisp:nil
                                ((odb-network-id :target-type
                                  resource-id-or-arn :required common-lisp:t
                                  :member-name "odbNetworkId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetOdbNetworkInput"))

(smithy/sdk/shapes:define-output get-odb-network-output common-lisp:nil
                                 ((odb-network :target-type odb-network
                                   :member-name "odbNetwork"))
                                 (:shape-name "GetOdbNetworkOutput"))

(smithy/sdk/shapes:define-input get-odb-peering-connection-input
                                common-lisp:nil
                                ((odb-peering-connection-id :target-type
                                  resource-id-or-arn :required common-lisp:t
                                  :member-name "odbPeeringConnectionId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetOdbPeeringConnectionInput"))

(smithy/sdk/shapes:define-output get-odb-peering-connection-output
                                 common-lisp:nil
                                 ((odb-peering-connection :target-type
                                   odb-peering-connection :member-name
                                   "odbPeeringConnection"))
                                 (:shape-name "GetOdbPeeringConnectionOutput"))

(smithy/sdk/shapes:define-list gi-version-list :member gi-version-summary)

(smithy/sdk/shapes:define-structure gi-version-summary common-lisp:nil
                                    ((version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "version"))
                                    (:shape-name "GiVersionSummary"))

(smithy/sdk/shapes:define-list hours-of-day :member
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input initialize-service-input common-lisp:nil
                                common-lisp:nil
                                (:shape-name "InitializeServiceInput"))

(smithy/sdk/shapes:define-output initialize-service-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "InitializeServiceOutput"))

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

(smithy/sdk/shapes:define-enum iorm-lifecycle-state
    common-lisp:nil
  (:bootstrapping "BOOTSTRAPPING")
  (:disabled "DISABLED")
  (:enabled "ENABLED")
  (:failed "FAILED")
  (:updating "UPDATING"))

(smithy/sdk/shapes:define-enum license-model
    common-lisp:nil
  (:bring-your-own-license "BRING_YOUR_OWN_LICENSE")
  (:license-included "LICENSE_INCLUDED"))

(smithy/sdk/shapes:define-input list-autonomous-virtual-machines-input
                                common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (cloud-autonomous-vm-cluster-id :target-type
                                  resource-id :required common-lisp:t
                                  :member-name "cloudAutonomousVmClusterId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "ListAutonomousVirtualMachinesInput"))

(smithy/sdk/shapes:define-output list-autonomous-virtual-machines-output
                                 common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (autonomous-virtual-machines :target-type
                                   autonomous-virtual-machine-list :required
                                   common-lisp:t :member-name
                                   "autonomousVirtualMachines"))
                                 (:shape-name
                                  "ListAutonomousVirtualMachinesOutput"))

(smithy/sdk/shapes:define-input list-cloud-autonomous-vm-clusters-input
                                common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (cloud-exadata-infrastructure-id :target-type
                                  resource-id-or-arn :member-name
                                  "cloudExadataInfrastructureId"))
                                (:shape-name
                                 "ListCloudAutonomousVmClustersInput"))

(smithy/sdk/shapes:define-output list-cloud-autonomous-vm-clusters-output
                                 common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (cloud-autonomous-vm-clusters :target-type
                                   cloud-autonomous-vm-cluster-list :required
                                   common-lisp:t :member-name
                                   "cloudAutonomousVmClusters"))
                                 (:shape-name
                                  "ListCloudAutonomousVmClustersOutput"))

(smithy/sdk/shapes:define-input list-cloud-exadata-infrastructures-input
                                common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name
                                 "ListCloudExadataInfrastructuresInput"))

(smithy/sdk/shapes:define-output list-cloud-exadata-infrastructures-output
                                 common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (cloud-exadata-infrastructures :target-type
                                   cloud-exadata-infrastructure-list :required
                                   common-lisp:t :member-name
                                   "cloudExadataInfrastructures"))
                                 (:shape-name
                                  "ListCloudExadataInfrastructuresOutput"))

(smithy/sdk/shapes:define-input list-cloud-vm-clusters-input common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (cloud-exadata-infrastructure-id :target-type
                                  resource-id-or-arn :member-name
                                  "cloudExadataInfrastructureId"))
                                (:shape-name "ListCloudVmClustersInput"))

(smithy/sdk/shapes:define-output list-cloud-vm-clusters-output common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (cloud-vm-clusters :target-type
                                   cloud-vm-cluster-list :required
                                   common-lisp:t :member-name
                                   "cloudVmClusters"))
                                 (:shape-name "ListCloudVmClustersOutput"))

(smithy/sdk/shapes:define-input list-db-nodes-input common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (cloud-vm-cluster-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "cloudVmClusterId" :http-label
                                  common-lisp:t))
                                (:shape-name "ListDbNodesInput"))

(smithy/sdk/shapes:define-output list-db-nodes-output common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (db-nodes :target-type db-node-list :required
                                   common-lisp:t :member-name "dbNodes"))
                                 (:shape-name "ListDbNodesOutput"))

(smithy/sdk/shapes:define-input list-db-servers-input common-lisp:nil
                                ((cloud-exadata-infrastructure-id :target-type
                                  resource-id-or-arn :required common-lisp:t
                                  :member-name "cloudExadataInfrastructureId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "ListDbServersInput"))

(smithy/sdk/shapes:define-output list-db-servers-output common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (db-servers :target-type db-server-list
                                   :required common-lisp:t :member-name
                                   "dbServers"))
                                 (:shape-name "ListDbServersOutput"))

(smithy/sdk/shapes:define-input list-db-system-shapes-input common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (availability-zone :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "availabilityZone")
                                 (availability-zone-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "availabilityZoneId"))
                                (:shape-name "ListDbSystemShapesInput"))

(smithy/sdk/shapes:define-output list-db-system-shapes-output common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (db-system-shapes :target-type
                                   db-system-shape-list :required common-lisp:t
                                   :member-name "dbSystemShapes"))
                                 (:shape-name "ListDbSystemShapesOutput"))

(smithy/sdk/shapes:define-input list-gi-versions-input common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (shape :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "shape"))
                                (:shape-name "ListGiVersionsInput"))

(smithy/sdk/shapes:define-output list-gi-versions-output common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (gi-versions :target-type gi-version-list
                                   :required common-lisp:t :member-name
                                   "giVersions"))
                                 (:shape-name "ListGiVersionsOutput"))

(smithy/sdk/shapes:define-input list-odb-networks-input common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken"))
                                (:shape-name "ListOdbNetworksInput"))

(smithy/sdk/shapes:define-output list-odb-networks-output common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (odb-networks :target-type odb-network-list
                                   :required common-lisp:t :member-name
                                   "odbNetworks"))
                                 (:shape-name "ListOdbNetworksOutput"))

(smithy/sdk/shapes:define-input list-odb-peering-connections-input
                                common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (odb-network-id :target-type
                                  resource-id-or-arn :member-name
                                  "odbNetworkId"))
                                (:shape-name "ListOdbPeeringConnectionsInput"))

(smithy/sdk/shapes:define-output list-odb-peering-connections-output
                                 common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (odb-peering-connections :target-type
                                   odb-peering-connection-list :required
                                   common-lisp:t :member-name
                                   "odbPeeringConnections"))
                                 (:shape-name
                                  "ListOdbPeeringConnectionsOutput"))

(smithy/sdk/shapes:define-input list-system-versions-input common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken" :http-query "nextToken")
                                 (gi-version :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "giVersion")
                                 (shape :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "shape"))
                                (:shape-name "ListSystemVersionsInput"))

(smithy/sdk/shapes:define-output list-system-versions-output common-lisp:nil
                                 ((next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken")
                                  (system-versions :target-type
                                   system-version-list :required common-lisp:t
                                   :member-name "systemVersions"))
                                 (:shape-name "ListSystemVersionsOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type response-tag-map
                                   :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure maintenance-window common-lisp:nil
                                    ((custom-action-timeout-in-mins
                                      :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "customActionTimeoutInMins")
                                     (days-of-week :target-type days-of-week
                                      :member-name "daysOfWeek")
                                     (hours-of-day :target-type hours-of-day
                                      :member-name "hoursOfDay")
                                     (is-custom-action-timeout-enabled
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "isCustomActionTimeoutEnabled")
                                     (lead-time-in-weeks :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "leadTimeInWeeks")
                                     (months :target-type months :member-name
                                      "months")
                                     (patching-mode :target-type
                                      patching-mode-type :member-name
                                      "patchingMode")
                                     (preference :target-type preference-type
                                      :member-name "preference")
                                     (skip-ru :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "skipRu")
                                     (weeks-of-month :target-type
                                      weeks-of-month :member-name
                                      "weeksOfMonth"))
                                    (:shape-name "MaintenanceWindow"))

(smithy/sdk/shapes:define-enum managed-resource-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:enabling "ENABLING")
  (:disabled "DISABLED")
  (:disabling "DISABLING"))

(smithy/sdk/shapes:define-structure managed-s3backup-access common-lisp:nil
                                    ((status :target-type
                                      managed-resource-status :member-name
                                      "status")
                                     (ipv4addresses :target-type string-list
                                      :member-name "ipv4Addresses"))
                                    (:shape-name "ManagedS3BackupAccess"))

(smithy/sdk/shapes:define-structure managed-services common-lisp:nil
                                    ((service-network-arn :target-type
                                      resource-arn :member-name
                                      "serviceNetworkArn")
                                     (resource-gateway-arn :target-type
                                      resource-arn :member-name
                                      "resourceGatewayArn")
                                     (managed-services-ipv4cidrs :target-type
                                      string-list :member-name
                                      "managedServicesIpv4Cidrs")
                                     (service-network-endpoint :target-type
                                      service-network-endpoint :member-name
                                      "serviceNetworkEndpoint")
                                     (managed-s3backup-access :target-type
                                      managed-s3backup-access :member-name
                                      "managedS3BackupAccess")
                                     (zero-etl-access :target-type
                                      zero-etl-access :member-name
                                      "zeroEtlAccess")
                                     (s3access :target-type s3access
                                      :member-name "s3Access"))
                                    (:shape-name "ManagedServices"))

(smithy/sdk/shapes:define-structure month common-lisp:nil
                                    ((name :target-type month-name :member-name
                                      "name"))
                                    (:shape-name "Month"))

(smithy/sdk/shapes:define-enum month-name
    common-lisp:nil
  (:january "JANUARY")
  (:february "FEBRUARY")
  (:march "MARCH")
  (:april "APRIL")
  (:may "MAY")
  (:june "JUNE")
  (:july "JULY")
  (:august "AUGUST")
  (:september "SEPTEMBER")
  (:october "OCTOBER")
  (:november "NOVEMBER")
  (:december "DECEMBER"))

(smithy/sdk/shapes:define-list months :member month)

(smithy/sdk/shapes:define-enum objective
    common-lisp:nil
  (:auto "AUTO")
  (:balanced "BALANCED")
  (:basic "BASIC")
  (:high-throughput "HIGH_THROUGHPUT")
  (:low-latency "LOW_LATENCY"))

(smithy/sdk/shapes:define-structure oci-dns-forwarding-config common-lisp:nil
                                    ((domain-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "domainName")
                                     (oci-dns-listener-ip :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociDnsListenerIp"))
                                    (:shape-name "OciDnsForwardingConfig"))

(smithy/sdk/shapes:define-list oci-dns-forwarding-config-list :member
                               oci-dns-forwarding-config)

(smithy/sdk/shapes:define-enum oci-onboarding-status
    common-lisp:nil
  (:not-started "NOT_STARTED")
  (:pending-link-generation "PENDING_LINK_GENERATION")
  (:pending-customer-action "PENDING_CUSTOMER_ACTION")
  (:pending-initialization "PENDING_INITIALIZATION")
  (:activating "ACTIVATING")
  (:active-in-home-region "ACTIVE_IN_HOME_REGION")
  (:active "ACTIVE")
  (:active-limited "ACTIVE_LIMITED")
  (:failed "FAILED")
  (:public-offer-unsupported "PUBLIC_OFFER_UNSUPPORTED")
  (:suspended "SUSPENDED")
  (:canceled "CANCELED"))

(smithy/sdk/shapes:define-structure odb-network common-lisp:nil
                                    ((odb-network-id :target-type
                                      resource-id-or-arn :required
                                      common-lisp:t :member-name
                                      "odbNetworkId")
                                     (display-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "displayName")
                                     (status :target-type resource-status
                                      :member-name "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (odb-network-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "odbNetworkArn")
                                     (availability-zone :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "availabilityZone")
                                     (availability-zone-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "availabilityZoneId")
                                     (client-subnet-cidr :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientSubnetCidr")
                                     (backup-subnet-cidr :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "backupSubnetCidr")
                                     (custom-domain-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "customDomainName")
                                     (default-dns-prefix :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "defaultDnsPrefix")
                                     (peered-cidrs :target-type string-list
                                      :member-name "peeredCidrs")
                                     (oci-network-anchor-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociNetworkAnchorId")
                                     (oci-network-anchor-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociNetworkAnchorUrl")
                                     (oci-resource-anchor-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociResourceAnchorName")
                                     (oci-vcn-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociVcnId")
                                     (oci-vcn-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociVcnUrl")
                                     (oci-dns-forwarding-configs :target-type
                                      oci-dns-forwarding-config-list
                                      :member-name "ociDnsForwardingConfigs")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (percent-progress :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "percentProgress")
                                     (managed-services :target-type
                                      managed-services :member-name
                                      "managedServices"))
                                    (:shape-name "OdbNetwork"))

(smithy/sdk/shapes:define-list odb-network-list :member odb-network-summary)

common-lisp:nil

(smithy/sdk/shapes:define-structure odb-network-summary common-lisp:nil
                                    ((odb-network-id :target-type
                                      resource-id-or-arn :required
                                      common-lisp:t :member-name
                                      "odbNetworkId")
                                     (display-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "displayName")
                                     (status :target-type resource-status
                                      :member-name "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (odb-network-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "odbNetworkArn")
                                     (availability-zone :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "availabilityZone")
                                     (availability-zone-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "availabilityZoneId")
                                     (client-subnet-cidr :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "clientSubnetCidr")
                                     (backup-subnet-cidr :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "backupSubnetCidr")
                                     (custom-domain-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "customDomainName")
                                     (default-dns-prefix :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "defaultDnsPrefix")
                                     (peered-cidrs :target-type string-list
                                      :member-name "peeredCidrs")
                                     (oci-network-anchor-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociNetworkAnchorId")
                                     (oci-network-anchor-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociNetworkAnchorUrl")
                                     (oci-resource-anchor-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociResourceAnchorName")
                                     (oci-vcn-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociVcnId")
                                     (oci-vcn-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ociVcnUrl")
                                     (oci-dns-forwarding-configs :target-type
                                      oci-dns-forwarding-config-list
                                      :member-name "ociDnsForwardingConfigs")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (percent-progress :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "percentProgress")
                                     (managed-services :target-type
                                      managed-services :member-name
                                      "managedServices"))
                                    (:shape-name "OdbNetworkSummary"))

(smithy/sdk/shapes:define-structure odb-peering-connection common-lisp:nil
                                    ((odb-peering-connection-id :target-type
                                      resource-id-or-arn :required
                                      common-lisp:t :member-name
                                      "odbPeeringConnectionId")
                                     (display-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "displayName")
                                     (status :target-type resource-status
                                      :member-name "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (odb-peering-connection-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "odbPeeringConnectionArn")
                                     (odb-network-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "odbNetworkArn")
                                     (peer-network-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "peerNetworkArn")
                                     (odb-peering-connection-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "odbPeeringConnectionType")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (percent-progress :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "percentProgress"))
                                    (:shape-name "OdbPeeringConnection"))

(smithy/sdk/shapes:define-list odb-peering-connection-list :member
                               odb-peering-connection-summary)

common-lisp:nil

(smithy/sdk/shapes:define-structure odb-peering-connection-summary
                                    common-lisp:nil
                                    ((odb-peering-connection-id :target-type
                                      resource-id-or-arn :required
                                      common-lisp:t :member-name
                                      "odbPeeringConnectionId")
                                     (display-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "displayName")
                                     (status :target-type resource-status
                                      :member-name "status")
                                     (status-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusReason")
                                     (odb-peering-connection-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "odbPeeringConnectionArn")
                                     (odb-network-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "odbNetworkArn")
                                     (peer-network-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "peerNetworkArn")
                                     (odb-peering-connection-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "odbPeeringConnectionType")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (percent-progress :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "percentProgress"))
                                    (:shape-name "OdbPeeringConnectionSummary"))

(smithy/sdk/shapes:define-enum patching-mode-type
    common-lisp:nil
  (:rolling "ROLLING")
  (:nonrolling "NONROLLING"))

(smithy/sdk/shapes:define-type policy-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum preference-type
    common-lisp:nil
  (:no-preference "NO_PREFERENCE")
  (:custom-preference "CUSTOM_PREFERENCE"))

(smithy/sdk/shapes:define-input reboot-db-node-input common-lisp:nil
                                ((cloud-vm-cluster-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "cloudVmClusterId" :http-label common-lisp:t)
                                 (db-node-id :target-type resource-id :required
                                  common-lisp:t :member-name "dbNodeId"
                                  :http-label common-lisp:t))
                                (:shape-name "RebootDbNodeInput"))

(smithy/sdk/shapes:define-output reboot-db-node-output common-lisp:nil
                                 ((db-node-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "dbNodeId")
                                  (status :target-type db-node-resource-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason"))
                                 (:shape-name "RebootDbNodeOutput"))

(smithy/sdk/shapes:define-map request-tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-display-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id-or-arn
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

(smithy/sdk/shapes:define-enum resource-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:failed "FAILED")
  (:provisioning "PROVISIONING")
  (:terminated "TERMINATED")
  (:terminating "TERMINATING")
  (:updating "UPDATING")
  (:maintenance-in-progress "MAINTENANCE_IN_PROGRESS"))

(smithy/sdk/shapes:define-map response-tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure s3access common-lisp:nil
                                    ((status :target-type
                                      managed-resource-status :member-name
                                      "status")
                                     (ipv4addresses :target-type string-list
                                      :member-name "ipv4Addresses")
                                     (domain-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "domainName")
                                     (s3policy-document :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "s3PolicyDocument"))
                                    (:shape-name "S3Access"))

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list sensitive-string-list :member sensitive-string)

(smithy/sdk/shapes:define-structure service-network-endpoint common-lisp:nil
                                    ((vpc-endpoint-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "vpcEndpointId")
                                     (vpc-endpoint-type :target-type
                                      vpc-endpoint-type :member-name
                                      "vpcEndpointType"))
                                    (:shape-name "ServiceNetworkEndpoint"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-enum shape-type
    common-lisp:nil
  (:amd "AMD")
  (:intel "INTEL")
  (:intel-flex-x9 "INTEL_FLEX_X9")
  (:ampere-flex-a1 "AMPERE_FLEX_A1"))

(smithy/sdk/shapes:define-input start-db-node-input common-lisp:nil
                                ((cloud-vm-cluster-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "cloudVmClusterId" :http-label common-lisp:t)
                                 (db-node-id :target-type resource-id :required
                                  common-lisp:t :member-name "dbNodeId"
                                  :http-label common-lisp:t))
                                (:shape-name "StartDbNodeInput"))

(smithy/sdk/shapes:define-output start-db-node-output common-lisp:nil
                                 ((db-node-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "dbNodeId")
                                  (status :target-type db-node-resource-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason"))
                                 (:shape-name "StartDbNodeOutput"))

(smithy/sdk/shapes:define-input stop-db-node-input common-lisp:nil
                                ((cloud-vm-cluster-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "cloudVmClusterId" :http-label common-lisp:t)
                                 (db-node-id :target-type resource-id :required
                                  common-lisp:t :member-name "dbNodeId"
                                  :http-label common-lisp:t))
                                (:shape-name "StopDbNodeInput"))

(smithy/sdk/shapes:define-output stop-db-node-output common-lisp:nil
                                 ((db-node-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "dbNodeId")
                                  (status :target-type db-node-resource-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason"))
                                 (:shape-name "StopDbNodeOutput"))

(smithy/sdk/shapes:define-list string-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list system-version-list :member
                               system-version-summary)

(smithy/sdk/shapes:define-structure system-version-summary common-lisp:nil
                                    ((gi-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "giVersion")
                                     (shape :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "shape")
                                     (system-versions :target-type string-list
                                      :member-name "systemVersions"))
                                    (:shape-name "SystemVersionSummary"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn")
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

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-cloud-exadata-infrastructure-input
                                common-lisp:nil
                                ((cloud-exadata-infrastructure-id :target-type
                                  resource-id-or-arn :required common-lisp:t
                                  :member-name "cloudExadataInfrastructureId"
                                  :http-label common-lisp:t)
                                 (maintenance-window :target-type
                                  maintenance-window :member-name
                                  "maintenanceWindow"))
                                (:shape-name
                                 "UpdateCloudExadataInfrastructureInput"))

(smithy/sdk/shapes:define-output update-cloud-exadata-infrastructure-output
                                 common-lisp:nil
                                 ((display-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "displayName")
                                  (status :target-type resource-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (cloud-exadata-infrastructure-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name
                                   "cloudExadataInfrastructureId"))
                                 (:shape-name
                                  "UpdateCloudExadataInfrastructureOutput"))

(smithy/sdk/shapes:define-input update-odb-network-input common-lisp:nil
                                ((odb-network-id :target-type
                                  resource-id-or-arn :required common-lisp:t
                                  :member-name "odbNetworkId" :http-label
                                  common-lisp:t)
                                 (display-name :target-type
                                  resource-display-name :member-name
                                  "displayName")
                                 (peered-cidrs-to-be-added :target-type
                                  string-list :member-name
                                  "peeredCidrsToBeAdded")
                                 (peered-cidrs-to-be-removed :target-type
                                  string-list :member-name
                                  "peeredCidrsToBeRemoved")
                                 (s3access :target-type access :member-name
                                  "s3Access")
                                 (zero-etl-access :target-type access
                                  :member-name "zeroEtlAccess")
                                 (s3policy-document :target-type
                                  policy-document :member-name
                                  "s3PolicyDocument"))
                                (:shape-name "UpdateOdbNetworkInput"))

(smithy/sdk/shapes:define-output update-odb-network-output common-lisp:nil
                                 ((display-name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "displayName")
                                  (status :target-type resource-status
                                   :member-name "status")
                                  (status-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "statusReason")
                                  (odb-network-id :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "odbNetworkId"))
                                 (:shape-name "UpdateOdbNetworkOutput"))

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

(smithy/sdk/shapes:define-enum vpc-endpoint-type
    common-lisp:nil
  (:servicenetwork "SERVICENETWORK"))

(smithy/sdk/shapes:define-list weeks-of-month :member
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure zero-etl-access common-lisp:nil
                                    ((status :target-type
                                      managed-resource-status :member-name
                                      "status")
                                     (cidr :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "cidr"))
                                    (:shape-name "ZeroEtlAccess"))

(smithy/sdk/operation:define-operation accept-marketplace-registration
                                       :shape-name
                                       "AcceptMarketplaceRegistration" :input
                                       accept-marketplace-registration-input
                                       :output
                                       accept-marketplace-registration-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-cloud-autonomous-vm-cluster
                                       :shape-name
                                       "CreateCloudAutonomousVmCluster" :input
                                       create-cloud-autonomous-vm-cluster-input
                                       :output
                                       create-cloud-autonomous-vm-cluster-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-cloud-exadata-infrastructure
                                       :shape-name
                                       "CreateCloudExadataInfrastructure"
                                       :input
                                       create-cloud-exadata-infrastructure-input
                                       :output
                                       create-cloud-exadata-infrastructure-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-cloud-vm-cluster :shape-name
                                       "CreateCloudVmCluster" :input
                                       create-cloud-vm-cluster-input :output
                                       create-cloud-vm-cluster-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-odb-network :shape-name
                                       "CreateOdbNetwork" :input
                                       create-odb-network-input :output
                                       create-odb-network-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-odb-peering-connection
                                       :shape-name "CreateOdbPeeringConnection"
                                       :input
                                       create-odb-peering-connection-input
                                       :output
                                       create-odb-peering-connection-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-cloud-autonomous-vm-cluster
                                       :shape-name
                                       "DeleteCloudAutonomousVmCluster" :input
                                       delete-cloud-autonomous-vm-cluster-input
                                       :output
                                       delete-cloud-autonomous-vm-cluster-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-cloud-exadata-infrastructure
                                       :shape-name
                                       "DeleteCloudExadataInfrastructure"
                                       :input
                                       delete-cloud-exadata-infrastructure-input
                                       :output
                                       delete-cloud-exadata-infrastructure-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-cloud-vm-cluster :shape-name
                                       "DeleteCloudVmCluster" :input
                                       delete-cloud-vm-cluster-input :output
                                       delete-cloud-vm-cluster-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-odb-network :shape-name
                                       "DeleteOdbNetwork" :input
                                       delete-odb-network-input :output
                                       delete-odb-network-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-odb-peering-connection
                                       :shape-name "DeleteOdbPeeringConnection"
                                       :input
                                       delete-odb-peering-connection-input
                                       :output
                                       delete-odb-peering-connection-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-cloud-autonomous-vm-cluster
                                       :shape-name
                                       "GetCloudAutonomousVmCluster" :input
                                       get-cloud-autonomous-vm-cluster-input
                                       :output
                                       get-cloud-autonomous-vm-cluster-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-cloud-exadata-infrastructure
                                       :shape-name
                                       "GetCloudExadataInfrastructure" :input
                                       get-cloud-exadata-infrastructure-input
                                       :output
                                       get-cloud-exadata-infrastructure-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 get-cloud-exadata-infrastructure-unallocated-resources :shape-name
 "GetCloudExadataInfrastructureUnallocatedResources" :input
 get-cloud-exadata-infrastructure-unallocated-resources-input :output
 get-cloud-exadata-infrastructure-unallocated-resources-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation get-cloud-vm-cluster :shape-name
                                       "GetCloudVmCluster" :input
                                       get-cloud-vm-cluster-input :output
                                       get-cloud-vm-cluster-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-db-node :shape-name "GetDbNode"
                                       :input get-db-node-input :output
                                       get-db-node-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-db-server :shape-name "GetDbServer"
                                       :input get-db-server-input :output
                                       get-db-server-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-oci-onboarding-status :shape-name
                                       "GetOciOnboardingStatus" :input
                                       get-oci-onboarding-status-input :output
                                       get-oci-onboarding-status-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-odb-network :shape-name
                                       "GetOdbNetwork" :input
                                       get-odb-network-input :output
                                       get-odb-network-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-odb-peering-connection :shape-name
                                       "GetOdbPeeringConnection" :input
                                       get-odb-peering-connection-input :output
                                       get-odb-peering-connection-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation initialize-service :shape-name
                                       "InitializeService" :input
                                       initialize-service-input :output
                                       initialize-service-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-autonomous-virtual-machines
                                       :shape-name
                                       "ListAutonomousVirtualMachines" :input
                                       list-autonomous-virtual-machines-input
                                       :output
                                       list-autonomous-virtual-machines-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-cloud-autonomous-vm-clusters
                                       :shape-name
                                       "ListCloudAutonomousVmClusters" :input
                                       list-cloud-autonomous-vm-clusters-input
                                       :output
                                       list-cloud-autonomous-vm-clusters-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-cloud-exadata-infrastructures
                                       :shape-name
                                       "ListCloudExadataInfrastructures" :input
                                       list-cloud-exadata-infrastructures-input
                                       :output
                                       list-cloud-exadata-infrastructures-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-cloud-vm-clusters :shape-name
                                       "ListCloudVmClusters" :input
                                       list-cloud-vm-clusters-input :output
                                       list-cloud-vm-clusters-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-db-nodes :shape-name "ListDbNodes"
                                       :input list-db-nodes-input :output
                                       list-db-nodes-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-db-servers :shape-name
                                       "ListDbServers" :input
                                       list-db-servers-input :output
                                       list-db-servers-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-db-system-shapes :shape-name
                                       "ListDbSystemShapes" :input
                                       list-db-system-shapes-input :output
                                       list-db-system-shapes-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-gi-versions :shape-name
                                       "ListGiVersions" :input
                                       list-gi-versions-input :output
                                       list-gi-versions-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-odb-networks :shape-name
                                       "ListOdbNetworks" :input
                                       list-odb-networks-input :output
                                       list-odb-networks-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-odb-peering-connections :shape-name
                                       "ListOdbPeeringConnections" :input
                                       list-odb-peering-connections-input
                                       :output
                                       list-odb-peering-connections-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-system-versions :shape-name
                                       "ListSystemVersions" :input
                                       list-system-versions-input :output
                                       list-system-versions-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation reboot-db-node :shape-name
                                       "RebootDbNode" :input
                                       reboot-db-node-input :output
                                       reboot-db-node-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation start-db-node :shape-name "StartDbNode"
                                       :input start-db-node-input :output
                                       start-db-node-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation stop-db-node :shape-name "StopDbNode"
                                       :input stop-db-node-input :output
                                       stop-db-node-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (resource-not-found-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation update-cloud-exadata-infrastructure
                                       :shape-name
                                       "UpdateCloudExadataInfrastructure"
                                       :input
                                       update-cloud-exadata-infrastructure-input
                                       :output
                                       update-cloud-exadata-infrastructure-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-odb-network :shape-name
                                       "UpdateOdbNetwork" :input
                                       update-odb-network-input :output
                                       update-odb-network-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))
