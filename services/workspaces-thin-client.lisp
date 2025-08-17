(uiop/package:define-package #:pira/workspaces-thin-client (:use)
                             (:export #:activation-code #:apply-time-of #:arn
                              #:client-token #:create-environment #:day-of-week
                              #:day-of-week-list #:delete-device
                              #:delete-environment #:deregister-device
                              #:desktop-endpoint #:desktop-type #:device
                              #:device-creation-tag-key
                              #:device-creation-tag-value
                              #:device-creation-tags-map #:device-id
                              #:device-list #:device-name
                              #:device-software-set-compliance-status
                              #:device-status #:device-summary #:environment
                              #:environment-id #:environment-list
                              #:environment-name
                              #:environment-software-set-compliance-status
                              #:environment-summary #:exception-message
                              #:field-name #:get-device #:get-environment
                              #:get-software-set #:hour #:kms-key-arn
                              #:list-devices #:list-environments
                              #:list-software-sets #:list-tags-for-resource
                              #:maintenance-window #:maintenance-window-type
                              #:max-results #:minute #:pagination-token
                              #:quota-code #:resource-id #:resource-type
                              #:retry-after-seconds #:service-code #:software
                              #:software-list #:software-set #:software-set-id
                              #:software-set-id-or-empty-string
                              #:software-set-list #:software-set-summary
                              #:software-set-update-mode
                              #:software-set-update-schedule
                              #:software-set-update-status
                              #:software-set-validation-status #:tag-keys
                              #:tag-resource #:tags-map #:target-device-status
                              #:thin-client #:timestamp #:untag-resource
                              #:update-device #:update-environment
                              #:update-software-set #:user-id
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason))
(common-lisp:in-package #:pira/workspaces-thin-client)

(smithy/sdk/service:define-service thin-client :shape-name "ThinClient"
                                   :version "2023-08-22" :title
                                   "Amazon WorkSpaces Thin Client" :operations
                                   '(create-environment delete-device
                                     delete-environment deregister-device
                                     get-device get-environment
                                     get-software-set list-devices
                                     list-environments list-software-sets
                                     list-tags-for-resource tag-resource
                                     untag-resource update-device
                                     update-environment update-software-set)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "WorkSpaces Thin Client")
                                      ("arnNamespace" . "thinclient")
                                      ("cloudTrailEventSource"
                                       . "thinclient.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "thinclient"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type activation-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum apply-time-of
    common-lisp:nil
  (:utc "UTC")
  (:device "DEVICE"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (resource-id :target-type resource-id
                                  :member-name "resourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-environment-request common-lisp:nil
                                ((name :target-type environment-name
                                  :member-name "name")
                                 (desktop-arn :target-type arn :required
                                  common-lisp:t :member-name "desktopArn")
                                 (desktop-endpoint :target-type
                                  desktop-endpoint :member-name
                                  "desktopEndpoint")
                                 (software-set-update-schedule :target-type
                                  software-set-update-schedule :member-name
                                  "softwareSetUpdateSchedule")
                                 (maintenance-window :target-type
                                  maintenance-window :member-name
                                  "maintenanceWindow")
                                 (software-set-update-mode :target-type
                                  software-set-update-mode :member-name
                                  "softwareSetUpdateMode")
                                 (desired-software-set-id :target-type
                                  software-set-id :member-name
                                  "desiredSoftwareSetId")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "kmsKeyArn")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (tags :target-type tags-map :member-name
                                  "tags")
                                 (device-creation-tags :target-type
                                  device-creation-tags-map :member-name
                                  "deviceCreationTags"))
                                (:shape-name "CreateEnvironmentRequest"))

(smithy/sdk/shapes:define-output create-environment-response common-lisp:nil
                                 ((environment :target-type environment-summary
                                   :member-name "environment"))
                                 (:shape-name "CreateEnvironmentResponse"))

(smithy/sdk/shapes:define-enum day-of-week
    common-lisp:nil
  (:monday "MONDAY")
  (:tuesday "TUESDAY")
  (:wednesday "WEDNESDAY")
  (:thursday "THURSDAY")
  (:friday "FRIDAY")
  (:saturday "SATURDAY")
  (:sunday "SUNDAY"))

(smithy/sdk/shapes:define-list day-of-week-list :member day-of-week)

(smithy/sdk/shapes:define-input delete-device-request common-lisp:nil
                                ((id :target-type device-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeleteDeviceRequest"))

(smithy/sdk/shapes:define-output delete-device-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDeviceResponse"))

(smithy/sdk/shapes:define-input delete-environment-request common-lisp:nil
                                ((id :target-type environment-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeleteEnvironmentRequest"))

(smithy/sdk/shapes:define-output delete-environment-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteEnvironmentResponse"))

(smithy/sdk/shapes:define-input deregister-device-request common-lisp:nil
                                ((id :target-type device-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (target-device-status :target-type
                                  target-device-status :member-name
                                  "targetDeviceStatus")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "DeregisterDeviceRequest"))

(smithy/sdk/shapes:define-output deregister-device-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeregisterDeviceResponse"))

(smithy/sdk/shapes:define-type desktop-endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum desktop-type
    common-lisp:nil
  (:workspaces "workspaces")
  (:appstream "appstream")
  (:workspaces-web "workspaces-web"))

(smithy/sdk/shapes:define-structure device common-lisp:nil
                                    ((id :target-type device-id :member-name
                                      "id")
                                     (serial-number :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "serialNumber")
                                     (name :target-type device-name
                                      :member-name "name")
                                     (model :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "model")
                                     (environment-id :target-type
                                      environment-id :member-name
                                      "environmentId")
                                     (status :target-type device-status
                                      :member-name "status")
                                     (current-software-set-id :target-type
                                      software-set-id :member-name
                                      "currentSoftwareSetId")
                                     (current-software-set-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "currentSoftwareSetVersion")
                                     (desired-software-set-id :target-type
                                      software-set-id :member-name
                                      "desiredSoftwareSetId")
                                     (pending-software-set-id :target-type
                                      software-set-id :member-name
                                      "pendingSoftwareSetId")
                                     (pending-software-set-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "pendingSoftwareSetVersion")
                                     (software-set-update-schedule :target-type
                                      software-set-update-schedule :member-name
                                      "softwareSetUpdateSchedule")
                                     (software-set-compliance-status
                                      :target-type
                                      device-software-set-compliance-status
                                      :member-name
                                      "softwareSetComplianceStatus")
                                     (software-set-update-status :target-type
                                      software-set-update-status :member-name
                                      "softwareSetUpdateStatus")
                                     (last-connected-at :target-type timestamp
                                      :member-name "lastConnectedAt")
                                     (last-posture-at :target-type timestamp
                                      :member-name "lastPostureAt")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt")
                                     (arn :target-type arn :member-name "arn")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn")
                                     (last-user-id :target-type user-id
                                      :member-name "lastUserId"))
                                    (:shape-name "Device"))

(smithy/sdk/shapes:define-type device-creation-tag-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type device-creation-tag-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map device-creation-tags-map :key
                              device-creation-tag-key :value
                              device-creation-tag-value)

(smithy/sdk/shapes:define-type device-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list device-list :member device-summary)

(smithy/sdk/shapes:define-type device-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum device-software-set-compliance-status
    common-lisp:nil
  (:none "NONE")
  (:compliant "COMPLIANT")
  (:not-compliant "NOT_COMPLIANT"))

(smithy/sdk/shapes:define-enum device-status
    common-lisp:nil
  (:registered "REGISTERED")
  (:deregistering "DEREGISTERING")
  (:deregistered "DEREGISTERED")
  (:archived "ARCHIVED"))

(smithy/sdk/shapes:define-structure device-summary common-lisp:nil
                                    ((id :target-type device-id :member-name
                                      "id")
                                     (serial-number :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "serialNumber")
                                     (name :target-type device-name
                                      :member-name "name")
                                     (model :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "model")
                                     (environment-id :target-type
                                      environment-id :member-name
                                      "environmentId")
                                     (status :target-type device-status
                                      :member-name "status")
                                     (current-software-set-id :target-type
                                      software-set-id :member-name
                                      "currentSoftwareSetId")
                                     (desired-software-set-id :target-type
                                      software-set-id :member-name
                                      "desiredSoftwareSetId")
                                     (pending-software-set-id :target-type
                                      software-set-id :member-name
                                      "pendingSoftwareSetId")
                                     (software-set-update-schedule :target-type
                                      software-set-update-schedule :member-name
                                      "softwareSetUpdateSchedule")
                                     (last-connected-at :target-type timestamp
                                      :member-name "lastConnectedAt")
                                     (last-posture-at :target-type timestamp
                                      :member-name "lastPostureAt")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt")
                                     (arn :target-type arn :member-name "arn")
                                     (last-user-id :target-type user-id
                                      :member-name "lastUserId"))
                                    (:shape-name "DeviceSummary"))

(smithy/sdk/shapes:define-structure environment common-lisp:nil
                                    ((id :target-type environment-id
                                      :member-name "id")
                                     (name :target-type environment-name
                                      :member-name "name")
                                     (desktop-arn :target-type arn :member-name
                                      "desktopArn")
                                     (desktop-endpoint :target-type
                                      desktop-endpoint :member-name
                                      "desktopEndpoint")
                                     (desktop-type :target-type desktop-type
                                      :member-name "desktopType")
                                     (activation-code :target-type
                                      activation-code :member-name
                                      "activationCode")
                                     (registered-devices-count :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "registeredDevicesCount")
                                     (software-set-update-schedule :target-type
                                      software-set-update-schedule :member-name
                                      "softwareSetUpdateSchedule")
                                     (maintenance-window :target-type
                                      maintenance-window :member-name
                                      "maintenanceWindow")
                                     (software-set-update-mode :target-type
                                      software-set-update-mode :member-name
                                      "softwareSetUpdateMode")
                                     (desired-software-set-id :target-type
                                      software-set-id :member-name
                                      "desiredSoftwareSetId")
                                     (pending-software-set-id :target-type
                                      software-set-id :member-name
                                      "pendingSoftwareSetId")
                                     (pending-software-set-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "pendingSoftwareSetVersion")
                                     (software-set-compliance-status
                                      :target-type
                                      environment-software-set-compliance-status
                                      :member-name
                                      "softwareSetComplianceStatus")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt")
                                     (arn :target-type arn :member-name "arn")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn")
                                     (device-creation-tags :target-type
                                      device-creation-tags-map :member-name
                                      "deviceCreationTags"))
                                    (:shape-name "Environment"))

(smithy/sdk/shapes:define-type environment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list environment-list :member environment-summary)

(smithy/sdk/shapes:define-type environment-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum environment-software-set-compliance-status
    common-lisp:nil
  (:no-registered-devices "NO_REGISTERED_DEVICES")
  (:compliant "COMPLIANT")
  (:not-compliant "NOT_COMPLIANT"))

(smithy/sdk/shapes:define-structure environment-summary common-lisp:nil
                                    ((id :target-type environment-id
                                      :member-name "id")
                                     (name :target-type environment-name
                                      :member-name "name")
                                     (desktop-arn :target-type arn :member-name
                                      "desktopArn")
                                     (desktop-endpoint :target-type
                                      desktop-endpoint :member-name
                                      "desktopEndpoint")
                                     (desktop-type :target-type desktop-type
                                      :member-name "desktopType")
                                     (activation-code :target-type
                                      activation-code :member-name
                                      "activationCode")
                                     (software-set-update-schedule :target-type
                                      software-set-update-schedule :member-name
                                      "softwareSetUpdateSchedule")
                                     (maintenance-window :target-type
                                      maintenance-window :member-name
                                      "maintenanceWindow")
                                     (software-set-update-mode :target-type
                                      software-set-update-mode :member-name
                                      "softwareSetUpdateMode")
                                     (desired-software-set-id :target-type
                                      software-set-id :member-name
                                      "desiredSoftwareSetId")
                                     (pending-software-set-id :target-type
                                      software-set-id :member-name
                                      "pendingSoftwareSetId")
                                     (created-at :target-type timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type timestamp
                                      :member-name "updatedAt")
                                     (arn :target-type arn :member-name "arn"))
                                    (:shape-name "EnvironmentSummary"))

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type field-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-device-request common-lisp:nil
                                ((id :target-type device-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetDeviceRequest"))

(smithy/sdk/shapes:define-output get-device-response common-lisp:nil
                                 ((device :target-type device :member-name
                                   "device"))
                                 (:shape-name "GetDeviceResponse"))

(smithy/sdk/shapes:define-input get-environment-request common-lisp:nil
                                ((id :target-type environment-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetEnvironmentRequest"))

(smithy/sdk/shapes:define-output get-environment-response common-lisp:nil
                                 ((environment :target-type environment
                                   :member-name "environment"))
                                 (:shape-name "GetEnvironmentResponse"))

(smithy/sdk/shapes:define-input get-software-set-request common-lisp:nil
                                ((id :target-type software-set-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetSoftwareSetRequest"))

(smithy/sdk/shapes:define-output get-software-set-response common-lisp:nil
                                 ((software-set :target-type software-set
                                   :member-name "softwareSet"))
                                 (:shape-name "GetSoftwareSetResponse"))

(smithy/sdk/shapes:define-type hour smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-devices-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDevicesRequest"))

(smithy/sdk/shapes:define-output list-devices-response common-lisp:nil
                                 ((devices :target-type device-list
                                   :member-name "devices")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDevicesResponse"))

(smithy/sdk/shapes:define-input list-environments-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListEnvironmentsRequest"))

(smithy/sdk/shapes:define-output list-environments-response common-lisp:nil
                                 ((environments :target-type environment-list
                                   :member-name "environments")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListEnvironmentsResponse"))

(smithy/sdk/shapes:define-input list-software-sets-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListSoftwareSetsRequest"))

(smithy/sdk/shapes:define-output list-software-sets-response common-lisp:nil
                                 ((software-sets :target-type software-set-list
                                   :member-name "softwareSets")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSoftwareSetsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure maintenance-window common-lisp:nil
                                    ((type :target-type maintenance-window-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (start-time-hour :target-type hour
                                      :member-name "startTimeHour")
                                     (start-time-minute :target-type minute
                                      :member-name "startTimeMinute")
                                     (end-time-hour :target-type hour
                                      :member-name "endTimeHour")
                                     (end-time-minute :target-type minute
                                      :member-name "endTimeMinute")
                                     (days-of-the-week :target-type
                                      day-of-week-list :member-name
                                      "daysOfTheWeek")
                                     (apply-time-of :target-type apply-time-of
                                      :member-name "applyTimeOf"))
                                    (:shape-name "MaintenanceWindow"))

(smithy/sdk/shapes:define-enum maintenance-window-type
    common-lisp:nil
  (:system "SYSTEM")
  (:custom "CUSTOM"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type minute smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type quota-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (resource-id :target-type resource-id
                                  :member-name "resourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type retry-after-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type service-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (resource-id :target-type resource-id
                                  :member-name "resourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "resourceType")
                                 (service-code :target-type service-code
                                  :member-name "serviceCode")
                                 (quota-code :target-type quota-code
                                  :member-name "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure software common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "version"))
                                    (:shape-name "Software"))

(smithy/sdk/shapes:define-list software-list :member software)

(smithy/sdk/shapes:define-structure software-set common-lisp:nil
                                    ((id :target-type software-set-id
                                      :member-name "id")
                                     (version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "version")
                                     (released-at :target-type timestamp
                                      :member-name "releasedAt")
                                     (supported-until :target-type timestamp
                                      :member-name "supportedUntil")
                                     (validation-status :target-type
                                      software-set-validation-status
                                      :member-name "validationStatus")
                                     (software :target-type software-list
                                      :member-name "software")
                                     (arn :target-type arn :member-name "arn"))
                                    (:shape-name "SoftwareSet"))

(smithy/sdk/shapes:define-type software-set-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type software-set-id-or-empty-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list software-set-list :member software-set-summary)

(smithy/sdk/shapes:define-structure software-set-summary common-lisp:nil
                                    ((id :target-type software-set-id
                                      :member-name "id")
                                     (version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "version")
                                     (released-at :target-type timestamp
                                      :member-name "releasedAt")
                                     (supported-until :target-type timestamp
                                      :member-name "supportedUntil")
                                     (validation-status :target-type
                                      software-set-validation-status
                                      :member-name "validationStatus")
                                     (arn :target-type arn :member-name "arn"))
                                    (:shape-name "SoftwareSetSummary"))

(smithy/sdk/shapes:define-enum software-set-update-mode
    common-lisp:nil
  (:use-latest "USE_LATEST")
  (:use-desired "USE_DESIRED"))

(smithy/sdk/shapes:define-enum software-set-update-schedule
    common-lisp:nil
  (:use-maintenance-window "USE_MAINTENANCE_WINDOW")
  (:apply-immediately "APPLY_IMMEDIATELY"))

(smithy/sdk/shapes:define-enum software-set-update-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:in-progress "IN_PROGRESS")
  (:up-to-date "UP_TO_DATE"))

(smithy/sdk/shapes:define-enum software-set-validation-status
    common-lisp:nil
  (:validated "VALIDATED")
  (:not-validated "NOT_VALIDATED"))

(smithy/sdk/shapes:define-list tag-keys :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-map tags-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum target-device-status
    common-lisp:nil
  (:deregistered "DEREGISTERED")
  (:archived "ARCHIVED"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (service-code :target-type service-code
                                  :member-name "serviceCode")
                                 (quota-code :target-type quota-code
                                  :member-name "quotaCode")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-device-request common-lisp:nil
                                ((id :target-type device-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (name :target-type device-name :member-name
                                  "name")
                                 (desired-software-set-id :target-type
                                  software-set-id :member-name
                                  "desiredSoftwareSetId")
                                 (software-set-update-schedule :target-type
                                  software-set-update-schedule :member-name
                                  "softwareSetUpdateSchedule"))
                                (:shape-name "UpdateDeviceRequest"))

(smithy/sdk/shapes:define-output update-device-response common-lisp:nil
                                 ((device :target-type device-summary
                                   :member-name "device"))
                                 (:shape-name "UpdateDeviceResponse"))

(smithy/sdk/shapes:define-input update-environment-request common-lisp:nil
                                ((id :target-type environment-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (name :target-type environment-name
                                  :member-name "name")
                                 (desktop-arn :target-type arn :member-name
                                  "desktopArn")
                                 (desktop-endpoint :target-type
                                  desktop-endpoint :member-name
                                  "desktopEndpoint")
                                 (software-set-update-schedule :target-type
                                  software-set-update-schedule :member-name
                                  "softwareSetUpdateSchedule")
                                 (maintenance-window :target-type
                                  maintenance-window :member-name
                                  "maintenanceWindow")
                                 (software-set-update-mode :target-type
                                  software-set-update-mode :member-name
                                  "softwareSetUpdateMode")
                                 (desired-software-set-id :target-type
                                  software-set-id-or-empty-string :member-name
                                  "desiredSoftwareSetId")
                                 (device-creation-tags :target-type
                                  device-creation-tags-map :member-name
                                  "deviceCreationTags"))
                                (:shape-name "UpdateEnvironmentRequest"))

(smithy/sdk/shapes:define-output update-environment-response common-lisp:nil
                                 ((environment :target-type environment-summary
                                   :member-name "environment"))
                                 (:shape-name "UpdateEnvironmentResponse"))

(smithy/sdk/shapes:define-input update-software-set-request common-lisp:nil
                                ((id :target-type software-set-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (validation-status :target-type
                                  software-set-validation-status :required
                                  common-lisp:t :member-name
                                  "validationStatus"))
                                (:shape-name "UpdateSoftwareSetRequest"))

(smithy/sdk/shapes:define-output update-software-set-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UpdateSoftwareSetResponse"))

(smithy/sdk/shapes:define-type user-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type field-name :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type exception-message
                                      :required common-lisp:t :member-name
                                      "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:unknown-operation "unknownOperation")
  (:cannot-parse "cannotParse")
  (:field-validation-failed "fieldValidationFailed")
  (:other "other"))

(smithy/sdk/operation:define-operation create-environment :shape-name
                                       "CreateEnvironment" :input
                                       create-environment-request :output
                                       create-environment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/environments"
                                       :code 201 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation delete-device :shape-name "DeleteDevice"
                                       :input delete-device-request :output
                                       delete-device-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/devices/{id}"
                                       :code 204 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation delete-environment :shape-name
                                       "DeleteEnvironment" :input
                                       delete-environment-request :output
                                       delete-environment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/environments/{id}" :code 204
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation deregister-device :shape-name
                                       "DeregisterDevice" :input
                                       deregister-device-request :output
                                       deregister-device-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/deregister-device/{id}" :code 202
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation get-device :shape-name "GetDevice"
                                       :input get-device-request :output
                                       get-device-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/devices/{id}" :code
                                       200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation get-environment :shape-name
                                       "GetEnvironment" :input
                                       get-environment-request :output
                                       get-environment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/environments/{id}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation get-software-set :shape-name
                                       "GetSoftwareSet" :input
                                       get-software-set-request :output
                                       get-software-set-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/softwaresets/{id}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-devices :shape-name "ListDevices"
                                       :input list-devices-request :output
                                       list-devices-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/devices" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-environments :shape-name
                                       "ListEnvironments" :input
                                       list-environments-request :output
                                       list-environments-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/environments" :code
                                       200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation list-software-sets :shape-name
                                       "ListSoftwareSets" :input
                                       list-software-sets-request :output
                                       list-software-sets-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/softwaresets" :code
                                       200 :endpoint-host-prefix "api.")

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
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}"
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}"
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation update-device :shape-name "UpdateDevice"
                                       :input update-device-request :output
                                       update-device-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri "/devices/{id}"
                                       :code 200 :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation update-environment :shape-name
                                       "UpdateEnvironment" :input
                                       update-environment-request :output
                                       update-environment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/environments/{id}" :code 200
                                       :endpoint-host-prefix "api.")

(smithy/sdk/operation:define-operation update-software-set :shape-name
                                       "UpdateSoftwareSet" :input
                                       update-software-set-request :output
                                       update-software-set-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/softwaresets/{id}" :code 204
                                       :endpoint-host-prefix "api.")
