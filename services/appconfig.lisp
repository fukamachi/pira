(uiop/package:define-package #:pira/appconfig (:use)
                             (:export #:account-settings #:action
                              #:action-invocation #:action-invocations
                              #:action-list #:action-point #:actions-map
                              #:amazon-app-config #:application
                              #:application-list #:applications
                              #:applied-extension #:applied-extensions #:arn
                              #:bad-request-details #:bad-request-reason #:blob
                              #:boolean #:bytes-measure #:configuration
                              #:configuration-profile
                              #:configuration-profile-summary
                              #:configuration-profile-summary-list
                              #:configuration-profile-type
                              #:configuration-profiles #:create-application
                              #:create-configuration-profile
                              #:create-deployment-strategy #:create-environment
                              #:create-extension #:create-extension-association
                              #:create-hosted-configuration-version
                              #:delete-application
                              #:delete-configuration-profile
                              #:delete-deployment-strategy #:delete-environment
                              #:delete-extension #:delete-extension-association
                              #:delete-hosted-configuration-version
                              #:deletion-protection-check
                              #:deletion-protection-duration
                              #:deletion-protection-settings #:deployment
                              #:deployment-event #:deployment-event-type
                              #:deployment-events #:deployment-list
                              #:deployment-state #:deployment-strategies
                              #:deployment-strategy #:deployment-strategy-id
                              #:deployment-strategy-list #:deployment-summary
                              #:deployments #:description
                              #:dynamic-parameter-key #:dynamic-parameter-map
                              #:environment #:environment-list
                              #:environment-state #:environments #:extension
                              #:extension-association
                              #:extension-association-summaries
                              #:extension-association-summary
                              #:extension-associations
                              #:extension-or-parameter-name
                              #:extension-summaries #:extension-summary
                              #:extensions #:float #:get-account-settings
                              #:get-application #:get-configuration
                              #:get-configuration-profile #:get-deployment
                              #:get-deployment-strategy #:get-environment
                              #:get-extension #:get-extension-association
                              #:get-hosted-configuration-version
                              #:growth-factor #:growth-type
                              #:hosted-configuration-version
                              #:hosted-configuration-version-summary
                              #:hosted-configuration-version-summary-list
                              #:hosted-configuration-versions #:id #:identifier
                              #:integer #:invalid-configuration-detail
                              #:invalid-configuration-detail-list
                              #:iso8601date-time #:kms-key-identifier
                              #:kms-key-identifier-or-empty #:list-applications
                              #:list-configuration-profiles
                              #:list-deployment-strategies #:list-deployments
                              #:list-environments #:list-extension-associations
                              #:list-extensions
                              #:list-hosted-configuration-versions
                              #:list-tags-for-resource #:long-name
                              #:max-results #:minutes-between0and24hours
                              #:monitor #:monitor-list #:name #:next-token
                              #:parameter #:parameter-map #:parameter-value-map
                              #:percentage #:query-name #:replicate-to
                              #:resource-tags #:role-arn #:start-deployment
                              #:stop-deployment #:string
                              #:string-with-length-between0and32768
                              #:string-with-length-between1and2048
                              #:string-with-length-between1and255
                              #:string-with-length-between1and64 #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:triggered-by #:untag-resource
                              #:update-account-settings #:update-application
                              #:update-configuration-profile
                              #:update-deployment-strategy #:update-environment
                              #:update-extension #:update-extension-association
                              #:uri #:validate-configuration #:validator
                              #:validator-list #:validator-type
                              #:validator-type-list #:version #:version-label))
(common-lisp:in-package #:pira/appconfig)

(smithy/sdk/service:define-service amazon-app-config :shape-name
                                   "AmazonAppConfig" :version "2019-10-09"
                                   :title "Amazon AppConfig" :operations
                                   '(create-application
                                     create-configuration-profile
                                     create-deployment-strategy
                                     create-environment create-extension
                                     create-extension-association
                                     create-hosted-configuration-version
                                     delete-application
                                     delete-configuration-profile
                                     delete-deployment-strategy
                                     delete-environment delete-extension
                                     delete-extension-association
                                     delete-hosted-configuration-version
                                     get-account-settings get-application
                                     get-configuration
                                     get-configuration-profile get-deployment
                                     get-deployment-strategy get-environment
                                     get-extension get-extension-association
                                     get-hosted-configuration-version
                                     list-applications
                                     list-configuration-profiles
                                     list-deployments
                                     list-deployment-strategies
                                     list-environments
                                     list-extension-associations
                                     list-extensions
                                     list-hosted-configuration-versions
                                     list-tags-for-resource start-deployment
                                     stop-deployment tag-resource
                                     untag-resource update-account-settings
                                     update-application
                                     update-configuration-profile
                                     update-deployment-strategy
                                     update-environment update-extension
                                     update-extension-association
                                     validate-configuration)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "AppConfig")
                                      ("arnNamespace" . "appconfig")
                                      ("cloudFormationName" . "AppConfig")
                                      ("cloudTrailEventSource"
                                       . "appconfig.amazonaws.com")
                                      ("endpointPrefix" . "appconfig"))
                                     ("aws.auth#sigv4" ("name" . "appconfig"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure account-settings common-lisp:nil
                                    ((deletion-protection :target-type
                                      deletion-protection-settings :member-name
                                      "DeletionProtection"))
                                    (:shape-name "AccountSettings"))

(smithy/sdk/shapes:define-structure action common-lisp:nil
                                    ((name :target-type name :member-name
                                      "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (uri :target-type uri :member-name "Uri")
                                     (role-arn :target-type arn :member-name
                                      "RoleArn"))
                                    (:shape-name "Action"))

(smithy/sdk/shapes:define-structure action-invocation common-lisp:nil
                                    ((extension-identifier :target-type
                                      identifier :member-name
                                      "ExtensionIdentifier")
                                     (action-name :target-type name
                                      :member-name "ActionName")
                                     (uri :target-type uri :member-name "Uri")
                                     (role-arn :target-type arn :member-name
                                      "RoleArn")
                                     (error-message :target-type string
                                      :member-name "ErrorMessage")
                                     (error-code :target-type string
                                      :member-name "ErrorCode")
                                     (invocation-id :target-type id
                                      :member-name "InvocationId"))
                                    (:shape-name "ActionInvocation"))

(smithy/sdk/shapes:define-list action-invocations :member action-invocation)

(smithy/sdk/shapes:define-list action-list :member action)

(smithy/sdk/shapes:define-enum action-point
    common-lisp:nil
  (:pre-create-hosted-configuration-version
   "PRE_CREATE_HOSTED_CONFIGURATION_VERSION")
  (:pre-start-deployment "PRE_START_DEPLOYMENT")
  (:at-deployment-tick "AT_DEPLOYMENT_TICK")
  (:on-deployment-start "ON_DEPLOYMENT_START")
  (:on-deployment-step "ON_DEPLOYMENT_STEP")
  (:on-deployment-baking "ON_DEPLOYMENT_BAKING")
  (:on-deployment-complete "ON_DEPLOYMENT_COMPLETE")
  (:on-deployment-rolled-back "ON_DEPLOYMENT_ROLLED_BACK"))

(smithy/sdk/shapes:define-map actions-map :key action-point :value action-list)

(smithy/sdk/shapes:define-structure application common-lisp:nil
                                    ((id :target-type id :member-name "Id")
                                     (name :target-type name :member-name
                                      "Name")
                                     (description :target-type description
                                      :member-name "Description"))
                                    (:shape-name "Application"))

(smithy/sdk/shapes:define-list application-list :member application)

(smithy/sdk/shapes:define-structure applications common-lisp:nil
                                    ((items :target-type application-list
                                      :member-name "Items")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "Applications"))

(smithy/sdk/shapes:define-structure applied-extension common-lisp:nil
                                    ((extension-id :target-type id :member-name
                                      "ExtensionId")
                                     (extension-association-id :target-type id
                                      :member-name "ExtensionAssociationId")
                                     (version-number :target-type integer
                                      :member-name "VersionNumber")
                                     (parameters :target-type
                                      parameter-value-map :member-name
                                      "Parameters"))
                                    (:shape-name "AppliedExtension"))

(smithy/sdk/shapes:define-list applied-extensions :member applied-extension)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union bad-request-details common-lisp:nil
                                ((invalid-configuration :target-type
                                  invalid-configuration-detail-list
                                  :member-name "InvalidConfiguration"))
                                (:shape-name "BadRequestDetails"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (reason :target-type bad-request-reason
                                  :member-name "Reason")
                                 (details :target-type bad-request-details
                                  :member-name "Details"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum bad-request-reason
    common-lisp:nil
  (:invalid-configuration "InvalidConfiguration"))

(smithy/sdk/shapes:define-type blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum bytes-measure
    common-lisp:nil
  (:kilobytes "KILOBYTES"))

(smithy/sdk/shapes:define-structure configuration common-lisp:nil
                                    ((content :target-type blob :member-name
                                      "Content" :http-payload common-lisp:t)
                                     (configuration-version :target-type
                                      version :member-name
                                      "ConfigurationVersion" :http-header
                                      "Configuration-Version")
                                     (content-type :target-type string
                                      :member-name "ContentType" :http-header
                                      "Content-Type"))
                                    (:shape-name "Configuration"))

(smithy/sdk/shapes:define-structure configuration-profile common-lisp:nil
                                    ((application-id :target-type id
                                      :member-name "ApplicationId")
                                     (id :target-type id :member-name "Id")
                                     (name :target-type long-name :member-name
                                      "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (location-uri :target-type uri
                                      :member-name "LocationUri")
                                     (retrieval-role-arn :target-type role-arn
                                      :member-name "RetrievalRoleArn")
                                     (validators :target-type validator-list
                                      :member-name "Validators")
                                     (type :target-type
                                      configuration-profile-type :member-name
                                      "Type")
                                     (kms-key-arn :target-type arn :member-name
                                      "KmsKeyArn")
                                     (kms-key-identifier :target-type
                                      kms-key-identifier :member-name
                                      "KmsKeyIdentifier"))
                                    (:shape-name "ConfigurationProfile"))

(smithy/sdk/shapes:define-structure configuration-profile-summary
                                    common-lisp:nil
                                    ((application-id :target-type id
                                      :member-name "ApplicationId")
                                     (id :target-type id :member-name "Id")
                                     (name :target-type long-name :member-name
                                      "Name")
                                     (location-uri :target-type uri
                                      :member-name "LocationUri")
                                     (validator-types :target-type
                                      validator-type-list :member-name
                                      "ValidatorTypes")
                                     (type :target-type
                                      configuration-profile-type :member-name
                                      "Type"))
                                    (:shape-name "ConfigurationProfileSummary"))

(smithy/sdk/shapes:define-list configuration-profile-summary-list :member
                               configuration-profile-summary)

(smithy/sdk/shapes:define-type configuration-profile-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure configuration-profiles common-lisp:nil
                                    ((items :target-type
                                      configuration-profile-summary-list
                                      :member-name "Items")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ConfigurationProfiles"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-application-request common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateApplicationRequest"))

(smithy/sdk/shapes:define-input create-configuration-profile-request
                                common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (name :target-type long-name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (location-uri :target-type uri :required
                                  common-lisp:t :member-name "LocationUri")
                                 (retrieval-role-arn :target-type role-arn
                                  :member-name "RetrievalRoleArn")
                                 (validators :target-type validator-list
                                  :member-name "Validators")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (type :target-type configuration-profile-type
                                  :member-name "Type")
                                 (kms-key-identifier :target-type
                                  kms-key-identifier :member-name
                                  "KmsKeyIdentifier"))
                                (:shape-name
                                 "CreateConfigurationProfileRequest"))

(smithy/sdk/shapes:define-input create-deployment-strategy-request
                                common-lisp:nil
                                ((name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (deployment-duration-in-minutes :target-type
                                  minutes-between0and24hours :required
                                  common-lisp:t :member-name
                                  "DeploymentDurationInMinutes")
                                 (final-bake-time-in-minutes :target-type
                                  minutes-between0and24hours :member-name
                                  "FinalBakeTimeInMinutes")
                                 (growth-factor :target-type growth-factor
                                  :required common-lisp:t :member-name
                                  "GrowthFactor")
                                 (growth-type :target-type growth-type
                                  :member-name "GrowthType")
                                 (replicate-to :target-type replicate-to
                                  :member-name "ReplicateTo")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateDeploymentStrategyRequest"))

(smithy/sdk/shapes:define-input create-environment-request common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (name :target-type name :required
                                  common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (monitors :target-type monitor-list
                                  :member-name "Monitors")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name "CreateEnvironmentRequest"))

(smithy/sdk/shapes:define-input create-extension-association-request
                                common-lisp:nil
                                ((extension-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "ExtensionIdentifier")
                                 (extension-version-number :target-type integer
                                  :member-name "ExtensionVersionNumber")
                                 (resource-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "ResourceIdentifier")
                                 (parameters :target-type parameter-value-map
                                  :member-name "Parameters")
                                 (tags :target-type tag-map :member-name
                                  "Tags"))
                                (:shape-name
                                 "CreateExtensionAssociationRequest"))

(smithy/sdk/shapes:define-input create-extension-request common-lisp:nil
                                ((name :target-type extension-or-parameter-name
                                  :required common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (actions :target-type actions-map :required
                                  common-lisp:t :member-name "Actions")
                                 (parameters :target-type parameter-map
                                  :member-name "Parameters")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (latest-version-number :target-type integer
                                  :member-name "LatestVersionNumber"
                                  :http-header "Latest-Version-Number"))
                                (:shape-name "CreateExtensionRequest"))

(smithy/sdk/shapes:define-input create-hosted-configuration-version-request
                                common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (configuration-profile-id :target-type id
                                  :required common-lisp:t :member-name
                                  "ConfigurationProfileId" :http-label
                                  common-lisp:t)
                                 (description :target-type description
                                  :member-name "Description" :http-header
                                  "Description")
                                 (content :target-type blob :required
                                  common-lisp:t :member-name "Content"
                                  :http-payload common-lisp:t)
                                 (content-type :target-type
                                  string-with-length-between1and255 :required
                                  common-lisp:t :member-name "ContentType"
                                  :http-header "Content-Type")
                                 (latest-version-number :target-type integer
                                  :member-name "LatestVersionNumber"
                                  :http-header "Latest-Version-Number")
                                 (version-label :target-type version-label
                                  :member-name "VersionLabel" :http-header
                                  "VersionLabel"))
                                (:shape-name
                                 "CreateHostedConfigurationVersionRequest"))

(smithy/sdk/shapes:define-input delete-application-request common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteApplicationRequest"))

(smithy/sdk/shapes:define-input delete-configuration-profile-request
                                common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (configuration-profile-id :target-type id
                                  :required common-lisp:t :member-name
                                  "ConfigurationProfileId" :http-label
                                  common-lisp:t)
                                 (deletion-protection-check :target-type
                                  deletion-protection-check :member-name
                                  "DeletionProtectionCheck" :http-header
                                  "x-amzn-deletion-protection-check"))
                                (:shape-name
                                 "DeleteConfigurationProfileRequest"))

(smithy/sdk/shapes:define-input delete-deployment-strategy-request
                                common-lisp:nil
                                ((deployment-strategy-id :target-type
                                  deployment-strategy-id :required
                                  common-lisp:t :member-name
                                  "DeploymentStrategyId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteDeploymentStrategyRequest"))

(smithy/sdk/shapes:define-input delete-environment-request common-lisp:nil
                                ((environment-id :target-type id :required
                                  common-lisp:t :member-name "EnvironmentId"
                                  :http-label common-lisp:t)
                                 (application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (deletion-protection-check :target-type
                                  deletion-protection-check :member-name
                                  "DeletionProtectionCheck" :http-header
                                  "x-amzn-deletion-protection-check"))
                                (:shape-name "DeleteEnvironmentRequest"))

(smithy/sdk/shapes:define-input delete-extension-association-request
                                common-lisp:nil
                                ((extension-association-id :target-type id
                                  :required common-lisp:t :member-name
                                  "ExtensionAssociationId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteExtensionAssociationRequest"))

(smithy/sdk/shapes:define-input delete-extension-request common-lisp:nil
                                ((extension-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "ExtensionIdentifier" :http-label
                                  common-lisp:t)
                                 (version-number :target-type integer
                                  :member-name "VersionNumber" :http-query
                                  "version"))
                                (:shape-name "DeleteExtensionRequest"))

(smithy/sdk/shapes:define-input delete-hosted-configuration-version-request
                                common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (configuration-profile-id :target-type id
                                  :required common-lisp:t :member-name
                                  "ConfigurationProfileId" :http-label
                                  common-lisp:t)
                                 (version-number :target-type integer :required
                                  common-lisp:t :member-name "VersionNumber"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteHostedConfigurationVersionRequest"))

(smithy/sdk/shapes:define-enum deletion-protection-check
    common-lisp:nil
  (:account-default "ACCOUNT_DEFAULT")
  (:apply "APPLY")
  (:bypass "BYPASS"))

(smithy/sdk/shapes:define-type deletion-protection-duration
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure deletion-protection-settings
                                    common-lisp:nil
                                    ((enabled :target-type boolean :member-name
                                      "Enabled")
                                     (protection-period-in-minutes :target-type
                                      deletion-protection-duration :member-name
                                      "ProtectionPeriodInMinutes"))
                                    (:shape-name "DeletionProtectionSettings"))

(smithy/sdk/shapes:define-structure deployment common-lisp:nil
                                    ((application-id :target-type id
                                      :member-name "ApplicationId")
                                     (environment-id :target-type id
                                      :member-name "EnvironmentId")
                                     (deployment-strategy-id :target-type id
                                      :member-name "DeploymentStrategyId")
                                     (configuration-profile-id :target-type id
                                      :member-name "ConfigurationProfileId")
                                     (deployment-number :target-type integer
                                      :member-name "DeploymentNumber")
                                     (configuration-name :target-type name
                                      :member-name "ConfigurationName")
                                     (configuration-location-uri :target-type
                                      uri :member-name
                                      "ConfigurationLocationUri")
                                     (configuration-version :target-type
                                      version :member-name
                                      "ConfigurationVersion")
                                     (description :target-type description
                                      :member-name "Description")
                                     (deployment-duration-in-minutes
                                      :target-type minutes-between0and24hours
                                      :member-name
                                      "DeploymentDurationInMinutes")
                                     (growth-type :target-type growth-type
                                      :member-name "GrowthType")
                                     (growth-factor :target-type percentage
                                      :member-name "GrowthFactor")
                                     (final-bake-time-in-minutes :target-type
                                      minutes-between0and24hours :member-name
                                      "FinalBakeTimeInMinutes")
                                     (state :target-type deployment-state
                                      :member-name "State")
                                     (event-log :target-type deployment-events
                                      :member-name "EventLog")
                                     (percentage-complete :target-type
                                      percentage :member-name
                                      "PercentageComplete")
                                     (started-at :target-type iso8601date-time
                                      :member-name "StartedAt")
                                     (completed-at :target-type
                                      iso8601date-time :member-name
                                      "CompletedAt")
                                     (applied-extensions :target-type
                                      applied-extensions :member-name
                                      "AppliedExtensions")
                                     (kms-key-arn :target-type arn :member-name
                                      "KmsKeyArn")
                                     (kms-key-identifier :target-type
                                      kms-key-identifier :member-name
                                      "KmsKeyIdentifier")
                                     (version-label :target-type version-label
                                      :member-name "VersionLabel"))
                                    (:shape-name "Deployment"))

(smithy/sdk/shapes:define-structure deployment-event common-lisp:nil
                                    ((event-type :target-type
                                      deployment-event-type :member-name
                                      "EventType")
                                     (triggered-by :target-type triggered-by
                                      :member-name "TriggeredBy")
                                     (description :target-type description
                                      :member-name "Description")
                                     (action-invocations :target-type
                                      action-invocations :member-name
                                      "ActionInvocations")
                                     (occurred-at :target-type iso8601date-time
                                      :member-name "OccurredAt"))
                                    (:shape-name "DeploymentEvent"))

(smithy/sdk/shapes:define-enum deployment-event-type
    common-lisp:nil
  (:percentage-updated "PERCENTAGE_UPDATED")
  (:rollback-started "ROLLBACK_STARTED")
  (:rollback-completed "ROLLBACK_COMPLETED")
  (:bake-time-started "BAKE_TIME_STARTED")
  (:deployment-started "DEPLOYMENT_STARTED")
  (:deployment-completed "DEPLOYMENT_COMPLETED")
  (:revert-completed "REVERT_COMPLETED"))

(smithy/sdk/shapes:define-list deployment-events :member deployment-event)

(smithy/sdk/shapes:define-list deployment-list :member deployment-summary)

(smithy/sdk/shapes:define-enum deployment-state
    common-lisp:nil
  (:baking "BAKING")
  (:validating "VALIDATING")
  (:deploying "DEPLOYING")
  (:complete "COMPLETE")
  (:rolling-back "ROLLING_BACK")
  (:rolled-back "ROLLED_BACK")
  (:reverted "REVERTED"))

(smithy/sdk/shapes:define-structure deployment-strategies common-lisp:nil
                                    ((items :target-type
                                      deployment-strategy-list :member-name
                                      "Items")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "DeploymentStrategies"))

(smithy/sdk/shapes:define-structure deployment-strategy common-lisp:nil
                                    ((id :target-type id :member-name "Id")
                                     (name :target-type name :member-name
                                      "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (deployment-duration-in-minutes
                                      :target-type minutes-between0and24hours
                                      :member-name
                                      "DeploymentDurationInMinutes")
                                     (growth-type :target-type growth-type
                                      :member-name "GrowthType")
                                     (growth-factor :target-type percentage
                                      :member-name "GrowthFactor")
                                     (final-bake-time-in-minutes :target-type
                                      minutes-between0and24hours :member-name
                                      "FinalBakeTimeInMinutes")
                                     (replicate-to :target-type replicate-to
                                      :member-name "ReplicateTo"))
                                    (:shape-name "DeploymentStrategy"))

(smithy/sdk/shapes:define-type deployment-strategy-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list deployment-strategy-list :member
                               deployment-strategy)

(smithy/sdk/shapes:define-structure deployment-summary common-lisp:nil
                                    ((deployment-number :target-type integer
                                      :member-name "DeploymentNumber")
                                     (configuration-name :target-type name
                                      :member-name "ConfigurationName")
                                     (configuration-version :target-type
                                      version :member-name
                                      "ConfigurationVersion")
                                     (deployment-duration-in-minutes
                                      :target-type minutes-between0and24hours
                                      :member-name
                                      "DeploymentDurationInMinutes")
                                     (growth-type :target-type growth-type
                                      :member-name "GrowthType")
                                     (growth-factor :target-type percentage
                                      :member-name "GrowthFactor")
                                     (final-bake-time-in-minutes :target-type
                                      minutes-between0and24hours :member-name
                                      "FinalBakeTimeInMinutes")
                                     (state :target-type deployment-state
                                      :member-name "State")
                                     (percentage-complete :target-type
                                      percentage :member-name
                                      "PercentageComplete")
                                     (started-at :target-type iso8601date-time
                                      :member-name "StartedAt")
                                     (completed-at :target-type
                                      iso8601date-time :member-name
                                      "CompletedAt")
                                     (version-label :target-type version-label
                                      :member-name "VersionLabel"))
                                    (:shape-name "DeploymentSummary"))

(smithy/sdk/shapes:define-structure deployments common-lisp:nil
                                    ((items :target-type deployment-list
                                      :member-name "Items")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "Deployments"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dynamic-parameter-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map dynamic-parameter-map :key dynamic-parameter-key
                              :value string-with-length-between1and2048)

(smithy/sdk/shapes:define-structure environment common-lisp:nil
                                    ((application-id :target-type id
                                      :member-name "ApplicationId")
                                     (id :target-type id :member-name "Id")
                                     (name :target-type name :member-name
                                      "Name")
                                     (description :target-type description
                                      :member-name "Description")
                                     (state :target-type environment-state
                                      :member-name "State")
                                     (monitors :target-type monitor-list
                                      :member-name "Monitors"))
                                    (:shape-name "Environment"))

(smithy/sdk/shapes:define-list environment-list :member environment)

(smithy/sdk/shapes:define-enum environment-state
    common-lisp:nil
  (:ready-for-deployment "READY_FOR_DEPLOYMENT")
  (:deploying "DEPLOYING")
  (:rolling-back "ROLLING_BACK")
  (:rolled-back "ROLLED_BACK")
  (:reverted "REVERTED"))

(smithy/sdk/shapes:define-structure environments common-lisp:nil
                                    ((items :target-type environment-list
                                      :member-name "Items")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "Environments"))

(smithy/sdk/shapes:define-structure extension common-lisp:nil
                                    ((id :target-type id :member-name "Id")
                                     (name :target-type name :member-name
                                      "Name")
                                     (version-number :target-type integer
                                      :member-name "VersionNumber")
                                     (arn :target-type arn :member-name "Arn")
                                     (description :target-type description
                                      :member-name "Description")
                                     (actions :target-type actions-map
                                      :member-name "Actions")
                                     (parameters :target-type parameter-map
                                      :member-name "Parameters"))
                                    (:shape-name "Extension"))

(smithy/sdk/shapes:define-structure extension-association common-lisp:nil
                                    ((id :target-type identifier :member-name
                                      "Id")
                                     (extension-arn :target-type arn
                                      :member-name "ExtensionArn")
                                     (resource-arn :target-type arn
                                      :member-name "ResourceArn")
                                     (arn :target-type arn :member-name "Arn")
                                     (parameters :target-type
                                      parameter-value-map :member-name
                                      "Parameters")
                                     (extension-version-number :target-type
                                      integer :member-name
                                      "ExtensionVersionNumber"))
                                    (:shape-name "ExtensionAssociation"))

(smithy/sdk/shapes:define-list extension-association-summaries :member
                               extension-association-summary)

(smithy/sdk/shapes:define-structure extension-association-summary
                                    common-lisp:nil
                                    ((id :target-type identifier :member-name
                                      "Id")
                                     (extension-arn :target-type arn
                                      :member-name "ExtensionArn")
                                     (resource-arn :target-type arn
                                      :member-name "ResourceArn"))
                                    (:shape-name "ExtensionAssociationSummary"))

(smithy/sdk/shapes:define-structure extension-associations common-lisp:nil
                                    ((items :target-type
                                      extension-association-summaries
                                      :member-name "Items")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "ExtensionAssociations"))

(smithy/sdk/shapes:define-type extension-or-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list extension-summaries :member extension-summary)

(smithy/sdk/shapes:define-structure extension-summary common-lisp:nil
                                    ((id :target-type id :member-name "Id")
                                     (name :target-type name :member-name
                                      "Name")
                                     (version-number :target-type integer
                                      :member-name "VersionNumber")
                                     (arn :target-type arn :member-name "Arn")
                                     (description :target-type description
                                      :member-name "Description"))
                                    (:shape-name "ExtensionSummary"))

(smithy/sdk/shapes:define-structure extensions common-lisp:nil
                                    ((items :target-type extension-summaries
                                      :member-name "Items")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "Extensions"))

(smithy/sdk/shapes:define-type float smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-input get-application-request common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetApplicationRequest"))

(smithy/sdk/shapes:define-input get-configuration-profile-request
                                common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (configuration-profile-id :target-type id
                                  :required common-lisp:t :member-name
                                  "ConfigurationProfileId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetConfigurationProfileRequest"))

(smithy/sdk/shapes:define-input get-configuration-request common-lisp:nil
                                ((application :target-type
                                  string-with-length-between1and64 :required
                                  common-lisp:t :member-name "Application"
                                  :http-label common-lisp:t)
                                 (environment :target-type
                                  string-with-length-between1and64 :required
                                  common-lisp:t :member-name "Environment"
                                  :http-label common-lisp:t)
                                 (configuration :target-type
                                  string-with-length-between1and64 :required
                                  common-lisp:t :member-name "Configuration"
                                  :http-label common-lisp:t)
                                 (client-id :target-type
                                  string-with-length-between1and64 :required
                                  common-lisp:t :member-name "ClientId"
                                  :http-query "client_id")
                                 (client-configuration-version :target-type
                                  version :member-name
                                  "ClientConfigurationVersion" :http-query
                                  "client_configuration_version"))
                                (:shape-name "GetConfigurationRequest"))

(smithy/sdk/shapes:define-input get-deployment-request common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (environment-id :target-type id :required
                                  common-lisp:t :member-name "EnvironmentId"
                                  :http-label common-lisp:t)
                                 (deployment-number :target-type integer
                                  :required common-lisp:t :member-name
                                  "DeploymentNumber" :http-label
                                  common-lisp:t))
                                (:shape-name "GetDeploymentRequest"))

(smithy/sdk/shapes:define-input get-deployment-strategy-request common-lisp:nil
                                ((deployment-strategy-id :target-type
                                  deployment-strategy-id :required
                                  common-lisp:t :member-name
                                  "DeploymentStrategyId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetDeploymentStrategyRequest"))

(smithy/sdk/shapes:define-input get-environment-request common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (environment-id :target-type id :required
                                  common-lisp:t :member-name "EnvironmentId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetEnvironmentRequest"))

(smithy/sdk/shapes:define-input get-extension-association-request
                                common-lisp:nil
                                ((extension-association-id :target-type id
                                  :required common-lisp:t :member-name
                                  "ExtensionAssociationId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetExtensionAssociationRequest"))

(smithy/sdk/shapes:define-input get-extension-request common-lisp:nil
                                ((extension-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "ExtensionIdentifier" :http-label
                                  common-lisp:t)
                                 (version-number :target-type integer
                                  :member-name "VersionNumber" :http-query
                                  "version_number"))
                                (:shape-name "GetExtensionRequest"))

(smithy/sdk/shapes:define-input get-hosted-configuration-version-request
                                common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (configuration-profile-id :target-type id
                                  :required common-lisp:t :member-name
                                  "ConfigurationProfileId" :http-label
                                  common-lisp:t)
                                 (version-number :target-type integer :required
                                  common-lisp:t :member-name "VersionNumber"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetHostedConfigurationVersionRequest"))

(smithy/sdk/shapes:define-type growth-factor smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-enum growth-type
    common-lisp:nil
  (:linear "LINEAR")
  (:exponential "EXPONENTIAL"))

(smithy/sdk/shapes:define-structure hosted-configuration-version
                                    common-lisp:nil
                                    ((application-id :target-type id
                                      :member-name "ApplicationId" :http-header
                                      "Application-Id")
                                     (configuration-profile-id :target-type id
                                      :member-name "ConfigurationProfileId"
                                      :http-header "Configuration-Profile-Id")
                                     (version-number :target-type integer
                                      :member-name "VersionNumber" :http-header
                                      "Version-Number")
                                     (description :target-type description
                                      :member-name "Description" :http-header
                                      "Description")
                                     (content :target-type blob :member-name
                                      "Content" :http-payload common-lisp:t)
                                     (content-type :target-type
                                      string-with-length-between1and255
                                      :member-name "ContentType" :http-header
                                      "Content-Type")
                                     (version-label :target-type version-label
                                      :member-name "VersionLabel" :http-header
                                      "VersionLabel")
                                     (kms-key-arn :target-type arn :member-name
                                      "KmsKeyArn" :http-header "KmsKeyArn"))
                                    (:shape-name "HostedConfigurationVersion"))

(smithy/sdk/shapes:define-structure hosted-configuration-version-summary
                                    common-lisp:nil
                                    ((application-id :target-type id
                                      :member-name "ApplicationId")
                                     (configuration-profile-id :target-type id
                                      :member-name "ConfigurationProfileId")
                                     (version-number :target-type integer
                                      :member-name "VersionNumber")
                                     (description :target-type description
                                      :member-name "Description")
                                     (content-type :target-type
                                      string-with-length-between1and255
                                      :member-name "ContentType")
                                     (version-label :target-type version-label
                                      :member-name "VersionLabel")
                                     (kms-key-arn :target-type arn :member-name
                                      "KmsKeyArn"))
                                    (:shape-name
                                     "HostedConfigurationVersionSummary"))

(smithy/sdk/shapes:define-list hosted-configuration-version-summary-list
                               :member hosted-configuration-version-summary)

(smithy/sdk/shapes:define-structure hosted-configuration-versions
                                    common-lisp:nil
                                    ((items :target-type
                                      hosted-configuration-version-summary-list
                                      :member-name "Items")
                                     (next-token :target-type next-token
                                      :member-name "NextToken"))
                                    (:shape-name "HostedConfigurationVersions"))

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure invalid-configuration-detail
                                    common-lisp:nil
                                    ((constraint :target-type string
                                      :member-name "Constraint")
                                     (location :target-type string :member-name
                                      "Location")
                                     (reason :target-type string :member-name
                                      "Reason")
                                     (type :target-type string :member-name
                                      "Type")
                                     (value :target-type string :member-name
                                      "Value"))
                                    (:shape-name "InvalidConfigurationDetail"))

(smithy/sdk/shapes:define-list invalid-configuration-detail-list :member
                               invalid-configuration-detail)

(smithy/sdk/shapes:define-type iso8601date-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type kms-key-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kms-key-identifier-or-empty
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-applications-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max_results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next_token"))
                                (:shape-name "ListApplicationsRequest"))

(smithy/sdk/shapes:define-input list-configuration-profiles-request
                                common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max_results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next_token")
                                 (type :target-type configuration-profile-type
                                  :member-name "Type" :http-query "type"))
                                (:shape-name
                                 "ListConfigurationProfilesRequest"))

(smithy/sdk/shapes:define-input list-deployment-strategies-request
                                common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max_results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next_token"))
                                (:shape-name "ListDeploymentStrategiesRequest"))

(smithy/sdk/shapes:define-input list-deployments-request common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (environment-id :target-type id :required
                                  common-lisp:t :member-name "EnvironmentId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max_results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next_token"))
                                (:shape-name "ListDeploymentsRequest"))

(smithy/sdk/shapes:define-input list-environments-request common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max_results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next_token"))
                                (:shape-name "ListEnvironmentsRequest"))

(smithy/sdk/shapes:define-input list-extension-associations-request
                                common-lisp:nil
                                ((resource-identifier :target-type arn
                                  :member-name "ResourceIdentifier" :http-query
                                  "resource_identifier")
                                 (extension-identifier :target-type identifier
                                  :member-name "ExtensionIdentifier"
                                  :http-query "extension_identifier")
                                 (extension-version-number :target-type integer
                                  :member-name "ExtensionVersionNumber"
                                  :http-query "extension_version_number")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max_results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next_token"))
                                (:shape-name
                                 "ListExtensionAssociationsRequest"))

(smithy/sdk/shapes:define-input list-extensions-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max_results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next_token")
                                 (name :target-type query-name :member-name
                                  "Name" :http-query "name"))
                                (:shape-name "ListExtensionsRequest"))

(smithy/sdk/shapes:define-input list-hosted-configuration-versions-request
                                common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (configuration-profile-id :target-type id
                                  :required common-lisp:t :member-name
                                  "ConfigurationProfileId" :http-label
                                  common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "max_results")
                                 (next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "next_token")
                                 (version-label :target-type query-name
                                  :member-name "VersionLabel" :http-query
                                  "version_label"))
                                (:shape-name
                                 "ListHostedConfigurationVersionsRequest"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-type long-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type minutes-between0and24hours
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure monitor common-lisp:nil
                                    ((alarm-arn :target-type
                                      string-with-length-between1and2048
                                      :required common-lisp:t :member-name
                                      "AlarmArn")
                                     (alarm-role-arn :target-type role-arn
                                      :member-name "AlarmRoleArn"))
                                    (:shape-name "Monitor"))

(smithy/sdk/shapes:define-list monitor-list :member monitor)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure parameter common-lisp:nil
                                    ((description :target-type description
                                      :member-name "Description")
                                     (required :target-type boolean
                                      :member-name "Required")
                                     (dynamic :target-type boolean :member-name
                                      "Dynamic"))
                                    (:shape-name "Parameter"))

(smithy/sdk/shapes:define-map parameter-map :key extension-or-parameter-name
                              :value parameter)

(smithy/sdk/shapes:define-map parameter-value-map :key
                              extension-or-parameter-name :value
                              string-with-length-between1and2048)

(smithy/sdk/shapes:define-error payload-too-large-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (measure :target-type bytes-measure
                                  :member-name "Measure")
                                 (limit :target-type float :member-name
                                  "Limit")
                                 (size :target-type float :member-name "Size"))
                                (:shape-name "PayloadTooLargeException")
                                (:error-code 413))

(smithy/sdk/shapes:define-type percentage smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type query-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum replicate-to
    common-lisp:nil
  (:none "NONE")
  (:ssm-document "SSM_DOCUMENT"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message")
                                 (resource-name :target-type string
                                  :member-name "ResourceName"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-tags common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "ResourceTags"))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-input start-deployment-request common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (environment-id :target-type id :required
                                  common-lisp:t :member-name "EnvironmentId"
                                  :http-label common-lisp:t)
                                 (deployment-strategy-id :target-type
                                  deployment-strategy-id :required
                                  common-lisp:t :member-name
                                  "DeploymentStrategyId")
                                 (configuration-profile-id :target-type id
                                  :required common-lisp:t :member-name
                                  "ConfigurationProfileId")
                                 (configuration-version :target-type version
                                  :required common-lisp:t :member-name
                                  "ConfigurationVersion")
                                 (description :target-type description
                                  :member-name "Description")
                                 (tags :target-type tag-map :member-name
                                  "Tags")
                                 (kms-key-identifier :target-type
                                  kms-key-identifier :member-name
                                  "KmsKeyIdentifier")
                                 (dynamic-extension-parameters :target-type
                                  dynamic-parameter-map :member-name
                                  "DynamicExtensionParameters"))
                                (:shape-name "StartDeploymentRequest"))

(smithy/sdk/shapes:define-input stop-deployment-request common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (environment-id :target-type id :required
                                  common-lisp:t :member-name "EnvironmentId"
                                  :http-label common-lisp:t)
                                 (deployment-number :target-type integer
                                  :required common-lisp:t :member-name
                                  "DeploymentNumber" :http-label common-lisp:t)
                                 (allow-revert :target-type boolean
                                  :member-name "AllowRevert" :http-header
                                  "Allow-Revert"))
                                (:shape-name "StopDeploymentRequest"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-with-length-between0and32768
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-with-length-between1and2048
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-with-length-between1and255
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-with-length-between1and64
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum triggered-by
    common-lisp:nil
  (:user "USER")
  (:appconfig "APPCONFIG")
  (:cloudwatch-alarm "CLOUDWATCH_ALARM")
  (:internal-error "INTERNAL_ERROR"))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-account-settings-request common-lisp:nil
                                ((deletion-protection :target-type
                                  deletion-protection-settings :member-name
                                  "DeletionProtection"))
                                (:shape-name "UpdateAccountSettingsRequest"))

(smithy/sdk/shapes:define-input update-application-request common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (name :target-type name :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description"))
                                (:shape-name "UpdateApplicationRequest"))

(smithy/sdk/shapes:define-input update-configuration-profile-request
                                common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (configuration-profile-id :target-type id
                                  :required common-lisp:t :member-name
                                  "ConfigurationProfileId" :http-label
                                  common-lisp:t)
                                 (name :target-type long-name :member-name
                                  "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (retrieval-role-arn :target-type role-arn
                                  :member-name "RetrievalRoleArn")
                                 (validators :target-type validator-list
                                  :member-name "Validators")
                                 (kms-key-identifier :target-type
                                  kms-key-identifier-or-empty :member-name
                                  "KmsKeyIdentifier"))
                                (:shape-name
                                 "UpdateConfigurationProfileRequest"))

(smithy/sdk/shapes:define-input update-deployment-strategy-request
                                common-lisp:nil
                                ((deployment-strategy-id :target-type
                                  deployment-strategy-id :required
                                  common-lisp:t :member-name
                                  "DeploymentStrategyId" :http-label
                                  common-lisp:t)
                                 (description :target-type description
                                  :member-name "Description")
                                 (deployment-duration-in-minutes :target-type
                                  minutes-between0and24hours :member-name
                                  "DeploymentDurationInMinutes")
                                 (final-bake-time-in-minutes :target-type
                                  minutes-between0and24hours :member-name
                                  "FinalBakeTimeInMinutes")
                                 (growth-factor :target-type growth-factor
                                  :member-name "GrowthFactor")
                                 (growth-type :target-type growth-type
                                  :member-name "GrowthType"))
                                (:shape-name "UpdateDeploymentStrategyRequest"))

(smithy/sdk/shapes:define-input update-environment-request common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (environment-id :target-type id :required
                                  common-lisp:t :member-name "EnvironmentId"
                                  :http-label common-lisp:t)
                                 (name :target-type name :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (monitors :target-type monitor-list
                                  :member-name "Monitors"))
                                (:shape-name "UpdateEnvironmentRequest"))

(smithy/sdk/shapes:define-input update-extension-association-request
                                common-lisp:nil
                                ((extension-association-id :target-type id
                                  :required common-lisp:t :member-name
                                  "ExtensionAssociationId" :http-label
                                  common-lisp:t)
                                 (parameters :target-type parameter-value-map
                                  :member-name "Parameters"))
                                (:shape-name
                                 "UpdateExtensionAssociationRequest"))

(smithy/sdk/shapes:define-input update-extension-request common-lisp:nil
                                ((extension-identifier :target-type identifier
                                  :required common-lisp:t :member-name
                                  "ExtensionIdentifier" :http-label
                                  common-lisp:t)
                                 (description :target-type description
                                  :member-name "Description")
                                 (actions :target-type actions-map :member-name
                                  "Actions")
                                 (parameters :target-type parameter-map
                                  :member-name "Parameters")
                                 (version-number :target-type integer
                                  :member-name "VersionNumber"))
                                (:shape-name "UpdateExtensionRequest"))

(smithy/sdk/shapes:define-type uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input validate-configuration-request common-lisp:nil
                                ((application-id :target-type id :required
                                  common-lisp:t :member-name "ApplicationId"
                                  :http-label common-lisp:t)
                                 (configuration-profile-id :target-type id
                                  :required common-lisp:t :member-name
                                  "ConfigurationProfileId" :http-label
                                  common-lisp:t)
                                 (configuration-version :target-type version
                                  :required common-lisp:t :member-name
                                  "ConfigurationVersion" :http-query
                                  "configuration_version"))
                                (:shape-name "ValidateConfigurationRequest"))

(smithy/sdk/shapes:define-structure validator common-lisp:nil
                                    ((type :target-type validator-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (content :target-type
                                      string-with-length-between0and32768
                                      :required common-lisp:t :member-name
                                      "Content"))
                                    (:shape-name "Validator"))

(smithy/sdk/shapes:define-list validator-list :member validator)

(smithy/sdk/shapes:define-enum validator-type
    common-lisp:nil
  (:json-schema "JSON_SCHEMA")
  (:lambda "LAMBDA"))

(smithy/sdk/shapes:define-list validator-type-list :member validator-type)

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version-label smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation create-application :shape-name
                                       "CreateApplication" :input
                                       create-application-request :output
                                       application :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception)
                                       :method "POST" :uri "/applications"
                                       :code 201)

(smithy/sdk/operation:define-operation create-configuration-profile :shape-name
                                       "CreateConfigurationProfile" :input
                                       create-configuration-profile-request
                                       :output configuration-profile :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception)
                                       :method "POST" :uri
                                       "/applications/{ApplicationId}/configurationprofiles"
                                       :code 201)

(smithy/sdk/operation:define-operation create-deployment-strategy :shape-name
                                       "CreateDeploymentStrategy" :input
                                       create-deployment-strategy-request
                                       :output deployment-strategy :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception)
                                       :method "POST" :uri
                                       "/deploymentstrategies" :code 201)

(smithy/sdk/operation:define-operation create-environment :shape-name
                                       "CreateEnvironment" :input
                                       create-environment-request :output
                                       environment :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception)
                                       :method "POST" :uri
                                       "/applications/{ApplicationId}/environments"
                                       :code 201)

(smithy/sdk/operation:define-operation create-extension :shape-name
                                       "CreateExtension" :input
                                       create-extension-request :output
                                       extension :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception)
                                       :method "POST" :uri "/extensions" :code
                                       201)

(smithy/sdk/operation:define-operation create-extension-association :shape-name
                                       "CreateExtensionAssociation" :input
                                       create-extension-association-request
                                       :output extension-association :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception)
                                       :method "POST" :uri
                                       "/extensionassociations" :code 201)

(smithy/sdk/operation:define-operation create-hosted-configuration-version
                                       :shape-name
                                       "CreateHostedConfigurationVersion"
                                       :input
                                       create-hosted-configuration-version-request
                                       :output hosted-configuration-version
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        payload-too-large-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception)
                                       :method "POST" :uri
                                       "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-application :shape-name
                                       "DeleteApplication" :input
                                       delete-application-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/applications/{ApplicationId}" :code
                                       204)

(smithy/sdk/operation:define-operation delete-configuration-profile :shape-name
                                       "DeleteConfigurationProfile" :input
                                       delete-configuration-profile-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-deployment-strategy :shape-name
                                       "DeleteDeploymentStrategy" :input
                                       delete-deployment-strategy-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/deployementstrategies/{DeploymentStrategyId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-environment :shape-name
                                       "DeleteEnvironment" :input
                                       delete-environment-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/applications/{ApplicationId}/environments/{EnvironmentId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-extension :shape-name
                                       "DeleteExtension" :input
                                       delete-extension-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/extensions/{ExtensionIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-extension-association :shape-name
                                       "DeleteExtensionAssociation" :input
                                       delete-extension-association-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/extensionassociations/{ExtensionAssociationId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-hosted-configuration-version
                                       :shape-name
                                       "DeleteHostedConfigurationVersion"
                                       :input
                                       delete-hosted-configuration-version-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions/{VersionNumber}"
                                       :code 204)

(smithy/sdk/operation:define-operation get-account-settings :shape-name
                                       "GetAccountSettings" :input
                                       common-lisp:null :output
                                       account-settings :errors
                                       (bad-request-exception
                                        internal-server-exception)
                                       :method "GET" :uri "/settings" :code 200)

(smithy/sdk/operation:define-operation get-application :shape-name
                                       "GetApplication" :input
                                       get-application-request :output
                                       application :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/applications/{ApplicationId}" :code
                                       200)

(smithy/sdk/operation:define-operation get-configuration :shape-name
                                       "GetConfiguration" :input
                                       get-configuration-request :output
                                       configuration :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/applications/{Application}/environments/{Environment}/configurations/{Configuration}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-configuration-profile :shape-name
                                       "GetConfigurationProfile" :input
                                       get-configuration-profile-request
                                       :output configuration-profile :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-deployment :shape-name
                                       "GetDeployment" :input
                                       get-deployment-request :output
                                       deployment :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-deployment-strategy :shape-name
                                       "GetDeploymentStrategy" :input
                                       get-deployment-strategy-request :output
                                       deployment-strategy :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/deploymentstrategies/{DeploymentStrategyId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-environment :shape-name
                                       "GetEnvironment" :input
                                       get-environment-request :output
                                       environment :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/applications/{ApplicationId}/environments/{EnvironmentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-extension :shape-name "GetExtension"
                                       :input get-extension-request :output
                                       extension :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/extensions/{ExtensionIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-extension-association :shape-name
                                       "GetExtensionAssociation" :input
                                       get-extension-association-request
                                       :output extension-association :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/extensionassociations/{ExtensionAssociationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-hosted-configuration-version
                                       :shape-name
                                       "GetHostedConfigurationVersion" :input
                                       get-hosted-configuration-version-request
                                       :output hosted-configuration-version
                                       :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions/{VersionNumber}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-applications :shape-name
                                       "ListApplications" :input
                                       list-applications-request :output
                                       applications :errors
                                       (bad-request-exception
                                        internal-server-exception)
                                       :method "GET" :uri "/applications" :code
                                       200)

(smithy/sdk/operation:define-operation list-configuration-profiles :shape-name
                                       "ListConfigurationProfiles" :input
                                       list-configuration-profiles-request
                                       :output configuration-profiles :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/applications/{ApplicationId}/configurationprofiles"
                                       :code 200)

(smithy/sdk/operation:define-operation list-deployment-strategies :shape-name
                                       "ListDeploymentStrategies" :input
                                       list-deployment-strategies-request
                                       :output deployment-strategies :errors
                                       (bad-request-exception
                                        internal-server-exception)
                                       :method "GET" :uri
                                       "/deploymentstrategies" :code 200)

(smithy/sdk/operation:define-operation list-deployments :shape-name
                                       "ListDeployments" :input
                                       list-deployments-request :output
                                       deployments :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments"
                                       :code 200)

(smithy/sdk/operation:define-operation list-environments :shape-name
                                       "ListEnvironments" :input
                                       list-environments-request :output
                                       environments :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/applications/{ApplicationId}/environments"
                                       :code 200)

(smithy/sdk/operation:define-operation list-extension-associations :shape-name
                                       "ListExtensionAssociations" :input
                                       list-extension-associations-request
                                       :output extension-associations :errors
                                       (bad-request-exception
                                        internal-server-exception)
                                       :method "GET" :uri
                                       "/extensionassociations" :code 200)

(smithy/sdk/operation:define-operation list-extensions :shape-name
                                       "ListExtensions" :input
                                       list-extensions-request :output
                                       extensions :errors
                                       (bad-request-exception
                                        internal-server-exception)
                                       :method "GET" :uri "/extensions" :code
                                       200)

(smithy/sdk/operation:define-operation list-hosted-configuration-versions
                                       :shape-name
                                       "ListHostedConfigurationVersions" :input
                                       list-hosted-configuration-versions-request
                                       :output hosted-configuration-versions
                                       :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri
                                       "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/hostedconfigurationversions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       resource-tags :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation start-deployment :shape-name
                                       "StartDeployment" :input
                                       start-deployment-request :output
                                       deployment :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments"
                                       :code 201)

(smithy/sdk/operation:define-operation stop-deployment :shape-name
                                       "StopDeployment" :input
                                       stop-deployment-request :output
                                       deployment :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/applications/{ApplicationId}/environments/{EnvironmentId}/deployments/{DeploymentNumber}"
                                       :code 202)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-account-settings :shape-name
                                       "UpdateAccountSettings" :input
                                       update-account-settings-request :output
                                       account-settings :errors
                                       (bad-request-exception
                                        internal-server-exception)
                                       :method "PATCH" :uri "/settings" :code
                                       200)

(smithy/sdk/operation:define-operation update-application :shape-name
                                       "UpdateApplication" :input
                                       update-application-request :output
                                       application :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "PATCH" :uri
                                       "/applications/{ApplicationId}" :code
                                       200)

(smithy/sdk/operation:define-operation update-configuration-profile :shape-name
                                       "UpdateConfigurationProfile" :input
                                       update-configuration-profile-request
                                       :output configuration-profile :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "PATCH" :uri
                                       "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-deployment-strategy :shape-name
                                       "UpdateDeploymentStrategy" :input
                                       update-deployment-strategy-request
                                       :output deployment-strategy :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "PATCH" :uri
                                       "/deploymentstrategies/{DeploymentStrategyId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-environment :shape-name
                                       "UpdateEnvironment" :input
                                       update-environment-request :output
                                       environment :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "PATCH" :uri
                                       "/applications/{ApplicationId}/environments/{EnvironmentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-extension :shape-name
                                       "UpdateExtension" :input
                                       update-extension-request :output
                                       extension :errors
                                       (bad-request-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "PATCH" :uri
                                       "/extensions/{ExtensionIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-extension-association :shape-name
                                       "UpdateExtensionAssociation" :input
                                       update-extension-association-request
                                       :output extension-association :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "PATCH" :uri
                                       "/extensionassociations/{ExtensionAssociationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation validate-configuration :shape-name
                                       "ValidateConfiguration" :input
                                       validate-configuration-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/applications/{ApplicationId}/configurationprofiles/{ConfigurationProfileId}/validators"
                                       :code 204)
