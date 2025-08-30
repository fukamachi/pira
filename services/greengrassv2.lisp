(uiop/package:define-package #:pira/greengrassv2 (:use)
                             (:export #:access-denied-exception
                              #:associate-client-device-with-core-device-entry
                              #:associate-client-device-with-core-device-entry-list
                              #:associate-client-device-with-core-device-error-entry
                              #:associate-client-device-with-core-device-error-list
                              #:associate-service-role-to-account
                              #:associated-client-device
                              #:associated-client-device-list
                              #:batch-associate-client-device-with-core-device
                              #:batch-disassociate-client-device-from-core-device
                              #:cpu #:cancel-deployment #:client-token-string
                              #:cloud-component-state #:cloud-component-status
                              #:component #:component-arn #:component-candidate
                              #:component-candidate-list
                              #:component-configuration-path
                              #:component-configuration-path-list
                              #:component-configuration-string
                              #:component-configuration-update
                              #:component-dependency-map
                              #:component-dependency-requirement
                              #:component-dependency-type
                              #:component-deployment-specification
                              #:component-deployment-specifications
                              #:component-latest-version #:component-list
                              #:component-name-string #:component-platform
                              #:component-platform-list #:component-run-with
                              #:component-version-arn #:component-version-list
                              #:component-version-list-item
                              #:component-version-requirement-map
                              #:component-version-string
                              #:component-visibility-scope #:conflict-exception
                              #:connectivity-info #:core-device
                              #:core-device-architecture-string
                              #:core-device-platform-string
                              #:core-device-runtime-string #:core-device-status
                              #:core-device-thing-name #:core-devices-list
                              #:create-component-version #:create-deployment
                              #:default-max-results #:delete-component
                              #:delete-core-device #:delete-deployment
                              #:deployment #:deployment-component-update-policy
                              #:deployment-component-update-policy-action
                              #:deployment-configuration-validation-policy
                              #:deployment-failure-handling-policy
                              #:deployment-history-filter #:deployment-id
                              #:deployment-io-tjob-configuration
                              #:deployment-list #:deployment-name
                              #:deployment-name-string #:deployment-policies
                              #:deployment-status #:describe-component
                              #:description #:description-string
                              #:disassociate-client-device-from-core-device-entry
                              #:disassociate-client-device-from-core-device-entry-list
                              #:disassociate-client-device-from-core-device-error-entry
                              #:disassociate-client-device-from-core-device-error-list
                              #:disassociate-service-role-from-account
                              #:effective-deployment
                              #:effective-deployment-error-code
                              #:effective-deployment-error-stack
                              #:effective-deployment-error-type
                              #:effective-deployment-error-type-list
                              #:effective-deployment-execution-status
                              #:effective-deployment-status-details
                              #:effective-deployments-list #:file-system-path
                              #:ggcversion #:generic-v2arn #:get-component
                              #:get-component-version-artifact
                              #:get-connectivity-info #:get-core-device
                              #:get-deployment #:get-service-role-for-account
                              #:greengrass-v2 #:installed-component
                              #:installed-component-lifecycle-state
                              #:installed-component-lifecycle-status-code
                              #:installed-component-lifecycle-status-code-list
                              #:installed-component-list
                              #:installed-component-topology-filter
                              #:internal-server-exception #:io-tjob-arn
                              #:io-tjob-abort-action #:io-tjob-abort-config
                              #:io-tjob-abort-criteria
                              #:io-tjob-abort-criteria-list
                              #:io-tjob-abort-threshold-percentage
                              #:io-tjob-execution-failure-type
                              #:io-tjob-executions-rollout-config
                              #:io-tjob-exponential-rollout-rate #:io-tjob-id
                              #:io-tjob-in-progress-timeout-in-minutes
                              #:io-tjob-max-executions-per-min
                              #:io-tjob-minimum-number-of-executed-things
                              #:io-tjob-number-of-things
                              #:io-tjob-rate-increase-criteria
                              #:io-tjob-rollout-base-rate-per-minute
                              #:io-tjob-rollout-increment-factor
                              #:io-tjob-timeout-config #:io-tthing-name
                              #:iot-endpoint-type #:is-latest-for-target
                              #:is-root #:lambda-container-params
                              #:lambda-device-list #:lambda-device-mount
                              #:lambda-environment-variables
                              #:lambda-event-source #:lambda-event-source-list
                              #:lambda-event-source-type #:lambda-exec-arg
                              #:lambda-exec-args-list
                              #:lambda-execution-parameters
                              #:lambda-filesystem-permission
                              #:lambda-function-recipe-source
                              #:lambda-input-payload-encoding-type
                              #:lambda-isolation-mode
                              #:lambda-linux-process-params
                              #:lambda-volume-list #:lambda-volume-mount
                              #:lifecycle-state-details
                              #:list-client-devices-associated-with-core-device
                              #:list-component-versions #:list-components
                              #:list-core-devices #:list-deployments
                              #:list-effective-deployments
                              #:list-installed-components
                              #:list-tags-for-resource #:memory
                              #:next-token-string #:non-empty-string
                              #:nullable-string #:optional-boolean
                              #:optional-integer #:platform-attributes-map
                              #:port-number-int #:publisher-string #:reason
                              #:recipe-blob #:recipe-output-format
                              #:request-already-in-progress-exception
                              #:resolve-component-candidates
                              #:resolved-component-version
                              #:resolved-component-versions-list
                              #:resource-not-found-exception
                              #:retry-after-seconds #:s3endpoint-type
                              #:service-quota-exceeded-exception #:string
                              #:string-map #:system-resource-limits #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:target-arn #:thing-group-arn
                              #:throttling-exception #:timestamp #:topic-string
                              #:untag-resource #:update-connectivity-info
                              #:validation-exception
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:vendor-guidance
                              #:connectivity-info-list #:greengrassv2-error))
(common-lisp:in-package #:pira/greengrassv2)

(common-lisp:define-condition greengrassv2-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service greengrass-v2 :shape-name "GreengrassV2"
                                   :version "2020-11-30" :title
                                   "AWS IoT Greengrass V2" :operations
                                   '(associate-service-role-to-account
                                     batch-associate-client-device-with-core-device
                                     batch-disassociate-client-device-from-core-device
                                     cancel-deployment create-component-version
                                     create-deployment delete-component
                                     delete-core-device delete-deployment
                                     describe-component
                                     disassociate-service-role-from-account
                                     get-component
                                     get-component-version-artifact
                                     get-connectivity-info get-core-device
                                     get-deployment
                                     get-service-role-for-account
                                     list-client-devices-associated-with-core-device
                                     list-components list-component-versions
                                     list-core-devices list-deployments
                                     list-effective-deployments
                                     list-installed-components
                                     list-tags-for-resource
                                     resolve-component-candidates tag-resource
                                     untag-resource update-connectivity-info)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "GreengrassV2")
                                      ("arnNamespace" . "greengrass")
                                      ("cloudFormationName" . "GreengrassV2")
                                      ("cloudTrailEventSource"
                                       . "greengrass.amazonaws.com")
                                      ("endpointPrefix" . "greengrass"))
                                     ("aws.auth#sigv4" ("name" . "greengrass"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class greengrassv2-error))

(smithy/sdk/shapes:define-structure
 associate-client-device-with-core-device-entry common-lisp:nil
 ((thing-name :target-type io-tthing-name :required common-lisp:t :member-name
   "thingName"))
 (:shape-name "AssociateClientDeviceWithCoreDeviceEntry"))

(smithy/sdk/shapes:define-list
 associate-client-device-with-core-device-entry-list :member
 associate-client-device-with-core-device-entry)

(smithy/sdk/shapes:define-structure
 associate-client-device-with-core-device-error-entry common-lisp:nil
 ((thing-name :target-type io-tthing-name :member-name "thingName")
  (code :target-type non-empty-string :member-name "code")
  (message :target-type non-empty-string :member-name "message"))
 (:shape-name "AssociateClientDeviceWithCoreDeviceErrorEntry"))

(smithy/sdk/shapes:define-list
 associate-client-device-with-core-device-error-list :member
 associate-client-device-with-core-device-error-entry)

(smithy/sdk/shapes:define-input associate-service-role-to-account-request
                                common-lisp:nil
                                ((role-arn :target-type string :required
                                  common-lisp:t :member-name "roleArn"
                                  :json-name "RoleArn"))
                                (:shape-name
                                 "AssociateServiceRoleToAccountRequest"))

(smithy/sdk/shapes:define-output associate-service-role-to-account-response
                                 common-lisp:nil
                                 ((associated-at :target-type string
                                   :member-name "associatedAt" :json-name
                                   "AssociatedAt"))
                                 (:shape-name
                                  "AssociateServiceRoleToAccountResponse"))

(smithy/sdk/shapes:define-structure associated-client-device common-lisp:nil
                                    ((thing-name :target-type io-tthing-name
                                      :member-name "thingName")
                                     (association-timestamp :target-type
                                      timestamp :member-name
                                      "associationTimestamp"))
                                    (:shape-name "AssociatedClientDevice"))

(smithy/sdk/shapes:define-list associated-client-device-list :member
                               associated-client-device)

(smithy/sdk/shapes:define-input
 batch-associate-client-device-with-core-device-request common-lisp:nil
 ((entries :target-type associate-client-device-with-core-device-entry-list
   :member-name "entries")
  (core-device-thing-name :target-type io-tthing-name :required common-lisp:t
   :member-name "coreDeviceThingName" :http-label common-lisp:t))
 (:shape-name "BatchAssociateClientDeviceWithCoreDeviceRequest"))

(smithy/sdk/shapes:define-output
 batch-associate-client-device-with-core-device-response common-lisp:nil
 ((error-entries :target-type
   associate-client-device-with-core-device-error-list :member-name
   "errorEntries"))
 (:shape-name "BatchAssociateClientDeviceWithCoreDeviceResponse"))

(smithy/sdk/shapes:define-input
 batch-disassociate-client-device-from-core-device-request common-lisp:nil
 ((entries :target-type disassociate-client-device-from-core-device-entry-list
   :member-name "entries")
  (core-device-thing-name :target-type io-tthing-name :required common-lisp:t
   :member-name "coreDeviceThingName" :http-label common-lisp:t))
 (:shape-name "BatchDisassociateClientDeviceFromCoreDeviceRequest"))

(smithy/sdk/shapes:define-output
 batch-disassociate-client-device-from-core-device-response common-lisp:nil
 ((error-entries :target-type
   disassociate-client-device-from-core-device-error-list :member-name
   "errorEntries"))
 (:shape-name "BatchDisassociateClientDeviceFromCoreDeviceResponse"))

(smithy/sdk/shapes:define-type cpu smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-input cancel-deployment-request common-lisp:nil
                                ((deployment-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "deploymentId" :http-label common-lisp:t))
                                (:shape-name "CancelDeploymentRequest"))

(smithy/sdk/shapes:define-output cancel-deployment-response common-lisp:nil
                                 ((message :target-type non-empty-string
                                   :member-name "message"))
                                 (:shape-name "CancelDeploymentResponse"))

(smithy/sdk/shapes:define-type client-token-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum cloud-component-state
    common-lisp:nil
  (:requested "REQUESTED")
  (:initiated "INITIATED")
  (:deployable "DEPLOYABLE")
  (:failed "FAILED")
  (:deprecated "DEPRECATED"))

(smithy/sdk/shapes:define-structure cloud-component-status common-lisp:nil
                                    ((component-state :target-type
                                      cloud-component-state :member-name
                                      "componentState")
                                     (message :target-type non-empty-string
                                      :member-name "message")
                                     (errors :target-type string-map
                                      :member-name "errors")
                                     (vendor-guidance :target-type
                                      vendor-guidance :member-name
                                      "vendorGuidance")
                                     (vendor-guidance-message :target-type
                                      non-empty-string :member-name
                                      "vendorGuidanceMessage"))
                                    (:shape-name "CloudComponentStatus"))

(smithy/sdk/shapes:define-structure component common-lisp:nil
                                    ((arn :target-type component-arn
                                      :member-name "arn")
                                     (component-name :target-type
                                      component-name-string :member-name
                                      "componentName")
                                     (latest-version :target-type
                                      component-latest-version :member-name
                                      "latestVersion"))
                                    (:shape-name "Component"))

(smithy/sdk/shapes:define-type component-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure component-candidate common-lisp:nil
                                    ((component-name :target-type
                                      component-name-string :member-name
                                      "componentName")
                                     (component-version :target-type
                                      component-version-string :member-name
                                      "componentVersion")
                                     (version-requirements :target-type
                                      component-version-requirement-map
                                      :member-name "versionRequirements"))
                                    (:shape-name "ComponentCandidate"))

(smithy/sdk/shapes:define-list component-candidate-list :member
                               component-candidate)

(smithy/sdk/shapes:define-type component-configuration-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list component-configuration-path-list :member
                               component-configuration-path)

(smithy/sdk/shapes:define-type component-configuration-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure component-configuration-update
                                    common-lisp:nil
                                    ((merge :target-type
                                      component-configuration-string
                                      :member-name "merge")
                                     (reset :target-type
                                      component-configuration-path-list
                                      :member-name "reset"))
                                    (:shape-name
                                     "ComponentConfigurationUpdate"))

(smithy/sdk/shapes:define-map component-dependency-map :key non-empty-string
                              :value component-dependency-requirement)

(smithy/sdk/shapes:define-structure component-dependency-requirement
                                    common-lisp:nil
                                    ((version-requirement :target-type
                                      non-empty-string :member-name
                                      "versionRequirement")
                                     (dependency-type :target-type
                                      component-dependency-type :member-name
                                      "dependencyType"))
                                    (:shape-name
                                     "ComponentDependencyRequirement"))

(smithy/sdk/shapes:define-enum component-dependency-type
    common-lisp:nil
  (:hard "HARD")
  (:soft "SOFT"))

(smithy/sdk/shapes:define-structure component-deployment-specification
                                    common-lisp:nil
                                    ((component-version :target-type
                                      component-version-string :required
                                      common-lisp:t :member-name
                                      "componentVersion")
                                     (configuration-update :target-type
                                      component-configuration-update
                                      :member-name "configurationUpdate")
                                     (run-with :target-type component-run-with
                                      :member-name "runWith"))
                                    (:shape-name
                                     "ComponentDeploymentSpecification"))

(smithy/sdk/shapes:define-map component-deployment-specifications :key
                              non-empty-string :value
                              component-deployment-specification)

(smithy/sdk/shapes:define-structure component-latest-version common-lisp:nil
                                    ((arn :target-type component-version-arn
                                      :member-name "arn")
                                     (component-version :target-type
                                      component-version-string :member-name
                                      "componentVersion")
                                     (creation-timestamp :target-type timestamp
                                      :member-name "creationTimestamp")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (publisher :target-type non-empty-string
                                      :member-name "publisher")
                                     (platforms :target-type
                                      component-platform-list :member-name
                                      "platforms"))
                                    (:shape-name "ComponentLatestVersion"))

(smithy/sdk/shapes:define-list component-list :member component)

(smithy/sdk/shapes:define-type component-name-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure component-platform common-lisp:nil
                                    ((name :target-type non-empty-string
                                      :member-name "name")
                                     (attributes :target-type
                                      platform-attributes-map :member-name
                                      "attributes"))
                                    (:shape-name "ComponentPlatform"))

(smithy/sdk/shapes:define-list component-platform-list :member
                               component-platform)

(smithy/sdk/shapes:define-structure component-run-with common-lisp:nil
                                    ((posix-user :target-type non-empty-string
                                      :member-name "posixUser")
                                     (system-resource-limits :target-type
                                      system-resource-limits :member-name
                                      "systemResourceLimits")
                                     (windows-user :target-type
                                      non-empty-string :member-name
                                      "windowsUser"))
                                    (:shape-name "ComponentRunWith"))

(smithy/sdk/shapes:define-type component-version-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list component-version-list :member
                               component-version-list-item)

(smithy/sdk/shapes:define-structure component-version-list-item common-lisp:nil
                                    ((component-name :target-type
                                      component-name-string :member-name
                                      "componentName")
                                     (component-version :target-type
                                      component-version-string :member-name
                                      "componentVersion")
                                     (arn :target-type non-empty-string
                                      :member-name "arn"))
                                    (:shape-name "ComponentVersionListItem"))

(smithy/sdk/shapes:define-map component-version-requirement-map :key
                              non-empty-string :value non-empty-string)

(smithy/sdk/shapes:define-type component-version-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum component-visibility-scope
    common-lisp:nil
  (:private "PRIVATE")
  (:public "PUBLIC"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class greengrassv2-error))

(smithy/sdk/shapes:define-structure connectivity-info common-lisp:nil
                                    ((id :target-type string :member-name "id"
                                      :json-name "Id")
                                     (host-address :target-type string
                                      :member-name "hostAddress" :json-name
                                      "HostAddress")
                                     (port-number :target-type port-number-int
                                      :member-name "portNumber" :json-name
                                      "PortNumber")
                                     (metadata :target-type string :member-name
                                      "metadata" :json-name "Metadata"))
                                    (:shape-name "ConnectivityInfo"))

(smithy/sdk/shapes:define-structure core-device common-lisp:nil
                                    ((core-device-thing-name :target-type
                                      core-device-thing-name :member-name
                                      "coreDeviceThingName")
                                     (status :target-type core-device-status
                                      :member-name "status")
                                     (last-status-update-timestamp :target-type
                                      timestamp :member-name
                                      "lastStatusUpdateTimestamp")
                                     (platform :target-type
                                      core-device-platform-string :member-name
                                      "platform")
                                     (architecture :target-type
                                      core-device-architecture-string
                                      :member-name "architecture")
                                     (runtime :target-type
                                      core-device-runtime-string :member-name
                                      "runtime"))
                                    (:shape-name "CoreDevice"))

(smithy/sdk/shapes:define-type core-device-architecture-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type core-device-platform-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type core-device-runtime-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum core-device-status
    common-lisp:nil
  (:healthy "HEALTHY")
  (:unhealthy "UNHEALTHY"))

(smithy/sdk/shapes:define-type core-device-thing-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list core-devices-list :member core-device)

(smithy/sdk/shapes:define-input create-component-version-request
                                common-lisp:nil
                                ((inline-recipe :target-type recipe-blob
                                  :member-name "inlineRecipe")
                                 (lambda-function :target-type
                                  lambda-function-recipe-source :member-name
                                  "lambdaFunction")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token-string
                                  :member-name "clientToken"))
                                (:shape-name "CreateComponentVersionRequest"))

(smithy/sdk/shapes:define-output create-component-version-response
                                 common-lisp:nil
                                 ((arn :target-type component-version-arn
                                   :member-name "arn")
                                  (component-name :target-type
                                   component-name-string :required
                                   common-lisp:t :member-name "componentName")
                                  (component-version :target-type
                                   component-version-string :required
                                   common-lisp:t :member-name
                                   "componentVersion")
                                  (creation-timestamp :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "creationTimestamp")
                                  (status :target-type cloud-component-status
                                   :required common-lisp:t :member-name
                                   "status"))
                                 (:shape-name "CreateComponentVersionResponse"))

(smithy/sdk/shapes:define-input create-deployment-request common-lisp:nil
                                ((target-arn :target-type target-arn :required
                                  common-lisp:t :member-name "targetArn")
                                 (deployment-name :target-type
                                  deployment-name-string :member-name
                                  "deploymentName")
                                 (components :target-type
                                  component-deployment-specifications
                                  :member-name "components")
                                 (iot-job-configuration :target-type
                                  deployment-io-tjob-configuration :member-name
                                  "iotJobConfiguration")
                                 (deployment-policies :target-type
                                  deployment-policies :member-name
                                  "deploymentPolicies")
                                 (parent-target-arn :target-type
                                  thing-group-arn :member-name
                                  "parentTargetArn")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token-string
                                  :member-name "clientToken"))
                                (:shape-name "CreateDeploymentRequest"))

(smithy/sdk/shapes:define-output create-deployment-response common-lisp:nil
                                 ((deployment-id :target-type non-empty-string
                                   :member-name "deploymentId")
                                  (iot-job-id :target-type non-empty-string
                                   :member-name "iotJobId")
                                  (iot-job-arn :target-type io-tjob-arn
                                   :member-name "iotJobArn"))
                                 (:shape-name "CreateDeploymentResponse"))

(smithy/sdk/shapes:define-type default-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input delete-component-request common-lisp:nil
                                ((arn :target-type component-version-arn
                                  :required common-lisp:t :member-name "arn"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteComponentRequest"))

(smithy/sdk/shapes:define-input delete-core-device-request common-lisp:nil
                                ((core-device-thing-name :target-type
                                  core-device-thing-name :required
                                  common-lisp:t :member-name
                                  "coreDeviceThingName" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteCoreDeviceRequest"))

(smithy/sdk/shapes:define-input delete-deployment-request common-lisp:nil
                                ((deployment-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "deploymentId" :http-label common-lisp:t))
                                (:shape-name "DeleteDeploymentRequest"))

(smithy/sdk/shapes:define-structure deployment common-lisp:nil
                                    ((target-arn :target-type target-arn
                                      :member-name "targetArn")
                                     (revision-id :target-type non-empty-string
                                      :member-name "revisionId")
                                     (deployment-id :target-type
                                      non-empty-string :member-name
                                      "deploymentId")
                                     (deployment-name :target-type
                                      non-empty-string :member-name
                                      "deploymentName")
                                     (creation-timestamp :target-type timestamp
                                      :member-name "creationTimestamp")
                                     (deployment-status :target-type
                                      deployment-status :member-name
                                      "deploymentStatus")
                                     (is-latest-for-target :target-type
                                      is-latest-for-target :member-name
                                      "isLatestForTarget")
                                     (parent-target-arn :target-type
                                      thing-group-arn :member-name
                                      "parentTargetArn"))
                                    (:shape-name "Deployment"))

(smithy/sdk/shapes:define-structure deployment-component-update-policy
                                    common-lisp:nil
                                    ((timeout-in-seconds :target-type
                                      optional-integer :member-name
                                      "timeoutInSeconds")
                                     (action :target-type
                                      deployment-component-update-policy-action
                                      :member-name "action"))
                                    (:shape-name
                                     "DeploymentComponentUpdatePolicy"))

(smithy/sdk/shapes:define-enum deployment-component-update-policy-action
    common-lisp:nil
  (:notify-components "NOTIFY_COMPONENTS")
  (:skip-notify-components "SKIP_NOTIFY_COMPONENTS"))

(smithy/sdk/shapes:define-structure deployment-configuration-validation-policy
                                    common-lisp:nil
                                    ((timeout-in-seconds :target-type
                                      optional-integer :member-name
                                      "timeoutInSeconds"))
                                    (:shape-name
                                     "DeploymentConfigurationValidationPolicy"))

(smithy/sdk/shapes:define-enum deployment-failure-handling-policy
    common-lisp:nil
  (:rollback "ROLLBACK")
  (:do-nothing "DO_NOTHING"))

(smithy/sdk/shapes:define-enum deployment-history-filter
    common-lisp:nil
  (:all "ALL")
  (:latest-only "LATEST_ONLY"))

(smithy/sdk/shapes:define-type deployment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure deployment-io-tjob-configuration
                                    common-lisp:nil
                                    ((job-executions-rollout-config
                                      :target-type
                                      io-tjob-executions-rollout-config
                                      :member-name
                                      "jobExecutionsRolloutConfig")
                                     (abort-config :target-type
                                      io-tjob-abort-config :member-name
                                      "abortConfig")
                                     (timeout-config :target-type
                                      io-tjob-timeout-config :member-name
                                      "timeoutConfig"))
                                    (:shape-name
                                     "DeploymentIoTJobConfiguration"))

(smithy/sdk/shapes:define-list deployment-list :member deployment)

(smithy/sdk/shapes:define-type deployment-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type deployment-name-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure deployment-policies common-lisp:nil
                                    ((failure-handling-policy :target-type
                                      deployment-failure-handling-policy
                                      :member-name "failureHandlingPolicy")
                                     (component-update-policy :target-type
                                      deployment-component-update-policy
                                      :member-name "componentUpdatePolicy")
                                     (configuration-validation-policy
                                      :target-type
                                      deployment-configuration-validation-policy
                                      :member-name
                                      "configurationValidationPolicy"))
                                    (:shape-name "DeploymentPolicies"))

(smithy/sdk/shapes:define-enum deployment-status
    common-lisp:nil
  (:active "ACTIVE")
  (:completed "COMPLETED")
  (:canceled "CANCELED")
  (:failed "FAILED")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-input describe-component-request common-lisp:nil
                                ((arn :target-type component-version-arn
                                  :required common-lisp:t :member-name "arn"
                                  :http-label common-lisp:t))
                                (:shape-name "DescribeComponentRequest"))

(smithy/sdk/shapes:define-output describe-component-response common-lisp:nil
                                 ((arn :target-type component-version-arn
                                   :member-name "arn")
                                  (component-name :target-type
                                   component-name-string :member-name
                                   "componentName")
                                  (component-version :target-type
                                   component-version-string :member-name
                                   "componentVersion")
                                  (creation-timestamp :target-type timestamp
                                   :member-name "creationTimestamp")
                                  (publisher :target-type publisher-string
                                   :member-name "publisher")
                                  (description :target-type description-string
                                   :member-name "description")
                                  (status :target-type cloud-component-status
                                   :member-name "status")
                                  (platforms :target-type
                                   component-platform-list :member-name
                                   "platforms")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "DescribeComponentResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type description-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 disassociate-client-device-from-core-device-entry common-lisp:nil
 ((thing-name :target-type io-tthing-name :required common-lisp:t :member-name
   "thingName"))
 (:shape-name "DisassociateClientDeviceFromCoreDeviceEntry"))

(smithy/sdk/shapes:define-list
 disassociate-client-device-from-core-device-entry-list :member
 disassociate-client-device-from-core-device-entry)

(smithy/sdk/shapes:define-structure
 disassociate-client-device-from-core-device-error-entry common-lisp:nil
 ((thing-name :target-type io-tthing-name :member-name "thingName")
  (code :target-type non-empty-string :member-name "code")
  (message :target-type non-empty-string :member-name "message"))
 (:shape-name "DisassociateClientDeviceFromCoreDeviceErrorEntry"))

(smithy/sdk/shapes:define-list
 disassociate-client-device-from-core-device-error-list :member
 disassociate-client-device-from-core-device-error-entry)

(smithy/sdk/shapes:define-input disassociate-service-role-from-account-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DisassociateServiceRoleFromAccountRequest"))

(smithy/sdk/shapes:define-output
 disassociate-service-role-from-account-response common-lisp:nil
 ((disassociated-at :target-type string :member-name "disassociatedAt"
   :json-name "DisassociatedAt"))
 (:shape-name "DisassociateServiceRoleFromAccountResponse"))

(smithy/sdk/shapes:define-structure effective-deployment common-lisp:nil
                                    ((deployment-id :target-type deployment-id
                                      :required common-lisp:t :member-name
                                      "deploymentId")
                                     (deployment-name :target-type
                                      deployment-name :required common-lisp:t
                                      :member-name "deploymentName")
                                     (iot-job-id :target-type io-tjob-id
                                      :member-name "iotJobId")
                                     (iot-job-arn :target-type io-tjob-arn
                                      :member-name "iotJobArn")
                                     (description :target-type description
                                      :member-name "description")
                                     (target-arn :target-type target-arn
                                      :required common-lisp:t :member-name
                                      "targetArn")
                                     (core-device-execution-status :target-type
                                      effective-deployment-execution-status
                                      :required common-lisp:t :member-name
                                      "coreDeviceExecutionStatus")
                                     (reason :target-type reason :member-name
                                      "reason")
                                     (creation-timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "creationTimestamp")
                                     (modified-timestamp :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "modifiedTimestamp")
                                     (status-details :target-type
                                      effective-deployment-status-details
                                      :member-name "statusDetails"))
                                    (:shape-name "EffectiveDeployment"))

(smithy/sdk/shapes:define-type effective-deployment-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list effective-deployment-error-stack :member
                               effective-deployment-error-code)

(smithy/sdk/shapes:define-type effective-deployment-error-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list effective-deployment-error-type-list :member
                               effective-deployment-error-type)

(smithy/sdk/shapes:define-enum effective-deployment-execution-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:queued "QUEUED")
  (:failed "FAILED")
  (:completed "COMPLETED")
  (:timed-out "TIMED_OUT")
  (:canceled "CANCELED")
  (:rejected "REJECTED")
  (:succeeded "SUCCEEDED"))

(smithy/sdk/shapes:define-structure effective-deployment-status-details
                                    common-lisp:nil
                                    ((error-stack :target-type
                                      effective-deployment-error-stack
                                      :member-name "errorStack")
                                     (error-types :target-type
                                      effective-deployment-error-type-list
                                      :member-name "errorTypes"))
                                    (:shape-name
                                     "EffectiveDeploymentStatusDetails"))

(smithy/sdk/shapes:define-list effective-deployments-list :member
                               effective-deployment)

(smithy/sdk/shapes:define-type file-system-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ggcversion smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type generic-v2arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-component-request common-lisp:nil
                                ((recipe-output-format :target-type
                                  recipe-output-format :member-name
                                  "recipeOutputFormat" :http-query
                                  "recipeOutputFormat")
                                 (arn :target-type component-version-arn
                                  :required common-lisp:t :member-name "arn"
                                  :http-label common-lisp:t))
                                (:shape-name "GetComponentRequest"))

(smithy/sdk/shapes:define-output get-component-response common-lisp:nil
                                 ((recipe-output-format :target-type
                                   recipe-output-format :required common-lisp:t
                                   :member-name "recipeOutputFormat")
                                  (recipe :target-type recipe-blob :required
                                   common-lisp:t :member-name "recipe")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetComponentResponse"))

(smithy/sdk/shapes:define-input get-component-version-artifact-request
                                common-lisp:nil
                                ((arn :target-type component-version-arn
                                  :required common-lisp:t :member-name "arn"
                                  :http-label common-lisp:t)
                                 (artifact-name :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "artifactName" :http-label common-lisp:t)
                                 (s3endpoint-type :target-type s3endpoint-type
                                  :member-name "s3EndpointType" :http-query
                                  "s3EndpointType")
                                 (iot-endpoint-type :target-type
                                  iot-endpoint-type :member-name
                                  "iotEndpointType" :http-header
                                  "x-amz-iot-endpoint-type"))
                                (:shape-name
                                 "GetComponentVersionArtifactRequest"))

(smithy/sdk/shapes:define-output get-component-version-artifact-response
                                 common-lisp:nil
                                 ((pre-signed-url :target-type non-empty-string
                                   :required common-lisp:t :member-name
                                   "preSignedUrl"))
                                 (:shape-name
                                  "GetComponentVersionArtifactResponse"))

(smithy/sdk/shapes:define-input get-connectivity-info-request common-lisp:nil
                                ((thing-name :target-type
                                  core-device-thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetConnectivityInfoRequest"))

(smithy/sdk/shapes:define-output get-connectivity-info-response common-lisp:nil
                                 ((connectivity-info :target-type
                                   connectivity-info-list :member-name
                                   "connectivityInfo" :json-name
                                   "ConnectivityInfo")
                                  (message :target-type string :member-name
                                   "message" :json-name "Message"))
                                 (:shape-name "GetConnectivityInfoResponse"))

(smithy/sdk/shapes:define-input get-core-device-request common-lisp:nil
                                ((core-device-thing-name :target-type
                                  core-device-thing-name :required
                                  common-lisp:t :member-name
                                  "coreDeviceThingName" :http-label
                                  common-lisp:t))
                                (:shape-name "GetCoreDeviceRequest"))

(smithy/sdk/shapes:define-output get-core-device-response common-lisp:nil
                                 ((core-device-thing-name :target-type
                                   core-device-thing-name :member-name
                                   "coreDeviceThingName")
                                  (core-version :target-type ggcversion
                                   :member-name "coreVersion")
                                  (platform :target-type
                                   core-device-platform-string :member-name
                                   "platform")
                                  (architecture :target-type
                                   core-device-architecture-string :member-name
                                   "architecture")
                                  (runtime :target-type
                                   core-device-runtime-string :member-name
                                   "runtime")
                                  (status :target-type core-device-status
                                   :member-name "status")
                                  (last-status-update-timestamp :target-type
                                   timestamp :member-name
                                   "lastStatusUpdateTimestamp")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetCoreDeviceResponse"))

(smithy/sdk/shapes:define-input get-deployment-request common-lisp:nil
                                ((deployment-id :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "deploymentId" :http-label common-lisp:t))
                                (:shape-name "GetDeploymentRequest"))

(smithy/sdk/shapes:define-output get-deployment-response common-lisp:nil
                                 ((target-arn :target-type target-arn
                                   :member-name "targetArn")
                                  (revision-id :target-type non-empty-string
                                   :member-name "revisionId")
                                  (deployment-id :target-type non-empty-string
                                   :member-name "deploymentId")
                                  (deployment-name :target-type nullable-string
                                   :member-name "deploymentName")
                                  (deployment-status :target-type
                                   deployment-status :member-name
                                   "deploymentStatus")
                                  (iot-job-id :target-type nullable-string
                                   :member-name "iotJobId")
                                  (iot-job-arn :target-type io-tjob-arn
                                   :member-name "iotJobArn")
                                  (components :target-type
                                   component-deployment-specifications
                                   :member-name "components")
                                  (deployment-policies :target-type
                                   deployment-policies :member-name
                                   "deploymentPolicies")
                                  (iot-job-configuration :target-type
                                   deployment-io-tjob-configuration
                                   :member-name "iotJobConfiguration")
                                  (creation-timestamp :target-type timestamp
                                   :member-name "creationTimestamp")
                                  (is-latest-for-target :target-type
                                   is-latest-for-target :member-name
                                   "isLatestForTarget")
                                  (parent-target-arn :target-type
                                   thing-group-arn :member-name
                                   "parentTargetArn")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetDeploymentResponse"))

(smithy/sdk/shapes:define-input get-service-role-for-account-request
                                common-lisp:nil common-lisp:nil
                                (:shape-name "GetServiceRoleForAccountRequest"))

(smithy/sdk/shapes:define-output get-service-role-for-account-response
                                 common-lisp:nil
                                 ((associated-at :target-type string
                                   :member-name "associatedAt" :json-name
                                   "AssociatedAt")
                                  (role-arn :target-type string :member-name
                                   "roleArn" :json-name "RoleArn"))
                                 (:shape-name
                                  "GetServiceRoleForAccountResponse"))

(smithy/sdk/shapes:define-structure installed-component common-lisp:nil
                                    ((component-name :target-type
                                      component-name-string :member-name
                                      "componentName")
                                     (component-version :target-type
                                      component-version-string :member-name
                                      "componentVersion")
                                     (lifecycle-state :target-type
                                      installed-component-lifecycle-state
                                      :member-name "lifecycleState")
                                     (lifecycle-state-details :target-type
                                      lifecycle-state-details :member-name
                                      "lifecycleStateDetails")
                                     (is-root :target-type is-root :member-name
                                      "isRoot")
                                     (last-status-change-timestamp :target-type
                                      timestamp :member-name
                                      "lastStatusChangeTimestamp")
                                     (last-reported-timestamp :target-type
                                      timestamp :member-name
                                      "lastReportedTimestamp")
                                     (last-installation-source :target-type
                                      non-empty-string :member-name
                                      "lastInstallationSource")
                                     (lifecycle-status-codes :target-type
                                      installed-component-lifecycle-status-code-list
                                      :member-name "lifecycleStatusCodes"))
                                    (:shape-name "InstalledComponent"))

(smithy/sdk/shapes:define-enum installed-component-lifecycle-state
    common-lisp:nil
  (:new "NEW")
  (:installed "INSTALLED")
  (:starting "STARTING")
  (:running "RUNNING")
  (:stopping "STOPPING")
  (:errored "ERRORED")
  (:broken "BROKEN")
  (:finished "FINISHED"))

(smithy/sdk/shapes:define-type installed-component-lifecycle-status-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list installed-component-lifecycle-status-code-list
                               :member
                               installed-component-lifecycle-status-code)

(smithy/sdk/shapes:define-list installed-component-list :member
                               installed-component)

(smithy/sdk/shapes:define-enum installed-component-topology-filter
    common-lisp:nil
  (:all "ALL")
  (:root "ROOT"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500)
                                (:base-class greengrassv2-error))

(smithy/sdk/shapes:define-type io-tjob-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum io-tjob-abort-action
    common-lisp:nil
  (:cancel "CANCEL"))

(smithy/sdk/shapes:define-structure io-tjob-abort-config common-lisp:nil
                                    ((criteria-list :target-type
                                      io-tjob-abort-criteria-list :required
                                      common-lisp:t :member-name
                                      "criteriaList"))
                                    (:shape-name "IoTJobAbortConfig"))

(smithy/sdk/shapes:define-structure io-tjob-abort-criteria common-lisp:nil
                                    ((failure-type :target-type
                                      io-tjob-execution-failure-type :required
                                      common-lisp:t :member-name "failureType")
                                     (action :target-type io-tjob-abort-action
                                      :required common-lisp:t :member-name
                                      "action")
                                     (threshold-percentage :target-type
                                      io-tjob-abort-threshold-percentage
                                      :required common-lisp:t :member-name
                                      "thresholdPercentage")
                                     (min-number-of-executed-things
                                      :target-type
                                      io-tjob-minimum-number-of-executed-things
                                      :required common-lisp:t :member-name
                                      "minNumberOfExecutedThings"))
                                    (:shape-name "IoTJobAbortCriteria"))

(smithy/sdk/shapes:define-list io-tjob-abort-criteria-list :member
                               io-tjob-abort-criteria)

(smithy/sdk/shapes:define-type io-tjob-abort-threshold-percentage
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-enum io-tjob-execution-failure-type
    common-lisp:nil
  (:failed "FAILED")
  (:rejected "REJECTED")
  (:timed-out "TIMED_OUT")
  (:all "ALL"))

(smithy/sdk/shapes:define-structure io-tjob-executions-rollout-config
                                    common-lisp:nil
                                    ((exponential-rate :target-type
                                      io-tjob-exponential-rollout-rate
                                      :member-name "exponentialRate")
                                     (maximum-per-minute :target-type
                                      io-tjob-max-executions-per-min
                                      :member-name "maximumPerMinute"))
                                    (:shape-name
                                     "IoTJobExecutionsRolloutConfig"))

(smithy/sdk/shapes:define-structure io-tjob-exponential-rollout-rate
                                    common-lisp:nil
                                    ((base-rate-per-minute :target-type
                                      io-tjob-rollout-base-rate-per-minute
                                      :required common-lisp:t :member-name
                                      "baseRatePerMinute")
                                     (increment-factor :target-type
                                      io-tjob-rollout-increment-factor
                                      :required common-lisp:t :member-name
                                      "incrementFactor")
                                     (rate-increase-criteria :target-type
                                      io-tjob-rate-increase-criteria :required
                                      common-lisp:t :member-name
                                      "rateIncreaseCriteria"))
                                    (:shape-name
                                     "IoTJobExponentialRolloutRate"))

(smithy/sdk/shapes:define-type io-tjob-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type io-tjob-in-progress-timeout-in-minutes
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type io-tjob-max-executions-per-min
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type io-tjob-minimum-number-of-executed-things
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type io-tjob-number-of-things
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure io-tjob-rate-increase-criteria
                                    common-lisp:nil
                                    ((number-of-notified-things :target-type
                                      io-tjob-number-of-things :member-name
                                      "numberOfNotifiedThings")
                                     (number-of-succeeded-things :target-type
                                      io-tjob-number-of-things :member-name
                                      "numberOfSucceededThings"))
                                    (:shape-name "IoTJobRateIncreaseCriteria"))

(smithy/sdk/shapes:define-type io-tjob-rollout-base-rate-per-minute
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type io-tjob-rollout-increment-factor
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure io-tjob-timeout-config common-lisp:nil
                                    ((in-progress-timeout-in-minutes
                                      :target-type
                                      io-tjob-in-progress-timeout-in-minutes
                                      :member-name
                                      "inProgressTimeoutInMinutes"))
                                    (:shape-name "IoTJobTimeoutConfig"))

(smithy/sdk/shapes:define-type io-tthing-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum iot-endpoint-type
    common-lisp:nil
  (:fips "fips")
  (:standard "standard"))

(smithy/sdk/shapes:define-type is-latest-for-target
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type is-root smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure lambda-container-params common-lisp:nil
                                    ((memory-size-in-kb :target-type
                                      optional-integer :member-name
                                      "memorySizeInKB")
                                     (mount-rosysfs :target-type
                                      optional-boolean :member-name
                                      "mountROSysfs")
                                     (volumes :target-type lambda-volume-list
                                      :member-name "volumes")
                                     (devices :target-type lambda-device-list
                                      :member-name "devices"))
                                    (:shape-name "LambdaContainerParams"))

(smithy/sdk/shapes:define-list lambda-device-list :member lambda-device-mount)

(smithy/sdk/shapes:define-structure lambda-device-mount common-lisp:nil
                                    ((path :target-type file-system-path
                                      :required common-lisp:t :member-name
                                      "path")
                                     (permission :target-type
                                      lambda-filesystem-permission :member-name
                                      "permission")
                                     (add-group-owner :target-type
                                      optional-boolean :member-name
                                      "addGroupOwner"))
                                    (:shape-name "LambdaDeviceMount"))

(smithy/sdk/shapes:define-map lambda-environment-variables :key
                              non-empty-string :value string)

(smithy/sdk/shapes:define-structure lambda-event-source common-lisp:nil
                                    ((topic :target-type topic-string :required
                                      common-lisp:t :member-name "topic")
                                     (type :target-type
                                      lambda-event-source-type :required
                                      common-lisp:t :member-name "type"))
                                    (:shape-name "LambdaEventSource"))

(smithy/sdk/shapes:define-list lambda-event-source-list :member
                               lambda-event-source)

(smithy/sdk/shapes:define-enum lambda-event-source-type
    common-lisp:nil
  (:pub-sub "PUB_SUB")
  (:iot-core "IOT_CORE"))

(smithy/sdk/shapes:define-type lambda-exec-arg smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list lambda-exec-args-list :member lambda-exec-arg)

(smithy/sdk/shapes:define-structure lambda-execution-parameters common-lisp:nil
                                    ((event-sources :target-type
                                      lambda-event-source-list :member-name
                                      "eventSources")
                                     (max-queue-size :target-type
                                      optional-integer :member-name
                                      "maxQueueSize")
                                     (max-instances-count :target-type
                                      optional-integer :member-name
                                      "maxInstancesCount")
                                     (max-idle-time-in-seconds :target-type
                                      optional-integer :member-name
                                      "maxIdleTimeInSeconds")
                                     (timeout-in-seconds :target-type
                                      optional-integer :member-name
                                      "timeoutInSeconds")
                                     (status-timeout-in-seconds :target-type
                                      optional-integer :member-name
                                      "statusTimeoutInSeconds")
                                     (pinned :target-type optional-boolean
                                      :member-name "pinned")
                                     (input-payload-encoding-type :target-type
                                      lambda-input-payload-encoding-type
                                      :member-name "inputPayloadEncodingType")
                                     (exec-args :target-type
                                      lambda-exec-args-list :member-name
                                      "execArgs")
                                     (environment-variables :target-type
                                      lambda-environment-variables :member-name
                                      "environmentVariables")
                                     (linux-process-params :target-type
                                      lambda-linux-process-params :member-name
                                      "linuxProcessParams"))
                                    (:shape-name "LambdaExecutionParameters"))

(smithy/sdk/shapes:define-enum lambda-filesystem-permission
    common-lisp:nil
  (:ro "ro")
  (:rw "rw"))

(smithy/sdk/shapes:define-structure lambda-function-recipe-source
                                    common-lisp:nil
                                    ((lambda-arn :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "lambdaArn")
                                     (component-name :target-type
                                      component-name-string :member-name
                                      "componentName")
                                     (component-version :target-type
                                      component-version-string :member-name
                                      "componentVersion")
                                     (component-platforms :target-type
                                      component-platform-list :member-name
                                      "componentPlatforms")
                                     (component-dependencies :target-type
                                      component-dependency-map :member-name
                                      "componentDependencies")
                                     (component-lambda-parameters :target-type
                                      lambda-execution-parameters :member-name
                                      "componentLambdaParameters"))
                                    (:shape-name "LambdaFunctionRecipeSource"))

(smithy/sdk/shapes:define-enum lambda-input-payload-encoding-type
    common-lisp:nil
  (:json "json")
  (:binary "binary"))

(smithy/sdk/shapes:define-enum lambda-isolation-mode
    common-lisp:nil
  (:greengrass-container "GreengrassContainer")
  (:no-container "NoContainer"))

(smithy/sdk/shapes:define-structure lambda-linux-process-params common-lisp:nil
                                    ((isolation-mode :target-type
                                      lambda-isolation-mode :member-name
                                      "isolationMode")
                                     (container-params :target-type
                                      lambda-container-params :member-name
                                      "containerParams"))
                                    (:shape-name "LambdaLinuxProcessParams"))

(smithy/sdk/shapes:define-list lambda-volume-list :member lambda-volume-mount)

(smithy/sdk/shapes:define-structure lambda-volume-mount common-lisp:nil
                                    ((source-path :target-type file-system-path
                                      :required common-lisp:t :member-name
                                      "sourcePath")
                                     (destination-path :target-type
                                      file-system-path :required common-lisp:t
                                      :member-name "destinationPath")
                                     (permission :target-type
                                      lambda-filesystem-permission :member-name
                                      "permission")
                                     (add-group-owner :target-type
                                      optional-boolean :member-name
                                      "addGroupOwner"))
                                    (:shape-name "LambdaVolumeMount"))

(smithy/sdk/shapes:define-type lifecycle-state-details
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 list-client-devices-associated-with-core-device-request common-lisp:nil
 ((core-device-thing-name :target-type io-tthing-name :required common-lisp:t
   :member-name "coreDeviceThingName" :http-label common-lisp:t)
  (max-results :target-type default-max-results :member-name "maxResults"
   :http-query "maxResults")
  (next-token :target-type next-token-string :member-name "nextToken"
   :http-query "nextToken"))
 (:shape-name "ListClientDevicesAssociatedWithCoreDeviceRequest"))

(smithy/sdk/shapes:define-output
 list-client-devices-associated-with-core-device-response common-lisp:nil
 ((associated-client-devices :target-type associated-client-device-list
   :member-name "associatedClientDevices")
  (next-token :target-type next-token-string :member-name "nextToken"))
 (:shape-name "ListClientDevicesAssociatedWithCoreDeviceResponse"))

(smithy/sdk/shapes:define-input list-component-versions-request common-lisp:nil
                                ((arn :target-type component-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t)
                                 (max-results :target-type default-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token-string
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListComponentVersionsRequest"))

(smithy/sdk/shapes:define-output list-component-versions-response
                                 common-lisp:nil
                                 ((component-versions :target-type
                                   component-version-list :member-name
                                   "componentVersions")
                                  (next-token :target-type next-token-string
                                   :member-name "nextToken"))
                                 (:shape-name "ListComponentVersionsResponse"))

(smithy/sdk/shapes:define-input list-components-request common-lisp:nil
                                ((scope :target-type component-visibility-scope
                                  :member-name "scope" :http-query "scope")
                                 (max-results :target-type default-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token-string
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListComponentsRequest"))

(smithy/sdk/shapes:define-output list-components-response common-lisp:nil
                                 ((components :target-type component-list
                                   :member-name "components")
                                  (next-token :target-type next-token-string
                                   :member-name "nextToken"))
                                 (:shape-name "ListComponentsResponse"))

(smithy/sdk/shapes:define-input list-core-devices-request common-lisp:nil
                                ((thing-group-arn :target-type thing-group-arn
                                  :member-name "thingGroupArn" :http-query
                                  "thingGroupArn")
                                 (status :target-type core-device-status
                                  :member-name "status" :http-query "status")
                                 (max-results :target-type default-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token-string
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (runtime :target-type
                                  core-device-runtime-string :member-name
                                  "runtime" :http-query "runtime"))
                                (:shape-name "ListCoreDevicesRequest"))

(smithy/sdk/shapes:define-output list-core-devices-response common-lisp:nil
                                 ((core-devices :target-type core-devices-list
                                   :member-name "coreDevices")
                                  (next-token :target-type next-token-string
                                   :member-name "nextToken"))
                                 (:shape-name "ListCoreDevicesResponse"))

(smithy/sdk/shapes:define-input list-deployments-request common-lisp:nil
                                ((target-arn :target-type target-arn
                                  :member-name "targetArn" :http-query
                                  "targetArn")
                                 (history-filter :target-type
                                  deployment-history-filter :member-name
                                  "historyFilter" :http-query "historyFilter")
                                 (parent-target-arn :target-type
                                  thing-group-arn :member-name
                                  "parentTargetArn" :http-query
                                  "parentTargetArn")
                                 (max-results :target-type default-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token-string
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListDeploymentsRequest"))

(smithy/sdk/shapes:define-output list-deployments-response common-lisp:nil
                                 ((deployments :target-type deployment-list
                                   :member-name "deployments")
                                  (next-token :target-type next-token-string
                                   :member-name "nextToken"))
                                 (:shape-name "ListDeploymentsResponse"))

(smithy/sdk/shapes:define-input list-effective-deployments-request
                                common-lisp:nil
                                ((core-device-thing-name :target-type
                                  core-device-thing-name :required
                                  common-lisp:t :member-name
                                  "coreDeviceThingName" :http-label
                                  common-lisp:t)
                                 (max-results :target-type default-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token-string
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListEffectiveDeploymentsRequest"))

(smithy/sdk/shapes:define-output list-effective-deployments-response
                                 common-lisp:nil
                                 ((effective-deployments :target-type
                                   effective-deployments-list :member-name
                                   "effectiveDeployments")
                                  (next-token :target-type next-token-string
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListEffectiveDeploymentsResponse"))

(smithy/sdk/shapes:define-input list-installed-components-request
                                common-lisp:nil
                                ((core-device-thing-name :target-type
                                  core-device-thing-name :required
                                  common-lisp:t :member-name
                                  "coreDeviceThingName" :http-label
                                  common-lisp:t)
                                 (max-results :target-type default-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token-string
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (topology-filter :target-type
                                  installed-component-topology-filter
                                  :member-name "topologyFilter" :http-query
                                  "topologyFilter"))
                                (:shape-name "ListInstalledComponentsRequest"))

(smithy/sdk/shapes:define-output list-installed-components-response
                                 common-lisp:nil
                                 ((installed-components :target-type
                                   installed-component-list :member-name
                                   "installedComponents")
                                  (next-token :target-type next-token-string
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListInstalledComponentsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type generic-v2arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type memory smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type next-token-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nullable-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type optional-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type optional-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-map platform-attributes-map :key non-empty-string
                              :value non-empty-string)

(smithy/sdk/shapes:define-type port-number-int smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type publisher-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type recipe-blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-enum recipe-output-format
    common-lisp:nil
  (:json "JSON")
  (:yaml "YAML"))

(smithy/sdk/shapes:define-error request-already-in-progress-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name
                                 "RequestAlreadyInProgressException")
                                (:error-code 400)
                                (:base-class greengrassv2-error))

(smithy/sdk/shapes:define-input resolve-component-candidates-request
                                common-lisp:nil
                                ((platform :target-type component-platform
                                  :member-name "platform")
                                 (component-candidates :target-type
                                  component-candidate-list :member-name
                                  "componentCandidates"))
                                (:shape-name
                                 "ResolveComponentCandidatesRequest"))

(smithy/sdk/shapes:define-output resolve-component-candidates-response
                                 common-lisp:nil
                                 ((resolved-component-versions :target-type
                                   resolved-component-versions-list
                                   :member-name "resolvedComponentVersions"))
                                 (:shape-name
                                  "ResolveComponentCandidatesResponse"))

(smithy/sdk/shapes:define-structure resolved-component-version common-lisp:nil
                                    ((arn :target-type component-version-arn
                                      :member-name "arn")
                                     (component-name :target-type
                                      component-name-string :member-name
                                      "componentName")
                                     (component-version :target-type
                                      component-version-string :member-name
                                      "componentVersion")
                                     (recipe :target-type recipe-blob
                                      :member-name "recipe")
                                     (vendor-guidance :target-type
                                      vendor-guidance :member-name
                                      "vendorGuidance")
                                     (message :target-type non-empty-string
                                      :member-name "message"))
                                    (:shape-name "ResolvedComponentVersion"))

(smithy/sdk/shapes:define-list resolved-component-versions-list :member
                               resolved-component-version)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class greengrassv2-error))

(smithy/sdk/shapes:define-type retry-after-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum s3endpoint-type
    common-lisp:nil
  (:regional "REGIONAL")
  (:global "GLOBAL"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type string :member-name
                                  "resourceId")
                                 (resource-type :target-type string
                                  :member-name "resourceType")
                                 (quota-code :target-type string :required
                                  common-lisp:t :member-name "quotaCode")
                                 (service-code :target-type string :required
                                  common-lisp:t :member-name "serviceCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402)
                                (:base-class greengrassv2-error))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map string-map :key non-empty-string :value
                              non-empty-string)

(smithy/sdk/shapes:define-structure system-resource-limits common-lisp:nil
                                    ((memory :target-type memory :member-name
                                      "memory")
                                     (cpus :target-type cpu :member-name
                                      "cpus"))
                                    (:shape-name "SystemResourceLimits"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type generic-v2arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type thing-group-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (quota-code :target-type string :member-name
                                  "quotaCode")
                                 (service-code :target-type string :member-name
                                  "serviceCode")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429)
                                (:base-class greengrassv2-error))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type topic-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type generic-v2arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-connectivity-info-request
                                common-lisp:nil
                                ((thing-name :target-type
                                  core-device-thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t :json-name
                                  "ThingName")
                                 (connectivity-info :target-type
                                  connectivity-info-list :required
                                  common-lisp:t :member-name "connectivityInfo"
                                  :json-name "ConnectivityInfo"))
                                (:shape-name "UpdateConnectivityInfoRequest"))

(smithy/sdk/shapes:define-output update-connectivity-info-response
                                 common-lisp:nil
                                 ((version :target-type string :member-name
                                   "version" :json-name "Version")
                                  (message :target-type string :member-name
                                   "message" :json-name "Message"))
                                 (:shape-name "UpdateConnectivityInfoResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "reason")
                                 (fields :target-type
                                  validation-exception-field-list :member-name
                                  "fields"))
                                (:shape-name "ValidationException")
                                (:error-code 400)
                                (:base-class greengrassv2-error))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:unknown-operation "UNKNOWN_OPERATION")
  (:cannot-parse "CANNOT_PARSE")
  (:field-validation-failed "FIELD_VALIDATION_FAILED")
  (:other "OTHER"))

(smithy/sdk/shapes:define-enum vendor-guidance
    common-lisp:nil
  (:active "ACTIVE")
  (:discontinued "DISCONTINUED")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-list connectivity-info-list :member connectivity-info)

(smithy/sdk/operation:define-operation associate-service-role-to-account
                                       :shape-name
                                       "AssociateServiceRoleToAccount" :input
                                       associate-service-role-to-account-request
                                       :output
                                       associate-service-role-to-account-response
                                       :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/greengrass/servicerole" :code 200)

(smithy/sdk/operation:define-operation
 batch-associate-client-device-with-core-device :shape-name
 "BatchAssociateClientDeviceWithCoreDevice" :input
 batch-associate-client-device-with-core-device-request :output
 batch-associate-client-device-with-core-device-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri
 "/greengrass/v2/coreDevices/{coreDeviceThingName}/associateClientDevices"
 :code 200)

(smithy/sdk/operation:define-operation
 batch-disassociate-client-device-from-core-device :shape-name
 "BatchDisassociateClientDeviceFromCoreDevice" :input
 batch-disassociate-client-device-from-core-device-request :output
 batch-disassociate-client-device-from-core-device-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri
 "/greengrass/v2/coreDevices/{coreDeviceThingName}/disassociateClientDevices"
 :code 200)

(smithy/sdk/operation:define-operation cancel-deployment :shape-name
                                       "CancelDeployment" :input
                                       cancel-deployment-request :output
                                       cancel-deployment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/greengrass/v2/deployments/{deploymentId}/cancel"
                                       :code 200)

(smithy/sdk/operation:define-operation create-component-version :shape-name
                                       "CreateComponentVersion" :input
                                       create-component-version-request :output
                                       create-component-version-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-already-in-progress-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/greengrass/v2/createComponentVersion"
                                       :code 201)

(smithy/sdk/operation:define-operation create-deployment :shape-name
                                       "CreateDeployment" :input
                                       create-deployment-request :output
                                       create-deployment-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        request-already-in-progress-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/greengrass/v2/deployments" :code 201)

(smithy/sdk/operation:define-operation delete-component :shape-name
                                       "DeleteComponent" :input
                                       delete-component-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/greengrass/v2/components/{arn}" :code
                                       204)

(smithy/sdk/operation:define-operation delete-core-device :shape-name
                                       "DeleteCoreDevice" :input
                                       delete-core-device-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/greengrass/v2/coreDevices/{coreDeviceThingName}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-deployment :shape-name
                                       "DeleteDeployment" :input
                                       delete-deployment-request :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/greengrass/v2/deployments/{deploymentId}"
                                       :code 204)

(smithy/sdk/operation:define-operation describe-component :shape-name
                                       "DescribeComponent" :input
                                       describe-component-request :output
                                       describe-component-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/greengrass/v2/components/{arn}/metadata"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-service-role-from-account
                                       :shape-name
                                       "DisassociateServiceRoleFromAccount"
                                       :input
                                       disassociate-service-role-from-account-request
                                       :output
                                       disassociate-service-role-from-account-response
                                       :errors (internal-server-exception)
                                       :method "DELETE" :uri
                                       "/greengrass/servicerole" :code 200)

(smithy/sdk/operation:define-operation get-component :shape-name "GetComponent"
                                       :input get-component-request :output
                                       get-component-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/greengrass/v2/components/{arn}" :code
                                       200)

(smithy/sdk/operation:define-operation get-component-version-artifact
                                       :shape-name
                                       "GetComponentVersionArtifact" :input
                                       get-component-version-artifact-request
                                       :output
                                       get-component-version-artifact-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/greengrass/v2/components/{arn}/artifacts/{artifactName+}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-connectivity-info :shape-name
                                       "GetConnectivityInfo" :input
                                       get-connectivity-info-request :output
                                       get-connectivity-info-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/greengrass/things/{thingName}/connectivityInfo"
                                       :code 200)

(smithy/sdk/operation:define-operation get-core-device :shape-name
                                       "GetCoreDevice" :input
                                       get-core-device-request :output
                                       get-core-device-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/greengrass/v2/coreDevices/{coreDeviceThingName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-deployment :shape-name
                                       "GetDeployment" :input
                                       get-deployment-request :output
                                       get-deployment-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/greengrass/v2/deployments/{deploymentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-service-role-for-account :shape-name
                                       "GetServiceRoleForAccount" :input
                                       get-service-role-for-account-request
                                       :output
                                       get-service-role-for-account-response
                                       :errors (internal-server-exception)
                                       :method "GET" :uri
                                       "/greengrass/servicerole" :code 200)

(smithy/sdk/operation:define-operation
 list-client-devices-associated-with-core-device :shape-name
 "ListClientDevicesAssociatedWithCoreDevice" :input
 list-client-devices-associated-with-core-device-request :output
 list-client-devices-associated-with-core-device-response :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/greengrass/v2/coreDevices/{coreDeviceThingName}/associatedClientDevices"
 :code 200)

(smithy/sdk/operation:define-operation list-component-versions :shape-name
                                       "ListComponentVersions" :input
                                       list-component-versions-request :output
                                       list-component-versions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/greengrass/v2/components/{arn}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-components :shape-name
                                       "ListComponents" :input
                                       list-components-request :output
                                       list-components-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/greengrass/v2/components" :code 200)

(smithy/sdk/operation:define-operation list-core-devices :shape-name
                                       "ListCoreDevices" :input
                                       list-core-devices-request :output
                                       list-core-devices-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/greengrass/v2/coreDevices" :code 200)

(smithy/sdk/operation:define-operation list-deployments :shape-name
                                       "ListDeployments" :input
                                       list-deployments-request :output
                                       list-deployments-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/greengrass/v2/deployments" :code 200)

(smithy/sdk/operation:define-operation list-effective-deployments :shape-name
                                       "ListEffectiveDeployments" :input
                                       list-effective-deployments-request
                                       :output
                                       list-effective-deployments-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/greengrass/v2/coreDevices/{coreDeviceThingName}/effectiveDeployments"
                                       :code 200)

(smithy/sdk/operation:define-operation list-installed-components :shape-name
                                       "ListInstalledComponents" :input
                                       list-installed-components-request
                                       :output
                                       list-installed-components-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/greengrass/v2/coreDevices/{coreDeviceThingName}/installedComponents"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation resolve-component-candidates :shape-name
                                       "ResolveComponentCandidates" :input
                                       resolve-component-candidates-request
                                       :output
                                       resolve-component-candidates-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/greengrass/v2/resolveComponentCandidates"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-connectivity-info :shape-name
                                       "UpdateConnectivityInfo" :input
                                       update-connectivity-info-request :output
                                       update-connectivity-info-response
                                       :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/greengrass/things/{thingName}/connectivityInfo"
                                       :code 200)
