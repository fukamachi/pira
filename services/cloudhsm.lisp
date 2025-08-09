(uiop/package:define-package #:pira/cloudhsm (:use)
                             (:export #:az #:azlist #:add-tags-to-resource
                              #:add-tags-to-resource-request
                              #:add-tags-to-resource-response #:boolean
                              #:certificate #:certificate-fingerprint
                              #:client-arn #:client-label #:client-list
                              #:client-token #:client-version
                              #:cloud-hsm-frontend-service
                              #:cloud-hsm-internal-exception
                              #:cloud-hsm-object-state
                              #:cloud-hsm-service-exception #:create-hapg
                              #:create-hapg-request #:create-hapg-response
                              #:create-hsm #:create-hsm-request
                              #:create-hsm-response #:create-luna-client
                              #:create-luna-client-request
                              #:create-luna-client-response #:delete-hapg
                              #:delete-hapg-request #:delete-hapg-response
                              #:delete-hsm #:delete-hsm-request
                              #:delete-hsm-response #:delete-luna-client
                              #:delete-luna-client-request
                              #:delete-luna-client-response #:describe-hapg
                              #:describe-hapg-request #:describe-hapg-response
                              #:describe-hsm #:describe-hsm-request
                              #:describe-hsm-response #:describe-luna-client
                              #:describe-luna-client-request
                              #:describe-luna-client-response #:eni-id
                              #:external-id #:get-config #:get-config-request
                              #:get-config-response #:hapg-arn #:hapg-list
                              #:hsm-arn #:hsm-list #:hsm-serial-number
                              #:hsm-status #:iam-role-arn
                              #:invalid-request-exception #:ip-address #:label
                              #:list-available-zones
                              #:list-available-zones-request
                              #:list-available-zones-response #:list-hapgs
                              #:list-hapgs-request #:list-hapgs-response
                              #:list-hsms #:list-hsms-request
                              #:list-hsms-response #:list-luna-clients
                              #:list-luna-clients-request
                              #:list-luna-clients-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:modify-hapg
                              #:modify-hapg-request #:modify-hapg-response
                              #:modify-hsm #:modify-hsm-request
                              #:modify-hsm-response #:modify-luna-client
                              #:modify-luna-client-request
                              #:modify-luna-client-response #:pagination-token
                              #:partition-arn #:partition-list
                              #:partition-serial #:partition-serial-list
                              #:remove-tags-from-resource
                              #:remove-tags-from-resource-request
                              #:remove-tags-from-resource-response #:ssh-key
                              #:string #:subnet-id #:subscription-type #:tag
                              #:tag-key #:tag-key-list #:tag-list #:tag-value
                              #:timestamp #:vpc-id))
(common-lisp:in-package #:pira/cloudhsm)

(smithy/sdk/service:define-service cloud-hsm-frontend-service :shape-name
                                   "CloudHsmFrontendService" :version
                                   "2014-05-30" :title "Amazon CloudHSM"
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "CloudHSM")
                                      ("arnNamespace" . "cloudhsm")
                                      ("cloudFormationName" . "CloudHSM")
                                      ("cloudTrailEventSource"
                                       . "cloudhsm.amazonaws.com")
                                      ("endpointPrefix" . "cloudhsm"))
                                     ("aws.auth#sigv4" ("name" . "cloudhsm"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type az smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list azlist :member az)

(smithy/sdk/shapes:define-input add-tags-to-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tag-list :target-type tag-list :required
                                  common-lisp:t :member-name "TagList"))
                                (:shape-name "AddTagsToResourceRequest"))

(smithy/sdk/shapes:define-output add-tags-to-resource-response common-lisp:nil
                                 ((status :target-type string :required
                                   common-lisp:t :member-name "Status"))
                                 (:shape-name "AddTagsToResourceResponse"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type certificate smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type certificate-fingerprint
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list client-list :member client-arn)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum client-version
    common-lisp:nil
  (:five-one "5.1")
  (:five-three "5.3"))

(smithy/sdk/shapes:define-error cloud-hsm-internal-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message")
                                 (retryable :target-type boolean :member-name
                                  "retryable"))
                                (:shape-name "CloudHsmInternalException")
                                (:error-code 500))

(smithy/sdk/shapes:define-enum cloud-hsm-object-state
    common-lisp:nil
  (:ready "READY")
  (:updating "UPDATING")
  (:degraded "DEGRADED"))

(smithy/sdk/shapes:define-error cloud-hsm-service-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message")
                                 (retryable :target-type boolean :member-name
                                  "retryable"))
                                (:shape-name "CloudHsmServiceException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input create-hapg-request common-lisp:nil
                                ((label :target-type label :required
                                  common-lisp:t :member-name "Label"))
                                (:shape-name "CreateHapgRequest"))

(smithy/sdk/shapes:define-output create-hapg-response common-lisp:nil
                                 ((hapg-arn :target-type hapg-arn :member-name
                                   "HapgArn"))
                                 (:shape-name "CreateHapgResponse"))

(smithy/sdk/shapes:define-input create-hsm-request common-lisp:nil
                                ((subnet-id :target-type subnet-id :required
                                  common-lisp:t :member-name "SubnetId"
                                  :xml-name "SubnetId")
                                 (ssh-key :target-type ssh-key :required
                                  common-lisp:t :member-name "SshKey" :xml-name
                                  "SshKey")
                                 (eni-ip :target-type ip-address :member-name
                                  "EniIp" :xml-name "EniIp")
                                 (iam-role-arn :target-type iam-role-arn
                                  :required common-lisp:t :member-name
                                  "IamRoleArn" :xml-name "IamRoleArn")
                                 (external-id :target-type external-id
                                  :member-name "ExternalId" :xml-name
                                  "ExternalId")
                                 (subscription-type :target-type
                                  subscription-type :required common-lisp:t
                                  :member-name "SubscriptionType" :xml-name
                                  "SubscriptionType")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken" :xml-name
                                  "ClientToken")
                                 (syslog-ip :target-type ip-address
                                  :member-name "SyslogIp" :xml-name
                                  "SyslogIp"))
                                (:shape-name "CreateHsmRequest")
                                (:xml-name "CreateHsmRequest"))

(smithy/sdk/shapes:define-output create-hsm-response common-lisp:nil
                                 ((hsm-arn :target-type hsm-arn :member-name
                                   "HsmArn"))
                                 (:shape-name "CreateHsmResponse"))

(smithy/sdk/shapes:define-input create-luna-client-request common-lisp:nil
                                ((label :target-type client-label :member-name
                                  "Label")
                                 (certificate :target-type certificate
                                  :required common-lisp:t :member-name
                                  "Certificate"))
                                (:shape-name "CreateLunaClientRequest"))

(smithy/sdk/shapes:define-output create-luna-client-response common-lisp:nil
                                 ((client-arn :target-type client-arn
                                   :member-name "ClientArn"))
                                 (:shape-name "CreateLunaClientResponse"))

(smithy/sdk/shapes:define-input delete-hapg-request common-lisp:nil
                                ((hapg-arn :target-type hapg-arn :required
                                  common-lisp:t :member-name "HapgArn"))
                                (:shape-name "DeleteHapgRequest"))

(smithy/sdk/shapes:define-output delete-hapg-response common-lisp:nil
                                 ((status :target-type string :required
                                   common-lisp:t :member-name "Status"))
                                 (:shape-name "DeleteHapgResponse"))

(smithy/sdk/shapes:define-input delete-hsm-request common-lisp:nil
                                ((hsm-arn :target-type hsm-arn :required
                                  common-lisp:t :member-name "HsmArn" :xml-name
                                  "HsmArn"))
                                (:shape-name "DeleteHsmRequest")
                                (:xml-name "DeleteHsmRequest"))

(smithy/sdk/shapes:define-output delete-hsm-response common-lisp:nil
                                 ((status :target-type string :required
                                   common-lisp:t :member-name "Status"))
                                 (:shape-name "DeleteHsmResponse"))

(smithy/sdk/shapes:define-input delete-luna-client-request common-lisp:nil
                                ((client-arn :target-type client-arn :required
                                  common-lisp:t :member-name "ClientArn"))
                                (:shape-name "DeleteLunaClientRequest"))

(smithy/sdk/shapes:define-output delete-luna-client-response common-lisp:nil
                                 ((status :target-type string :required
                                   common-lisp:t :member-name "Status"))
                                 (:shape-name "DeleteLunaClientResponse"))

(smithy/sdk/shapes:define-input describe-hapg-request common-lisp:nil
                                ((hapg-arn :target-type hapg-arn :required
                                  common-lisp:t :member-name "HapgArn"))
                                (:shape-name "DescribeHapgRequest"))

(smithy/sdk/shapes:define-output describe-hapg-response common-lisp:nil
                                 ((hapg-arn :target-type hapg-arn :member-name
                                   "HapgArn")
                                  (hapg-serial :target-type string :member-name
                                   "HapgSerial")
                                  (hsms-last-action-failed :target-type
                                   hsm-list :member-name
                                   "HsmsLastActionFailed")
                                  (hsms-pending-deletion :target-type hsm-list
                                   :member-name "HsmsPendingDeletion")
                                  (hsms-pending-registration :target-type
                                   hsm-list :member-name
                                   "HsmsPendingRegistration")
                                  (label :target-type label :member-name
                                   "Label")
                                  (last-modified-timestamp :target-type
                                   timestamp :member-name
                                   "LastModifiedTimestamp")
                                  (partition-serial-list :target-type
                                   partition-serial-list :member-name
                                   "PartitionSerialList")
                                  (state :target-type cloud-hsm-object-state
                                   :member-name "State"))
                                 (:shape-name "DescribeHapgResponse"))

(smithy/sdk/shapes:define-input describe-hsm-request common-lisp:nil
                                ((hsm-arn :target-type hsm-arn :member-name
                                  "HsmArn")
                                 (hsm-serial-number :target-type
                                  hsm-serial-number :member-name
                                  "HsmSerialNumber"))
                                (:shape-name "DescribeHsmRequest"))

(smithy/sdk/shapes:define-output describe-hsm-response common-lisp:nil
                                 ((hsm-arn :target-type hsm-arn :member-name
                                   "HsmArn")
                                  (status :target-type hsm-status :member-name
                                   "Status")
                                  (status-details :target-type string
                                   :member-name "StatusDetails")
                                  (availability-zone :target-type az
                                   :member-name "AvailabilityZone")
                                  (eni-id :target-type eni-id :member-name
                                   "EniId")
                                  (eni-ip :target-type ip-address :member-name
                                   "EniIp")
                                  (subscription-type :target-type
                                   subscription-type :member-name
                                   "SubscriptionType")
                                  (subscription-start-date :target-type
                                   timestamp :member-name
                                   "SubscriptionStartDate")
                                  (subscription-end-date :target-type timestamp
                                   :member-name "SubscriptionEndDate")
                                  (vpc-id :target-type vpc-id :member-name
                                   "VpcId")
                                  (subnet-id :target-type subnet-id
                                   :member-name "SubnetId")
                                  (iam-role-arn :target-type iam-role-arn
                                   :member-name "IamRoleArn")
                                  (serial-number :target-type hsm-serial-number
                                   :member-name "SerialNumber")
                                  (vendor-name :target-type string :member-name
                                   "VendorName")
                                  (hsm-type :target-type string :member-name
                                   "HsmType")
                                  (software-version :target-type string
                                   :member-name "SoftwareVersion")
                                  (ssh-public-key :target-type ssh-key
                                   :member-name "SshPublicKey")
                                  (ssh-key-last-updated :target-type timestamp
                                   :member-name "SshKeyLastUpdated")
                                  (server-cert-uri :target-type string
                                   :member-name "ServerCertUri")
                                  (server-cert-last-updated :target-type
                                   timestamp :member-name
                                   "ServerCertLastUpdated")
                                  (partitions :target-type partition-list
                                   :member-name "Partitions"))
                                 (:shape-name "DescribeHsmResponse"))

(smithy/sdk/shapes:define-input describe-luna-client-request common-lisp:nil
                                ((client-arn :target-type client-arn
                                  :member-name "ClientArn")
                                 (certificate-fingerprint :target-type
                                  certificate-fingerprint :member-name
                                  "CertificateFingerprint"))
                                (:shape-name "DescribeLunaClientRequest"))

(smithy/sdk/shapes:define-output describe-luna-client-response common-lisp:nil
                                 ((client-arn :target-type client-arn
                                   :member-name "ClientArn")
                                  (certificate :target-type certificate
                                   :member-name "Certificate")
                                  (certificate-fingerprint :target-type
                                   certificate-fingerprint :member-name
                                   "CertificateFingerprint")
                                  (last-modified-timestamp :target-type
                                   timestamp :member-name
                                   "LastModifiedTimestamp")
                                  (label :target-type label :member-name
                                   "Label"))
                                 (:shape-name "DescribeLunaClientResponse"))

(smithy/sdk/shapes:define-type eni-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type external-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-config-request common-lisp:nil
                                ((client-arn :target-type client-arn :required
                                  common-lisp:t :member-name "ClientArn")
                                 (client-version :target-type client-version
                                  :required common-lisp:t :member-name
                                  "ClientVersion")
                                 (hapg-list :target-type hapg-list :required
                                  common-lisp:t :member-name "HapgList"))
                                (:shape-name "GetConfigRequest"))

(smithy/sdk/shapes:define-output get-config-response common-lisp:nil
                                 ((config-type :target-type string :member-name
                                   "ConfigType")
                                  (config-file :target-type string :member-name
                                   "ConfigFile")
                                  (config-cred :target-type string :member-name
                                   "ConfigCred"))
                                 (:shape-name "GetConfigResponse"))

(smithy/sdk/shapes:define-type hapg-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list hapg-list :member hapg-arn)

(smithy/sdk/shapes:define-type hsm-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list hsm-list :member hsm-arn)

(smithy/sdk/shapes:define-type hsm-serial-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum hsm-status
    common-lisp:nil
  (:pending "PENDING")
  (:running "RUNNING")
  (:updating "UPDATING")
  (:suspended "SUSPENDED")
  (:terminating "TERMINATING")
  (:terminated "TERMINATED")
  (:degraded "DEGRADED"))

(smithy/sdk/shapes:define-type iam-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message")
                                 (retryable :target-type boolean :member-name
                                  "retryable"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type ip-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-available-zones-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "ListAvailableZonesRequest"))

(smithy/sdk/shapes:define-output list-available-zones-response common-lisp:nil
                                 ((azlist :target-type azlist :member-name
                                   "AZList"))
                                 (:shape-name "ListAvailableZonesResponse"))

(smithy/sdk/shapes:define-input list-hapgs-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "ListHapgsRequest"))

(smithy/sdk/shapes:define-output list-hapgs-response common-lisp:nil
                                 ((hapg-list :target-type hapg-list :required
                                   common-lisp:t :member-name "HapgList")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListHapgsResponse"))

(smithy/sdk/shapes:define-input list-hsms-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "ListHsmsRequest"))

(smithy/sdk/shapes:define-output list-hsms-response common-lisp:nil
                                 ((hsm-list :target-type hsm-list :member-name
                                   "HsmList")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListHsmsResponse"))

(smithy/sdk/shapes:define-input list-luna-clients-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "NextToken"))
                                (:shape-name "ListLunaClientsRequest"))

(smithy/sdk/shapes:define-output list-luna-clients-response common-lisp:nil
                                 ((client-list :target-type client-list
                                   :required common-lisp:t :member-name
                                   "ClientList")
                                  (next-token :target-type pagination-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListLunaClientsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tag-list :target-type tag-list :required
                                   common-lisp:t :member-name "TagList"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input modify-hapg-request common-lisp:nil
                                ((hapg-arn :target-type hapg-arn :required
                                  common-lisp:t :member-name "HapgArn")
                                 (label :target-type label :member-name
                                  "Label")
                                 (partition-serial-list :target-type
                                  partition-serial-list :member-name
                                  "PartitionSerialList"))
                                (:shape-name "ModifyHapgRequest"))

(smithy/sdk/shapes:define-output modify-hapg-response common-lisp:nil
                                 ((hapg-arn :target-type hapg-arn :member-name
                                   "HapgArn"))
                                 (:shape-name "ModifyHapgResponse"))

(smithy/sdk/shapes:define-input modify-hsm-request common-lisp:nil
                                ((hsm-arn :target-type hsm-arn :required
                                  common-lisp:t :member-name "HsmArn" :xml-name
                                  "HsmArn")
                                 (subnet-id :target-type subnet-id :member-name
                                  "SubnetId" :xml-name "SubnetId")
                                 (eni-ip :target-type ip-address :member-name
                                  "EniIp" :xml-name "EniIp")
                                 (iam-role-arn :target-type iam-role-arn
                                  :member-name "IamRoleArn" :xml-name
                                  "IamRoleArn")
                                 (external-id :target-type external-id
                                  :member-name "ExternalId" :xml-name
                                  "ExternalId")
                                 (syslog-ip :target-type ip-address
                                  :member-name "SyslogIp" :xml-name
                                  "SyslogIp"))
                                (:shape-name "ModifyHsmRequest")
                                (:xml-name "ModifyHsmRequest"))

(smithy/sdk/shapes:define-output modify-hsm-response common-lisp:nil
                                 ((hsm-arn :target-type hsm-arn :member-name
                                   "HsmArn"))
                                 (:shape-name "ModifyHsmResponse"))

(smithy/sdk/shapes:define-input modify-luna-client-request common-lisp:nil
                                ((client-arn :target-type client-arn :required
                                  common-lisp:t :member-name "ClientArn")
                                 (certificate :target-type certificate
                                  :required common-lisp:t :member-name
                                  "Certificate"))
                                (:shape-name "ModifyLunaClientRequest"))

(smithy/sdk/shapes:define-output modify-luna-client-response common-lisp:nil
                                 ((client-arn :target-type client-arn
                                   :member-name "ClientArn"))
                                 (:shape-name "ModifyLunaClientResponse"))

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type partition-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list partition-list :member partition-arn)

(smithy/sdk/shapes:define-type partition-serial smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list partition-serial-list :member partition-serial)

(smithy/sdk/shapes:define-input remove-tags-from-resource-request
                                common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn")
                                 (tag-key-list :target-type tag-key-list
                                  :required common-lisp:t :member-name
                                  "TagKeyList"))
                                (:shape-name "RemoveTagsFromResourceRequest"))

(smithy/sdk/shapes:define-output remove-tags-from-resource-response
                                 common-lisp:nil
                                 ((status :target-type string :required
                                   common-lisp:t :member-name "Status"))
                                 (:shape-name "RemoveTagsFromResourceResponse"))

(smithy/sdk/shapes:define-type ssh-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum subscription-type
    common-lisp:nil
  (:production "PRODUCTION"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation add-tags-to-resource :shape-name
                                       "AddTagsToResource" :input
                                       add-tags-to-resource-request :output
                                       add-tags-to-resource-response :errors
                                       (cloud-hsm-internal-exception
                                        cloud-hsm-service-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-hapg :shape-name "CreateHapg"
                                       :input create-hapg-request :output
                                       create-hapg-response :errors
                                       (cloud-hsm-internal-exception
                                        cloud-hsm-service-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-hsm :shape-name "CreateHsm"
                                       :input create-hsm-request :output
                                       create-hsm-response :errors
                                       (cloud-hsm-internal-exception
                                        cloud-hsm-service-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation create-luna-client :shape-name
                                       "CreateLunaClient" :input
                                       create-luna-client-request :output
                                       create-luna-client-response :errors
                                       (cloud-hsm-internal-exception
                                        cloud-hsm-service-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation delete-hapg :shape-name "DeleteHapg"
                                       :input delete-hapg-request :output
                                       delete-hapg-response :errors
                                       (cloud-hsm-internal-exception
                                        cloud-hsm-service-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation delete-hsm :shape-name "DeleteHsm"
                                       :input delete-hsm-request :output
                                       delete-hsm-response :errors
                                       (cloud-hsm-internal-exception
                                        cloud-hsm-service-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation delete-luna-client :shape-name
                                       "DeleteLunaClient" :input
                                       delete-luna-client-request :output
                                       delete-luna-client-response :errors
                                       (cloud-hsm-internal-exception
                                        cloud-hsm-service-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-hapg :shape-name "DescribeHapg"
                                       :input describe-hapg-request :output
                                       describe-hapg-response :errors
                                       (cloud-hsm-internal-exception
                                        cloud-hsm-service-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-hsm :shape-name "DescribeHsm"
                                       :input describe-hsm-request :output
                                       describe-hsm-response :errors
                                       (cloud-hsm-internal-exception
                                        cloud-hsm-service-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-luna-client :shape-name
                                       "DescribeLunaClient" :input
                                       describe-luna-client-request :output
                                       describe-luna-client-response :errors
                                       (cloud-hsm-internal-exception
                                        cloud-hsm-service-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation get-config :shape-name "GetConfig"
                                       :input get-config-request :output
                                       get-config-response :errors
                                       (cloud-hsm-internal-exception
                                        cloud-hsm-service-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-available-zones :shape-name
                                       "ListAvailableZones" :input
                                       list-available-zones-request :output
                                       list-available-zones-response :errors
                                       (cloud-hsm-internal-exception
                                        cloud-hsm-service-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-hapgs :shape-name "ListHapgs"
                                       :input list-hapgs-request :output
                                       list-hapgs-response :errors
                                       (cloud-hsm-internal-exception
                                        cloud-hsm-service-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-hsms :shape-name "ListHsms" :input
                                       list-hsms-request :output
                                       list-hsms-response :errors
                                       (cloud-hsm-internal-exception
                                        cloud-hsm-service-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-luna-clients :shape-name
                                       "ListLunaClients" :input
                                       list-luna-clients-request :output
                                       list-luna-clients-response :errors
                                       (cloud-hsm-internal-exception
                                        cloud-hsm-service-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (cloud-hsm-internal-exception
                                        cloud-hsm-service-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation modify-hapg :shape-name "ModifyHapg"
                                       :input modify-hapg-request :output
                                       modify-hapg-response :errors
                                       (cloud-hsm-internal-exception
                                        cloud-hsm-service-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation modify-hsm :shape-name "ModifyHsm"
                                       :input modify-hsm-request :output
                                       modify-hsm-response :errors
                                       (cloud-hsm-internal-exception
                                        cloud-hsm-service-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation modify-luna-client :shape-name
                                       "ModifyLunaClient" :input
                                       modify-luna-client-request :output
                                       modify-luna-client-response :errors
                                       (cloud-hsm-service-exception))

(smithy/sdk/operation:define-operation remove-tags-from-resource :shape-name
                                       "RemoveTagsFromResource" :input
                                       remove-tags-from-resource-request
                                       :output
                                       remove-tags-from-resource-response
                                       :errors
                                       (cloud-hsm-internal-exception
                                        cloud-hsm-service-exception
                                        invalid-request-exception))
