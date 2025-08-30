(uiop/package:define-package #:pira/iot-managed-integrations (:use)
                             (:export #:abort-config-criteria
                              #:abort-config-criteria-list
                              #:abort-criteria-action
                              #:abort-criteria-failure-type
                              #:access-denied-exception
                              #:account-association-arn
                              #:account-association-description
                              #:account-association-error-message
                              #:account-association-id
                              #:account-association-item
                              #:account-association-list-definition
                              #:account-association-name
                              #:account-association-resource #:action-name
                              #:action-reference #:action-trace-id
                              #:advertised-product-id #:association-state
                              #:attribute-name #:attribute-value #:auth-config
                              #:auth-config-update #:auth-material-string
                              #:auth-material-type #:auth-type #:auth-url
                              #:base-rate-per-minute #:brand #:ca-certificate
                              #:capabilities #:capability-action
                              #:capability-action-name #:capability-actions
                              #:capability-id #:capability-name
                              #:capability-properties #:capability-report
                              #:capability-report-actions
                              #:capability-report-capabilities
                              #:capability-report-capability
                              #:capability-report-endpoint
                              #:capability-report-endpoints
                              #:capability-report-events
                              #:capability-report-properties
                              #:capability-report-version
                              #:capability-schema-item #:capability-schemas
                              #:capability-version #:claim-certificate
                              #:claim-certificate-private-key #:classification
                              #:client-token #:cloud-connector-description
                              #:cloud-connector-id #:cloud-connector-resource
                              #:cloud-connector-type #:cluster-id
                              #:command-capabilities #:command-capability
                              #:command-endpoint #:command-endpoints
                              #:configuration-error #:configuration-error-code
                              #:configuration-error-message
                              #:configuration-state #:configuration-status
                              #:conflict-exception #:connectivity-status
                              #:connectivity-timestamp
                              #:connector-association-id
                              #:connector-destination-description
                              #:connector-destination-id
                              #:connector-destination-list-definition
                              #:connector-destination-name
                              #:connector-destination-resource
                              #:connector-destination-summary
                              #:connector-device-id #:connector-device-name
                              #:connector-event-message
                              #:connector-event-operation
                              #:connector-event-operation-version
                              #:connector-event-status-code #:connector-id
                              #:connector-item #:connector-list
                              #:connector-policy-id
                              #:create-account-association
                              #:create-cloud-connector
                              #:create-connector-destination
                              #:create-credential-locker #:create-destination
                              #:create-event-log-configuration
                              #:create-managed-thing
                              #:create-notification-configuration
                              #:create-ota-task #:create-ota-task-configuration
                              #:create-provisioning-profile #:created-at
                              #:credential-locker-arn
                              #:credential-locker-created-at
                              #:credential-locker-id
                              #:credential-locker-list-definition
                              #:credential-locker-name
                              #:credential-locker-resource
                              #:credential-locker-summary
                              #:custom-protocol-detail
                              #:custom-protocol-detail-key
                              #:custom-protocol-detail-value
                              #:delete-account-association
                              #:delete-cloud-connector
                              #:delete-connector-destination
                              #:delete-credential-locker #:delete-destination
                              #:delete-event-log-configuration
                              #:delete-local-store-after-upload
                              #:delete-managed-thing
                              #:delete-notification-configuration
                              #:delete-ota-task #:delete-ota-task-configuration
                              #:delete-provisioning-profile
                              #:delivery-destination-arn
                              #:delivery-destination-role-arn
                              #:delivery-destination-type
                              #:deregister-account-association
                              #:destination-created-at
                              #:destination-description
                              #:destination-list-definition #:destination-name
                              #:destination-resource #:destination-summary
                              #:destination-updated-at #:device
                              #:device-discovery-arn #:device-discovery-id
                              #:device-discovery-list-definition
                              #:device-discovery-resource
                              #:device-discovery-status
                              #:device-discovery-summary #:device-metadata
                              #:device-specific-key #:device-type
                              #:device-type-list #:device-types #:devices
                              #:disconnect-reason-value #:discovered-at
                              #:discovered-device-list-definition
                              #:discovered-device-summary
                              #:discovery-auth-material-string
                              #:discovery-auth-material-type
                              #:discovery-finished-at #:discovery-modification
                              #:discovery-started-at #:discovery-type
                              #:display-name #:duration-in-minutes
                              #:encryption-type #:end-time #:endpoint-address
                              #:endpoint-config #:endpoint-id
                              #:endpoint-semantic-tag #:endpoint-type
                              #:error-message #:error-resource-id
                              #:error-resource-type
                              #:event-log-configuration-list-definition
                              #:event-log-configuration-resource
                              #:event-log-configuration-summary #:event-name
                              #:event-type #:execution-number
                              #:exponential-rollout-rate #:extrinsic-schema-id
                              #:get-account-association #:get-cloud-connector
                              #:get-connector-destination
                              #:get-credential-locker #:get-custom-endpoint
                              #:get-default-encryption-configuration
                              #:get-destination #:get-device-discovery
                              #:get-event-log-configuration
                              #:get-hub-configuration #:get-managed-thing
                              #:get-managed-thing-capabilities
                              #:get-managed-thing-connectivity-data
                              #:get-managed-thing-meta-data
                              #:get-managed-thing-state
                              #:get-notification-configuration #:get-ota-task
                              #:get-ota-task-configuration
                              #:get-provisioning-profile
                              #:get-runtime-log-configuration
                              #:get-schema-version #:hub-configuration-resource
                              #:hub-configuration-updated-at #:hub-network-mode
                              #:hub-token-timer-expiry-setting-in-seconds
                              #:in-progress-timeout-in-minutes
                              #:increment-factor #:internal-failure-exception
                              #:internal-server-exception
                              #:international-article-number
                              #:invalid-request-exception
                              #:io-tmanaged-integrations-resource-arn
                              #:iot-managed-integrations #:kms-key-arn
                              #:kms-key-association-resource #:lambda-arn
                              #:lambda-config #:last-updated-at
                              #:limit-exceeded-exception
                              #:list-account-associations
                              #:list-cloud-connectors
                              #:list-connector-destinations
                              #:list-credential-lockers #:list-destinations
                              #:list-device-discoveries
                              #:list-discovered-devices
                              #:list-event-log-configurations
                              #:list-managed-thing-account-associations
                              #:list-managed-thing-schemas
                              #:list-managed-things
                              #:list-notification-configurations
                              #:list-ota-task-configurations
                              #:list-ota-task-executions #:list-ota-tasks
                              #:list-provisioning-profiles
                              #:list-schema-versions #:list-tags-for-resource
                              #:local-store-file-rotation-max-bytes
                              #:local-store-file-rotation-max-files
                              #:local-store-location #:log-configuration-id
                              #:log-level #:mac-address #:managed-thing-arn
                              #:managed-thing-association
                              #:managed-thing-association-list
                              #:managed-thing-association-resource
                              #:managed-thing-command-resource
                              #:managed-thing-id
                              #:managed-thing-list-definition
                              #:managed-thing-resource
                              #:managed-thing-schema-list-definition
                              #:managed-thing-schema-list-item
                              #:managed-thing-state-resource
                              #:managed-thing-summary #:matter-attribute-id
                              #:matter-attributes #:matter-capability-report
                              #:matter-capability-report-attribute
                              #:matter-capability-report-attribute-value
                              #:matter-capability-report-attributes
                              #:matter-capability-report-cluster
                              #:matter-capability-report-cluster-revision-id
                              #:matter-capability-report-clusters
                              #:matter-capability-report-commands
                              #:matter-capability-report-endpoint
                              #:matter-capability-report-endpoint-client-clusters
                              #:matter-capability-report-endpoint-parts
                              #:matter-capability-report-endpoint-semantic-tags
                              #:matter-capability-report-endpoints
                              #:matter-capability-report-events
                              #:matter-capability-report-fabric-index
                              #:matter-capability-report-feature-map
                              #:matter-capability-report-generated-commands
                              #:matter-cluster #:matter-clusters
                              #:matter-command-id #:matter-commands
                              #:matter-endpoint #:matter-event-id
                              #:matter-events #:matter-fields #:max-results
                              #:maximum-per-minute #:meta-data
                              #:min-number-of-executed-things
                              #:min-number-of-retries #:model #:name
                              #:next-token #:node-id
                              #:notification-configuration-created-at
                              #:notification-configuration-list-definition
                              #:notification-configuration-resource
                              #:notification-configuration-summary
                              #:notification-configuration-updated-at
                              #:number-of-notified-things
                              #:number-of-succeeded-things
                              #:oauth-authorization-url
                              #:oauth-complete-redirect-url #:oauth-config
                              #:oauth-update #:ota-description #:ota-mechanism
                              #:ota-next-token #:ota-protocol #:ota-status
                              #:ota-target-query-string #:ota-task-abort-config
                              #:ota-task-arn #:ota-task-configuration-id
                              #:ota-task-configuration-list-definition
                              #:ota-task-configuration-name
                              #:ota-task-configuration-resource
                              #:ota-task-configuration-summary
                              #:ota-task-execution-retry-config
                              #:ota-task-execution-rollout-config
                              #:ota-task-execution-status
                              #:ota-task-execution-summaries
                              #:ota-task-execution-summaries-list-definition
                              #:ota-task-execution-summary #:ota-task-id
                              #:ota-task-list-definition #:ota-task-resource
                              #:ota-task-scheduling-config #:ota-task-summary
                              #:ota-task-timeout-config #:ota-type #:owner
                              #:parent-controller-id
                              #:proactive-refresh-token-renewal #:property-name
                              #:provisioning-profile-arn
                              #:provisioning-profile-id
                              #:provisioning-profile-list-definition
                              #:provisioning-profile-name
                              #:provisioning-profile-resource
                              #:provisioning-profile-summary
                              #:provisioning-status #:provisioning-type
                              #:push-config
                              #:put-default-encryption-configuration
                              #:put-hub-configuration
                              #:put-runtime-log-configuration #:queued-at
                              #:register-account-association
                              #:register-custom-endpoint
                              #:reset-runtime-log-configuration
                              #:resource-not-found-exception #:retry-attempt
                              #:retry-config-criteria
                              #:retry-config-criteria-list
                              #:retry-criteria-failure-type #:role
                              #:rollout-rate-increase-criteria
                              #:runtime-log-configuration-resource
                              #:runtime-log-configurations #:s3url
                              #:schedule-maintenance-window
                              #:schedule-maintenance-window-list
                              #:schedule-start-time
                              #:scheduling-config-end-behavior #:schema-id
                              #:schema-version-description
                              #:schema-version-format #:schema-version-list
                              #:schema-version-list-item
                              #:schema-version-namespace-name
                              #:schema-version-resource #:schema-version-schema
                              #:schema-version-type #:schema-version-version
                              #:schema-version-visibility #:schema-versioned-id
                              #:secrets-manager #:secrets-manager-arn
                              #:secrets-manager-version-id
                              #:send-connector-event
                              #:send-managed-thing-command #:serial-number
                              #:service-quota-exceeded-exception
                              #:service-unavailable-exception #:setup-at
                              #:smart-home-resource-id
                              #:smart-home-resource-type #:spec-version
                              #:start-account-association-refresh
                              #:start-device-discovery #:start-time
                              #:started-at #:state-capabilities
                              #:state-capability #:state-endpoint
                              #:state-endpoints #:tag-key #:tag-key-list
                              #:tag-resource #:tag-value #:tags-map #:target
                              #:task-processing-details #:third-party-user-id
                              #:threshold-percentage #:throttling-exception
                              #:token-endpoint-authentication-scheme
                              #:token-url #:trace-id #:unauthorized-exception
                              #:universal-product-code #:untag-resource
                              #:update-account-association
                              #:update-cloud-connector
                              #:update-connector-destination
                              #:update-destination
                              #:update-event-log-configuration
                              #:update-managed-thing
                              #:update-notification-configuration
                              #:update-ota-task #:updated-at #:upload-log
                              #:upload-period-minutes #:validation-exception
                              #:validation-schema
                              #:iot-managed-integrations-error))
(common-lisp:in-package #:pira/iot-managed-integrations)

(common-lisp:define-condition iot-managed-integrations-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service iot-managed-integrations :shape-name
                                   "IotManagedIntegrations" :version
                                   "2025-03-03" :title
                                   "Managed integrations for AWS IoT Device Management"
                                   :operations
                                   '(get-custom-endpoint list-tags-for-resource
                                     register-custom-endpoint
                                     send-connector-event tag-resource
                                     untag-resource)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "IoT Managed Integrations")
                                      ("arnNamespace"
                                       . "iotmanagedintegrations")
                                      ("endpointPrefix"
                                       . "api.iotmanagedintegrations"))
                                     ("aws.auth#sigv4"
                                      ("name" . "iotmanagedintegrations"))
                                     ("aws.endpoints#dualStackOnlyEndpoints")
                                     ("aws.endpoints#standardRegionalEndpoints")
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure abort-config-criteria common-lisp:nil
                                    ((action :target-type abort-criteria-action
                                      :member-name "Action")
                                     (failure-type :target-type
                                      abort-criteria-failure-type :member-name
                                      "FailureType")
                                     (min-number-of-executed-things
                                      :target-type
                                      min-number-of-executed-things
                                      :member-name "MinNumberOfExecutedThings")
                                     (threshold-percentage :target-type
                                      threshold-percentage :member-name
                                      "ThresholdPercentage"))
                                    (:shape-name "AbortConfigCriteria"))

(smithy/sdk/shapes:define-list abort-config-criteria-list :member
                               abort-config-criteria)

(smithy/sdk/shapes:define-enum abort-criteria-action
    common-lisp:nil
  (:cancel "CANCEL"))

(smithy/sdk/shapes:define-enum abort-criteria-failure-type
    common-lisp:nil
  (:failed "FAILED")
  (:rejected "REJECTED")
  (:timed-out "TIMED_OUT")
  (:all "ALL"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class iot-managed-integrations-error))

(smithy/sdk/shapes:define-type account-association-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-association-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-association-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-association-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure account-association-item common-lisp:nil
                                    ((account-association-id :target-type
                                      account-association-id :required
                                      common-lisp:t :member-name
                                      "AccountAssociationId")
                                     (association-state :target-type
                                      association-state :required common-lisp:t
                                      :member-name "AssociationState")
                                     (error-message :target-type
                                      account-association-error-message
                                      :member-name "ErrorMessage")
                                     (connector-destination-id :target-type
                                      connector-destination-id :member-name
                                      "ConnectorDestinationId")
                                     (name :target-type
                                      account-association-name :member-name
                                      "Name")
                                     (description :target-type
                                      account-association-description
                                      :member-name "Description")
                                     (arn :target-type account-association-arn
                                      :member-name "Arn"))
                                    (:shape-name "AccountAssociationItem"))

(smithy/sdk/shapes:define-list account-association-list-definition :member
                               account-association-item)

(smithy/sdk/shapes:define-type account-association-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type action-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type action-reference smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type action-trace-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type advertised-product-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum association-state
    common-lisp:nil
  (:association-in-progress "ASSOCIATION_IN_PROGRESS")
  (:association-failed "ASSOCIATION_FAILED")
  (:association-succeeded "ASSOCIATION_SUCCEEDED")
  (:association-deleting "ASSOCIATION_DELETING")
  (:refresh-token-expired "REFRESH_TOKEN_EXPIRED"))

(smithy/sdk/shapes:define-type attribute-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure auth-config common-lisp:nil
                                    ((o-auth :target-type oauth-config
                                      :member-name "oAuth"))
                                    (:shape-name "AuthConfig"))

(smithy/sdk/shapes:define-structure auth-config-update common-lisp:nil
                                    ((o-auth-update :target-type oauth-update
                                      :member-name "oAuthUpdate"))
                                    (:shape-name "AuthConfigUpdate"))

(smithy/sdk/shapes:define-type auth-material-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum auth-material-type
    common-lisp:nil
  (:custom-protocol-qr-bar-code "CUSTOM_PROTOCOL_QR_BAR_CODE")
  (:wifi-setup-qr-bar-code "WIFI_SETUP_QR_BAR_CODE")
  (:zwave-qr-bar-code "ZWAVE_QR_BAR_CODE")
  (:zigbee-qr-bar-code "ZIGBEE_QR_BAR_CODE")
  (:discovered-device "DISCOVERED_DEVICE"))

(smithy/sdk/shapes:define-enum auth-type
    common-lisp:nil
  (:oauth "OAUTH"))

(smithy/sdk/shapes:define-type auth-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type base-rate-per-minute
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type brand smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ca-certificate smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type capabilities smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure capability-action common-lisp:nil
                                    ((name :target-type capability-action-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (ref :target-type action-reference
                                      :member-name "ref")
                                     (action-trace-id :target-type
                                      action-trace-id :member-name
                                      "actionTraceId")
                                     (parameters :target-type
                                      capability-properties :member-name
                                      "parameters"))
                                    (:shape-name "CapabilityAction"))

(smithy/sdk/shapes:define-type capability-action-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list capability-actions :member capability-action)

(smithy/sdk/shapes:define-type capability-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type capability-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type capability-properties
                               smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-structure capability-report common-lisp:nil
                                    ((version :target-type
                                      capability-report-version :required
                                      common-lisp:t :member-name "version")
                                     (node-id :target-type node-id :member-name
                                      "nodeId")
                                     (endpoints :target-type
                                      capability-report-endpoints :required
                                      common-lisp:t :member-name "endpoints"))
                                    (:shape-name "CapabilityReport"))

(smithy/sdk/shapes:define-list capability-report-actions :member action-name)

(smithy/sdk/shapes:define-list capability-report-capabilities :member
                               capability-report-capability)

(smithy/sdk/shapes:define-structure capability-report-capability
                                    common-lisp:nil
                                    ((id :target-type schema-versioned-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (name :target-type capability-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (version :target-type capability-version
                                      :required common-lisp:t :member-name
                                      "version")
                                     (properties :target-type
                                      capability-report-properties :required
                                      common-lisp:t :member-name "properties")
                                     (actions :target-type
                                      capability-report-actions :required
                                      common-lisp:t :member-name "actions")
                                     (events :target-type
                                      capability-report-events :required
                                      common-lisp:t :member-name "events"))
                                    (:shape-name "CapabilityReportCapability"))

(smithy/sdk/shapes:define-structure capability-report-endpoint common-lisp:nil
                                    ((id :target-type endpoint-id :required
                                      common-lisp:t :member-name "id")
                                     (device-types :target-type device-types
                                      :required common-lisp:t :member-name
                                      "deviceTypes")
                                     (capabilities :target-type
                                      capability-report-capabilities :required
                                      common-lisp:t :member-name
                                      "capabilities"))
                                    (:shape-name "CapabilityReportEndpoint"))

(smithy/sdk/shapes:define-list capability-report-endpoints :member
                               capability-report-endpoint)

(smithy/sdk/shapes:define-list capability-report-events :member event-name)

(smithy/sdk/shapes:define-list capability-report-properties :member
                               property-name)

(smithy/sdk/shapes:define-type capability-report-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure capability-schema-item common-lisp:nil
                                    ((format :target-type schema-version-format
                                      :required common-lisp:t :member-name
                                      "Format")
                                     (capability-id :target-type
                                      schema-versioned-id :required
                                      common-lisp:t :member-name
                                      "CapabilityId")
                                     (extrinsic-id :target-type
                                      extrinsic-schema-id :required
                                      common-lisp:t :member-name "ExtrinsicId")
                                     (extrinsic-version :target-type
                                      matter-capability-report-cluster-revision-id
                                      :required common-lisp:t :member-name
                                      "ExtrinsicVersion")
                                     (schema :target-type validation-schema
                                      :required common-lisp:t :member-name
                                      "Schema"))
                                    (:shape-name "CapabilitySchemaItem"))

(smithy/sdk/shapes:define-list capability-schemas :member
                               capability-schema-item)

(smithy/sdk/shapes:define-type capability-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type claim-certificate smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type claim-certificate-private-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type classification smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cloud-connector-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cloud-connector-id
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum cloud-connector-type
    common-lisp:nil
  (:listed "LISTED")
  (:unlisted "UNLISTED"))

(smithy/sdk/shapes:define-type cluster-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list command-capabilities :member command-capability)

(smithy/sdk/shapes:define-structure command-capability common-lisp:nil
                                    ((id :target-type schema-versioned-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (name :target-type capability-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (version :target-type capability-version
                                      :required common-lisp:t :member-name
                                      "version")
                                     (actions :target-type capability-actions
                                      :required common-lisp:t :member-name
                                      "actions"))
                                    (:shape-name "CommandCapability"))

(smithy/sdk/shapes:define-structure command-endpoint common-lisp:nil
                                    ((endpoint-id :target-type endpoint-id
                                      :required common-lisp:t :member-name
                                      "endpointId")
                                     (capabilities :target-type
                                      command-capabilities :required
                                      common-lisp:t :member-name
                                      "capabilities"))
                                    (:shape-name "CommandEndpoint"))

(smithy/sdk/shapes:define-list command-endpoints :member command-endpoint)

(smithy/sdk/shapes:define-structure configuration-error common-lisp:nil
                                    ((code :target-type
                                      configuration-error-code :member-name
                                      "code")
                                     (message :target-type
                                      configuration-error-message :member-name
                                      "message"))
                                    (:shape-name "ConfigurationError"))

(smithy/sdk/shapes:define-type configuration-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type configuration-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum configuration-state
    common-lisp:nil
  (:enabled "ENABLED")
  (:update-in-progress "UPDATE_IN_PROGRESS")
  (:update-failed "UPDATE_FAILED"))

(smithy/sdk/shapes:define-structure configuration-status common-lisp:nil
                                    ((error :target-type configuration-error
                                      :member-name "error")
                                     (state :target-type configuration-state
                                      :required common-lisp:t :member-name
                                      "state"))
                                    (:shape-name "ConfigurationStatus"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class iot-managed-integrations-error))

(smithy/sdk/shapes:define-type connectivity-status
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type connectivity-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type connector-association-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type connector-destination-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type connector-destination-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list connector-destination-list-definition :member
                               connector-destination-summary)

(smithy/sdk/shapes:define-type connector-destination-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure connector-destination-summary
                                    common-lisp:nil
                                    ((name :target-type
                                      connector-destination-name :member-name
                                      "Name")
                                     (description :target-type
                                      connector-destination-description
                                      :member-name "Description")
                                     (cloud-connector-id :target-type
                                      cloud-connector-id :member-name
                                      "CloudConnectorId")
                                     (id :target-type connector-destination-id
                                      :member-name "Id"))
                                    (:shape-name "ConnectorDestinationSummary"))

(smithy/sdk/shapes:define-type connector-device-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type connector-device-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type connector-event-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum connector-event-operation
    common-lisp:nil
  (:device-command-response "DEVICE_COMMAND_RESPONSE")
  (:device-discovery "DEVICE_DISCOVERY")
  (:device-event "DEVICE_EVENT")
  (:device-command-request "DEVICE_COMMAND_REQUEST"))

(smithy/sdk/shapes:define-type connector-event-operation-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type connector-event-status-code
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type connector-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure connector-item common-lisp:nil
                                    ((name :target-type display-name :required
                                      common-lisp:t :member-name "Name")
                                     (endpoint-config :target-type
                                      endpoint-config :required common-lisp:t
                                      :member-name "EndpointConfig")
                                     (description :target-type
                                      cloud-connector-description :member-name
                                      "Description")
                                     (endpoint-type :target-type endpoint-type
                                      :member-name "EndpointType")
                                     (id :target-type cloud-connector-id
                                      :member-name "Id")
                                     (type :target-type cloud-connector-type
                                      :member-name "Type"))
                                    (:shape-name "ConnectorItem"))

(smithy/sdk/shapes:define-list connector-list :member connector-item)

(smithy/sdk/shapes:define-type connector-policy-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-account-association-request
                                common-lisp:nil
                                ((client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (connector-destination-id :target-type
                                  connector-destination-id :required
                                  common-lisp:t :member-name
                                  "ConnectorDestinationId")
                                 (name :target-type account-association-name
                                  :member-name "Name")
                                 (description :target-type
                                  account-association-description :member-name
                                  "Description")
                                 (tags :target-type tags-map :member-name
                                  "Tags"))
                                (:shape-name "CreateAccountAssociationRequest"))

(smithy/sdk/shapes:define-output create-account-association-response
                                 common-lisp:nil
                                 ((oauth-authorization-url :target-type
                                   oauth-authorization-url :required
                                   common-lisp:t :member-name
                                   "OAuthAuthorizationUrl")
                                  (account-association-id :target-type
                                   account-association-id :required
                                   common-lisp:t :member-name
                                   "AccountAssociationId")
                                  (association-state :target-type
                                   association-state :required common-lisp:t
                                   :member-name "AssociationState")
                                  (arn :target-type account-association-arn
                                   :member-name "Arn"))
                                 (:shape-name
                                  "CreateAccountAssociationResponse"))

(smithy/sdk/shapes:define-input create-cloud-connector-request common-lisp:nil
                                ((name :target-type display-name :required
                                  common-lisp:t :member-name "Name")
                                 (endpoint-config :target-type endpoint-config
                                  :required common-lisp:t :member-name
                                  "EndpointConfig")
                                 (description :target-type
                                  cloud-connector-description :member-name
                                  "Description")
                                 (endpoint-type :target-type endpoint-type
                                  :member-name "EndpointType")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name "CreateCloudConnectorRequest"))

(smithy/sdk/shapes:define-output create-cloud-connector-response
                                 common-lisp:nil
                                 ((id :target-type cloud-connector-id
                                   :member-name "Id"))
                                 (:shape-name "CreateCloudConnectorResponse"))

(smithy/sdk/shapes:define-input create-connector-destination-request
                                common-lisp:nil
                                ((name :target-type connector-destination-name
                                  :member-name "Name")
                                 (description :target-type
                                  connector-destination-description
                                  :member-name "Description")
                                 (cloud-connector-id :target-type
                                  cloud-connector-id :required common-lisp:t
                                  :member-name "CloudConnectorId")
                                 (auth-type :target-type auth-type :required
                                  common-lisp:t :member-name "AuthType")
                                 (auth-config :target-type auth-config
                                  :required common-lisp:t :member-name
                                  "AuthConfig")
                                 (secrets-manager :target-type secrets-manager
                                  :required common-lisp:t :member-name
                                  "SecretsManager")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name
                                 "CreateConnectorDestinationRequest"))

(smithy/sdk/shapes:define-output create-connector-destination-response
                                 common-lisp:nil
                                 ((id :target-type connector-destination-id
                                   :member-name "Id"))
                                 (:shape-name
                                  "CreateConnectorDestinationResponse"))

(smithy/sdk/shapes:define-input create-credential-locker-request
                                common-lisp:nil
                                ((name :target-type credential-locker-name
                                  :member-name "Name")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (tags :target-type tags-map :member-name
                                  "Tags"))
                                (:shape-name "CreateCredentialLockerRequest"))

(smithy/sdk/shapes:define-output create-credential-locker-response
                                 common-lisp:nil
                                 ((id :target-type credential-locker-id
                                   :member-name "Id")
                                  (arn :target-type credential-locker-arn
                                   :member-name "Arn")
                                  (created-at :target-type
                                   credential-locker-created-at :member-name
                                   "CreatedAt"))
                                 (:shape-name "CreateCredentialLockerResponse"))

(smithy/sdk/shapes:define-input create-destination-request common-lisp:nil
                                ((delivery-destination-arn :target-type
                                  delivery-destination-arn :required
                                  common-lisp:t :member-name
                                  "DeliveryDestinationArn")
                                 (delivery-destination-type :target-type
                                  delivery-destination-type :required
                                  common-lisp:t :member-name
                                  "DeliveryDestinationType")
                                 (name :target-type destination-name :required
                                  common-lisp:t :member-name "Name")
                                 (role-arn :target-type
                                  delivery-destination-role-arn :required
                                  common-lisp:t :member-name "RoleArn")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (description :target-type
                                  destination-description :member-name
                                  "Description")
                                 (tags :target-type tags-map :member-name
                                  "Tags"))
                                (:shape-name "CreateDestinationRequest"))

(smithy/sdk/shapes:define-output create-destination-response common-lisp:nil
                                 ((name :target-type destination-name
                                   :member-name "Name"))
                                 (:shape-name "CreateDestinationResponse"))

(smithy/sdk/shapes:define-input create-event-log-configuration-request
                                common-lisp:nil
                                ((resource-type :target-type
                                  smart-home-resource-type :required
                                  common-lisp:t :member-name "ResourceType")
                                 (resource-id :target-type
                                  smart-home-resource-id :member-name
                                  "ResourceId")
                                 (event-log-level :target-type log-level
                                  :required common-lisp:t :member-name
                                  "EventLogLevel")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name
                                 "CreateEventLogConfigurationRequest"))

(smithy/sdk/shapes:define-output create-event-log-configuration-response
                                 common-lisp:nil
                                 ((id :target-type log-configuration-id
                                   :member-name "Id"))
                                 (:shape-name
                                  "CreateEventLogConfigurationResponse"))

(smithy/sdk/shapes:define-input create-managed-thing-request common-lisp:nil
                                ((role :target-type role :required
                                  common-lisp:t :member-name "Role")
                                 (owner :target-type owner :member-name
                                  "Owner")
                                 (credential-locker-id :target-type
                                  credential-locker-id :member-name
                                  "CredentialLockerId")
                                 (authentication-material :target-type
                                  auth-material-string :required common-lisp:t
                                  :member-name "AuthenticationMaterial")
                                 (authentication-material-type :target-type
                                  auth-material-type :required common-lisp:t
                                  :member-name "AuthenticationMaterialType")
                                 (serial-number :target-type serial-number
                                  :member-name "SerialNumber")
                                 (brand :target-type brand :member-name
                                  "Brand")
                                 (model :target-type model :member-name
                                  "Model")
                                 (name :target-type name :member-name "Name")
                                 (capability-report :target-type
                                  capability-report :member-name
                                  "CapabilityReport")
                                 (capability-schemas :target-type
                                  capability-schemas :member-name
                                  "CapabilitySchemas")
                                 (capabilities :target-type capabilities
                                  :member-name "Capabilities")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (classification :target-type classification
                                  :member-name "Classification")
                                 (tags :target-type tags-map :member-name
                                  "Tags")
                                 (meta-data :target-type meta-data :member-name
                                  "MetaData"))
                                (:shape-name "CreateManagedThingRequest"))

(smithy/sdk/shapes:define-output create-managed-thing-response common-lisp:nil
                                 ((id :target-type managed-thing-id
                                   :member-name "Id")
                                  (arn :target-type managed-thing-arn
                                   :member-name "Arn")
                                  (created-at :target-type created-at
                                   :member-name "CreatedAt"))
                                 (:shape-name "CreateManagedThingResponse"))

(smithy/sdk/shapes:define-input create-notification-configuration-request
                                common-lisp:nil
                                ((event-type :target-type event-type :required
                                  common-lisp:t :member-name "EventType")
                                 (destination-name :target-type
                                  destination-name :required common-lisp:t
                                  :member-name "DestinationName")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (tags :target-type tags-map :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateNotificationConfigurationRequest"))

(smithy/sdk/shapes:define-output create-notification-configuration-response
                                 common-lisp:nil
                                 ((event-type :target-type event-type
                                   :member-name "EventType"))
                                 (:shape-name
                                  "CreateNotificationConfigurationResponse"))

(smithy/sdk/shapes:define-input create-ota-task-configuration-request
                                common-lisp:nil
                                ((description :target-type ota-description
                                  :member-name "Description")
                                 (name :target-type ota-task-configuration-name
                                  :member-name "Name")
                                 (push-config :target-type push-config
                                  :member-name "PushConfig")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken"))
                                (:shape-name
                                 "CreateOtaTaskConfigurationRequest"))

(smithy/sdk/shapes:define-output create-ota-task-configuration-response
                                 common-lisp:nil
                                 ((task-configuration-id :target-type
                                   ota-task-configuration-id :member-name
                                   "TaskConfigurationId"))
                                 (:shape-name
                                  "CreateOtaTaskConfigurationResponse"))

(smithy/sdk/shapes:define-input create-ota-task-request common-lisp:nil
                                ((description :target-type ota-description
                                  :member-name "Description")
                                 (s3url :target-type s3url :required
                                  common-lisp:t :member-name "S3Url")
                                 (protocol :target-type ota-protocol
                                  :member-name "Protocol")
                                 (target :target-type target :member-name
                                  "Target")
                                 (task-configuration-id :target-type
                                  ota-task-configuration-id :member-name
                                  "TaskConfigurationId")
                                 (ota-mechanism :target-type ota-mechanism
                                  :member-name "OtaMechanism")
                                 (ota-type :target-type ota-type :required
                                  common-lisp:t :member-name "OtaType")
                                 (ota-target-query-string :target-type
                                  ota-target-query-string :member-name
                                  "OtaTargetQueryString")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (ota-scheduling-config :target-type
                                  ota-task-scheduling-config :member-name
                                  "OtaSchedulingConfig")
                                 (ota-task-execution-retry-config :target-type
                                  ota-task-execution-retry-config :member-name
                                  "OtaTaskExecutionRetryConfig")
                                 (tags :target-type tags-map :member-name
                                  "Tags"))
                                (:shape-name "CreateOtaTaskRequest"))

(smithy/sdk/shapes:define-output create-ota-task-response common-lisp:nil
                                 ((task-id :target-type ota-task-id
                                   :member-name "TaskId")
                                  (task-arn :target-type ota-task-arn
                                   :member-name "TaskArn")
                                  (description :target-type ota-description
                                   :member-name "Description"))
                                 (:shape-name "CreateOtaTaskResponse"))

(smithy/sdk/shapes:define-input create-provisioning-profile-request
                                common-lisp:nil
                                ((provisioning-type :target-type
                                  provisioning-type :required common-lisp:t
                                  :member-name "ProvisioningType")
                                 (ca-certificate :target-type ca-certificate
                                  :member-name "CaCertificate")
                                 (name :target-type provisioning-profile-name
                                  :member-name "Name")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (tags :target-type tags-map :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateProvisioningProfileRequest"))

(smithy/sdk/shapes:define-output create-provisioning-profile-response
                                 common-lisp:nil
                                 ((arn :target-type provisioning-profile-arn
                                   :member-name "Arn")
                                  (name :target-type provisioning-profile-name
                                   :member-name "Name")
                                  (provisioning-type :target-type
                                   provisioning-type :member-name
                                   "ProvisioningType")
                                  (id :target-type provisioning-profile-id
                                   :member-name "Id")
                                  (claim-certificate :target-type
                                   claim-certificate :member-name
                                   "ClaimCertificate")
                                  (claim-certificate-private-key :target-type
                                   claim-certificate-private-key :member-name
                                   "ClaimCertificatePrivateKey"))
                                 (:shape-name
                                  "CreateProvisioningProfileResponse"))

(smithy/sdk/shapes:define-type created-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type credential-locker-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type credential-locker-created-at
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type credential-locker-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list credential-locker-list-definition :member
                               credential-locker-summary)

(smithy/sdk/shapes:define-type credential-locker-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure credential-locker-summary common-lisp:nil
                                    ((id :target-type credential-locker-id
                                      :member-name "Id")
                                     (arn :target-type credential-locker-arn
                                      :member-name "Arn")
                                     (name :target-type credential-locker-name
                                      :member-name "Name")
                                     (created-at :target-type
                                      credential-locker-created-at :member-name
                                      "CreatedAt"))
                                    (:shape-name "CredentialLockerSummary"))

(smithy/sdk/shapes:define-map custom-protocol-detail :key
                              custom-protocol-detail-key :value
                              custom-protocol-detail-value)

(smithy/sdk/shapes:define-type custom-protocol-detail-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-protocol-detail-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-account-association-request
                                common-lisp:nil
                                ((account-association-id :target-type
                                  account-association-id :required
                                  common-lisp:t :member-name
                                  "AccountAssociationId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteAccountAssociationRequest"))

(smithy/sdk/shapes:define-input delete-cloud-connector-request common-lisp:nil
                                ((identifier :target-type cloud-connector-id
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t))
                                (:shape-name "DeleteCloudConnectorRequest"))

(smithy/sdk/shapes:define-input delete-connector-destination-request
                                common-lisp:nil
                                ((identifier :target-type
                                  connector-destination-id :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteConnectorDestinationRequest"))

(smithy/sdk/shapes:define-input delete-credential-locker-request
                                common-lisp:nil
                                ((identifier :target-type credential-locker-id
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t))
                                (:shape-name "DeleteCredentialLockerRequest"))

(smithy/sdk/shapes:define-input delete-destination-request common-lisp:nil
                                ((name :target-type destination-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteDestinationRequest"))

(smithy/sdk/shapes:define-input delete-event-log-configuration-request
                                common-lisp:nil
                                ((id :target-type log-configuration-id
                                  :required common-lisp:t :member-name "Id"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteEventLogConfigurationRequest"))

(smithy/sdk/shapes:define-type delete-local-store-after-upload
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input delete-managed-thing-request common-lisp:nil
                                ((identifier :target-type managed-thing-id
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t)
                                 (force :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "Force" :http-query "Force"))
                                (:shape-name "DeleteManagedThingRequest"))

(smithy/sdk/shapes:define-input delete-notification-configuration-request
                                common-lisp:nil
                                ((event-type :target-type event-type :required
                                  common-lisp:t :member-name "EventType"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteNotificationConfigurationRequest"))

(smithy/sdk/shapes:define-input delete-ota-task-configuration-request
                                common-lisp:nil
                                ((identifier :target-type
                                  ota-task-configuration-id :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteOtaTaskConfigurationRequest"))

(smithy/sdk/shapes:define-input delete-ota-task-request common-lisp:nil
                                ((identifier :target-type ota-task-id :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteOtaTaskRequest"))

(smithy/sdk/shapes:define-input delete-provisioning-profile-request
                                common-lisp:nil
                                ((identifier :target-type
                                  provisioning-profile-id :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteProvisioningProfileRequest"))

(smithy/sdk/shapes:define-type delivery-destination-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type delivery-destination-role-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum delivery-destination-type
    common-lisp:nil
  (:kinesis "KINESIS"))

(smithy/sdk/shapes:define-input deregister-account-association-request
                                common-lisp:nil
                                ((managed-thing-id :target-type
                                  managed-thing-id :required common-lisp:t
                                  :member-name "ManagedThingId")
                                 (account-association-id :target-type
                                  account-association-id :required
                                  common-lisp:t :member-name
                                  "AccountAssociationId"))
                                (:shape-name
                                 "DeregisterAccountAssociationRequest"))

(smithy/sdk/shapes:define-type destination-created-at
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type destination-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list destination-list-definition :member
                               destination-summary)

(smithy/sdk/shapes:define-type destination-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure destination-summary common-lisp:nil
                                    ((description :target-type
                                      destination-description :member-name
                                      "Description")
                                     (delivery-destination-arn :target-type
                                      delivery-destination-arn :member-name
                                      "DeliveryDestinationArn")
                                     (delivery-destination-type :target-type
                                      delivery-destination-type :member-name
                                      "DeliveryDestinationType")
                                     (name :target-type destination-name
                                      :member-name "Name")
                                     (role-arn :target-type
                                      delivery-destination-role-arn
                                      :member-name "RoleArn"))
                                    (:shape-name "DestinationSummary"))

(smithy/sdk/shapes:define-type destination-updated-at
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure device common-lisp:nil
                                    ((connector-device-id :target-type
                                      connector-device-id :required
                                      common-lisp:t :member-name
                                      "ConnectorDeviceId")
                                     (connector-device-name :target-type
                                      connector-device-name :member-name
                                      "ConnectorDeviceName")
                                     (capability-report :target-type
                                      matter-capability-report :required
                                      common-lisp:t :member-name
                                      "CapabilityReport")
                                     (capability-schemas :target-type
                                      capability-schemas :member-name
                                      "CapabilitySchemas")
                                     (device-metadata :target-type
                                      device-metadata :member-name
                                      "DeviceMetadata"))
                                    (:shape-name "Device"))

(smithy/sdk/shapes:define-type device-discovery-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type device-discovery-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list device-discovery-list-definition :member
                               device-discovery-summary)

common-lisp:nil

(smithy/sdk/shapes:define-enum device-discovery-status
    common-lisp:nil
  (:running "RUNNING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:timed-out "TIMED_OUT"))

(smithy/sdk/shapes:define-structure device-discovery-summary common-lisp:nil
                                    ((id :target-type device-discovery-id
                                      :member-name "Id")
                                     (discovery-type :target-type
                                      discovery-type :member-name
                                      "DiscoveryType")
                                     (status :target-type
                                      device-discovery-status :member-name
                                      "Status"))
                                    (:shape-name "DeviceDiscoverySummary"))

(smithy/sdk/shapes:define-type device-metadata smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-type device-specific-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type device-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list device-type-list :member device-type)

(smithy/sdk/shapes:define-list device-types :member device-type)

(smithy/sdk/shapes:define-list devices :member device)

(smithy/sdk/shapes:define-enum disconnect-reason-value
    common-lisp:nil
  (:auth-error "AUTH_ERROR")
  (:client-initiated-disconnect "CLIENT_INITIATED_DISCONNECT")
  (:client-error "CLIENT_ERROR")
  (:connection-lost "CONNECTION_LOST")
  (:duplicate-clientid "DUPLICATE_CLIENTID")
  (:forbidden-access "FORBIDDEN_ACCESS")
  (:mqtt-keep-alive-timeout "MQTT_KEEP_ALIVE_TIMEOUT")
  (:server-error "SERVER_ERROR")
  (:server-initiated-disconnect "SERVER_INITIATED_DISCONNECT")
  (:throttled "THROTTLED")
  (:websocket-ttl-expiration "WEBSOCKET_TTL_EXPIRATION")
  (:customauth-ttl-expiration "CUSTOMAUTH_TTL_EXPIRATION")
  (:unknown "UNKNOWN")
  (:none "NONE"))

(smithy/sdk/shapes:define-type discovered-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list discovered-device-list-definition :member
                               discovered-device-summary)

(smithy/sdk/shapes:define-structure discovered-device-summary common-lisp:nil
                                    ((connector-device-id :target-type
                                      connector-device-id :member-name
                                      "ConnectorDeviceId")
                                     (connector-device-name :target-type
                                      connector-device-name :member-name
                                      "ConnectorDeviceName")
                                     (device-types :target-type
                                      device-type-list :member-name
                                      "DeviceTypes")
                                     (managed-thing-id :target-type
                                      managed-thing-id :member-name
                                      "ManagedThingId")
                                     (modification :target-type
                                      discovery-modification :member-name
                                      "Modification")
                                     (discovered-at :target-type discovered-at
                                      :member-name "DiscoveredAt")
                                     (brand :target-type brand :member-name
                                      "Brand")
                                     (model :target-type model :member-name
                                      "Model")
                                     (authentication-material :target-type
                                      auth-material-string :member-name
                                      "AuthenticationMaterial"))
                                    (:shape-name "DiscoveredDeviceSummary"))

(smithy/sdk/shapes:define-type discovery-auth-material-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum discovery-auth-material-type
    common-lisp:nil
  (:zwave-install-code "ZWAVE_INSTALL_CODE"))

(smithy/sdk/shapes:define-type discovery-finished-at
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum discovery-modification
    common-lisp:nil
  (:discovered "DISCOVERED")
  (:updated "UPDATED")
  (:no-change "NO_CHANGE"))

(smithy/sdk/shapes:define-type discovery-started-at
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum discovery-type
    common-lisp:nil
  (:zwave "ZWAVE")
  (:zigbee "ZIGBEE")
  (:cloud "CLOUD")
  (:custom "CUSTOM"))

(smithy/sdk/shapes:define-type display-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type duration-in-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum encryption-type
    common-lisp:nil
  (:managed-integrations-default-encryption
   "MANAGED_INTEGRATIONS_DEFAULT_ENCRYPTION")
  (:customer-key-encryption "CUSTOMER_KEY_ENCRYPTION"))

(smithy/sdk/shapes:define-type end-time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type endpoint-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure endpoint-config common-lisp:nil
                                    ((lambda :target-type lambda-config
                                      :member-name "lambda"))
                                    (:shape-name "EndpointConfig"))

(smithy/sdk/shapes:define-type endpoint-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type endpoint-semantic-tag
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum endpoint-type
    common-lisp:nil
  (:lambda "LAMBDA"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list event-log-configuration-list-definition :member
                               event-log-configuration-summary)

common-lisp:nil

(smithy/sdk/shapes:define-structure event-log-configuration-summary
                                    common-lisp:nil
                                    ((id :target-type log-configuration-id
                                      :member-name "Id")
                                     (resource-type :target-type
                                      smart-home-resource-type :member-name
                                      "ResourceType")
                                     (resource-id :target-type
                                      smart-home-resource-id :member-name
                                      "ResourceId")
                                     (event-log-level :target-type log-level
                                      :member-name "EventLogLevel"))
                                    (:shape-name
                                     "EventLogConfigurationSummary"))

(smithy/sdk/shapes:define-type event-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum event-type
    common-lisp:nil
  (:device-command "DEVICE_COMMAND")
  (:device-command-request "DEVICE_COMMAND_REQUEST")
  (:device-discovery-status "DEVICE_DISCOVERY_STATUS")
  (:device-event "DEVICE_EVENT")
  (:device-life-cycle "DEVICE_LIFE_CYCLE")
  (:device-state "DEVICE_STATE")
  (:device-ota "DEVICE_OTA")
  (:connector-association "CONNECTOR_ASSOCIATION")
  (:account-association "ACCOUNT_ASSOCIATION")
  (:connector-error-report "CONNECTOR_ERROR_REPORT"))

(smithy/sdk/shapes:define-type execution-number smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure exponential-rollout-rate common-lisp:nil
                                    ((base-rate-per-minute :target-type
                                      base-rate-per-minute :member-name
                                      "BaseRatePerMinute")
                                     (increment-factor :target-type
                                      increment-factor :member-name
                                      "IncrementFactor")
                                     (rate-increase-criteria :target-type
                                      rollout-rate-increase-criteria
                                      :member-name "RateIncreaseCriteria"))
                                    (:shape-name "ExponentialRolloutRate"))

(smithy/sdk/shapes:define-type extrinsic-schema-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-account-association-request common-lisp:nil
                                ((account-association-id :target-type
                                  account-association-id :required
                                  common-lisp:t :member-name
                                  "AccountAssociationId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetAccountAssociationRequest"))

(smithy/sdk/shapes:define-output get-account-association-response
                                 common-lisp:nil
                                 ((account-association-id :target-type
                                   account-association-id :required
                                   common-lisp:t :member-name
                                   "AccountAssociationId")
                                  (association-state :target-type
                                   association-state :required common-lisp:t
                                   :member-name "AssociationState")
                                  (error-message :target-type
                                   account-association-error-message
                                   :member-name "ErrorMessage")
                                  (connector-destination-id :target-type
                                   connector-destination-id :member-name
                                   "ConnectorDestinationId")
                                  (name :target-type account-association-name
                                   :member-name "Name")
                                  (description :target-type
                                   account-association-description :member-name
                                   "Description")
                                  (arn :target-type account-association-arn
                                   :member-name "Arn")
                                  (oauth-authorization-url :target-type
                                   oauth-authorization-url :required
                                   common-lisp:t :member-name
                                   "OAuthAuthorizationUrl")
                                  (tags :target-type tags-map :member-name
                                   "Tags"))
                                 (:shape-name "GetAccountAssociationResponse"))

(smithy/sdk/shapes:define-input get-cloud-connector-request common-lisp:nil
                                ((identifier :target-type cloud-connector-id
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t))
                                (:shape-name "GetCloudConnectorRequest"))

(smithy/sdk/shapes:define-output get-cloud-connector-response common-lisp:nil
                                 ((name :target-type display-name :required
                                   common-lisp:t :member-name "Name")
                                  (endpoint-config :target-type endpoint-config
                                   :required common-lisp:t :member-name
                                   "EndpointConfig")
                                  (description :target-type
                                   cloud-connector-description :member-name
                                   "Description")
                                  (endpoint-type :target-type endpoint-type
                                   :member-name "EndpointType")
                                  (id :target-type cloud-connector-id
                                   :member-name "Id")
                                  (type :target-type cloud-connector-type
                                   :member-name "Type"))
                                 (:shape-name "GetCloudConnectorResponse"))

(smithy/sdk/shapes:define-input get-connector-destination-request
                                common-lisp:nil
                                ((identifier :target-type
                                  connector-destination-id :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetConnectorDestinationRequest"))

(smithy/sdk/shapes:define-output get-connector-destination-response
                                 common-lisp:nil
                                 ((name :target-type connector-destination-name
                                   :member-name "Name")
                                  (description :target-type
                                   connector-destination-description
                                   :member-name "Description")
                                  (cloud-connector-id :target-type
                                   cloud-connector-id :member-name
                                   "CloudConnectorId")
                                  (id :target-type connector-destination-id
                                   :member-name "Id")
                                  (auth-type :target-type auth-type
                                   :member-name "AuthType")
                                  (auth-config :target-type auth-config
                                   :member-name "AuthConfig")
                                  (secrets-manager :target-type secrets-manager
                                   :member-name "SecretsManager")
                                  (oauth-complete-redirect-url :target-type
                                   oauth-complete-redirect-url :member-name
                                   "OAuthCompleteRedirectUrl"))
                                 (:shape-name
                                  "GetConnectorDestinationResponse"))

(smithy/sdk/shapes:define-input get-credential-locker-request common-lisp:nil
                                ((identifier :target-type credential-locker-id
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t))
                                (:shape-name "GetCredentialLockerRequest"))

(smithy/sdk/shapes:define-output get-credential-locker-response common-lisp:nil
                                 ((id :target-type credential-locker-id
                                   :member-name "Id")
                                  (arn :target-type credential-locker-arn
                                   :member-name "Arn")
                                  (name :target-type credential-locker-name
                                   :member-name "Name")
                                  (created-at :target-type
                                   credential-locker-created-at :member-name
                                   "CreatedAt")
                                  (tags :target-type tags-map :member-name
                                   "Tags"))
                                 (:shape-name "GetCredentialLockerResponse"))

(smithy/sdk/shapes:define-input get-custom-endpoint-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetCustomEndpointRequest"))

(smithy/sdk/shapes:define-output get-custom-endpoint-response common-lisp:nil
                                 ((endpoint-address :target-type
                                   endpoint-address :required common-lisp:t
                                   :member-name "EndpointAddress"))
                                 (:shape-name "GetCustomEndpointResponse"))

(smithy/sdk/shapes:define-input get-default-encryption-configuration-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "GetDefaultEncryptionConfigurationRequest"))

(smithy/sdk/shapes:define-output get-default-encryption-configuration-response
                                 common-lisp:nil
                                 ((configuration-status :target-type
                                   configuration-status :required common-lisp:t
                                   :member-name "configurationStatus")
                                  (encryption-type :target-type encryption-type
                                   :required common-lisp:t :member-name
                                   "encryptionType")
                                  (kms-key-arn :target-type kms-key-arn
                                   :member-name "kmsKeyArn"))
                                 (:shape-name
                                  "GetDefaultEncryptionConfigurationResponse"))

(smithy/sdk/shapes:define-input get-destination-request common-lisp:nil
                                ((name :target-type destination-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetDestinationRequest"))

(smithy/sdk/shapes:define-output get-destination-response common-lisp:nil
                                 ((description :target-type
                                   destination-description :member-name
                                   "Description")
                                  (delivery-destination-arn :target-type
                                   delivery-destination-arn :member-name
                                   "DeliveryDestinationArn")
                                  (delivery-destination-type :target-type
                                   delivery-destination-type :member-name
                                   "DeliveryDestinationType")
                                  (name :target-type destination-name
                                   :member-name "Name")
                                  (role-arn :target-type
                                   delivery-destination-role-arn :member-name
                                   "RoleArn")
                                  (created-at :target-type
                                   destination-created-at :member-name
                                   "CreatedAt")
                                  (updated-at :target-type
                                   destination-updated-at :member-name
                                   "UpdatedAt")
                                  (tags :target-type tags-map :member-name
                                   "Tags"))
                                 (:shape-name "GetDestinationResponse"))

(smithy/sdk/shapes:define-input get-device-discovery-request common-lisp:nil
                                ((identifier :target-type device-discovery-id
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t))
                                (:shape-name "GetDeviceDiscoveryRequest"))

(smithy/sdk/shapes:define-output get-device-discovery-response common-lisp:nil
                                 ((id :target-type device-discovery-id
                                   :required common-lisp:t :member-name "Id")
                                  (arn :target-type device-discovery-arn
                                   :required common-lisp:t :member-name "Arn")
                                  (discovery-type :target-type discovery-type
                                   :required common-lisp:t :member-name
                                   "DiscoveryType")
                                  (status :target-type device-discovery-status
                                   :required common-lisp:t :member-name
                                   "Status")
                                  (started-at :target-type discovery-started-at
                                   :required common-lisp:t :member-name
                                   "StartedAt")
                                  (controller-id :target-type managed-thing-id
                                   :member-name "ControllerId")
                                  (connector-association-id :target-type
                                   connector-association-id :member-name
                                   "ConnectorAssociationId")
                                  (account-association-id :target-type
                                   account-association-id :member-name
                                   "AccountAssociationId")
                                  (finished-at :target-type
                                   discovery-finished-at :member-name
                                   "FinishedAt")
                                  (tags :target-type tags-map :member-name
                                   "Tags"))
                                 (:shape-name "GetDeviceDiscoveryResponse"))

(smithy/sdk/shapes:define-input get-event-log-configuration-request
                                common-lisp:nil
                                ((id :target-type log-configuration-id
                                  :required common-lisp:t :member-name "Id"
                                  :http-label common-lisp:t))
                                (:shape-name "GetEventLogConfigurationRequest"))

(smithy/sdk/shapes:define-output get-event-log-configuration-response
                                 common-lisp:nil
                                 ((id :target-type log-configuration-id
                                   :member-name "Id")
                                  (resource-type :target-type
                                   smart-home-resource-type :member-name
                                   "ResourceType")
                                  (resource-id :target-type
                                   smart-home-resource-id :member-name
                                   "ResourceId")
                                  (event-log-level :target-type log-level
                                   :member-name "EventLogLevel"))
                                 (:shape-name
                                  "GetEventLogConfigurationResponse"))

(smithy/sdk/shapes:define-input get-hub-configuration-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetHubConfigurationRequest"))

(smithy/sdk/shapes:define-output get-hub-configuration-response common-lisp:nil
                                 ((hub-token-timer-expiry-setting-in-seconds
                                   :target-type
                                   hub-token-timer-expiry-setting-in-seconds
                                   :member-name
                                   "HubTokenTimerExpirySettingInSeconds")
                                  (updated-at :target-type
                                   hub-configuration-updated-at :member-name
                                   "UpdatedAt"))
                                 (:shape-name "GetHubConfigurationResponse"))

(smithy/sdk/shapes:define-input get-managed-thing-capabilities-request
                                common-lisp:nil
                                ((identifier :target-type managed-thing-id
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t))
                                (:shape-name
                                 "GetManagedThingCapabilitiesRequest"))

(smithy/sdk/shapes:define-output get-managed-thing-capabilities-response
                                 common-lisp:nil
                                 ((managed-thing-id :target-type
                                   managed-thing-id :member-name
                                   "ManagedThingId")
                                  (capabilities :target-type capabilities
                                   :member-name "Capabilities")
                                  (capability-report :target-type
                                   capability-report :member-name
                                   "CapabilityReport"))
                                 (:shape-name
                                  "GetManagedThingCapabilitiesResponse"))

(smithy/sdk/shapes:define-input get-managed-thing-connectivity-data-request
                                common-lisp:nil
                                ((identifier :target-type managed-thing-id
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t))
                                (:shape-name
                                 "GetManagedThingConnectivityDataRequest"))

(smithy/sdk/shapes:define-output get-managed-thing-connectivity-data-response
                                 common-lisp:nil
                                 ((managed-thing-id :target-type
                                   managed-thing-id :member-name
                                   "ManagedThingId")
                                  (connected :target-type connectivity-status
                                   :member-name "Connected")
                                  (timestamp :target-type
                                   connectivity-timestamp :member-name
                                   "Timestamp")
                                  (disconnect-reason :target-type
                                   disconnect-reason-value :member-name
                                   "DisconnectReason"))
                                 (:shape-name
                                  "GetManagedThingConnectivityDataResponse"))

(smithy/sdk/shapes:define-input get-managed-thing-meta-data-request
                                common-lisp:nil
                                ((identifier :target-type managed-thing-id
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t))
                                (:shape-name "GetManagedThingMetaDataRequest"))

(smithy/sdk/shapes:define-output get-managed-thing-meta-data-response
                                 common-lisp:nil
                                 ((managed-thing-id :target-type
                                   managed-thing-id :member-name
                                   "ManagedThingId")
                                  (meta-data :target-type meta-data
                                   :member-name "MetaData"))
                                 (:shape-name
                                  "GetManagedThingMetaDataResponse"))

(smithy/sdk/shapes:define-input get-managed-thing-request common-lisp:nil
                                ((identifier :target-type managed-thing-id
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t))
                                (:shape-name "GetManagedThingRequest"))

(smithy/sdk/shapes:define-output get-managed-thing-response common-lisp:nil
                                 ((id :target-type managed-thing-id
                                   :member-name "Id")
                                  (arn :target-type managed-thing-arn
                                   :member-name "Arn")
                                  (owner :target-type owner :member-name
                                   "Owner")
                                  (credential-locker-id :target-type
                                   credential-locker-id :member-name
                                   "CredentialLockerId")
                                  (advertised-product-id :target-type
                                   advertised-product-id :member-name
                                   "AdvertisedProductId")
                                  (role :target-type role :member-name "Role")
                                  (provisioning-status :target-type
                                   provisioning-status :member-name
                                   "ProvisioningStatus")
                                  (name :target-type name :member-name "Name")
                                  (model :target-type model :member-name
                                   "Model")
                                  (brand :target-type brand :member-name
                                   "Brand")
                                  (serial-number :target-type serial-number
                                   :member-name "SerialNumber")
                                  (universal-product-code :target-type
                                   universal-product-code :member-name
                                   "UniversalProductCode")
                                  (international-article-number :target-type
                                   international-article-number :member-name
                                   "InternationalArticleNumber")
                                  (connector-policy-id :target-type
                                   connector-policy-id :member-name
                                   "ConnectorPolicyId")
                                  (connector-destination-id :target-type
                                   connector-destination-id :member-name
                                   "ConnectorDestinationId")
                                  (connector-device-id :target-type
                                   connector-device-id :member-name
                                   "ConnectorDeviceId")
                                  (device-specific-key :target-type
                                   device-specific-key :member-name
                                   "DeviceSpecificKey")
                                  (mac-address :target-type mac-address
                                   :member-name "MacAddress")
                                  (parent-controller-id :target-type
                                   parent-controller-id :member-name
                                   "ParentControllerId")
                                  (classification :target-type classification
                                   :member-name "Classification")
                                  (created-at :target-type created-at
                                   :member-name "CreatedAt")
                                  (updated-at :target-type updated-at
                                   :member-name "UpdatedAt")
                                  (activated-at :target-type setup-at
                                   :member-name "ActivatedAt")
                                  (hub-network-mode :target-type
                                   hub-network-mode :member-name
                                   "HubNetworkMode")
                                  (meta-data :target-type meta-data
                                   :member-name "MetaData")
                                  (tags :target-type tags-map :member-name
                                   "Tags"))
                                 (:shape-name "GetManagedThingResponse"))

(smithy/sdk/shapes:define-input get-managed-thing-state-request common-lisp:nil
                                ((managed-thing-id :target-type
                                  managed-thing-id :required common-lisp:t
                                  :member-name "ManagedThingId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetManagedThingStateRequest"))

(smithy/sdk/shapes:define-output get-managed-thing-state-response
                                 common-lisp:nil
                                 ((endpoints :target-type state-endpoints
                                   :required common-lisp:t :member-name
                                   "Endpoints"))
                                 (:shape-name "GetManagedThingStateResponse"))

(smithy/sdk/shapes:define-input get-notification-configuration-request
                                common-lisp:nil
                                ((event-type :target-type event-type :required
                                  common-lisp:t :member-name "EventType"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetNotificationConfigurationRequest"))

(smithy/sdk/shapes:define-output get-notification-configuration-response
                                 common-lisp:nil
                                 ((event-type :target-type event-type
                                   :member-name "EventType")
                                  (destination-name :target-type
                                   destination-name :member-name
                                   "DestinationName")
                                  (created-at :target-type
                                   notification-configuration-created-at
                                   :member-name "CreatedAt")
                                  (updated-at :target-type
                                   notification-configuration-updated-at
                                   :member-name "UpdatedAt")
                                  (tags :target-type tags-map :member-name
                                   "Tags"))
                                 (:shape-name
                                  "GetNotificationConfigurationResponse"))

(smithy/sdk/shapes:define-input get-ota-task-configuration-request
                                common-lisp:nil
                                ((identifier :target-type
                                  ota-task-configuration-id :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetOtaTaskConfigurationRequest"))

(smithy/sdk/shapes:define-output get-ota-task-configuration-response
                                 common-lisp:nil
                                 ((task-configuration-id :target-type
                                   ota-task-configuration-id :member-name
                                   "TaskConfigurationId")
                                  (name :target-type
                                   ota-task-configuration-name :member-name
                                   "Name")
                                  (push-config :target-type push-config
                                   :member-name "PushConfig")
                                  (description :target-type ota-description
                                   :member-name "Description")
                                  (created-at :target-type created-at
                                   :member-name "CreatedAt"))
                                 (:shape-name
                                  "GetOtaTaskConfigurationResponse"))

(smithy/sdk/shapes:define-input get-ota-task-request common-lisp:nil
                                ((identifier :target-type ota-task-id :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetOtaTaskRequest"))

(smithy/sdk/shapes:define-output get-ota-task-response common-lisp:nil
                                 ((task-id :target-type ota-task-id
                                   :member-name "TaskId")
                                  (task-arn :target-type ota-task-arn
                                   :member-name "TaskArn")
                                  (description :target-type ota-description
                                   :member-name "Description")
                                  (s3url :target-type s3url :member-name
                                   "S3Url")
                                  (protocol :target-type ota-protocol
                                   :member-name "Protocol")
                                  (ota-type :target-type ota-type :member-name
                                   "OtaType")
                                  (ota-target-query-string :target-type
                                   ota-target-query-string :member-name
                                   "OtaTargetQueryString")
                                  (ota-mechanism :target-type ota-mechanism
                                   :member-name "OtaMechanism")
                                  (target :target-type target :member-name
                                   "Target")
                                  (created-at :target-type created-at
                                   :member-name "CreatedAt")
                                  (last-updated-at :target-type last-updated-at
                                   :member-name "LastUpdatedAt")
                                  (task-configuration-id :target-type
                                   ota-task-configuration-id :member-name
                                   "TaskConfigurationId")
                                  (task-processing-details :target-type
                                   task-processing-details :member-name
                                   "TaskProcessingDetails")
                                  (ota-scheduling-config :target-type
                                   ota-task-scheduling-config :member-name
                                   "OtaSchedulingConfig")
                                  (ota-task-execution-retry-config :target-type
                                   ota-task-execution-retry-config :member-name
                                   "OtaTaskExecutionRetryConfig")
                                  (status :target-type ota-status :member-name
                                   "Status")
                                  (tags :target-type tags-map :member-name
                                   "Tags"))
                                 (:shape-name "GetOtaTaskResponse"))

(smithy/sdk/shapes:define-input get-provisioning-profile-request
                                common-lisp:nil
                                ((identifier :target-type
                                  provisioning-profile-id :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetProvisioningProfileRequest"))

(smithy/sdk/shapes:define-output get-provisioning-profile-response
                                 common-lisp:nil
                                 ((arn :target-type provisioning-profile-arn
                                   :member-name "Arn")
                                  (name :target-type provisioning-profile-name
                                   :member-name "Name")
                                  (provisioning-type :target-type
                                   provisioning-type :member-name
                                   "ProvisioningType")
                                  (id :target-type provisioning-profile-id
                                   :member-name "Id")
                                  (claim-certificate :target-type
                                   claim-certificate :member-name
                                   "ClaimCertificate")
                                  (tags :target-type tags-map :member-name
                                   "Tags"))
                                 (:shape-name "GetProvisioningProfileResponse"))

(smithy/sdk/shapes:define-input get-runtime-log-configuration-request
                                common-lisp:nil
                                ((managed-thing-id :target-type
                                  managed-thing-id :required common-lisp:t
                                  :member-name "ManagedThingId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetRuntimeLogConfigurationRequest"))

(smithy/sdk/shapes:define-output get-runtime-log-configuration-response
                                 common-lisp:nil
                                 ((managed-thing-id :target-type
                                   managed-thing-id :member-name
                                   "ManagedThingId")
                                  (runtime-log-configurations :target-type
                                   runtime-log-configurations :member-name
                                   "RuntimeLogConfigurations"))
                                 (:shape-name
                                  "GetRuntimeLogConfigurationResponse"))

(smithy/sdk/shapes:define-input get-schema-version-request common-lisp:nil
                                ((type :target-type schema-version-type
                                  :required common-lisp:t :member-name "Type"
                                  :http-label common-lisp:t)
                                 (schema-versioned-id :target-type
                                  schema-versioned-id :required common-lisp:t
                                  :member-name "SchemaVersionedId" :http-label
                                  common-lisp:t)
                                 (format :target-type schema-version-format
                                  :member-name "Format" :http-query "Format"))
                                (:shape-name "GetSchemaVersionRequest"))

(smithy/sdk/shapes:define-output get-schema-version-response common-lisp:nil
                                 ((schema-id :target-type schema-id
                                   :member-name "SchemaId")
                                  (type :target-type schema-version-type
                                   :member-name "Type")
                                  (description :target-type
                                   schema-version-description :member-name
                                   "Description")
                                  (namespace :target-type
                                   schema-version-namespace-name :member-name
                                   "Namespace")
                                  (semantic-version :target-type
                                   schema-version-version :member-name
                                   "SemanticVersion")
                                  (visibility :target-type
                                   schema-version-visibility :member-name
                                   "Visibility")
                                  (schema :target-type schema-version-schema
                                   :member-name "Schema"))
                                 (:shape-name "GetSchemaVersionResponse"))

common-lisp:nil

(smithy/sdk/shapes:define-type hub-configuration-updated-at
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum hub-network-mode
    common-lisp:nil
  (:standard "STANDARD")
  (:network-wide-exclusion "NETWORK_WIDE_EXCLUSION"))

(smithy/sdk/shapes:define-type hub-token-timer-expiry-setting-in-seconds
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type in-progress-timeout-in-minutes
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type increment-factor smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-error internal-failure-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalFailureException")
                                (:error-code 500)
                                (:base-class iot-managed-integrations-error))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class iot-managed-integrations-error))

(smithy/sdk/shapes:define-type international-article-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400)
                                (:base-class iot-managed-integrations-error))

(smithy/sdk/shapes:define-type io-tmanaged-integrations-resource-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type lambda-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-config common-lisp:nil
                                    ((arn :target-type lambda-arn :required
                                      common-lisp:t :member-name "arn"))
                                    (:shape-name "LambdaConfig"))

(smithy/sdk/shapes:define-type last-updated-at
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 410)
                                (:base-class iot-managed-integrations-error))

(smithy/sdk/shapes:define-input list-account-associations-request
                                common-lisp:nil
                                ((connector-destination-id :target-type
                                  connector-destination-id :member-name
                                  "ConnectorDestinationId" :http-query
                                  "ConnectorDestinationId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken"))
                                (:shape-name "ListAccountAssociationsRequest"))

(smithy/sdk/shapes:define-output list-account-associations-response
                                 common-lisp:nil
                                 ((items :target-type
                                   account-association-list-definition
                                   :member-name "Items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListAccountAssociationsResponse"))

(smithy/sdk/shapes:define-input list-cloud-connectors-request common-lisp:nil
                                ((type :target-type cloud-connector-type
                                  :member-name "Type" :http-query "Type")
                                 (lambda-arn :target-type lambda-arn
                                  :member-name "LambdaArn" :http-query
                                  "LambdaArn")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken"))
                                (:shape-name "ListCloudConnectorsRequest"))

(smithy/sdk/shapes:define-output list-cloud-connectors-response common-lisp:nil
                                 ((items :target-type connector-list
                                   :member-name "Items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListCloudConnectorsResponse"))

(smithy/sdk/shapes:define-input list-connector-destinations-request
                                common-lisp:nil
                                ((cloud-connector-id :target-type
                                  cloud-connector-id :member-name
                                  "CloudConnectorId" :http-query
                                  "CloudConnectorId")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name
                                 "ListConnectorDestinationsRequest"))

(smithy/sdk/shapes:define-output list-connector-destinations-response
                                 common-lisp:nil
                                 ((connector-destination-list :target-type
                                   connector-destination-list-definition
                                   :member-name "ConnectorDestinationList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListConnectorDestinationsResponse"))

(smithy/sdk/shapes:define-input list-credential-lockers-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListCredentialLockersRequest"))

(smithy/sdk/shapes:define-output list-credential-lockers-response
                                 common-lisp:nil
                                 ((items :target-type
                                   credential-locker-list-definition
                                   :member-name "Items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListCredentialLockersResponse"))

(smithy/sdk/shapes:define-input list-destinations-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListDestinationsRequest"))

(smithy/sdk/shapes:define-output list-destinations-response common-lisp:nil
                                 ((destination-list :target-type
                                   destination-list-definition :member-name
                                   "DestinationList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDestinationsResponse"))

(smithy/sdk/shapes:define-input list-device-discoveries-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (type-filter :target-type discovery-type
                                  :member-name "TypeFilter" :http-query
                                  "TypeFilter")
                                 (status-filter :target-type
                                  device-discovery-status :member-name
                                  "StatusFilter" :http-query "StatusFilter"))
                                (:shape-name "ListDeviceDiscoveriesRequest"))

(smithy/sdk/shapes:define-output list-device-discoveries-response
                                 common-lisp:nil
                                 ((items :target-type
                                   device-discovery-list-definition
                                   :member-name "Items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDeviceDiscoveriesResponse"))

(smithy/sdk/shapes:define-input list-discovered-devices-request common-lisp:nil
                                ((identifier :target-type device-discovery-id
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListDiscoveredDevicesRequest"))

(smithy/sdk/shapes:define-output list-discovered-devices-response
                                 common-lisp:nil
                                 ((items :target-type
                                   discovered-device-list-definition
                                   :member-name "Items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListDiscoveredDevicesResponse"))

(smithy/sdk/shapes:define-input list-event-log-configurations-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name
                                 "ListEventLogConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-event-log-configurations-response
                                 common-lisp:nil
                                 ((event-log-configuration-list :target-type
                                   event-log-configuration-list-definition
                                   :member-name "EventLogConfigurationList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListEventLogConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-managed-thing-account-associations-request
                                common-lisp:nil
                                ((managed-thing-id :target-type
                                  managed-thing-id :member-name
                                  "ManagedThingId" :http-query
                                  "ManagedThingId")
                                 (account-association-id :target-type
                                  account-association-id :member-name
                                  "AccountAssociationId" :http-query
                                  "AccountAssociationId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken"))
                                (:shape-name
                                 "ListManagedThingAccountAssociationsRequest"))

(smithy/sdk/shapes:define-output
 list-managed-thing-account-associations-response common-lisp:nil
 ((items :target-type managed-thing-association-list :member-name "Items")
  (next-token :target-type smithy/sdk/smithy-types:string :member-name
   "NextToken"))
 (:shape-name "ListManagedThingAccountAssociationsResponse"))

(smithy/sdk/shapes:define-input list-managed-thing-schemas-request
                                common-lisp:nil
                                ((identifier :target-type managed-thing-id
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t)
                                 (endpoint-id-filter :target-type endpoint-id
                                  :member-name "EndpointIdFilter" :http-query
                                  "EndpointIdFilter")
                                 (capability-id-filter :target-type
                                  capability-id :member-name
                                  "CapabilityIdFilter" :http-query
                                  "CapabilityIdFilter")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListManagedThingSchemasRequest"))

(smithy/sdk/shapes:define-output list-managed-thing-schemas-response
                                 common-lisp:nil
                                 ((items :target-type
                                   managed-thing-schema-list-definition
                                   :member-name "Items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListManagedThingSchemasResponse"))

(smithy/sdk/shapes:define-input list-managed-things-request common-lisp:nil
                                ((owner-filter :target-type owner :member-name
                                  "OwnerFilter" :http-query "OwnerFilter")
                                 (credential-locker-filter :target-type
                                  credential-locker-id :member-name
                                  "CredentialLockerFilter" :http-query
                                  "CredentialLockerFilter")
                                 (role-filter :target-type role :member-name
                                  "RoleFilter" :http-query "RoleFilter")
                                 (parent-controller-identifier-filter
                                  :target-type parent-controller-id
                                  :member-name
                                  "ParentControllerIdentifierFilter"
                                  :http-query
                                  "ParentControllerIdentifierFilter")
                                 (connector-policy-id-filter :target-type
                                  connector-policy-id :member-name
                                  "ConnectorPolicyIdFilter" :http-query
                                  "ConnectorPolicyIdFilter")
                                 (connector-destination-id-filter :target-type
                                  connector-destination-id :member-name
                                  "ConnectorDestinationIdFilter" :http-query
                                  "ConnectorDestinationIdFilter")
                                 (connector-device-id-filter :target-type
                                  connector-device-id :member-name
                                  "ConnectorDeviceIdFilter" :http-query
                                  "ConnectorDeviceIdFilter")
                                 (serial-number-filter :target-type
                                  serial-number :member-name
                                  "SerialNumberFilter" :http-query
                                  "SerialNumberFilter")
                                 (provisioning-status-filter :target-type
                                  provisioning-status :member-name
                                  "ProvisioningStatusFilter" :http-query
                                  "ProvisioningStatusFilter")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListManagedThingsRequest"))

(smithy/sdk/shapes:define-output list-managed-things-response common-lisp:nil
                                 ((items :target-type
                                   managed-thing-list-definition :member-name
                                   "Items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListManagedThingsResponse"))

(smithy/sdk/shapes:define-input list-notification-configurations-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken"))
                                (:shape-name
                                 "ListNotificationConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-notification-configurations-response
                                 common-lisp:nil
                                 ((notification-configuration-list :target-type
                                   notification-configuration-list-definition
                                   :member-name
                                   "NotificationConfigurationList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListNotificationConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-ota-task-configurations-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name
                                 "ListOtaTaskConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-ota-task-configurations-response
                                 common-lisp:nil
                                 ((items :target-type
                                   ota-task-configuration-list-definition
                                   :member-name "Items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListOtaTaskConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-ota-task-executions-request
                                common-lisp:nil
                                ((identifier :target-type ota-task-id :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (next-token :target-type ota-next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListOtaTaskExecutionsRequest"))

(smithy/sdk/shapes:define-output list-ota-task-executions-response
                                 common-lisp:nil
                                 ((execution-summaries :target-type
                                   ota-task-execution-summaries-list-definition
                                   :member-name "ExecutionSummaries")
                                  (next-token :target-type ota-next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListOtaTaskExecutionsResponse"))

(smithy/sdk/shapes:define-input list-ota-tasks-request common-lisp:nil
                                ((next-token :target-type ota-next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListOtaTasksRequest"))

(smithy/sdk/shapes:define-output list-ota-tasks-response common-lisp:nil
                                 ((tasks :target-type ota-task-list-definition
                                   :member-name "Tasks")
                                  (next-token :target-type ota-next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListOtaTasksResponse"))

(smithy/sdk/shapes:define-input list-provisioning-profiles-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults"))
                                (:shape-name "ListProvisioningProfilesRequest"))

(smithy/sdk/shapes:define-output list-provisioning-profiles-response
                                 common-lisp:nil
                                 ((items :target-type
                                   provisioning-profile-list-definition
                                   :member-name "Items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListProvisioningProfilesResponse"))

(smithy/sdk/shapes:define-input list-schema-versions-request common-lisp:nil
                                ((type :target-type schema-version-type
                                  :required common-lisp:t :member-name "Type"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "NextToken")
                                 (schema-id :target-type schema-id :member-name
                                  "SchemaId" :http-query "SchemaIdFilter")
                                 (namespace :target-type
                                  schema-version-namespace-name :member-name
                                  "Namespace" :http-query "NamespaceFilter")
                                 (visibility :target-type
                                  schema-version-visibility :member-name
                                  "Visibility" :http-query "VisibilityFilter")
                                 (semantic-version :target-type
                                  schema-version-version :member-name
                                  "SemanticVersion" :http-query
                                  "SemanticVersionFilter"))
                                (:shape-name "ListSchemaVersionsRequest"))

(smithy/sdk/shapes:define-output list-schema-versions-response common-lisp:nil
                                 ((items :target-type schema-version-list
                                   :member-name "Items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListSchemaVersionsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  io-tmanaged-integrations-resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type local-store-file-rotation-max-bytes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type local-store-file-rotation-max-files
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type local-store-location
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type log-configuration-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum log-level
    common-lisp:nil
  (:debug "DEBUG")
  (:error "ERROR")
  (:info "INFO")
  (:warn "WARN"))

(smithy/sdk/shapes:define-type mac-address smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type managed-thing-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure managed-thing-association common-lisp:nil
                                    ((managed-thing-id :target-type
                                      managed-thing-id :member-name
                                      "ManagedThingId")
                                     (account-association-id :target-type
                                      account-association-id :member-name
                                      "AccountAssociationId"))
                                    (:shape-name "ManagedThingAssociation"))

(smithy/sdk/shapes:define-list managed-thing-association-list :member
                               managed-thing-association)

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-type managed-thing-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list managed-thing-list-definition :member
                               managed-thing-summary)

common-lisp:nil

(smithy/sdk/shapes:define-list managed-thing-schema-list-definition :member
                               managed-thing-schema-list-item)

(smithy/sdk/shapes:define-structure managed-thing-schema-list-item
                                    common-lisp:nil
                                    ((endpoint-id :target-type endpoint-id
                                      :member-name "EndpointId")
                                     (capability-id :target-type capability-id
                                      :member-name "CapabilityId")
                                     (schema :target-type validation-schema
                                      :member-name "Schema"))
                                    (:shape-name "ManagedThingSchemaListItem"))

common-lisp:nil

(smithy/sdk/shapes:define-structure managed-thing-summary common-lisp:nil
                                    ((id :target-type managed-thing-id
                                      :member-name "Id")
                                     (arn :target-type managed-thing-arn
                                      :member-name "Arn")
                                     (advertised-product-id :target-type
                                      advertised-product-id :member-name
                                      "AdvertisedProductId")
                                     (brand :target-type brand :member-name
                                      "Brand")
                                     (classification :target-type
                                      classification :member-name
                                      "Classification")
                                     (connector-device-id :target-type
                                      connector-device-id :member-name
                                      "ConnectorDeviceId")
                                     (connector-policy-id :target-type
                                      connector-policy-id :member-name
                                      "ConnectorPolicyId")
                                     (connector-destination-id :target-type
                                      connector-destination-id :member-name
                                      "ConnectorDestinationId")
                                     (model :target-type model :member-name
                                      "Model")
                                     (name :target-type name :member-name
                                      "Name")
                                     (owner :target-type owner :member-name
                                      "Owner")
                                     (credential-locker-id :target-type
                                      credential-locker-id :member-name
                                      "CredentialLockerId")
                                     (parent-controller-id :target-type
                                      parent-controller-id :member-name
                                      "ParentControllerId")
                                     (provisioning-status :target-type
                                      provisioning-status :member-name
                                      "ProvisioningStatus")
                                     (role :target-type role :member-name
                                      "Role")
                                     (serial-number :target-type serial-number
                                      :member-name "SerialNumber")
                                     (created-at :target-type created-at
                                      :member-name "CreatedAt")
                                     (updated-at :target-type created-at
                                      :member-name "UpdatedAt")
                                     (activated-at :target-type setup-at
                                      :member-name "ActivatedAt"))
                                    (:shape-name "ManagedThingSummary"))

(smithy/sdk/shapes:define-type matter-attribute-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type matter-attributes
                               smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-structure matter-capability-report common-lisp:nil
                                    ((version :target-type
                                      capability-report-version :required
                                      common-lisp:t :member-name "version")
                                     (node-id :target-type node-id :member-name
                                      "nodeId")
                                     (endpoints :target-type
                                      matter-capability-report-endpoints
                                      :required common-lisp:t :member-name
                                      "endpoints"))
                                    (:shape-name "MatterCapabilityReport"))

(smithy/sdk/shapes:define-structure matter-capability-report-attribute
                                    common-lisp:nil
                                    ((id :target-type matter-attribute-id
                                      :member-name "id")
                                     (name :target-type action-name
                                      :member-name "name")
                                     (value :target-type
                                      matter-capability-report-attribute-value
                                      :member-name "value"))
                                    (:shape-name
                                     "MatterCapabilityReportAttribute"))

(smithy/sdk/shapes:define-type matter-capability-report-attribute-value
                               smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-list matter-capability-report-attributes :member
                               matter-capability-report-attribute)

(smithy/sdk/shapes:define-structure matter-capability-report-cluster
                                    common-lisp:nil
                                    ((id :target-type cluster-id :required
                                      common-lisp:t :member-name "id")
                                     (revision :target-type
                                      matter-capability-report-cluster-revision-id
                                      :required common-lisp:t :member-name
                                      "revision")
                                     (public-id :target-type
                                      schema-versioned-id :member-name
                                      "publicId")
                                     (name :target-type capability-name
                                      :member-name "name")
                                     (spec-version :target-type spec-version
                                      :member-name "specVersion")
                                     (attributes :target-type
                                      matter-capability-report-attributes
                                      :member-name "attributes")
                                     (commands :target-type
                                      matter-capability-report-commands
                                      :member-name "commands")
                                     (events :target-type
                                      matter-capability-report-events
                                      :member-name "events")
                                     (feature-map :target-type
                                      matter-capability-report-feature-map
                                      :member-name "featureMap")
                                     (generated-commands :target-type
                                      matter-capability-report-generated-commands
                                      :member-name "generatedCommands")
                                     (fabric-index :target-type
                                      matter-capability-report-fabric-index
                                      :member-name "fabricIndex"))
                                    (:shape-name
                                     "MatterCapabilityReportCluster"))

(smithy/sdk/shapes:define-type matter-capability-report-cluster-revision-id
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list matter-capability-report-clusters :member
                               matter-capability-report-cluster)

(smithy/sdk/shapes:define-list matter-capability-report-commands :member
                               matter-command-id)

(smithy/sdk/shapes:define-structure matter-capability-report-endpoint
                                    common-lisp:nil
                                    ((id :target-type endpoint-id :required
                                      common-lisp:t :member-name "id")
                                     (device-types :target-type device-types
                                      :required common-lisp:t :member-name
                                      "deviceTypes")
                                     (clusters :target-type
                                      matter-capability-report-clusters
                                      :required common-lisp:t :member-name
                                      "clusters")
                                     (parts :target-type
                                      matter-capability-report-endpoint-parts
                                      :member-name "parts")
                                     (semantic-tags :target-type
                                      matter-capability-report-endpoint-semantic-tags
                                      :member-name "semanticTags")
                                     (client-clusters :target-type
                                      matter-capability-report-endpoint-client-clusters
                                      :member-name "clientClusters"))
                                    (:shape-name
                                     "MatterCapabilityReportEndpoint"))

(smithy/sdk/shapes:define-list
 matter-capability-report-endpoint-client-clusters :member cluster-id)

(smithy/sdk/shapes:define-list matter-capability-report-endpoint-parts :member
                               endpoint-id)

(smithy/sdk/shapes:define-list matter-capability-report-endpoint-semantic-tags
                               :member endpoint-semantic-tag)

(smithy/sdk/shapes:define-list matter-capability-report-endpoints :member
                               matter-capability-report-endpoint)

(smithy/sdk/shapes:define-list matter-capability-report-events :member
                               matter-event-id)

(smithy/sdk/shapes:define-type matter-capability-report-fabric-index
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type matter-capability-report-feature-map
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list matter-capability-report-generated-commands
                               :member matter-command-id)

(smithy/sdk/shapes:define-structure matter-cluster common-lisp:nil
                                    ((id :target-type cluster-id :member-name
                                      "id")
                                     (attributes :target-type matter-attributes
                                      :member-name "attributes")
                                     (commands :target-type matter-commands
                                      :member-name "commands")
                                     (events :target-type matter-events
                                      :member-name "events"))
                                    (:shape-name "MatterCluster"))

(smithy/sdk/shapes:define-list matter-clusters :member matter-cluster)

(smithy/sdk/shapes:define-type matter-command-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map matter-commands :key matter-command-id :value
                              matter-fields)

(smithy/sdk/shapes:define-structure matter-endpoint common-lisp:nil
                                    ((id :target-type endpoint-id :member-name
                                      "id")
                                     (clusters :target-type matter-clusters
                                      :member-name "clusters"))
                                    (:shape-name "MatterEndpoint"))

(smithy/sdk/shapes:define-type matter-event-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map matter-events :key matter-event-id :value
                              matter-fields)

(smithy/sdk/shapes:define-type matter-fields smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-per-minute
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-map meta-data :key attribute-name :value
                              attribute-value)

(smithy/sdk/shapes:define-type min-number-of-executed-things
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type min-number-of-retries
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type model smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type node-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type notification-configuration-created-at
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list notification-configuration-list-definition
                               :member notification-configuration-summary)

common-lisp:nil

(smithy/sdk/shapes:define-structure notification-configuration-summary
                                    common-lisp:nil
                                    ((event-type :target-type event-type
                                      :member-name "EventType")
                                     (destination-name :target-type
                                      destination-name :member-name
                                      "DestinationName"))
                                    (:shape-name
                                     "NotificationConfigurationSummary"))

(smithy/sdk/shapes:define-type notification-configuration-updated-at
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type number-of-notified-things
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type number-of-succeeded-things
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type oauth-authorization-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type oauth-complete-redirect-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure oauth-config common-lisp:nil
                                    ((auth-url :target-type auth-url :required
                                      common-lisp:t :member-name "authUrl")
                                     (token-url :target-type token-url
                                      :required common-lisp:t :member-name
                                      "tokenUrl")
                                     (scope :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "scope")
                                     (token-endpoint-authentication-scheme
                                      :target-type
                                      token-endpoint-authentication-scheme
                                      :required common-lisp:t :member-name
                                      "tokenEndpointAuthenticationScheme")
                                     (o-auth-complete-redirect-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "oAuthCompleteRedirectUrl")
                                     (proactive-refresh-token-renewal
                                      :target-type
                                      proactive-refresh-token-renewal
                                      :member-name
                                      "proactiveRefreshTokenRenewal"))
                                    (:shape-name "OAuthConfig"))

(smithy/sdk/shapes:define-structure oauth-update common-lisp:nil
                                    ((o-auth-complete-redirect-url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "oAuthCompleteRedirectUrl")
                                     (proactive-refresh-token-renewal
                                      :target-type
                                      proactive-refresh-token-renewal
                                      :member-name
                                      "proactiveRefreshTokenRenewal"))
                                    (:shape-name "OAuthUpdate"))

(smithy/sdk/shapes:define-type ota-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum ota-mechanism
    common-lisp:nil
  (:push "PUSH"))

(smithy/sdk/shapes:define-type ota-next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum ota-protocol
    common-lisp:nil
  (:http "HTTP"))

(smithy/sdk/shapes:define-enum ota-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:canceled "CANCELED")
  (:completed "COMPLETED")
  (:deletion-in-progress "DELETION_IN_PROGRESS")
  (:scheduled "SCHEDULED"))

(smithy/sdk/shapes:define-type ota-target-query-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ota-task-abort-config common-lisp:nil
                                    ((abort-config-criteria-list :target-type
                                      abort-config-criteria-list :member-name
                                      "AbortConfigCriteriaList"))
                                    (:shape-name "OtaTaskAbortConfig"))

(smithy/sdk/shapes:define-type ota-task-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ota-task-configuration-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ota-task-configuration-list-definition :member
                               ota-task-configuration-summary)

(smithy/sdk/shapes:define-type ota-task-configuration-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure ota-task-configuration-summary
                                    common-lisp:nil
                                    ((task-configuration-id :target-type
                                      ota-task-configuration-id :member-name
                                      "TaskConfigurationId")
                                     (name :target-type
                                      ota-task-configuration-name :member-name
                                      "Name")
                                     (created-at :target-type created-at
                                      :member-name "CreatedAt"))
                                    (:shape-name "OtaTaskConfigurationSummary"))

(smithy/sdk/shapes:define-structure ota-task-execution-retry-config
                                    common-lisp:nil
                                    ((retry-config-criteria :target-type
                                      retry-config-criteria-list :member-name
                                      "RetryConfigCriteria"))
                                    (:shape-name "OtaTaskExecutionRetryConfig"))

(smithy/sdk/shapes:define-structure ota-task-execution-rollout-config
                                    common-lisp:nil
                                    ((exponential-rollout-rate :target-type
                                      exponential-rollout-rate :member-name
                                      "ExponentialRolloutRate")
                                     (maximum-per-minute :target-type
                                      maximum-per-minute :member-name
                                      "MaximumPerMinute"))
                                    (:shape-name
                                     "OtaTaskExecutionRolloutConfig"))

(smithy/sdk/shapes:define-enum ota-task-execution-status
    common-lisp:nil
  (:queued "QUEUED")
  (:in-progress "IN_PROGRESS")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:timed-out "TIMED_OUT")
  (:rejected "REJECTED")
  (:removed "REMOVED")
  (:canceled "CANCELED"))

(smithy/sdk/shapes:define-structure ota-task-execution-summaries
                                    common-lisp:nil
                                    ((task-execution-summary :target-type
                                      ota-task-execution-summary :member-name
                                      "TaskExecutionSummary")
                                     (managed-thing-id :target-type
                                      managed-thing-id :member-name
                                      "ManagedThingId"))
                                    (:shape-name "OtaTaskExecutionSummaries"))

(smithy/sdk/shapes:define-list ota-task-execution-summaries-list-definition
                               :member ota-task-execution-summaries)

(smithy/sdk/shapes:define-structure ota-task-execution-summary common-lisp:nil
                                    ((execution-number :target-type
                                      execution-number :member-name
                                      "ExecutionNumber")
                                     (last-updated-at :target-type
                                      last-updated-at :member-name
                                      "LastUpdatedAt")
                                     (queued-at :target-type queued-at
                                      :member-name "QueuedAt")
                                     (retry-attempt :target-type retry-attempt
                                      :member-name "RetryAttempt")
                                     (started-at :target-type started-at
                                      :member-name "StartedAt")
                                     (status :target-type
                                      ota-task-execution-status :member-name
                                      "Status"))
                                    (:shape-name "OtaTaskExecutionSummary"))

(smithy/sdk/shapes:define-type ota-task-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list ota-task-list-definition :member
                               ota-task-summary)

common-lisp:nil

(smithy/sdk/shapes:define-structure ota-task-scheduling-config common-lisp:nil
                                    ((end-behavior :target-type
                                      scheduling-config-end-behavior
                                      :member-name "EndBehavior")
                                     (end-time :target-type end-time
                                      :member-name "EndTime")
                                     (maintenance-windows :target-type
                                      schedule-maintenance-window-list
                                      :member-name "MaintenanceWindows")
                                     (start-time :target-type
                                      schedule-start-time :member-name
                                      "StartTime"))
                                    (:shape-name "OtaTaskSchedulingConfig"))

(smithy/sdk/shapes:define-structure ota-task-summary common-lisp:nil
                                    ((task-id :target-type ota-task-id
                                      :member-name "TaskId")
                                     (task-arn :target-type ota-task-arn
                                      :member-name "TaskArn")
                                     (created-at :target-type created-at
                                      :member-name "CreatedAt")
                                     (last-updated-at :target-type
                                      last-updated-at :member-name
                                      "LastUpdatedAt")
                                     (task-configuration-id :target-type
                                      ota-task-configuration-id :member-name
                                      "TaskConfigurationId")
                                     (status :target-type ota-status
                                      :member-name "Status"))
                                    (:shape-name "OtaTaskSummary"))

(smithy/sdk/shapes:define-structure ota-task-timeout-config common-lisp:nil
                                    ((in-progress-timeout-in-minutes
                                      :target-type
                                      in-progress-timeout-in-minutes
                                      :member-name
                                      "InProgressTimeoutInMinutes"))
                                    (:shape-name "OtaTaskTimeoutConfig"))

(smithy/sdk/shapes:define-enum ota-type
    common-lisp:nil
  (:one-time "ONE_TIME")
  (:continuous "CONTINUOUS"))

(smithy/sdk/shapes:define-type owner smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parent-controller-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure proactive-refresh-token-renewal
                                    common-lisp:nil
                                    ((enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled")
                                     (days-before-renewal :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "DaysBeforeRenewal"))
                                    (:shape-name
                                     "ProactiveRefreshTokenRenewal"))

(smithy/sdk/shapes:define-type property-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type provisioning-profile-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type provisioning-profile-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list provisioning-profile-list-definition :member
                               provisioning-profile-summary)

(smithy/sdk/shapes:define-type provisioning-profile-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure provisioning-profile-summary
                                    common-lisp:nil
                                    ((name :target-type
                                      provisioning-profile-name :member-name
                                      "Name")
                                     (id :target-type provisioning-profile-id
                                      :member-name "Id")
                                     (arn :target-type provisioning-profile-arn
                                      :member-name "Arn")
                                     (provisioning-type :target-type
                                      provisioning-type :member-name
                                      "ProvisioningType"))
                                    (:shape-name "ProvisioningProfileSummary"))

(smithy/sdk/shapes:define-enum provisioning-status
    common-lisp:nil
  (:unassociated "UNASSOCIATED")
  (:pre-associated "PRE_ASSOCIATED")
  (:discovered "DISCOVERED")
  (:activated "ACTIVATED")
  (:deletion-failed "DELETION_FAILED")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:isolated "ISOLATED")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-enum provisioning-type
    common-lisp:nil
  (:fleet-provisioning "FLEET_PROVISIONING")
  (:jitr "JITR"))

(smithy/sdk/shapes:define-structure push-config common-lisp:nil
                                    ((abort-config :target-type
                                      ota-task-abort-config :member-name
                                      "AbortConfig")
                                     (rollout-config :target-type
                                      ota-task-execution-rollout-config
                                      :member-name "RolloutConfig")
                                     (timeout-config :target-type
                                      ota-task-timeout-config :member-name
                                      "TimeoutConfig"))
                                    (:shape-name "PushConfig"))

(smithy/sdk/shapes:define-input put-default-encryption-configuration-request
                                common-lisp:nil
                                ((encryption-type :target-type encryption-type
                                  :required common-lisp:t :member-name
                                  "encryptionType")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "kmsKeyArn"))
                                (:shape-name
                                 "PutDefaultEncryptionConfigurationRequest"))

(smithy/sdk/shapes:define-output put-default-encryption-configuration-response
                                 common-lisp:nil
                                 ((configuration-status :target-type
                                   configuration-status :required common-lisp:t
                                   :member-name "configurationStatus")
                                  (encryption-type :target-type encryption-type
                                   :required common-lisp:t :member-name
                                   "encryptionType")
                                  (kms-key-arn :target-type kms-key-arn
                                   :member-name "kmsKeyArn"))
                                 (:shape-name
                                  "PutDefaultEncryptionConfigurationResponse"))

(smithy/sdk/shapes:define-input put-hub-configuration-request common-lisp:nil
                                ((hub-token-timer-expiry-setting-in-seconds
                                  :target-type
                                  hub-token-timer-expiry-setting-in-seconds
                                  :required common-lisp:t :member-name
                                  "HubTokenTimerExpirySettingInSeconds"))
                                (:shape-name "PutHubConfigurationRequest"))

(smithy/sdk/shapes:define-output put-hub-configuration-response common-lisp:nil
                                 ((hub-token-timer-expiry-setting-in-seconds
                                   :target-type
                                   hub-token-timer-expiry-setting-in-seconds
                                   :member-name
                                   "HubTokenTimerExpirySettingInSeconds"))
                                 (:shape-name "PutHubConfigurationResponse"))

(smithy/sdk/shapes:define-input put-runtime-log-configuration-request
                                common-lisp:nil
                                ((managed-thing-id :target-type
                                  managed-thing-id :required common-lisp:t
                                  :member-name "ManagedThingId" :http-label
                                  common-lisp:t)
                                 (runtime-log-configurations :target-type
                                  runtime-log-configurations :required
                                  common-lisp:t :member-name
                                  "RuntimeLogConfigurations"))
                                (:shape-name
                                 "PutRuntimeLogConfigurationRequest"))

(smithy/sdk/shapes:define-type queued-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input register-account-association-request
                                common-lisp:nil
                                ((managed-thing-id :target-type
                                  managed-thing-id :required common-lisp:t
                                  :member-name "ManagedThingId")
                                 (account-association-id :target-type
                                  account-association-id :required
                                  common-lisp:t :member-name
                                  "AccountAssociationId")
                                 (device-discovery-id :target-type
                                  device-discovery-id :required common-lisp:t
                                  :member-name "DeviceDiscoveryId"))
                                (:shape-name
                                 "RegisterAccountAssociationRequest"))

(smithy/sdk/shapes:define-output register-account-association-response
                                 common-lisp:nil
                                 ((account-association-id :target-type
                                   account-association-id :member-name
                                   "AccountAssociationId")
                                  (device-discovery-id :target-type
                                   device-discovery-id :member-name
                                   "DeviceDiscoveryId")
                                  (managed-thing-id :target-type
                                   managed-thing-id :member-name
                                   "ManagedThingId"))
                                 (:shape-name
                                  "RegisterAccountAssociationResponse"))

(smithy/sdk/shapes:define-input register-custom-endpoint-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "RegisterCustomEndpointRequest"))

(smithy/sdk/shapes:define-output register-custom-endpoint-response
                                 common-lisp:nil
                                 ((endpoint-address :target-type
                                   endpoint-address :required common-lisp:t
                                   :member-name "EndpointAddress"))
                                 (:shape-name "RegisterCustomEndpointResponse"))

(smithy/sdk/shapes:define-input reset-runtime-log-configuration-request
                                common-lisp:nil
                                ((managed-thing-id :target-type
                                  managed-thing-id :required common-lisp:t
                                  :member-name "ManagedThingId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "ResetRuntimeLogConfigurationRequest"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message")
                                 (resource-id :target-type error-resource-id
                                  :member-name "ResourceId")
                                 (resource-type :target-type
                                  error-resource-type :member-name
                                  "ResourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class iot-managed-integrations-error))

(smithy/sdk/shapes:define-type retry-attempt smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure retry-config-criteria common-lisp:nil
                                    ((failure-type :target-type
                                      retry-criteria-failure-type :member-name
                                      "FailureType")
                                     (min-number-of-retries :target-type
                                      min-number-of-retries :member-name
                                      "MinNumberOfRetries"))
                                    (:shape-name "RetryConfigCriteria"))

(smithy/sdk/shapes:define-list retry-config-criteria-list :member
                               retry-config-criteria)

(smithy/sdk/shapes:define-enum retry-criteria-failure-type
    common-lisp:nil
  (:failed "FAILED")
  (:timed-out "TIMED_OUT")
  (:all "ALL"))

(smithy/sdk/shapes:define-enum role
    common-lisp:nil
  (:controller "CONTROLLER")
  (:device "DEVICE"))

(smithy/sdk/shapes:define-structure rollout-rate-increase-criteria
                                    common-lisp:nil
                                    ((number-of-notified-things :target-type
                                      number-of-notified-things :member-name
                                      "numberOfNotifiedThings")
                                     (number-of-succeeded-things :target-type
                                      number-of-succeeded-things :member-name
                                      "numberOfSucceededThings"))
                                    (:shape-name "RolloutRateIncreaseCriteria"))

common-lisp:nil

(smithy/sdk/shapes:define-structure runtime-log-configurations common-lisp:nil
                                    ((log-level :target-type log-level
                                      :member-name "LogLevel")
                                     (log-flush-level :target-type log-level
                                      :member-name "LogFlushLevel")
                                     (local-store-location :target-type
                                      local-store-location :member-name
                                      "LocalStoreLocation")
                                     (local-store-file-rotation-max-files
                                      :target-type
                                      local-store-file-rotation-max-files
                                      :member-name
                                      "LocalStoreFileRotationMaxFiles")
                                     (local-store-file-rotation-max-bytes
                                      :target-type
                                      local-store-file-rotation-max-bytes
                                      :member-name
                                      "LocalStoreFileRotationMaxBytes")
                                     (upload-log :target-type upload-log
                                      :member-name "UploadLog")
                                     (upload-period-minutes :target-type
                                      upload-period-minutes :member-name
                                      "UploadPeriodMinutes")
                                     (delete-local-store-after-upload
                                      :target-type
                                      delete-local-store-after-upload
                                      :member-name
                                      "DeleteLocalStoreAfterUpload"))
                                    (:shape-name "RuntimeLogConfigurations"))

(smithy/sdk/shapes:define-type s3url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure schedule-maintenance-window common-lisp:nil
                                    ((duration-in-minutes :target-type
                                      duration-in-minutes :member-name
                                      "DurationInMinutes")
                                     (start-time :target-type start-time
                                      :member-name "StartTime"))
                                    (:shape-name "ScheduleMaintenanceWindow"))

(smithy/sdk/shapes:define-list schedule-maintenance-window-list :member
                               schedule-maintenance-window)

(smithy/sdk/shapes:define-type schedule-start-time
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum scheduling-config-end-behavior
    common-lisp:nil
  (:stop-rollout "STOP_ROLLOUT")
  (:cancel "CANCEL")
  (:force-cancel "FORCE_CANCEL"))

(smithy/sdk/shapes:define-type schema-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type schema-version-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum schema-version-format
    common-lisp:nil
  (:aws "AWS")
  (:zcl "ZCL")
  (:connector "CONNECTOR"))

(smithy/sdk/shapes:define-list schema-version-list :member
                               schema-version-list-item)

(smithy/sdk/shapes:define-structure schema-version-list-item common-lisp:nil
                                    ((schema-id :target-type schema-id
                                      :member-name "SchemaId")
                                     (type :target-type schema-version-type
                                      :member-name "Type")
                                     (description :target-type
                                      schema-version-description :member-name
                                      "Description")
                                     (namespace :target-type
                                      schema-version-namespace-name
                                      :member-name "Namespace")
                                     (semantic-version :target-type
                                      schema-version-version :member-name
                                      "SemanticVersion")
                                     (visibility :target-type
                                      schema-version-visibility :member-name
                                      "Visibility"))
                                    (:shape-name "SchemaVersionListItem"))

(smithy/sdk/shapes:define-type schema-version-namespace-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type schema-version-schema
                               smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-enum schema-version-type
    common-lisp:nil
  (:capability "capability")
  (:definition "definition"))

(smithy/sdk/shapes:define-type schema-version-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum schema-version-visibility
    common-lisp:nil
  (:public "PUBLIC")
  (:private "PRIVATE"))

(smithy/sdk/shapes:define-type schema-versioned-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure secrets-manager common-lisp:nil
                                    ((arn :target-type secrets-manager-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (version-id :target-type
                                      secrets-manager-version-id :required
                                      common-lisp:t :member-name "versionId"))
                                    (:shape-name "SecretsManager"))

(smithy/sdk/shapes:define-type secrets-manager-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type secrets-manager-version-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input send-connector-event-request common-lisp:nil
                                ((connector-id :target-type connector-id
                                  :required common-lisp:t :member-name
                                  "ConnectorId" :http-label common-lisp:t)
                                 (user-id :target-type third-party-user-id
                                  :member-name "UserId")
                                 (operation :target-type
                                  connector-event-operation :required
                                  common-lisp:t :member-name "Operation")
                                 (operation-version :target-type
                                  connector-event-operation-version
                                  :member-name "OperationVersion")
                                 (status-code :target-type
                                  connector-event-status-code :member-name
                                  "StatusCode")
                                 (message :target-type connector-event-message
                                  :member-name "Message")
                                 (device-discovery-id :target-type
                                  device-discovery-id :member-name
                                  "DeviceDiscoveryId")
                                 (connector-device-id :target-type
                                  connector-device-id :member-name
                                  "ConnectorDeviceId")
                                 (trace-id :target-type trace-id :member-name
                                  "TraceId")
                                 (devices :target-type devices :member-name
                                  "Devices")
                                 (matter-endpoint :target-type matter-endpoint
                                  :member-name "MatterEndpoint"))
                                (:shape-name "SendConnectorEventRequest"))

(smithy/sdk/shapes:define-output send-connector-event-response common-lisp:nil
                                 ((connector-id :target-type connector-id
                                   :required common-lisp:t :member-name
                                   "ConnectorId"))
                                 (:shape-name "SendConnectorEventResponse"))

(smithy/sdk/shapes:define-input send-managed-thing-command-request
                                common-lisp:nil
                                ((managed-thing-id :target-type
                                  managed-thing-id :required common-lisp:t
                                  :member-name "ManagedThingId" :http-label
                                  common-lisp:t)
                                 (endpoints :target-type command-endpoints
                                  :required common-lisp:t :member-name
                                  "Endpoints")
                                 (connector-association-id :target-type
                                  connector-association-id :member-name
                                  "ConnectorAssociationId")
                                 (account-association-id :target-type
                                  account-association-id :member-name
                                  "AccountAssociationId"))
                                (:shape-name "SendManagedThingCommandRequest"))

(smithy/sdk/shapes:define-output send-managed-thing-command-response
                                 common-lisp:nil
                                 ((trace-id :target-type trace-id :member-name
                                   "TraceId"))
                                 (:shape-name
                                  "SendManagedThingCommandResponse"))

(smithy/sdk/shapes:define-type serial-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402)
                                (:base-class iot-managed-integrations-error))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503)
                                (:base-class iot-managed-integrations-error))

(smithy/sdk/shapes:define-type setup-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type smart-home-resource-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type smart-home-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type spec-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-account-association-refresh-request
                                common-lisp:nil
                                ((account-association-id :target-type
                                  account-association-id :required
                                  common-lisp:t :member-name
                                  "AccountAssociationId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "StartAccountAssociationRefreshRequest"))

(smithy/sdk/shapes:define-output start-account-association-refresh-response
                                 common-lisp:nil
                                 ((oauth-authorization-url :target-type
                                   oauth-authorization-url :required
                                   common-lisp:t :member-name
                                   "OAuthAuthorizationUrl"))
                                 (:shape-name
                                  "StartAccountAssociationRefreshResponse"))

(smithy/sdk/shapes:define-input start-device-discovery-request common-lisp:nil
                                ((discovery-type :target-type discovery-type
                                  :required common-lisp:t :member-name
                                  "DiscoveryType")
                                 (custom-protocol-detail :target-type
                                  custom-protocol-detail :member-name
                                  "CustomProtocolDetail")
                                 (controller-identifier :target-type
                                  managed-thing-id :member-name
                                  "ControllerIdentifier")
                                 (connector-association-identifier :target-type
                                  connector-association-id :member-name
                                  "ConnectorAssociationIdentifier")
                                 (account-association-id :target-type
                                  account-association-id :member-name
                                  "AccountAssociationId")
                                 (authentication-material :target-type
                                  discovery-auth-material-string :member-name
                                  "AuthenticationMaterial")
                                 (authentication-material-type :target-type
                                  discovery-auth-material-type :member-name
                                  "AuthenticationMaterialType")
                                 (client-token :target-type client-token
                                  :member-name "ClientToken")
                                 (tags :target-type tags-map :member-name
                                  "Tags"))
                                (:shape-name "StartDeviceDiscoveryRequest"))

(smithy/sdk/shapes:define-output start-device-discovery-response
                                 common-lisp:nil
                                 ((id :target-type device-discovery-id
                                   :member-name "Id")
                                  (started-at :target-type discovery-started-at
                                   :member-name "StartedAt"))
                                 (:shape-name "StartDeviceDiscoveryResponse"))

(smithy/sdk/shapes:define-type start-time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type started-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list state-capabilities :member state-capability)

(smithy/sdk/shapes:define-structure state-capability common-lisp:nil
                                    ((id :target-type schema-versioned-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (name :target-type capability-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (version :target-type capability-version
                                      :required common-lisp:t :member-name
                                      "version")
                                     (properties :target-type
                                      capability-properties :member-name
                                      "properties"))
                                    (:shape-name "StateCapability"))

(smithy/sdk/shapes:define-structure state-endpoint common-lisp:nil
                                    ((endpoint-id :target-type endpoint-id
                                      :required common-lisp:t :member-name
                                      "endpointId")
                                     (capabilities :target-type
                                      state-capabilities :required
                                      common-lisp:t :member-name
                                      "capabilities"))
                                    (:shape-name "StateEndpoint"))

(smithy/sdk/shapes:define-list state-endpoints :member state-endpoint)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  io-tmanaged-integrations-resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t)
                                 (tags :target-type tags-map :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-list target :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure task-processing-details common-lisp:nil
                                    ((number-of-canceled-things :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "NumberOfCanceledThings")
                                     (number-of-failed-things :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "NumberOfFailedThings")
                                     (number-of-in-progress-things :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "NumberOfInProgressThings")
                                     (number-of-queued-things :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "numberOfQueuedThings")
                                     (number-of-rejected-things :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "numberOfRejectedThings")
                                     (number-of-removed-things :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "numberOfRemovedThings")
                                     (number-of-succeeded-things :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "numberOfSucceededThings")
                                     (number-of-timed-out-things :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "numberOfTimedOutThings")
                                     (processing-targets :target-type target
                                      :member-name "processingTargets"))
                                    (:shape-name "TaskProcessingDetails"))

(smithy/sdk/shapes:define-type third-party-user-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type threshold-percentage
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class iot-managed-integrations-error))

(smithy/sdk/shapes:define-enum token-endpoint-authentication-scheme
    common-lisp:nil
  (:http-basic "HTTP_BASIC")
  (:request-body-credentials "REQUEST_BODY_CREDENTIALS"))

(smithy/sdk/shapes:define-type token-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type trace-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401)
                                (:base-class iot-managed-integrations-error))

(smithy/sdk/shapes:define-type universal-product-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  io-tmanaged-integrations-resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-account-association-request
                                common-lisp:nil
                                ((account-association-id :target-type
                                  account-association-id :required
                                  common-lisp:t :member-name
                                  "AccountAssociationId" :http-label
                                  common-lisp:t)
                                 (name :target-type account-association-name
                                  :member-name "Name")
                                 (description :target-type
                                  account-association-description :member-name
                                  "Description"))
                                (:shape-name "UpdateAccountAssociationRequest"))

(smithy/sdk/shapes:define-input update-cloud-connector-request common-lisp:nil
                                ((identifier :target-type cloud-connector-id
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t)
                                 (name :target-type display-name :member-name
                                  "Name")
                                 (description :target-type
                                  cloud-connector-description :member-name
                                  "Description"))
                                (:shape-name "UpdateCloudConnectorRequest"))

(smithy/sdk/shapes:define-input update-connector-destination-request
                                common-lisp:nil
                                ((identifier :target-type
                                  connector-destination-id :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (description :target-type
                                  connector-destination-description
                                  :member-name "Description")
                                 (name :target-type connector-destination-name
                                  :member-name "Name")
                                 (auth-type :target-type auth-type :member-name
                                  "AuthType")
                                 (auth-config :target-type auth-config-update
                                  :member-name "AuthConfig")
                                 (secrets-manager :target-type secrets-manager
                                  :member-name "SecretsManager"))
                                (:shape-name
                                 "UpdateConnectorDestinationRequest"))

(smithy/sdk/shapes:define-input update-destination-request common-lisp:nil
                                ((name :target-type destination-name :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (delivery-destination-arn :target-type
                                  delivery-destination-arn :member-name
                                  "DeliveryDestinationArn")
                                 (delivery-destination-type :target-type
                                  delivery-destination-type :member-name
                                  "DeliveryDestinationType")
                                 (role-arn :target-type
                                  delivery-destination-role-arn :member-name
                                  "RoleArn")
                                 (description :target-type
                                  destination-description :member-name
                                  "Description"))
                                (:shape-name "UpdateDestinationRequest"))

(smithy/sdk/shapes:define-input update-event-log-configuration-request
                                common-lisp:nil
                                ((id :target-type log-configuration-id
                                  :required common-lisp:t :member-name "Id"
                                  :http-label common-lisp:t)
                                 (event-log-level :target-type log-level
                                  :required common-lisp:t :member-name
                                  "EventLogLevel"))
                                (:shape-name
                                 "UpdateEventLogConfigurationRequest"))

(smithy/sdk/shapes:define-input update-managed-thing-request common-lisp:nil
                                ((identifier :target-type managed-thing-id
                                  :required common-lisp:t :member-name
                                  "Identifier" :http-label common-lisp:t)
                                 (owner :target-type owner :member-name
                                  "Owner")
                                 (credential-locker-id :target-type
                                  credential-locker-id :member-name
                                  "CredentialLockerId")
                                 (serial-number :target-type serial-number
                                  :member-name "SerialNumber")
                                 (brand :target-type brand :member-name
                                  "Brand")
                                 (model :target-type model :member-name
                                  "Model")
                                 (name :target-type name :member-name "Name")
                                 (capability-report :target-type
                                  capability-report :member-name
                                  "CapabilityReport")
                                 (capability-schemas :target-type
                                  capability-schemas :member-name
                                  "CapabilitySchemas")
                                 (capabilities :target-type capabilities
                                  :member-name "Capabilities")
                                 (classification :target-type classification
                                  :member-name "Classification")
                                 (hub-network-mode :target-type
                                  hub-network-mode :member-name
                                  "HubNetworkMode")
                                 (meta-data :target-type meta-data :member-name
                                  "MetaData"))
                                (:shape-name "UpdateManagedThingRequest"))

(smithy/sdk/shapes:define-input update-notification-configuration-request
                                common-lisp:nil
                                ((event-type :target-type event-type :required
                                  common-lisp:t :member-name "EventType"
                                  :http-label common-lisp:t)
                                 (destination-name :target-type
                                  destination-name :required common-lisp:t
                                  :member-name "DestinationName"))
                                (:shape-name
                                 "UpdateNotificationConfigurationRequest"))

(smithy/sdk/shapes:define-input update-ota-task-request common-lisp:nil
                                ((identifier :target-type ota-task-id :required
                                  common-lisp:t :member-name "Identifier"
                                  :http-label common-lisp:t)
                                 (description :target-type ota-description
                                  :member-name "Description")
                                 (task-configuration-id :target-type
                                  ota-task-configuration-id :member-name
                                  "TaskConfigurationId"))
                                (:shape-name "UpdateOtaTaskRequest"))

(smithy/sdk/shapes:define-type updated-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type upload-log smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type upload-period-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class iot-managed-integrations-error))

(smithy/sdk/shapes:define-type validation-schema
                               smithy/sdk/smithy-types:document)

(smithy/sdk/operation:define-operation create-account-association :shape-name
                                       "CreateAccountAssociation" :input
                                       create-account-association-request
                                       :output
                                       create-account-association-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/account-associations" :code 201)

(smithy/sdk/operation:define-operation create-cloud-connector :shape-name
                                       "CreateCloudConnector" :input
                                       create-cloud-connector-request :output
                                       create-cloud-connector-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/cloud-connectors"
                                       :code 201)

(smithy/sdk/operation:define-operation create-connector-destination :shape-name
                                       "CreateConnectorDestination" :input
                                       create-connector-destination-request
                                       :output
                                       create-connector-destination-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/connector-destinations" :code 201)

(smithy/sdk/operation:define-operation create-credential-locker :shape-name
                                       "CreateCredentialLocker" :input
                                       create-credential-locker-request :output
                                       create-credential-locker-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/credential-lockers" :code 201)

(smithy/sdk/operation:define-operation create-destination :shape-name
                                       "CreateDestination" :input
                                       create-destination-request :output
                                       create-destination-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/destinations"
                                       :code 201)

(smithy/sdk/operation:define-operation create-event-log-configuration
                                       :shape-name
                                       "CreateEventLogConfiguration" :input
                                       create-event-log-configuration-request
                                       :output
                                       create-event-log-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/event-log-configurations" :code 201)

(smithy/sdk/operation:define-operation create-managed-thing :shape-name
                                       "CreateManagedThing" :input
                                       create-managed-thing-request :output
                                       create-managed-thing-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/managed-things"
                                       :code 201)

(smithy/sdk/operation:define-operation create-notification-configuration
                                       :shape-name
                                       "CreateNotificationConfiguration" :input
                                       create-notification-configuration-request
                                       :output
                                       create-notification-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/notification-configurations" :code 201)

(smithy/sdk/operation:define-operation create-ota-task :shape-name
                                       "CreateOtaTask" :input
                                       create-ota-task-request :output
                                       create-ota-task-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/ota-tasks" :code
                                       201)

(smithy/sdk/operation:define-operation create-ota-task-configuration
                                       :shape-name "CreateOtaTaskConfiguration"
                                       :input
                                       create-ota-task-configuration-request
                                       :output
                                       create-ota-task-configuration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ota-task-configurations" :code 201)

(smithy/sdk/operation:define-operation create-provisioning-profile :shape-name
                                       "CreateProvisioningProfile" :input
                                       create-provisioning-profile-request
                                       :output
                                       create-provisioning-profile-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/provisioning-profiles" :code 201)

(smithy/sdk/operation:define-operation delete-account-association :shape-name
                                       "DeleteAccountAssociation" :input
                                       delete-account-association-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/account-associations/{AccountAssociationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-cloud-connector :shape-name
                                       "DeleteCloudConnector" :input
                                       delete-cloud-connector-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/cloud-connectors/{Identifier}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-connector-destination :shape-name
                                       "DeleteConnectorDestination" :input
                                       delete-connector-destination-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/connector-destinations/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-credential-locker :shape-name
                                       "DeleteCredentialLocker" :input
                                       delete-credential-locker-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/credential-lockers/{Identifier}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-destination :shape-name
                                       "DeleteDestination" :input
                                       delete-destination-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/destinations/{Name}" :code 200)

(smithy/sdk/operation:define-operation delete-event-log-configuration
                                       :shape-name
                                       "DeleteEventLogConfiguration" :input
                                       delete-event-log-configuration-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/event-log-configurations/{Id}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-managed-thing :shape-name
                                       "DeleteManagedThing" :input
                                       delete-managed-thing-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/managed-things/{Identifier}" :code 204)

(smithy/sdk/operation:define-operation delete-notification-configuration
                                       :shape-name
                                       "DeleteNotificationConfiguration" :input
                                       delete-notification-configuration-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/notification-configurations/{EventType}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-ota-task :shape-name
                                       "DeleteOtaTask" :input
                                       delete-ota-task-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/ota-tasks/{Identifier}" :code 200)

(smithy/sdk/operation:define-operation delete-ota-task-configuration
                                       :shape-name "DeleteOtaTaskConfiguration"
                                       :input
                                       delete-ota-task-configuration-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/ota-task-configurations/{Identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-provisioning-profile :shape-name
                                       "DeleteProvisioningProfile" :input
                                       delete-provisioning-profile-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/provisioning-profiles/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation deregister-account-association
                                       :shape-name
                                       "DeregisterAccountAssociation" :input
                                       deregister-account-association-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/managed-thing-associations/deregister"
                                       :code 200)

(smithy/sdk/operation:define-operation get-account-association :shape-name
                                       "GetAccountAssociation" :input
                                       get-account-association-request :output
                                       get-account-association-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/account-associations/{AccountAssociationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-cloud-connector :shape-name
                                       "GetCloudConnector" :input
                                       get-cloud-connector-request :output
                                       get-cloud-connector-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/cloud-connectors/{Identifier}" :code
                                       200)

(smithy/sdk/operation:define-operation get-connector-destination :shape-name
                                       "GetConnectorDestination" :input
                                       get-connector-destination-request
                                       :output
                                       get-connector-destination-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/connector-destinations/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-credential-locker :shape-name
                                       "GetCredentialLocker" :input
                                       get-credential-locker-request :output
                                       get-credential-locker-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/credential-lockers/{Identifier}" :code
                                       200)

(smithy/sdk/operation:define-operation get-custom-endpoint :shape-name
                                       "GetCustomEndpoint" :input
                                       get-custom-endpoint-request :output
                                       get-custom-endpoint-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri "/custom-endpoint"
                                       :code 200)

(smithy/sdk/operation:define-operation get-default-encryption-configuration
                                       :shape-name
                                       "GetDefaultEncryptionConfiguration"
                                       :input
                                       get-default-encryption-configuration-request
                                       :output
                                       get-default-encryption-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-failure-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/configuration/account/encryption"
                                       :code 200)

(smithy/sdk/operation:define-operation get-destination :shape-name
                                       "GetDestination" :input
                                       get-destination-request :output
                                       get-destination-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/destinations/{Name}" :code 200)

(smithy/sdk/operation:define-operation get-device-discovery :shape-name
                                       "GetDeviceDiscovery" :input
                                       get-device-discovery-request :output
                                       get-device-discovery-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/device-discoveries/{Identifier}" :code
                                       200)

(smithy/sdk/operation:define-operation get-event-log-configuration :shape-name
                                       "GetEventLogConfiguration" :input
                                       get-event-log-configuration-request
                                       :output
                                       get-event-log-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/event-log-configurations/{Id}" :code
                                       200)

(smithy/sdk/operation:define-operation get-hub-configuration :shape-name
                                       "GetHubConfiguration" :input
                                       get-hub-configuration-request :output
                                       get-hub-configuration-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/hub-configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation get-managed-thing :shape-name
                                       "GetManagedThing" :input
                                       get-managed-thing-request :output
                                       get-managed-thing-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/managed-things/{Identifier}" :code 200)

(smithy/sdk/operation:define-operation get-managed-thing-capabilities
                                       :shape-name
                                       "GetManagedThingCapabilities" :input
                                       get-managed-thing-capabilities-request
                                       :output
                                       get-managed-thing-capabilities-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/managed-things-capabilities/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-managed-thing-connectivity-data
                                       :shape-name
                                       "GetManagedThingConnectivityData" :input
                                       get-managed-thing-connectivity-data-request
                                       :output
                                       get-managed-thing-connectivity-data-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/managed-things-connectivity-data/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-managed-thing-meta-data :shape-name
                                       "GetManagedThingMetaData" :input
                                       get-managed-thing-meta-data-request
                                       :output
                                       get-managed-thing-meta-data-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/managed-things-metadata/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-managed-thing-state :shape-name
                                       "GetManagedThingState" :input
                                       get-managed-thing-state-request :output
                                       get-managed-thing-state-response :errors
                                       (access-denied-exception
                                        internal-failure-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/managed-thing-states/{ManagedThingId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-notification-configuration
                                       :shape-name
                                       "GetNotificationConfiguration" :input
                                       get-notification-configuration-request
                                       :output
                                       get-notification-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/notification-configurations/{EventType}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-ota-task :shape-name "GetOtaTask"
                                       :input get-ota-task-request :output
                                       get-ota-task-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/ota-tasks/{Identifier}" :code 200)

(smithy/sdk/operation:define-operation get-ota-task-configuration :shape-name
                                       "GetOtaTaskConfiguration" :input
                                       get-ota-task-configuration-request
                                       :output
                                       get-ota-task-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/ota-task-configurations/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-provisioning-profile :shape-name
                                       "GetProvisioningProfile" :input
                                       get-provisioning-profile-request :output
                                       get-provisioning-profile-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/provisioning-profiles/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-runtime-log-configuration
                                       :shape-name "GetRuntimeLogConfiguration"
                                       :input
                                       get-runtime-log-configuration-request
                                       :output
                                       get-runtime-log-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/runtime-log-configurations/{ManagedThingId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-schema-version :shape-name
                                       "GetSchemaVersion" :input
                                       get-schema-version-request :output
                                       get-schema-version-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/schema-versions/{Type}/{SchemaVersionedId}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-account-associations :shape-name
                                       "ListAccountAssociations" :input
                                       list-account-associations-request
                                       :output
                                       list-account-associations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/account-associations" :code 200)

(smithy/sdk/operation:define-operation list-cloud-connectors :shape-name
                                       "ListCloudConnectors" :input
                                       list-cloud-connectors-request :output
                                       list-cloud-connectors-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/cloud-connectors"
                                       :code 200)

(smithy/sdk/operation:define-operation list-connector-destinations :shape-name
                                       "ListConnectorDestinations" :input
                                       list-connector-destinations-request
                                       :output
                                       list-connector-destinations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/connector-destinations" :code 200)

(smithy/sdk/operation:define-operation list-credential-lockers :shape-name
                                       "ListCredentialLockers" :input
                                       list-credential-lockers-request :output
                                       list-credential-lockers-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/credential-lockers"
                                       :code 200)

(smithy/sdk/operation:define-operation list-destinations :shape-name
                                       "ListDestinations" :input
                                       list-destinations-request :output
                                       list-destinations-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/destinations" :code
                                       200)

(smithy/sdk/operation:define-operation list-device-discoveries :shape-name
                                       "ListDeviceDiscoveries" :input
                                       list-device-discoveries-request :output
                                       list-device-discoveries-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri "/device-discoveries"
                                       :code 200)

(smithy/sdk/operation:define-operation list-discovered-devices :shape-name
                                       "ListDiscoveredDevices" :input
                                       list-discovered-devices-request :output
                                       list-discovered-devices-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/device-discoveries/{Identifier}/devices"
                                       :code 200)

(smithy/sdk/operation:define-operation list-event-log-configurations
                                       :shape-name "ListEventLogConfigurations"
                                       :input
                                       list-event-log-configurations-request
                                       :output
                                       list-event-log-configurations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/event-log-configurations" :code 200)

(smithy/sdk/operation:define-operation list-managed-thing-account-associations
                                       :shape-name
                                       "ListManagedThingAccountAssociations"
                                       :input
                                       list-managed-thing-account-associations-request
                                       :output
                                       list-managed-thing-account-associations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/managed-thing-associations" :code 200)

(smithy/sdk/operation:define-operation list-managed-thing-schemas :shape-name
                                       "ListManagedThingSchemas" :input
                                       list-managed-thing-schemas-request
                                       :output
                                       list-managed-thing-schemas-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/managed-thing-schemas/{Identifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-managed-things :shape-name
                                       "ListManagedThings" :input
                                       list-managed-things-request :output
                                       list-managed-things-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri "/managed-things"
                                       :code 200)

(smithy/sdk/operation:define-operation list-notification-configurations
                                       :shape-name
                                       "ListNotificationConfigurations" :input
                                       list-notification-configurations-request
                                       :output
                                       list-notification-configurations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/notification-configurations" :code 200)

(smithy/sdk/operation:define-operation list-ota-task-configurations :shape-name
                                       "ListOtaTaskConfigurations" :input
                                       list-ota-task-configurations-request
                                       :output
                                       list-ota-task-configurations-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/ota-task-configurations" :code 200)

(smithy/sdk/operation:define-operation list-ota-task-executions :shape-name
                                       "ListOtaTaskExecutions" :input
                                       list-ota-task-executions-request :output
                                       list-ota-task-executions-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/ota-tasks/{Identifier}/devices" :code
                                       200)

(smithy/sdk/operation:define-operation list-ota-tasks :shape-name
                                       "ListOtaTasks" :input
                                       list-ota-tasks-request :output
                                       list-ota-tasks-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/ota-tasks" :code
                                       200)

(smithy/sdk/operation:define-operation list-provisioning-profiles :shape-name
                                       "ListProvisioningProfiles" :input
                                       list-provisioning-profiles-request
                                       :output
                                       list-provisioning-profiles-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/provisioning-profiles" :code 200)

(smithy/sdk/operation:define-operation list-schema-versions :shape-name
                                       "ListSchemaVersions" :input
                                       list-schema-versions-request :output
                                       list-schema-versions-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/schema-versions/{Type}" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}")

(smithy/sdk/operation:define-operation put-default-encryption-configuration
                                       :shape-name
                                       "PutDefaultEncryptionConfiguration"
                                       :input
                                       put-default-encryption-configuration-request
                                       :output
                                       put-default-encryption-configuration-response
                                       :errors
                                       (access-denied-exception
                                        internal-failure-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/configuration/account/encryption"
                                       :code 201)

(smithy/sdk/operation:define-operation put-hub-configuration :shape-name
                                       "PutHubConfiguration" :input
                                       put-hub-configuration-request :output
                                       put-hub-configuration-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/hub-configuration"
                                       :code 201)

(smithy/sdk/operation:define-operation put-runtime-log-configuration
                                       :shape-name "PutRuntimeLogConfiguration"
                                       :input
                                       put-runtime-log-configuration-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/runtime-log-configurations/{ManagedThingId}"
                                       :code 200)

(smithy/sdk/operation:define-operation register-account-association :shape-name
                                       "RegisterAccountAssociation" :input
                                       register-account-association-request
                                       :output
                                       register-account-association-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/managed-thing-associations/register"
                                       :code 201)

(smithy/sdk/operation:define-operation register-custom-endpoint :shape-name
                                       "RegisterCustomEndpoint" :input
                                       register-custom-endpoint-request :output
                                       register-custom-endpoint-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri "/custom-endpoint"
                                       :code 201)

(smithy/sdk/operation:define-operation reset-runtime-log-configuration
                                       :shape-name
                                       "ResetRuntimeLogConfiguration" :input
                                       reset-runtime-log-configuration-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/runtime-log-configurations/{ManagedThingId}"
                                       :code 200)

(smithy/sdk/operation:define-operation send-connector-event :shape-name
                                       "SendConnectorEvent" :input
                                       send-connector-event-request :output
                                       send-connector-event-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/connector-event/{ConnectorId}" :code
                                       202)

(smithy/sdk/operation:define-operation send-managed-thing-command :shape-name
                                       "SendManagedThingCommand" :input
                                       send-managed-thing-command-request
                                       :output
                                       send-managed-thing-command-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/managed-things-command/{ManagedThingId}"
                                       :code 202)

(smithy/sdk/operation:define-operation start-account-association-refresh
                                       :shape-name
                                       "StartAccountAssociationRefresh" :input
                                       start-account-association-refresh-request
                                       :output
                                       start-account-association-refresh-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/account-associations/{AccountAssociationId}/refresh"
                                       :code 200)

(smithy/sdk/operation:define-operation start-device-discovery :shape-name
                                       "StartDeviceDiscovery" :input
                                       start-device-discovery-request :output
                                       start-device-discovery-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/device-discoveries" :code 201)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (conflict-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (conflict-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}")

(smithy/sdk/operation:define-operation update-account-association :shape-name
                                       "UpdateAccountAssociation" :input
                                       update-account-association-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/account-associations/{AccountAssociationId}"
                                       :code 204)

(smithy/sdk/operation:define-operation update-cloud-connector :shape-name
                                       "UpdateCloudConnector" :input
                                       update-cloud-connector-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/cloud-connectors/{Identifier}" :code
                                       200)

(smithy/sdk/operation:define-operation update-connector-destination :shape-name
                                       "UpdateConnectorDestination" :input
                                       update-connector-destination-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/connector-destinations/{Identifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation update-destination :shape-name
                                       "UpdateDestination" :input
                                       update-destination-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/destinations/{Name}" :code 201)

(smithy/sdk/operation:define-operation update-event-log-configuration
                                       :shape-name
                                       "UpdateEventLogConfiguration" :input
                                       update-event-log-configuration-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/event-log-configurations/{Id}" :code
                                       200)

(smithy/sdk/operation:define-operation update-managed-thing :shape-name
                                       "UpdateManagedThing" :input
                                       update-managed-thing-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/managed-things/{Identifier}" :code 204)

(smithy/sdk/operation:define-operation update-notification-configuration
                                       :shape-name
                                       "UpdateNotificationConfiguration" :input
                                       update-notification-configuration-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/notification-configurations/{EventType}"
                                       :code 201)

(smithy/sdk/operation:define-operation update-ota-task :shape-name
                                       "UpdateOtaTask" :input
                                       update-ota-task-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/ota-tasks/{Identifier}" :code 204)
