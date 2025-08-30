(uiop/package:define-package #:pira/snowball (:use)
                             (:export #:awsiesnowball-job-management-service
                              #:address #:address-id #:address-list
                              #:address-type #:ami-id #:boolean
                              #:cancel-cluster #:cancel-job #:cluster-id
                              #:cluster-limit-exceeded-exception
                              #:cluster-list-entry #:cluster-list-entry-list
                              #:cluster-metadata #:cluster-state
                              #:compatible-image #:compatible-image-list
                              #:conflict-exception #:create-address
                              #:create-cluster #:create-job
                              #:create-long-term-pricing
                              #:create-return-shipping-label #:data-transfer
                              #:dependent-service #:dependent-service-list
                              #:describe-address #:describe-addresses
                              #:describe-cluster #:describe-job
                              #:describe-return-shipping-label
                              #:device-configuration #:device-pickup-id
                              #:device-service-name
                              #:ekson-device-service-configuration
                              #:ec2ami-resource #:ec2ami-resource-list
                              #:ec2request-failed-exception #:email
                              #:event-trigger-definition
                              #:event-trigger-definition-list #:gstin
                              #:get-job-manifest #:get-job-unlock-code
                              #:get-snowball-usage #:get-software-updates
                              #:indtax-documents #:impact-level
                              #:initial-cluster-size #:integer
                              #:invalid-address-exception
                              #:invalid-input-combination-exception
                              #:invalid-job-state-exception
                              #:invalid-next-token-exception
                              #:invalid-resource-exception #:java-boolean
                              #:job-id #:job-list-entry #:job-list-entry-list
                              #:job-logs #:job-metadata #:job-metadata-list
                              #:job-resource #:job-state #:job-state-list
                              #:job-type #:kmsrequest-failed-exception
                              #:key-range #:kms-key-arn #:lambda-resource
                              #:lambda-resource-list #:list-cluster-jobs
                              #:list-clusters #:list-compatible-images
                              #:list-jobs #:list-limit #:list-long-term-pricing
                              #:list-pickup-locations #:list-service-versions
                              #:long #:long-term-pricing-associated-job-id-list
                              #:long-term-pricing-entry-list
                              #:long-term-pricing-id
                              #:long-term-pricing-id-list
                              #:long-term-pricing-list-entry
                              #:long-term-pricing-type
                              #:nfson-device-service-configuration
                              #:node-fault-tolerance #:notification
                              #:on-device-service-configuration #:phone-number
                              #:pickup-details #:remote-management
                              #:resource-arn
                              #:return-shipping-label-already-exists-exception
                              #:role-arn #:s3on-device-service-configuration
                              #:s3resource #:s3resource-list #:s3storage-limit
                              #:service-name #:service-size #:service-version
                              #:service-version-list #:shipment
                              #:shipment-state #:shipping-details
                              #:shipping-label-status #:shipping-option
                              #:snowball-capacity #:snowball-type
                              #:snowcone-device-configuration #:sns-topic-arn
                              #:storage-limit #:storage-unit #:string
                              #:tgwon-device-service-configuration
                              #:target-on-device-service
                              #:target-on-device-service-list #:tax-documents
                              #:timestamp #:transfer-option
                              #:unsupported-address-exception #:update-cluster
                              #:update-job #:update-job-shipment-state
                              #:update-long-term-pricing #:wireless-connection
                              #:snowball-error))
(common-lisp:in-package #:pira/snowball)

(common-lisp:define-condition snowball-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service awsiesnowball-job-management-service
                                   :shape-name
                                   "AWSIESnowballJobManagementService" :version
                                   "2016-06-30" :title
                                   "Amazon Import/Export Snowball" :operations
                                   '(cancel-cluster cancel-job create-address
                                     create-cluster create-job
                                     create-long-term-pricing
                                     create-return-shipping-label
                                     describe-address describe-addresses
                                     describe-cluster describe-job
                                     describe-return-shipping-label
                                     get-job-manifest get-job-unlock-code
                                     get-snowball-usage get-software-updates
                                     list-cluster-jobs list-clusters
                                     list-compatible-images list-jobs
                                     list-long-term-pricing
                                     list-pickup-locations
                                     list-service-versions update-cluster
                                     update-job update-job-shipment-state
                                     update-long-term-pricing)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Snowball")
                                      ("arnNamespace" . "snowball")
                                      ("cloudFormationName" . "Snowball")
                                      ("cloudTrailEventSource"
                                       . "snowball.amazonaws.com")
                                      ("endpointPrefix" . "snowball"))
                                     ("aws.auth#sigv4" ("name" . "snowball"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-structure address common-lisp:nil
                                    ((address-id :target-type address-id
                                      :member-name "AddressId")
                                     (name :target-type string :member-name
                                      "Name")
                                     (company :target-type string :member-name
                                      "Company")
                                     (street1 :target-type string :member-name
                                      "Street1")
                                     (street2 :target-type string :member-name
                                      "Street2")
                                     (street3 :target-type string :member-name
                                      "Street3")
                                     (city :target-type string :member-name
                                      "City")
                                     (state-or-province :target-type string
                                      :member-name "StateOrProvince")
                                     (prefecture-or-district :target-type
                                      string :member-name
                                      "PrefectureOrDistrict")
                                     (landmark :target-type string :member-name
                                      "Landmark")
                                     (country :target-type string :member-name
                                      "Country")
                                     (postal-code :target-type string
                                      :member-name "PostalCode")
                                     (phone-number :target-type string
                                      :member-name "PhoneNumber")
                                     (is-restricted :target-type boolean
                                      :member-name "IsRestricted")
                                     (type :target-type address-type
                                      :member-name "Type"))
                                    (:shape-name "Address"))

(smithy/sdk/shapes:define-type address-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list address-list :member address)

(smithy/sdk/shapes:define-enum address-type
    common-lisp:nil
  (:cust-pickup "CUST_PICKUP")
  (:aws-ship "AWS_SHIP"))

(smithy/sdk/shapes:define-type ami-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input cancel-cluster-request common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId"))
                                (:shape-name "CancelClusterRequest"))

(smithy/sdk/shapes:define-output cancel-cluster-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelClusterResult"))

(smithy/sdk/shapes:define-input cancel-job-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name "CancelJobRequest"))

(smithy/sdk/shapes:define-output cancel-job-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "CancelJobResult"))

(smithy/sdk/shapes:define-type cluster-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error cluster-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ClusterLimitExceededException")
                                (:error-code 400) (:base-class snowball-error))

(smithy/sdk/shapes:define-structure cluster-list-entry common-lisp:nil
                                    ((cluster-id :target-type string
                                      :member-name "ClusterId")
                                     (cluster-state :target-type cluster-state
                                      :member-name "ClusterState")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (description :target-type string
                                      :member-name "Description"))
                                    (:shape-name "ClusterListEntry"))

(smithy/sdk/shapes:define-list cluster-list-entry-list :member
                               cluster-list-entry)

(smithy/sdk/shapes:define-structure cluster-metadata common-lisp:nil
                                    ((cluster-id :target-type string
                                      :member-name "ClusterId")
                                     (description :target-type string
                                      :member-name "Description")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "KmsKeyARN")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN")
                                     (cluster-state :target-type cluster-state
                                      :member-name "ClusterState")
                                     (job-type :target-type job-type
                                      :member-name "JobType")
                                     (snowball-type :target-type snowball-type
                                      :member-name "SnowballType")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (resources :target-type job-resource
                                      :member-name "Resources")
                                     (address-id :target-type address-id
                                      :member-name "AddressId")
                                     (shipping-option :target-type
                                      shipping-option :member-name
                                      "ShippingOption")
                                     (notification :target-type notification
                                      :member-name "Notification")
                                     (forwarding-address-id :target-type
                                      address-id :member-name
                                      "ForwardingAddressId")
                                     (tax-documents :target-type tax-documents
                                      :member-name "TaxDocuments")
                                     (on-device-service-configuration
                                      :target-type
                                      on-device-service-configuration
                                      :member-name
                                      "OnDeviceServiceConfiguration"))
                                    (:shape-name "ClusterMetadata"))

(smithy/sdk/shapes:define-enum cluster-state
    common-lisp:nil
  (:awaiting-quorum "AwaitingQuorum")
  (:pending "Pending")
  (:in-use "InUse")
  (:complete "Complete")
  (:cancelled "Cancelled"))

(smithy/sdk/shapes:define-structure compatible-image common-lisp:nil
                                    ((ami-id :target-type string :member-name
                                      "AmiId")
                                     (name :target-type string :member-name
                                      "Name"))
                                    (:shape-name "CompatibleImage"))

(smithy/sdk/shapes:define-list compatible-image-list :member compatible-image)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((conflict-resource :target-type string
                                  :member-name "ConflictResource")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 400) (:base-class snowball-error))

(smithy/sdk/shapes:define-input create-address-request common-lisp:nil
                                ((address :target-type address :required
                                  common-lisp:t :member-name "Address"))
                                (:shape-name "CreateAddressRequest"))

(smithy/sdk/shapes:define-output create-address-result common-lisp:nil
                                 ((address-id :target-type string :member-name
                                   "AddressId"))
                                 (:shape-name "CreateAddressResult"))

(smithy/sdk/shapes:define-input create-cluster-request common-lisp:nil
                                ((job-type :target-type job-type :required
                                  common-lisp:t :member-name "JobType")
                                 (resources :target-type job-resource
                                  :member-name "Resources")
                                 (on-device-service-configuration :target-type
                                  on-device-service-configuration :member-name
                                  "OnDeviceServiceConfiguration")
                                 (description :target-type string :member-name
                                  "Description")
                                 (address-id :target-type address-id :required
                                  common-lisp:t :member-name "AddressId")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "KmsKeyARN")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleARN")
                                 (snowball-type :target-type snowball-type
                                  :required common-lisp:t :member-name
                                  "SnowballType")
                                 (shipping-option :target-type shipping-option
                                  :required common-lisp:t :member-name
                                  "ShippingOption")
                                 (notification :target-type notification
                                  :member-name "Notification")
                                 (forwarding-address-id :target-type address-id
                                  :member-name "ForwardingAddressId")
                                 (tax-documents :target-type tax-documents
                                  :member-name "TaxDocuments")
                                 (remote-management :target-type
                                  remote-management :member-name
                                  "RemoteManagement")
                                 (initial-cluster-size :target-type
                                  initial-cluster-size :member-name
                                  "InitialClusterSize")
                                 (force-create-jobs :target-type boolean
                                  :member-name "ForceCreateJobs")
                                 (long-term-pricing-ids :target-type
                                  long-term-pricing-id-list :member-name
                                  "LongTermPricingIds")
                                 (snowball-capacity-preference :target-type
                                  snowball-capacity :member-name
                                  "SnowballCapacityPreference"))
                                (:shape-name "CreateClusterRequest"))

(smithy/sdk/shapes:define-output create-cluster-result common-lisp:nil
                                 ((cluster-id :target-type cluster-id
                                   :member-name "ClusterId")
                                  (job-list-entries :target-type
                                   job-list-entry-list :member-name
                                   "JobListEntries"))
                                 (:shape-name "CreateClusterResult"))

(smithy/sdk/shapes:define-input create-job-request common-lisp:nil
                                ((job-type :target-type job-type :member-name
                                  "JobType")
                                 (resources :target-type job-resource
                                  :member-name "Resources")
                                 (on-device-service-configuration :target-type
                                  on-device-service-configuration :member-name
                                  "OnDeviceServiceConfiguration")
                                 (description :target-type string :member-name
                                  "Description")
                                 (address-id :target-type address-id
                                  :member-name "AddressId")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "KmsKeyARN")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleARN")
                                 (snowball-capacity-preference :target-type
                                  snowball-capacity :member-name
                                  "SnowballCapacityPreference")
                                 (shipping-option :target-type shipping-option
                                  :member-name "ShippingOption")
                                 (notification :target-type notification
                                  :member-name "Notification")
                                 (cluster-id :target-type cluster-id
                                  :member-name "ClusterId")
                                 (snowball-type :target-type snowball-type
                                  :member-name "SnowballType")
                                 (forwarding-address-id :target-type address-id
                                  :member-name "ForwardingAddressId")
                                 (tax-documents :target-type tax-documents
                                  :member-name "TaxDocuments")
                                 (device-configuration :target-type
                                  device-configuration :member-name
                                  "DeviceConfiguration")
                                 (remote-management :target-type
                                  remote-management :member-name
                                  "RemoteManagement")
                                 (long-term-pricing-id :target-type
                                  long-term-pricing-id :member-name
                                  "LongTermPricingId")
                                 (impact-level :target-type impact-level
                                  :member-name "ImpactLevel")
                                 (pickup-details :target-type pickup-details
                                  :member-name "PickupDetails"))
                                (:shape-name "CreateJobRequest"))

(smithy/sdk/shapes:define-output create-job-result common-lisp:nil
                                 ((job-id :target-type job-id :member-name
                                   "JobId"))
                                 (:shape-name "CreateJobResult"))

(smithy/sdk/shapes:define-input create-long-term-pricing-request
                                common-lisp:nil
                                ((long-term-pricing-type :target-type
                                  long-term-pricing-type :required
                                  common-lisp:t :member-name
                                  "LongTermPricingType")
                                 (is-long-term-pricing-auto-renew :target-type
                                  java-boolean :member-name
                                  "IsLongTermPricingAutoRenew")
                                 (snowball-type :target-type snowball-type
                                  :required common-lisp:t :member-name
                                  "SnowballType"))
                                (:shape-name "CreateLongTermPricingRequest"))

(smithy/sdk/shapes:define-output create-long-term-pricing-result
                                 common-lisp:nil
                                 ((long-term-pricing-id :target-type
                                   long-term-pricing-id :member-name
                                   "LongTermPricingId"))
                                 (:shape-name "CreateLongTermPricingResult"))

(smithy/sdk/shapes:define-input create-return-shipping-label-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId")
                                 (shipping-option :target-type shipping-option
                                  :member-name "ShippingOption"))
                                (:shape-name
                                 "CreateReturnShippingLabelRequest"))

(smithy/sdk/shapes:define-output create-return-shipping-label-result
                                 common-lisp:nil
                                 ((status :target-type shipping-label-status
                                   :member-name "Status"))
                                 (:shape-name
                                  "CreateReturnShippingLabelResult"))

(smithy/sdk/shapes:define-structure data-transfer common-lisp:nil
                                    ((bytes-transferred :target-type long
                                      :member-name "BytesTransferred")
                                     (objects-transferred :target-type long
                                      :member-name "ObjectsTransferred")
                                     (total-bytes :target-type long
                                      :member-name "TotalBytes")
                                     (total-objects :target-type long
                                      :member-name "TotalObjects"))
                                    (:shape-name "DataTransfer"))

(smithy/sdk/shapes:define-structure dependent-service common-lisp:nil
                                    ((service-name :target-type service-name
                                      :member-name "ServiceName")
                                     (service-version :target-type
                                      service-version :member-name
                                      "ServiceVersion"))
                                    (:shape-name "DependentService"))

(smithy/sdk/shapes:define-list dependent-service-list :member dependent-service)

(smithy/sdk/shapes:define-input describe-address-request common-lisp:nil
                                ((address-id :target-type address-id :required
                                  common-lisp:t :member-name "AddressId"))
                                (:shape-name "DescribeAddressRequest"))

(smithy/sdk/shapes:define-output describe-address-result common-lisp:nil
                                 ((address :target-type address :member-name
                                   "Address"))
                                 (:shape-name "DescribeAddressResult"))

(smithy/sdk/shapes:define-input describe-addresses-request common-lisp:nil
                                ((max-results :target-type list-limit
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "DescribeAddressesRequest"))

(smithy/sdk/shapes:define-output describe-addresses-result common-lisp:nil
                                 ((addresses :target-type address-list
                                   :member-name "Addresses")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "DescribeAddressesResult"))

(smithy/sdk/shapes:define-input describe-cluster-request common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId"))
                                (:shape-name "DescribeClusterRequest"))

(smithy/sdk/shapes:define-output describe-cluster-result common-lisp:nil
                                 ((cluster-metadata :target-type
                                   cluster-metadata :member-name
                                   "ClusterMetadata"))
                                 (:shape-name "DescribeClusterResult"))

(smithy/sdk/shapes:define-input describe-job-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name "DescribeJobRequest"))

(smithy/sdk/shapes:define-output describe-job-result common-lisp:nil
                                 ((job-metadata :target-type job-metadata
                                   :member-name "JobMetadata")
                                  (sub-job-metadata :target-type
                                   job-metadata-list :member-name
                                   "SubJobMetadata"))
                                 (:shape-name "DescribeJobResult"))

(smithy/sdk/shapes:define-input describe-return-shipping-label-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name
                                 "DescribeReturnShippingLabelRequest"))

(smithy/sdk/shapes:define-output describe-return-shipping-label-result
                                 common-lisp:nil
                                 ((status :target-type shipping-label-status
                                   :member-name "Status")
                                  (expiration-date :target-type timestamp
                                   :member-name "ExpirationDate")
                                  (return-shipping-label-uri :target-type
                                   string :member-name
                                   "ReturnShippingLabelURI"))
                                 (:shape-name
                                  "DescribeReturnShippingLabelResult"))

(smithy/sdk/shapes:define-structure device-configuration common-lisp:nil
                                    ((snowcone-device-configuration
                                      :target-type
                                      snowcone-device-configuration
                                      :member-name
                                      "SnowconeDeviceConfiguration"))
                                    (:shape-name "DeviceConfiguration"))

(smithy/sdk/shapes:define-type device-pickup-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum device-service-name
    common-lisp:nil
  (:nfs-on-device-service "NFS_ON_DEVICE_SERVICE")
  (:s3-on-device-service "S3_ON_DEVICE_SERVICE"))

(smithy/sdk/shapes:define-structure ekson-device-service-configuration
                                    common-lisp:nil
                                    ((kubernetes-version :target-type string
                                      :member-name "KubernetesVersion")
                                     (eksanywhere-version :target-type string
                                      :member-name "EKSAnywhereVersion"))
                                    (:shape-name
                                     "EKSOnDeviceServiceConfiguration"))

(smithy/sdk/shapes:define-structure ec2ami-resource common-lisp:nil
                                    ((ami-id :target-type ami-id :required
                                      common-lisp:t :member-name "AmiId")
                                     (snowball-ami-id :target-type string
                                      :member-name "SnowballAmiId"))
                                    (:shape-name "Ec2AmiResource"))

(smithy/sdk/shapes:define-list ec2ami-resource-list :member ec2ami-resource)

(smithy/sdk/shapes:define-error ec2request-failed-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "Ec2RequestFailedException")
                                (:error-code 400) (:base-class snowball-error))

(smithy/sdk/shapes:define-type email smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event-trigger-definition common-lisp:nil
                                    ((event-resource-arn :target-type
                                      resource-arn :member-name
                                      "EventResourceARN"))
                                    (:shape-name "EventTriggerDefinition"))

(smithy/sdk/shapes:define-list event-trigger-definition-list :member
                               event-trigger-definition)

(smithy/sdk/shapes:define-type gstin smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-job-manifest-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name "GetJobManifestRequest"))

(smithy/sdk/shapes:define-output get-job-manifest-result common-lisp:nil
                                 ((manifest-uri :target-type string
                                   :member-name "ManifestURI"))
                                 (:shape-name "GetJobManifestResult"))

(smithy/sdk/shapes:define-input get-job-unlock-code-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name "GetJobUnlockCodeRequest"))

(smithy/sdk/shapes:define-output get-job-unlock-code-result common-lisp:nil
                                 ((unlock-code :target-type string :member-name
                                   "UnlockCode"))
                                 (:shape-name "GetJobUnlockCodeResult"))

(smithy/sdk/shapes:define-input get-snowball-usage-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetSnowballUsageRequest"))

(smithy/sdk/shapes:define-output get-snowball-usage-result common-lisp:nil
                                 ((snowball-limit :target-type integer
                                   :member-name "SnowballLimit")
                                  (snowballs-in-use :target-type integer
                                   :member-name "SnowballsInUse"))
                                 (:shape-name "GetSnowballUsageResult"))

(smithy/sdk/shapes:define-input get-software-updates-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId"))
                                (:shape-name "GetSoftwareUpdatesRequest"))

(smithy/sdk/shapes:define-output get-software-updates-result common-lisp:nil
                                 ((updates-uri :target-type string :member-name
                                   "UpdatesURI"))
                                 (:shape-name "GetSoftwareUpdatesResult"))

(smithy/sdk/shapes:define-structure indtax-documents common-lisp:nil
                                    ((gstin :target-type gstin :member-name
                                      "GSTIN"))
                                    (:shape-name "INDTaxDocuments"))

(smithy/sdk/shapes:define-enum impact-level
    common-lisp:nil
  (:il2 "IL2")
  (:il4 "IL4")
  (:il5 "IL5")
  (:il6 "IL6")
  (:il99 "IL99"))

(smithy/sdk/shapes:define-type initial-cluster-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-address-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidAddressException")
                                (:error-code 400) (:base-class snowball-error))

(smithy/sdk/shapes:define-error invalid-input-combination-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "InvalidInputCombinationException")
                                (:error-code 400) (:base-class snowball-error))

(smithy/sdk/shapes:define-error invalid-job-state-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidJobStateException")
                                (:error-code 400) (:base-class snowball-error))

(smithy/sdk/shapes:define-error invalid-next-token-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidNextTokenException")
                                (:error-code 400) (:base-class snowball-error))

(smithy/sdk/shapes:define-error invalid-resource-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (resource-type :target-type string
                                  :member-name "ResourceType"))
                                (:shape-name "InvalidResourceException")
                                (:error-code 400) (:base-class snowball-error))

(smithy/sdk/shapes:define-type java-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job-list-entry common-lisp:nil
                                    ((job-id :target-type string :member-name
                                      "JobId")
                                     (job-state :target-type job-state
                                      :member-name "JobState")
                                     (is-master :target-type boolean
                                      :member-name "IsMaster")
                                     (job-type :target-type job-type
                                      :member-name "JobType")
                                     (snowball-type :target-type snowball-type
                                      :member-name "SnowballType")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (description :target-type string
                                      :member-name "Description"))
                                    (:shape-name "JobListEntry"))

(smithy/sdk/shapes:define-list job-list-entry-list :member job-list-entry)

(smithy/sdk/shapes:define-structure job-logs common-lisp:nil
                                    ((job-completion-report-uri :target-type
                                      string :member-name
                                      "JobCompletionReportURI")
                                     (job-success-log-uri :target-type string
                                      :member-name "JobSuccessLogURI")
                                     (job-failure-log-uri :target-type string
                                      :member-name "JobFailureLogURI"))
                                    (:shape-name "JobLogs"))

(smithy/sdk/shapes:define-structure job-metadata common-lisp:nil
                                    ((job-id :target-type string :member-name
                                      "JobId")
                                     (job-state :target-type job-state
                                      :member-name "JobState")
                                     (job-type :target-type job-type
                                      :member-name "JobType")
                                     (snowball-type :target-type snowball-type
                                      :member-name "SnowballType")
                                     (creation-date :target-type timestamp
                                      :member-name "CreationDate")
                                     (resources :target-type job-resource
                                      :member-name "Resources")
                                     (description :target-type string
                                      :member-name "Description")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "KmsKeyARN")
                                     (role-arn :target-type role-arn
                                      :member-name "RoleARN")
                                     (address-id :target-type address-id
                                      :member-name "AddressId")
                                     (shipping-details :target-type
                                      shipping-details :member-name
                                      "ShippingDetails")
                                     (snowball-capacity-preference :target-type
                                      snowball-capacity :member-name
                                      "SnowballCapacityPreference")
                                     (notification :target-type notification
                                      :member-name "Notification")
                                     (data-transfer-progress :target-type
                                      data-transfer :member-name
                                      "DataTransferProgress")
                                     (job-log-info :target-type job-logs
                                      :member-name "JobLogInfo")
                                     (cluster-id :target-type string
                                      :member-name "ClusterId")
                                     (forwarding-address-id :target-type
                                      address-id :member-name
                                      "ForwardingAddressId")
                                     (tax-documents :target-type tax-documents
                                      :member-name "TaxDocuments")
                                     (device-configuration :target-type
                                      device-configuration :member-name
                                      "DeviceConfiguration")
                                     (remote-management :target-type
                                      remote-management :member-name
                                      "RemoteManagement")
                                     (long-term-pricing-id :target-type
                                      long-term-pricing-id :member-name
                                      "LongTermPricingId")
                                     (on-device-service-configuration
                                      :target-type
                                      on-device-service-configuration
                                      :member-name
                                      "OnDeviceServiceConfiguration")
                                     (impact-level :target-type impact-level
                                      :member-name "ImpactLevel")
                                     (pickup-details :target-type
                                      pickup-details :member-name
                                      "PickupDetails")
                                     (snowball-id :target-type string
                                      :member-name "SnowballId"))
                                    (:shape-name "JobMetadata"))

(smithy/sdk/shapes:define-list job-metadata-list :member job-metadata)

(smithy/sdk/shapes:define-structure job-resource common-lisp:nil
                                    ((s3resources :target-type s3resource-list
                                      :member-name "S3Resources")
                                     (lambda-resources :target-type
                                      lambda-resource-list :member-name
                                      "LambdaResources")
                                     (ec2ami-resources :target-type
                                      ec2ami-resource-list :member-name
                                      "Ec2AmiResources"))
                                    (:shape-name "JobResource"))

(smithy/sdk/shapes:define-enum job-state
    common-lisp:nil
  (:new "New")
  (:preparing-appliance "PreparingAppliance")
  (:preparing-shipment "PreparingShipment")
  (:in-transit-to-customer "InTransitToCustomer")
  (:with-customer "WithCustomer")
  (:in-transit-to-aws "InTransitToAWS")
  (:with-aws-sorting-facility "WithAWSSortingFacility")
  (:with-aws "WithAWS")
  (:in-progress "InProgress")
  (:complete "Complete")
  (:cancelled "Cancelled")
  (:listing "Listing")
  (:pending "Pending"))

(smithy/sdk/shapes:define-list job-state-list :member job-state)

(smithy/sdk/shapes:define-enum job-type
    common-lisp:nil
  (:import "IMPORT")
  (:export "EXPORT")
  (:local-use "LOCAL_USE"))

(smithy/sdk/shapes:define-error kmsrequest-failed-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "KMSRequestFailedException")
                                (:error-code 400) (:base-class snowball-error))

(smithy/sdk/shapes:define-structure key-range common-lisp:nil
                                    ((begin-marker :target-type string
                                      :member-name "BeginMarker")
                                     (end-marker :target-type string
                                      :member-name "EndMarker"))
                                    (:shape-name "KeyRange"))

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-resource common-lisp:nil
                                    ((lambda-arn :target-type resource-arn
                                      :member-name "LambdaArn")
                                     (event-triggers :target-type
                                      event-trigger-definition-list
                                      :member-name "EventTriggers"))
                                    (:shape-name "LambdaResource"))

(smithy/sdk/shapes:define-list lambda-resource-list :member lambda-resource)

(smithy/sdk/shapes:define-input list-cluster-jobs-request common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId")
                                 (max-results :target-type list-limit
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "ListClusterJobsRequest"))

(smithy/sdk/shapes:define-output list-cluster-jobs-result common-lisp:nil
                                 ((job-list-entries :target-type
                                   job-list-entry-list :member-name
                                   "JobListEntries")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListClusterJobsResult"))

(smithy/sdk/shapes:define-input list-clusters-request common-lisp:nil
                                ((max-results :target-type list-limit
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "ListClustersRequest"))

(smithy/sdk/shapes:define-output list-clusters-result common-lisp:nil
                                 ((cluster-list-entries :target-type
                                   cluster-list-entry-list :member-name
                                   "ClusterListEntries")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListClustersResult"))

(smithy/sdk/shapes:define-input list-compatible-images-request common-lisp:nil
                                ((max-results :target-type list-limit
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "ListCompatibleImagesRequest"))

(smithy/sdk/shapes:define-output list-compatible-images-result common-lisp:nil
                                 ((compatible-images :target-type
                                   compatible-image-list :member-name
                                   "CompatibleImages")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListCompatibleImagesResult"))

(smithy/sdk/shapes:define-input list-jobs-request common-lisp:nil
                                ((max-results :target-type list-limit
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "ListJobsRequest"))

(smithy/sdk/shapes:define-output list-jobs-result common-lisp:nil
                                 ((job-list-entries :target-type
                                   job-list-entry-list :member-name
                                   "JobListEntries")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListJobsResult"))

(smithy/sdk/shapes:define-type list-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-long-term-pricing-request common-lisp:nil
                                ((max-results :target-type list-limit
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "ListLongTermPricingRequest"))

(smithy/sdk/shapes:define-output list-long-term-pricing-result common-lisp:nil
                                 ((long-term-pricing-entries :target-type
                                   long-term-pricing-entry-list :member-name
                                   "LongTermPricingEntries")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListLongTermPricingResult"))

(smithy/sdk/shapes:define-input list-pickup-locations-request common-lisp:nil
                                ((max-results :target-type list-limit
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "ListPickupLocationsRequest"))

(smithy/sdk/shapes:define-output list-pickup-locations-result common-lisp:nil
                                 ((addresses :target-type address-list
                                   :member-name "Addresses")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListPickupLocationsResult"))

(smithy/sdk/shapes:define-input list-service-versions-request common-lisp:nil
                                ((service-name :target-type service-name
                                  :required common-lisp:t :member-name
                                  "ServiceName")
                                 (dependent-services :target-type
                                  dependent-service-list :member-name
                                  "DependentServices")
                                 (max-results :target-type list-limit
                                  :member-name "MaxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken"))
                                (:shape-name "ListServiceVersionsRequest"))

(smithy/sdk/shapes:define-output list-service-versions-result common-lisp:nil
                                 ((service-versions :target-type
                                   service-version-list :required common-lisp:t
                                   :member-name "ServiceVersions")
                                  (service-name :target-type service-name
                                   :required common-lisp:t :member-name
                                   "ServiceName")
                                  (dependent-services :target-type
                                   dependent-service-list :member-name
                                   "DependentServices")
                                  (next-token :target-type string :member-name
                                   "NextToken"))
                                 (:shape-name "ListServiceVersionsResult"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list long-term-pricing-associated-job-id-list :member
                               job-id)

(smithy/sdk/shapes:define-list long-term-pricing-entry-list :member
                               long-term-pricing-list-entry)

(smithy/sdk/shapes:define-type long-term-pricing-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list long-term-pricing-id-list :member
                               long-term-pricing-id)

(smithy/sdk/shapes:define-structure long-term-pricing-list-entry
                                    common-lisp:nil
                                    ((long-term-pricing-id :target-type
                                      long-term-pricing-id :member-name
                                      "LongTermPricingId")
                                     (long-term-pricing-end-date :target-type
                                      timestamp :member-name
                                      "LongTermPricingEndDate")
                                     (long-term-pricing-start-date :target-type
                                      timestamp :member-name
                                      "LongTermPricingStartDate")
                                     (long-term-pricing-type :target-type
                                      long-term-pricing-type :member-name
                                      "LongTermPricingType")
                                     (current-active-job :target-type job-id
                                      :member-name "CurrentActiveJob")
                                     (replacement-job :target-type job-id
                                      :member-name "ReplacementJob")
                                     (is-long-term-pricing-auto-renew
                                      :target-type java-boolean :member-name
                                      "IsLongTermPricingAutoRenew")
                                     (long-term-pricing-status :target-type
                                      string :member-name
                                      "LongTermPricingStatus")
                                     (snowball-type :target-type snowball-type
                                      :member-name "SnowballType")
                                     (job-ids :target-type
                                      long-term-pricing-associated-job-id-list
                                      :member-name "JobIds"))
                                    (:shape-name "LongTermPricingListEntry"))

(smithy/sdk/shapes:define-enum long-term-pricing-type
    common-lisp:nil
  (:one-year "OneYear")
  (:three-year "ThreeYear")
  (:one-month "OneMonth"))

(smithy/sdk/shapes:define-structure nfson-device-service-configuration
                                    common-lisp:nil
                                    ((storage-limit :target-type storage-limit
                                      :member-name "StorageLimit")
                                     (storage-unit :target-type storage-unit
                                      :member-name "StorageUnit"))
                                    (:shape-name
                                     "NFSOnDeviceServiceConfiguration"))

(smithy/sdk/shapes:define-type node-fault-tolerance
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure notification common-lisp:nil
                                    ((sns-topic-arn :target-type sns-topic-arn
                                      :member-name "SnsTopicARN")
                                     (job-states-to-notify :target-type
                                      job-state-list :member-name
                                      "JobStatesToNotify")
                                     (notify-all :target-type boolean
                                      :member-name "NotifyAll")
                                     (device-pickup-sns-topic-arn :target-type
                                      sns-topic-arn :member-name
                                      "DevicePickupSnsTopicARN"))
                                    (:shape-name "Notification"))

(smithy/sdk/shapes:define-structure on-device-service-configuration
                                    common-lisp:nil
                                    ((nfson-device-service :target-type
                                      nfson-device-service-configuration
                                      :member-name "NFSOnDeviceService")
                                     (tgwon-device-service :target-type
                                      tgwon-device-service-configuration
                                      :member-name "TGWOnDeviceService")
                                     (ekson-device-service :target-type
                                      ekson-device-service-configuration
                                      :member-name "EKSOnDeviceService")
                                     (s3on-device-service :target-type
                                      s3on-device-service-configuration
                                      :member-name "S3OnDeviceService"))
                                    (:shape-name
                                     "OnDeviceServiceConfiguration"))

(smithy/sdk/shapes:define-type phone-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pickup-details common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (phone-number :target-type phone-number
                                      :member-name "PhoneNumber")
                                     (email :target-type email :member-name
                                      "Email")
                                     (identification-number :target-type string
                                      :member-name "IdentificationNumber")
                                     (identification-expiration-date
                                      :target-type timestamp :member-name
                                      "IdentificationExpirationDate")
                                     (identification-issuing-org :target-type
                                      string :member-name
                                      "IdentificationIssuingOrg")
                                     (device-pickup-id :target-type
                                      device-pickup-id :member-name
                                      "DevicePickupId"))
                                    (:shape-name "PickupDetails"))

(smithy/sdk/shapes:define-enum remote-management
    common-lisp:nil
  (:installed-only "INSTALLED_ONLY")
  (:installed-autostart "INSTALLED_AUTOSTART")
  (:not-installed "NOT_INSTALLED"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error return-shipping-label-already-exists-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "ReturnShippingLabelAlreadyExistsException")
                                (:error-code 400) (:base-class snowball-error))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3on-device-service-configuration
                                    common-lisp:nil
                                    ((storage-limit :target-type
                                      s3storage-limit :member-name
                                      "StorageLimit")
                                     (storage-unit :target-type storage-unit
                                      :member-name "StorageUnit")
                                     (service-size :target-type service-size
                                      :member-name "ServiceSize")
                                     (fault-tolerance :target-type
                                      node-fault-tolerance :member-name
                                      "FaultTolerance"))
                                    (:shape-name
                                     "S3OnDeviceServiceConfiguration"))

(smithy/sdk/shapes:define-structure s3resource common-lisp:nil
                                    ((bucket-arn :target-type resource-arn
                                      :member-name "BucketArn")
                                     (key-range :target-type key-range
                                      :member-name "KeyRange")
                                     (target-on-device-services :target-type
                                      target-on-device-service-list
                                      :member-name "TargetOnDeviceServices"))
                                    (:shape-name "S3Resource"))

(smithy/sdk/shapes:define-list s3resource-list :member s3resource)

(smithy/sdk/shapes:define-type s3storage-limit smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-enum service-name
    common-lisp:nil
  (:kubernetes "KUBERNETES")
  (:eks-anywhere "EKS_ANYWHERE"))

(smithy/sdk/shapes:define-type service-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure service-version common-lisp:nil
                                    ((version :target-type string :member-name
                                      "Version"))
                                    (:shape-name "ServiceVersion"))

(smithy/sdk/shapes:define-list service-version-list :member service-version)

(smithy/sdk/shapes:define-structure shipment common-lisp:nil
                                    ((status :target-type string :member-name
                                      "Status")
                                     (tracking-number :target-type string
                                      :member-name "TrackingNumber"))
                                    (:shape-name "Shipment"))

(smithy/sdk/shapes:define-enum shipment-state
    common-lisp:nil
  (:received "RECEIVED")
  (:returned "RETURNED"))

(smithy/sdk/shapes:define-structure shipping-details common-lisp:nil
                                    ((shipping-option :target-type
                                      shipping-option :member-name
                                      "ShippingOption")
                                     (inbound-shipment :target-type shipment
                                      :member-name "InboundShipment")
                                     (outbound-shipment :target-type shipment
                                      :member-name "OutboundShipment"))
                                    (:shape-name "ShippingDetails"))

(smithy/sdk/shapes:define-enum shipping-label-status
    common-lisp:nil
  (:in-progress "InProgress")
  (:timed-out "TimedOut")
  (:succeeded "Succeeded")
  (:failed "Failed"))

(smithy/sdk/shapes:define-enum shipping-option
    common-lisp:nil
  (:second-day "SECOND_DAY")
  (:next-day "NEXT_DAY")
  (:express "EXPRESS")
  (:standard "STANDARD"))

(smithy/sdk/shapes:define-enum snowball-capacity
    common-lisp:nil
  (:t50 "T50")
  (:t80 "T80")
  (:t100 "T100")
  (:t42 "T42")
  (:t98 "T98")
  (:t8 "T8")
  (:t14 "T14")
  (:t32 "T32")
  (:no-preference "NoPreference")
  (:t240 "T240")
  (:t13 "T13"))

(smithy/sdk/shapes:define-enum snowball-type
    common-lisp:nil
  (:standard "STANDARD")
  (:edge "EDGE")
  (:edge-c "EDGE_C")
  (:edge-cg "EDGE_CG")
  (:edge-s "EDGE_S")
  (:snc1-hdd "SNC1_HDD")
  (:snc1-ssd "SNC1_SSD")
  (:v3-5c "V3_5C")
  (:v3-5s "V3_5S")
  (:rack-5u-c "RACK_5U_C"))

(smithy/sdk/shapes:define-structure snowcone-device-configuration
                                    common-lisp:nil
                                    ((wireless-connection :target-type
                                      wireless-connection :member-name
                                      "WirelessConnection"))
                                    (:shape-name "SnowconeDeviceConfiguration"))

(smithy/sdk/shapes:define-type sns-topic-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type storage-limit smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum storage-unit
    common-lisp:nil
  (:tb "TB"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tgwon-device-service-configuration
                                    common-lisp:nil
                                    ((storage-limit :target-type storage-limit
                                      :member-name "StorageLimit")
                                     (storage-unit :target-type storage-unit
                                      :member-name "StorageUnit"))
                                    (:shape-name
                                     "TGWOnDeviceServiceConfiguration"))

(smithy/sdk/shapes:define-structure target-on-device-service common-lisp:nil
                                    ((service-name :target-type
                                      device-service-name :member-name
                                      "ServiceName")
                                     (transfer-option :target-type
                                      transfer-option :member-name
                                      "TransferOption"))
                                    (:shape-name "TargetOnDeviceService"))

(smithy/sdk/shapes:define-list target-on-device-service-list :member
                               target-on-device-service)

(smithy/sdk/shapes:define-structure tax-documents common-lisp:nil
                                    ((ind :target-type indtax-documents
                                      :member-name "IND"))
                                    (:shape-name "TaxDocuments"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum transfer-option
    common-lisp:nil
  (:import "IMPORT")
  (:export "EXPORT")
  (:local-use "LOCAL_USE"))

(smithy/sdk/shapes:define-error unsupported-address-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "UnsupportedAddressException")
                                (:error-code 400) (:base-class snowball-error))

(smithy/sdk/shapes:define-input update-cluster-request common-lisp:nil
                                ((cluster-id :target-type cluster-id :required
                                  common-lisp:t :member-name "ClusterId")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleARN")
                                 (description :target-type string :member-name
                                  "Description")
                                 (resources :target-type job-resource
                                  :member-name "Resources")
                                 (on-device-service-configuration :target-type
                                  on-device-service-configuration :member-name
                                  "OnDeviceServiceConfiguration")
                                 (address-id :target-type address-id
                                  :member-name "AddressId")
                                 (shipping-option :target-type shipping-option
                                  :member-name "ShippingOption")
                                 (notification :target-type notification
                                  :member-name "Notification")
                                 (forwarding-address-id :target-type address-id
                                  :member-name "ForwardingAddressId"))
                                (:shape-name "UpdateClusterRequest"))

(smithy/sdk/shapes:define-output update-cluster-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateClusterResult"))

(smithy/sdk/shapes:define-input update-job-request common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId")
                                 (role-arn :target-type role-arn :member-name
                                  "RoleARN")
                                 (notification :target-type notification
                                  :member-name "Notification")
                                 (resources :target-type job-resource
                                  :member-name "Resources")
                                 (on-device-service-configuration :target-type
                                  on-device-service-configuration :member-name
                                  "OnDeviceServiceConfiguration")
                                 (address-id :target-type address-id
                                  :member-name "AddressId")
                                 (shipping-option :target-type shipping-option
                                  :member-name "ShippingOption")
                                 (description :target-type string :member-name
                                  "Description")
                                 (snowball-capacity-preference :target-type
                                  snowball-capacity :member-name
                                  "SnowballCapacityPreference")
                                 (forwarding-address-id :target-type address-id
                                  :member-name "ForwardingAddressId")
                                 (pickup-details :target-type pickup-details
                                  :member-name "PickupDetails"))
                                (:shape-name "UpdateJobRequest"))

(smithy/sdk/shapes:define-output update-job-result common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateJobResult"))

(smithy/sdk/shapes:define-input update-job-shipment-state-request
                                common-lisp:nil
                                ((job-id :target-type job-id :required
                                  common-lisp:t :member-name "JobId")
                                 (shipment-state :target-type shipment-state
                                  :required common-lisp:t :member-name
                                  "ShipmentState"))
                                (:shape-name "UpdateJobShipmentStateRequest"))

(smithy/sdk/shapes:define-output update-job-shipment-state-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateJobShipmentStateResult"))

(smithy/sdk/shapes:define-input update-long-term-pricing-request
                                common-lisp:nil
                                ((long-term-pricing-id :target-type
                                  long-term-pricing-id :required common-lisp:t
                                  :member-name "LongTermPricingId")
                                 (replacement-job :target-type job-id
                                  :member-name "ReplacementJob")
                                 (is-long-term-pricing-auto-renew :target-type
                                  java-boolean :member-name
                                  "IsLongTermPricingAutoRenew"))
                                (:shape-name "UpdateLongTermPricingRequest"))

(smithy/sdk/shapes:define-output update-long-term-pricing-result
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "UpdateLongTermPricingResult"))

(smithy/sdk/shapes:define-structure wireless-connection common-lisp:nil
                                    ((is-wifi-enabled :target-type boolean
                                      :member-name "IsWifiEnabled"))
                                    (:shape-name "WirelessConnection"))

(smithy/sdk/operation:define-operation cancel-cluster :shape-name
                                       "CancelCluster" :input
                                       cancel-cluster-request :output
                                       cancel-cluster-result :errors
                                       (invalid-job-state-exception
                                        invalid-resource-exception
                                        kmsrequest-failed-exception))

(smithy/sdk/operation:define-operation cancel-job :shape-name "CancelJob"
                                       :input cancel-job-request :output
                                       cancel-job-result :errors
                                       (invalid-job-state-exception
                                        invalid-resource-exception
                                        kmsrequest-failed-exception))

(smithy/sdk/operation:define-operation create-address :shape-name
                                       "CreateAddress" :input
                                       create-address-request :output
                                       create-address-result :errors
                                       (invalid-address-exception
                                        unsupported-address-exception))

(smithy/sdk/operation:define-operation create-cluster :shape-name
                                       "CreateCluster" :input
                                       create-cluster-request :output
                                       create-cluster-result :errors
                                       (ec2request-failed-exception
                                        invalid-input-combination-exception
                                        invalid-resource-exception
                                        kmsrequest-failed-exception))

(smithy/sdk/operation:define-operation create-job :shape-name "CreateJob"
                                       :input create-job-request :output
                                       create-job-result :errors
                                       (cluster-limit-exceeded-exception
                                        ec2request-failed-exception
                                        invalid-input-combination-exception
                                        invalid-resource-exception
                                        kmsrequest-failed-exception))

(smithy/sdk/operation:define-operation create-long-term-pricing :shape-name
                                       "CreateLongTermPricing" :input
                                       create-long-term-pricing-request :output
                                       create-long-term-pricing-result :errors
                                       (invalid-resource-exception))

(smithy/sdk/operation:define-operation create-return-shipping-label :shape-name
                                       "CreateReturnShippingLabel" :input
                                       create-return-shipping-label-request
                                       :output
                                       create-return-shipping-label-result
                                       :errors
                                       (conflict-exception
                                        invalid-input-combination-exception
                                        invalid-job-state-exception
                                        invalid-resource-exception
                                        return-shipping-label-already-exists-exception))

(smithy/sdk/operation:define-operation describe-address :shape-name
                                       "DescribeAddress" :input
                                       describe-address-request :output
                                       describe-address-result :errors
                                       (invalid-resource-exception))

(smithy/sdk/operation:define-operation describe-addresses :shape-name
                                       "DescribeAddresses" :input
                                       describe-addresses-request :output
                                       describe-addresses-result :errors
                                       (invalid-next-token-exception
                                        invalid-resource-exception))

(smithy/sdk/operation:define-operation describe-cluster :shape-name
                                       "DescribeCluster" :input
                                       describe-cluster-request :output
                                       describe-cluster-result :errors
                                       (invalid-resource-exception))

(smithy/sdk/operation:define-operation describe-job :shape-name "DescribeJob"
                                       :input describe-job-request :output
                                       describe-job-result :errors
                                       (invalid-resource-exception))

(smithy/sdk/operation:define-operation describe-return-shipping-label
                                       :shape-name
                                       "DescribeReturnShippingLabel" :input
                                       describe-return-shipping-label-request
                                       :output
                                       describe-return-shipping-label-result
                                       :errors
                                       (conflict-exception
                                        invalid-job-state-exception
                                        invalid-resource-exception))

(smithy/sdk/operation:define-operation get-job-manifest :shape-name
                                       "GetJobManifest" :input
                                       get-job-manifest-request :output
                                       get-job-manifest-result :errors
                                       (invalid-job-state-exception
                                        invalid-resource-exception))

(smithy/sdk/operation:define-operation get-job-unlock-code :shape-name
                                       "GetJobUnlockCode" :input
                                       get-job-unlock-code-request :output
                                       get-job-unlock-code-result :errors
                                       (invalid-job-state-exception
                                        invalid-resource-exception))

(smithy/sdk/operation:define-operation get-snowball-usage :shape-name
                                       "GetSnowballUsage" :input
                                       get-snowball-usage-request :output
                                       get-snowball-usage-result :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation get-software-updates :shape-name
                                       "GetSoftwareUpdates" :input
                                       get-software-updates-request :output
                                       get-software-updates-result :errors
                                       (invalid-job-state-exception
                                        invalid-resource-exception))

(smithy/sdk/operation:define-operation list-cluster-jobs :shape-name
                                       "ListClusterJobs" :input
                                       list-cluster-jobs-request :output
                                       list-cluster-jobs-result :errors
                                       (invalid-next-token-exception
                                        invalid-resource-exception))

(smithy/sdk/operation:define-operation list-clusters :shape-name "ListClusters"
                                       :input list-clusters-request :output
                                       list-clusters-result :errors
                                       (invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-compatible-images :shape-name
                                       "ListCompatibleImages" :input
                                       list-compatible-images-request :output
                                       list-compatible-images-result :errors
                                       (ec2request-failed-exception
                                        invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-jobs :shape-name "ListJobs" :input
                                       list-jobs-request :output
                                       list-jobs-result :errors
                                       (invalid-next-token-exception))

(smithy/sdk/operation:define-operation list-long-term-pricing :shape-name
                                       "ListLongTermPricing" :input
                                       list-long-term-pricing-request :output
                                       list-long-term-pricing-result :errors
                                       (invalid-next-token-exception
                                        invalid-resource-exception))

(smithy/sdk/operation:define-operation list-pickup-locations :shape-name
                                       "ListPickupLocations" :input
                                       list-pickup-locations-request :output
                                       list-pickup-locations-result :errors
                                       (invalid-resource-exception))

(smithy/sdk/operation:define-operation list-service-versions :shape-name
                                       "ListServiceVersions" :input
                                       list-service-versions-request :output
                                       list-service-versions-result :errors
                                       (invalid-next-token-exception
                                        invalid-resource-exception))

(smithy/sdk/operation:define-operation update-cluster :shape-name
                                       "UpdateCluster" :input
                                       update-cluster-request :output
                                       update-cluster-result :errors
                                       (ec2request-failed-exception
                                        invalid-input-combination-exception
                                        invalid-job-state-exception
                                        invalid-resource-exception
                                        kmsrequest-failed-exception))

(smithy/sdk/operation:define-operation update-job :shape-name "UpdateJob"
                                       :input update-job-request :output
                                       update-job-result :errors
                                       (cluster-limit-exceeded-exception
                                        ec2request-failed-exception
                                        invalid-input-combination-exception
                                        invalid-job-state-exception
                                        invalid-resource-exception
                                        kmsrequest-failed-exception))

(smithy/sdk/operation:define-operation update-job-shipment-state :shape-name
                                       "UpdateJobShipmentState" :input
                                       update-job-shipment-state-request
                                       :output update-job-shipment-state-result
                                       :errors
                                       (invalid-job-state-exception
                                        invalid-resource-exception))

(smithy/sdk/operation:define-operation update-long-term-pricing :shape-name
                                       "UpdateLongTermPricing" :input
                                       update-long-term-pricing-request :output
                                       update-long-term-pricing-result :errors
                                       (invalid-resource-exception))
