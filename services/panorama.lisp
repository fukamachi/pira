(uiop/package:define-package #:pira/panorama (:use)
                             (:export #:access-denied-exception
                              #:alternate-software-metadata
                              #:alternate-softwares #:application-instance
                              #:application-instance-arn
                              #:application-instance-health-status
                              #:application-instance-id
                              #:application-instance-name
                              #:application-instance-status
                              #:application-instance-status-description
                              #:application-instances #:boolean #:bucket
                              #:bucket-name #:certificates #:client-token
                              #:conflict-exception
                              #:conflict-exception-error-argument
                              #:conflict-exception-error-argument-list
                              #:connection-type #:create-application-instance
                              #:create-application-instance-request
                              #:create-application-instance-response
                              #:create-job-for-devices
                              #:create-job-for-devices-request
                              #:create-job-for-devices-response
                              #:create-node-from-template-job
                              #:create-node-from-template-job-request
                              #:create-node-from-template-job-response
                              #:create-package #:create-package-import-job
                              #:create-package-import-job-request
                              #:create-package-import-job-response
                              #:create-package-request
                              #:create-package-response #:created-time
                              #:current-software #:default-gateway
                              #:default-runtime-context-device #:delete-device
                              #:delete-device-request #:delete-device-response
                              #:delete-package #:delete-package-request
                              #:delete-package-response
                              #:deregister-package-version
                              #:deregister-package-version-request
                              #:deregister-package-version-response
                              #:describe-application-instance
                              #:describe-application-instance-details
                              #:describe-application-instance-details-request
                              #:describe-application-instance-details-response
                              #:describe-application-instance-request
                              #:describe-application-instance-response
                              #:describe-device #:describe-device-job
                              #:describe-device-job-request
                              #:describe-device-job-response
                              #:describe-device-request
                              #:describe-device-response #:describe-node
                              #:describe-node-from-template-job
                              #:describe-node-from-template-job-request
                              #:describe-node-from-template-job-response
                              #:describe-node-request #:describe-node-response
                              #:describe-package #:describe-package-import-job
                              #:describe-package-import-job-request
                              #:describe-package-import-job-response
                              #:describe-package-request
                              #:describe-package-response
                              #:describe-package-version
                              #:describe-package-version-request
                              #:describe-package-version-response #:description
                              #:desired-state #:device
                              #:device-aggregated-status #:device-arn
                              #:device-brand #:device-connection-status
                              #:device-id #:device-id-list #:device-job
                              #:device-job-config #:device-job-list
                              #:device-list #:device-name
                              #:device-reported-status #:device-serial-number
                              #:device-status #:device-type #:dns #:dns-list
                              #:ethernet-payload #:ethernet-status #:hw-address
                              #:image-version #:input-port-list
                              #:internal-server-exception #:iot-thing-name
                              #:ip-address #:ip-address-or-server-name #:job
                              #:job-id #:job-list #:job-resource-tags
                              #:job-resource-type #:job-tags-list #:job-type
                              #:last-updated-time #:latest-alternate-software
                              #:latest-device-job #:latest-software
                              #:lease-expiration-time
                              #:list-application-instance-dependencies
                              #:list-application-instance-dependencies-request
                              #:list-application-instance-dependencies-response
                              #:list-application-instance-node-instances
                              #:list-application-instance-node-instances-request
                              #:list-application-instance-node-instances-response
                              #:list-application-instances
                              #:list-application-instances-request
                              #:list-application-instances-response
                              #:list-devices #:list-devices-jobs
                              #:list-devices-jobs-request
                              #:list-devices-jobs-response
                              #:list-devices-request #:list-devices-response
                              #:list-devices-sort-by
                              #:list-node-from-template-jobs
                              #:list-node-from-template-jobs-request
                              #:list-node-from-template-jobs-response
                              #:list-nodes #:list-nodes-request
                              #:list-nodes-response #:list-package-import-jobs
                              #:list-package-import-jobs-request
                              #:list-package-import-jobs-response
                              #:list-packages #:list-packages-request
                              #:list-packages-response #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:manifest-overrides-payload
                              #:manifest-overrides-payload-data
                              #:manifest-payload #:manifest-payload-data
                              #:mark-latest-patch #:mask #:max-connections
                              #:max-size25 #:name-filter
                              #:network-connection-status #:network-payload
                              #:network-status #:next-token #:node
                              #:node-asset-name #:node-category
                              #:node-from-template-job
                              #:node-from-template-job-list
                              #:node-from-template-job-status
                              #:node-from-template-job-status-message #:node-id
                              #:node-input-port #:node-instance
                              #:node-instance-id #:node-instance-status
                              #:node-instances #:node-interface #:node-name
                              #:node-output-port #:node-package-arn
                              #:node-package-id #:node-package-name
                              #:node-package-patch-version
                              #:node-package-version #:node-signal
                              #:node-signal-list #:node-signal-value
                              #:nodes-list #:ntp-payload #:ntp-server-list
                              #:ntp-server-name #:ntp-status #:otajob-config
                              #:object #:object-key #:omni-cloud-service-lambda
                              #:out-put-s3location #:output-port-list
                              #:package-import-job
                              #:package-import-job-input-config
                              #:package-import-job-list
                              #:package-import-job-output
                              #:package-import-job-output-config
                              #:package-import-job-status
                              #:package-import-job-status-message
                              #:package-import-job-type #:package-list
                              #:package-list-item #:package-object
                              #:package-objects #:package-owner-account
                              #:package-version-input-config
                              #:package-version-output-config
                              #:package-version-status
                              #:package-version-status-description
                              #:port-default-value #:port-name #:port-type
                              #:principal-arn #:principal-arns-list
                              #:provision-device #:provision-device-request
                              #:provision-device-response #:region
                              #:register-package-version
                              #:register-package-version-request
                              #:register-package-version-response
                              #:remove-application-instance
                              #:remove-application-instance-request
                              #:remove-application-instance-response
                              #:reported-runtime-context-state
                              #:reported-runtime-context-states #:resource-arn
                              #:resource-not-found-exception
                              #:retry-after-seconds #:runtime-context-name
                              #:runtime-role-arn #:s3location
                              #:service-quota-exceeded-exception
                              #:signal-application-instance-node-instances
                              #:signal-application-instance-node-instances-request
                              #:signal-application-instance-node-instances-response
                              #:sort-order #:static-ip-connection-info
                              #:status-filter #:storage-location #:string
                              #:tag-key #:tag-key-list #:tag-map #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:template-key
                              #:template-parameters-map #:template-type
                              #:template-value #:time-stamp #:token
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:update-created-time
                              #:update-device-metadata
                              #:update-device-metadata-request
                              #:update-device-metadata-response
                              #:update-progress #:validation-exception
                              #:validation-exception-error-argument
                              #:validation-exception-error-argument-list
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:version))
(common-lisp:in-package #:pira/panorama)

(smithy/sdk/service:define-service omni-cloud-service-lambda :shape-name
                                   "OmniCloudServiceLambda" :version
                                   "2019-07-24" :title "AWS Panorama" :traits
                                   '(("aws.api#service" ("sdkId" . "Panorama")
                                      ("arnNamespace" . "panorama")
                                      ("awsProductName" . "AWSPanorama"))
                                     ("aws.auth#sigv4" ("name" . "panorama"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure alternate-software-metadata common-lisp:nil
                                    ((version :target-type version :member-name
                                      "Version"))
                                    (:shape-name "AlternateSoftwareMetadata"))

(smithy/sdk/shapes:define-list alternate-softwares :member
                               alternate-software-metadata)

(smithy/sdk/shapes:define-structure application-instance common-lisp:nil
                                    ((name :target-type
                                      application-instance-name :member-name
                                      "Name")
                                     (application-instance-id :target-type
                                      application-instance-id :member-name
                                      "ApplicationInstanceId")
                                     (default-runtime-context-device
                                      :target-type
                                      default-runtime-context-device
                                      :member-name
                                      "DefaultRuntimeContextDevice")
                                     (default-runtime-context-device-name
                                      :target-type device-name :member-name
                                      "DefaultRuntimeContextDeviceName")
                                     (description :target-type description
                                      :member-name "Description")
                                     (status :target-type
                                      application-instance-status :member-name
                                      "Status")
                                     (health-status :target-type
                                      application-instance-health-status
                                      :member-name "HealthStatus")
                                     (status-description :target-type
                                      application-instance-status-description
                                      :member-name "StatusDescription")
                                     (created-time :target-type time-stamp
                                      :member-name "CreatedTime")
                                     (arn :target-type application-instance-arn
                                      :member-name "Arn")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (runtime-context-states :target-type
                                      reported-runtime-context-states
                                      :member-name "RuntimeContextStates"))
                                    (:shape-name "ApplicationInstance"))

(smithy/sdk/shapes:define-type application-instance-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-instance-health-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-instance-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-instance-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-instance-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-instance-status-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list application-instances :member
                               application-instance)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type certificates smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "ResourceType")
                                 (error-id :target-type string :member-name
                                  "ErrorId")
                                 (error-arguments :target-type
                                  conflict-exception-error-argument-list
                                  :member-name "ErrorArguments"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure conflict-exception-error-argument
                                    common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (value :target-type string :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name
                                     "ConflictExceptionErrorArgument"))

(smithy/sdk/shapes:define-list conflict-exception-error-argument-list :member
                               conflict-exception-error-argument)

(smithy/sdk/shapes:define-type connection-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure create-application-instance-request
                                    common-lisp:nil
                                    ((name :target-type
                                      application-instance-name :member-name
                                      "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (manifest-payload :target-type
                                      manifest-payload :required common-lisp:t
                                      :member-name "ManifestPayload")
                                     (manifest-overrides-payload :target-type
                                      manifest-overrides-payload :member-name
                                      "ManifestOverridesPayload")
                                     (application-instance-id-to-replace
                                      :target-type application-instance-id
                                      :member-name
                                      "ApplicationInstanceIdToReplace")
                                     (runtime-role-arn :target-type
                                      runtime-role-arn :member-name
                                      "RuntimeRoleArn")
                                     (default-runtime-context-device
                                      :target-type
                                      default-runtime-context-device :required
                                      common-lisp:t :member-name
                                      "DefaultRuntimeContextDevice")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name
                                     "CreateApplicationInstanceRequest"))

(smithy/sdk/shapes:define-structure create-application-instance-response
                                    common-lisp:nil
                                    ((application-instance-id :target-type
                                      application-instance-id :required
                                      common-lisp:t :member-name
                                      "ApplicationInstanceId"))
                                    (:shape-name
                                     "CreateApplicationInstanceResponse"))

(smithy/sdk/shapes:define-structure create-job-for-devices-request
                                    common-lisp:nil
                                    ((device-ids :target-type device-id-list
                                      :required common-lisp:t :member-name
                                      "DeviceIds")
                                     (device-job-config :target-type
                                      device-job-config :member-name
                                      "DeviceJobConfig")
                                     (job-type :target-type job-type :required
                                      common-lisp:t :member-name "JobType"))
                                    (:shape-name "CreateJobForDevicesRequest"))

(smithy/sdk/shapes:define-structure create-job-for-devices-response
                                    common-lisp:nil
                                    ((jobs :target-type job-list :required
                                      common-lisp:t :member-name "Jobs"))
                                    (:shape-name "CreateJobForDevicesResponse"))

(smithy/sdk/shapes:define-structure create-node-from-template-job-request
                                    common-lisp:nil
                                    ((template-type :target-type template-type
                                      :required common-lisp:t :member-name
                                      "TemplateType")
                                     (output-package-name :target-type
                                      node-package-name :required common-lisp:t
                                      :member-name "OutputPackageName")
                                     (output-package-version :target-type
                                      node-package-version :required
                                      common-lisp:t :member-name
                                      "OutputPackageVersion")
                                     (node-name :target-type node-name
                                      :required common-lisp:t :member-name
                                      "NodeName")
                                     (node-description :target-type description
                                      :member-name "NodeDescription")
                                     (template-parameters :target-type
                                      template-parameters-map :required
                                      common-lisp:t :member-name
                                      "TemplateParameters")
                                     (job-tags :target-type job-tags-list
                                      :member-name "JobTags"))
                                    (:shape-name
                                     "CreateNodeFromTemplateJobRequest"))

(smithy/sdk/shapes:define-structure create-node-from-template-job-response
                                    common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "JobId"))
                                    (:shape-name
                                     "CreateNodeFromTemplateJobResponse"))

(smithy/sdk/shapes:define-structure create-package-import-job-request
                                    common-lisp:nil
                                    ((job-type :target-type
                                      package-import-job-type :required
                                      common-lisp:t :member-name "JobType")
                                     (input-config :target-type
                                      package-import-job-input-config :required
                                      common-lisp:t :member-name "InputConfig")
                                     (output-config :target-type
                                      package-import-job-output-config
                                      :required common-lisp:t :member-name
                                      "OutputConfig")
                                     (client-token :target-type client-token
                                      :required common-lisp:t :member-name
                                      "ClientToken")
                                     (job-tags :target-type job-tags-list
                                      :member-name "JobTags"))
                                    (:shape-name
                                     "CreatePackageImportJobRequest"))

(smithy/sdk/shapes:define-structure create-package-import-job-response
                                    common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "JobId"))
                                    (:shape-name
                                     "CreatePackageImportJobResponse"))

(smithy/sdk/shapes:define-structure create-package-request common-lisp:nil
                                    ((package-name :target-type
                                      node-package-name :required common-lisp:t
                                      :member-name "PackageName")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "CreatePackageRequest"))

(smithy/sdk/shapes:define-structure create-package-response common-lisp:nil
                                    ((package-id :target-type node-package-id
                                      :member-name "PackageId")
                                     (arn :target-type node-package-arn
                                      :member-name "Arn")
                                     (storage-location :target-type
                                      storage-location :required common-lisp:t
                                      :member-name "StorageLocation"))
                                    (:shape-name "CreatePackageResponse"))

(smithy/sdk/shapes:define-type created-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type current-software smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type default-gateway smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type default-runtime-context-device
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure delete-device-request common-lisp:nil
                                    ((device-id :target-type device-id
                                      :required common-lisp:t :member-name
                                      "DeviceId"))
                                    (:shape-name "DeleteDeviceRequest"))

(smithy/sdk/shapes:define-structure delete-device-response common-lisp:nil
                                    ((device-id :target-type device-id
                                      :member-name "DeviceId"))
                                    (:shape-name "DeleteDeviceResponse"))

(smithy/sdk/shapes:define-structure delete-package-request common-lisp:nil
                                    ((package-id :target-type node-package-id
                                      :required common-lisp:t :member-name
                                      "PackageId")
                                     (force-delete :target-type boolean
                                      :member-name "ForceDelete" :http-query
                                      "ForceDelete"))
                                    (:shape-name "DeletePackageRequest"))

(smithy/sdk/shapes:define-structure delete-package-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeletePackageResponse"))

(smithy/sdk/shapes:define-structure deregister-package-version-request
                                    common-lisp:nil
                                    ((owner-account :target-type
                                      package-owner-account :member-name
                                      "OwnerAccount" :http-query
                                      "OwnerAccount")
                                     (package-id :target-type node-package-id
                                      :required common-lisp:t :member-name
                                      "PackageId")
                                     (package-version :target-type
                                      node-package-version :required
                                      common-lisp:t :member-name
                                      "PackageVersion")
                                     (patch-version :target-type
                                      node-package-patch-version :required
                                      common-lisp:t :member-name
                                      "PatchVersion")
                                     (updated-latest-patch-version :target-type
                                      node-package-patch-version :member-name
                                      "UpdatedLatestPatchVersion" :http-query
                                      "UpdatedLatestPatchVersion"))
                                    (:shape-name
                                     "DeregisterPackageVersionRequest"))

(smithy/sdk/shapes:define-structure deregister-package-version-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeregisterPackageVersionResponse"))

(smithy/sdk/shapes:define-structure
 describe-application-instance-details-request common-lisp:nil
 ((application-instance-id :target-type application-instance-id :required
   common-lisp:t :member-name "ApplicationInstanceId"))
 (:shape-name "DescribeApplicationInstanceDetailsRequest"))

(smithy/sdk/shapes:define-structure
 describe-application-instance-details-response common-lisp:nil
 ((name :target-type application-instance-name :member-name "Name")
  (description :target-type description :member-name "Description")
  (default-runtime-context-device :target-type default-runtime-context-device
   :member-name "DefaultRuntimeContextDevice")
  (manifest-payload :target-type manifest-payload :member-name
   "ManifestPayload")
  (manifest-overrides-payload :target-type manifest-overrides-payload
   :member-name "ManifestOverridesPayload")
  (application-instance-id-to-replace :target-type application-instance-id
   :member-name "ApplicationInstanceIdToReplace")
  (created-time :target-type time-stamp :member-name "CreatedTime")
  (application-instance-id :target-type application-instance-id :member-name
   "ApplicationInstanceId"))
 (:shape-name "DescribeApplicationInstanceDetailsResponse"))

(smithy/sdk/shapes:define-structure describe-application-instance-request
                                    common-lisp:nil
                                    ((application-instance-id :target-type
                                      application-instance-id :required
                                      common-lisp:t :member-name
                                      "ApplicationInstanceId"))
                                    (:shape-name
                                     "DescribeApplicationInstanceRequest"))

(smithy/sdk/shapes:define-structure describe-application-instance-response
                                    common-lisp:nil
                                    ((name :target-type
                                      application-instance-name :member-name
                                      "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (default-runtime-context-device
                                      :target-type
                                      default-runtime-context-device
                                      :member-name
                                      "DefaultRuntimeContextDevice")
                                     (default-runtime-context-device-name
                                      :target-type device-name :member-name
                                      "DefaultRuntimeContextDeviceName")
                                     (application-instance-id-to-replace
                                      :target-type application-instance-id
                                      :member-name
                                      "ApplicationInstanceIdToReplace")
                                     (runtime-role-arn :target-type
                                      runtime-role-arn :member-name
                                      "RuntimeRoleArn")
                                     (status :target-type
                                      application-instance-status :member-name
                                      "Status")
                                     (health-status :target-type
                                      application-instance-health-status
                                      :member-name "HealthStatus")
                                     (status-description :target-type
                                      application-instance-status-description
                                      :member-name "StatusDescription")
                                     (created-time :target-type time-stamp
                                      :member-name "CreatedTime")
                                     (last-updated-time :target-type time-stamp
                                      :member-name "LastUpdatedTime")
                                     (application-instance-id :target-type
                                      application-instance-id :member-name
                                      "ApplicationInstanceId")
                                     (arn :target-type application-instance-arn
                                      :member-name "Arn")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (runtime-context-states :target-type
                                      reported-runtime-context-states
                                      :member-name "RuntimeContextStates"))
                                    (:shape-name
                                     "DescribeApplicationInstanceResponse"))

(smithy/sdk/shapes:define-structure describe-device-job-request common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "JobId"))
                                    (:shape-name "DescribeDeviceJobRequest"))

(smithy/sdk/shapes:define-structure describe-device-job-response
                                    common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "JobId")
                                     (device-id :target-type device-id
                                      :member-name "DeviceId")
                                     (device-arn :target-type device-arn
                                      :member-name "DeviceArn")
                                     (device-name :target-type device-name
                                      :member-name "DeviceName")
                                     (device-type :target-type device-type
                                      :member-name "DeviceType")
                                     (image-version :target-type image-version
                                      :member-name "ImageVersion")
                                     (status :target-type update-progress
                                      :member-name "Status")
                                     (created-time :target-type
                                      update-created-time :member-name
                                      "CreatedTime")
                                     (job-type :target-type job-type
                                      :member-name "JobType"))
                                    (:shape-name "DescribeDeviceJobResponse"))

(smithy/sdk/shapes:define-structure describe-device-request common-lisp:nil
                                    ((device-id :target-type device-id
                                      :required common-lisp:t :member-name
                                      "DeviceId"))
                                    (:shape-name "DescribeDeviceRequest"))

(smithy/sdk/shapes:define-structure describe-device-response common-lisp:nil
                                    ((device-id :target-type device-id
                                      :member-name "DeviceId")
                                     (name :target-type device-name
                                      :member-name "Name")
                                     (arn :target-type device-arn :member-name
                                      "Arn")
                                     (description :target-type description
                                      :member-name "Description")
                                     (type :target-type device-type
                                      :member-name "Type")
                                     (device-connection-status :target-type
                                      device-connection-status :member-name
                                      "DeviceConnectionStatus")
                                     (created-time :target-type created-time
                                      :member-name "CreatedTime")
                                     (provisioning-status :target-type
                                      device-status :member-name
                                      "ProvisioningStatus")
                                     (latest-software :target-type
                                      latest-software :member-name
                                      "LatestSoftware")
                                     (current-software :target-type
                                      current-software :member-name
                                      "CurrentSoftware")
                                     (serial-number :target-type
                                      device-serial-number :member-name
                                      "SerialNumber")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (networking-configuration :target-type
                                      network-payload :member-name
                                      "NetworkingConfiguration")
                                     (current-networking-status :target-type
                                      network-status :member-name
                                      "CurrentNetworkingStatus")
                                     (lease-expiration-time :target-type
                                      lease-expiration-time :member-name
                                      "LeaseExpirationTime")
                                     (alternate-softwares :target-type
                                      alternate-softwares :member-name
                                      "AlternateSoftwares")
                                     (latest-alternate-software :target-type
                                      latest-alternate-software :member-name
                                      "LatestAlternateSoftware")
                                     (brand :target-type device-brand
                                      :member-name "Brand")
                                     (latest-device-job :target-type
                                      latest-device-job :member-name
                                      "LatestDeviceJob")
                                     (device-aggregated-status :target-type
                                      device-aggregated-status :member-name
                                      "DeviceAggregatedStatus"))
                                    (:shape-name "DescribeDeviceResponse"))

(smithy/sdk/shapes:define-structure describe-node-from-template-job-request
                                    common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "JobId"))
                                    (:shape-name
                                     "DescribeNodeFromTemplateJobRequest"))

(smithy/sdk/shapes:define-structure describe-node-from-template-job-response
                                    common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "JobId")
                                     (status :target-type
                                      node-from-template-job-status :required
                                      common-lisp:t :member-name "Status")
                                     (status-message :target-type
                                      node-from-template-job-status-message
                                      :required common-lisp:t :member-name
                                      "StatusMessage")
                                     (created-time :target-type created-time
                                      :required common-lisp:t :member-name
                                      "CreatedTime")
                                     (last-updated-time :target-type
                                      last-updated-time :required common-lisp:t
                                      :member-name "LastUpdatedTime")
                                     (output-package-name :target-type
                                      node-package-name :required common-lisp:t
                                      :member-name "OutputPackageName")
                                     (output-package-version :target-type
                                      node-package-version :required
                                      common-lisp:t :member-name
                                      "OutputPackageVersion")
                                     (node-name :target-type node-name
                                      :required common-lisp:t :member-name
                                      "NodeName")
                                     (node-description :target-type description
                                      :member-name "NodeDescription")
                                     (template-type :target-type template-type
                                      :required common-lisp:t :member-name
                                      "TemplateType")
                                     (template-parameters :target-type
                                      template-parameters-map :required
                                      common-lisp:t :member-name
                                      "TemplateParameters")
                                     (job-tags :target-type job-tags-list
                                      :member-name "JobTags"))
                                    (:shape-name
                                     "DescribeNodeFromTemplateJobResponse"))

(smithy/sdk/shapes:define-structure describe-node-request common-lisp:nil
                                    ((node-id :target-type node-id :required
                                      common-lisp:t :member-name "NodeId")
                                     (owner-account :target-type
                                      package-owner-account :member-name
                                      "OwnerAccount" :http-query
                                      "OwnerAccount"))
                                    (:shape-name "DescribeNodeRequest"))

(smithy/sdk/shapes:define-structure describe-node-response common-lisp:nil
                                    ((node-id :target-type node-id :required
                                      common-lisp:t :member-name "NodeId")
                                     (name :target-type node-name :required
                                      common-lisp:t :member-name "Name")
                                     (category :target-type node-category
                                      :required common-lisp:t :member-name
                                      "Category")
                                     (owner-account :target-type
                                      package-owner-account :required
                                      common-lisp:t :member-name
                                      "OwnerAccount")
                                     (package-name :target-type
                                      node-package-name :required common-lisp:t
                                      :member-name "PackageName")
                                     (package-id :target-type node-package-id
                                      :required common-lisp:t :member-name
                                      "PackageId")
                                     (package-arn :target-type node-package-arn
                                      :member-name "PackageArn")
                                     (package-version :target-type
                                      node-package-version :required
                                      common-lisp:t :member-name
                                      "PackageVersion")
                                     (patch-version :target-type
                                      node-package-patch-version :required
                                      common-lisp:t :member-name
                                      "PatchVersion")
                                     (node-interface :target-type
                                      node-interface :required common-lisp:t
                                      :member-name "NodeInterface")
                                     (asset-name :target-type node-asset-name
                                      :member-name "AssetName")
                                     (description :target-type description
                                      :required common-lisp:t :member-name
                                      "Description")
                                     (created-time :target-type time-stamp
                                      :required common-lisp:t :member-name
                                      "CreatedTime")
                                     (last-updated-time :target-type time-stamp
                                      :required common-lisp:t :member-name
                                      "LastUpdatedTime"))
                                    (:shape-name "DescribeNodeResponse"))

(smithy/sdk/shapes:define-structure describe-package-import-job-request
                                    common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "JobId"))
                                    (:shape-name
                                     "DescribePackageImportJobRequest"))

(smithy/sdk/shapes:define-structure describe-package-import-job-response
                                    common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "JobId")
                                     (client-token :target-type client-token
                                      :member-name "ClientToken")
                                     (job-type :target-type
                                      package-import-job-type :required
                                      common-lisp:t :member-name "JobType")
                                     (input-config :target-type
                                      package-import-job-input-config :required
                                      common-lisp:t :member-name "InputConfig")
                                     (output-config :target-type
                                      package-import-job-output-config
                                      :required common-lisp:t :member-name
                                      "OutputConfig")
                                     (output :target-type
                                      package-import-job-output :required
                                      common-lisp:t :member-name "Output")
                                     (created-time :target-type created-time
                                      :required common-lisp:t :member-name
                                      "CreatedTime")
                                     (last-updated-time :target-type
                                      last-updated-time :required common-lisp:t
                                      :member-name "LastUpdatedTime")
                                     (status :target-type
                                      package-import-job-status :required
                                      common-lisp:t :member-name "Status")
                                     (status-message :target-type
                                      package-import-job-status-message
                                      :required common-lisp:t :member-name
                                      "StatusMessage")
                                     (job-tags :target-type job-tags-list
                                      :member-name "JobTags"))
                                    (:shape-name
                                     "DescribePackageImportJobResponse"))

(smithy/sdk/shapes:define-structure describe-package-request common-lisp:nil
                                    ((package-id :target-type node-package-id
                                      :required common-lisp:t :member-name
                                      "PackageId"))
                                    (:shape-name "DescribePackageRequest"))

(smithy/sdk/shapes:define-structure describe-package-response common-lisp:nil
                                    ((package-id :target-type node-package-id
                                      :required common-lisp:t :member-name
                                      "PackageId")
                                     (package-name :target-type
                                      node-package-name :required common-lisp:t
                                      :member-name "PackageName")
                                     (arn :target-type node-package-arn
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (storage-location :target-type
                                      storage-location :required common-lisp:t
                                      :member-name "StorageLocation")
                                     (read-access-principal-arns :target-type
                                      principal-arns-list :member-name
                                      "ReadAccessPrincipalArns")
                                     (write-access-principal-arns :target-type
                                      principal-arns-list :member-name
                                      "WriteAccessPrincipalArns")
                                     (created-time :target-type time-stamp
                                      :required common-lisp:t :member-name
                                      "CreatedTime")
                                     (tags :target-type tag-map :required
                                      common-lisp:t :member-name "Tags"))
                                    (:shape-name "DescribePackageResponse"))

(smithy/sdk/shapes:define-structure describe-package-version-request
                                    common-lisp:nil
                                    ((owner-account :target-type
                                      package-owner-account :member-name
                                      "OwnerAccount" :http-query
                                      "OwnerAccount")
                                     (package-id :target-type node-package-id
                                      :required common-lisp:t :member-name
                                      "PackageId")
                                     (package-version :target-type
                                      node-package-version :required
                                      common-lisp:t :member-name
                                      "PackageVersion")
                                     (patch-version :target-type
                                      node-package-patch-version :member-name
                                      "PatchVersion" :http-query
                                      "PatchVersion"))
                                    (:shape-name
                                     "DescribePackageVersionRequest"))

(smithy/sdk/shapes:define-structure describe-package-version-response
                                    common-lisp:nil
                                    ((owner-account :target-type
                                      package-owner-account :member-name
                                      "OwnerAccount")
                                     (package-id :target-type node-package-id
                                      :required common-lisp:t :member-name
                                      "PackageId")
                                     (package-arn :target-type node-package-arn
                                      :member-name "PackageArn")
                                     (package-name :target-type
                                      node-package-name :required common-lisp:t
                                      :member-name "PackageName")
                                     (package-version :target-type
                                      node-package-version :required
                                      common-lisp:t :member-name
                                      "PackageVersion")
                                     (patch-version :target-type
                                      node-package-patch-version :required
                                      common-lisp:t :member-name
                                      "PatchVersion")
                                     (is-latest-patch :target-type boolean
                                      :required common-lisp:t :member-name
                                      "IsLatestPatch")
                                     (status :target-type
                                      package-version-status :required
                                      common-lisp:t :member-name "Status")
                                     (status-description :target-type
                                      package-version-status-description
                                      :member-name "StatusDescription")
                                     (registered-time :target-type time-stamp
                                      :member-name "RegisteredTime"))
                                    (:shape-name
                                     "DescribePackageVersionResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type desired-state smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure device common-lisp:nil
                                    ((device-id :target-type device-id
                                      :member-name "DeviceId")
                                     (name :target-type device-name
                                      :member-name "Name")
                                     (created-time :target-type created-time
                                      :member-name "CreatedTime")
                                     (provisioning-status :target-type
                                      device-status :member-name
                                      "ProvisioningStatus")
                                     (last-updated-time :target-type
                                      last-updated-time :member-name
                                      "LastUpdatedTime")
                                     (lease-expiration-time :target-type
                                      lease-expiration-time :member-name
                                      "LeaseExpirationTime")
                                     (brand :target-type device-brand
                                      :member-name "Brand")
                                     (current-software :target-type
                                      current-software :member-name
                                      "CurrentSoftware")
                                     (description :target-type description
                                      :member-name "Description")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (type :target-type device-type
                                      :member-name "Type")
                                     (latest-device-job :target-type
                                      latest-device-job :member-name
                                      "LatestDeviceJob")
                                     (device-aggregated-status :target-type
                                      device-aggregated-status :member-name
                                      "DeviceAggregatedStatus"))
                                    (:shape-name "Device"))

(smithy/sdk/shapes:define-type device-aggregated-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type device-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type device-brand smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type device-connection-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type device-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list device-id-list :member device-id)

(smithy/sdk/shapes:define-structure device-job common-lisp:nil
                                    ((device-name :target-type device-name
                                      :member-name "DeviceName")
                                     (device-id :target-type device-id
                                      :member-name "DeviceId")
                                     (job-id :target-type job-id :member-name
                                      "JobId")
                                     (created-time :target-type created-time
                                      :member-name "CreatedTime")
                                     (job-type :target-type job-type
                                      :member-name "JobType"))
                                    (:shape-name "DeviceJob"))

(smithy/sdk/shapes:define-structure device-job-config common-lisp:nil
                                    ((otajob-config :target-type otajob-config
                                      :member-name "OTAJobConfig"))
                                    (:shape-name "DeviceJobConfig"))

(smithy/sdk/shapes:define-list device-job-list :member device-job)

(smithy/sdk/shapes:define-list device-list :member device)

(smithy/sdk/shapes:define-type device-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type device-reported-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type device-serial-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type device-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type device-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dns smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list dns-list :member dns)

(smithy/sdk/shapes:define-structure ethernet-payload common-lisp:nil
                                    ((connection-type :target-type
                                      connection-type :required common-lisp:t
                                      :member-name "ConnectionType")
                                     (static-ip-connection-info :target-type
                                      static-ip-connection-info :member-name
                                      "StaticIpConnectionInfo"))
                                    (:shape-name "EthernetPayload"))

(smithy/sdk/shapes:define-structure ethernet-status common-lisp:nil
                                    ((ip-address :target-type ip-address
                                      :member-name "IpAddress")
                                     (connection-status :target-type
                                      network-connection-status :member-name
                                      "ConnectionStatus")
                                     (hw-address :target-type hw-address
                                      :member-name "HwAddress"))
                                    (:shape-name "EthernetStatus"))

(smithy/sdk/shapes:define-type hw-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type image-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list input-port-list :member node-input-port)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type iot-thing-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ip-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ip-address-or-server-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure job common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "JobId")
                                     (device-id :target-type device-id
                                      :member-name "DeviceId"))
                                    (:shape-name "Job"))

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list job-list :member job)

(smithy/sdk/shapes:define-structure job-resource-tags common-lisp:nil
                                    ((resource-type :target-type
                                      job-resource-type :required common-lisp:t
                                      :member-name "ResourceType")
                                     (tags :target-type tag-map :required
                                      common-lisp:t :member-name "Tags"))
                                    (:shape-name "JobResourceTags"))

(smithy/sdk/shapes:define-type job-resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list job-tags-list :member job-resource-tags)

(smithy/sdk/shapes:define-type job-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type last-updated-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type latest-alternate-software
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure latest-device-job common-lisp:nil
                                    ((image-version :target-type image-version
                                      :member-name "ImageVersion")
                                     (status :target-type update-progress
                                      :member-name "Status")
                                     (job-type :target-type job-type
                                      :member-name "JobType"))
                                    (:shape-name "LatestDeviceJob"))

(smithy/sdk/shapes:define-type latest-software smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lease-expiration-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure
 list-application-instance-dependencies-request common-lisp:nil
 ((application-instance-id :target-type application-instance-id :required
   common-lisp:t :member-name "ApplicationInstanceId")
  (max-results :target-type max-size25 :member-name "MaxResults" :http-query
   "maxResults")
  (next-token :target-type next-token :member-name "NextToken" :http-query
   "nextToken"))
 (:shape-name "ListApplicationInstanceDependenciesRequest"))

(smithy/sdk/shapes:define-structure
 list-application-instance-dependencies-response common-lisp:nil
 ((package-objects :target-type package-objects :member-name "PackageObjects")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "ListApplicationInstanceDependenciesResponse"))

(smithy/sdk/shapes:define-structure
 list-application-instance-node-instances-request common-lisp:nil
 ((application-instance-id :target-type application-instance-id :required
   common-lisp:t :member-name "ApplicationInstanceId")
  (max-results :target-type max-size25 :member-name "MaxResults" :http-query
   "maxResults")
  (next-token :target-type next-token :member-name "NextToken" :http-query
   "nextToken"))
 (:shape-name "ListApplicationInstanceNodeInstancesRequest"))

(smithy/sdk/shapes:define-structure
 list-application-instance-node-instances-response common-lisp:nil
 ((node-instances :target-type node-instances :member-name "NodeInstances")
  (next-token :target-type next-token :member-name "NextToken"))
 (:shape-name "ListApplicationInstanceNodeInstancesResponse"))

(smithy/sdk/shapes:define-structure list-application-instances-request
                                    common-lisp:nil
                                    ((device-id :target-type device-id
                                      :member-name "DeviceId" :http-query
                                      "deviceId")
                                     (status-filter :target-type status-filter
                                      :member-name "StatusFilter" :http-query
                                      "statusFilter")
                                     (max-results :target-type max-size25
                                      :member-name "MaxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "NextToken" :http-query
                                      "nextToken"))
                                    (:shape-name
                                     "ListApplicationInstancesRequest"))

(smithy/sdk/shapes:define-structure list-application-instances-response
                                    common-lisp:nil
                                    ((application-instances :target-type
                                      application-instances :member-name
                                      "ApplicationInstances")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListApplicationInstancesResponse"))

(smithy/sdk/shapes:define-structure list-devices-jobs-request common-lisp:nil
                                    ((device-id :target-type device-id
                                      :member-name "DeviceId" :http-query
                                      "DeviceId")
                                     (next-token :target-type next-token
                                      :member-name "NextToken" :http-query
                                      "NextToken")
                                     (max-results :target-type max-size25
                                      :member-name "MaxResults" :http-query
                                      "MaxResults"))
                                    (:shape-name "ListDevicesJobsRequest"))

(smithy/sdk/shapes:define-structure list-devices-jobs-response common-lisp:nil
                                    ((device-jobs :target-type device-job-list
                                      :member-name "DeviceJobs")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListDevicesJobsResponse"))

(smithy/sdk/shapes:define-structure list-devices-request common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "NextToken" :http-query
                                      "NextToken")
                                     (max-results :target-type max-size25
                                      :member-name "MaxResults" :http-query
                                      "MaxResults")
                                     (sort-by :target-type list-devices-sort-by
                                      :member-name "SortBy" :http-query
                                      "SortBy")
                                     (sort-order :target-type sort-order
                                      :member-name "SortOrder" :http-query
                                      "SortOrder")
                                     (name-filter :target-type name-filter
                                      :member-name "NameFilter" :http-query
                                      "NameFilter")
                                     (device-aggregated-status-filter
                                      :target-type device-aggregated-status
                                      :member-name
                                      "DeviceAggregatedStatusFilter"
                                      :http-query
                                      "DeviceAggregatedStatusFilter"))
                                    (:shape-name "ListDevicesRequest"))

(smithy/sdk/shapes:define-structure list-devices-response common-lisp:nil
                                    ((devices :target-type device-list
                                      :required common-lisp:t :member-name
                                      "Devices")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListDevicesResponse"))

(smithy/sdk/shapes:define-type list-devices-sort-by
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure list-node-from-template-jobs-request
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "NextToken" :http-query
                                      "NextToken")
                                     (max-results :target-type max-size25
                                      :member-name "MaxResults" :http-query
                                      "MaxResults"))
                                    (:shape-name
                                     "ListNodeFromTemplateJobsRequest"))

(smithy/sdk/shapes:define-structure list-node-from-template-jobs-response
                                    common-lisp:nil
                                    ((node-from-template-jobs :target-type
                                      node-from-template-job-list :required
                                      common-lisp:t :member-name
                                      "NodeFromTemplateJobs")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListNodeFromTemplateJobsResponse"))

(smithy/sdk/shapes:define-structure list-nodes-request common-lisp:nil
                                    ((category :target-type node-category
                                      :member-name "Category" :http-query
                                      "category")
                                     (owner-account :target-type
                                      package-owner-account :member-name
                                      "OwnerAccount" :http-query
                                      "ownerAccount")
                                     (package-name :target-type
                                      node-package-name :member-name
                                      "PackageName" :http-query "packageName")
                                     (package-version :target-type
                                      node-package-version :member-name
                                      "PackageVersion" :http-query
                                      "packageVersion")
                                     (patch-version :target-type
                                      node-package-patch-version :member-name
                                      "PatchVersion" :http-query
                                      "patchVersion")
                                     (next-token :target-type token
                                      :member-name "NextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-size25
                                      :member-name "MaxResults" :http-query
                                      "maxResults"))
                                    (:shape-name "ListNodesRequest"))

(smithy/sdk/shapes:define-structure list-nodes-response common-lisp:nil
                                    ((nodes :target-type nodes-list
                                      :member-name "Nodes")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name "ListNodesResponse"))

(smithy/sdk/shapes:define-structure list-package-import-jobs-request
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "NextToken" :http-query
                                      "NextToken")
                                     (max-results :target-type max-size25
                                      :member-name "MaxResults" :http-query
                                      "MaxResults"))
                                    (:shape-name
                                     "ListPackageImportJobsRequest"))

(smithy/sdk/shapes:define-structure list-package-import-jobs-response
                                    common-lisp:nil
                                    ((package-import-jobs :target-type
                                      package-import-job-list :required
                                      common-lisp:t :member-name
                                      "PackageImportJobs")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListPackageImportJobsResponse"))

(smithy/sdk/shapes:define-structure list-packages-request common-lisp:nil
                                    ((max-results :target-type max-size25
                                      :member-name "MaxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type token
                                      :member-name "NextToken" :http-query
                                      "nextToken"))
                                    (:shape-name "ListPackagesRequest"))

(smithy/sdk/shapes:define-structure list-packages-response common-lisp:nil
                                    ((packages :target-type package-list
                                      :member-name "Packages")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ListPackagesResponse"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-union manifest-overrides-payload common-lisp:nil
                                ((payload-data :target-type
                                  manifest-overrides-payload-data :member-name
                                  "PayloadData"))
                                (:shape-name "ManifestOverridesPayload"))

(smithy/sdk/shapes:define-type manifest-overrides-payload-data
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union manifest-payload common-lisp:nil
                                ((payload-data :target-type
                                  manifest-payload-data :member-name
                                  "PayloadData"))
                                (:shape-name "ManifestPayload"))

(smithy/sdk/shapes:define-type manifest-payload-data
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type mark-latest-patch
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type mask smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-connections smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-size25 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type name-filter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type network-connection-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure network-payload common-lisp:nil
                                    ((ethernet0 :target-type ethernet-payload
                                      :member-name "Ethernet0")
                                     (ethernet1 :target-type ethernet-payload
                                      :member-name "Ethernet1")
                                     (ntp :target-type ntp-payload :member-name
                                      "Ntp"))
                                    (:shape-name "NetworkPayload"))

(smithy/sdk/shapes:define-structure network-status common-lisp:nil
                                    ((ethernet0status :target-type
                                      ethernet-status :member-name
                                      "Ethernet0Status")
                                     (ethernet1status :target-type
                                      ethernet-status :member-name
                                      "Ethernet1Status")
                                     (ntp-status :target-type ntp-status
                                      :member-name "NtpStatus")
                                     (last-updated-time :target-type
                                      last-updated-time :member-name
                                      "LastUpdatedTime"))
                                    (:shape-name "NetworkStatus"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure node common-lisp:nil
                                    ((node-id :target-type node-id :required
                                      common-lisp:t :member-name "NodeId")
                                     (name :target-type node-name :required
                                      common-lisp:t :member-name "Name")
                                     (category :target-type node-category
                                      :required common-lisp:t :member-name
                                      "Category")
                                     (owner-account :target-type
                                      package-owner-account :member-name
                                      "OwnerAccount")
                                     (package-name :target-type
                                      node-package-name :required common-lisp:t
                                      :member-name "PackageName")
                                     (package-id :target-type node-package-id
                                      :required common-lisp:t :member-name
                                      "PackageId")
                                     (package-arn :target-type node-package-arn
                                      :member-name "PackageArn")
                                     (package-version :target-type
                                      node-package-version :required
                                      common-lisp:t :member-name
                                      "PackageVersion")
                                     (patch-version :target-type
                                      node-package-patch-version :required
                                      common-lisp:t :member-name
                                      "PatchVersion")
                                     (description :target-type description
                                      :member-name "Description")
                                     (created-time :target-type time-stamp
                                      :required common-lisp:t :member-name
                                      "CreatedTime"))
                                    (:shape-name "Node"))

(smithy/sdk/shapes:define-type node-asset-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type node-category smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure node-from-template-job common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "JobId")
                                     (template-type :target-type template-type
                                      :member-name "TemplateType")
                                     (status :target-type
                                      node-from-template-job-status
                                      :member-name "Status")
                                     (status-message :target-type
                                      node-from-template-job-status-message
                                      :member-name "StatusMessage")
                                     (created-time :target-type created-time
                                      :member-name "CreatedTime")
                                     (node-name :target-type node-name
                                      :member-name "NodeName"))
                                    (:shape-name "NodeFromTemplateJob"))

(smithy/sdk/shapes:define-list node-from-template-job-list :member
                               node-from-template-job)

(smithy/sdk/shapes:define-type node-from-template-job-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type node-from-template-job-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type node-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure node-input-port common-lisp:nil
                                    ((name :target-type port-name :member-name
                                      "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (type :target-type port-type :member-name
                                      "Type")
                                     (default-value :target-type
                                      port-default-value :member-name
                                      "DefaultValue")
                                     (max-connections :target-type
                                      max-connections :member-name
                                      "MaxConnections"))
                                    (:shape-name "NodeInputPort"))

(smithy/sdk/shapes:define-structure node-instance common-lisp:nil
                                    ((node-instance-id :target-type
                                      node-instance-id :required common-lisp:t
                                      :member-name "NodeInstanceId")
                                     (node-id :target-type node-id :member-name
                                      "NodeId")
                                     (package-name :target-type
                                      node-package-name :member-name
                                      "PackageName")
                                     (package-version :target-type
                                      node-package-version :member-name
                                      "PackageVersion")
                                     (package-patch-version :target-type
                                      node-package-patch-version :member-name
                                      "PackagePatchVersion")
                                     (node-name :target-type node-name
                                      :member-name "NodeName")
                                     (current-status :target-type
                                      node-instance-status :required
                                      common-lisp:t :member-name
                                      "CurrentStatus"))
                                    (:shape-name "NodeInstance"))

(smithy/sdk/shapes:define-type node-instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type node-instance-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list node-instances :member node-instance)

(smithy/sdk/shapes:define-structure node-interface common-lisp:nil
                                    ((inputs :target-type input-port-list
                                      :required common-lisp:t :member-name
                                      "Inputs")
                                     (outputs :target-type output-port-list
                                      :required common-lisp:t :member-name
                                      "Outputs"))
                                    (:shape-name "NodeInterface"))

(smithy/sdk/shapes:define-type node-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure node-output-port common-lisp:nil
                                    ((name :target-type port-name :member-name
                                      "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (type :target-type port-type :member-name
                                      "Type"))
                                    (:shape-name "NodeOutputPort"))

(smithy/sdk/shapes:define-type node-package-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type node-package-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type node-package-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type node-package-patch-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type node-package-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure node-signal common-lisp:nil
                                    ((node-instance-id :target-type
                                      node-instance-id :required common-lisp:t
                                      :member-name "NodeInstanceId")
                                     (signal :target-type node-signal-value
                                      :required common-lisp:t :member-name
                                      "Signal"))
                                    (:shape-name "NodeSignal"))

(smithy/sdk/shapes:define-list node-signal-list :member node-signal)

(smithy/sdk/shapes:define-type node-signal-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list nodes-list :member node)

(smithy/sdk/shapes:define-structure ntp-payload common-lisp:nil
                                    ((ntp-servers :target-type ntp-server-list
                                      :required common-lisp:t :member-name
                                      "NtpServers"))
                                    (:shape-name "NtpPayload"))

(smithy/sdk/shapes:define-list ntp-server-list :member
                               ip-address-or-server-name)

(smithy/sdk/shapes:define-type ntp-server-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ntp-status common-lisp:nil
                                    ((connection-status :target-type
                                      network-connection-status :member-name
                                      "ConnectionStatus")
                                     (ip-address :target-type ip-address
                                      :member-name "IpAddress")
                                     (ntp-server-name :target-type
                                      ntp-server-name :member-name
                                      "NtpServerName"))
                                    (:shape-name "NtpStatus"))

(smithy/sdk/shapes:define-structure otajob-config common-lisp:nil
                                    ((image-version :target-type image-version
                                      :required common-lisp:t :member-name
                                      "ImageVersion")
                                     (allow-major-version-update :target-type
                                      boolean :member-name
                                      "AllowMajorVersionUpdate"))
                                    (:shape-name "OTAJobConfig"))

(smithy/sdk/shapes:define-type object smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type object-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure out-put-s3location common-lisp:nil
                                    ((bucket-name :target-type bucket-name
                                      :required common-lisp:t :member-name
                                      "BucketName")
                                     (object-key :target-type object-key
                                      :required common-lisp:t :member-name
                                      "ObjectKey"))
                                    (:shape-name "OutPutS3Location"))

(smithy/sdk/shapes:define-list output-port-list :member node-output-port)

(smithy/sdk/shapes:define-structure package-import-job common-lisp:nil
                                    ((job-id :target-type job-id :member-name
                                      "JobId")
                                     (job-type :target-type
                                      package-import-job-type :member-name
                                      "JobType")
                                     (status :target-type
                                      package-import-job-status :member-name
                                      "Status")
                                     (status-message :target-type
                                      package-import-job-status-message
                                      :member-name "StatusMessage")
                                     (created-time :target-type created-time
                                      :member-name "CreatedTime")
                                     (last-updated-time :target-type
                                      last-updated-time :member-name
                                      "LastUpdatedTime"))
                                    (:shape-name "PackageImportJob"))

(smithy/sdk/shapes:define-structure package-import-job-input-config
                                    common-lisp:nil
                                    ((package-version-input-config :target-type
                                      package-version-input-config :member-name
                                      "PackageVersionInputConfig"))
                                    (:shape-name "PackageImportJobInputConfig"))

(smithy/sdk/shapes:define-list package-import-job-list :member
                               package-import-job)

(smithy/sdk/shapes:define-structure package-import-job-output common-lisp:nil
                                    ((package-id :target-type node-package-id
                                      :required common-lisp:t :member-name
                                      "PackageId")
                                     (package-version :target-type
                                      node-package-version :required
                                      common-lisp:t :member-name
                                      "PackageVersion")
                                     (patch-version :target-type
                                      node-package-patch-version :required
                                      common-lisp:t :member-name
                                      "PatchVersion")
                                     (output-s3location :target-type
                                      out-put-s3location :required
                                      common-lisp:t :member-name
                                      "OutputS3Location"))
                                    (:shape-name "PackageImportJobOutput"))

(smithy/sdk/shapes:define-structure package-import-job-output-config
                                    common-lisp:nil
                                    ((package-version-output-config
                                      :target-type
                                      package-version-output-config
                                      :member-name
                                      "PackageVersionOutputConfig"))
                                    (:shape-name
                                     "PackageImportJobOutputConfig"))

(smithy/sdk/shapes:define-type package-import-job-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type package-import-job-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type package-import-job-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list package-list :member package-list-item)

(smithy/sdk/shapes:define-structure package-list-item common-lisp:nil
                                    ((package-id :target-type node-package-id
                                      :member-name "PackageId")
                                     (package-name :target-type
                                      node-package-name :member-name
                                      "PackageName")
                                     (arn :target-type node-package-arn
                                      :member-name "Arn")
                                     (created-time :target-type time-stamp
                                      :member-name "CreatedTime")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "PackageListItem"))

(smithy/sdk/shapes:define-structure package-object common-lisp:nil
                                    ((name :target-type node-package-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (package-version :target-type
                                      node-package-version :required
                                      common-lisp:t :member-name
                                      "PackageVersion")
                                     (patch-version :target-type
                                      node-package-patch-version :required
                                      common-lisp:t :member-name
                                      "PatchVersion"))
                                    (:shape-name "PackageObject"))

(smithy/sdk/shapes:define-list package-objects :member package-object)

(smithy/sdk/shapes:define-type package-owner-account
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure package-version-input-config
                                    common-lisp:nil
                                    ((s3location :target-type s3location
                                      :required common-lisp:t :member-name
                                      "S3Location"))
                                    (:shape-name "PackageVersionInputConfig"))

(smithy/sdk/shapes:define-structure package-version-output-config
                                    common-lisp:nil
                                    ((package-name :target-type
                                      node-package-name :required common-lisp:t
                                      :member-name "PackageName")
                                     (package-version :target-type
                                      node-package-version :required
                                      common-lisp:t :member-name
                                      "PackageVersion")
                                     (mark-latest :target-type
                                      mark-latest-patch :member-name
                                      "MarkLatest"))
                                    (:shape-name "PackageVersionOutputConfig"))

(smithy/sdk/shapes:define-type package-version-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type package-version-status-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type port-default-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type port-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type port-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type principal-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list principal-arns-list :member principal-arn)

(smithy/sdk/shapes:define-structure provision-device-request common-lisp:nil
                                    ((name :target-type device-name :required
                                      common-lisp:t :member-name "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (networking-configuration :target-type
                                      network-payload :member-name
                                      "NetworkingConfiguration"))
                                    (:shape-name "ProvisionDeviceRequest"))

(smithy/sdk/shapes:define-structure provision-device-response common-lisp:nil
                                    ((device-id :target-type device-id
                                      :member-name "DeviceId")
                                     (arn :target-type device-arn :required
                                      common-lisp:t :member-name "Arn")
                                     (status :target-type device-status
                                      :required common-lisp:t :member-name
                                      "Status")
                                     (certificates :target-type certificates
                                      :member-name "Certificates")
                                     (iot-thing-name :target-type
                                      iot-thing-name :member-name
                                      "IotThingName"))
                                    (:shape-name "ProvisionDeviceResponse"))

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure register-package-version-request
                                    common-lisp:nil
                                    ((owner-account :target-type
                                      package-owner-account :member-name
                                      "OwnerAccount")
                                     (package-id :target-type node-package-id
                                      :required common-lisp:t :member-name
                                      "PackageId")
                                     (package-version :target-type
                                      node-package-version :required
                                      common-lisp:t :member-name
                                      "PackageVersion")
                                     (patch-version :target-type
                                      node-package-patch-version :required
                                      common-lisp:t :member-name
                                      "PatchVersion")
                                     (mark-latest :target-type
                                      mark-latest-patch :member-name
                                      "MarkLatest"))
                                    (:shape-name
                                     "RegisterPackageVersionRequest"))

(smithy/sdk/shapes:define-structure register-package-version-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "RegisterPackageVersionResponse"))

(smithy/sdk/shapes:define-structure remove-application-instance-request
                                    common-lisp:nil
                                    ((application-instance-id :target-type
                                      application-instance-id :required
                                      common-lisp:t :member-name
                                      "ApplicationInstanceId"))
                                    (:shape-name
                                     "RemoveApplicationInstanceRequest"))

(smithy/sdk/shapes:define-structure remove-application-instance-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "RemoveApplicationInstanceResponse"))

(smithy/sdk/shapes:define-structure reported-runtime-context-state
                                    common-lisp:nil
                                    ((desired-state :target-type desired-state
                                      :required common-lisp:t :member-name
                                      "DesiredState")
                                     (runtime-context-name :target-type
                                      runtime-context-name :required
                                      common-lisp:t :member-name
                                      "RuntimeContextName")
                                     (device-reported-status :target-type
                                      device-reported-status :required
                                      common-lisp:t :member-name
                                      "DeviceReportedStatus")
                                     (device-reported-time :target-type
                                      time-stamp :required common-lisp:t
                                      :member-name "DeviceReportedTime"))
                                    (:shape-name "ReportedRuntimeContextState"))

(smithy/sdk/shapes:define-list reported-runtime-context-states :member
                               reported-runtime-context-state)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "ResourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type retry-after-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type runtime-context-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type runtime-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((region :target-type region :member-name
                                      "Region")
                                     (bucket-name :target-type bucket-name
                                      :required common-lisp:t :member-name
                                      "BucketName")
                                     (object-key :target-type object-key
                                      :required common-lisp:t :member-name
                                      "ObjectKey"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type string :member-name
                                  "ResourceId")
                                 (resource-type :target-type string
                                  :member-name "ResourceType")
                                 (quota-code :target-type string :required
                                  common-lisp:t :member-name "QuotaCode")
                                 (service-code :target-type string :required
                                  common-lisp:t :member-name "ServiceCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure
 signal-application-instance-node-instances-request common-lisp:nil
 ((application-instance-id :target-type application-instance-id :required
   common-lisp:t :member-name "ApplicationInstanceId")
  (node-signals :target-type node-signal-list :required common-lisp:t
   :member-name "NodeSignals"))
 (:shape-name "SignalApplicationInstanceNodeInstancesRequest"))

(smithy/sdk/shapes:define-structure
 signal-application-instance-node-instances-response common-lisp:nil
 ((application-instance-id :target-type application-instance-id :required
   common-lisp:t :member-name "ApplicationInstanceId"))
 (:shape-name "SignalApplicationInstanceNodeInstancesResponse"))

(smithy/sdk/shapes:define-type sort-order smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure static-ip-connection-info common-lisp:nil
                                    ((ip-address :target-type ip-address
                                      :required common-lisp:t :member-name
                                      "IpAddress")
                                     (mask :target-type mask :required
                                      common-lisp:t :member-name "Mask")
                                     (dns :target-type dns-list :required
                                      common-lisp:t :member-name "Dns")
                                     (default-gateway :target-type
                                      default-gateway :required common-lisp:t
                                      :member-name "DefaultGateway"))
                                    (:shape-name "StaticIpConnectionInfo"))

(smithy/sdk/shapes:define-type status-filter smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure storage-location common-lisp:nil
                                    ((bucket :target-type bucket :required
                                      common-lisp:t :member-name "Bucket")
                                     (repo-prefix-location :target-type object
                                      :required common-lisp:t :member-name
                                      "RepoPrefixLocation")
                                     (generated-prefix-location :target-type
                                      object :required common-lisp:t
                                      :member-name "GeneratedPrefixLocation")
                                     (binary-prefix-location :target-type
                                      object :required common-lisp:t
                                      :member-name "BinaryPrefixLocation")
                                     (manifest-prefix-location :target-type
                                      object :required common-lisp:t
                                      :member-name "ManifestPrefixLocation"))
                                    (:shape-name "StorageLocation"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceArn")
                                     (tags :target-type tag-map :required
                                      common-lisp:t :member-name "Tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map template-parameters-map :key template-key :value
                              template-value)

(smithy/sdk/shapes:define-type template-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type time-stamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "ResourceArn")
                                     (tag-keys :target-type tag-key-list
                                      :required common-lisp:t :member-name
                                      "TagKeys" :http-query "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-type update-created-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure update-device-metadata-request
                                    common-lisp:nil
                                    ((device-id :target-type device-id
                                      :required common-lisp:t :member-name
                                      "DeviceId")
                                     (description :target-type description
                                      :member-name "Description"))
                                    (:shape-name "UpdateDeviceMetadataRequest"))

(smithy/sdk/shapes:define-structure update-device-metadata-response
                                    common-lisp:nil
                                    ((device-id :target-type device-id
                                      :member-name "DeviceId"))
                                    (:shape-name
                                     "UpdateDeviceMetadataResponse"))

(smithy/sdk/shapes:define-type update-progress smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "Reason")
                                 (error-id :target-type string :member-name
                                  "ErrorId")
                                 (error-arguments :target-type
                                  validation-exception-error-argument-list
                                  :member-name "ErrorArguments")
                                 (fields :target-type
                                  validation-exception-field-list :member-name
                                  "Fields"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-error-argument
                                    common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (value :target-type string :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name
                                     "ValidationExceptionErrorArgument"))

(smithy/sdk/shapes:define-list validation-exception-error-argument-list :member
                               validation-exception-error-argument)

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (message :target-type string :required
                                      common-lisp:t :member-name "Message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type validation-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-application-instance :shape-name
                                       "CreateApplicationInstance" :input
                                       create-application-instance-request
                                       :output
                                       create-application-instance-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/application-instances" :code 200)

(smithy/sdk/operation:define-operation create-job-for-devices :shape-name
                                       "CreateJobForDevices" :input
                                       create-job-for-devices-request :output
                                       create-job-for-devices-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri "/jobs" :code 200)

(smithy/sdk/operation:define-operation create-node-from-template-job
                                       :shape-name "CreateNodeFromTemplateJob"
                                       :input
                                       create-node-from-template-job-request
                                       :output
                                       create-node-from-template-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/packages/template-job" :code 200)

(smithy/sdk/operation:define-operation create-package :shape-name
                                       "CreatePackage" :input
                                       create-package-request :output
                                       create-package-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri "/packages" :code
                                       200)

(smithy/sdk/operation:define-operation create-package-import-job :shape-name
                                       "CreatePackageImportJob" :input
                                       create-package-import-job-request
                                       :output
                                       create-package-import-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/packages/import-jobs" :code 200)

(smithy/sdk/operation:define-operation delete-device :shape-name "DeleteDevice"
                                       :input delete-device-request :output
                                       delete-device-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/devices/{DeviceId}" :code 200)

(smithy/sdk/operation:define-operation delete-package :shape-name
                                       "DeletePackage" :input
                                       delete-package-request :output
                                       delete-package-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/packages/{PackageId}" :code 200)

(smithy/sdk/operation:define-operation deregister-package-version :shape-name
                                       "DeregisterPackageVersion" :input
                                       deregister-package-version-request
                                       :output
                                       deregister-package-version-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/packages/{PackageId}/versions/{PackageVersion}/patch/{PatchVersion}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-application-instance
                                       :shape-name
                                       "DescribeApplicationInstance" :input
                                       describe-application-instance-request
                                       :output
                                       describe-application-instance-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/application-instances/{ApplicationInstanceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-application-instance-details
                                       :shape-name
                                       "DescribeApplicationInstanceDetails"
                                       :input
                                       describe-application-instance-details-request
                                       :output
                                       describe-application-instance-details-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/application-instances/{ApplicationInstanceId}/details"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-device :shape-name
                                       "DescribeDevice" :input
                                       describe-device-request :output
                                       describe-device-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/devices/{DeviceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-device-job :shape-name
                                       "DescribeDeviceJob" :input
                                       describe-device-job-request :output
                                       describe-device-job-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/jobs/{JobId}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-node :shape-name "DescribeNode"
                                       :input describe-node-request :output
                                       describe-node-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/nodes/{NodeId}"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-node-from-template-job
                                       :shape-name
                                       "DescribeNodeFromTemplateJob" :input
                                       describe-node-from-template-job-request
                                       :output
                                       describe-node-from-template-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/packages/template-job/{JobId}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-package :shape-name
                                       "DescribePackage" :input
                                       describe-package-request :output
                                       describe-package-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/packages/metadata/{PackageId}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-package-import-job :shape-name
                                       "DescribePackageImportJob" :input
                                       describe-package-import-job-request
                                       :output
                                       describe-package-import-job-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/packages/import-jobs/{JobId}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-package-version :shape-name
                                       "DescribePackageVersion" :input
                                       describe-package-version-request :output
                                       describe-package-version-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/packages/metadata/{PackageId}/versions/{PackageVersion}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-application-instance-dependencies
                                       :shape-name
                                       "ListApplicationInstanceDependencies"
                                       :input
                                       list-application-instance-dependencies-request
                                       :output
                                       list-application-instance-dependencies-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception)
                                       :method "GET" :uri
                                       "/application-instances/{ApplicationInstanceId}/package-dependencies"
                                       :code 200)

(smithy/sdk/operation:define-operation list-application-instance-node-instances
                                       :shape-name
                                       "ListApplicationInstanceNodeInstances"
                                       :input
                                       list-application-instance-node-instances-request
                                       :output
                                       list-application-instance-node-instances-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception)
                                       :method "GET" :uri
                                       "/application-instances/{ApplicationInstanceId}/node-instances"
                                       :code 200)

(smithy/sdk/operation:define-operation list-application-instances :shape-name
                                       "ListApplicationInstances" :input
                                       list-application-instances-request
                                       :output
                                       list-application-instances-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception)
                                       :method "GET" :uri
                                       "/application-instances" :code 200)

(smithy/sdk/operation:define-operation list-devices :shape-name "ListDevices"
                                       :input list-devices-request :output
                                       list-devices-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/devices" :code 200)

(smithy/sdk/operation:define-operation list-devices-jobs :shape-name
                                       "ListDevicesJobs" :input
                                       list-devices-jobs-request :output
                                       list-devices-jobs-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/jobs" :code 200)

(smithy/sdk/operation:define-operation list-node-from-template-jobs :shape-name
                                       "ListNodeFromTemplateJobs" :input
                                       list-node-from-template-jobs-request
                                       :output
                                       list-node-from-template-jobs-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/packages/template-job" :code 200)

(smithy/sdk/operation:define-operation list-nodes :shape-name "ListNodes"
                                       :input list-nodes-request :output
                                       list-nodes-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/nodes" :code 200)

(smithy/sdk/operation:define-operation list-package-import-jobs :shape-name
                                       "ListPackageImportJobs" :input
                                       list-package-import-jobs-request :output
                                       list-package-import-jobs-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/packages/import-jobs" :code 200)

(smithy/sdk/operation:define-operation list-packages :shape-name "ListPackages"
                                       :input list-packages-request :output
                                       list-packages-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/packages" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation provision-device :shape-name
                                       "ProvisionDevice" :input
                                       provision-device-request :output
                                       provision-device-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/devices" :code 200)

(smithy/sdk/operation:define-operation register-package-version :shape-name
                                       "RegisterPackageVersion" :input
                                       register-package-version-request :output
                                       register-package-version-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/packages/{PackageId}/versions/{PackageVersion}/patch/{PatchVersion}"
                                       :code 200)

(smithy/sdk/operation:define-operation remove-application-instance :shape-name
                                       "RemoveApplicationInstance" :input
                                       remove-application-instance-request
                                       :output
                                       remove-application-instance-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/application-instances/{ApplicationInstanceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 signal-application-instance-node-instances :shape-name
 "SignalApplicationInstanceNodeInstances" :input
 signal-application-instance-node-instances-request :output
 signal-application-instance-node-instances-response :errors
 (access-denied-exception internal-server-exception
  service-quota-exceeded-exception validation-exception)
 :method "PUT" :uri
 "/application-instances/{ApplicationInstanceId}/node-signals" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-device-metadata :shape-name
                                       "UpdateDeviceMetadata" :input
                                       update-device-metadata-request :output
                                       update-device-metadata-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "PUT" :uri "/devices/{DeviceId}"
                                       :code 200)
