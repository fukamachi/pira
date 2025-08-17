(uiop/package:define-package #:pira/securitylake (:use)
                             (:export #:access-type #:access-type-list
                              #:account-list #:amazon-resource-name
                              #:aws-account-id #:aws-identity
                              #:aws-log-source-configuration
                              #:aws-log-source-configuration-list
                              #:aws-log-source-name #:aws-log-source-resource
                              #:aws-log-source-resource-list
                              #:aws-log-source-version #:aws-principal
                              #:create-aws-log-source
                              #:create-custom-log-source #:create-data-lake
                              #:create-data-lake-exception-subscription
                              #:create-data-lake-organization-configuration
                              #:create-subscriber
                              #:create-subscriber-notification
                              #:custom-log-source-attributes
                              #:custom-log-source-configuration
                              #:custom-log-source-crawler-configuration
                              #:custom-log-source-name
                              #:custom-log-source-provider
                              #:custom-log-source-resource
                              #:custom-log-source-version #:data-lake
                              #:data-lake-auto-enable-new-account-configuration
                              #:data-lake-auto-enable-new-account-configuration-list
                              #:data-lake-configuration
                              #:data-lake-configuration-list
                              #:data-lake-encryption-configuration
                              #:data-lake-exception #:data-lake-exception-list
                              #:data-lake-lifecycle-configuration
                              #:data-lake-lifecycle-expiration
                              #:data-lake-lifecycle-transition
                              #:data-lake-lifecycle-transition-list
                              #:data-lake-replication-configuration
                              #:data-lake-resource #:data-lake-resource-list
                              #:data-lake-source #:data-lake-source-list
                              #:data-lake-source-status
                              #:data-lake-source-status-list #:data-lake-status
                              #:data-lake-storage-class
                              #:data-lake-update-exception
                              #:data-lake-update-status #:delete-aws-log-source
                              #:delete-custom-log-source #:delete-data-lake
                              #:delete-data-lake-exception-subscription
                              #:delete-data-lake-organization-configuration
                              #:delete-subscriber
                              #:delete-subscriber-notification
                              #:deregister-data-lake-delegated-administrator
                              #:description-string #:external-id
                              #:get-data-lake-exception-subscription
                              #:get-data-lake-organization-configuration
                              #:get-data-lake-sources #:get-subscriber
                              #:http-method #:https-notification-configuration
                              #:list-data-lake-exceptions #:list-data-lakes
                              #:list-log-sources #:list-subscribers
                              #:list-tags-for-resource #:log-source
                              #:log-source-list #:log-source-resource
                              #:log-source-resource-list #:max-results
                              #:next-token #:notification-configuration
                              #:ocsf-event-class #:ocsf-event-class-list
                              #:region #:region-list
                              #:register-data-lake-delegated-administrator
                              #:resource-share-arn #:resource-share-name
                              #:role-arn #:s3bucket-arn #:s3uri #:safe-string
                              #:security-lake #:source-collection-status
                              #:sqs-notification-configuration #:subscriber
                              #:subscriber-resource #:subscriber-resource-list
                              #:subscriber-status #:subscription-protocol #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value #:uuid
                              #:untag-resource #:update-data-lake
                              #:update-data-lake-exception-subscription
                              #:update-subscriber
                              #:update-subscriber-notification))
(common-lisp:in-package #:pira/securitylake)

(smithy/sdk/service:define-service security-lake :shape-name "SecurityLake"
                                   :version "2018-05-10" :title
                                   "Amazon Security Lake" :operations
                                   '(create-data-lake-exception-subscription
                                     delete-data-lake-exception-subscription
                                     deregister-data-lake-delegated-administrator
                                     get-data-lake-exception-subscription
                                     list-data-lake-exceptions
                                     list-tags-for-resource
                                     register-data-lake-delegated-administrator
                                     tag-resource untag-resource
                                     update-data-lake-exception-subscription)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "SecurityLake")
                                      ("arnNamespace" . "securitylake")
                                      ("cloudTrailEventSource"
                                       . "securitylake.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "securitylake"))
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the tags associated with the resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by tags that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by tag keys that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys")))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (error-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "errorCode"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-enum access-type
    common-lisp:nil
  (:lakeformation "LAKEFORMATION")
  (:s3 "S3"))

(smithy/sdk/shapes:define-list access-type-list :member access-type)

(smithy/sdk/shapes:define-list account-list :member aws-account-id)

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aws-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure aws-identity common-lisp:nil
                                    ((principal :target-type aws-principal
                                      :required common-lisp:t :member-name
                                      "principal")
                                     (external-id :target-type external-id
                                      :required common-lisp:t :member-name
                                      "externalId"))
                                    (:shape-name "AwsIdentity"))

(smithy/sdk/shapes:define-structure aws-log-source-configuration
                                    common-lisp:nil
                                    ((accounts :target-type account-list
                                      :member-name "accounts")
                                     (regions :target-type region-list
                                      :required common-lisp:t :member-name
                                      "regions")
                                     (source-name :target-type
                                      aws-log-source-name :required
                                      common-lisp:t :member-name "sourceName")
                                     (source-version :target-type
                                      aws-log-source-version :member-name
                                      "sourceVersion"))
                                    (:shape-name "AwsLogSourceConfiguration"))

(smithy/sdk/shapes:define-list aws-log-source-configuration-list :member
                               aws-log-source-configuration)

(smithy/sdk/shapes:define-enum aws-log-source-name
    common-lisp:nil
  (:route53 "ROUTE53")
  (:vpc-flow "VPC_FLOW")
  (:sh-findings "SH_FINDINGS")
  (:cloud-trail-mgmt "CLOUD_TRAIL_MGMT")
  (:lambda-execution "LAMBDA_EXECUTION")
  (:s3-data "S3_DATA")
  (:eks-audit "EKS_AUDIT")
  (:waf "WAF"))

(smithy/sdk/shapes:define-structure aws-log-source-resource common-lisp:nil
                                    ((source-name :target-type
                                      aws-log-source-name :member-name
                                      "sourceName")
                                     (source-version :target-type
                                      aws-log-source-version :member-name
                                      "sourceVersion"))
                                    (:shape-name "AwsLogSourceResource"))

(smithy/sdk/shapes:define-list aws-log-source-resource-list :member
                               aws-log-source-resource)

(smithy/sdk/shapes:define-type aws-log-source-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aws-principal smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (resource-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceName")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-aws-log-source-request common-lisp:nil
                                ((sources :target-type
                                  aws-log-source-configuration-list :required
                                  common-lisp:t :member-name "sources"))
                                (:shape-name "CreateAwsLogSourceRequest"))

(smithy/sdk/shapes:define-output create-aws-log-source-response common-lisp:nil
                                 ((failed :target-type account-list
                                   :member-name "failed"))
                                 (:shape-name "CreateAwsLogSourceResponse"))

(smithy/sdk/shapes:define-input create-custom-log-source-request
                                common-lisp:nil
                                ((source-name :target-type
                                  custom-log-source-name :required
                                  common-lisp:t :member-name "sourceName")
                                 (source-version :target-type
                                  custom-log-source-version :member-name
                                  "sourceVersion")
                                 (event-classes :target-type
                                  ocsf-event-class-list :member-name
                                  "eventClasses")
                                 (configuration :target-type
                                  custom-log-source-configuration :required
                                  common-lisp:t :member-name "configuration"))
                                (:shape-name "CreateCustomLogSourceRequest"))

(smithy/sdk/shapes:define-output create-custom-log-source-response
                                 common-lisp:nil
                                 ((source :target-type
                                   custom-log-source-resource :member-name
                                   "source"))
                                 (:shape-name "CreateCustomLogSourceResponse"))

(smithy/sdk/shapes:define-input create-data-lake-exception-subscription-request
                                common-lisp:nil
                                ((subscription-protocol :target-type
                                  subscription-protocol :required common-lisp:t
                                  :member-name "subscriptionProtocol")
                                 (notification-endpoint :target-type
                                  safe-string :required common-lisp:t
                                  :member-name "notificationEndpoint")
                                 (exception-time-to-live :target-type
                                  smithy/sdk/smithy-types:long :member-name
                                  "exceptionTimeToLive"))
                                (:shape-name
                                 "CreateDataLakeExceptionSubscriptionRequest"))

(smithy/sdk/shapes:define-output
 create-data-lake-exception-subscription-response common-lisp:nil
 common-lisp:nil (:shape-name "CreateDataLakeExceptionSubscriptionResponse"))

(smithy/sdk/shapes:define-input
 create-data-lake-organization-configuration-request common-lisp:nil
 ((auto-enable-new-account :target-type
   data-lake-auto-enable-new-account-configuration-list :member-name
   "autoEnableNewAccount"))
 (:shape-name "CreateDataLakeOrganizationConfigurationRequest"))

(smithy/sdk/shapes:define-output
 create-data-lake-organization-configuration-response common-lisp:nil
 common-lisp:nil
 (:shape-name "CreateDataLakeOrganizationConfigurationResponse"))

(smithy/sdk/shapes:define-input create-data-lake-request common-lisp:nil
                                ((configurations :target-type
                                  data-lake-configuration-list :required
                                  common-lisp:t :member-name "configurations")
                                 (meta-store-manager-role-arn :target-type
                                  role-arn :required common-lisp:t :member-name
                                  "metaStoreManagerRoleArn")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateDataLakeRequest"))

(smithy/sdk/shapes:define-output create-data-lake-response common-lisp:nil
                                 ((data-lakes :target-type
                                   data-lake-resource-list :member-name
                                   "dataLakes"))
                                 (:shape-name "CreateDataLakeResponse"))

(smithy/sdk/shapes:define-input create-subscriber-notification-request
                                common-lisp:nil
                                ((subscriber-id :target-type uuid :required
                                  common-lisp:t :member-name "subscriberId"
                                  :http-label common-lisp:t)
                                 (configuration :target-type
                                  notification-configuration :required
                                  common-lisp:t :member-name "configuration"))
                                (:shape-name
                                 "CreateSubscriberNotificationRequest"))

(smithy/sdk/shapes:define-output create-subscriber-notification-response
                                 common-lisp:nil
                                 ((subscriber-endpoint :target-type safe-string
                                   :member-name "subscriberEndpoint"))
                                 (:shape-name
                                  "CreateSubscriberNotificationResponse"))

(smithy/sdk/shapes:define-input create-subscriber-request common-lisp:nil
                                ((subscriber-identity :target-type aws-identity
                                  :required common-lisp:t :member-name
                                  "subscriberIdentity")
                                 (subscriber-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "subscriberName")
                                 (subscriber-description :target-type
                                  description-string :member-name
                                  "subscriberDescription")
                                 (sources :target-type log-source-resource-list
                                  :required common-lisp:t :member-name
                                  "sources")
                                 (access-types :target-type access-type-list
                                  :member-name "accessTypes")
                                 (tags :target-type tag-list :member-name
                                  "tags"))
                                (:shape-name "CreateSubscriberRequest"))

(smithy/sdk/shapes:define-output create-subscriber-response common-lisp:nil
                                 ((subscriber :target-type subscriber-resource
                                   :member-name "subscriber"))
                                 (:shape-name "CreateSubscriberResponse"))

(smithy/sdk/shapes:define-structure custom-log-source-attributes
                                    common-lisp:nil
                                    ((crawler-arn :target-type
                                      amazon-resource-name :member-name
                                      "crawlerArn")
                                     (database-arn :target-type
                                      amazon-resource-name :member-name
                                      "databaseArn")
                                     (table-arn :target-type
                                      amazon-resource-name :member-name
                                      "tableArn"))
                                    (:shape-name "CustomLogSourceAttributes"))

(smithy/sdk/shapes:define-structure custom-log-source-configuration
                                    common-lisp:nil
                                    ((crawler-configuration :target-type
                                      custom-log-source-crawler-configuration
                                      :required common-lisp:t :member-name
                                      "crawlerConfiguration")
                                     (provider-identity :target-type
                                      aws-identity :required common-lisp:t
                                      :member-name "providerIdentity"))
                                    (:shape-name
                                     "CustomLogSourceConfiguration"))

(smithy/sdk/shapes:define-structure custom-log-source-crawler-configuration
                                    common-lisp:nil
                                    ((role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name
                                     "CustomLogSourceCrawlerConfiguration"))

(smithy/sdk/shapes:define-type custom-log-source-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure custom-log-source-provider common-lisp:nil
                                    ((role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (location :target-type s3uri :member-name
                                      "location"))
                                    (:shape-name "CustomLogSourceProvider"))

(smithy/sdk/shapes:define-structure custom-log-source-resource common-lisp:nil
                                    ((source-name :target-type
                                      custom-log-source-name :member-name
                                      "sourceName")
                                     (source-version :target-type
                                      custom-log-source-version :member-name
                                      "sourceVersion")
                                     (provider :target-type
                                      custom-log-source-provider :member-name
                                      "provider")
                                     (attributes :target-type
                                      custom-log-source-attributes :member-name
                                      "attributes"))
                                    (:shape-name "CustomLogSourceResource"))

(smithy/sdk/shapes:define-type custom-log-source-version
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure
 data-lake-auto-enable-new-account-configuration common-lisp:nil
 ((region :target-type region :required common-lisp:t :member-name "region")
  (sources :target-type aws-log-source-resource-list :required common-lisp:t
   :member-name "sources"))
 (:shape-name "DataLakeAutoEnableNewAccountConfiguration"))

(smithy/sdk/shapes:define-list
 data-lake-auto-enable-new-account-configuration-list :member
 data-lake-auto-enable-new-account-configuration)

(smithy/sdk/shapes:define-structure data-lake-configuration common-lisp:nil
                                    ((region :target-type region :required
                                      common-lisp:t :member-name "region")
                                     (encryption-configuration :target-type
                                      data-lake-encryption-configuration
                                      :member-name "encryptionConfiguration")
                                     (lifecycle-configuration :target-type
                                      data-lake-lifecycle-configuration
                                      :member-name "lifecycleConfiguration")
                                     (replication-configuration :target-type
                                      data-lake-replication-configuration
                                      :member-name "replicationConfiguration"))
                                    (:shape-name "DataLakeConfiguration"))

(smithy/sdk/shapes:define-list data-lake-configuration-list :member
                               data-lake-configuration)

(smithy/sdk/shapes:define-structure data-lake-encryption-configuration
                                    common-lisp:nil
                                    ((kms-key-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "kmsKeyId"))
                                    (:shape-name
                                     "DataLakeEncryptionConfiguration"))

(smithy/sdk/shapes:define-structure data-lake-exception common-lisp:nil
                                    ((region :target-type region :member-name
                                      "region")
                                     (exception :target-type safe-string
                                      :member-name "exception")
                                     (remediation :target-type safe-string
                                      :member-name "remediation")
                                     (timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "timestamp"
                                      :timestamp-format "date-time"))
                                    (:shape-name "DataLakeException"))

(smithy/sdk/shapes:define-list data-lake-exception-list :member
                               data-lake-exception)

(smithy/sdk/shapes:define-structure data-lake-lifecycle-configuration
                                    common-lisp:nil
                                    ((expiration :target-type
                                      data-lake-lifecycle-expiration
                                      :member-name "expiration")
                                     (transitions :target-type
                                      data-lake-lifecycle-transition-list
                                      :member-name "transitions"))
                                    (:shape-name
                                     "DataLakeLifecycleConfiguration"))

(smithy/sdk/shapes:define-structure data-lake-lifecycle-expiration
                                    common-lisp:nil
                                    ((days :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "days"))
                                    (:shape-name "DataLakeLifecycleExpiration"))

(smithy/sdk/shapes:define-structure data-lake-lifecycle-transition
                                    common-lisp:nil
                                    ((storage-class :target-type
                                      data-lake-storage-class :member-name
                                      "storageClass")
                                     (days :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "days"))
                                    (:shape-name "DataLakeLifecycleTransition"))

(smithy/sdk/shapes:define-list data-lake-lifecycle-transition-list :member
                               data-lake-lifecycle-transition)

(smithy/sdk/shapes:define-structure data-lake-replication-configuration
                                    common-lisp:nil
                                    ((regions :target-type region-list
                                      :member-name "regions")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn"))
                                    (:shape-name
                                     "DataLakeReplicationConfiguration"))

(smithy/sdk/shapes:define-structure data-lake-resource common-lisp:nil
                                    ((data-lake-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name "dataLakeArn")
                                     (region :target-type region :required
                                      common-lisp:t :member-name "region")
                                     (s3bucket-arn :target-type s3bucket-arn
                                      :member-name "s3BucketArn")
                                     (encryption-configuration :target-type
                                      data-lake-encryption-configuration
                                      :member-name "encryptionConfiguration")
                                     (lifecycle-configuration :target-type
                                      data-lake-lifecycle-configuration
                                      :member-name "lifecycleConfiguration")
                                     (replication-configuration :target-type
                                      data-lake-replication-configuration
                                      :member-name "replicationConfiguration")
                                     (create-status :target-type
                                      data-lake-status :member-name
                                      "createStatus")
                                     (update-status :target-type
                                      data-lake-update-status :member-name
                                      "updateStatus"))
                                    (:shape-name "DataLakeResource"))

(smithy/sdk/shapes:define-list data-lake-resource-list :member
                               data-lake-resource)

(smithy/sdk/shapes:define-structure data-lake-source common-lisp:nil
                                    ((account :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "account")
                                     (source-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "sourceName")
                                     (event-classes :target-type
                                      ocsf-event-class-list :member-name
                                      "eventClasses")
                                     (source-statuses :target-type
                                      data-lake-source-status-list :member-name
                                      "sourceStatuses"))
                                    (:shape-name "DataLakeSource"))

(smithy/sdk/shapes:define-list data-lake-source-list :member data-lake-source)

(smithy/sdk/shapes:define-structure data-lake-source-status common-lisp:nil
                                    ((resource :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "resource")
                                     (status :target-type
                                      source-collection-status :member-name
                                      "status"))
                                    (:shape-name "DataLakeSourceStatus"))

(smithy/sdk/shapes:define-list data-lake-source-status-list :member
                               data-lake-source-status)

(smithy/sdk/shapes:define-enum data-lake-status
    common-lisp:nil
  (:initialized "INITIALIZED")
  (:pending "PENDING")
  (:completed "COMPLETED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type data-lake-storage-class
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-lake-update-exception common-lisp:nil
                                    ((reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "reason")
                                     (code :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "code"))
                                    (:shape-name "DataLakeUpdateException"))

(smithy/sdk/shapes:define-structure data-lake-update-status common-lisp:nil
                                    ((request-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "requestId")
                                     (status :target-type data-lake-status
                                      :member-name "status")
                                     (exception :target-type
                                      data-lake-update-exception :member-name
                                      "exception"))
                                    (:shape-name "DataLakeUpdateStatus"))

(smithy/sdk/shapes:define-input delete-aws-log-source-request common-lisp:nil
                                ((sources :target-type
                                  aws-log-source-configuration-list :required
                                  common-lisp:t :member-name "sources"))
                                (:shape-name "DeleteAwsLogSourceRequest"))

(smithy/sdk/shapes:define-output delete-aws-log-source-response common-lisp:nil
                                 ((failed :target-type account-list
                                   :member-name "failed"))
                                 (:shape-name "DeleteAwsLogSourceResponse"))

(smithy/sdk/shapes:define-input delete-custom-log-source-request
                                common-lisp:nil
                                ((source-name :target-type
                                  custom-log-source-name :required
                                  common-lisp:t :member-name "sourceName"
                                  :http-label common-lisp:t)
                                 (source-version :target-type
                                  custom-log-source-version :member-name
                                  "sourceVersion" :http-query "sourceVersion"))
                                (:shape-name "DeleteCustomLogSourceRequest"))

(smithy/sdk/shapes:define-output delete-custom-log-source-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteCustomLogSourceResponse"))

(smithy/sdk/shapes:define-input delete-data-lake-exception-subscription-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DeleteDataLakeExceptionSubscriptionRequest"))

(smithy/sdk/shapes:define-output
 delete-data-lake-exception-subscription-response common-lisp:nil
 common-lisp:nil (:shape-name "DeleteDataLakeExceptionSubscriptionResponse"))

(smithy/sdk/shapes:define-input
 delete-data-lake-organization-configuration-request common-lisp:nil
 ((auto-enable-new-account :target-type
   data-lake-auto-enable-new-account-configuration-list :member-name
   "autoEnableNewAccount"))
 (:shape-name "DeleteDataLakeOrganizationConfigurationRequest"))

(smithy/sdk/shapes:define-output
 delete-data-lake-organization-configuration-response common-lisp:nil
 common-lisp:nil
 (:shape-name "DeleteDataLakeOrganizationConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-data-lake-request common-lisp:nil
                                ((regions :target-type region-list :required
                                  common-lisp:t :member-name "regions"))
                                (:shape-name "DeleteDataLakeRequest"))

(smithy/sdk/shapes:define-output delete-data-lake-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDataLakeResponse"))

(smithy/sdk/shapes:define-input delete-subscriber-notification-request
                                common-lisp:nil
                                ((subscriber-id :target-type uuid :required
                                  common-lisp:t :member-name "subscriberId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteSubscriberNotificationRequest"))

(smithy/sdk/shapes:define-output delete-subscriber-notification-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteSubscriberNotificationResponse"))

(smithy/sdk/shapes:define-input delete-subscriber-request common-lisp:nil
                                ((subscriber-id :target-type uuid :required
                                  common-lisp:t :member-name "subscriberId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteSubscriberRequest"))

(smithy/sdk/shapes:define-output delete-subscriber-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteSubscriberResponse"))

(smithy/sdk/shapes:define-input
 deregister-data-lake-delegated-administrator-request common-lisp:nil
 common-lisp:nil
 (:shape-name "DeregisterDataLakeDelegatedAdministratorRequest"))

(smithy/sdk/shapes:define-output
 deregister-data-lake-delegated-administrator-response common-lisp:nil
 common-lisp:nil
 (:shape-name "DeregisterDataLakeDelegatedAdministratorResponse"))

(smithy/sdk/shapes:define-type description-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type external-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-data-lake-exception-subscription-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "GetDataLakeExceptionSubscriptionRequest"))

(smithy/sdk/shapes:define-output get-data-lake-exception-subscription-response
                                 common-lisp:nil
                                 ((subscription-protocol :target-type
                                   subscription-protocol :member-name
                                   "subscriptionProtocol")
                                  (notification-endpoint :target-type
                                   safe-string :member-name
                                   "notificationEndpoint")
                                  (exception-time-to-live :target-type
                                   smithy/sdk/smithy-types:long :member-name
                                   "exceptionTimeToLive"))
                                 (:shape-name
                                  "GetDataLakeExceptionSubscriptionResponse"))

(smithy/sdk/shapes:define-input
 get-data-lake-organization-configuration-request common-lisp:nil
 common-lisp:nil (:shape-name "GetDataLakeOrganizationConfigurationRequest"))

(smithy/sdk/shapes:define-output
 get-data-lake-organization-configuration-response common-lisp:nil
 ((auto-enable-new-account :target-type
   data-lake-auto-enable-new-account-configuration-list :member-name
   "autoEnableNewAccount"))
 (:shape-name "GetDataLakeOrganizationConfigurationResponse"))

(smithy/sdk/shapes:define-input get-data-lake-sources-request common-lisp:nil
                                ((accounts :target-type account-list
                                  :member-name "accounts")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "GetDataLakeSourcesRequest"))

(smithy/sdk/shapes:define-output get-data-lake-sources-response common-lisp:nil
                                 ((data-lake-arn :target-type
                                   amazon-resource-name :member-name
                                   "dataLakeArn")
                                  (data-lake-sources :target-type
                                   data-lake-source-list :member-name
                                   "dataLakeSources")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "GetDataLakeSourcesResponse"))

(smithy/sdk/shapes:define-input get-subscriber-request common-lisp:nil
                                ((subscriber-id :target-type uuid :required
                                  common-lisp:t :member-name "subscriberId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSubscriberRequest"))

(smithy/sdk/shapes:define-output get-subscriber-response common-lisp:nil
                                 ((subscriber :target-type subscriber-resource
                                   :member-name "subscriber"))
                                 (:shape-name "GetSubscriberResponse"))

(smithy/sdk/shapes:define-enum http-method
    common-lisp:nil
  (:post "POST")
  (:put "PUT"))

(smithy/sdk/shapes:define-structure https-notification-configuration
                                    common-lisp:nil
                                    ((endpoint :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "endpoint")
                                     (authorization-api-key-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "authorizationApiKeyName")
                                     (authorization-api-key-value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "authorizationApiKeyValue")
                                     (http-method :target-type http-method
                                      :member-name "httpMethod")
                                     (target-role-arn :target-type role-arn
                                      :required common-lisp:t :member-name
                                      "targetRoleArn"))
                                    (:shape-name
                                     "HttpsNotificationConfiguration"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-data-lake-exceptions-request
                                common-lisp:nil
                                ((regions :target-type region-list :member-name
                                  "regions")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListDataLakeExceptionsRequest"))

(smithy/sdk/shapes:define-output list-data-lake-exceptions-response
                                 common-lisp:nil
                                 ((exceptions :target-type
                                   data-lake-exception-list :member-name
                                   "exceptions")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDataLakeExceptionsResponse"))

(smithy/sdk/shapes:define-input list-data-lakes-request common-lisp:nil
                                ((regions :target-type region-list :member-name
                                  "regions" :http-query "regions"))
                                (:shape-name "ListDataLakesRequest"))

(smithy/sdk/shapes:define-output list-data-lakes-response common-lisp:nil
                                 ((data-lakes :target-type
                                   data-lake-resource-list :member-name
                                   "dataLakes"))
                                 (:shape-name "ListDataLakesResponse"))

(smithy/sdk/shapes:define-input list-log-sources-request common-lisp:nil
                                ((accounts :target-type account-list
                                  :member-name "accounts")
                                 (regions :target-type region-list :member-name
                                  "regions")
                                 (sources :target-type log-source-resource-list
                                  :member-name "sources")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListLogSourcesRequest"))

(smithy/sdk/shapes:define-output list-log-sources-response common-lisp:nil
                                 ((sources :target-type log-source-list
                                   :member-name "sources")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListLogSourcesResponse"))

(smithy/sdk/shapes:define-input list-subscribers-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListSubscribersRequest"))

(smithy/sdk/shapes:define-output list-subscribers-response common-lisp:nil
                                 ((subscribers :target-type
                                   subscriber-resource-list :member-name
                                   "subscribers")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSubscribersResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-label
                                  common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure log-source common-lisp:nil
                                    ((account :target-type aws-account-id
                                      :member-name "account")
                                     (region :target-type region :member-name
                                      "region")
                                     (sources :target-type
                                      log-source-resource-list :member-name
                                      "sources"))
                                    (:shape-name "LogSource"))

(smithy/sdk/shapes:define-list log-source-list :member log-source)

(smithy/sdk/shapes:define-union log-source-resource common-lisp:nil
                                ((aws-log-source :target-type
                                  aws-log-source-resource :member-name
                                  "awsLogSource")
                                 (custom-log-source :target-type
                                  custom-log-source-resource :member-name
                                  "customLogSource"))
                                (:shape-name "LogSourceResource"))

(smithy/sdk/shapes:define-list log-source-resource-list :member
                               log-source-resource)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union notification-configuration common-lisp:nil
                                ((sqs-notification-configuration :target-type
                                  sqs-notification-configuration :member-name
                                  "sqsNotificationConfiguration")
                                 (https-notification-configuration :target-type
                                  https-notification-configuration :member-name
                                  "httpsNotificationConfiguration"))
                                (:shape-name "NotificationConfiguration"))

(smithy/sdk/shapes:define-type ocsf-event-class smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ocsf-event-class-list :member ocsf-event-class)

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list region-list :member region)

(smithy/sdk/shapes:define-input
 register-data-lake-delegated-administrator-request common-lisp:nil
 ((account-id :target-type safe-string :required common-lisp:t :member-name
   "accountId"))
 (:shape-name "RegisterDataLakeDelegatedAdministratorRequest"))

(smithy/sdk/shapes:define-output
 register-data-lake-delegated-administrator-response common-lisp:nil
 common-lisp:nil (:shape-name "RegisterDataLakeDelegatedAdministratorResponse"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (resource-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceName")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-share-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-share-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type safe-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum source-collection-status
    common-lisp:nil
  (:collecting "COLLECTING")
  (:misconfigured "MISCONFIGURED")
  (:not-collecting "NOT_COLLECTING"))

(smithy/sdk/shapes:define-structure sqs-notification-configuration
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "SqsNotificationConfiguration"))

common-lisp:nil

(smithy/sdk/shapes:define-structure subscriber-resource common-lisp:nil
                                    ((subscriber-id :target-type uuid :required
                                      common-lisp:t :member-name
                                      "subscriberId")
                                     (subscriber-arn :target-type
                                      amazon-resource-name :required
                                      common-lisp:t :member-name
                                      "subscriberArn")
                                     (subscriber-identity :target-type
                                      aws-identity :required common-lisp:t
                                      :member-name "subscriberIdentity")
                                     (subscriber-name :target-type safe-string
                                      :required common-lisp:t :member-name
                                      "subscriberName")
                                     (subscriber-description :target-type
                                      safe-string :member-name
                                      "subscriberDescription")
                                     (sources :target-type
                                      log-source-resource-list :required
                                      common-lisp:t :member-name "sources")
                                     (access-types :target-type
                                      access-type-list :member-name
                                      "accessTypes")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (s3bucket-arn :target-type s3bucket-arn
                                      :member-name "s3BucketArn")
                                     (subscriber-endpoint :target-type
                                      safe-string :member-name
                                      "subscriberEndpoint")
                                     (subscriber-status :target-type
                                      subscriber-status :member-name
                                      "subscriberStatus")
                                     (resource-share-arn :target-type
                                      resource-share-arn :member-name
                                      "resourceShareArn")
                                     (resource-share-name :target-type
                                      resource-share-name :member-name
                                      "resourceShareName")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt"
                                      :timestamp-format "date-time")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedAt"
                                      :timestamp-format "date-time"))
                                    (:shape-name "SubscriberResource"))

(smithy/sdk/shapes:define-list subscriber-resource-list :member
                               subscriber-resource)

(smithy/sdk/shapes:define-enum subscriber-status
    common-lisp:nil
  (:active "ACTIVE")
  (:deactivated "DEACTIVATED")
  (:pending "PENDING")
  (:ready "READY"))

(smithy/sdk/shapes:define-type subscription-protocol
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-label
                                  common-lisp:t)
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
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

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "resourceArn" :http-label
                                  common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-data-lake-exception-subscription-request
                                common-lisp:nil
                                ((subscription-protocol :target-type
                                  subscription-protocol :required common-lisp:t
                                  :member-name "subscriptionProtocol")
                                 (notification-endpoint :target-type
                                  safe-string :required common-lisp:t
                                  :member-name "notificationEndpoint")
                                 (exception-time-to-live :target-type
                                  smithy/sdk/smithy-types:long :member-name
                                  "exceptionTimeToLive"))
                                (:shape-name
                                 "UpdateDataLakeExceptionSubscriptionRequest"))

(smithy/sdk/shapes:define-output
 update-data-lake-exception-subscription-response common-lisp:nil
 common-lisp:nil (:shape-name "UpdateDataLakeExceptionSubscriptionResponse"))

(smithy/sdk/shapes:define-input update-data-lake-request common-lisp:nil
                                ((configurations :target-type
                                  data-lake-configuration-list :required
                                  common-lisp:t :member-name "configurations")
                                 (meta-store-manager-role-arn :target-type
                                  role-arn :member-name
                                  "metaStoreManagerRoleArn"))
                                (:shape-name "UpdateDataLakeRequest"))

(smithy/sdk/shapes:define-output update-data-lake-response common-lisp:nil
                                 ((data-lakes :target-type
                                   data-lake-resource-list :member-name
                                   "dataLakes"))
                                 (:shape-name "UpdateDataLakeResponse"))

(smithy/sdk/shapes:define-input update-subscriber-notification-request
                                common-lisp:nil
                                ((subscriber-id :target-type uuid :required
                                  common-lisp:t :member-name "subscriberId"
                                  :http-label common-lisp:t)
                                 (configuration :target-type
                                  notification-configuration :required
                                  common-lisp:t :member-name "configuration"))
                                (:shape-name
                                 "UpdateSubscriberNotificationRequest"))

(smithy/sdk/shapes:define-output update-subscriber-notification-response
                                 common-lisp:nil
                                 ((subscriber-endpoint :target-type safe-string
                                   :member-name "subscriberEndpoint"))
                                 (:shape-name
                                  "UpdateSubscriberNotificationResponse"))

(smithy/sdk/shapes:define-input update-subscriber-request common-lisp:nil
                                ((subscriber-id :target-type uuid :required
                                  common-lisp:t :member-name "subscriberId"
                                  :http-label common-lisp:t)
                                 (subscriber-identity :target-type aws-identity
                                  :member-name "subscriberIdentity")
                                 (subscriber-name :target-type safe-string
                                  :member-name "subscriberName")
                                 (subscriber-description :target-type
                                  description-string :member-name
                                  "subscriberDescription")
                                 (sources :target-type log-source-resource-list
                                  :member-name "sources"))
                                (:shape-name "UpdateSubscriberRequest"))

(smithy/sdk/shapes:define-output update-subscriber-response common-lisp:nil
                                 ((subscriber :target-type subscriber-resource
                                   :member-name "subscriber"))
                                 (:shape-name "UpdateSubscriberResponse"))

(smithy/sdk/operation:define-operation create-aws-log-source :shape-name
                                       "CreateAwsLogSource" :input
                                       create-aws-log-source-request :output
                                       create-aws-log-source-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/v1/datalake/logsources/aws" :code 200)

(smithy/sdk/operation:define-operation create-custom-log-source :shape-name
                                       "CreateCustomLogSource" :input
                                       create-custom-log-source-request :output
                                       create-custom-log-source-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/v1/datalake/logsources/custom" :code
                                       200)

(smithy/sdk/operation:define-operation create-data-lake :shape-name
                                       "CreateDataLake" :input
                                       create-data-lake-request :output
                                       create-data-lake-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/v1/datalake" :code
                                       200)

(smithy/sdk/operation:define-operation create-data-lake-exception-subscription
                                       :shape-name
                                       "CreateDataLakeExceptionSubscription"
                                       :input
                                       create-data-lake-exception-subscription-request
                                       :output
                                       create-data-lake-exception-subscription-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/v1/datalake/exceptions/subscription"
                                       :code 200)

(smithy/sdk/operation:define-operation
 create-data-lake-organization-configuration :shape-name
 "CreateDataLakeOrganizationConfiguration" :input
 create-data-lake-organization-configuration-request :output
 create-data-lake-organization-configuration-response :errors
 (access-denied-exception bad-request-exception conflict-exception
  internal-server-exception resource-not-found-exception throttling-exception)
 :method "POST" :uri "/v1/datalake/organization/configuration" :code 200)

(smithy/sdk/operation:define-operation create-subscriber :shape-name
                                       "CreateSubscriber" :input
                                       create-subscriber-request :output
                                       create-subscriber-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri "/v1/subscribers"
                                       :code 200)

(smithy/sdk/operation:define-operation create-subscriber-notification
                                       :shape-name
                                       "CreateSubscriberNotification" :input
                                       create-subscriber-notification-request
                                       :output
                                       create-subscriber-notification-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/v1/subscribers/{subscriberId}/notification"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-aws-log-source :shape-name
                                       "DeleteAwsLogSource" :input
                                       delete-aws-log-source-request :output
                                       delete-aws-log-source-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/v1/datalake/logsources/aws/delete"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-custom-log-source :shape-name
                                       "DeleteCustomLogSource" :input
                                       delete-custom-log-source-request :output
                                       delete-custom-log-source-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/v1/datalake/logsources/custom/{sourceName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-data-lake :shape-name
                                       "DeleteDataLake" :input
                                       delete-data-lake-request :output
                                       delete-data-lake-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/v1/datalake/delete" :code 200)

(smithy/sdk/operation:define-operation delete-data-lake-exception-subscription
                                       :shape-name
                                       "DeleteDataLakeExceptionSubscription"
                                       :input
                                       delete-data-lake-exception-subscription-request
                                       :output
                                       delete-data-lake-exception-subscription-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/v1/datalake/exceptions/subscription"
                                       :code 200)

(smithy/sdk/operation:define-operation
 delete-data-lake-organization-configuration :shape-name
 "DeleteDataLakeOrganizationConfiguration" :input
 delete-data-lake-organization-configuration-request :output
 delete-data-lake-organization-configuration-response :errors
 (access-denied-exception bad-request-exception conflict-exception
  internal-server-exception resource-not-found-exception throttling-exception)
 :method "POST" :uri "/v1/datalake/organization/configuration/delete" :code 200)

(smithy/sdk/operation:define-operation delete-subscriber :shape-name
                                       "DeleteSubscriber" :input
                                       delete-subscriber-request :output
                                       delete-subscriber-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/v1/subscribers/{subscriberId}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-subscriber-notification
                                       :shape-name
                                       "DeleteSubscriberNotification" :input
                                       delete-subscriber-notification-request
                                       :output
                                       delete-subscriber-notification-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/v1/subscribers/{subscriberId}/notification"
                                       :code 200)

(smithy/sdk/operation:define-operation
 deregister-data-lake-delegated-administrator :shape-name
 "DeregisterDataLakeDelegatedAdministrator" :input
 deregister-data-lake-delegated-administrator-request :output
 deregister-data-lake-delegated-administrator-response :errors
 (access-denied-exception bad-request-exception conflict-exception
  internal-server-exception resource-not-found-exception throttling-exception)
 :method "DELETE" :uri "/v1/datalake/delegate" :code 200)

(smithy/sdk/operation:define-operation get-data-lake-exception-subscription
                                       :shape-name
                                       "GetDataLakeExceptionSubscription"
                                       :input
                                       get-data-lake-exception-subscription-request
                                       :output
                                       get-data-lake-exception-subscription-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/v1/datalake/exceptions/subscription"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-lake-organization-configuration
                                       :shape-name
                                       "GetDataLakeOrganizationConfiguration"
                                       :input
                                       get-data-lake-organization-configuration-request
                                       :output
                                       get-data-lake-organization-configuration-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/v1/datalake/organization/configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-lake-sources :shape-name
                                       "GetDataLakeSources" :input
                                       get-data-lake-sources-request :output
                                       get-data-lake-sources-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/v1/datalake/sources" :code 200)

(smithy/sdk/operation:define-operation get-subscriber :shape-name
                                       "GetSubscriber" :input
                                       get-subscriber-request :output
                                       get-subscriber-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/v1/subscribers/{subscriberId}" :code
                                       200)

(smithy/sdk/operation:define-operation list-data-lake-exceptions :shape-name
                                       "ListDataLakeExceptions" :input
                                       list-data-lake-exceptions-request
                                       :output
                                       list-data-lake-exceptions-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/v1/datalake/exceptions" :code 200)

(smithy/sdk/operation:define-operation list-data-lakes :shape-name
                                       "ListDataLakes" :input
                                       list-data-lakes-request :output
                                       list-data-lakes-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/v1/datalakes" :code
                                       200)

(smithy/sdk/operation:define-operation list-log-sources :shape-name
                                       "ListLogSources" :input
                                       list-log-sources-request :output
                                       list-log-sources-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/v1/datalake/logsources/list" :code 200)

(smithy/sdk/operation:define-operation list-subscribers :shape-name
                                       "ListSubscribers" :input
                                       list-subscribers-request :output
                                       list-subscribers-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/v1/subscribers"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/v1/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation
 register-data-lake-delegated-administrator :shape-name
 "RegisterDataLakeDelegatedAdministrator" :input
 register-data-lake-delegated-administrator-request :output
 register-data-lake-delegated-administrator-response :errors
 (access-denied-exception bad-request-exception conflict-exception
  internal-server-exception resource-not-found-exception throttling-exception)
 :method "POST" :uri "/v1/datalake/delegate" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/v1/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/v1/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-data-lake :shape-name
                                       "UpdateDataLake" :input
                                       update-data-lake-request :output
                                       update-data-lake-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri "/v1/datalake" :code
                                       200)

(smithy/sdk/operation:define-operation update-data-lake-exception-subscription
                                       :shape-name
                                       "UpdateDataLakeExceptionSubscription"
                                       :input
                                       update-data-lake-exception-subscription-request
                                       :output
                                       update-data-lake-exception-subscription-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/v1/datalake/exceptions/subscription"
                                       :code 200)

(smithy/sdk/operation:define-operation update-subscriber :shape-name
                                       "UpdateSubscriber" :input
                                       update-subscriber-request :output
                                       update-subscriber-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/v1/subscribers/{subscriberId}" :code
                                       200)

(smithy/sdk/operation:define-operation update-subscriber-notification
                                       :shape-name
                                       "UpdateSubscriberNotification" :input
                                       update-subscriber-notification-request
                                       :output
                                       update-subscriber-notification-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "PUT" :uri
                                       "/v1/subscribers/{subscriberId}/notification"
                                       :code 200)
