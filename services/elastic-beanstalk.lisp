(uiop/package:define-package #:pira/elastic-beanstalk (:use)
                             (:export #:arn #:awselastic-beanstalk-service
                              #:abort-environment-update
                              #:abortable-operation-in-progress
                              #:action-history-status #:action-status
                              #:action-type #:application-arn
                              #:application-description
                              #:application-description-list
                              #:application-description-message
                              #:application-metrics #:application-name
                              #:application-names-list
                              #:application-resource-lifecycle-config
                              #:application-version-arn
                              #:application-version-description
                              #:application-version-description-list
                              #:application-version-description-message
                              #:application-version-lifecycle-config
                              #:application-version-proccess
                              #:application-version-status
                              #:apply-environment-managed-action
                              #:associate-environment-operations-role
                              #:auto-create-application #:auto-scaling-group
                              #:auto-scaling-group-list
                              #:available-solution-stack-details-list
                              #:available-solution-stack-names-list
                              #:boxed-boolean #:boxed-int #:branch-name
                              #:branch-order #:build-configuration #:builder
                              #:cpuutilization #:cause #:causes
                              #:check-dnsavailability #:cname-availability
                              #:code-build-not-in-service-region-exception
                              #:compose-environments #:compute-type
                              #:configuration-deployment-status
                              #:configuration-option-default-value
                              #:configuration-option-description
                              #:configuration-option-descriptions-list
                              #:configuration-option-name
                              #:configuration-option-possible-value
                              #:configuration-option-possible-values
                              #:configuration-option-setting
                              #:configuration-option-settings-list
                              #:configuration-option-severity
                              #:configuration-option-value
                              #:configuration-option-value-type
                              #:configuration-options-description
                              #:configuration-settings-description
                              #:configuration-settings-description-list
                              #:configuration-settings-descriptions
                              #:configuration-settings-validation-messages
                              #:configuration-template-name
                              #:configuration-template-names-list
                              #:create-application #:create-application-version
                              #:create-configuration-template
                              #:create-environment #:create-platform-version
                              #:create-storage-location #:creation-date
                              #:custom-ami #:custom-ami-list #:dnscname
                              #:dnscname-prefix #:delete-application
                              #:delete-application-version
                              #:delete-configuration-template
                              #:delete-environment-configuration
                              #:delete-platform-version #:delete-source-bundle
                              #:deployment #:deployment-timestamp
                              #:describe-account-attributes
                              #:describe-application-versions
                              #:describe-applications
                              #:describe-configuration-options
                              #:describe-configuration-settings
                              #:describe-environment-health
                              #:describe-environment-managed-action-history
                              #:describe-environment-managed-actions
                              #:describe-environment-resources
                              #:describe-environments #:describe-events
                              #:describe-instances-health
                              #:describe-platform-version #:description
                              #:disassociate-environment-operations-role
                              #:ec2instance-id
                              #:elastic-beanstalk-service-exception
                              #:endpoint-url #:environment-arn
                              #:environment-description
                              #:environment-descriptions-list
                              #:environment-descriptions-message
                              #:environment-health
                              #:environment-health-attribute
                              #:environment-health-attributes
                              #:environment-health-status #:environment-id
                              #:environment-id-list
                              #:environment-info-description
                              #:environment-info-description-list
                              #:environment-info-type #:environment-link
                              #:environment-links #:environment-name
                              #:environment-names-list
                              #:environment-resource-description
                              #:environment-resources-description
                              #:environment-status #:environment-tier
                              #:event-date #:event-description
                              #:event-description-list #:event-message
                              #:event-severity #:exception-message
                              #:failure-type #:file-type-extension
                              #:force-terminate #:group-name #:image-id
                              #:include-deleted #:include-deleted-back-to
                              #:instance #:instance-health-list
                              #:instance-health-summary #:instance-id
                              #:instance-list #:instances-health-attribute
                              #:instances-health-attributes
                              #:insufficient-privileges-exception #:integer
                              #:invalid-request-exception #:latency
                              #:launch-configuration
                              #:launch-configuration-list #:launch-template
                              #:launch-template-list #:launched-at
                              #:list-available-solution-stacks
                              #:list-platform-branches #:list-platform-versions
                              #:list-tags-for-resource #:listener
                              #:load-average #:load-average-value
                              #:load-balancer #:load-balancer-description
                              #:load-balancer-list
                              #:load-balancer-listeners-description
                              #:maintainer #:managed-action
                              #:managed-action-history-item
                              #:managed-action-history-items
                              #:managed-action-history-max-items
                              #:managed-action-invalid-state-exception
                              #:managed-actions #:max-age-rule #:max-count-rule
                              #:max-records #:message #:next-token
                              #:non-empty-string #:nullable-double
                              #:nullable-integer #:nullable-long
                              #:operating-system-name
                              #:operating-system-version
                              #:operation-in-progress-exception
                              #:operations-role #:option-namespace
                              #:option-restriction-max-length
                              #:option-restriction-max-value
                              #:option-restriction-min-value
                              #:option-restriction-regex #:option-specification
                              #:options-specifier-list #:platform-arn
                              #:platform-branch-lifecycle-state
                              #:platform-branch-max-records
                              #:platform-branch-summary
                              #:platform-branch-summary-list
                              #:platform-category #:platform-description
                              #:platform-filter #:platform-filter-operator
                              #:platform-filter-type #:platform-filter-value
                              #:platform-filter-value-list #:platform-filters
                              #:platform-framework #:platform-frameworks
                              #:platform-lifecycle-state #:platform-max-records
                              #:platform-name #:platform-owner
                              #:platform-programming-language
                              #:platform-programming-languages
                              #:platform-status #:platform-summary
                              #:platform-summary-list #:platform-version
                              #:platform-version-still-referenced-exception
                              #:queue #:queue-list #:rebuild-environment
                              #:refreshed-at #:regex-label #:regex-pattern
                              #:request-count #:request-environment-info
                              #:request-id #:resource-arn #:resource-id
                              #:resource-name #:resource-not-found-exception
                              #:resource-quota #:resource-quotas
                              #:resource-type-not-supported-exception
                              #:restart-app-server #:retrieve-environment-info
                              #:s3bucket #:s3key #:s3location
                              #:s3location-not-in-service-region-exception
                              #:s3subscription-required-exception
                              #:sample-timestamp #:search-filter
                              #:search-filter-attribute
                              #:search-filter-operator #:search-filter-value
                              #:search-filter-values #:search-filters
                              #:single-instance-health
                              #:solution-stack-description
                              #:solution-stack-file-type-list
                              #:solution-stack-name #:source-build-information
                              #:source-bundle-deletion-exception
                              #:source-configuration #:source-location
                              #:source-repository #:source-type #:status-codes
                              #:string #:supported-addon #:supported-addon-list
                              #:supported-tier #:supported-tier-list
                              #:swap-environment-cnames #:system-status #:tag
                              #:tag-key #:tag-key-list #:tag-list #:tag-value
                              #:tags #:terminate-env-force
                              #:terminate-environment
                              #:terminate-environment-resources
                              #:time-filter-end #:time-filter-start #:timestamp
                              #:token #:too-many-application-versions-exception
                              #:too-many-applications-exception
                              #:too-many-buckets-exception
                              #:too-many-configuration-templates-exception
                              #:too-many-environments-exception
                              #:too-many-platforms-exception
                              #:too-many-tags-exception #:trigger
                              #:trigger-list #:update-application
                              #:update-application-resource-lifecycle
                              #:update-application-version
                              #:update-configuration-template #:update-date
                              #:update-environment #:update-tags-for-resource
                              #:user-defined-option
                              #:validate-configuration-settings
                              #:validation-message #:validation-message-string
                              #:validation-messages-list #:validation-severity
                              #:version-label #:version-labels
                              #:version-labels-list #:virtualization-type
                              #:elastic-beanstalk-error))
(common-lisp:in-package #:pira/elastic-beanstalk)

(common-lisp:define-condition elastic-beanstalk-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service awselastic-beanstalk-service :shape-name
                                   "AWSElasticBeanstalkService" :version
                                   "2010-12-01" :title "AWS Elastic Beanstalk"
                                   :operations
                                   '(abort-environment-update
                                     apply-environment-managed-action
                                     associate-environment-operations-role
                                     check-dnsavailability compose-environments
                                     create-application
                                     create-application-version
                                     create-configuration-template
                                     create-environment create-platform-version
                                     create-storage-location delete-application
                                     delete-application-version
                                     delete-configuration-template
                                     delete-environment-configuration
                                     delete-platform-version
                                     describe-account-attributes
                                     describe-applications
                                     describe-application-versions
                                     describe-configuration-options
                                     describe-configuration-settings
                                     describe-environment-health
                                     describe-environment-managed-action-history
                                     describe-environment-managed-actions
                                     describe-environment-resources
                                     describe-environments describe-events
                                     describe-instances-health
                                     describe-platform-version
                                     disassociate-environment-operations-role
                                     list-available-solution-stacks
                                     list-platform-branches
                                     list-platform-versions
                                     list-tags-for-resource rebuild-environment
                                     request-environment-info
                                     restart-app-server
                                     retrieve-environment-info
                                     swap-environment-cnames
                                     terminate-environment update-application
                                     update-application-resource-lifecycle
                                     update-application-version
                                     update-configuration-template
                                     update-environment
                                     update-tags-for-resource
                                     validate-configuration-settings)
                                   :xml-namespace
                                   '(:uri
                                     "http://elasticbeanstalk.amazonaws.com/docs/2010-12-01/"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Elastic Beanstalk")
                                      ("arnNamespace" . "elasticbeanstalk")
                                      ("cloudFormationName"
                                       . "ElasticBeanstalk")
                                      ("cloudTrailEventSource"
                                       . "elasticbeanstalk.amazonaws.com")
                                      ("docId" . "elasticbeanstalk-2010-12-01")
                                      ("endpointPrefix" . "elasticbeanstalk"))
                                     ("aws.auth#sigv4"
                                      ("name" . "elasticbeanstalk"))
                                     ("aws.protocols#awsQuery")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input abort-environment-update-message
                                common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :member-name "EnvironmentId")
                                 (environment-name :target-type
                                  environment-name :member-name
                                  "EnvironmentName"))
                                (:shape-name "AbortEnvironmentUpdateMessage"))

(smithy/sdk/shapes:define-type abortable-operation-in-progress
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum action-history-status
    common-lisp:nil
  (:completed "Completed")
  (:failed "Failed")
  (:unknown "Unknown"))

(smithy/sdk/shapes:define-enum action-status
    common-lisp:nil
  (:scheduled "Scheduled")
  (:pending "Pending")
  (:running "Running")
  (:unknown "Unknown"))

(smithy/sdk/shapes:define-enum action-type
    common-lisp:nil
  (:instance-refresh "InstanceRefresh")
  (:platform-update "PlatformUpdate")
  (:unknown "Unknown"))

(smithy/sdk/shapes:define-type application-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure application-description common-lisp:nil
                                    ((application-arn :target-type
                                      application-arn :member-name
                                      "ApplicationArn")
                                     (application-name :target-type
                                      application-name :member-name
                                      "ApplicationName")
                                     (description :target-type description
                                      :member-name "Description")
                                     (date-created :target-type creation-date
                                      :member-name "DateCreated")
                                     (date-updated :target-type update-date
                                      :member-name "DateUpdated")
                                     (versions :target-type version-labels-list
                                      :member-name "Versions")
                                     (configuration-templates :target-type
                                      configuration-template-names-list
                                      :member-name "ConfigurationTemplates")
                                     (resource-lifecycle-config :target-type
                                      application-resource-lifecycle-config
                                      :member-name "ResourceLifecycleConfig"))
                                    (:shape-name "ApplicationDescription"))

(smithy/sdk/shapes:define-list application-description-list :member
                               application-description)

(smithy/sdk/shapes:define-structure application-description-message
                                    common-lisp:nil
                                    ((application :target-type
                                      application-description :member-name
                                      "Application"))
                                    (:shape-name
                                     "ApplicationDescriptionMessage"))

(smithy/sdk/shapes:define-output application-descriptions-message
                                 common-lisp:nil
                                 ((applications :target-type
                                   application-description-list :member-name
                                   "Applications"))
                                 (:shape-name "ApplicationDescriptionsMessage"))

(smithy/sdk/shapes:define-structure application-metrics common-lisp:nil
                                    ((duration :target-type nullable-integer
                                      :member-name "Duration")
                                     (request-count :target-type request-count
                                      :member-name "RequestCount")
                                     (status-codes :target-type status-codes
                                      :member-name "StatusCodes")
                                     (latency :target-type latency :member-name
                                      "Latency"))
                                    (:shape-name "ApplicationMetrics"))

(smithy/sdk/shapes:define-type application-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list application-names-list :member application-name)

(smithy/sdk/shapes:define-structure application-resource-lifecycle-config
                                    common-lisp:nil
                                    ((service-role :target-type string
                                      :member-name "ServiceRole")
                                     (version-lifecycle-config :target-type
                                      application-version-lifecycle-config
                                      :member-name "VersionLifecycleConfig"))
                                    (:shape-name
                                     "ApplicationResourceLifecycleConfig"))

(smithy/sdk/shapes:define-output
 application-resource-lifecycle-description-message common-lisp:nil
 ((application-name :target-type application-name :member-name
   "ApplicationName")
  (resource-lifecycle-config :target-type application-resource-lifecycle-config
   :member-name "ResourceLifecycleConfig"))
 (:shape-name "ApplicationResourceLifecycleDescriptionMessage"))

(smithy/sdk/shapes:define-type application-version-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure application-version-description
                                    common-lisp:nil
                                    ((application-version-arn :target-type
                                      application-version-arn :member-name
                                      "ApplicationVersionArn")
                                     (application-name :target-type
                                      application-name :member-name
                                      "ApplicationName")
                                     (description :target-type description
                                      :member-name "Description")
                                     (version-label :target-type version-label
                                      :member-name "VersionLabel")
                                     (source-build-information :target-type
                                      source-build-information :member-name
                                      "SourceBuildInformation")
                                     (build-arn :target-type string
                                      :member-name "BuildArn")
                                     (source-bundle :target-type s3location
                                      :member-name "SourceBundle")
                                     (date-created :target-type creation-date
                                      :member-name "DateCreated")
                                     (date-updated :target-type update-date
                                      :member-name "DateUpdated")
                                     (status :target-type
                                      application-version-status :member-name
                                      "Status"))
                                    (:shape-name
                                     "ApplicationVersionDescription"))

(smithy/sdk/shapes:define-list application-version-description-list :member
                               application-version-description)

(smithy/sdk/shapes:define-structure application-version-description-message
                                    common-lisp:nil
                                    ((application-version :target-type
                                      application-version-description
                                      :member-name "ApplicationVersion"))
                                    (:shape-name
                                     "ApplicationVersionDescriptionMessage"))

(smithy/sdk/shapes:define-output application-version-descriptions-message
                                 common-lisp:nil
                                 ((application-versions :target-type
                                   application-version-description-list
                                   :member-name "ApplicationVersions")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ApplicationVersionDescriptionsMessage"))

(smithy/sdk/shapes:define-structure application-version-lifecycle-config
                                    common-lisp:nil
                                    ((max-count-rule :target-type
                                      max-count-rule :member-name
                                      "MaxCountRule")
                                     (max-age-rule :target-type max-age-rule
                                      :member-name "MaxAgeRule"))
                                    (:shape-name
                                     "ApplicationVersionLifecycleConfig"))

(smithy/sdk/shapes:define-type application-version-proccess
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum application-version-status
    common-lisp:nil
  (:processed "Processed")
  (:unprocessed "Unprocessed")
  (:failed "Failed")
  (:processing "Processing")
  (:building "Building"))

(smithy/sdk/shapes:define-input apply-environment-managed-action-request
                                common-lisp:nil
                                ((environment-name :target-type string
                                  :member-name "EnvironmentName")
                                 (environment-id :target-type string
                                  :member-name "EnvironmentId")
                                 (action-id :target-type string :required
                                  common-lisp:t :member-name "ActionId"))
                                (:shape-name
                                 "ApplyEnvironmentManagedActionRequest"))

(smithy/sdk/shapes:define-output apply-environment-managed-action-result
                                 common-lisp:nil
                                 ((action-id :target-type string :member-name
                                   "ActionId")
                                  (action-description :target-type string
                                   :member-name "ActionDescription")
                                  (action-type :target-type action-type
                                   :member-name "ActionType")
                                  (status :target-type string :member-name
                                   "Status"))
                                 (:shape-name
                                  "ApplyEnvironmentManagedActionResult"))

(smithy/sdk/shapes:define-input associate-environment-operations-role-message
                                common-lisp:nil
                                ((environment-name :target-type
                                  environment-name :required common-lisp:t
                                  :member-name "EnvironmentName")
                                 (operations-role :target-type operations-role
                                  :required common-lisp:t :member-name
                                  "OperationsRole"))
                                (:shape-name
                                 "AssociateEnvironmentOperationsRoleMessage"))

(smithy/sdk/shapes:define-type auto-create-application
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure auto-scaling-group common-lisp:nil
                                    ((name :target-type resource-id
                                      :member-name "Name"))
                                    (:shape-name "AutoScalingGroup"))

(smithy/sdk/shapes:define-list auto-scaling-group-list :member
                               auto-scaling-group)

(smithy/sdk/shapes:define-list available-solution-stack-details-list :member
                               solution-stack-description)

(smithy/sdk/shapes:define-list available-solution-stack-names-list :member
                               solution-stack-name)

(smithy/sdk/shapes:define-type boxed-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boxed-int smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type branch-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type branch-order smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure build-configuration common-lisp:nil
                                    ((artifact-name :target-type string
                                      :member-name "ArtifactName")
                                     (code-build-service-role :target-type
                                      non-empty-string :required common-lisp:t
                                      :member-name "CodeBuildServiceRole")
                                     (compute-type :target-type compute-type
                                      :member-name "ComputeType")
                                     (image :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "Image")
                                     (timeout-in-minutes :target-type boxed-int
                                      :member-name "TimeoutInMinutes"))
                                    (:shape-name "BuildConfiguration"))

(smithy/sdk/shapes:define-structure builder common-lisp:nil
                                    ((arn :target-type arn :member-name "ARN"))
                                    (:shape-name "Builder"))

(smithy/sdk/shapes:define-structure cpuutilization common-lisp:nil
                                    ((user :target-type nullable-double
                                      :member-name "User")
                                     (nice :target-type nullable-double
                                      :member-name "Nice")
                                     (system :target-type nullable-double
                                      :member-name "System")
                                     (idle :target-type nullable-double
                                      :member-name "Idle")
                                     (iowait :target-type nullable-double
                                      :member-name "IOWait")
                                     (irq :target-type nullable-double
                                      :member-name "IRQ")
                                     (soft-irq :target-type nullable-double
                                      :member-name "SoftIRQ")
                                     (privileged :target-type nullable-double
                                      :member-name "Privileged"))
                                    (:shape-name "CPUUtilization"))

(smithy/sdk/shapes:define-type cause smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list causes :member cause)

(smithy/sdk/shapes:define-input check-dnsavailability-message common-lisp:nil
                                ((cnameprefix :target-type dnscname-prefix
                                  :required common-lisp:t :member-name
                                  "CNAMEPrefix"))
                                (:shape-name "CheckDNSAvailabilityMessage"))

(smithy/sdk/shapes:define-output check-dnsavailability-result-message
                                 common-lisp:nil
                                 ((available :target-type cname-availability
                                   :member-name "Available")
                                  (fully-qualified-cname :target-type dnscname
                                   :member-name "FullyQualifiedCNAME"))
                                 (:shape-name
                                  "CheckDNSAvailabilityResultMessage"))

(smithy/sdk/shapes:define-type cname-availability
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error code-build-not-in-service-region-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "CodeBuildNotInServiceRegionException")
                                (:error-name
                                 "CodeBuildNotInServiceRegionException")
                                (:error-code 400)
                                (:base-class elastic-beanstalk-error))

(smithy/sdk/shapes:define-input compose-environments-message common-lisp:nil
                                ((application-name :target-type
                                  application-name :member-name
                                  "ApplicationName")
                                 (group-name :target-type group-name
                                  :member-name "GroupName")
                                 (version-labels :target-type version-labels
                                  :member-name "VersionLabels"))
                                (:shape-name "ComposeEnvironmentsMessage"))

(smithy/sdk/shapes:define-enum compute-type
    common-lisp:nil
  (:build-general1-small "BUILD_GENERAL1_SMALL")
  (:build-general1-medium "BUILD_GENERAL1_MEDIUM")
  (:build-general1-large "BUILD_GENERAL1_LARGE"))

(smithy/sdk/shapes:define-enum configuration-deployment-status
    common-lisp:nil
  (:deployed "deployed")
  (:pending "pending")
  (:failed "failed"))

(smithy/sdk/shapes:define-type configuration-option-default-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure configuration-option-description
                                    common-lisp:nil
                                    ((namespace :target-type option-namespace
                                      :member-name "Namespace")
                                     (name :target-type
                                      configuration-option-name :member-name
                                      "Name")
                                     (default-value :target-type
                                      configuration-option-default-value
                                      :member-name "DefaultValue")
                                     (change-severity :target-type
                                      configuration-option-severity
                                      :member-name "ChangeSeverity")
                                     (user-defined :target-type
                                      user-defined-option :member-name
                                      "UserDefined")
                                     (value-type :target-type
                                      configuration-option-value-type
                                      :member-name "ValueType")
                                     (value-options :target-type
                                      configuration-option-possible-values
                                      :member-name "ValueOptions")
                                     (min-value :target-type
                                      option-restriction-min-value :member-name
                                      "MinValue")
                                     (max-value :target-type
                                      option-restriction-max-value :member-name
                                      "MaxValue")
                                     (max-length :target-type
                                      option-restriction-max-length
                                      :member-name "MaxLength")
                                     (regex :target-type
                                      option-restriction-regex :member-name
                                      "Regex"))
                                    (:shape-name
                                     "ConfigurationOptionDescription"))

(smithy/sdk/shapes:define-list configuration-option-descriptions-list :member
                               configuration-option-description)

(smithy/sdk/shapes:define-type configuration-option-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type configuration-option-possible-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list configuration-option-possible-values :member
                               configuration-option-possible-value)

(smithy/sdk/shapes:define-structure configuration-option-setting
                                    common-lisp:nil
                                    ((resource-name :target-type resource-name
                                      :member-name "ResourceName")
                                     (namespace :target-type option-namespace
                                      :member-name "Namespace")
                                     (option-name :target-type
                                      configuration-option-name :member-name
                                      "OptionName")
                                     (value :target-type
                                      configuration-option-value :member-name
                                      "Value"))
                                    (:shape-name "ConfigurationOptionSetting"))

(smithy/sdk/shapes:define-list configuration-option-settings-list :member
                               configuration-option-setting)

(smithy/sdk/shapes:define-type configuration-option-severity
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type configuration-option-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum configuration-option-value-type
    common-lisp:nil
  (:scalar "Scalar")
  (:list "List"))

(smithy/sdk/shapes:define-structure configuration-options-description
                                    common-lisp:nil
                                    ((solution-stack-name :target-type
                                      solution-stack-name :member-name
                                      "SolutionStackName")
                                     (platform-arn :target-type platform-arn
                                      :member-name "PlatformArn")
                                     (options :target-type
                                      configuration-option-descriptions-list
                                      :member-name "Options"))
                                    (:shape-name
                                     "ConfigurationOptionsDescription"))

(smithy/sdk/shapes:define-structure configuration-settings-description
                                    common-lisp:nil
                                    ((solution-stack-name :target-type
                                      solution-stack-name :member-name
                                      "SolutionStackName")
                                     (platform-arn :target-type platform-arn
                                      :member-name "PlatformArn")
                                     (application-name :target-type
                                      application-name :member-name
                                      "ApplicationName")
                                     (template-name :target-type
                                      configuration-template-name :member-name
                                      "TemplateName")
                                     (description :target-type description
                                      :member-name "Description")
                                     (environment-name :target-type
                                      environment-name :member-name
                                      "EnvironmentName")
                                     (deployment-status :target-type
                                      configuration-deployment-status
                                      :member-name "DeploymentStatus")
                                     (date-created :target-type creation-date
                                      :member-name "DateCreated")
                                     (date-updated :target-type update-date
                                      :member-name "DateUpdated")
                                     (option-settings :target-type
                                      configuration-option-settings-list
                                      :member-name "OptionSettings"))
                                    (:shape-name
                                     "ConfigurationSettingsDescription"))

(smithy/sdk/shapes:define-list configuration-settings-description-list :member
                               configuration-settings-description)

(smithy/sdk/shapes:define-structure configuration-settings-descriptions
                                    common-lisp:nil
                                    ((configuration-settings :target-type
                                      configuration-settings-description-list
                                      :member-name "ConfigurationSettings"))
                                    (:shape-name
                                     "ConfigurationSettingsDescriptions"))

(smithy/sdk/shapes:define-structure configuration-settings-validation-messages
                                    common-lisp:nil
                                    ((messages :target-type
                                      validation-messages-list :member-name
                                      "Messages"))
                                    (:shape-name
                                     "ConfigurationSettingsValidationMessages"))

(smithy/sdk/shapes:define-type configuration-template-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list configuration-template-names-list :member
                               configuration-template-name)

(smithy/sdk/shapes:define-input create-application-message common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (description :target-type description
                                  :member-name "Description")
                                 (resource-lifecycle-config :target-type
                                  application-resource-lifecycle-config
                                  :member-name "ResourceLifecycleConfig")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateApplicationMessage"))

(smithy/sdk/shapes:define-input create-application-version-message
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (version-label :target-type version-label
                                  :required common-lisp:t :member-name
                                  "VersionLabel")
                                 (description :target-type description
                                  :member-name "Description")
                                 (source-build-information :target-type
                                  source-build-information :member-name
                                  "SourceBuildInformation")
                                 (source-bundle :target-type s3location
                                  :member-name "SourceBundle")
                                 (build-configuration :target-type
                                  build-configuration :member-name
                                  "BuildConfiguration")
                                 (auto-create-application :target-type
                                  auto-create-application :member-name
                                  "AutoCreateApplication")
                                 (process :target-type
                                  application-version-proccess :member-name
                                  "Process")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateApplicationVersionMessage"))

(smithy/sdk/shapes:define-input create-configuration-template-message
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (template-name :target-type
                                  configuration-template-name :required
                                  common-lisp:t :member-name "TemplateName")
                                 (solution-stack-name :target-type
                                  solution-stack-name :member-name
                                  "SolutionStackName")
                                 (platform-arn :target-type platform-arn
                                  :member-name "PlatformArn")
                                 (source-configuration :target-type
                                  source-configuration :member-name
                                  "SourceConfiguration")
                                 (environment-id :target-type environment-id
                                  :member-name "EnvironmentId")
                                 (description :target-type description
                                  :member-name "Description")
                                 (option-settings :target-type
                                  configuration-option-settings-list
                                  :member-name "OptionSettings")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name
                                 "CreateConfigurationTemplateMessage"))

(smithy/sdk/shapes:define-input create-environment-message common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (environment-name :target-type
                                  environment-name :member-name
                                  "EnvironmentName")
                                 (group-name :target-type group-name
                                  :member-name "GroupName")
                                 (description :target-type description
                                  :member-name "Description")
                                 (cnameprefix :target-type dnscname-prefix
                                  :member-name "CNAMEPrefix")
                                 (tier :target-type environment-tier
                                  :member-name "Tier")
                                 (tags :target-type tags :member-name "Tags")
                                 (version-label :target-type version-label
                                  :member-name "VersionLabel")
                                 (template-name :target-type
                                  configuration-template-name :member-name
                                  "TemplateName")
                                 (solution-stack-name :target-type
                                  solution-stack-name :member-name
                                  "SolutionStackName")
                                 (platform-arn :target-type platform-arn
                                  :member-name "PlatformArn")
                                 (option-settings :target-type
                                  configuration-option-settings-list
                                  :member-name "OptionSettings")
                                 (options-to-remove :target-type
                                  options-specifier-list :member-name
                                  "OptionsToRemove")
                                 (operations-role :target-type operations-role
                                  :member-name "OperationsRole"))
                                (:shape-name "CreateEnvironmentMessage"))

(smithy/sdk/shapes:define-input create-platform-version-request common-lisp:nil
                                ((platform-name :target-type platform-name
                                  :required common-lisp:t :member-name
                                  "PlatformName")
                                 (platform-version :target-type
                                  platform-version :required common-lisp:t
                                  :member-name "PlatformVersion")
                                 (platform-definition-bundle :target-type
                                  s3location :required common-lisp:t
                                  :member-name "PlatformDefinitionBundle")
                                 (environment-name :target-type
                                  environment-name :member-name
                                  "EnvironmentName")
                                 (option-settings :target-type
                                  configuration-option-settings-list
                                  :member-name "OptionSettings")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreatePlatformVersionRequest"))

(smithy/sdk/shapes:define-output create-platform-version-result common-lisp:nil
                                 ((platform-summary :target-type
                                   platform-summary :member-name
                                   "PlatformSummary")
                                  (builder :target-type builder :member-name
                                   "Builder"))
                                 (:shape-name "CreatePlatformVersionResult"))

(smithy/sdk/shapes:define-output create-storage-location-result-message
                                 common-lisp:nil
                                 ((s3bucket :target-type s3bucket :member-name
                                   "S3Bucket"))
                                 (:shape-name
                                  "CreateStorageLocationResultMessage"))

(smithy/sdk/shapes:define-type creation-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure custom-ami common-lisp:nil
                                    ((virtualization-type :target-type
                                      virtualization-type :member-name
                                      "VirtualizationType")
                                     (image-id :target-type image-id
                                      :member-name "ImageId"))
                                    (:shape-name "CustomAmi"))

(smithy/sdk/shapes:define-list custom-ami-list :member custom-ami)

(smithy/sdk/shapes:define-type dnscname smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type dnscname-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-application-message common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (terminate-env-by-force :target-type
                                  terminate-env-force :member-name
                                  "TerminateEnvByForce"))
                                (:shape-name "DeleteApplicationMessage"))

(smithy/sdk/shapes:define-input delete-application-version-message
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (version-label :target-type version-label
                                  :required common-lisp:t :member-name
                                  "VersionLabel")
                                 (delete-source-bundle :target-type
                                  delete-source-bundle :member-name
                                  "DeleteSourceBundle"))
                                (:shape-name "DeleteApplicationVersionMessage"))

(smithy/sdk/shapes:define-input delete-configuration-template-message
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (template-name :target-type
                                  configuration-template-name :required
                                  common-lisp:t :member-name "TemplateName"))
                                (:shape-name
                                 "DeleteConfigurationTemplateMessage"))

(smithy/sdk/shapes:define-input delete-environment-configuration-message
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (environment-name :target-type
                                  environment-name :required common-lisp:t
                                  :member-name "EnvironmentName"))
                                (:shape-name
                                 "DeleteEnvironmentConfigurationMessage"))

(smithy/sdk/shapes:define-input delete-platform-version-request common-lisp:nil
                                ((platform-arn :target-type platform-arn
                                  :member-name "PlatformArn"))
                                (:shape-name "DeletePlatformVersionRequest"))

(smithy/sdk/shapes:define-output delete-platform-version-result common-lisp:nil
                                 ((platform-summary :target-type
                                   platform-summary :member-name
                                   "PlatformSummary"))
                                 (:shape-name "DeletePlatformVersionResult"))

(smithy/sdk/shapes:define-type delete-source-bundle
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure deployment common-lisp:nil
                                    ((version-label :target-type string
                                      :member-name "VersionLabel")
                                     (deployment-id :target-type nullable-long
                                      :member-name "DeploymentId")
                                     (status :target-type string :member-name
                                      "Status")
                                     (deployment-time :target-type
                                      deployment-timestamp :member-name
                                      "DeploymentTime"))
                                    (:shape-name "Deployment"))

(smithy/sdk/shapes:define-type deployment-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-output describe-account-attributes-result
                                 common-lisp:nil
                                 ((resource-quotas :target-type resource-quotas
                                   :member-name "ResourceQuotas"))
                                 (:shape-name
                                  "DescribeAccountAttributesResult"))

(smithy/sdk/shapes:define-input describe-application-versions-message
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :member-name
                                  "ApplicationName")
                                 (version-labels :target-type
                                  version-labels-list :member-name
                                  "VersionLabels")
                                 (max-records :target-type max-records
                                  :member-name "MaxRecords")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name
                                 "DescribeApplicationVersionsMessage"))

(smithy/sdk/shapes:define-input describe-applications-message common-lisp:nil
                                ((application-names :target-type
                                  application-names-list :member-name
                                  "ApplicationNames"))
                                (:shape-name "DescribeApplicationsMessage"))

(smithy/sdk/shapes:define-input describe-configuration-options-message
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :member-name
                                  "ApplicationName")
                                 (template-name :target-type
                                  configuration-template-name :member-name
                                  "TemplateName")
                                 (environment-name :target-type
                                  environment-name :member-name
                                  "EnvironmentName")
                                 (solution-stack-name :target-type
                                  solution-stack-name :member-name
                                  "SolutionStackName")
                                 (platform-arn :target-type platform-arn
                                  :member-name "PlatformArn")
                                 (options :target-type options-specifier-list
                                  :member-name "Options"))
                                (:shape-name
                                 "DescribeConfigurationOptionsMessage"))

(smithy/sdk/shapes:define-input describe-configuration-settings-message
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (template-name :target-type
                                  configuration-template-name :member-name
                                  "TemplateName")
                                 (environment-name :target-type
                                  environment-name :member-name
                                  "EnvironmentName"))
                                (:shape-name
                                 "DescribeConfigurationSettingsMessage"))

(smithy/sdk/shapes:define-input describe-environment-health-request
                                common-lisp:nil
                                ((environment-name :target-type
                                  environment-name :member-name
                                  "EnvironmentName")
                                 (environment-id :target-type environment-id
                                  :member-name "EnvironmentId")
                                 (attribute-names :target-type
                                  environment-health-attributes :member-name
                                  "AttributeNames"))
                                (:shape-name
                                 "DescribeEnvironmentHealthRequest"))

(smithy/sdk/shapes:define-output describe-environment-health-result
                                 common-lisp:nil
                                 ((environment-name :target-type
                                   environment-name :member-name
                                   "EnvironmentName")
                                  (health-status :target-type string
                                   :member-name "HealthStatus")
                                  (status :target-type environment-health
                                   :member-name "Status")
                                  (color :target-type string :member-name
                                   "Color")
                                  (causes :target-type causes :member-name
                                   "Causes")
                                  (application-metrics :target-type
                                   application-metrics :member-name
                                   "ApplicationMetrics")
                                  (instances-health :target-type
                                   instance-health-summary :member-name
                                   "InstancesHealth")
                                  (refreshed-at :target-type refreshed-at
                                   :member-name "RefreshedAt"))
                                 (:shape-name
                                  "DescribeEnvironmentHealthResult"))

(smithy/sdk/shapes:define-input
 describe-environment-managed-action-history-request common-lisp:nil
 ((environment-id :target-type environment-id :member-name "EnvironmentId")
  (environment-name :target-type environment-name :member-name
   "EnvironmentName")
  (next-token :target-type string :member-name "NextToken")
  (max-items :target-type managed-action-history-max-items :member-name
   "MaxItems"))
 (:shape-name "DescribeEnvironmentManagedActionHistoryRequest"))

(smithy/sdk/shapes:define-output
 describe-environment-managed-action-history-result common-lisp:nil
 ((managed-action-history-items :target-type managed-action-history-items
   :member-name "ManagedActionHistoryItems")
  (next-token :target-type string :member-name "NextToken"))
 (:shape-name "DescribeEnvironmentManagedActionHistoryResult"))

(smithy/sdk/shapes:define-input describe-environment-managed-actions-request
                                common-lisp:nil
                                ((environment-name :target-type string
                                  :member-name "EnvironmentName")
                                 (environment-id :target-type string
                                  :member-name "EnvironmentId")
                                 (status :target-type action-status
                                  :member-name "Status"))
                                (:shape-name
                                 "DescribeEnvironmentManagedActionsRequest"))

(smithy/sdk/shapes:define-output describe-environment-managed-actions-result
                                 common-lisp:nil
                                 ((managed-actions :target-type managed-actions
                                   :member-name "ManagedActions"))
                                 (:shape-name
                                  "DescribeEnvironmentManagedActionsResult"))

(smithy/sdk/shapes:define-input describe-environment-resources-message
                                common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :member-name "EnvironmentId")
                                 (environment-name :target-type
                                  environment-name :member-name
                                  "EnvironmentName"))
                                (:shape-name
                                 "DescribeEnvironmentResourcesMessage"))

(smithy/sdk/shapes:define-input describe-environments-message common-lisp:nil
                                ((application-name :target-type
                                  application-name :member-name
                                  "ApplicationName")
                                 (version-label :target-type version-label
                                  :member-name "VersionLabel")
                                 (environment-ids :target-type
                                  environment-id-list :member-name
                                  "EnvironmentIds")
                                 (environment-names :target-type
                                  environment-names-list :member-name
                                  "EnvironmentNames")
                                 (include-deleted :target-type include-deleted
                                  :member-name "IncludeDeleted")
                                 (included-deleted-back-to :target-type
                                  include-deleted-back-to :member-name
                                  "IncludedDeletedBackTo")
                                 (max-records :target-type max-records
                                  :member-name "MaxRecords")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name "DescribeEnvironmentsMessage"))

(smithy/sdk/shapes:define-input describe-events-message common-lisp:nil
                                ((application-name :target-type
                                  application-name :member-name
                                  "ApplicationName")
                                 (version-label :target-type version-label
                                  :member-name "VersionLabel")
                                 (template-name :target-type
                                  configuration-template-name :member-name
                                  "TemplateName")
                                 (environment-id :target-type environment-id
                                  :member-name "EnvironmentId")
                                 (environment-name :target-type
                                  environment-name :member-name
                                  "EnvironmentName")
                                 (platform-arn :target-type platform-arn
                                  :member-name "PlatformArn")
                                 (request-id :target-type request-id
                                  :member-name "RequestId")
                                 (severity :target-type event-severity
                                  :member-name "Severity")
                                 (start-time :target-type time-filter-start
                                  :member-name "StartTime")
                                 (end-time :target-type time-filter-end
                                  :member-name "EndTime")
                                 (max-records :target-type max-records
                                  :member-name "MaxRecords")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name "DescribeEventsMessage"))

(smithy/sdk/shapes:define-input describe-instances-health-request
                                common-lisp:nil
                                ((environment-name :target-type
                                  environment-name :member-name
                                  "EnvironmentName")
                                 (environment-id :target-type environment-id
                                  :member-name "EnvironmentId")
                                 (attribute-names :target-type
                                  instances-health-attributes :member-name
                                  "AttributeNames")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "DescribeInstancesHealthRequest"))

(smithy/sdk/shapes:define-output describe-instances-health-result
                                 common-lisp:nil
                                 ((instance-health-list :target-type
                                   instance-health-list :member-name
                                   "InstanceHealthList")
                                  (refreshed-at :target-type refreshed-at
                                   :member-name "RefreshedAt")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "DescribeInstancesHealthResult"))

(smithy/sdk/shapes:define-input describe-platform-version-request
                                common-lisp:nil
                                ((platform-arn :target-type platform-arn
                                  :member-name "PlatformArn"))
                                (:shape-name "DescribePlatformVersionRequest"))

(smithy/sdk/shapes:define-output describe-platform-version-result
                                 common-lisp:nil
                                 ((platform-description :target-type
                                   platform-description :member-name
                                   "PlatformDescription"))
                                 (:shape-name "DescribePlatformVersionResult"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 disassociate-environment-operations-role-message common-lisp:nil
 ((environment-name :target-type environment-name :required common-lisp:t
   :member-name "EnvironmentName"))
 (:shape-name "DisassociateEnvironmentOperationsRoleMessage"))

(smithy/sdk/shapes:define-type ec2instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error elastic-beanstalk-service-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ElasticBeanstalkServiceException")
                                (:error-code 400)
                                (:base-class elastic-beanstalk-error))

(smithy/sdk/shapes:define-type endpoint-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure environment-description common-lisp:nil
                                    ((environment-name :target-type
                                      environment-name :member-name
                                      "EnvironmentName")
                                     (environment-id :target-type
                                      environment-id :member-name
                                      "EnvironmentId")
                                     (application-name :target-type
                                      application-name :member-name
                                      "ApplicationName")
                                     (version-label :target-type version-label
                                      :member-name "VersionLabel")
                                     (solution-stack-name :target-type
                                      solution-stack-name :member-name
                                      "SolutionStackName")
                                     (platform-arn :target-type platform-arn
                                      :member-name "PlatformArn")
                                     (template-name :target-type
                                      configuration-template-name :member-name
                                      "TemplateName")
                                     (description :target-type description
                                      :member-name "Description")
                                     (endpoint-url :target-type endpoint-url
                                      :member-name "EndpointURL")
                                     (cname :target-type dnscname :member-name
                                      "CNAME")
                                     (date-created :target-type creation-date
                                      :member-name "DateCreated")
                                     (date-updated :target-type update-date
                                      :member-name "DateUpdated")
                                     (status :target-type environment-status
                                      :member-name "Status")
                                     (abortable-operation-in-progress
                                      :target-type
                                      abortable-operation-in-progress
                                      :member-name
                                      "AbortableOperationInProgress")
                                     (health :target-type environment-health
                                      :member-name "Health")
                                     (health-status :target-type
                                      environment-health-status :member-name
                                      "HealthStatus")
                                     (resources :target-type
                                      environment-resources-description
                                      :member-name "Resources")
                                     (tier :target-type environment-tier
                                      :member-name "Tier")
                                     (environment-links :target-type
                                      environment-links :member-name
                                      "EnvironmentLinks")
                                     (environment-arn :target-type
                                      environment-arn :member-name
                                      "EnvironmentArn")
                                     (operations-role :target-type
                                      operations-role :member-name
                                      "OperationsRole"))
                                    (:shape-name "EnvironmentDescription"))

(smithy/sdk/shapes:define-list environment-descriptions-list :member
                               environment-description)

(smithy/sdk/shapes:define-structure environment-descriptions-message
                                    common-lisp:nil
                                    ((environments :target-type
                                      environment-descriptions-list
                                      :member-name "Environments")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "EnvironmentDescriptionsMessage"))

(smithy/sdk/shapes:define-enum environment-health
    common-lisp:nil
  (:green "Green")
  (:yellow "Yellow")
  (:red "Red")
  (:grey "Grey"))

(smithy/sdk/shapes:define-enum environment-health-attribute
    common-lisp:nil
  (:status "Status")
  (:color "Color")
  (:causes "Causes")
  (:application-metrics "ApplicationMetrics")
  (:instances-health "InstancesHealth")
  (:all "All")
  (:health-status "HealthStatus")
  (:refreshed-at "RefreshedAt"))

(smithy/sdk/shapes:define-list environment-health-attributes :member
                               environment-health-attribute)

(smithy/sdk/shapes:define-enum environment-health-status
    common-lisp:nil
  (:no-data "NoData")
  (:unknown "Unknown")
  (:pending "Pending")
  (:ok "Ok")
  (:info "Info")
  (:warning "Warning")
  (:degraded "Degraded")
  (:severe "Severe")
  (:suspended "Suspended"))

(smithy/sdk/shapes:define-type environment-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list environment-id-list :member environment-id)

(smithy/sdk/shapes:define-structure environment-info-description
                                    common-lisp:nil
                                    ((info-type :target-type
                                      environment-info-type :member-name
                                      "InfoType")
                                     (ec2instance-id :target-type
                                      ec2instance-id :member-name
                                      "Ec2InstanceId")
                                     (sample-timestamp :target-type
                                      sample-timestamp :member-name
                                      "SampleTimestamp")
                                     (message :target-type message :member-name
                                      "Message"))
                                    (:shape-name "EnvironmentInfoDescription"))

(smithy/sdk/shapes:define-list environment-info-description-list :member
                               environment-info-description)

(smithy/sdk/shapes:define-enum environment-info-type
    common-lisp:nil
  (:tail "tail")
  (:bundle "bundle"))

(smithy/sdk/shapes:define-structure environment-link common-lisp:nil
                                    ((link-name :target-type string
                                      :member-name "LinkName")
                                     (environment-name :target-type string
                                      :member-name "EnvironmentName"))
                                    (:shape-name "EnvironmentLink"))

(smithy/sdk/shapes:define-list environment-links :member environment-link)

(smithy/sdk/shapes:define-type environment-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list environment-names-list :member environment-name)

(smithy/sdk/shapes:define-structure environment-resource-description
                                    common-lisp:nil
                                    ((environment-name :target-type
                                      environment-name :member-name
                                      "EnvironmentName")
                                     (auto-scaling-groups :target-type
                                      auto-scaling-group-list :member-name
                                      "AutoScalingGroups")
                                     (instances :target-type instance-list
                                      :member-name "Instances")
                                     (launch-configurations :target-type
                                      launch-configuration-list :member-name
                                      "LaunchConfigurations")
                                     (launch-templates :target-type
                                      launch-template-list :member-name
                                      "LaunchTemplates")
                                     (load-balancers :target-type
                                      load-balancer-list :member-name
                                      "LoadBalancers")
                                     (triggers :target-type trigger-list
                                      :member-name "Triggers")
                                     (queues :target-type queue-list
                                      :member-name "Queues"))
                                    (:shape-name
                                     "EnvironmentResourceDescription"))

(smithy/sdk/shapes:define-output environment-resource-descriptions-message
                                 common-lisp:nil
                                 ((environment-resources :target-type
                                   environment-resource-description
                                   :member-name "EnvironmentResources"))
                                 (:shape-name
                                  "EnvironmentResourceDescriptionsMessage"))

(smithy/sdk/shapes:define-structure environment-resources-description
                                    common-lisp:nil
                                    ((load-balancer :target-type
                                      load-balancer-description :member-name
                                      "LoadBalancer"))
                                    (:shape-name
                                     "EnvironmentResourcesDescription"))

(smithy/sdk/shapes:define-enum environment-status
    common-lisp:nil
  (:aborting "Aborting")
  (:launching "Launching")
  (:updating "Updating")
  (:linking-from "LinkingFrom")
  (:linking-to "LinkingTo")
  (:ready "Ready")
  (:terminating "Terminating")
  (:terminated "Terminated"))

(smithy/sdk/shapes:define-structure environment-tier common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (type :target-type string :member-name
                                      "Type")
                                     (version :target-type string :member-name
                                      "Version"))
                                    (:shape-name "EnvironmentTier"))

(smithy/sdk/shapes:define-type event-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure event-description common-lisp:nil
                                    ((event-date :target-type event-date
                                      :member-name "EventDate")
                                     (message :target-type event-message
                                      :member-name "Message")
                                     (application-name :target-type
                                      application-name :member-name
                                      "ApplicationName")
                                     (version-label :target-type version-label
                                      :member-name "VersionLabel")
                                     (template-name :target-type
                                      configuration-template-name :member-name
                                      "TemplateName")
                                     (environment-name :target-type
                                      environment-name :member-name
                                      "EnvironmentName")
                                     (platform-arn :target-type platform-arn
                                      :member-name "PlatformArn")
                                     (request-id :target-type request-id
                                      :member-name "RequestId")
                                     (severity :target-type event-severity
                                      :member-name "Severity"))
                                    (:shape-name "EventDescription"))

(smithy/sdk/shapes:define-list event-description-list :member event-description)

(smithy/sdk/shapes:define-output event-descriptions-message common-lisp:nil
                                 ((events :target-type event-description-list
                                   :member-name "Events")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "EventDescriptionsMessage"))

(smithy/sdk/shapes:define-type event-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum event-severity
    common-lisp:nil
  (:trace "TRACE")
  (:debug "DEBUG")
  (:info "INFO")
  (:warn "WARN")
  (:error "ERROR")
  (:fatal "FATAL"))

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum failure-type
    common-lisp:nil
  (:update-cancelled "UpdateCancelled")
  (:cancellation-failed "CancellationFailed")
  (:rollback-failed "RollbackFailed")
  (:rollback-successful "RollbackSuccessful")
  (:internal-failure "InternalFailure")
  (:invalid-environment-state "InvalidEnvironmentState")
  (:permissions-error "PermissionsError"))

(smithy/sdk/shapes:define-type file-type-extension
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type force-terminate smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type image-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type include-deleted smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type include-deleted-back-to
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure instance common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id"))
                                    (:shape-name "Instance"))

(smithy/sdk/shapes:define-list instance-health-list :member
                               single-instance-health)

(smithy/sdk/shapes:define-structure instance-health-summary common-lisp:nil
                                    ((no-data :target-type nullable-integer
                                      :member-name "NoData")
                                     (unknown :target-type nullable-integer
                                      :member-name "Unknown")
                                     (pending :target-type nullable-integer
                                      :member-name "Pending")
                                     (ok :target-type nullable-integer
                                      :member-name "Ok")
                                     (info :target-type nullable-integer
                                      :member-name "Info")
                                     (warning :target-type nullable-integer
                                      :member-name "Warning")
                                     (degraded :target-type nullable-integer
                                      :member-name "Degraded")
                                     (severe :target-type nullable-integer
                                      :member-name "Severe"))
                                    (:shape-name "InstanceHealthSummary"))

(smithy/sdk/shapes:define-type instance-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-list :member instance)

(smithy/sdk/shapes:define-enum instances-health-attribute
    common-lisp:nil
  (:health-status "HealthStatus")
  (:color "Color")
  (:causes "Causes")
  (:application-metrics "ApplicationMetrics")
  (:refreshed-at "RefreshedAt")
  (:launched-at "LaunchedAt")
  (:system "System")
  (:deployment "Deployment")
  (:availability-zone "AvailabilityZone")
  (:instance-type "InstanceType")
  (:all "All"))

(smithy/sdk/shapes:define-list instances-health-attributes :member
                               instances-health-attribute)

(smithy/sdk/shapes:define-error insufficient-privileges-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InsufficientPrivilegesException")
                                (:error-name "InsufficientPrivilegesException")
                                (:error-code 403)
                                (:base-class elastic-beanstalk-error))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "InvalidRequestException")
                                (:error-name "InvalidRequestException")
                                (:error-code 400)
                                (:base-class elastic-beanstalk-error))

(smithy/sdk/shapes:define-structure latency common-lisp:nil
                                    ((p999 :target-type nullable-double
                                      :member-name "P999")
                                     (p99 :target-type nullable-double
                                      :member-name "P99")
                                     (p95 :target-type nullable-double
                                      :member-name "P95")
                                     (p90 :target-type nullable-double
                                      :member-name "P90")
                                     (p85 :target-type nullable-double
                                      :member-name "P85")
                                     (p75 :target-type nullable-double
                                      :member-name "P75")
                                     (p50 :target-type nullable-double
                                      :member-name "P50")
                                     (p10 :target-type nullable-double
                                      :member-name "P10"))
                                    (:shape-name "Latency"))

(smithy/sdk/shapes:define-structure launch-configuration common-lisp:nil
                                    ((name :target-type resource-id
                                      :member-name "Name"))
                                    (:shape-name "LaunchConfiguration"))

(smithy/sdk/shapes:define-list launch-configuration-list :member
                               launch-configuration)

(smithy/sdk/shapes:define-structure launch-template common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "Id"))
                                    (:shape-name "LaunchTemplate"))

(smithy/sdk/shapes:define-list launch-template-list :member launch-template)

(smithy/sdk/shapes:define-type launched-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-output list-available-solution-stacks-result-message
                                 common-lisp:nil
                                 ((solution-stacks :target-type
                                   available-solution-stack-names-list
                                   :member-name "SolutionStacks")
                                  (solution-stack-details :target-type
                                   available-solution-stack-details-list
                                   :member-name "SolutionStackDetails"))
                                 (:shape-name
                                  "ListAvailableSolutionStacksResultMessage"))

(smithy/sdk/shapes:define-input list-platform-branches-request common-lisp:nil
                                ((filters :target-type search-filters
                                  :member-name "Filters")
                                 (max-records :target-type
                                  platform-branch-max-records :member-name
                                  "MaxRecords")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name "ListPlatformBranchesRequest"))

(smithy/sdk/shapes:define-output list-platform-branches-result common-lisp:nil
                                 ((platform-branch-summary-list :target-type
                                   platform-branch-summary-list :member-name
                                   "PlatformBranchSummaryList")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListPlatformBranchesResult"))

(smithy/sdk/shapes:define-input list-platform-versions-request common-lisp:nil
                                ((filters :target-type platform-filters
                                  :member-name "Filters")
                                 (max-records :target-type platform-max-records
                                  :member-name "MaxRecords")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name "ListPlatformVersionsRequest"))

(smithy/sdk/shapes:define-output list-platform-versions-result common-lisp:nil
                                 ((platform-summary-list :target-type
                                   platform-summary-list :member-name
                                   "PlatformSummaryList")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name "ListPlatformVersionsResult"))

(smithy/sdk/shapes:define-input list-tags-for-resource-message common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "ListTagsForResourceMessage"))

(smithy/sdk/shapes:define-structure listener common-lisp:nil
                                    ((protocol :target-type string :member-name
                                      "Protocol")
                                     (port :target-type integer :member-name
                                      "Port"))
                                    (:shape-name "Listener"))

(smithy/sdk/shapes:define-list load-average :member load-average-value)

(smithy/sdk/shapes:define-type load-average-value
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure load-balancer common-lisp:nil
                                    ((name :target-type resource-id
                                      :member-name "Name"))
                                    (:shape-name "LoadBalancer"))

(smithy/sdk/shapes:define-structure load-balancer-description common-lisp:nil
                                    ((load-balancer-name :target-type string
                                      :member-name "LoadBalancerName")
                                     (domain :target-type string :member-name
                                      "Domain")
                                     (listeners :target-type
                                      load-balancer-listeners-description
                                      :member-name "Listeners"))
                                    (:shape-name "LoadBalancerDescription"))

(smithy/sdk/shapes:define-list load-balancer-list :member load-balancer)

(smithy/sdk/shapes:define-list load-balancer-listeners-description :member
                               listener)

(smithy/sdk/shapes:define-type maintainer smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure managed-action common-lisp:nil
                                    ((action-id :target-type string
                                      :member-name "ActionId")
                                     (action-description :target-type string
                                      :member-name "ActionDescription")
                                     (action-type :target-type action-type
                                      :member-name "ActionType")
                                     (status :target-type action-status
                                      :member-name "Status")
                                     (window-start-time :target-type timestamp
                                      :member-name "WindowStartTime"))
                                    (:shape-name "ManagedAction"))

(smithy/sdk/shapes:define-structure managed-action-history-item common-lisp:nil
                                    ((action-id :target-type string
                                      :member-name "ActionId")
                                     (action-type :target-type action-type
                                      :member-name "ActionType")
                                     (action-description :target-type string
                                      :member-name "ActionDescription")
                                     (failure-type :target-type failure-type
                                      :member-name "FailureType")
                                     (status :target-type action-history-status
                                      :member-name "Status")
                                     (failure-description :target-type string
                                      :member-name "FailureDescription")
                                     (executed-time :target-type timestamp
                                      :member-name "ExecutedTime")
                                     (finished-time :target-type timestamp
                                      :member-name "FinishedTime"))
                                    (:shape-name "ManagedActionHistoryItem"))

(smithy/sdk/shapes:define-list managed-action-history-items :member
                               managed-action-history-item)

(smithy/sdk/shapes:define-type managed-action-history-max-items
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error managed-action-invalid-state-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ManagedActionInvalidStateException")
                                (:error-name
                                 "ManagedActionInvalidStateException")
                                (:error-code 400)
                                (:base-class elastic-beanstalk-error))

(smithy/sdk/shapes:define-list managed-actions :member managed-action)

(smithy/sdk/shapes:define-structure max-age-rule common-lisp:nil
                                    ((enabled :target-type boxed-boolean
                                      :required common-lisp:t :member-name
                                      "Enabled")
                                     (max-age-in-days :target-type boxed-int
                                      :member-name "MaxAgeInDays")
                                     (delete-source-from-s3 :target-type
                                      boxed-boolean :member-name
                                      "DeleteSourceFromS3"))
                                    (:shape-name "MaxAgeRule"))

(smithy/sdk/shapes:define-structure max-count-rule common-lisp:nil
                                    ((enabled :target-type boxed-boolean
                                      :required common-lisp:t :member-name
                                      "Enabled")
                                     (max-count :target-type boxed-int
                                      :member-name "MaxCount")
                                     (delete-source-from-s3 :target-type
                                      boxed-boolean :member-name
                                      "DeleteSourceFromS3"))
                                    (:shape-name "MaxCountRule"))

(smithy/sdk/shapes:define-type max-records smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type nullable-double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type nullable-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type nullable-long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type operating-system-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type operating-system-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error operation-in-progress-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "OperationInProgressException")
                                (:error-name "OperationInProgressFailure")
                                (:error-code 400)
                                (:base-class elastic-beanstalk-error))

(smithy/sdk/shapes:define-type operations-role smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type option-namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type option-restriction-max-length
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type option-restriction-max-value
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type option-restriction-min-value
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure option-restriction-regex common-lisp:nil
                                    ((pattern :target-type regex-pattern
                                      :member-name "Pattern")
                                     (label :target-type regex-label
                                      :member-name "Label"))
                                    (:shape-name "OptionRestrictionRegex"))

(smithy/sdk/shapes:define-structure option-specification common-lisp:nil
                                    ((resource-name :target-type resource-name
                                      :member-name "ResourceName")
                                     (namespace :target-type option-namespace
                                      :member-name "Namespace")
                                     (option-name :target-type
                                      configuration-option-name :member-name
                                      "OptionName"))
                                    (:shape-name "OptionSpecification"))

(smithy/sdk/shapes:define-list options-specifier-list :member
                               option-specification)

(smithy/sdk/shapes:define-type platform-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type platform-branch-lifecycle-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type platform-branch-max-records
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure platform-branch-summary common-lisp:nil
                                    ((platform-name :target-type platform-name
                                      :member-name "PlatformName")
                                     (branch-name :target-type branch-name
                                      :member-name "BranchName")
                                     (lifecycle-state :target-type
                                      platform-branch-lifecycle-state
                                      :member-name "LifecycleState")
                                     (branch-order :target-type branch-order
                                      :member-name "BranchOrder")
                                     (supported-tier-list :target-type
                                      supported-tier-list :member-name
                                      "SupportedTierList"))
                                    (:shape-name "PlatformBranchSummary"))

(smithy/sdk/shapes:define-list platform-branch-summary-list :member
                               platform-branch-summary)

(smithy/sdk/shapes:define-type platform-category smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure platform-description common-lisp:nil
                                    ((platform-arn :target-type platform-arn
                                      :member-name "PlatformArn")
                                     (platform-owner :target-type
                                      platform-owner :member-name
                                      "PlatformOwner")
                                     (platform-name :target-type platform-name
                                      :member-name "PlatformName")
                                     (platform-version :target-type
                                      platform-version :member-name
                                      "PlatformVersion")
                                     (solution-stack-name :target-type
                                      solution-stack-name :member-name
                                      "SolutionStackName")
                                     (platform-status :target-type
                                      platform-status :member-name
                                      "PlatformStatus")
                                     (date-created :target-type creation-date
                                      :member-name "DateCreated")
                                     (date-updated :target-type update-date
                                      :member-name "DateUpdated")
                                     (platform-category :target-type
                                      platform-category :member-name
                                      "PlatformCategory")
                                     (description :target-type description
                                      :member-name "Description")
                                     (maintainer :target-type maintainer
                                      :member-name "Maintainer")
                                     (operating-system-name :target-type
                                      operating-system-name :member-name
                                      "OperatingSystemName")
                                     (operating-system-version :target-type
                                      operating-system-version :member-name
                                      "OperatingSystemVersion")
                                     (programming-languages :target-type
                                      platform-programming-languages
                                      :member-name "ProgrammingLanguages")
                                     (frameworks :target-type
                                      platform-frameworks :member-name
                                      "Frameworks")
                                     (custom-ami-list :target-type
                                      custom-ami-list :member-name
                                      "CustomAmiList")
                                     (supported-tier-list :target-type
                                      supported-tier-list :member-name
                                      "SupportedTierList")
                                     (supported-addon-list :target-type
                                      supported-addon-list :member-name
                                      "SupportedAddonList")
                                     (platform-lifecycle-state :target-type
                                      platform-lifecycle-state :member-name
                                      "PlatformLifecycleState")
                                     (platform-branch-name :target-type
                                      branch-name :member-name
                                      "PlatformBranchName")
                                     (platform-branch-lifecycle-state
                                      :target-type
                                      platform-branch-lifecycle-state
                                      :member-name
                                      "PlatformBranchLifecycleState"))
                                    (:shape-name "PlatformDescription"))

(smithy/sdk/shapes:define-structure platform-filter common-lisp:nil
                                    ((type :target-type platform-filter-type
                                      :member-name "Type")
                                     (operator :target-type
                                      platform-filter-operator :member-name
                                      "Operator")
                                     (values :target-type
                                      platform-filter-value-list :member-name
                                      "Values"))
                                    (:shape-name "PlatformFilter"))

(smithy/sdk/shapes:define-type platform-filter-operator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type platform-filter-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type platform-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list platform-filter-value-list :member
                               platform-filter-value)

(smithy/sdk/shapes:define-list platform-filters :member platform-filter)

(smithy/sdk/shapes:define-structure platform-framework common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (version :target-type string :member-name
                                      "Version"))
                                    (:shape-name "PlatformFramework"))

(smithy/sdk/shapes:define-list platform-frameworks :member platform-framework)

(smithy/sdk/shapes:define-type platform-lifecycle-state
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type platform-max-records
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type platform-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type platform-owner smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure platform-programming-language
                                    common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (version :target-type string :member-name
                                      "Version"))
                                    (:shape-name "PlatformProgrammingLanguage"))

(smithy/sdk/shapes:define-list platform-programming-languages :member
                               platform-programming-language)

(smithy/sdk/shapes:define-enum platform-status
    common-lisp:nil
  (:creating "Creating")
  (:failed "Failed")
  (:ready "Ready")
  (:deleting "Deleting")
  (:deleted "Deleted"))

(smithy/sdk/shapes:define-structure platform-summary common-lisp:nil
                                    ((platform-arn :target-type platform-arn
                                      :member-name "PlatformArn")
                                     (platform-owner :target-type
                                      platform-owner :member-name
                                      "PlatformOwner")
                                     (platform-status :target-type
                                      platform-status :member-name
                                      "PlatformStatus")
                                     (platform-category :target-type
                                      platform-category :member-name
                                      "PlatformCategory")
                                     (operating-system-name :target-type
                                      operating-system-name :member-name
                                      "OperatingSystemName")
                                     (operating-system-version :target-type
                                      operating-system-version :member-name
                                      "OperatingSystemVersion")
                                     (supported-tier-list :target-type
                                      supported-tier-list :member-name
                                      "SupportedTierList")
                                     (supported-addon-list :target-type
                                      supported-addon-list :member-name
                                      "SupportedAddonList")
                                     (platform-lifecycle-state :target-type
                                      platform-lifecycle-state :member-name
                                      "PlatformLifecycleState")
                                     (platform-version :target-type
                                      platform-version :member-name
                                      "PlatformVersion")
                                     (platform-branch-name :target-type
                                      branch-name :member-name
                                      "PlatformBranchName")
                                     (platform-branch-lifecycle-state
                                      :target-type
                                      platform-branch-lifecycle-state
                                      :member-name
                                      "PlatformBranchLifecycleState"))
                                    (:shape-name "PlatformSummary"))

(smithy/sdk/shapes:define-list platform-summary-list :member platform-summary)

(smithy/sdk/shapes:define-type platform-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error platform-version-still-referenced-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "PlatformVersionStillReferencedException")
                                (:error-name
                                 "PlatformVersionStillReferencedException")
                                (:error-code 400)
                                (:base-class elastic-beanstalk-error))

(smithy/sdk/shapes:define-structure queue common-lisp:nil
                                    ((name :target-type string :member-name
                                      "Name")
                                     (url :target-type string :member-name
                                      "URL"))
                                    (:shape-name "Queue"))

(smithy/sdk/shapes:define-list queue-list :member queue)

(smithy/sdk/shapes:define-input rebuild-environment-message common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :member-name "EnvironmentId")
                                 (environment-name :target-type
                                  environment-name :member-name
                                  "EnvironmentName"))
                                (:shape-name "RebuildEnvironmentMessage"))

(smithy/sdk/shapes:define-type refreshed-at smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type regex-label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type regex-pattern smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type request-count smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input request-environment-info-message
                                common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :member-name "EnvironmentId")
                                 (environment-name :target-type
                                  environment-name :member-name
                                  "EnvironmentName")
                                 (info-type :target-type environment-info-type
                                  :required common-lisp:t :member-name
                                  "InfoType"))
                                (:shape-name "RequestEnvironmentInfoMessage"))

(smithy/sdk/shapes:define-type request-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-name "ResourceNotFoundException")
                                (:error-code 400)
                                (:base-class elastic-beanstalk-error))

(smithy/sdk/shapes:define-structure resource-quota common-lisp:nil
                                    ((maximum :target-type boxed-int
                                      :member-name "Maximum"))
                                    (:shape-name "ResourceQuota"))

(smithy/sdk/shapes:define-structure resource-quotas common-lisp:nil
                                    ((application-quota :target-type
                                      resource-quota :member-name
                                      "ApplicationQuota")
                                     (application-version-quota :target-type
                                      resource-quota :member-name
                                      "ApplicationVersionQuota")
                                     (environment-quota :target-type
                                      resource-quota :member-name
                                      "EnvironmentQuota")
                                     (configuration-template-quota :target-type
                                      resource-quota :member-name
                                      "ConfigurationTemplateQuota")
                                     (custom-platform-quota :target-type
                                      resource-quota :member-name
                                      "CustomPlatformQuota"))
                                    (:shape-name "ResourceQuotas"))

(smithy/sdk/shapes:define-output resource-tags-description-message
                                 common-lisp:nil
                                 ((resource-arn :target-type resource-arn
                                   :member-name "ResourceArn")
                                  (resource-tags :target-type tag-list
                                   :member-name "ResourceTags"))
                                 (:shape-name "ResourceTagsDescriptionMessage"))

(smithy/sdk/shapes:define-error resource-type-not-supported-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "ResourceTypeNotSupportedException")
                                (:error-name
                                 "ResourceTypeNotSupportedException")
                                (:error-code 400)
                                (:base-class elastic-beanstalk-error))

(smithy/sdk/shapes:define-input restart-app-server-message common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :member-name "EnvironmentId")
                                 (environment-name :target-type
                                  environment-name :member-name
                                  "EnvironmentName"))
                                (:shape-name "RestartAppServerMessage"))

(smithy/sdk/shapes:define-input retrieve-environment-info-message
                                common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :member-name "EnvironmentId")
                                 (environment-name :target-type
                                  environment-name :member-name
                                  "EnvironmentName")
                                 (info-type :target-type environment-info-type
                                  :required common-lisp:t :member-name
                                  "InfoType"))
                                (:shape-name "RetrieveEnvironmentInfoMessage"))

(smithy/sdk/shapes:define-output retrieve-environment-info-result-message
                                 common-lisp:nil
                                 ((environment-info :target-type
                                   environment-info-description-list
                                   :member-name "EnvironmentInfo"))
                                 (:shape-name
                                  "RetrieveEnvironmentInfoResultMessage"))

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((s3bucket :target-type s3bucket
                                      :member-name "S3Bucket")
                                     (s3key :target-type s3key :member-name
                                      "S3Key"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-error s3location-not-in-service-region-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "S3LocationNotInServiceRegionException")
                                (:error-name
                                 "S3LocationNotInServiceRegionException")
                                (:error-code 400)
                                (:base-class elastic-beanstalk-error))

(smithy/sdk/shapes:define-error s3subscription-required-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "S3SubscriptionRequiredException")
                                (:error-name "S3SubscriptionRequiredException")
                                (:error-code 400)
                                (:base-class elastic-beanstalk-error))

(smithy/sdk/shapes:define-type sample-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure search-filter common-lisp:nil
                                    ((attribute :target-type
                                      search-filter-attribute :member-name
                                      "Attribute")
                                     (operator :target-type
                                      search-filter-operator :member-name
                                      "Operator")
                                     (values :target-type search-filter-values
                                      :member-name "Values"))
                                    (:shape-name "SearchFilter"))

(smithy/sdk/shapes:define-type search-filter-attribute
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type search-filter-operator
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type search-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list search-filter-values :member search-filter-value)

(smithy/sdk/shapes:define-list search-filters :member search-filter)

(smithy/sdk/shapes:define-structure single-instance-health common-lisp:nil
                                    ((instance-id :target-type instance-id
                                      :member-name "InstanceId")
                                     (health-status :target-type string
                                      :member-name "HealthStatus")
                                     (color :target-type string :member-name
                                      "Color")
                                     (causes :target-type causes :member-name
                                      "Causes")
                                     (launched-at :target-type launched-at
                                      :member-name "LaunchedAt")
                                     (application-metrics :target-type
                                      application-metrics :member-name
                                      "ApplicationMetrics")
                                     (system :target-type system-status
                                      :member-name "System")
                                     (deployment :target-type deployment
                                      :member-name "Deployment")
                                     (availability-zone :target-type string
                                      :member-name "AvailabilityZone")
                                     (instance-type :target-type string
                                      :member-name "InstanceType"))
                                    (:shape-name "SingleInstanceHealth"))

(smithy/sdk/shapes:define-structure solution-stack-description common-lisp:nil
                                    ((solution-stack-name :target-type
                                      solution-stack-name :member-name
                                      "SolutionStackName")
                                     (permitted-file-types :target-type
                                      solution-stack-file-type-list
                                      :member-name "PermittedFileTypes"))
                                    (:shape-name "SolutionStackDescription"))

(smithy/sdk/shapes:define-list solution-stack-file-type-list :member
                               file-type-extension)

(smithy/sdk/shapes:define-type solution-stack-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure source-build-information common-lisp:nil
                                    ((source-type :target-type source-type
                                      :required common-lisp:t :member-name
                                      "SourceType")
                                     (source-repository :target-type
                                      source-repository :required common-lisp:t
                                      :member-name "SourceRepository")
                                     (source-location :target-type
                                      source-location :required common-lisp:t
                                      :member-name "SourceLocation"))
                                    (:shape-name "SourceBuildInformation"))

(smithy/sdk/shapes:define-error source-bundle-deletion-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "SourceBundleDeletionException")
                                (:error-name "SourceBundleDeletionFailure")
                                (:error-code 400)
                                (:base-class elastic-beanstalk-error))

(smithy/sdk/shapes:define-structure source-configuration common-lisp:nil
                                    ((application-name :target-type
                                      application-name :member-name
                                      "ApplicationName")
                                     (template-name :target-type
                                      configuration-template-name :member-name
                                      "TemplateName"))
                                    (:shape-name "SourceConfiguration"))

(smithy/sdk/shapes:define-type source-location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum source-repository
    common-lisp:nil
  (:code-commit "CodeCommit")
  (:s3 "S3"))

(smithy/sdk/shapes:define-enum source-type
    common-lisp:nil
  (:git "Git")
  (:zip "Zip"))

(smithy/sdk/shapes:define-structure status-codes common-lisp:nil
                                    ((status2xx :target-type nullable-integer
                                      :member-name "Status2xx")
                                     (status3xx :target-type nullable-integer
                                      :member-name "Status3xx")
                                     (status4xx :target-type nullable-integer
                                      :member-name "Status4xx")
                                     (status5xx :target-type nullable-integer
                                      :member-name "Status5xx"))
                                    (:shape-name "StatusCodes"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type supported-addon smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list supported-addon-list :member supported-addon)

(smithy/sdk/shapes:define-type supported-tier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list supported-tier-list :member supported-tier)

(smithy/sdk/shapes:define-input swap-environment-cnames-message common-lisp:nil
                                ((source-environment-id :target-type
                                  environment-id :member-name
                                  "SourceEnvironmentId")
                                 (source-environment-name :target-type
                                  environment-name :member-name
                                  "SourceEnvironmentName")
                                 (destination-environment-id :target-type
                                  environment-id :member-name
                                  "DestinationEnvironmentId")
                                 (destination-environment-name :target-type
                                  environment-name :member-name
                                  "DestinationEnvironmentName"))
                                (:shape-name "SwapEnvironmentCNAMEsMessage"))

(smithy/sdk/shapes:define-structure system-status common-lisp:nil
                                    ((cpuutilization :target-type
                                      cpuutilization :member-name
                                      "CPUUtilization")
                                     (load-average :target-type load-average
                                      :member-name "LoadAverage"))
                                    (:shape-name "SystemStatus"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :member-name
                                      "Key")
                                     (value :target-type tag-value :member-name
                                      "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-type terminate-env-force
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input terminate-environment-message common-lisp:nil
                                ((environment-id :target-type environment-id
                                  :member-name "EnvironmentId")
                                 (environment-name :target-type
                                  environment-name :member-name
                                  "EnvironmentName")
                                 (terminate-resources :target-type
                                  terminate-environment-resources :member-name
                                  "TerminateResources")
                                 (force-terminate :target-type force-terminate
                                  :member-name "ForceTerminate"))
                                (:shape-name "TerminateEnvironmentMessage"))

(smithy/sdk/shapes:define-type terminate-environment-resources
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type time-filter-end
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type time-filter-start
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-application-versions-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "TooManyApplicationVersionsException")
                                (:error-code 400)
                                (:base-class elastic-beanstalk-error))

(smithy/sdk/shapes:define-error too-many-applications-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TooManyApplicationsException")
                                (:error-name "TooManyApplicationsException")
                                (:error-code 400)
                                (:base-class elastic-beanstalk-error))

(smithy/sdk/shapes:define-error too-many-buckets-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TooManyBucketsException")
                                (:error-name "TooManyBucketsException")
                                (:error-code 400)
                                (:base-class elastic-beanstalk-error))

(smithy/sdk/shapes:define-error too-many-configuration-templates-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name
                                 "TooManyConfigurationTemplatesException")
                                (:error-name
                                 "TooManyConfigurationTemplatesException")
                                (:error-code 400)
                                (:base-class elastic-beanstalk-error))

(smithy/sdk/shapes:define-error too-many-environments-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TooManyEnvironmentsException")
                                (:error-name "TooManyEnvironmentsException")
                                (:error-code 400)
                                (:base-class elastic-beanstalk-error))

(smithy/sdk/shapes:define-error too-many-platforms-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TooManyPlatformsException")
                                (:error-name "TooManyPlatformsException")
                                (:error-code 400)
                                (:base-class elastic-beanstalk-error))

(smithy/sdk/shapes:define-error too-many-tags-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "message"))
                                (:shape-name "TooManyTagsException")
                                (:error-name "TooManyTagsException")
                                (:error-code 400)
                                (:base-class elastic-beanstalk-error))

(smithy/sdk/shapes:define-structure trigger common-lisp:nil
                                    ((name :target-type resource-id
                                      :member-name "Name"))
                                    (:shape-name "Trigger"))

(smithy/sdk/shapes:define-list trigger-list :member trigger)

(smithy/sdk/shapes:define-input update-application-message common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (description :target-type description
                                  :member-name "Description"))
                                (:shape-name "UpdateApplicationMessage"))

(smithy/sdk/shapes:define-input update-application-resource-lifecycle-message
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (resource-lifecycle-config :target-type
                                  application-resource-lifecycle-config
                                  :required common-lisp:t :member-name
                                  "ResourceLifecycleConfig"))
                                (:shape-name
                                 "UpdateApplicationResourceLifecycleMessage"))

(smithy/sdk/shapes:define-input update-application-version-message
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (version-label :target-type version-label
                                  :required common-lisp:t :member-name
                                  "VersionLabel")
                                 (description :target-type description
                                  :member-name "Description"))
                                (:shape-name "UpdateApplicationVersionMessage"))

(smithy/sdk/shapes:define-input update-configuration-template-message
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (template-name :target-type
                                  configuration-template-name :required
                                  common-lisp:t :member-name "TemplateName")
                                 (description :target-type description
                                  :member-name "Description")
                                 (option-settings :target-type
                                  configuration-option-settings-list
                                  :member-name "OptionSettings")
                                 (options-to-remove :target-type
                                  options-specifier-list :member-name
                                  "OptionsToRemove"))
                                (:shape-name
                                 "UpdateConfigurationTemplateMessage"))

(smithy/sdk/shapes:define-type update-date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input update-environment-message common-lisp:nil
                                ((application-name :target-type
                                  application-name :member-name
                                  "ApplicationName")
                                 (environment-id :target-type environment-id
                                  :member-name "EnvironmentId")
                                 (environment-name :target-type
                                  environment-name :member-name
                                  "EnvironmentName")
                                 (group-name :target-type group-name
                                  :member-name "GroupName")
                                 (description :target-type description
                                  :member-name "Description")
                                 (tier :target-type environment-tier
                                  :member-name "Tier")
                                 (version-label :target-type version-label
                                  :member-name "VersionLabel")
                                 (template-name :target-type
                                  configuration-template-name :member-name
                                  "TemplateName")
                                 (solution-stack-name :target-type
                                  solution-stack-name :member-name
                                  "SolutionStackName")
                                 (platform-arn :target-type platform-arn
                                  :member-name "PlatformArn")
                                 (option-settings :target-type
                                  configuration-option-settings-list
                                  :member-name "OptionSettings")
                                 (options-to-remove :target-type
                                  options-specifier-list :member-name
                                  "OptionsToRemove"))
                                (:shape-name "UpdateEnvironmentMessage"))

(smithy/sdk/shapes:define-input update-tags-for-resource-message
                                common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tags-to-add :target-type tag-list
                                  :member-name "TagsToAdd")
                                 (tags-to-remove :target-type tag-key-list
                                  :member-name "TagsToRemove"))
                                (:shape-name "UpdateTagsForResourceMessage"))

(smithy/sdk/shapes:define-type user-defined-option
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input validate-configuration-settings-message
                                common-lisp:nil
                                ((application-name :target-type
                                  application-name :required common-lisp:t
                                  :member-name "ApplicationName")
                                 (template-name :target-type
                                  configuration-template-name :member-name
                                  "TemplateName")
                                 (environment-name :target-type
                                  environment-name :member-name
                                  "EnvironmentName")
                                 (option-settings :target-type
                                  configuration-option-settings-list :required
                                  common-lisp:t :member-name "OptionSettings"))
                                (:shape-name
                                 "ValidateConfigurationSettingsMessage"))

(smithy/sdk/shapes:define-structure validation-message common-lisp:nil
                                    ((message :target-type
                                      validation-message-string :member-name
                                      "Message")
                                     (severity :target-type validation-severity
                                      :member-name "Severity")
                                     (namespace :target-type option-namespace
                                      :member-name "Namespace")
                                     (option-name :target-type
                                      configuration-option-name :member-name
                                      "OptionName"))
                                    (:shape-name "ValidationMessage"))

(smithy/sdk/shapes:define-type validation-message-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list validation-messages-list :member
                               validation-message)

(smithy/sdk/shapes:define-enum validation-severity
    common-lisp:nil
  (:error "error")
  (:warning "warning"))

(smithy/sdk/shapes:define-type version-label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list version-labels :member version-label)

(smithy/sdk/shapes:define-list version-labels-list :member version-label)

(smithy/sdk/shapes:define-type virtualization-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation abort-environment-update :shape-name
                                       "AbortEnvironmentUpdate" :input
                                       abort-environment-update-message :output
                                       common-lisp:null :errors
                                       (insufficient-privileges-exception))

(smithy/sdk/operation:define-operation apply-environment-managed-action
                                       :shape-name
                                       "ApplyEnvironmentManagedAction" :input
                                       apply-environment-managed-action-request
                                       :output
                                       apply-environment-managed-action-result
                                       :errors
                                       (elastic-beanstalk-service-exception
                                        managed-action-invalid-state-exception))

(smithy/sdk/operation:define-operation associate-environment-operations-role
                                       :shape-name
                                       "AssociateEnvironmentOperationsRole"
                                       :input
                                       associate-environment-operations-role-message
                                       :output common-lisp:null :errors
                                       (insufficient-privileges-exception))

(smithy/sdk/operation:define-operation check-dnsavailability :shape-name
                                       "CheckDNSAvailability" :input
                                       check-dnsavailability-message :output
                                       check-dnsavailability-result-message
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation compose-environments :shape-name
                                       "ComposeEnvironments" :input
                                       compose-environments-message :output
                                       environment-descriptions-message :errors
                                       (insufficient-privileges-exception
                                        too-many-environments-exception))

(smithy/sdk/operation:define-operation create-application :shape-name
                                       "CreateApplication" :input
                                       create-application-message :output
                                       application-description-message :errors
                                       (too-many-applications-exception))

(smithy/sdk/operation:define-operation create-application-version :shape-name
                                       "CreateApplicationVersion" :input
                                       create-application-version-message
                                       :output
                                       application-version-description-message
                                       :errors
                                       (code-build-not-in-service-region-exception
                                        insufficient-privileges-exception
                                        s3location-not-in-service-region-exception
                                        too-many-applications-exception
                                        too-many-application-versions-exception))

(smithy/sdk/operation:define-operation create-configuration-template
                                       :shape-name
                                       "CreateConfigurationTemplate" :input
                                       create-configuration-template-message
                                       :output
                                       configuration-settings-description
                                       :errors
                                       (insufficient-privileges-exception
                                        too-many-buckets-exception
                                        too-many-configuration-templates-exception))

(smithy/sdk/operation:define-operation create-environment :shape-name
                                       "CreateEnvironment" :input
                                       create-environment-message :output
                                       environment-description :errors
                                       (insufficient-privileges-exception
                                        too-many-environments-exception))

(smithy/sdk/operation:define-operation create-platform-version :shape-name
                                       "CreatePlatformVersion" :input
                                       create-platform-version-request :output
                                       create-platform-version-result :errors
                                       (elastic-beanstalk-service-exception
                                        insufficient-privileges-exception
                                        too-many-platforms-exception))

(smithy/sdk/operation:define-operation create-storage-location :shape-name
                                       "CreateStorageLocation" :input
                                       common-lisp:null :output
                                       create-storage-location-result-message
                                       :errors
                                       (insufficient-privileges-exception
                                        s3subscription-required-exception
                                        too-many-buckets-exception))

(smithy/sdk/operation:define-operation delete-application :shape-name
                                       "DeleteApplication" :input
                                       delete-application-message :output
                                       common-lisp:null :errors
                                       (operation-in-progress-exception))

(smithy/sdk/operation:define-operation delete-application-version :shape-name
                                       "DeleteApplicationVersion" :input
                                       delete-application-version-message
                                       :output common-lisp:null :errors
                                       (insufficient-privileges-exception
                                        operation-in-progress-exception
                                        s3location-not-in-service-region-exception
                                        source-bundle-deletion-exception))

(smithy/sdk/operation:define-operation delete-configuration-template
                                       :shape-name
                                       "DeleteConfigurationTemplate" :input
                                       delete-configuration-template-message
                                       :output common-lisp:null :errors
                                       (operation-in-progress-exception))

(smithy/sdk/operation:define-operation delete-environment-configuration
                                       :shape-name
                                       "DeleteEnvironmentConfiguration" :input
                                       delete-environment-configuration-message
                                       :output common-lisp:null :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation delete-platform-version :shape-name
                                       "DeletePlatformVersion" :input
                                       delete-platform-version-request :output
                                       delete-platform-version-result :errors
                                       (elastic-beanstalk-service-exception
                                        insufficient-privileges-exception
                                        operation-in-progress-exception
                                        platform-version-still-referenced-exception))

(smithy/sdk/operation:define-operation describe-account-attributes :shape-name
                                       "DescribeAccountAttributes" :input
                                       common-lisp:null :output
                                       describe-account-attributes-result
                                       :errors
                                       (insufficient-privileges-exception))

(smithy/sdk/operation:define-operation describe-application-versions
                                       :shape-name
                                       "DescribeApplicationVersions" :input
                                       describe-application-versions-message
                                       :output
                                       application-version-descriptions-message
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation describe-applications :shape-name
                                       "DescribeApplications" :input
                                       describe-applications-message :output
                                       application-descriptions-message :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-configuration-options
                                       :shape-name
                                       "DescribeConfigurationOptions" :input
                                       describe-configuration-options-message
                                       :output
                                       configuration-options-description
                                       :errors (too-many-buckets-exception))

(smithy/sdk/operation:define-operation describe-configuration-settings
                                       :shape-name
                                       "DescribeConfigurationSettings" :input
                                       describe-configuration-settings-message
                                       :output
                                       configuration-settings-descriptions
                                       :errors (too-many-buckets-exception))

(smithy/sdk/operation:define-operation describe-environment-health :shape-name
                                       "DescribeEnvironmentHealth" :input
                                       describe-environment-health-request
                                       :output
                                       describe-environment-health-result
                                       :errors
                                       (elastic-beanstalk-service-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation
 describe-environment-managed-action-history :shape-name
 "DescribeEnvironmentManagedActionHistory" :input
 describe-environment-managed-action-history-request :output
 describe-environment-managed-action-history-result :errors
 (elastic-beanstalk-service-exception))

(smithy/sdk/operation:define-operation describe-environment-managed-actions
                                       :shape-name
                                       "DescribeEnvironmentManagedActions"
                                       :input
                                       describe-environment-managed-actions-request
                                       :output
                                       describe-environment-managed-actions-result
                                       :errors
                                       (elastic-beanstalk-service-exception))

(smithy/sdk/operation:define-operation describe-environment-resources
                                       :shape-name
                                       "DescribeEnvironmentResources" :input
                                       describe-environment-resources-message
                                       :output
                                       environment-resource-descriptions-message
                                       :errors
                                       (insufficient-privileges-exception))

(smithy/sdk/operation:define-operation describe-environments :shape-name
                                       "DescribeEnvironments" :input
                                       describe-environments-message :output
                                       environment-descriptions-message :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-events :shape-name
                                       "DescribeEvents" :input
                                       describe-events-message :output
                                       event-descriptions-message :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation describe-instances-health :shape-name
                                       "DescribeInstancesHealth" :input
                                       describe-instances-health-request
                                       :output describe-instances-health-result
                                       :errors
                                       (elastic-beanstalk-service-exception
                                        invalid-request-exception))

(smithy/sdk/operation:define-operation describe-platform-version :shape-name
                                       "DescribePlatformVersion" :input
                                       describe-platform-version-request
                                       :output describe-platform-version-result
                                       :errors
                                       (elastic-beanstalk-service-exception
                                        insufficient-privileges-exception))

(smithy/sdk/operation:define-operation disassociate-environment-operations-role
                                       :shape-name
                                       "DisassociateEnvironmentOperationsRole"
                                       :input
                                       disassociate-environment-operations-role-message
                                       :output common-lisp:null :errors
                                       (insufficient-privileges-exception))

(smithy/sdk/operation:define-operation list-available-solution-stacks
                                       :shape-name
                                       "ListAvailableSolutionStacks" :input
                                       common-lisp:null :output
                                       list-available-solution-stacks-result-message
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation list-platform-branches :shape-name
                                       "ListPlatformBranches" :input
                                       list-platform-branches-request :output
                                       list-platform-branches-result :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation list-platform-versions :shape-name
                                       "ListPlatformVersions" :input
                                       list-platform-versions-request :output
                                       list-platform-versions-result :errors
                                       (elastic-beanstalk-service-exception
                                        insufficient-privileges-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-message :output
                                       resource-tags-description-message
                                       :errors
                                       (insufficient-privileges-exception
                                        resource-not-found-exception
                                        resource-type-not-supported-exception))

(smithy/sdk/operation:define-operation rebuild-environment :shape-name
                                       "RebuildEnvironment" :input
                                       rebuild-environment-message :output
                                       common-lisp:null :errors
                                       (insufficient-privileges-exception))

(smithy/sdk/operation:define-operation request-environment-info :shape-name
                                       "RequestEnvironmentInfo" :input
                                       request-environment-info-message :output
                                       common-lisp:null :errors common-lisp:nil)

(smithy/sdk/operation:define-operation restart-app-server :shape-name
                                       "RestartAppServer" :input
                                       restart-app-server-message :output
                                       common-lisp:null :errors common-lisp:nil)

(smithy/sdk/operation:define-operation retrieve-environment-info :shape-name
                                       "RetrieveEnvironmentInfo" :input
                                       retrieve-environment-info-message
                                       :output
                                       retrieve-environment-info-result-message
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation swap-environment-cnames :shape-name
                                       "SwapEnvironmentCNAMEs" :input
                                       swap-environment-cnames-message :output
                                       common-lisp:null :errors common-lisp:nil)

(smithy/sdk/operation:define-operation terminate-environment :shape-name
                                       "TerminateEnvironment" :input
                                       terminate-environment-message :output
                                       environment-description :errors
                                       (insufficient-privileges-exception))

(smithy/sdk/operation:define-operation update-application :shape-name
                                       "UpdateApplication" :input
                                       update-application-message :output
                                       application-description-message :errors
                                       common-lisp:nil)

(smithy/sdk/operation:define-operation update-application-resource-lifecycle
                                       :shape-name
                                       "UpdateApplicationResourceLifecycle"
                                       :input
                                       update-application-resource-lifecycle-message
                                       :output
                                       application-resource-lifecycle-description-message
                                       :errors
                                       (insufficient-privileges-exception))

(smithy/sdk/operation:define-operation update-application-version :shape-name
                                       "UpdateApplicationVersion" :input
                                       update-application-version-message
                                       :output
                                       application-version-description-message
                                       :errors common-lisp:nil)

(smithy/sdk/operation:define-operation update-configuration-template
                                       :shape-name
                                       "UpdateConfigurationTemplate" :input
                                       update-configuration-template-message
                                       :output
                                       configuration-settings-description
                                       :errors
                                       (insufficient-privileges-exception
                                        too-many-buckets-exception))

(smithy/sdk/operation:define-operation update-environment :shape-name
                                       "UpdateEnvironment" :input
                                       update-environment-message :output
                                       environment-description :errors
                                       (insufficient-privileges-exception
                                        too-many-buckets-exception))

(smithy/sdk/operation:define-operation update-tags-for-resource :shape-name
                                       "UpdateTagsForResource" :input
                                       update-tags-for-resource-message :output
                                       common-lisp:null :errors
                                       (insufficient-privileges-exception
                                        operation-in-progress-exception
                                        resource-not-found-exception
                                        resource-type-not-supported-exception
                                        too-many-tags-exception))

(smithy/sdk/operation:define-operation validate-configuration-settings
                                       :shape-name
                                       "ValidateConfigurationSettings" :input
                                       validate-configuration-settings-message
                                       :output
                                       configuration-settings-validation-messages
                                       :errors
                                       (insufficient-privileges-exception
                                        too-many-buckets-exception))
