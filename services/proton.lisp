(uiop/package:define-package #:pira/proton (:use)
                             (:export #:accept-environment-account-connection
                              #:accept-environment-account-connection-input
                              #:accept-environment-account-connection-output
                              #:access-denied-exception #:account-settings
                              #:account-settings-resource #:arn
                              #:aws-account-id #:aws-proton20200720
                              #:blocker-status #:blocker-type
                              #:cancel-component-deployment
                              #:cancel-component-deployment-input
                              #:cancel-component-deployment-output
                              #:cancel-environment-deployment
                              #:cancel-environment-deployment-input
                              #:cancel-environment-deployment-output
                              #:cancel-service-instance-deployment
                              #:cancel-service-instance-deployment-input
                              #:cancel-service-instance-deployment-output
                              #:cancel-service-pipeline-deployment
                              #:cancel-service-pipeline-deployment-input
                              #:cancel-service-pipeline-deployment-output
                              #:client-token #:compatible-environment-template
                              #:compatible-environment-template-input
                              #:compatible-environment-template-input-list
                              #:compatible-environment-template-list
                              #:component #:component-arn
                              #:component-deployment-id-list
                              #:component-deployment-update-type
                              #:component-output-resource
                              #:component-provisioned-resource-resource
                              #:component-resource #:component-state
                              #:component-summary #:component-summary-list
                              #:conflict-exception #:counts-summary
                              #:create-component #:create-component-input
                              #:create-component-output #:create-environment
                              #:create-environment-account-connection
                              #:create-environment-account-connection-input
                              #:create-environment-account-connection-output
                              #:create-environment-input
                              #:create-environment-output
                              #:create-environment-template
                              #:create-environment-template-input
                              #:create-environment-template-output
                              #:create-environment-template-version
                              #:create-environment-template-version-input
                              #:create-environment-template-version-output
                              #:create-repository #:create-repository-input
                              #:create-repository-output #:create-service
                              #:create-service-input #:create-service-instance
                              #:create-service-instance-input
                              #:create-service-instance-output
                              #:create-service-output
                              #:create-service-sync-config
                              #:create-service-sync-config-input
                              #:create-service-sync-config-output
                              #:create-service-template
                              #:create-service-template-input
                              #:create-service-template-output
                              #:create-service-template-version
                              #:create-service-template-version-input
                              #:create-service-template-version-output
                              #:create-template-sync-config
                              #:create-template-sync-config-input
                              #:create-template-sync-config-output
                              #:delete-component #:delete-component-input
                              #:delete-component-output #:delete-deployment
                              #:delete-deployment-input
                              #:delete-deployment-output #:delete-environment
                              #:delete-environment-account-connection
                              #:delete-environment-account-connection-input
                              #:delete-environment-account-connection-output
                              #:delete-environment-input
                              #:delete-environment-output
                              #:delete-environment-template
                              #:delete-environment-template-input
                              #:delete-environment-template-output
                              #:delete-environment-template-version
                              #:delete-environment-template-version-input
                              #:delete-environment-template-version-output
                              #:delete-repository #:delete-repository-input
                              #:delete-repository-output #:delete-service
                              #:delete-service-input #:delete-service-output
                              #:delete-service-sync-config
                              #:delete-service-sync-config-input
                              #:delete-service-sync-config-output
                              #:delete-service-template
                              #:delete-service-template-input
                              #:delete-service-template-output
                              #:delete-service-template-version
                              #:delete-service-template-version-input
                              #:delete-service-template-version-output
                              #:delete-template-sync-config
                              #:delete-template-sync-config-input
                              #:delete-template-sync-config-output #:deployment
                              #:deployment-arn #:deployment-id
                              #:deployment-resource #:deployment-state
                              #:deployment-status #:deployment-summary
                              #:deployment-summary-list
                              #:deployment-target-resource-type
                              #:deployment-update-type #:description
                              #:display-name #:empty-next-token #:environment
                              #:environment-account-connection
                              #:environment-account-connection-arn
                              #:environment-account-connection-id
                              #:environment-account-connection-requester-account-type
                              #:environment-account-connection-resource
                              #:environment-account-connection-status
                              #:environment-account-connection-status-list
                              #:environment-account-connection-summary
                              #:environment-account-connection-summary-list
                              #:environment-arn #:environment-output-resource
                              #:environment-provisioned-resource-resource
                              #:environment-resource #:environment-state
                              #:environment-summary #:environment-summary-list
                              #:environment-template #:environment-template-arn
                              #:environment-template-filter
                              #:environment-template-filter-list
                              #:environment-template-resource
                              #:environment-template-summary
                              #:environment-template-summary-list
                              #:environment-template-version
                              #:environment-template-version-arn
                              #:environment-template-version-resource
                              #:environment-template-version-summary
                              #:environment-template-version-summary-list
                              #:error-message #:full-template-version-number
                              #:get-account-settings
                              #:get-account-settings-input
                              #:get-account-settings-output #:get-component
                              #:get-component-input #:get-component-output
                              #:get-deployment #:get-deployment-input
                              #:get-deployment-output #:get-environment
                              #:get-environment-account-connection
                              #:get-environment-account-connection-input
                              #:get-environment-account-connection-output
                              #:get-environment-input #:get-environment-output
                              #:get-environment-template
                              #:get-environment-template-input
                              #:get-environment-template-output
                              #:get-environment-template-version
                              #:get-environment-template-version-input
                              #:get-environment-template-version-output
                              #:get-repository #:get-repository-input
                              #:get-repository-output
                              #:get-repository-sync-status
                              #:get-repository-sync-status-input
                              #:get-repository-sync-status-output
                              #:get-resources-summary
                              #:get-resources-summary-input
                              #:get-resources-summary-output #:get-service
                              #:get-service-input #:get-service-instance
                              #:get-service-instance-input
                              #:get-service-instance-output
                              #:get-service-instance-sync-status
                              #:get-service-instance-sync-status-input
                              #:get-service-instance-sync-status-output
                              #:get-service-output
                              #:get-service-sync-blocker-summary
                              #:get-service-sync-blocker-summary-input
                              #:get-service-sync-blocker-summary-output
                              #:get-service-sync-config
                              #:get-service-sync-config-input
                              #:get-service-sync-config-output
                              #:get-service-template
                              #:get-service-template-input
                              #:get-service-template-output
                              #:get-service-template-version
                              #:get-service-template-version-input
                              #:get-service-template-version-output
                              #:get-template-sync-config
                              #:get-template-sync-config-input
                              #:get-template-sync-config-output
                              #:get-template-sync-status
                              #:get-template-sync-status-input
                              #:get-template-sync-status-output
                              #:git-branch-name #:internal-server-exception
                              #:latest-sync-blockers #:list-component-outputs
                              #:list-component-outputs-input
                              #:list-component-outputs-output
                              #:list-component-provisioned-resources
                              #:list-component-provisioned-resources-input
                              #:list-component-provisioned-resources-output
                              #:list-components #:list-components-input
                              #:list-components-output #:list-deployments
                              #:list-deployments-input
                              #:list-deployments-output
                              #:list-environment-account-connections
                              #:list-environment-account-connections-input
                              #:list-environment-account-connections-output
                              #:list-environment-outputs
                              #:list-environment-outputs-input
                              #:list-environment-outputs-output
                              #:list-environment-provisioned-resources
                              #:list-environment-provisioned-resources-input
                              #:list-environment-provisioned-resources-output
                              #:list-environment-template-versions
                              #:list-environment-template-versions-input
                              #:list-environment-template-versions-output
                              #:list-environment-templates
                              #:list-environment-templates-input
                              #:list-environment-templates-output
                              #:list-environments #:list-environments-input
                              #:list-environments-output #:list-repositories
                              #:list-repositories-input
                              #:list-repositories-output
                              #:list-repository-sync-definitions
                              #:list-repository-sync-definitions-input
                              #:list-repository-sync-definitions-output
                              #:list-service-instance-outputs
                              #:list-service-instance-outputs-input
                              #:list-service-instance-outputs-output
                              #:list-service-instance-provisioned-resources
                              #:list-service-instance-provisioned-resources-input
                              #:list-service-instance-provisioned-resources-output
                              #:list-service-instances
                              #:list-service-instances-filter
                              #:list-service-instances-filter-by
                              #:list-service-instances-filter-list
                              #:list-service-instances-filter-value
                              #:list-service-instances-input
                              #:list-service-instances-output
                              #:list-service-instances-sort-by
                              #:list-service-pipeline-outputs
                              #:list-service-pipeline-outputs-input
                              #:list-service-pipeline-outputs-output
                              #:list-service-pipeline-provisioned-resources
                              #:list-service-pipeline-provisioned-resources-input
                              #:list-service-pipeline-provisioned-resources-output
                              #:list-service-template-versions
                              #:list-service-template-versions-input
                              #:list-service-template-versions-output
                              #:list-service-templates
                              #:list-service-templates-input
                              #:list-service-templates-output #:list-services
                              #:list-services-input #:list-services-output
                              #:list-tags-for-resource
                              #:list-tags-for-resource-input
                              #:list-tags-for-resource-output
                              #:max-page-results #:next-token
                              #:notify-resource-deployment-status-change
                              #:notify-resource-deployment-status-change-input
                              #:notify-resource-deployment-status-change-output
                              #:ops-file-path #:output #:output-key
                              #:output-value-string #:outputs-list
                              #:provisioned-resource
                              #:provisioned-resource-engine
                              #:provisioned-resource-identifier
                              #:provisioned-resource-list
                              #:provisioned-resource-name #:provisioning
                              #:reject-environment-account-connection
                              #:reject-environment-account-connection-input
                              #:reject-environment-account-connection-output
                              #:repository #:repository-arn #:repository-branch
                              #:repository-branch-input #:repository-id
                              #:repository-name #:repository-provider
                              #:repository-resource #:repository-summary
                              #:repository-summary-list
                              #:repository-sync-attempt
                              #:repository-sync-definition
                              #:repository-sync-definition-list
                              #:repository-sync-event #:repository-sync-events
                              #:repository-sync-status
                              #:resource-counts-summary
                              #:resource-deployment-status #:resource-name
                              #:resource-name-or-empty
                              #:resource-not-found-exception
                              #:resource-sync-attempt #:resource-sync-event
                              #:resource-sync-events #:resource-sync-status
                              #:revision #:role-arn #:role-arn-or-empty-string
                              #:s3bucket #:s3key #:s3object-source #:sha
                              #:service #:service-arn #:service-instance
                              #:service-instance-arn
                              #:service-instance-output-resource
                              #:service-instance-provisioned-resource-resource
                              #:service-instance-resource
                              #:service-instance-state
                              #:service-instance-summary
                              #:service-instance-summary-list
                              #:service-pipeline
                              #:service-pipeline-output-resource
                              #:service-pipeline-provisioned-resource-resource
                              #:service-pipeline-resource
                              #:service-pipeline-state
                              #:service-quota-exceeded-exception
                              #:service-resource #:service-status
                              #:service-summary #:service-summary-list
                              #:service-sync-blocker-resource
                              #:service-sync-blocker-summary
                              #:service-sync-config
                              #:service-sync-config-resource #:service-template
                              #:service-template-arn
                              #:service-template-resource
                              #:service-template-summary
                              #:service-template-summary-list
                              #:service-template-supported-component-source-input-list
                              #:service-template-supported-component-source-type
                              #:service-template-version
                              #:service-template-version-arn
                              #:service-template-version-resource
                              #:service-template-version-summary
                              #:service-template-version-summary-list
                              #:sort-order #:spec-contents #:status-message
                              #:subdirectory #:sync-blocker
                              #:sync-blocker-context #:sync-blocker-contexts
                              #:sync-type #:tag #:tag-key #:tag-key-list
                              #:tag-list #:tag-resource #:tag-resource-input
                              #:tag-resource-output #:tag-value
                              #:template-file-contents
                              #:template-manifest-contents #:template-schema
                              #:template-sync-config
                              #:template-sync-config-resource #:template-type
                              #:template-version-part
                              #:template-version-source-input
                              #:template-version-status #:throttling-exception
                              #:untag-resource #:untag-resource-input
                              #:untag-resource-output #:update-account-settings
                              #:update-account-settings-input
                              #:update-account-settings-output
                              #:update-component #:update-component-input
                              #:update-component-output #:update-environment
                              #:update-environment-account-connection
                              #:update-environment-account-connection-input
                              #:update-environment-account-connection-output
                              #:update-environment-input
                              #:update-environment-output
                              #:update-environment-template
                              #:update-environment-template-input
                              #:update-environment-template-output
                              #:update-environment-template-version
                              #:update-environment-template-version-input
                              #:update-environment-template-version-output
                              #:update-service #:update-service-input
                              #:update-service-instance
                              #:update-service-instance-input
                              #:update-service-instance-output
                              #:update-service-output #:update-service-pipeline
                              #:update-service-pipeline-input
                              #:update-service-pipeline-output
                              #:update-service-sync-blocker
                              #:update-service-sync-blocker-input
                              #:update-service-sync-blocker-output
                              #:update-service-sync-config
                              #:update-service-sync-config-input
                              #:update-service-sync-config-output
                              #:update-service-template
                              #:update-service-template-input
                              #:update-service-template-output
                              #:update-service-template-version
                              #:update-service-template-version-input
                              #:update-service-template-version-output
                              #:update-template-sync-config
                              #:update-template-sync-config-input
                              #:update-template-sync-config-output
                              #:validation-exception))
(common-lisp:in-package #:pira/proton)

(smithy/sdk/service:define-service aws-proton20200720 :shape-name
                                   "AwsProton20200720" :version "2020-07-20"
                                   :title "AWS Proton" :traits
                                   '(("aws.api#service" ("sdkId" . "Proton")
                                      ("endpointPrefix" . "proton"))
                                     ("aws.auth#sigv4" ("name" . "proton"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-structure accept-environment-account-connection-input
                                    common-lisp:nil
                                    ((id :target-type
                                      environment-account-connection-id
                                      :required common-lisp:t :member-name
                                      "id"))
                                    (:shape-name
                                     "AcceptEnvironmentAccountConnectionInput"))

(smithy/sdk/shapes:define-structure
 accept-environment-account-connection-output common-lisp:nil
 ((environment-account-connection :target-type environment-account-connection
   :required common-lisp:t :member-name "environmentAccountConnection"))
 (:shape-name "AcceptEnvironmentAccountConnectionOutput"))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure account-settings common-lisp:nil
                                    ((pipeline-service-role-arn :target-type
                                      role-arn-or-empty-string :member-name
                                      "pipelineServiceRoleArn")
                                     (pipeline-provisioning-repository
                                      :target-type repository-branch
                                      :member-name
                                      "pipelineProvisioningRepository")
                                     (pipeline-codebuild-role-arn :target-type
                                      role-arn-or-empty-string :member-name
                                      "pipelineCodebuildRoleArn"))
                                    (:shape-name "AccountSettings"))

common-lisp:nil

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aws-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type blocker-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type blocker-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure cancel-component-deployment-input
                                    common-lisp:nil
                                    ((component-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "componentName"))
                                    (:shape-name
                                     "CancelComponentDeploymentInput"))

(smithy/sdk/shapes:define-structure cancel-component-deployment-output
                                    common-lisp:nil
                                    ((component :target-type component
                                      :required common-lisp:t :member-name
                                      "component"))
                                    (:shape-name
                                     "CancelComponentDeploymentOutput"))

(smithy/sdk/shapes:define-structure cancel-environment-deployment-input
                                    common-lisp:nil
                                    ((environment-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "environmentName"))
                                    (:shape-name
                                     "CancelEnvironmentDeploymentInput"))

(smithy/sdk/shapes:define-structure cancel-environment-deployment-output
                                    common-lisp:nil
                                    ((environment :target-type environment
                                      :required common-lisp:t :member-name
                                      "environment"))
                                    (:shape-name
                                     "CancelEnvironmentDeploymentOutput"))

(smithy/sdk/shapes:define-structure cancel-service-instance-deployment-input
                                    common-lisp:nil
                                    ((service-instance-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "serviceInstanceName")
                                     (service-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "serviceName"))
                                    (:shape-name
                                     "CancelServiceInstanceDeploymentInput"))

(smithy/sdk/shapes:define-structure cancel-service-instance-deployment-output
                                    common-lisp:nil
                                    ((service-instance :target-type
                                      service-instance :required common-lisp:t
                                      :member-name "serviceInstance"))
                                    (:shape-name
                                     "CancelServiceInstanceDeploymentOutput"))

(smithy/sdk/shapes:define-structure cancel-service-pipeline-deployment-input
                                    common-lisp:nil
                                    ((service-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "serviceName"))
                                    (:shape-name
                                     "CancelServicePipelineDeploymentInput"))

(smithy/sdk/shapes:define-structure cancel-service-pipeline-deployment-output
                                    common-lisp:nil
                                    ((pipeline :target-type service-pipeline
                                      :required common-lisp:t :member-name
                                      "pipeline"))
                                    (:shape-name
                                     "CancelServicePipelineDeploymentOutput"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure compatible-environment-template
                                    common-lisp:nil
                                    ((template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "majorVersion"))
                                    (:shape-name
                                     "CompatibleEnvironmentTemplate"))

(smithy/sdk/shapes:define-structure compatible-environment-template-input
                                    common-lisp:nil
                                    ((template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "majorVersion"))
                                    (:shape-name
                                     "CompatibleEnvironmentTemplateInput"))

(smithy/sdk/shapes:define-list compatible-environment-template-input-list
                               :member compatible-environment-template-input)

(smithy/sdk/shapes:define-list compatible-environment-template-list :member
                               compatible-environment-template)

(smithy/sdk/shapes:define-structure component common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (arn :target-type component-arn :required
                                      common-lisp:t :member-name "arn")
                                     (environment-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "environmentName")
                                     (service-name :target-type resource-name
                                      :member-name "serviceName")
                                     (service-instance-name :target-type
                                      resource-name :member-name
                                      "serviceInstanceName")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedAt")
                                     (last-deployment-attempted-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastDeploymentAttemptedAt")
                                     (last-deployment-succeeded-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastDeploymentSucceededAt")
                                     (deployment-status :target-type
                                      deployment-status :required common-lisp:t
                                      :member-name "deploymentStatus")
                                     (deployment-status-message :target-type
                                      status-message :member-name
                                      "deploymentStatusMessage")
                                     (service-spec :target-type spec-contents
                                      :member-name "serviceSpec")
                                     (last-client-request-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "lastClientRequestToken")
                                     (last-attempted-deployment-id :target-type
                                      deployment-id :member-name
                                      "lastAttemptedDeploymentId")
                                     (last-succeeded-deployment-id :target-type
                                      deployment-id :member-name
                                      "lastSucceededDeploymentId"))
                                    (:shape-name "Component"))

(smithy/sdk/shapes:define-type component-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list component-deployment-id-list :member
                               deployment-id)

(smithy/sdk/shapes:define-type component-deployment-update-type
                               smithy/sdk/smithy-types:string)

common-lisp:nil

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-structure component-state common-lisp:nil
                                    ((service-name :target-type
                                      resource-name-or-empty :member-name
                                      "serviceName")
                                     (service-instance-name :target-type
                                      resource-name-or-empty :member-name
                                      "serviceInstanceName")
                                     (service-spec :target-type spec-contents
                                      :member-name "serviceSpec")
                                     (template-file :target-type
                                      template-file-contents :member-name
                                      "templateFile"))
                                    (:shape-name "ComponentState"))

(smithy/sdk/shapes:define-structure component-summary common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type component-arn :required
                                      common-lisp:t :member-name "arn")
                                     (environment-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "environmentName")
                                     (service-name :target-type resource-name
                                      :member-name "serviceName")
                                     (service-instance-name :target-type
                                      resource-name :member-name
                                      "serviceInstanceName")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedAt")
                                     (last-deployment-attempted-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastDeploymentAttemptedAt")
                                     (last-deployment-succeeded-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastDeploymentSucceededAt")
                                     (deployment-status :target-type
                                      deployment-status :required common-lisp:t
                                      :member-name "deploymentStatus")
                                     (deployment-status-message :target-type
                                      status-message :member-name
                                      "deploymentStatusMessage")
                                     (last-attempted-deployment-id :target-type
                                      deployment-id :member-name
                                      "lastAttemptedDeploymentId")
                                     (last-succeeded-deployment-id :target-type
                                      deployment-id :member-name
                                      "lastSucceededDeploymentId"))
                                    (:shape-name "ComponentSummary"))

(smithy/sdk/shapes:define-list component-summary-list :member component-summary)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure counts-summary common-lisp:nil
                                    ((components :target-type
                                      resource-counts-summary :member-name
                                      "components")
                                     (environments :target-type
                                      resource-counts-summary :member-name
                                      "environments")
                                     (environment-templates :target-type
                                      resource-counts-summary :member-name
                                      "environmentTemplates")
                                     (service-instances :target-type
                                      resource-counts-summary :member-name
                                      "serviceInstances")
                                     (services :target-type
                                      resource-counts-summary :member-name
                                      "services")
                                     (service-templates :target-type
                                      resource-counts-summary :member-name
                                      "serviceTemplates")
                                     (pipelines :target-type
                                      resource-counts-summary :member-name
                                      "pipelines"))
                                    (:shape-name "CountsSummary"))

(smithy/sdk/shapes:define-structure create-component-input common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (service-name :target-type resource-name
                                      :member-name "serviceName")
                                     (service-instance-name :target-type
                                      resource-name :member-name
                                      "serviceInstanceName")
                                     (environment-name :target-type
                                      resource-name :member-name
                                      "environmentName")
                                     (template-file :target-type
                                      template-file-contents :required
                                      common-lisp:t :member-name
                                      "templateFile")
                                     (manifest :target-type
                                      template-manifest-contents :required
                                      common-lisp:t :member-name "manifest")
                                     (service-spec :target-type spec-contents
                                      :member-name "serviceSpec")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "CreateComponentInput"))

(smithy/sdk/shapes:define-structure create-component-output common-lisp:nil
                                    ((component :target-type component
                                      :required common-lisp:t :member-name
                                      "component"))
                                    (:shape-name "CreateComponentOutput"))

(smithy/sdk/shapes:define-structure create-environment-account-connection-input
                                    common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "clientToken")
                                     (management-account-id :target-type
                                      aws-account-id :required common-lisp:t
                                      :member-name "managementAccountId")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (environment-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "environmentName")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (component-role-arn :target-type role-arn
                                      :member-name "componentRoleArn")
                                     (codebuild-role-arn :target-type role-arn
                                      :member-name "codebuildRoleArn"))
                                    (:shape-name
                                     "CreateEnvironmentAccountConnectionInput"))

(smithy/sdk/shapes:define-structure
 create-environment-account-connection-output common-lisp:nil
 ((environment-account-connection :target-type environment-account-connection
   :required common-lisp:t :member-name "environmentAccountConnection"))
 (:shape-name "CreateEnvironmentAccountConnectionOutput"))

(smithy/sdk/shapes:define-structure create-environment-input common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (template-major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "templateMajorVersion")
                                     (template-minor-version :target-type
                                      template-version-part :member-name
                                      "templateMinorVersion")
                                     (description :target-type description
                                      :member-name "description")
                                     (spec :target-type spec-contents :required
                                      common-lisp:t :member-name "spec")
                                     (proton-service-role-arn :target-type arn
                                      :member-name "protonServiceRoleArn")
                                     (environment-account-connection-id
                                      :target-type
                                      environment-account-connection-id
                                      :member-name
                                      "environmentAccountConnectionId")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (provisioning-repository :target-type
                                      repository-branch-input :member-name
                                      "provisioningRepository")
                                     (component-role-arn :target-type role-arn
                                      :member-name "componentRoleArn")
                                     (codebuild-role-arn :target-type role-arn
                                      :member-name "codebuildRoleArn"))
                                    (:shape-name "CreateEnvironmentInput"))

(smithy/sdk/shapes:define-structure create-environment-output common-lisp:nil
                                    ((environment :target-type environment
                                      :required common-lisp:t :member-name
                                      "environment"))
                                    (:shape-name "CreateEnvironmentOutput"))

(smithy/sdk/shapes:define-structure create-environment-template-input
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (display-name :target-type display-name
                                      :member-name "displayName")
                                     (description :target-type description
                                      :member-name "description")
                                     (encryption-key :target-type arn
                                      :member-name "encryptionKey")
                                     (provisioning :target-type provisioning
                                      :member-name "provisioning")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name
                                     "CreateEnvironmentTemplateInput"))

(smithy/sdk/shapes:define-structure create-environment-template-output
                                    common-lisp:nil
                                    ((environment-template :target-type
                                      environment-template :required
                                      common-lisp:t :member-name
                                      "environmentTemplate"))
                                    (:shape-name
                                     "CreateEnvironmentTemplateOutput"))

(smithy/sdk/shapes:define-structure create-environment-template-version-input
                                    common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "clientToken")
                                     (template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (description :target-type description
                                      :member-name "description")
                                     (major-version :target-type
                                      template-version-part :member-name
                                      "majorVersion")
                                     (source :target-type
                                      template-version-source-input :required
                                      common-lisp:t :member-name "source")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name
                                     "CreateEnvironmentTemplateVersionInput"))

(smithy/sdk/shapes:define-structure create-environment-template-version-output
                                    common-lisp:nil
                                    ((environment-template-version :target-type
                                      environment-template-version :required
                                      common-lisp:t :member-name
                                      "environmentTemplateVersion"))
                                    (:shape-name
                                     "CreateEnvironmentTemplateVersionOutput"))

(smithy/sdk/shapes:define-structure create-repository-input common-lisp:nil
                                    ((provider :target-type repository-provider
                                      :required common-lisp:t :member-name
                                      "provider")
                                     (name :target-type repository-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (connection-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "connectionArn")
                                     (encryption-key :target-type arn
                                      :member-name "encryptionKey")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name "CreateRepositoryInput"))

(smithy/sdk/shapes:define-structure create-repository-output common-lisp:nil
                                    ((repository :target-type repository
                                      :required common-lisp:t :member-name
                                      "repository"))
                                    (:shape-name "CreateRepositoryOutput"))

(smithy/sdk/shapes:define-structure create-service-input common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (template-major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "templateMajorVersion")
                                     (template-minor-version :target-type
                                      template-version-part :member-name
                                      "templateMinorVersion")
                                     (spec :target-type spec-contents :required
                                      common-lisp:t :member-name "spec")
                                     (repository-connection-arn :target-type
                                      arn :member-name
                                      "repositoryConnectionArn")
                                     (repository-id :target-type repository-id
                                      :member-name "repositoryId")
                                     (branch-name :target-type git-branch-name
                                      :member-name "branchName")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name "CreateServiceInput"))

(smithy/sdk/shapes:define-structure create-service-instance-input
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (service-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "serviceName")
                                     (spec :target-type spec-contents :required
                                      common-lisp:t :member-name "spec")
                                     (template-major-version :target-type
                                      template-version-part :member-name
                                      "templateMajorVersion")
                                     (template-minor-version :target-type
                                      template-version-part :member-name
                                      "templateMinorVersion")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "CreateServiceInstanceInput"))

(smithy/sdk/shapes:define-structure create-service-instance-output
                                    common-lisp:nil
                                    ((service-instance :target-type
                                      service-instance :required common-lisp:t
                                      :member-name "serviceInstance"))
                                    (:shape-name "CreateServiceInstanceOutput"))

(smithy/sdk/shapes:define-structure create-service-output common-lisp:nil
                                    ((service :target-type service :required
                                      common-lisp:t :member-name "service"))
                                    (:shape-name "CreateServiceOutput"))

(smithy/sdk/shapes:define-structure create-service-sync-config-input
                                    common-lisp:nil
                                    ((service-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "serviceName")
                                     (repository-provider :target-type
                                      repository-provider :required
                                      common-lisp:t :member-name
                                      "repositoryProvider")
                                     (repository-name :target-type
                                      repository-name :required common-lisp:t
                                      :member-name "repositoryName")
                                     (branch :target-type git-branch-name
                                      :required common-lisp:t :member-name
                                      "branch")
                                     (file-path :target-type ops-file-path
                                      :required common-lisp:t :member-name
                                      "filePath"))
                                    (:shape-name
                                     "CreateServiceSyncConfigInput"))

(smithy/sdk/shapes:define-structure create-service-sync-config-output
                                    common-lisp:nil
                                    ((service-sync-config :target-type
                                      service-sync-config :member-name
                                      "serviceSyncConfig"))
                                    (:shape-name
                                     "CreateServiceSyncConfigOutput"))

(smithy/sdk/shapes:define-structure create-service-template-input
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (display-name :target-type display-name
                                      :member-name "displayName")
                                     (description :target-type description
                                      :member-name "description")
                                     (encryption-key :target-type arn
                                      :member-name "encryptionKey")
                                     (pipeline-provisioning :target-type
                                      provisioning :member-name
                                      "pipelineProvisioning")
                                     (tags :target-type tag-list :member-name
                                      "tags"))
                                    (:shape-name "CreateServiceTemplateInput"))

(smithy/sdk/shapes:define-structure create-service-template-output
                                    common-lisp:nil
                                    ((service-template :target-type
                                      service-template :required common-lisp:t
                                      :member-name "serviceTemplate"))
                                    (:shape-name "CreateServiceTemplateOutput"))

(smithy/sdk/shapes:define-structure create-service-template-version-input
                                    common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "clientToken")
                                     (template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (description :target-type description
                                      :member-name "description")
                                     (major-version :target-type
                                      template-version-part :member-name
                                      "majorVersion")
                                     (source :target-type
                                      template-version-source-input :required
                                      common-lisp:t :member-name "source")
                                     (compatible-environment-templates
                                      :target-type
                                      compatible-environment-template-input-list
                                      :required common-lisp:t :member-name
                                      "compatibleEnvironmentTemplates")
                                     (tags :target-type tag-list :member-name
                                      "tags")
                                     (supported-component-sources :target-type
                                      service-template-supported-component-source-input-list
                                      :member-name
                                      "supportedComponentSources"))
                                    (:shape-name
                                     "CreateServiceTemplateVersionInput"))

(smithy/sdk/shapes:define-structure create-service-template-version-output
                                    common-lisp:nil
                                    ((service-template-version :target-type
                                      service-template-version :required
                                      common-lisp:t :member-name
                                      "serviceTemplateVersion"))
                                    (:shape-name
                                     "CreateServiceTemplateVersionOutput"))

(smithy/sdk/shapes:define-structure create-template-sync-config-input
                                    common-lisp:nil
                                    ((template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (template-type :target-type template-type
                                      :required common-lisp:t :member-name
                                      "templateType")
                                     (repository-provider :target-type
                                      repository-provider :required
                                      common-lisp:t :member-name
                                      "repositoryProvider")
                                     (repository-name :target-type
                                      repository-name :required common-lisp:t
                                      :member-name "repositoryName")
                                     (branch :target-type git-branch-name
                                      :required common-lisp:t :member-name
                                      "branch")
                                     (subdirectory :target-type subdirectory
                                      :member-name "subdirectory"))
                                    (:shape-name
                                     "CreateTemplateSyncConfigInput"))

(smithy/sdk/shapes:define-structure create-template-sync-config-output
                                    common-lisp:nil
                                    ((template-sync-config :target-type
                                      template-sync-config :member-name
                                      "templateSyncConfig"))
                                    (:shape-name
                                     "CreateTemplateSyncConfigOutput"))

(smithy/sdk/shapes:define-structure delete-component-input common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "DeleteComponentInput"))

(smithy/sdk/shapes:define-structure delete-component-output common-lisp:nil
                                    ((component :target-type component
                                      :member-name "component"))
                                    (:shape-name "DeleteComponentOutput"))

(smithy/sdk/shapes:define-input delete-deployment-input common-lisp:nil
                                ((id :target-type deployment-id :required
                                  common-lisp:t :member-name "id"))
                                (:shape-name "DeleteDeploymentInput"))

(smithy/sdk/shapes:define-output delete-deployment-output common-lisp:nil
                                 ((deployment :target-type deployment
                                   :member-name "deployment"))
                                 (:shape-name "DeleteDeploymentOutput"))

(smithy/sdk/shapes:define-structure delete-environment-account-connection-input
                                    common-lisp:nil
                                    ((id :target-type
                                      environment-account-connection-id
                                      :required common-lisp:t :member-name
                                      "id"))
                                    (:shape-name
                                     "DeleteEnvironmentAccountConnectionInput"))

(smithy/sdk/shapes:define-structure
 delete-environment-account-connection-output common-lisp:nil
 ((environment-account-connection :target-type environment-account-connection
   :member-name "environmentAccountConnection"))
 (:shape-name "DeleteEnvironmentAccountConnectionOutput"))

(smithy/sdk/shapes:define-structure delete-environment-input common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "DeleteEnvironmentInput"))

(smithy/sdk/shapes:define-structure delete-environment-output common-lisp:nil
                                    ((environment :target-type environment
                                      :member-name "environment"))
                                    (:shape-name "DeleteEnvironmentOutput"))

(smithy/sdk/shapes:define-structure delete-environment-template-input
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name
                                     "DeleteEnvironmentTemplateInput"))

(smithy/sdk/shapes:define-structure delete-environment-template-output
                                    common-lisp:nil
                                    ((environment-template :target-type
                                      environment-template :member-name
                                      "environmentTemplate"))
                                    (:shape-name
                                     "DeleteEnvironmentTemplateOutput"))

(smithy/sdk/shapes:define-structure delete-environment-template-version-input
                                    common-lisp:nil
                                    ((template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "majorVersion")
                                     (minor-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "minorVersion"))
                                    (:shape-name
                                     "DeleteEnvironmentTemplateVersionInput"))

(smithy/sdk/shapes:define-structure delete-environment-template-version-output
                                    common-lisp:nil
                                    ((environment-template-version :target-type
                                      environment-template-version :member-name
                                      "environmentTemplateVersion"))
                                    (:shape-name
                                     "DeleteEnvironmentTemplateVersionOutput"))

(smithy/sdk/shapes:define-structure delete-repository-input common-lisp:nil
                                    ((provider :target-type repository-provider
                                      :required common-lisp:t :member-name
                                      "provider")
                                     (name :target-type repository-name
                                      :required common-lisp:t :member-name
                                      "name"))
                                    (:shape-name "DeleteRepositoryInput"))

(smithy/sdk/shapes:define-structure delete-repository-output common-lisp:nil
                                    ((repository :target-type repository
                                      :member-name "repository"))
                                    (:shape-name "DeleteRepositoryOutput"))

(smithy/sdk/shapes:define-structure delete-service-input common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "DeleteServiceInput"))

(smithy/sdk/shapes:define-structure delete-service-output common-lisp:nil
                                    ((service :target-type service :member-name
                                      "service"))
                                    (:shape-name "DeleteServiceOutput"))

(smithy/sdk/shapes:define-structure delete-service-sync-config-input
                                    common-lisp:nil
                                    ((service-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "serviceName"))
                                    (:shape-name
                                     "DeleteServiceSyncConfigInput"))

(smithy/sdk/shapes:define-structure delete-service-sync-config-output
                                    common-lisp:nil
                                    ((service-sync-config :target-type
                                      service-sync-config :member-name
                                      "serviceSyncConfig"))
                                    (:shape-name
                                     "DeleteServiceSyncConfigOutput"))

(smithy/sdk/shapes:define-structure delete-service-template-input
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "DeleteServiceTemplateInput"))

(smithy/sdk/shapes:define-structure delete-service-template-output
                                    common-lisp:nil
                                    ((service-template :target-type
                                      service-template :member-name
                                      "serviceTemplate"))
                                    (:shape-name "DeleteServiceTemplateOutput"))

(smithy/sdk/shapes:define-structure delete-service-template-version-input
                                    common-lisp:nil
                                    ((template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "majorVersion")
                                     (minor-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "minorVersion"))
                                    (:shape-name
                                     "DeleteServiceTemplateVersionInput"))

(smithy/sdk/shapes:define-structure delete-service-template-version-output
                                    common-lisp:nil
                                    ((service-template-version :target-type
                                      service-template-version :member-name
                                      "serviceTemplateVersion"))
                                    (:shape-name
                                     "DeleteServiceTemplateVersionOutput"))

(smithy/sdk/shapes:define-structure delete-template-sync-config-input
                                    common-lisp:nil
                                    ((template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (template-type :target-type template-type
                                      :required common-lisp:t :member-name
                                      "templateType"))
                                    (:shape-name
                                     "DeleteTemplateSyncConfigInput"))

(smithy/sdk/shapes:define-structure delete-template-sync-config-output
                                    common-lisp:nil
                                    ((template-sync-config :target-type
                                      template-sync-config :member-name
                                      "templateSyncConfig"))
                                    (:shape-name
                                     "DeleteTemplateSyncConfigOutput"))

(smithy/sdk/shapes:define-structure deployment common-lisp:nil
                                    ((id :target-type deployment-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type deployment-arn :required
                                      common-lisp:t :member-name "arn")
                                     (target-arn :target-type arn :required
                                      common-lisp:t :member-name "targetArn")
                                     (target-resource-created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "targetResourceCreatedAt")
                                     (target-resource-type :target-type
                                      deployment-target-resource-type :required
                                      common-lisp:t :member-name
                                      "targetResourceType")
                                     (environment-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "environmentName")
                                     (service-name :target-type resource-name
                                      :member-name "serviceName")
                                     (service-instance-name :target-type
                                      resource-name :member-name
                                      "serviceInstanceName")
                                     (component-name :target-type resource-name
                                      :member-name "componentName")
                                     (deployment-status :target-type
                                      deployment-status :required common-lisp:t
                                      :member-name "deploymentStatus")
                                     (deployment-status-message :target-type
                                      status-message :member-name
                                      "deploymentStatusMessage")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedAt")
                                     (completed-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "completedAt")
                                     (last-attempted-deployment-id :target-type
                                      deployment-id :member-name
                                      "lastAttemptedDeploymentId")
                                     (last-succeeded-deployment-id :target-type
                                      deployment-id :member-name
                                      "lastSucceededDeploymentId")
                                     (initial-state :target-type
                                      deployment-state :member-name
                                      "initialState")
                                     (target-state :target-type
                                      deployment-state :member-name
                                      "targetState"))
                                    (:shape-name "Deployment"))

(smithy/sdk/shapes:define-type deployment-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type deployment-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-union deployment-state common-lisp:nil
                                ((service-instance :target-type
                                  service-instance-state :member-name
                                  "serviceInstance")
                                 (environment :target-type environment-state
                                  :member-name "environment")
                                 (service-pipeline :target-type
                                  service-pipeline-state :member-name
                                  "servicePipeline")
                                 (component :target-type component-state
                                  :member-name "component"))
                                (:shape-name "DeploymentState"))

(smithy/sdk/shapes:define-type deployment-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure deployment-summary common-lisp:nil
                                    ((id :target-type deployment-id :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type deployment-arn :required
                                      common-lisp:t :member-name "arn")
                                     (target-arn :target-type arn :required
                                      common-lisp:t :member-name "targetArn")
                                     (target-resource-created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "targetResourceCreatedAt")
                                     (target-resource-type :target-type
                                      deployment-target-resource-type :required
                                      common-lisp:t :member-name
                                      "targetResourceType")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedAt")
                                     (completed-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "completedAt")
                                     (environment-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "environmentName")
                                     (service-name :target-type resource-name
                                      :member-name "serviceName")
                                     (service-instance-name :target-type
                                      resource-name :member-name
                                      "serviceInstanceName")
                                     (component-name :target-type resource-name
                                      :member-name "componentName")
                                     (last-attempted-deployment-id :target-type
                                      deployment-id :member-name
                                      "lastAttemptedDeploymentId")
                                     (last-succeeded-deployment-id :target-type
                                      deployment-id :member-name
                                      "lastSucceededDeploymentId")
                                     (deployment-status :target-type
                                      deployment-status :required common-lisp:t
                                      :member-name "deploymentStatus"))
                                    (:shape-name "DeploymentSummary"))

(smithy/sdk/shapes:define-list deployment-summary-list :member
                               deployment-summary)

(smithy/sdk/shapes:define-type deployment-target-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type deployment-update-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type display-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type empty-next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure environment common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-deployment-attempted-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastDeploymentAttemptedAt")
                                     (last-deployment-succeeded-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastDeploymentSucceededAt")
                                     (arn :target-type environment-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (template-major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "templateMajorVersion")
                                     (template-minor-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "templateMinorVersion")
                                     (deployment-status :target-type
                                      deployment-status :required common-lisp:t
                                      :member-name "deploymentStatus")
                                     (deployment-status-message :target-type
                                      status-message :member-name
                                      "deploymentStatusMessage")
                                     (proton-service-role-arn :target-type arn
                                      :member-name "protonServiceRoleArn")
                                     (environment-account-connection-id
                                      :target-type
                                      environment-account-connection-id
                                      :member-name
                                      "environmentAccountConnectionId")
                                     (environment-account-id :target-type
                                      aws-account-id :member-name
                                      "environmentAccountId")
                                     (spec :target-type spec-contents
                                      :member-name "spec")
                                     (provisioning :target-type provisioning
                                      :member-name "provisioning")
                                     (provisioning-repository :target-type
                                      repository-branch :member-name
                                      "provisioningRepository")
                                     (component-role-arn :target-type role-arn
                                      :member-name "componentRoleArn")
                                     (codebuild-role-arn :target-type role-arn
                                      :member-name "codebuildRoleArn")
                                     (last-attempted-deployment-id :target-type
                                      deployment-id :member-name
                                      "lastAttemptedDeploymentId")
                                     (last-succeeded-deployment-id :target-type
                                      deployment-id :member-name
                                      "lastSucceededDeploymentId"))
                                    (:shape-name "Environment"))

(smithy/sdk/shapes:define-structure environment-account-connection
                                    common-lisp:nil
                                    ((id :target-type
                                      environment-account-connection-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (arn :target-type
                                      environment-account-connection-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (management-account-id :target-type
                                      aws-account-id :required common-lisp:t
                                      :member-name "managementAccountId")
                                     (environment-account-id :target-type
                                      aws-account-id :required common-lisp:t
                                      :member-name "environmentAccountId")
                                     (role-arn :target-type arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (environment-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "environmentName")
                                     (requested-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "requestedAt")
                                     (last-modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedAt")
                                     (status :target-type
                                      environment-account-connection-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (component-role-arn :target-type role-arn
                                      :member-name "componentRoleArn")
                                     (codebuild-role-arn :target-type role-arn
                                      :member-name "codebuildRoleArn"))
                                    (:shape-name
                                     "EnvironmentAccountConnection"))

(smithy/sdk/shapes:define-type environment-account-connection-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-account-connection-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 environment-account-connection-requester-account-type
 smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type environment-account-connection-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list environment-account-connection-status-list
                               :member environment-account-connection-status)

(smithy/sdk/shapes:define-structure environment-account-connection-summary
                                    common-lisp:nil
                                    ((id :target-type
                                      environment-account-connection-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (arn :target-type
                                      environment-account-connection-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (management-account-id :target-type
                                      aws-account-id :required common-lisp:t
                                      :member-name "managementAccountId")
                                     (environment-account-id :target-type
                                      aws-account-id :required common-lisp:t
                                      :member-name "environmentAccountId")
                                     (role-arn :target-type arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (environment-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "environmentName")
                                     (requested-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "requestedAt")
                                     (last-modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedAt")
                                     (status :target-type
                                      environment-account-connection-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (component-role-arn :target-type arn
                                      :member-name "componentRoleArn"))
                                    (:shape-name
                                     "EnvironmentAccountConnectionSummary"))

(smithy/sdk/shapes:define-list environment-account-connection-summary-list
                               :member environment-account-connection-summary)

(smithy/sdk/shapes:define-type environment-arn smithy/sdk/smithy-types:string)

common-lisp:nil

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-structure environment-state common-lisp:nil
                                    ((spec :target-type spec-contents
                                      :member-name "spec")
                                     (template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (template-major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "templateMajorVersion")
                                     (template-minor-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "templateMinorVersion"))
                                    (:shape-name "EnvironmentState"))

(smithy/sdk/shapes:define-structure environment-summary common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-deployment-attempted-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastDeploymentAttemptedAt")
                                     (last-deployment-succeeded-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastDeploymentSucceededAt")
                                     (arn :target-type environment-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (template-major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "templateMajorVersion")
                                     (template-minor-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "templateMinorVersion")
                                     (deployment-status :target-type
                                      deployment-status :required common-lisp:t
                                      :member-name "deploymentStatus")
                                     (deployment-status-message :target-type
                                      status-message :member-name
                                      "deploymentStatusMessage")
                                     (proton-service-role-arn :target-type arn
                                      :member-name "protonServiceRoleArn")
                                     (environment-account-connection-id
                                      :target-type
                                      environment-account-connection-id
                                      :member-name
                                      "environmentAccountConnectionId")
                                     (environment-account-id :target-type
                                      aws-account-id :member-name
                                      "environmentAccountId")
                                     (provisioning :target-type provisioning
                                      :member-name "provisioning")
                                     (component-role-arn :target-type arn
                                      :member-name "componentRoleArn")
                                     (last-attempted-deployment-id :target-type
                                      deployment-id :member-name
                                      "lastAttemptedDeploymentId")
                                     (last-succeeded-deployment-id :target-type
                                      deployment-id :member-name
                                      "lastSucceededDeploymentId"))
                                    (:shape-name "EnvironmentSummary"))

(smithy/sdk/shapes:define-list environment-summary-list :member
                               environment-summary)

(smithy/sdk/shapes:define-structure environment-template common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type environment-template-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedAt")
                                     (display-name :target-type display-name
                                      :member-name "displayName")
                                     (description :target-type description
                                      :member-name "description")
                                     (recommended-version :target-type
                                      full-template-version-number :member-name
                                      "recommendedVersion")
                                     (encryption-key :target-type arn
                                      :member-name "encryptionKey")
                                     (provisioning :target-type provisioning
                                      :member-name "provisioning"))
                                    (:shape-name "EnvironmentTemplate"))

(smithy/sdk/shapes:define-type environment-template-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure environment-template-filter common-lisp:nil
                                    ((template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "majorVersion"))
                                    (:shape-name "EnvironmentTemplateFilter"))

(smithy/sdk/shapes:define-list environment-template-filter-list :member
                               environment-template-filter)

common-lisp:nil

(smithy/sdk/shapes:define-structure environment-template-summary
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type environment-template-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedAt")
                                     (display-name :target-type display-name
                                      :member-name "displayName")
                                     (description :target-type description
                                      :member-name "description")
                                     (recommended-version :target-type
                                      full-template-version-number :member-name
                                      "recommendedVersion")
                                     (provisioning :target-type provisioning
                                      :member-name "provisioning"))
                                    (:shape-name "EnvironmentTemplateSummary"))

(smithy/sdk/shapes:define-list environment-template-summary-list :member
                               environment-template-summary)

(smithy/sdk/shapes:define-structure environment-template-version
                                    common-lisp:nil
                                    ((template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "majorVersion")
                                     (minor-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "minorVersion")
                                     (recommended-minor-version :target-type
                                      template-version-part :member-name
                                      "recommendedMinorVersion")
                                     (status :target-type
                                      template-version-status :required
                                      common-lisp:t :member-name "status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "statusMessage")
                                     (description :target-type description
                                      :member-name "description")
                                     (arn :target-type
                                      environment-template-version-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedAt")
                                     (schema :target-type template-schema
                                      :member-name "schema"))
                                    (:shape-name "EnvironmentTemplateVersion"))

(smithy/sdk/shapes:define-type environment-template-version-arn
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure environment-template-version-summary
                                    common-lisp:nil
                                    ((template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "majorVersion")
                                     (minor-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "minorVersion")
                                     (recommended-minor-version :target-type
                                      template-version-part :member-name
                                      "recommendedMinorVersion")
                                     (status :target-type
                                      template-version-status :required
                                      common-lisp:t :member-name "status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "statusMessage")
                                     (description :target-type description
                                      :member-name "description")
                                     (arn :target-type
                                      environment-template-version-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedAt"))
                                    (:shape-name
                                     "EnvironmentTemplateVersionSummary"))

(smithy/sdk/shapes:define-list environment-template-version-summary-list
                               :member environment-template-version-summary)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type full-template-version-number
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure get-account-settings-input common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "GetAccountSettingsInput"))

(smithy/sdk/shapes:define-structure get-account-settings-output common-lisp:nil
                                    ((account-settings :target-type
                                      account-settings :member-name
                                      "accountSettings"))
                                    (:shape-name "GetAccountSettingsOutput"))

(smithy/sdk/shapes:define-structure get-component-input common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "GetComponentInput"))

(smithy/sdk/shapes:define-structure get-component-output common-lisp:nil
                                    ((component :target-type component
                                      :member-name "component"))
                                    (:shape-name "GetComponentOutput"))

(smithy/sdk/shapes:define-input get-deployment-input common-lisp:nil
                                ((id :target-type deployment-id :required
                                  common-lisp:t :member-name "id")
                                 (environment-name :target-type resource-name
                                  :member-name "environmentName")
                                 (service-name :target-type resource-name
                                  :member-name "serviceName")
                                 (service-instance-name :target-type
                                  resource-name :member-name
                                  "serviceInstanceName")
                                 (component-name :target-type resource-name
                                  :member-name "componentName"))
                                (:shape-name "GetDeploymentInput"))

(smithy/sdk/shapes:define-output get-deployment-output common-lisp:nil
                                 ((deployment :target-type deployment
                                   :member-name "deployment"))
                                 (:shape-name "GetDeploymentOutput"))

(smithy/sdk/shapes:define-structure get-environment-account-connection-input
                                    common-lisp:nil
                                    ((id :target-type
                                      environment-account-connection-id
                                      :required common-lisp:t :member-name
                                      "id"))
                                    (:shape-name
                                     "GetEnvironmentAccountConnectionInput"))

(smithy/sdk/shapes:define-structure get-environment-account-connection-output
                                    common-lisp:nil
                                    ((environment-account-connection
                                      :target-type
                                      environment-account-connection :required
                                      common-lisp:t :member-name
                                      "environmentAccountConnection"))
                                    (:shape-name
                                     "GetEnvironmentAccountConnectionOutput"))

(smithy/sdk/shapes:define-structure get-environment-input common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "GetEnvironmentInput"))

(smithy/sdk/shapes:define-structure get-environment-output common-lisp:nil
                                    ((environment :target-type environment
                                      :required common-lisp:t :member-name
                                      "environment"))
                                    (:shape-name "GetEnvironmentOutput"))

(smithy/sdk/shapes:define-structure get-environment-template-input
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "GetEnvironmentTemplateInput"))

(smithy/sdk/shapes:define-structure get-environment-template-output
                                    common-lisp:nil
                                    ((environment-template :target-type
                                      environment-template :required
                                      common-lisp:t :member-name
                                      "environmentTemplate"))
                                    (:shape-name
                                     "GetEnvironmentTemplateOutput"))

(smithy/sdk/shapes:define-structure get-environment-template-version-input
                                    common-lisp:nil
                                    ((template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "majorVersion")
                                     (minor-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "minorVersion"))
                                    (:shape-name
                                     "GetEnvironmentTemplateVersionInput"))

(smithy/sdk/shapes:define-structure get-environment-template-version-output
                                    common-lisp:nil
                                    ((environment-template-version :target-type
                                      environment-template-version :required
                                      common-lisp:t :member-name
                                      "environmentTemplateVersion"))
                                    (:shape-name
                                     "GetEnvironmentTemplateVersionOutput"))

(smithy/sdk/shapes:define-structure get-repository-input common-lisp:nil
                                    ((provider :target-type repository-provider
                                      :required common-lisp:t :member-name
                                      "provider")
                                     (name :target-type repository-name
                                      :required common-lisp:t :member-name
                                      "name"))
                                    (:shape-name "GetRepositoryInput"))

(smithy/sdk/shapes:define-structure get-repository-output common-lisp:nil
                                    ((repository :target-type repository
                                      :required common-lisp:t :member-name
                                      "repository"))
                                    (:shape-name "GetRepositoryOutput"))

(smithy/sdk/shapes:define-structure get-repository-sync-status-input
                                    common-lisp:nil
                                    ((repository-name :target-type
                                      repository-name :required common-lisp:t
                                      :member-name "repositoryName")
                                     (repository-provider :target-type
                                      repository-provider :required
                                      common-lisp:t :member-name
                                      "repositoryProvider")
                                     (branch :target-type git-branch-name
                                      :required common-lisp:t :member-name
                                      "branch")
                                     (sync-type :target-type sync-type
                                      :required common-lisp:t :member-name
                                      "syncType"))
                                    (:shape-name
                                     "GetRepositorySyncStatusInput"))

(smithy/sdk/shapes:define-structure get-repository-sync-status-output
                                    common-lisp:nil
                                    ((latest-sync :target-type
                                      repository-sync-attempt :member-name
                                      "latestSync"))
                                    (:shape-name
                                     "GetRepositorySyncStatusOutput"))

(smithy/sdk/shapes:define-structure get-resources-summary-input common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "GetResourcesSummaryInput"))

(smithy/sdk/shapes:define-structure get-resources-summary-output
                                    common-lisp:nil
                                    ((counts :target-type counts-summary
                                      :required common-lisp:t :member-name
                                      "counts"))
                                    (:shape-name "GetResourcesSummaryOutput"))

(smithy/sdk/shapes:define-structure get-service-input common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "GetServiceInput"))

(smithy/sdk/shapes:define-structure get-service-instance-input common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (service-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "serviceName"))
                                    (:shape-name "GetServiceInstanceInput"))

(smithy/sdk/shapes:define-structure get-service-instance-output common-lisp:nil
                                    ((service-instance :target-type
                                      service-instance :required common-lisp:t
                                      :member-name "serviceInstance"))
                                    (:shape-name "GetServiceInstanceOutput"))

(smithy/sdk/shapes:define-structure get-service-instance-sync-status-input
                                    common-lisp:nil
                                    ((service-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "serviceName")
                                     (service-instance-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "serviceInstanceName"))
                                    (:shape-name
                                     "GetServiceInstanceSyncStatusInput"))

(smithy/sdk/shapes:define-structure get-service-instance-sync-status-output
                                    common-lisp:nil
                                    ((latest-sync :target-type
                                      resource-sync-attempt :member-name
                                      "latestSync")
                                     (latest-successful-sync :target-type
                                      resource-sync-attempt :member-name
                                      "latestSuccessfulSync")
                                     (desired-state :target-type revision
                                      :member-name "desiredState"))
                                    (:shape-name
                                     "GetServiceInstanceSyncStatusOutput"))

(smithy/sdk/shapes:define-structure get-service-output common-lisp:nil
                                    ((service :target-type service :member-name
                                      "service"))
                                    (:shape-name "GetServiceOutput"))

(smithy/sdk/shapes:define-structure get-service-sync-blocker-summary-input
                                    common-lisp:nil
                                    ((service-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "serviceName")
                                     (service-instance-name :target-type
                                      resource-name :member-name
                                      "serviceInstanceName"))
                                    (:shape-name
                                     "GetServiceSyncBlockerSummaryInput"))

(smithy/sdk/shapes:define-structure get-service-sync-blocker-summary-output
                                    common-lisp:nil
                                    ((service-sync-blocker-summary :target-type
                                      service-sync-blocker-summary :member-name
                                      "serviceSyncBlockerSummary"))
                                    (:shape-name
                                     "GetServiceSyncBlockerSummaryOutput"))

(smithy/sdk/shapes:define-structure get-service-sync-config-input
                                    common-lisp:nil
                                    ((service-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "serviceName"))
                                    (:shape-name "GetServiceSyncConfigInput"))

(smithy/sdk/shapes:define-structure get-service-sync-config-output
                                    common-lisp:nil
                                    ((service-sync-config :target-type
                                      service-sync-config :member-name
                                      "serviceSyncConfig"))
                                    (:shape-name "GetServiceSyncConfigOutput"))

(smithy/sdk/shapes:define-structure get-service-template-input common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "GetServiceTemplateInput"))

(smithy/sdk/shapes:define-structure get-service-template-output common-lisp:nil
                                    ((service-template :target-type
                                      service-template :required common-lisp:t
                                      :member-name "serviceTemplate"))
                                    (:shape-name "GetServiceTemplateOutput"))

(smithy/sdk/shapes:define-structure get-service-template-version-input
                                    common-lisp:nil
                                    ((template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "majorVersion")
                                     (minor-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "minorVersion"))
                                    (:shape-name
                                     "GetServiceTemplateVersionInput"))

(smithy/sdk/shapes:define-structure get-service-template-version-output
                                    common-lisp:nil
                                    ((service-template-version :target-type
                                      service-template-version :required
                                      common-lisp:t :member-name
                                      "serviceTemplateVersion"))
                                    (:shape-name
                                     "GetServiceTemplateVersionOutput"))

(smithy/sdk/shapes:define-structure get-template-sync-config-input
                                    common-lisp:nil
                                    ((template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (template-type :target-type template-type
                                      :required common-lisp:t :member-name
                                      "templateType"))
                                    (:shape-name "GetTemplateSyncConfigInput"))

(smithy/sdk/shapes:define-structure get-template-sync-config-output
                                    common-lisp:nil
                                    ((template-sync-config :target-type
                                      template-sync-config :member-name
                                      "templateSyncConfig"))
                                    (:shape-name "GetTemplateSyncConfigOutput"))

(smithy/sdk/shapes:define-structure get-template-sync-status-input
                                    common-lisp:nil
                                    ((template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (template-type :target-type template-type
                                      :required common-lisp:t :member-name
                                      "templateType")
                                     (template-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "templateVersion"))
                                    (:shape-name "GetTemplateSyncStatusInput"))

(smithy/sdk/shapes:define-structure get-template-sync-status-output
                                    common-lisp:nil
                                    ((latest-sync :target-type
                                      resource-sync-attempt :member-name
                                      "latestSync")
                                     (latest-successful-sync :target-type
                                      resource-sync-attempt :member-name
                                      "latestSuccessfulSync")
                                     (desired-state :target-type revision
                                      :member-name "desiredState"))
                                    (:shape-name "GetTemplateSyncStatusOutput"))

(smithy/sdk/shapes:define-type git-branch-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-list latest-sync-blockers :member sync-blocker)

(smithy/sdk/shapes:define-structure list-component-outputs-input
                                    common-lisp:nil
                                    ((component-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "componentName")
                                     (next-token :target-type empty-next-token
                                      :member-name "nextToken")
                                     (deployment-id :target-type deployment-id
                                      :member-name "deploymentId"))
                                    (:shape-name "ListComponentOutputsInput"))

(smithy/sdk/shapes:define-structure list-component-outputs-output
                                    common-lisp:nil
                                    ((next-token :target-type empty-next-token
                                      :member-name "nextToken")
                                     (outputs :target-type outputs-list
                                      :required common-lisp:t :member-name
                                      "outputs"))
                                    (:shape-name "ListComponentOutputsOutput"))

(smithy/sdk/shapes:define-structure list-component-provisioned-resources-input
                                    common-lisp:nil
                                    ((component-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "componentName")
                                     (next-token :target-type empty-next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListComponentProvisionedResourcesInput"))

(smithy/sdk/shapes:define-structure list-component-provisioned-resources-output
                                    common-lisp:nil
                                    ((next-token :target-type empty-next-token
                                      :member-name "nextToken")
                                     (provisioned-resources :target-type
                                      provisioned-resource-list :required
                                      common-lisp:t :member-name
                                      "provisionedResources"))
                                    (:shape-name
                                     "ListComponentProvisionedResourcesOutput"))

(smithy/sdk/shapes:define-structure list-components-input common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (environment-name :target-type
                                      resource-name :member-name
                                      "environmentName")
                                     (service-name :target-type resource-name
                                      :member-name "serviceName")
                                     (service-instance-name :target-type
                                      resource-name :member-name
                                      "serviceInstanceName")
                                     (max-results :target-type max-page-results
                                      :member-name "maxResults"))
                                    (:shape-name "ListComponentsInput"))

(smithy/sdk/shapes:define-structure list-components-output common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (components :target-type
                                      component-summary-list :required
                                      common-lisp:t :member-name "components"))
                                    (:shape-name "ListComponentsOutput"))

(smithy/sdk/shapes:define-input list-deployments-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken")
                                 (environment-name :target-type resource-name
                                  :member-name "environmentName")
                                 (service-name :target-type resource-name
                                  :member-name "serviceName")
                                 (service-instance-name :target-type
                                  resource-name :member-name
                                  "serviceInstanceName")
                                 (component-name :target-type resource-name
                                  :member-name "componentName")
                                 (max-results :target-type max-page-results
                                  :member-name "maxResults"))
                                (:shape-name "ListDeploymentsInput"))

(smithy/sdk/shapes:define-output list-deployments-output common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "nextToken")
                                  (deployments :target-type
                                   deployment-summary-list :required
                                   common-lisp:t :member-name "deployments"))
                                 (:shape-name "ListDeploymentsOutput"))

(smithy/sdk/shapes:define-structure list-environment-account-connections-input
                                    common-lisp:nil
                                    ((requested-by :target-type
                                      environment-account-connection-requester-account-type
                                      :required common-lisp:t :member-name
                                      "requestedBy")
                                     (environment-name :target-type
                                      resource-name :member-name
                                      "environmentName")
                                     (statuses :target-type
                                      environment-account-connection-status-list
                                      :member-name "statuses")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-page-results
                                      :member-name "maxResults"))
                                    (:shape-name
                                     "ListEnvironmentAccountConnectionsInput"))

(smithy/sdk/shapes:define-structure list-environment-account-connections-output
                                    common-lisp:nil
                                    ((environment-account-connections
                                      :target-type
                                      environment-account-connection-summary-list
                                      :required common-lisp:t :member-name
                                      "environmentAccountConnections")
                                     (next-token :target-type next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListEnvironmentAccountConnectionsOutput"))

(smithy/sdk/shapes:define-structure list-environment-outputs-input
                                    common-lisp:nil
                                    ((environment-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "environmentName")
                                     (next-token :target-type empty-next-token
                                      :member-name "nextToken")
                                     (deployment-id :target-type deployment-id
                                      :member-name "deploymentId"))
                                    (:shape-name "ListEnvironmentOutputsInput"))

(smithy/sdk/shapes:define-structure list-environment-outputs-output
                                    common-lisp:nil
                                    ((next-token :target-type empty-next-token
                                      :member-name "nextToken")
                                     (outputs :target-type outputs-list
                                      :required common-lisp:t :member-name
                                      "outputs"))
                                    (:shape-name
                                     "ListEnvironmentOutputsOutput"))

(smithy/sdk/shapes:define-structure
 list-environment-provisioned-resources-input common-lisp:nil
 ((environment-name :target-type resource-name :required common-lisp:t
   :member-name "environmentName")
  (next-token :target-type empty-next-token :member-name "nextToken"))
 (:shape-name "ListEnvironmentProvisionedResourcesInput"))

(smithy/sdk/shapes:define-structure
 list-environment-provisioned-resources-output common-lisp:nil
 ((next-token :target-type empty-next-token :member-name "nextToken")
  (provisioned-resources :target-type provisioned-resource-list :required
   common-lisp:t :member-name "provisionedResources"))
 (:shape-name "ListEnvironmentProvisionedResourcesOutput"))

(smithy/sdk/shapes:define-structure list-environment-template-versions-input
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-page-results
                                      :member-name "maxResults")
                                     (template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (major-version :target-type
                                      template-version-part :member-name
                                      "majorVersion"))
                                    (:shape-name
                                     "ListEnvironmentTemplateVersionsInput"))

(smithy/sdk/shapes:define-structure list-environment-template-versions-output
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (template-versions :target-type
                                      environment-template-version-summary-list
                                      :required common-lisp:t :member-name
                                      "templateVersions"))
                                    (:shape-name
                                     "ListEnvironmentTemplateVersionsOutput"))

(smithy/sdk/shapes:define-structure list-environment-templates-input
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-page-results
                                      :member-name "maxResults"))
                                    (:shape-name
                                     "ListEnvironmentTemplatesInput"))

(smithy/sdk/shapes:define-structure list-environment-templates-output
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (templates :target-type
                                      environment-template-summary-list
                                      :required common-lisp:t :member-name
                                      "templates"))
                                    (:shape-name
                                     "ListEnvironmentTemplatesOutput"))

(smithy/sdk/shapes:define-structure list-environments-input common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-page-results
                                      :member-name "maxResults")
                                     (environment-templates :target-type
                                      environment-template-filter-list
                                      :member-name "environmentTemplates"))
                                    (:shape-name "ListEnvironmentsInput"))

(smithy/sdk/shapes:define-structure list-environments-output common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (environments :target-type
                                      environment-summary-list :required
                                      common-lisp:t :member-name
                                      "environments"))
                                    (:shape-name "ListEnvironmentsOutput"))

(smithy/sdk/shapes:define-structure list-repositories-input common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-page-results
                                      :member-name "maxResults"))
                                    (:shape-name "ListRepositoriesInput"))

(smithy/sdk/shapes:define-structure list-repositories-output common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (repositories :target-type
                                      repository-summary-list :required
                                      common-lisp:t :member-name
                                      "repositories"))
                                    (:shape-name "ListRepositoriesOutput"))

(smithy/sdk/shapes:define-structure list-repository-sync-definitions-input
                                    common-lisp:nil
                                    ((repository-name :target-type
                                      repository-name :required common-lisp:t
                                      :member-name "repositoryName")
                                     (repository-provider :target-type
                                      repository-provider :required
                                      common-lisp:t :member-name
                                      "repositoryProvider")
                                     (sync-type :target-type sync-type
                                      :required common-lisp:t :member-name
                                      "syncType")
                                     (next-token :target-type empty-next-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListRepositorySyncDefinitionsInput"))

(smithy/sdk/shapes:define-structure list-repository-sync-definitions-output
                                    common-lisp:nil
                                    ((next-token :target-type empty-next-token
                                      :member-name "nextToken")
                                     (sync-definitions :target-type
                                      repository-sync-definition-list :required
                                      common-lisp:t :member-name
                                      "syncDefinitions"))
                                    (:shape-name
                                     "ListRepositorySyncDefinitionsOutput"))

(smithy/sdk/shapes:define-structure list-service-instance-outputs-input
                                    common-lisp:nil
                                    ((service-instance-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "serviceInstanceName")
                                     (service-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "serviceName")
                                     (next-token :target-type empty-next-token
                                      :member-name "nextToken")
                                     (deployment-id :target-type deployment-id
                                      :member-name "deploymentId"))
                                    (:shape-name
                                     "ListServiceInstanceOutputsInput"))

(smithy/sdk/shapes:define-structure list-service-instance-outputs-output
                                    common-lisp:nil
                                    ((next-token :target-type empty-next-token
                                      :member-name "nextToken")
                                     (outputs :target-type outputs-list
                                      :required common-lisp:t :member-name
                                      "outputs"))
                                    (:shape-name
                                     "ListServiceInstanceOutputsOutput"))

(smithy/sdk/shapes:define-structure
 list-service-instance-provisioned-resources-input common-lisp:nil
 ((service-name :target-type resource-name :required common-lisp:t :member-name
   "serviceName")
  (service-instance-name :target-type resource-name :required common-lisp:t
   :member-name "serviceInstanceName")
  (next-token :target-type empty-next-token :member-name "nextToken"))
 (:shape-name "ListServiceInstanceProvisionedResourcesInput"))

(smithy/sdk/shapes:define-structure
 list-service-instance-provisioned-resources-output common-lisp:nil
 ((next-token :target-type empty-next-token :member-name "nextToken")
  (provisioned-resources :target-type provisioned-resource-list :required
   common-lisp:t :member-name "provisionedResources"))
 (:shape-name "ListServiceInstanceProvisionedResourcesOutput"))

(smithy/sdk/shapes:define-structure list-service-instances-filter
                                    common-lisp:nil
                                    ((key :target-type
                                      list-service-instances-filter-by
                                      :member-name "key")
                                     (value :target-type
                                      list-service-instances-filter-value
                                      :member-name "value"))
                                    (:shape-name "ListServiceInstancesFilter"))

(smithy/sdk/shapes:define-type list-service-instances-filter-by
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list list-service-instances-filter-list :member
                               list-service-instances-filter)

(smithy/sdk/shapes:define-type list-service-instances-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure list-service-instances-input
                                    common-lisp:nil
                                    ((service-name :target-type resource-name
                                      :member-name "serviceName")
                                     (next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-page-results
                                      :member-name "maxResults")
                                     (filters :target-type
                                      list-service-instances-filter-list
                                      :member-name "filters")
                                     (sort-by :target-type
                                      list-service-instances-sort-by
                                      :member-name "sortBy")
                                     (sort-order :target-type sort-order
                                      :member-name "sortOrder"))
                                    (:shape-name "ListServiceInstancesInput"))

(smithy/sdk/shapes:define-structure list-service-instances-output
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (service-instances :target-type
                                      service-instance-summary-list :required
                                      common-lisp:t :member-name
                                      "serviceInstances"))
                                    (:shape-name "ListServiceInstancesOutput"))

(smithy/sdk/shapes:define-type list-service-instances-sort-by
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure list-service-pipeline-outputs-input
                                    common-lisp:nil
                                    ((service-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "serviceName")
                                     (next-token :target-type empty-next-token
                                      :member-name "nextToken")
                                     (deployment-id :target-type deployment-id
                                      :member-name "deploymentId"))
                                    (:shape-name
                                     "ListServicePipelineOutputsInput"))

(smithy/sdk/shapes:define-structure list-service-pipeline-outputs-output
                                    common-lisp:nil
                                    ((next-token :target-type empty-next-token
                                      :member-name "nextToken")
                                     (outputs :target-type outputs-list
                                      :required common-lisp:t :member-name
                                      "outputs"))
                                    (:shape-name
                                     "ListServicePipelineOutputsOutput"))

(smithy/sdk/shapes:define-structure
 list-service-pipeline-provisioned-resources-input common-lisp:nil
 ((service-name :target-type resource-name :required common-lisp:t :member-name
   "serviceName")
  (next-token :target-type empty-next-token :member-name "nextToken"))
 (:shape-name "ListServicePipelineProvisionedResourcesInput"))

(smithy/sdk/shapes:define-structure
 list-service-pipeline-provisioned-resources-output common-lisp:nil
 ((next-token :target-type empty-next-token :member-name "nextToken")
  (provisioned-resources :target-type provisioned-resource-list :required
   common-lisp:t :member-name "provisionedResources"))
 (:shape-name "ListServicePipelineProvisionedResourcesOutput"))

(smithy/sdk/shapes:define-structure list-service-template-versions-input
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-page-results
                                      :member-name "maxResults")
                                     (template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (major-version :target-type
                                      template-version-part :member-name
                                      "majorVersion"))
                                    (:shape-name
                                     "ListServiceTemplateVersionsInput"))

(smithy/sdk/shapes:define-structure list-service-template-versions-output
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (template-versions :target-type
                                      service-template-version-summary-list
                                      :required common-lisp:t :member-name
                                      "templateVersions"))
                                    (:shape-name
                                     "ListServiceTemplateVersionsOutput"))

(smithy/sdk/shapes:define-structure list-service-templates-input
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-page-results
                                      :member-name "maxResults"))
                                    (:shape-name "ListServiceTemplatesInput"))

(smithy/sdk/shapes:define-structure list-service-templates-output
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (templates :target-type
                                      service-template-summary-list :required
                                      common-lisp:t :member-name "templates"))
                                    (:shape-name "ListServiceTemplatesOutput"))

(smithy/sdk/shapes:define-structure list-services-input common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (max-results :target-type max-page-results
                                      :member-name "maxResults"))
                                    (:shape-name "ListServicesInput"))

(smithy/sdk/shapes:define-structure list-services-output common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (services :target-type
                                      service-summary-list :required
                                      common-lisp:t :member-name "services"))
                                    (:shape-name "ListServicesOutput"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-input
                                    common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn"
                                      :http-query "resourceArn")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-page-results
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-output
                                    common-lisp:nil
                                    ((tags :target-type tag-list :required
                                      common-lisp:t :member-name "tags")
                                     (next-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "nextToken"))
                                    (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-type max-page-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 notify-resource-deployment-status-change-input common-lisp:nil
 ((resource-arn :target-type arn :required common-lisp:t :member-name
   "resourceArn")
  (status :target-type resource-deployment-status :member-name "status")
  (outputs :target-type outputs-list :member-name "outputs")
  (deployment-id :target-type deployment-id :member-name "deploymentId")
  (status-message :target-type status-message :member-name "statusMessage"))
 (:shape-name "NotifyResourceDeploymentStatusChangeInput"))

(smithy/sdk/shapes:define-structure
 notify-resource-deployment-status-change-output common-lisp:nil
 common-lisp:nil (:shape-name "NotifyResourceDeploymentStatusChangeOutput"))

(smithy/sdk/shapes:define-type ops-file-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure output common-lisp:nil
                                    ((key :target-type output-key :member-name
                                      "key")
                                     (value-string :target-type
                                      output-value-string :member-name
                                      "valueString"))
                                    (:shape-name "Output"))

(smithy/sdk/shapes:define-type output-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type output-value-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list outputs-list :member output)

(smithy/sdk/shapes:define-structure provisioned-resource common-lisp:nil
                                    ((name :target-type
                                      provisioned-resource-name :member-name
                                      "name")
                                     (identifier :target-type
                                      provisioned-resource-identifier
                                      :member-name "identifier")
                                     (provisioning-engine :target-type
                                      provisioned-resource-engine :member-name
                                      "provisioningEngine"))
                                    (:shape-name "ProvisionedResource"))

(smithy/sdk/shapes:define-type provisioned-resource-engine
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type provisioned-resource-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list provisioned-resource-list :member
                               provisioned-resource)

(smithy/sdk/shapes:define-type provisioned-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type provisioning smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure reject-environment-account-connection-input
                                    common-lisp:nil
                                    ((id :target-type
                                      environment-account-connection-id
                                      :required common-lisp:t :member-name
                                      "id"))
                                    (:shape-name
                                     "RejectEnvironmentAccountConnectionInput"))

(smithy/sdk/shapes:define-structure
 reject-environment-account-connection-output common-lisp:nil
 ((environment-account-connection :target-type environment-account-connection
   :required common-lisp:t :member-name "environmentAccountConnection"))
 (:shape-name "RejectEnvironmentAccountConnectionOutput"))

(smithy/sdk/shapes:define-structure repository common-lisp:nil
                                    ((arn :target-type repository-arn :required
                                      common-lisp:t :member-name "arn")
                                     (provider :target-type repository-provider
                                      :required common-lisp:t :member-name
                                      "provider")
                                     (name :target-type repository-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (connection-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "connectionArn")
                                     (encryption-key :target-type arn
                                      :member-name "encryptionKey"))
                                    (:shape-name "Repository"))

(smithy/sdk/shapes:define-type repository-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure repository-branch common-lisp:nil
                                    ((arn :target-type repository-arn :required
                                      common-lisp:t :member-name "arn")
                                     (provider :target-type repository-provider
                                      :required common-lisp:t :member-name
                                      "provider")
                                     (name :target-type repository-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (branch :target-type git-branch-name
                                      :required common-lisp:t :member-name
                                      "branch"))
                                    (:shape-name "RepositoryBranch"))

(smithy/sdk/shapes:define-structure repository-branch-input common-lisp:nil
                                    ((provider :target-type repository-provider
                                      :required common-lisp:t :member-name
                                      "provider")
                                     (name :target-type repository-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (branch :target-type git-branch-name
                                      :required common-lisp:t :member-name
                                      "branch"))
                                    (:shape-name "RepositoryBranchInput"))

(smithy/sdk/shapes:define-type repository-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type repository-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type repository-provider
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure repository-summary common-lisp:nil
                                    ((arn :target-type repository-arn :required
                                      common-lisp:t :member-name "arn")
                                     (provider :target-type repository-provider
                                      :required common-lisp:t :member-name
                                      "provider")
                                     (name :target-type repository-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (connection-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "connectionArn"))
                                    (:shape-name "RepositorySummary"))

(smithy/sdk/shapes:define-list repository-summary-list :member
                               repository-summary)

(smithy/sdk/shapes:define-structure repository-sync-attempt common-lisp:nil
                                    ((started-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "startedAt")
                                     (status :target-type
                                      repository-sync-status :required
                                      common-lisp:t :member-name "status")
                                     (events :target-type
                                      repository-sync-events :required
                                      common-lisp:t :member-name "events"))
                                    (:shape-name "RepositorySyncAttempt"))

(smithy/sdk/shapes:define-structure repository-sync-definition common-lisp:nil
                                    ((target :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "target")
                                     (parent :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "parent")
                                     (branch :target-type git-branch-name
                                      :required common-lisp:t :member-name
                                      "branch")
                                     (directory :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "directory"))
                                    (:shape-name "RepositorySyncDefinition"))

(smithy/sdk/shapes:define-list repository-sync-definition-list :member
                               repository-sync-definition)

(smithy/sdk/shapes:define-structure repository-sync-event common-lisp:nil
                                    ((type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "type")
                                     (external-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "externalId")
                                     (time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "time")
                                     (event :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "event"))
                                    (:shape-name "RepositorySyncEvent"))

(smithy/sdk/shapes:define-list repository-sync-events :member
                               repository-sync-event)

(smithy/sdk/shapes:define-type repository-sync-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-counts-summary common-lisp:nil
                                    ((total :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "total")
                                     (failed :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "failed")
                                     (up-to-date :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "upToDate")
                                     (behind-major :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "behindMajor")
                                     (behind-minor :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "behindMinor"))
                                    (:shape-name "ResourceCountsSummary"))

(smithy/sdk/shapes:define-type resource-deployment-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-name-or-empty
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-sync-attempt common-lisp:nil
                                    ((initial-revision :target-type revision
                                      :required common-lisp:t :member-name
                                      "initialRevision")
                                     (target-revision :target-type revision
                                      :required common-lisp:t :member-name
                                      "targetRevision")
                                     (target :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "target")
                                     (started-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "startedAt")
                                     (status :target-type resource-sync-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (events :target-type resource-sync-events
                                      :required common-lisp:t :member-name
                                      "events"))
                                    (:shape-name "ResourceSyncAttempt"))

(smithy/sdk/shapes:define-structure resource-sync-event common-lisp:nil
                                    ((type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "type")
                                     (external-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "externalId")
                                     (time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "time")
                                     (event :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "event"))
                                    (:shape-name "ResourceSyncEvent"))

(smithy/sdk/shapes:define-list resource-sync-events :member resource-sync-event)

(smithy/sdk/shapes:define-type resource-sync-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure revision common-lisp:nil
                                    ((repository-name :target-type
                                      repository-name :required common-lisp:t
                                      :member-name "repositoryName")
                                     (repository-provider :target-type
                                      repository-provider :required
                                      common-lisp:t :member-name
                                      "repositoryProvider")
                                     (sha :target-type sha :required
                                      common-lisp:t :member-name "sha")
                                     (directory :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "directory")
                                     (branch :target-type git-branch-name
                                      :required common-lisp:t :member-name
                                      "branch"))
                                    (:shape-name "Revision"))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-arn-or-empty-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3object-source common-lisp:nil
                                    ((bucket :target-type s3bucket :required
                                      common-lisp:t :member-name "bucket")
                                     (key :target-type s3key :required
                                      common-lisp:t :member-name "key"))
                                    (:shape-name "S3ObjectSource"))

(smithy/sdk/shapes:define-type sha smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (arn :target-type service-arn :required
                                      common-lisp:t :member-name "arn")
                                     (template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedAt")
                                     (status :target-type service-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "statusMessage")
                                     (spec :target-type spec-contents :required
                                      common-lisp:t :member-name "spec")
                                     (pipeline :target-type service-pipeline
                                      :member-name "pipeline")
                                     (repository-connection-arn :target-type
                                      arn :member-name
                                      "repositoryConnectionArn")
                                     (repository-id :target-type repository-id
                                      :member-name "repositoryId")
                                     (branch-name :target-type git-branch-name
                                      :member-name "branchName"))
                                    (:shape-name "Service"))

(smithy/sdk/shapes:define-type service-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-instance common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type service-instance-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-deployment-attempted-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastDeploymentAttemptedAt")
                                     (last-deployment-succeeded-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastDeploymentSucceededAt")
                                     (service-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "serviceName")
                                     (environment-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "environmentName")
                                     (template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (template-major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "templateMajorVersion")
                                     (template-minor-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "templateMinorVersion")
                                     (deployment-status :target-type
                                      deployment-status :required common-lisp:t
                                      :member-name "deploymentStatus")
                                     (deployment-status-message :target-type
                                      status-message :member-name
                                      "deploymentStatusMessage")
                                     (spec :target-type spec-contents
                                      :member-name "spec")
                                     (last-client-request-token :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "lastClientRequestToken")
                                     (last-attempted-deployment-id :target-type
                                      deployment-id :member-name
                                      "lastAttemptedDeploymentId")
                                     (last-succeeded-deployment-id :target-type
                                      deployment-id :member-name
                                      "lastSucceededDeploymentId"))
                                    (:shape-name "ServiceInstance"))

(smithy/sdk/shapes:define-type service-instance-arn
                               smithy/sdk/smithy-types:string)

common-lisp:nil

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-structure service-instance-state common-lisp:nil
                                    ((spec :target-type spec-contents :required
                                      common-lisp:t :member-name "spec")
                                     (template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (template-major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "templateMajorVersion")
                                     (template-minor-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "templateMinorVersion")
                                     (last-successful-component-deployment-ids
                                      :target-type component-deployment-id-list
                                      :member-name
                                      "lastSuccessfulComponentDeploymentIds")
                                     (last-successful-environment-deployment-id
                                      :target-type deployment-id :member-name
                                      "lastSuccessfulEnvironmentDeploymentId")
                                     (last-successful-service-pipeline-deployment-id
                                      :target-type deployment-id :member-name
                                      "lastSuccessfulServicePipelineDeploymentId"))
                                    (:shape-name "ServiceInstanceState"))

(smithy/sdk/shapes:define-structure service-instance-summary common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type service-instance-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-deployment-attempted-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastDeploymentAttemptedAt")
                                     (last-deployment-succeeded-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastDeploymentSucceededAt")
                                     (service-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "serviceName")
                                     (environment-name :target-type
                                      resource-name :required common-lisp:t
                                      :member-name "environmentName")
                                     (template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (template-major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "templateMajorVersion")
                                     (template-minor-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "templateMinorVersion")
                                     (deployment-status :target-type
                                      deployment-status :required common-lisp:t
                                      :member-name "deploymentStatus")
                                     (deployment-status-message :target-type
                                      status-message :member-name
                                      "deploymentStatusMessage")
                                     (last-attempted-deployment-id :target-type
                                      deployment-id :member-name
                                      "lastAttemptedDeploymentId")
                                     (last-succeeded-deployment-id :target-type
                                      deployment-id :member-name
                                      "lastSucceededDeploymentId"))
                                    (:shape-name "ServiceInstanceSummary"))

(smithy/sdk/shapes:define-list service-instance-summary-list :member
                               service-instance-summary)

(smithy/sdk/shapes:define-structure service-pipeline common-lisp:nil
                                    ((arn :target-type arn :required
                                      common-lisp:t :member-name "arn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-deployment-attempted-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastDeploymentAttemptedAt")
                                     (last-deployment-succeeded-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastDeploymentSucceededAt")
                                     (template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (template-major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "templateMajorVersion")
                                     (template-minor-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "templateMinorVersion")
                                     (deployment-status :target-type
                                      deployment-status :required common-lisp:t
                                      :member-name "deploymentStatus")
                                     (deployment-status-message :target-type
                                      status-message :member-name
                                      "deploymentStatusMessage")
                                     (spec :target-type spec-contents
                                      :member-name "spec")
                                     (last-attempted-deployment-id :target-type
                                      deployment-id :member-name
                                      "lastAttemptedDeploymentId")
                                     (last-succeeded-deployment-id :target-type
                                      deployment-id :member-name
                                      "lastSucceededDeploymentId"))
                                    (:shape-name "ServicePipeline"))

common-lisp:nil

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-structure service-pipeline-state common-lisp:nil
                                    ((spec :target-type spec-contents
                                      :member-name "spec")
                                     (template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (template-major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "templateMajorVersion")
                                     (template-minor-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "templateMinorVersion"))
                                    (:shape-name "ServicePipelineState"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

common-lisp:nil

(smithy/sdk/shapes:define-type service-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-summary common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (arn :target-type service-arn :required
                                      common-lisp:t :member-name "arn")
                                     (template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedAt")
                                     (status :target-type service-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "statusMessage"))
                                    (:shape-name "ServiceSummary"))

(smithy/sdk/shapes:define-list service-summary-list :member service-summary)

common-lisp:nil

(smithy/sdk/shapes:define-structure service-sync-blocker-summary
                                    common-lisp:nil
                                    ((service-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "serviceName")
                                     (service-instance-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "serviceInstanceName")
                                     (latest-blockers :target-type
                                      latest-sync-blockers :member-name
                                      "latestBlockers"))
                                    (:shape-name "ServiceSyncBlockerSummary"))

(smithy/sdk/shapes:define-structure service-sync-config common-lisp:nil
                                    ((service-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "serviceName")
                                     (repository-provider :target-type
                                      repository-provider :required
                                      common-lisp:t :member-name
                                      "repositoryProvider")
                                     (repository-name :target-type
                                      repository-name :required common-lisp:t
                                      :member-name "repositoryName")
                                     (branch :target-type git-branch-name
                                      :required common-lisp:t :member-name
                                      "branch")
                                     (file-path :target-type ops-file-path
                                      :required common-lisp:t :member-name
                                      "filePath"))
                                    (:shape-name "ServiceSyncConfig"))

common-lisp:nil

(smithy/sdk/shapes:define-structure service-template common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type service-template-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedAt")
                                     (display-name :target-type display-name
                                      :member-name "displayName")
                                     (description :target-type description
                                      :member-name "description")
                                     (recommended-version :target-type
                                      full-template-version-number :member-name
                                      "recommendedVersion")
                                     (encryption-key :target-type arn
                                      :member-name "encryptionKey")
                                     (pipeline-provisioning :target-type
                                      provisioning :member-name
                                      "pipelineProvisioning"))
                                    (:shape-name "ServiceTemplate"))

(smithy/sdk/shapes:define-type service-template-arn
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure service-template-summary common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (arn :target-type service-template-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedAt")
                                     (display-name :target-type display-name
                                      :member-name "displayName")
                                     (description :target-type description
                                      :member-name "description")
                                     (recommended-version :target-type
                                      full-template-version-number :member-name
                                      "recommendedVersion")
                                     (pipeline-provisioning :target-type
                                      provisioning :member-name
                                      "pipelineProvisioning"))
                                    (:shape-name "ServiceTemplateSummary"))

(smithy/sdk/shapes:define-list service-template-summary-list :member
                               service-template-summary)

(smithy/sdk/shapes:define-list
 service-template-supported-component-source-input-list :member
 service-template-supported-component-source-type)

(smithy/sdk/shapes:define-type service-template-supported-component-source-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-template-version common-lisp:nil
                                    ((template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "majorVersion")
                                     (minor-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "minorVersion")
                                     (recommended-minor-version :target-type
                                      template-version-part :member-name
                                      "recommendedMinorVersion")
                                     (status :target-type
                                      template-version-status :required
                                      common-lisp:t :member-name "status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "statusMessage")
                                     (description :target-type description
                                      :member-name "description")
                                     (arn :target-type
                                      service-template-version-arn :required
                                      common-lisp:t :member-name "arn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedAt")
                                     (compatible-environment-templates
                                      :target-type
                                      compatible-environment-template-list
                                      :required common-lisp:t :member-name
                                      "compatibleEnvironmentTemplates")
                                     (schema :target-type template-schema
                                      :member-name "schema")
                                     (supported-component-sources :target-type
                                      service-template-supported-component-source-input-list
                                      :member-name
                                      "supportedComponentSources"))
                                    (:shape-name "ServiceTemplateVersion"))

(smithy/sdk/shapes:define-type service-template-version-arn
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure service-template-version-summary
                                    common-lisp:nil
                                    ((template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "majorVersion")
                                     (minor-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "minorVersion")
                                     (recommended-minor-version :target-type
                                      template-version-part :member-name
                                      "recommendedMinorVersion")
                                     (status :target-type
                                      template-version-status :required
                                      common-lisp:t :member-name "status")
                                     (status-message :target-type
                                      status-message :member-name
                                      "statusMessage")
                                     (description :target-type description
                                      :member-name "description")
                                     (arn :target-type
                                      service-template-version-arn :required
                                      common-lisp:t :member-name "arn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-modified-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastModifiedAt"))
                                    (:shape-name
                                     "ServiceTemplateVersionSummary"))

(smithy/sdk/shapes:define-list service-template-version-summary-list :member
                               service-template-version-summary)

(smithy/sdk/shapes:define-type sort-order smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type spec-contents smithy/sdk/smithy-types:string
                               :media-type "application/yaml")

(smithy/sdk/shapes:define-type status-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type subdirectory smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sync-blocker common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (type :target-type blocker-type :required
                                      common-lisp:t :member-name "type")
                                     (status :target-type blocker-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (created-reason :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "createdReason")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (contexts :target-type
                                      sync-blocker-contexts :member-name
                                      "contexts")
                                     (resolved-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "resolvedReason")
                                     (resolved-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "resolvedAt"))
                                    (:shape-name "SyncBlocker"))

(smithy/sdk/shapes:define-structure sync-blocker-context common-lisp:nil
                                    ((key :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "SyncBlockerContext"))

(smithy/sdk/shapes:define-list sync-blocker-contexts :member
                               sync-blocker-context)

(smithy/sdk/shapes:define-type sync-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-structure tag-resource-input common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn"
                                      :http-query "resourceArn")
                                     (tags :target-type tag-list :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-structure tag-resource-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template-file-contents
                               smithy/sdk/smithy-types:string :media-type
                               "application/yaml")

(smithy/sdk/shapes:define-type template-manifest-contents
                               smithy/sdk/smithy-types:string :media-type
                               "application/yaml")

(smithy/sdk/shapes:define-type template-schema smithy/sdk/smithy-types:string
                               :media-type "application/yaml")

(smithy/sdk/shapes:define-structure template-sync-config common-lisp:nil
                                    ((template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (template-type :target-type template-type
                                      :required common-lisp:t :member-name
                                      "templateType")
                                     (repository-provider :target-type
                                      repository-provider :required
                                      common-lisp:t :member-name
                                      "repositoryProvider")
                                     (repository-name :target-type
                                      repository-name :required common-lisp:t
                                      :member-name "repositoryName")
                                     (branch :target-type git-branch-name
                                      :required common-lisp:t :member-name
                                      "branch")
                                     (subdirectory :target-type subdirectory
                                      :member-name "subdirectory"))
                                    (:shape-name "TemplateSyncConfig"))

common-lisp:nil

(smithy/sdk/shapes:define-type template-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template-version-part
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union template-version-source-input common-lisp:nil
                                ((s3 :target-type s3object-source :member-name
                                  "s3"))
                                (:shape-name "TemplateVersionSourceInput"))

(smithy/sdk/shapes:define-type template-version-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure untag-resource-input common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "resourceArn"
                                      :http-query "resourceArn")
                                     (tag-keys :target-type tag-key-list
                                      :required common-lisp:t :member-name
                                      "tagKeys"))
                                    (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-structure untag-resource-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-structure update-account-settings-input
                                    common-lisp:nil
                                    ((pipeline-service-role-arn :target-type
                                      role-arn-or-empty-string :member-name
                                      "pipelineServiceRoleArn")
                                     (pipeline-provisioning-repository
                                      :target-type repository-branch-input
                                      :member-name
                                      "pipelineProvisioningRepository")
                                     (delete-pipeline-provisioning-repository
                                      :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name
                                      "deletePipelineProvisioningRepository")
                                     (pipeline-codebuild-role-arn :target-type
                                      role-arn-or-empty-string :member-name
                                      "pipelineCodebuildRoleArn"))
                                    (:shape-name "UpdateAccountSettingsInput"))

(smithy/sdk/shapes:define-structure update-account-settings-output
                                    common-lisp:nil
                                    ((account-settings :target-type
                                      account-settings :required common-lisp:t
                                      :member-name "accountSettings"))
                                    (:shape-name "UpdateAccountSettingsOutput"))

(smithy/sdk/shapes:define-structure update-component-input common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (deployment-type :target-type
                                      component-deployment-update-type
                                      :required common-lisp:t :member-name
                                      "deploymentType")
                                     (description :target-type description
                                      :member-name "description")
                                     (service-name :target-type
                                      resource-name-or-empty :member-name
                                      "serviceName")
                                     (service-instance-name :target-type
                                      resource-name-or-empty :member-name
                                      "serviceInstanceName")
                                     (service-spec :target-type spec-contents
                                      :member-name "serviceSpec")
                                     (template-file :target-type
                                      template-file-contents :member-name
                                      "templateFile")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "UpdateComponentInput"))

(smithy/sdk/shapes:define-structure update-component-output common-lisp:nil
                                    ((component :target-type component
                                      :required common-lisp:t :member-name
                                      "component"))
                                    (:shape-name "UpdateComponentOutput"))

(smithy/sdk/shapes:define-structure update-environment-account-connection-input
                                    common-lisp:nil
                                    ((id :target-type
                                      environment-account-connection-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn")
                                     (component-role-arn :target-type role-arn
                                      :member-name "componentRoleArn")
                                     (codebuild-role-arn :target-type role-arn
                                      :member-name "codebuildRoleArn"))
                                    (:shape-name
                                     "UpdateEnvironmentAccountConnectionInput"))

(smithy/sdk/shapes:define-structure
 update-environment-account-connection-output common-lisp:nil
 ((environment-account-connection :target-type environment-account-connection
   :required common-lisp:t :member-name "environmentAccountConnection"))
 (:shape-name "UpdateEnvironmentAccountConnectionOutput"))

(smithy/sdk/shapes:define-structure update-environment-input common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (spec :target-type spec-contents
                                      :member-name "spec")
                                     (template-major-version :target-type
                                      template-version-part :member-name
                                      "templateMajorVersion")
                                     (template-minor-version :target-type
                                      template-version-part :member-name
                                      "templateMinorVersion")
                                     (proton-service-role-arn :target-type arn
                                      :member-name "protonServiceRoleArn")
                                     (deployment-type :target-type
                                      deployment-update-type :required
                                      common-lisp:t :member-name
                                      "deploymentType")
                                     (environment-account-connection-id
                                      :target-type
                                      environment-account-connection-id
                                      :member-name
                                      "environmentAccountConnectionId")
                                     (provisioning-repository :target-type
                                      repository-branch-input :member-name
                                      "provisioningRepository")
                                     (component-role-arn :target-type role-arn
                                      :member-name "componentRoleArn")
                                     (codebuild-role-arn :target-type role-arn
                                      :member-name "codebuildRoleArn"))
                                    (:shape-name "UpdateEnvironmentInput"))

(smithy/sdk/shapes:define-structure update-environment-output common-lisp:nil
                                    ((environment :target-type environment
                                      :required common-lisp:t :member-name
                                      "environment"))
                                    (:shape-name "UpdateEnvironmentOutput"))

(smithy/sdk/shapes:define-structure update-environment-template-input
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (display-name :target-type display-name
                                      :member-name "displayName")
                                     (description :target-type description
                                      :member-name "description"))
                                    (:shape-name
                                     "UpdateEnvironmentTemplateInput"))

(smithy/sdk/shapes:define-structure update-environment-template-output
                                    common-lisp:nil
                                    ((environment-template :target-type
                                      environment-template :required
                                      common-lisp:t :member-name
                                      "environmentTemplate"))
                                    (:shape-name
                                     "UpdateEnvironmentTemplateOutput"))

(smithy/sdk/shapes:define-structure update-environment-template-version-input
                                    common-lisp:nil
                                    ((template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "majorVersion")
                                     (minor-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "minorVersion")
                                     (description :target-type description
                                      :member-name "description")
                                     (status :target-type
                                      template-version-status :member-name
                                      "status"))
                                    (:shape-name
                                     "UpdateEnvironmentTemplateVersionInput"))

(smithy/sdk/shapes:define-structure update-environment-template-version-output
                                    common-lisp:nil
                                    ((environment-template-version :target-type
                                      environment-template-version :required
                                      common-lisp:t :member-name
                                      "environmentTemplateVersion"))
                                    (:shape-name
                                     "UpdateEnvironmentTemplateVersionOutput"))

(smithy/sdk/shapes:define-structure update-service-input common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (spec :target-type spec-contents
                                      :member-name "spec"))
                                    (:shape-name "UpdateServiceInput"))

(smithy/sdk/shapes:define-structure update-service-instance-input
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (service-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "serviceName")
                                     (deployment-type :target-type
                                      deployment-update-type :required
                                      common-lisp:t :member-name
                                      "deploymentType")
                                     (spec :target-type spec-contents
                                      :member-name "spec")
                                     (template-major-version :target-type
                                      template-version-part :member-name
                                      "templateMajorVersion")
                                     (template-minor-version :target-type
                                      template-version-part :member-name
                                      "templateMinorVersion")
                                     (client-token :target-type client-token
                                      :member-name "clientToken"))
                                    (:shape-name "UpdateServiceInstanceInput"))

(smithy/sdk/shapes:define-structure update-service-instance-output
                                    common-lisp:nil
                                    ((service-instance :target-type
                                      service-instance :required common-lisp:t
                                      :member-name "serviceInstance"))
                                    (:shape-name "UpdateServiceInstanceOutput"))

(smithy/sdk/shapes:define-structure update-service-output common-lisp:nil
                                    ((service :target-type service :required
                                      common-lisp:t :member-name "service"))
                                    (:shape-name "UpdateServiceOutput"))

(smithy/sdk/shapes:define-structure update-service-pipeline-input
                                    common-lisp:nil
                                    ((service-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "serviceName")
                                     (spec :target-type spec-contents :required
                                      common-lisp:t :member-name "spec")
                                     (deployment-type :target-type
                                      deployment-update-type :required
                                      common-lisp:t :member-name
                                      "deploymentType")
                                     (template-major-version :target-type
                                      template-version-part :member-name
                                      "templateMajorVersion")
                                     (template-minor-version :target-type
                                      template-version-part :member-name
                                      "templateMinorVersion"))
                                    (:shape-name "UpdateServicePipelineInput"))

(smithy/sdk/shapes:define-structure update-service-pipeline-output
                                    common-lisp:nil
                                    ((pipeline :target-type service-pipeline
                                      :required common-lisp:t :member-name
                                      "pipeline"))
                                    (:shape-name "UpdateServicePipelineOutput"))

(smithy/sdk/shapes:define-structure update-service-sync-blocker-input
                                    common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "id")
                                     (resolved-reason :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "resolvedReason"))
                                    (:shape-name
                                     "UpdateServiceSyncBlockerInput"))

(smithy/sdk/shapes:define-structure update-service-sync-blocker-output
                                    common-lisp:nil
                                    ((service-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "serviceName")
                                     (service-instance-name :target-type
                                      resource-name :member-name
                                      "serviceInstanceName")
                                     (service-sync-blocker :target-type
                                      sync-blocker :required common-lisp:t
                                      :member-name "serviceSyncBlocker"))
                                    (:shape-name
                                     "UpdateServiceSyncBlockerOutput"))

(smithy/sdk/shapes:define-structure update-service-sync-config-input
                                    common-lisp:nil
                                    ((service-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "serviceName")
                                     (repository-provider :target-type
                                      repository-provider :required
                                      common-lisp:t :member-name
                                      "repositoryProvider")
                                     (repository-name :target-type
                                      repository-name :required common-lisp:t
                                      :member-name "repositoryName")
                                     (branch :target-type git-branch-name
                                      :required common-lisp:t :member-name
                                      "branch")
                                     (file-path :target-type ops-file-path
                                      :required common-lisp:t :member-name
                                      "filePath"))
                                    (:shape-name
                                     "UpdateServiceSyncConfigInput"))

(smithy/sdk/shapes:define-structure update-service-sync-config-output
                                    common-lisp:nil
                                    ((service-sync-config :target-type
                                      service-sync-config :member-name
                                      "serviceSyncConfig"))
                                    (:shape-name
                                     "UpdateServiceSyncConfigOutput"))

(smithy/sdk/shapes:define-structure update-service-template-input
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (display-name :target-type display-name
                                      :member-name "displayName")
                                     (description :target-type description
                                      :member-name "description"))
                                    (:shape-name "UpdateServiceTemplateInput"))

(smithy/sdk/shapes:define-structure update-service-template-output
                                    common-lisp:nil
                                    ((service-template :target-type
                                      service-template :required common-lisp:t
                                      :member-name "serviceTemplate"))
                                    (:shape-name "UpdateServiceTemplateOutput"))

(smithy/sdk/shapes:define-structure update-service-template-version-input
                                    common-lisp:nil
                                    ((template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (major-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "majorVersion")
                                     (minor-version :target-type
                                      template-version-part :required
                                      common-lisp:t :member-name
                                      "minorVersion")
                                     (description :target-type description
                                      :member-name "description")
                                     (status :target-type
                                      template-version-status :member-name
                                      "status")
                                     (compatible-environment-templates
                                      :target-type
                                      compatible-environment-template-input-list
                                      :member-name
                                      "compatibleEnvironmentTemplates")
                                     (supported-component-sources :target-type
                                      service-template-supported-component-source-input-list
                                      :member-name
                                      "supportedComponentSources"))
                                    (:shape-name
                                     "UpdateServiceTemplateVersionInput"))

(smithy/sdk/shapes:define-structure update-service-template-version-output
                                    common-lisp:nil
                                    ((service-template-version :target-type
                                      service-template-version :required
                                      common-lisp:t :member-name
                                      "serviceTemplateVersion"))
                                    (:shape-name
                                     "UpdateServiceTemplateVersionOutput"))

(smithy/sdk/shapes:define-structure update-template-sync-config-input
                                    common-lisp:nil
                                    ((template-name :target-type resource-name
                                      :required common-lisp:t :member-name
                                      "templateName")
                                     (template-type :target-type template-type
                                      :required common-lisp:t :member-name
                                      "templateType")
                                     (repository-provider :target-type
                                      repository-provider :required
                                      common-lisp:t :member-name
                                      "repositoryProvider")
                                     (repository-name :target-type
                                      repository-name :required common-lisp:t
                                      :member-name "repositoryName")
                                     (branch :target-type git-branch-name
                                      :required common-lisp:t :member-name
                                      "branch")
                                     (subdirectory :target-type subdirectory
                                      :member-name "subdirectory"))
                                    (:shape-name
                                     "UpdateTemplateSyncConfigInput"))

(smithy/sdk/shapes:define-structure update-template-sync-config-output
                                    common-lisp:nil
                                    ((template-sync-config :target-type
                                      template-sync-config :member-name
                                      "templateSyncConfig"))
                                    (:shape-name
                                     "UpdateTemplateSyncConfigOutput"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation accept-environment-account-connection
                                       :shape-name
                                       "AcceptEnvironmentAccountConnection"
                                       :input
                                       accept-environment-account-connection-input
                                       :output
                                       accept-environment-account-connection-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation cancel-component-deployment :shape-name
                                       "CancelComponentDeployment" :input
                                       cancel-component-deployment-input
                                       :output
                                       cancel-component-deployment-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation cancel-environment-deployment
                                       :shape-name
                                       "CancelEnvironmentDeployment" :input
                                       cancel-environment-deployment-input
                                       :output
                                       cancel-environment-deployment-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation cancel-service-instance-deployment
                                       :shape-name
                                       "CancelServiceInstanceDeployment" :input
                                       cancel-service-instance-deployment-input
                                       :output
                                       cancel-service-instance-deployment-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation cancel-service-pipeline-deployment
                                       :shape-name
                                       "CancelServicePipelineDeployment" :input
                                       cancel-service-pipeline-deployment-input
                                       :output
                                       cancel-service-pipeline-deployment-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-component :shape-name
                                       "CreateComponent" :input
                                       create-component-input :output
                                       create-component-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-environment :shape-name
                                       "CreateEnvironment" :input
                                       create-environment-input :output
                                       create-environment-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-environment-account-connection
                                       :shape-name
                                       "CreateEnvironmentAccountConnection"
                                       :input
                                       create-environment-account-connection-input
                                       :output
                                       create-environment-account-connection-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-environment-template :shape-name
                                       "CreateEnvironmentTemplate" :input
                                       create-environment-template-input
                                       :output
                                       create-environment-template-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-environment-template-version
                                       :shape-name
                                       "CreateEnvironmentTemplateVersion"
                                       :input
                                       create-environment-template-version-input
                                       :output
                                       create-environment-template-version-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-repository :shape-name
                                       "CreateRepository" :input
                                       create-repository-input :output
                                       create-repository-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-service :shape-name
                                       "CreateService" :input
                                       create-service-input :output
                                       create-service-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-service-instance :shape-name
                                       "CreateServiceInstance" :input
                                       create-service-instance-input :output
                                       create-service-instance-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-service-sync-config :shape-name
                                       "CreateServiceSyncConfig" :input
                                       create-service-sync-config-input :output
                                       create-service-sync-config-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-service-template :shape-name
                                       "CreateServiceTemplate" :input
                                       create-service-template-input :output
                                       create-service-template-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-service-template-version
                                       :shape-name
                                       "CreateServiceTemplateVersion" :input
                                       create-service-template-version-input
                                       :output
                                       create-service-template-version-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation create-template-sync-config :shape-name
                                       "CreateTemplateSyncConfig" :input
                                       create-template-sync-config-input
                                       :output
                                       create-template-sync-config-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-component :shape-name
                                       "DeleteComponent" :input
                                       delete-component-input :output
                                       delete-component-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-deployment :shape-name
                                       "DeleteDeployment" :input
                                       delete-deployment-input :output
                                       delete-deployment-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-environment :shape-name
                                       "DeleteEnvironment" :input
                                       delete-environment-input :output
                                       delete-environment-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-environment-account-connection
                                       :shape-name
                                       "DeleteEnvironmentAccountConnection"
                                       :input
                                       delete-environment-account-connection-input
                                       :output
                                       delete-environment-account-connection-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-environment-template :shape-name
                                       "DeleteEnvironmentTemplate" :input
                                       delete-environment-template-input
                                       :output
                                       delete-environment-template-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-environment-template-version
                                       :shape-name
                                       "DeleteEnvironmentTemplateVersion"
                                       :input
                                       delete-environment-template-version-input
                                       :output
                                       delete-environment-template-version-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-repository :shape-name
                                       "DeleteRepository" :input
                                       delete-repository-input :output
                                       delete-repository-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-service :shape-name
                                       "DeleteService" :input
                                       delete-service-input :output
                                       delete-service-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-service-sync-config :shape-name
                                       "DeleteServiceSyncConfig" :input
                                       delete-service-sync-config-input :output
                                       delete-service-sync-config-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-service-template :shape-name
                                       "DeleteServiceTemplate" :input
                                       delete-service-template-input :output
                                       delete-service-template-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-service-template-version
                                       :shape-name
                                       "DeleteServiceTemplateVersion" :input
                                       delete-service-template-version-input
                                       :output
                                       delete-service-template-version-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-template-sync-config :shape-name
                                       "DeleteTemplateSyncConfig" :input
                                       delete-template-sync-config-input
                                       :output
                                       delete-template-sync-config-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-account-settings :shape-name
                                       "GetAccountSettings" :input
                                       get-account-settings-input :output
                                       get-account-settings-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-component :shape-name "GetComponent"
                                       :input get-component-input :output
                                       get-component-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-deployment :shape-name
                                       "GetDeployment" :input
                                       get-deployment-input :output
                                       get-deployment-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-environment :shape-name
                                       "GetEnvironment" :input
                                       get-environment-input :output
                                       get-environment-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-environment-account-connection
                                       :shape-name
                                       "GetEnvironmentAccountConnection" :input
                                       get-environment-account-connection-input
                                       :output
                                       get-environment-account-connection-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-environment-template :shape-name
                                       "GetEnvironmentTemplate" :input
                                       get-environment-template-input :output
                                       get-environment-template-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-environment-template-version
                                       :shape-name
                                       "GetEnvironmentTemplateVersion" :input
                                       get-environment-template-version-input
                                       :output
                                       get-environment-template-version-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-repository :shape-name
                                       "GetRepository" :input
                                       get-repository-input :output
                                       get-repository-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-repository-sync-status :shape-name
                                       "GetRepositorySyncStatus" :input
                                       get-repository-sync-status-input :output
                                       get-repository-sync-status-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-resources-summary :shape-name
                                       "GetResourcesSummary" :input
                                       get-resources-summary-input :output
                                       get-resources-summary-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-service :shape-name "GetService"
                                       :input get-service-input :output
                                       get-service-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-service-instance :shape-name
                                       "GetServiceInstance" :input
                                       get-service-instance-input :output
                                       get-service-instance-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-service-instance-sync-status
                                       :shape-name
                                       "GetServiceInstanceSyncStatus" :input
                                       get-service-instance-sync-status-input
                                       :output
                                       get-service-instance-sync-status-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-service-sync-blocker-summary
                                       :shape-name
                                       "GetServiceSyncBlockerSummary" :input
                                       get-service-sync-blocker-summary-input
                                       :output
                                       get-service-sync-blocker-summary-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-service-sync-config :shape-name
                                       "GetServiceSyncConfig" :input
                                       get-service-sync-config-input :output
                                       get-service-sync-config-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-service-template :shape-name
                                       "GetServiceTemplate" :input
                                       get-service-template-input :output
                                       get-service-template-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-service-template-version :shape-name
                                       "GetServiceTemplateVersion" :input
                                       get-service-template-version-input
                                       :output
                                       get-service-template-version-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-template-sync-config :shape-name
                                       "GetTemplateSyncConfig" :input
                                       get-template-sync-config-input :output
                                       get-template-sync-config-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-template-sync-status :shape-name
                                       "GetTemplateSyncStatus" :input
                                       get-template-sync-status-input :output
                                       get-template-sync-status-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-component-outputs :shape-name
                                       "ListComponentOutputs" :input
                                       list-component-outputs-input :output
                                       list-component-outputs-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-component-provisioned-resources
                                       :shape-name
                                       "ListComponentProvisionedResources"
                                       :input
                                       list-component-provisioned-resources-input
                                       :output
                                       list-component-provisioned-resources-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-components :shape-name
                                       "ListComponents" :input
                                       list-components-input :output
                                       list-components-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-deployments :shape-name
                                       "ListDeployments" :input
                                       list-deployments-input :output
                                       list-deployments-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-environment-account-connections
                                       :shape-name
                                       "ListEnvironmentAccountConnections"
                                       :input
                                       list-environment-account-connections-input
                                       :output
                                       list-environment-account-connections-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-environment-outputs :shape-name
                                       "ListEnvironmentOutputs" :input
                                       list-environment-outputs-input :output
                                       list-environment-outputs-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-environment-provisioned-resources
                                       :shape-name
                                       "ListEnvironmentProvisionedResources"
                                       :input
                                       list-environment-provisioned-resources-input
                                       :output
                                       list-environment-provisioned-resources-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-environment-template-versions
                                       :shape-name
                                       "ListEnvironmentTemplateVersions" :input
                                       list-environment-template-versions-input
                                       :output
                                       list-environment-template-versions-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-environment-templates :shape-name
                                       "ListEnvironmentTemplates" :input
                                       list-environment-templates-input :output
                                       list-environment-templates-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-environments :shape-name
                                       "ListEnvironments" :input
                                       list-environments-input :output
                                       list-environments-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-repositories :shape-name
                                       "ListRepositories" :input
                                       list-repositories-input :output
                                       list-repositories-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-repository-sync-definitions
                                       :shape-name
                                       "ListRepositorySyncDefinitions" :input
                                       list-repository-sync-definitions-input
                                       :output
                                       list-repository-sync-definitions-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-service-instance-outputs
                                       :shape-name "ListServiceInstanceOutputs"
                                       :input
                                       list-service-instance-outputs-input
                                       :output
                                       list-service-instance-outputs-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 list-service-instance-provisioned-resources :shape-name
 "ListServiceInstanceProvisionedResources" :input
 list-service-instance-provisioned-resources-input :output
 list-service-instance-provisioned-resources-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation list-service-instances :shape-name
                                       "ListServiceInstances" :input
                                       list-service-instances-input :output
                                       list-service-instances-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-service-pipeline-outputs
                                       :shape-name "ListServicePipelineOutputs"
                                       :input
                                       list-service-pipeline-outputs-input
                                       :output
                                       list-service-pipeline-outputs-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation
 list-service-pipeline-provisioned-resources :shape-name
 "ListServicePipelineProvisionedResources" :input
 list-service-pipeline-provisioned-resources-input :output
 list-service-pipeline-provisioned-resources-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception))

(smithy/sdk/operation:define-operation list-service-template-versions
                                       :shape-name
                                       "ListServiceTemplateVersions" :input
                                       list-service-template-versions-input
                                       :output
                                       list-service-template-versions-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-service-templates :shape-name
                                       "ListServiceTemplates" :input
                                       list-service-templates-input :output
                                       list-service-templates-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-services :shape-name "ListServices"
                                       :input list-services-input :output
                                       list-services-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation notify-resource-deployment-status-change
                                       :shape-name
                                       "NotifyResourceDeploymentStatusChange"
                                       :input
                                       notify-resource-deployment-status-change-input
                                       :output
                                       notify-resource-deployment-status-change-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation reject-environment-account-connection
                                       :shape-name
                                       "RejectEnvironmentAccountConnection"
                                       :input
                                       reject-environment-account-connection-input
                                       :output
                                       reject-environment-account-connection-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-account-settings :shape-name
                                       "UpdateAccountSettings" :input
                                       update-account-settings-input :output
                                       update-account-settings-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-component :shape-name
                                       "UpdateComponent" :input
                                       update-component-input :output
                                       update-component-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-environment :shape-name
                                       "UpdateEnvironment" :input
                                       update-environment-input :output
                                       update-environment-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-environment-account-connection
                                       :shape-name
                                       "UpdateEnvironmentAccountConnection"
                                       :input
                                       update-environment-account-connection-input
                                       :output
                                       update-environment-account-connection-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-environment-template :shape-name
                                       "UpdateEnvironmentTemplate" :input
                                       update-environment-template-input
                                       :output
                                       update-environment-template-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-environment-template-version
                                       :shape-name
                                       "UpdateEnvironmentTemplateVersion"
                                       :input
                                       update-environment-template-version-input
                                       :output
                                       update-environment-template-version-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-service :shape-name
                                       "UpdateService" :input
                                       update-service-input :output
                                       update-service-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-service-instance :shape-name
                                       "UpdateServiceInstance" :input
                                       update-service-instance-input :output
                                       update-service-instance-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-service-pipeline :shape-name
                                       "UpdateServicePipeline" :input
                                       update-service-pipeline-input :output
                                       update-service-pipeline-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-service-sync-blocker :shape-name
                                       "UpdateServiceSyncBlocker" :input
                                       update-service-sync-blocker-input
                                       :output
                                       update-service-sync-blocker-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-service-sync-config :shape-name
                                       "UpdateServiceSyncConfig" :input
                                       update-service-sync-config-input :output
                                       update-service-sync-config-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-service-template :shape-name
                                       "UpdateServiceTemplate" :input
                                       update-service-template-input :output
                                       update-service-template-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-service-template-version
                                       :shape-name
                                       "UpdateServiceTemplateVersion" :input
                                       update-service-template-version-input
                                       :output
                                       update-service-template-version-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-template-sync-config :shape-name
                                       "UpdateTemplateSyncConfig" :input
                                       update-template-sync-config-input
                                       :output
                                       update-template-sync-config-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))
