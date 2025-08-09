(uiop/package:define-package #:pira/imagebuilder (:use)
                             (:export #:account-aggregation #:account-id
                              #:account-list
                              #:additional-instance-configuration #:ami
                              #:ami-distribution-configuration #:ami-list
                              #:ami-name-string #:arn #:boolean #:build-type
                              #:cancel-image-creation
                              #:cancel-lifecycle-execution #:client-token
                              #:component #:component-build-version-arn
                              #:component-configuration
                              #:component-configuration-list #:component-data
                              #:component-format #:component-parameter
                              #:component-parameter-description
                              #:component-parameter-detail
                              #:component-parameter-detail-list
                              #:component-parameter-list
                              #:component-parameter-name
                              #:component-parameter-type
                              #:component-parameter-value
                              #:component-parameter-value-list
                              #:component-state #:component-status
                              #:component-summary #:component-summary-list
                              #:component-type #:component-version
                              #:component-version-arn
                              #:component-version-arn-or-build-version-arn
                              #:component-version-list #:container
                              #:container-distribution-configuration
                              #:container-list #:container-recipe
                              #:container-recipe-arn #:container-recipe-summary
                              #:container-recipe-summary-list
                              #:container-repository-service #:container-type
                              #:create-component #:create-container-recipe
                              #:create-distribution-configuration
                              #:create-image #:create-image-pipeline
                              #:create-image-recipe
                              #:create-infrastructure-configuration
                              #:create-lifecycle-policy #:create-workflow
                              #:cvss-score #:cvss-score-adjustment
                              #:cvss-score-adjustment-list #:cvss-score-details
                              #:cvss-score-list #:date-time
                              #:date-time-timestamp #:delete-component
                              #:delete-container-recipe
                              #:delete-distribution-configuration
                              #:delete-image #:delete-image-pipeline
                              #:delete-image-recipe
                              #:delete-infrastructure-configuration
                              #:delete-lifecycle-policy #:delete-workflow
                              #:disk-image-format #:distribution
                              #:distribution-configuration
                              #:distribution-configuration-arn
                              #:distribution-configuration-summary
                              #:distribution-configuration-summary-list
                              #:distribution-list
                              #:distribution-timeout-minutes
                              #:docker-file-template
                              #:ebs-instance-block-device-specification
                              #:ebs-iops-integer #:ebs-volume-size-integer
                              #:ebs-volume-throughput #:ebs-volume-type
                              #:ecr-configuration #:empty-string
                              #:error-message #:fast-launch-configuration
                              #:fast-launch-configuration-list
                              #:fast-launch-launch-template-specification
                              #:fast-launch-snapshot-configuration #:filter
                              #:filter-list #:filter-name #:filter-value
                              #:filter-values #:get-component
                              #:get-component-policy #:get-container-recipe
                              #:get-container-recipe-policy
                              #:get-distribution-configuration #:get-image
                              #:get-image-pipeline #:get-image-policy
                              #:get-image-recipe #:get-image-recipe-policy
                              #:get-infrastructure-configuration
                              #:get-lifecycle-execution #:get-lifecycle-policy
                              #:get-marketplace-resource #:get-workflow
                              #:get-workflow-execution
                              #:get-workflow-step-execution
                              #:http-put-response-hop-limit #:http-tokens
                              #:image #:image-aggregation #:image-build-message
                              #:image-build-version-arn #:image-builder-arn
                              #:image-package #:image-package-list
                              #:image-pipeline #:image-pipeline-aggregation
                              #:image-pipeline-arn #:image-pipeline-list
                              #:image-recipe #:image-recipe-arn
                              #:image-recipe-summary
                              #:image-recipe-summary-list #:image-scan-finding
                              #:image-scan-finding-aggregation
                              #:image-scan-finding-aggregations-list
                              #:image-scan-findings-filter
                              #:image-scan-findings-filter-list
                              #:image-scan-findings-filter-values
                              #:image-scan-findings-list #:image-scan-state
                              #:image-scan-status
                              #:image-scanning-configuration #:image-source
                              #:image-state #:image-status #:image-summary
                              #:image-summary-list #:image-tests-configuration
                              #:image-tests-timeout-minutes #:image-type
                              #:image-version #:image-version-arn
                              #:image-version-arn-or-build-version-arn
                              #:image-version-list #:import-component
                              #:import-disk-image #:import-vm-image
                              #:infrastructure-configuration
                              #:infrastructure-configuration-arn
                              #:infrastructure-configuration-summary
                              #:infrastructure-configuration-summary-list
                              #:inline-component-data
                              #:inline-docker-file-template
                              #:inline-workflow-data #:inspector-score-details
                              #:instance-block-device-mapping
                              #:instance-block-device-mappings
                              #:instance-configuration
                              #:instance-metadata-options
                              #:instance-profile-name-type #:instance-type
                              #:instance-type-list
                              #:launch-permission-configuration
                              #:launch-template-configuration
                              #:launch-template-configuration-list
                              #:launch-template-id #:license-configuration-arn
                              #:license-configuration-arn-list
                              #:lifecycle-execution #:lifecycle-execution-id
                              #:lifecycle-execution-resource
                              #:lifecycle-execution-resource-action
                              #:lifecycle-execution-resource-action-name
                              #:lifecycle-execution-resource-list
                              #:lifecycle-execution-resource-state
                              #:lifecycle-execution-resource-status
                              #:lifecycle-execution-resources-impacted-summary
                              #:lifecycle-execution-snapshot-resource
                              #:lifecycle-execution-snapshot-resource-list
                              #:lifecycle-execution-state
                              #:lifecycle-execution-status
                              #:lifecycle-executions-list #:lifecycle-policy
                              #:lifecycle-policy-arn #:lifecycle-policy-detail
                              #:lifecycle-policy-detail-action
                              #:lifecycle-policy-detail-action-include-resources
                              #:lifecycle-policy-detail-action-type
                              #:lifecycle-policy-detail-exclusion-rules
                              #:lifecycle-policy-detail-exclusion-rules-amis
                              #:lifecycle-policy-detail-exclusion-rules-amis-last-launched
                              #:lifecycle-policy-detail-exclusion-rules-amis-last-launched-value
                              #:lifecycle-policy-detail-filter
                              #:lifecycle-policy-detail-filter-retain-at-least
                              #:lifecycle-policy-detail-filter-type
                              #:lifecycle-policy-detail-filter-value
                              #:lifecycle-policy-details
                              #:lifecycle-policy-resource-selection
                              #:lifecycle-policy-resource-selection-recipe
                              #:lifecycle-policy-resource-selection-recipes
                              #:lifecycle-policy-resource-type
                              #:lifecycle-policy-status
                              #:lifecycle-policy-summary
                              #:lifecycle-policy-summary-list
                              #:lifecycle-policy-time-unit
                              #:list-component-build-versions #:list-components
                              #:list-container-recipes
                              #:list-distribution-configurations
                              #:list-image-build-versions #:list-image-packages
                              #:list-image-pipeline-images
                              #:list-image-pipelines #:list-image-recipes
                              #:list-image-scan-finding-aggregations
                              #:list-image-scan-findings #:list-images
                              #:list-infrastructure-configurations
                              #:list-lifecycle-execution-resources
                              #:list-lifecycle-executions
                              #:list-lifecycle-policies
                              #:list-tags-for-resource
                              #:list-waiting-workflow-steps
                              #:list-workflow-build-versions
                              #:list-workflow-executions
                              #:list-workflow-step-executions #:list-workflows
                              #:logging #:marketplace-resource-location
                              #:marketplace-resource-type
                              #:max-parallel-launches #:non-empty-string
                              #:non-empty-string-list #:non-negative-double
                              #:nullable-boolean #:on-workflow-failure
                              #:organization-arn #:organization-arn-list
                              #:organizational-unit-arn
                              #:organizational-unit-arn-list #:os-version
                              #:os-version-list #:output-resources #:ownership
                              #:package-architecture #:package-epoch
                              #:package-vulnerability-details
                              #:pagination-token #:parallel-group
                              #:pipeline-execution-start-condition
                              #:pipeline-status #:placement #:platform
                              #:product-code-id #:product-code-list
                              #:product-code-list-item #:product-code-type
                              #:put-component-policy
                              #:put-container-recipe-policy #:put-image-policy
                              #:put-image-recipe-policy #:region-list
                              #:remediation #:remediation-recommendation
                              #:resource-name #:resource-policy-document
                              #:resource-state
                              #:resource-state-update-exclusion-rules
                              #:resource-state-update-include-resources
                              #:resource-status #:resource-tag-map
                              #:restricted-integer #:role-name-or-arn
                              #:s3export-configuration #:s3logs #:schedule
                              #:security-group-ids #:send-workflow-step-action
                              #:severity-count-number #:severity-counts
                              #:sns-topic-arn #:source-layer-hash
                              #:ssm-parameter-configuration
                              #:ssm-parameter-configuration-list
                              #:ssm-parameter-data-type #:ssm-parameter-name
                              #:start-image-pipeline-execution
                              #:start-resource-state-update #:string-list
                              #:systems-manager-agent #:tag-key #:tag-key-list
                              #:tag-map #:tag-resource #:tag-value
                              #:target-container-repository
                              #:target-resource-count #:tenancy-type #:timezone
                              #:untag-resource
                              #:update-distribution-configuration
                              #:update-image-pipeline
                              #:update-infrastructure-configuration
                              #:update-lifecycle-policy #:uri
                              #:user-data-override #:version-number
                              #:vulnerability-id #:vulnerability-id-aggregation
                              #:vulnerability-id-list #:vulnerable-package
                              #:vulnerable-package-list #:workflow
                              #:workflow-build-version-arn
                              #:workflow-configuration
                              #:workflow-configuration-list #:workflow-data
                              #:workflow-execution-id
                              #:workflow-execution-message
                              #:workflow-execution-metadata
                              #:workflow-execution-status
                              #:workflow-executions-list #:workflow-name-arn
                              #:workflow-parameter
                              #:workflow-parameter-description
                              #:workflow-parameter-detail
                              #:workflow-parameter-detail-list
                              #:workflow-parameter-list
                              #:workflow-parameter-name
                              #:workflow-parameter-type
                              #:workflow-parameter-value
                              #:workflow-parameter-value-list #:workflow-state
                              #:workflow-status #:workflow-step-action
                              #:workflow-step-action-type #:workflow-step-count
                              #:workflow-step-description
                              #:workflow-step-execution
                              #:workflow-step-execution-id
                              #:workflow-step-execution-list
                              #:workflow-step-execution-rollback-status
                              #:workflow-step-execution-status
                              #:workflow-step-executions-list
                              #:workflow-step-inputs #:workflow-step-message
                              #:workflow-step-metadata #:workflow-step-name
                              #:workflow-step-outputs
                              #:workflow-step-timeout-seconds-integer
                              #:workflow-summary #:workflow-summary-list
                              #:workflow-type #:workflow-version
                              #:workflow-version-arn
                              #:workflow-version-arn-or-build-version-arn
                              #:workflow-version-list
                              #:workflow-wildcard-version-arn #:imagebuilder))
(common-lisp:in-package #:pira/imagebuilder)

(smithy/sdk/service:define-service imagebuilder :shape-name "imagebuilder"
                                   :version "2019-12-02" :title
                                   "EC2 Image Builder" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "imagebuilder")
                                      ("arnNamespace" . "imagebuilder")
                                      ("cloudFormationName" . "Imagebuilder")
                                      ("cloudTrailEventSource"
                                       . "imagebuilder.amazonaws.com")
                                      ("endpointPrefix" . "imagebuilder"))
                                     ("aws.auth#sigv4"
                                      ("name" . "imagebuilder"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure account-aggregation common-lisp:nil
                                    ((account-id :target-type non-empty-string
                                      :member-name "accountId")
                                     (severity-counts :target-type
                                      severity-counts :member-name
                                      "severityCounts"))
                                    (:shape-name "AccountAggregation"))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list account-list :member account-id)

(smithy/sdk/shapes:define-structure additional-instance-configuration
                                    common-lisp:nil
                                    ((systems-manager-agent :target-type
                                      systems-manager-agent :member-name
                                      "systemsManagerAgent")
                                     (user-data-override :target-type
                                      user-data-override :member-name
                                      "userDataOverride"))
                                    (:shape-name
                                     "AdditionalInstanceConfiguration"))

(smithy/sdk/shapes:define-structure ami common-lisp:nil
                                    ((region :target-type non-empty-string
                                      :member-name "region")
                                     (image :target-type non-empty-string
                                      :member-name "image")
                                     (name :target-type non-empty-string
                                      :member-name "name")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (state :target-type image-state
                                      :member-name "state")
                                     (account-id :target-type non-empty-string
                                      :member-name "accountId"))
                                    (:shape-name "Ami"))

(smithy/sdk/shapes:define-structure ami-distribution-configuration
                                    common-lisp:nil
                                    ((name :target-type ami-name-string
                                      :member-name "name")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (target-account-ids :target-type
                                      account-list :member-name
                                      "targetAccountIds")
                                     (ami-tags :target-type tag-map
                                      :member-name "amiTags")
                                     (kms-key-id :target-type non-empty-string
                                      :member-name "kmsKeyId")
                                     (launch-permission :target-type
                                      launch-permission-configuration
                                      :member-name "launchPermission"))
                                    (:shape-name
                                     "AmiDistributionConfiguration"))

(smithy/sdk/shapes:define-list ami-list :member ami)

(smithy/sdk/shapes:define-type ami-name-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum build-type
    common-lisp:nil
  (:user-initiated "USER_INITIATED")
  (:scheduled "SCHEDULED")
  (:import "IMPORT")
  (:import-iso "IMPORT_ISO"))

(smithy/sdk/shapes:define-error call-rate-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "CallRateLimitExceededException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input cancel-image-creation-request common-lisp:nil
                                ((image-build-version-arn :target-type
                                  image-build-version-arn :required
                                  common-lisp:t :member-name
                                  "imageBuildVersionArn")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "CancelImageCreationRequest"))

(smithy/sdk/shapes:define-output cancel-image-creation-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (client-token :target-type client-token
                                   :member-name "clientToken")
                                  (image-build-version-arn :target-type
                                   image-build-version-arn :member-name
                                   "imageBuildVersionArn"))
                                 (:shape-name "CancelImageCreationResponse"))

(smithy/sdk/shapes:define-input cancel-lifecycle-execution-request
                                common-lisp:nil
                                ((lifecycle-execution-id :target-type
                                  lifecycle-execution-id :required
                                  common-lisp:t :member-name
                                  "lifecycleExecutionId")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "CancelLifecycleExecutionRequest"))

(smithy/sdk/shapes:define-output cancel-lifecycle-execution-response
                                 common-lisp:nil
                                 ((lifecycle-execution-id :target-type
                                   lifecycle-execution-id :member-name
                                   "lifecycleExecutionId"))
                                 (:shape-name
                                  "CancelLifecycleExecutionResponse"))

(smithy/sdk/shapes:define-error client-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ClientException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure component common-lisp:nil
                                    ((arn :target-type image-builder-arn
                                      :member-name "arn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (version :target-type version-number
                                      :member-name "version")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (change-description :target-type
                                      non-empty-string :member-name
                                      "changeDescription")
                                     (type :target-type component-type
                                      :member-name "type")
                                     (platform :target-type platform
                                      :member-name "platform")
                                     (supported-os-versions :target-type
                                      os-version-list :member-name
                                      "supportedOsVersions")
                                     (state :target-type component-state
                                      :member-name "state")
                                     (parameters :target-type
                                      component-parameter-detail-list
                                      :member-name "parameters")
                                     (owner :target-type non-empty-string
                                      :member-name "owner")
                                     (data :target-type component-data
                                      :member-name "data")
                                     (kms-key-id :target-type non-empty-string
                                      :member-name "kmsKeyId")
                                     (encrypted :target-type nullable-boolean
                                      :member-name "encrypted")
                                     (date-created :target-type date-time
                                      :member-name "dateCreated")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (publisher :target-type non-empty-string
                                      :member-name "publisher")
                                     (obfuscate :target-type boolean
                                      :member-name "obfuscate")
                                     (product-codes :target-type
                                      product-code-list :member-name
                                      "productCodes"))
                                    (:shape-name "Component"))

(smithy/sdk/shapes:define-type component-build-version-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure component-configuration common-lisp:nil
                                    ((component-arn :target-type
                                      component-version-arn-or-build-version-arn
                                      :required common-lisp:t :member-name
                                      "componentArn")
                                     (parameters :target-type
                                      component-parameter-list :member-name
                                      "parameters"))
                                    (:shape-name "ComponentConfiguration"))

(smithy/sdk/shapes:define-list component-configuration-list :member
                               component-configuration)

(smithy/sdk/shapes:define-type component-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum component-format
    common-lisp:nil
  (:shell "SHELL"))

(smithy/sdk/shapes:define-structure component-parameter common-lisp:nil
                                    ((name :target-type
                                      component-parameter-name :required
                                      common-lisp:t :member-name "name")
                                     (value :target-type
                                      component-parameter-value-list :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "ComponentParameter"))

(smithy/sdk/shapes:define-type component-parameter-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure component-parameter-detail common-lisp:nil
                                    ((name :target-type
                                      component-parameter-name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type
                                      component-parameter-type :required
                                      common-lisp:t :member-name "type")
                                     (default-value :target-type
                                      component-parameter-value-list
                                      :member-name "defaultValue")
                                     (description :target-type
                                      component-parameter-description
                                      :member-name "description"))
                                    (:shape-name "ComponentParameterDetail"))

(smithy/sdk/shapes:define-list component-parameter-detail-list :member
                               component-parameter-detail)

(smithy/sdk/shapes:define-list component-parameter-list :member
                               component-parameter)

(smithy/sdk/shapes:define-type component-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type component-parameter-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type component-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list component-parameter-value-list :member
                               component-parameter-value)

(smithy/sdk/shapes:define-structure component-state common-lisp:nil
                                    ((status :target-type component-status
                                      :member-name "status")
                                     (reason :target-type non-empty-string
                                      :member-name "reason"))
                                    (:shape-name "ComponentState"))

(smithy/sdk/shapes:define-enum component-status
    common-lisp:nil
  (:deprecated "DEPRECATED")
  (:disabled "DISABLED")
  (:active "ACTIVE"))

(smithy/sdk/shapes:define-structure component-summary common-lisp:nil
                                    ((arn :target-type image-builder-arn
                                      :member-name "arn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (version :target-type version-number
                                      :member-name "version")
                                     (platform :target-type platform
                                      :member-name "platform")
                                     (supported-os-versions :target-type
                                      os-version-list :member-name
                                      "supportedOsVersions")
                                     (state :target-type component-state
                                      :member-name "state")
                                     (type :target-type component-type
                                      :member-name "type")
                                     (owner :target-type non-empty-string
                                      :member-name "owner")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (change-description :target-type
                                      non-empty-string :member-name
                                      "changeDescription")
                                     (date-created :target-type date-time
                                      :member-name "dateCreated")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (publisher :target-type non-empty-string
                                      :member-name "publisher")
                                     (obfuscate :target-type boolean
                                      :member-name "obfuscate"))
                                    (:shape-name "ComponentSummary"))

(smithy/sdk/shapes:define-list component-summary-list :member component-summary)

(smithy/sdk/shapes:define-enum component-type
    common-lisp:nil
  (:build "BUILD")
  (:test "TEST"))

(smithy/sdk/shapes:define-structure component-version common-lisp:nil
                                    ((arn :target-type image-builder-arn
                                      :member-name "arn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (version :target-type version-number
                                      :member-name "version")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (platform :target-type platform
                                      :member-name "platform")
                                     (supported-os-versions :target-type
                                      os-version-list :member-name
                                      "supportedOsVersions")
                                     (type :target-type component-type
                                      :member-name "type")
                                     (owner :target-type non-empty-string
                                      :member-name "owner")
                                     (date-created :target-type date-time
                                      :member-name "dateCreated")
                                     (status :target-type component-status
                                      :member-name "status")
                                     (product-codes :target-type
                                      product-code-list :member-name
                                      "productCodes"))
                                    (:shape-name "ComponentVersion"))

(smithy/sdk/shapes:define-type component-version-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type component-version-arn-or-build-version-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list component-version-list :member component-version)

(smithy/sdk/shapes:define-structure container common-lisp:nil
                                    ((region :target-type non-empty-string
                                      :member-name "region")
                                     (image-uris :target-type string-list
                                      :member-name "imageUris"))
                                    (:shape-name "Container"))

(smithy/sdk/shapes:define-structure container-distribution-configuration
                                    common-lisp:nil
                                    ((description :target-type non-empty-string
                                      :member-name "description")
                                     (container-tags :target-type string-list
                                      :member-name "containerTags")
                                     (target-repository :target-type
                                      target-container-repository :required
                                      common-lisp:t :member-name
                                      "targetRepository"))
                                    (:shape-name
                                     "ContainerDistributionConfiguration"))

(smithy/sdk/shapes:define-list container-list :member container)

(smithy/sdk/shapes:define-structure container-recipe common-lisp:nil
                                    ((arn :target-type image-builder-arn
                                      :member-name "arn")
                                     (container-type :target-type
                                      container-type :member-name
                                      "containerType")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (platform :target-type platform
                                      :member-name "platform")
                                     (owner :target-type non-empty-string
                                      :member-name "owner")
                                     (version :target-type version-number
                                      :member-name "version")
                                     (components :target-type
                                      component-configuration-list :member-name
                                      "components")
                                     (instance-configuration :target-type
                                      instance-configuration :member-name
                                      "instanceConfiguration")
                                     (dockerfile-template-data :target-type
                                      docker-file-template :member-name
                                      "dockerfileTemplateData")
                                     (kms-key-id :target-type non-empty-string
                                      :member-name "kmsKeyId")
                                     (encrypted :target-type nullable-boolean
                                      :member-name "encrypted")
                                     (parent-image :target-type
                                      non-empty-string :member-name
                                      "parentImage")
                                     (date-created :target-type date-time
                                      :member-name "dateCreated")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (working-directory :target-type
                                      non-empty-string :member-name
                                      "workingDirectory")
                                     (target-repository :target-type
                                      target-container-repository :member-name
                                      "targetRepository"))
                                    (:shape-name "ContainerRecipe"))

(smithy/sdk/shapes:define-type container-recipe-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure container-recipe-summary common-lisp:nil
                                    ((arn :target-type image-builder-arn
                                      :member-name "arn")
                                     (container-type :target-type
                                      container-type :member-name
                                      "containerType")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (platform :target-type platform
                                      :member-name "platform")
                                     (owner :target-type non-empty-string
                                      :member-name "owner")
                                     (parent-image :target-type
                                      non-empty-string :member-name
                                      "parentImage")
                                     (date-created :target-type date-time
                                      :member-name "dateCreated")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ContainerRecipeSummary"))

(smithy/sdk/shapes:define-list container-recipe-summary-list :member
                               container-recipe-summary)

(smithy/sdk/shapes:define-enum container-repository-service
    common-lisp:nil
  (:ecr "ECR"))

(smithy/sdk/shapes:define-enum container-type
    common-lisp:nil
  (:docker "DOCKER"))

(smithy/sdk/shapes:define-input create-component-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "name")
                                 (semantic-version :target-type version-number
                                  :required common-lisp:t :member-name
                                  "semanticVersion")
                                 (description :target-type non-empty-string
                                  :member-name "description")
                                 (change-description :target-type
                                  non-empty-string :member-name
                                  "changeDescription")
                                 (platform :target-type platform :required
                                  common-lisp:t :member-name "platform")
                                 (supported-os-versions :target-type
                                  os-version-list :member-name
                                  "supportedOsVersions")
                                 (data :target-type inline-component-data
                                  :member-name "data")
                                 (uri :target-type uri :member-name "uri")
                                 (kms-key-id :target-type non-empty-string
                                  :member-name "kmsKeyId")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "CreateComponentRequest"))

(smithy/sdk/shapes:define-output create-component-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (client-token :target-type client-token
                                   :member-name "clientToken")
                                  (component-build-version-arn :target-type
                                   component-build-version-arn :member-name
                                   "componentBuildVersionArn"))
                                 (:shape-name "CreateComponentResponse"))

(smithy/sdk/shapes:define-input create-container-recipe-request common-lisp:nil
                                ((container-type :target-type container-type
                                  :required common-lisp:t :member-name
                                  "containerType")
                                 (name :target-type resource-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type non-empty-string
                                  :member-name "description")
                                 (semantic-version :target-type version-number
                                  :required common-lisp:t :member-name
                                  "semanticVersion")
                                 (components :target-type
                                  component-configuration-list :required
                                  common-lisp:t :member-name "components")
                                 (instance-configuration :target-type
                                  instance-configuration :member-name
                                  "instanceConfiguration")
                                 (dockerfile-template-data :target-type
                                  inline-docker-file-template :member-name
                                  "dockerfileTemplateData")
                                 (dockerfile-template-uri :target-type uri
                                  :member-name "dockerfileTemplateUri")
                                 (platform-override :target-type platform
                                  :member-name "platformOverride")
                                 (image-os-version-override :target-type
                                  non-empty-string :member-name
                                  "imageOsVersionOverride")
                                 (parent-image :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "parentImage")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (working-directory :target-type
                                  non-empty-string :member-name
                                  "workingDirectory")
                                 (target-repository :target-type
                                  target-container-repository :required
                                  common-lisp:t :member-name
                                  "targetRepository")
                                 (kms-key-id :target-type non-empty-string
                                  :member-name "kmsKeyId")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "CreateContainerRecipeRequest"))

(smithy/sdk/shapes:define-output create-container-recipe-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (client-token :target-type client-token
                                   :member-name "clientToken")
                                  (container-recipe-arn :target-type
                                   container-recipe-arn :member-name
                                   "containerRecipeArn"))
                                 (:shape-name "CreateContainerRecipeResponse"))

(smithy/sdk/shapes:define-input create-distribution-configuration-request
                                common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type non-empty-string
                                  :member-name "description")
                                 (distributions :target-type distribution-list
                                  :required common-lisp:t :member-name
                                  "distributions")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name
                                 "CreateDistributionConfigurationRequest"))

(smithy/sdk/shapes:define-output create-distribution-configuration-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (client-token :target-type client-token
                                   :member-name "clientToken")
                                  (distribution-configuration-arn :target-type
                                   distribution-configuration-arn :member-name
                                   "distributionConfigurationArn"))
                                 (:shape-name
                                  "CreateDistributionConfigurationResponse"))

(smithy/sdk/shapes:define-input create-image-pipeline-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type non-empty-string
                                  :member-name "description")
                                 (image-recipe-arn :target-type
                                  image-recipe-arn :member-name
                                  "imageRecipeArn")
                                 (container-recipe-arn :target-type
                                  container-recipe-arn :member-name
                                  "containerRecipeArn")
                                 (infrastructure-configuration-arn :target-type
                                  infrastructure-configuration-arn :required
                                  common-lisp:t :member-name
                                  "infrastructureConfigurationArn")
                                 (distribution-configuration-arn :target-type
                                  distribution-configuration-arn :member-name
                                  "distributionConfigurationArn")
                                 (image-tests-configuration :target-type
                                  image-tests-configuration :member-name
                                  "imageTestsConfiguration")
                                 (enhanced-image-metadata-enabled :target-type
                                  nullable-boolean :member-name
                                  "enhancedImageMetadataEnabled")
                                 (schedule :target-type schedule :member-name
                                  "schedule")
                                 (status :target-type pipeline-status
                                  :member-name "status")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken")
                                 (image-scanning-configuration :target-type
                                  image-scanning-configuration :member-name
                                  "imageScanningConfiguration")
                                 (workflows :target-type
                                  workflow-configuration-list :member-name
                                  "workflows")
                                 (execution-role :target-type role-name-or-arn
                                  :member-name "executionRole"))
                                (:shape-name "CreateImagePipelineRequest"))

(smithy/sdk/shapes:define-output create-image-pipeline-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (client-token :target-type client-token
                                   :member-name "clientToken")
                                  (image-pipeline-arn :target-type
                                   image-pipeline-arn :member-name
                                   "imagePipelineArn"))
                                 (:shape-name "CreateImagePipelineResponse"))

(smithy/sdk/shapes:define-input create-image-recipe-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type non-empty-string
                                  :member-name "description")
                                 (semantic-version :target-type version-number
                                  :required common-lisp:t :member-name
                                  "semanticVersion")
                                 (components :target-type
                                  component-configuration-list :required
                                  common-lisp:t :member-name "components")
                                 (parent-image :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "parentImage")
                                 (block-device-mappings :target-type
                                  instance-block-device-mappings :member-name
                                  "blockDeviceMappings")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (working-directory :target-type
                                  non-empty-string :member-name
                                  "workingDirectory")
                                 (additional-instance-configuration
                                  :target-type
                                  additional-instance-configuration
                                  :member-name
                                  "additionalInstanceConfiguration")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "CreateImageRecipeRequest"))

(smithy/sdk/shapes:define-output create-image-recipe-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (client-token :target-type client-token
                                   :member-name "clientToken")
                                  (image-recipe-arn :target-type
                                   image-recipe-arn :member-name
                                   "imageRecipeArn"))
                                 (:shape-name "CreateImageRecipeResponse"))

(smithy/sdk/shapes:define-input create-image-request common-lisp:nil
                                ((image-recipe-arn :target-type
                                  image-recipe-arn :member-name
                                  "imageRecipeArn")
                                 (container-recipe-arn :target-type
                                  container-recipe-arn :member-name
                                  "containerRecipeArn")
                                 (distribution-configuration-arn :target-type
                                  distribution-configuration-arn :member-name
                                  "distributionConfigurationArn")
                                 (infrastructure-configuration-arn :target-type
                                  infrastructure-configuration-arn :required
                                  common-lisp:t :member-name
                                  "infrastructureConfigurationArn")
                                 (image-tests-configuration :target-type
                                  image-tests-configuration :member-name
                                  "imageTestsConfiguration")
                                 (enhanced-image-metadata-enabled :target-type
                                  nullable-boolean :member-name
                                  "enhancedImageMetadataEnabled")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken")
                                 (image-scanning-configuration :target-type
                                  image-scanning-configuration :member-name
                                  "imageScanningConfiguration")
                                 (workflows :target-type
                                  workflow-configuration-list :member-name
                                  "workflows")
                                 (execution-role :target-type role-name-or-arn
                                  :member-name "executionRole"))
                                (:shape-name "CreateImageRequest"))

(smithy/sdk/shapes:define-output create-image-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (client-token :target-type client-token
                                   :member-name "clientToken")
                                  (image-build-version-arn :target-type
                                   image-build-version-arn :member-name
                                   "imageBuildVersionArn"))
                                 (:shape-name "CreateImageResponse"))

(smithy/sdk/shapes:define-input create-infrastructure-configuration-request
                                common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type non-empty-string
                                  :member-name "description")
                                 (instance-types :target-type
                                  instance-type-list :member-name
                                  "instanceTypes")
                                 (instance-profile-name :target-type
                                  instance-profile-name-type :required
                                  common-lisp:t :member-name
                                  "instanceProfileName")
                                 (security-group-ids :target-type
                                  security-group-ids :member-name
                                  "securityGroupIds")
                                 (subnet-id :target-type non-empty-string
                                  :member-name "subnetId")
                                 (logging :target-type logging :member-name
                                  "logging")
                                 (key-pair :target-type non-empty-string
                                  :member-name "keyPair")
                                 (terminate-instance-on-failure :target-type
                                  nullable-boolean :member-name
                                  "terminateInstanceOnFailure")
                                 (sns-topic-arn :target-type sns-topic-arn
                                  :member-name "snsTopicArn")
                                 (resource-tags :target-type resource-tag-map
                                  :member-name "resourceTags")
                                 (instance-metadata-options :target-type
                                  instance-metadata-options :member-name
                                  "instanceMetadataOptions")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (placement :target-type placement :member-name
                                  "placement")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name
                                 "CreateInfrastructureConfigurationRequest"))

(smithy/sdk/shapes:define-output create-infrastructure-configuration-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (client-token :target-type client-token
                                   :member-name "clientToken")
                                  (infrastructure-configuration-arn
                                   :target-type
                                   infrastructure-configuration-arn
                                   :member-name
                                   "infrastructureConfigurationArn"))
                                 (:shape-name
                                  "CreateInfrastructureConfigurationResponse"))

(smithy/sdk/shapes:define-input create-lifecycle-policy-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type non-empty-string
                                  :member-name "description")
                                 (status :target-type lifecycle-policy-status
                                  :member-name "status")
                                 (execution-role :target-type role-name-or-arn
                                  :required common-lisp:t :member-name
                                  "executionRole")
                                 (resource-type :target-type
                                  lifecycle-policy-resource-type :required
                                  common-lisp:t :member-name "resourceType")
                                 (policy-details :target-type
                                  lifecycle-policy-details :required
                                  common-lisp:t :member-name "policyDetails")
                                 (resource-selection :target-type
                                  lifecycle-policy-resource-selection :required
                                  common-lisp:t :member-name
                                  "resourceSelection")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "CreateLifecyclePolicyRequest"))

(smithy/sdk/shapes:define-output create-lifecycle-policy-response
                                 common-lisp:nil
                                 ((client-token :target-type client-token
                                   :member-name "clientToken")
                                  (lifecycle-policy-arn :target-type
                                   lifecycle-policy-arn :member-name
                                   "lifecyclePolicyArn"))
                                 (:shape-name "CreateLifecyclePolicyResponse"))

(smithy/sdk/shapes:define-input create-workflow-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "name")
                                 (semantic-version :target-type version-number
                                  :required common-lisp:t :member-name
                                  "semanticVersion")
                                 (description :target-type non-empty-string
                                  :member-name "description")
                                 (change-description :target-type
                                  non-empty-string :member-name
                                  "changeDescription")
                                 (data :target-type inline-workflow-data
                                  :member-name "data")
                                 (uri :target-type uri :member-name "uri")
                                 (kms-key-id :target-type non-empty-string
                                  :member-name "kmsKeyId")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken")
                                 (type :target-type workflow-type :required
                                  common-lisp:t :member-name "type"))
                                (:shape-name "CreateWorkflowRequest"))

(smithy/sdk/shapes:define-output create-workflow-response common-lisp:nil
                                 ((client-token :target-type client-token
                                   :member-name "clientToken")
                                  (workflow-build-version-arn :target-type
                                   workflow-build-version-arn :member-name
                                   "workflowBuildVersionArn"))
                                 (:shape-name "CreateWorkflowResponse"))

(smithy/sdk/shapes:define-structure cvss-score common-lisp:nil
                                    ((base-score :target-type
                                      non-negative-double :member-name
                                      "baseScore")
                                     (scoring-vector :target-type
                                      non-empty-string :member-name
                                      "scoringVector")
                                     (version :target-type non-empty-string
                                      :member-name "version")
                                     (source :target-type non-empty-string
                                      :member-name "source"))
                                    (:shape-name "CvssScore"))

(smithy/sdk/shapes:define-structure cvss-score-adjustment common-lisp:nil
                                    ((metric :target-type non-empty-string
                                      :member-name "metric")
                                     (reason :target-type non-empty-string
                                      :member-name "reason"))
                                    (:shape-name "CvssScoreAdjustment"))

(smithy/sdk/shapes:define-list cvss-score-adjustment-list :member
                               cvss-score-adjustment)

(smithy/sdk/shapes:define-structure cvss-score-details common-lisp:nil
                                    ((score-source :target-type
                                      non-empty-string :member-name
                                      "scoreSource")
                                     (cvss-source :target-type non-empty-string
                                      :member-name "cvssSource")
                                     (version :target-type non-empty-string
                                      :member-name "version")
                                     (score :target-type non-negative-double
                                      :member-name "score")
                                     (scoring-vector :target-type
                                      non-empty-string :member-name
                                      "scoringVector")
                                     (adjustments :target-type
                                      cvss-score-adjustment-list :member-name
                                      "adjustments"))
                                    (:shape-name "CvssScoreDetails"))

(smithy/sdk/shapes:define-list cvss-score-list :member cvss-score)

(smithy/sdk/shapes:define-type date-time smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type date-time-timestamp
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-input delete-component-request common-lisp:nil
                                ((component-build-version-arn :target-type
                                  component-build-version-arn :required
                                  common-lisp:t :member-name
                                  "componentBuildVersionArn" :http-query
                                  "componentBuildVersionArn"))
                                (:shape-name "DeleteComponentRequest"))

(smithy/sdk/shapes:define-output delete-component-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (component-build-version-arn :target-type
                                   component-build-version-arn :member-name
                                   "componentBuildVersionArn"))
                                 (:shape-name "DeleteComponentResponse"))

(smithy/sdk/shapes:define-input delete-container-recipe-request common-lisp:nil
                                ((container-recipe-arn :target-type
                                  container-recipe-arn :required common-lisp:t
                                  :member-name "containerRecipeArn" :http-query
                                  "containerRecipeArn"))
                                (:shape-name "DeleteContainerRecipeRequest"))

(smithy/sdk/shapes:define-output delete-container-recipe-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (container-recipe-arn :target-type
                                   container-recipe-arn :member-name
                                   "containerRecipeArn"))
                                 (:shape-name "DeleteContainerRecipeResponse"))

(smithy/sdk/shapes:define-input delete-distribution-configuration-request
                                common-lisp:nil
                                ((distribution-configuration-arn :target-type
                                  distribution-configuration-arn :required
                                  common-lisp:t :member-name
                                  "distributionConfigurationArn" :http-query
                                  "distributionConfigurationArn"))
                                (:shape-name
                                 "DeleteDistributionConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-distribution-configuration-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (distribution-configuration-arn :target-type
                                   distribution-configuration-arn :member-name
                                   "distributionConfigurationArn"))
                                 (:shape-name
                                  "DeleteDistributionConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-image-pipeline-request common-lisp:nil
                                ((image-pipeline-arn :target-type
                                  image-pipeline-arn :required common-lisp:t
                                  :member-name "imagePipelineArn" :http-query
                                  "imagePipelineArn"))
                                (:shape-name "DeleteImagePipelineRequest"))

(smithy/sdk/shapes:define-output delete-image-pipeline-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (image-pipeline-arn :target-type
                                   image-pipeline-arn :member-name
                                   "imagePipelineArn"))
                                 (:shape-name "DeleteImagePipelineResponse"))

(smithy/sdk/shapes:define-input delete-image-recipe-request common-lisp:nil
                                ((image-recipe-arn :target-type
                                  image-recipe-arn :required common-lisp:t
                                  :member-name "imageRecipeArn" :http-query
                                  "imageRecipeArn"))
                                (:shape-name "DeleteImageRecipeRequest"))

(smithy/sdk/shapes:define-output delete-image-recipe-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (image-recipe-arn :target-type
                                   image-recipe-arn :member-name
                                   "imageRecipeArn"))
                                 (:shape-name "DeleteImageRecipeResponse"))

(smithy/sdk/shapes:define-input delete-image-request common-lisp:nil
                                ((image-build-version-arn :target-type
                                  image-build-version-arn :required
                                  common-lisp:t :member-name
                                  "imageBuildVersionArn" :http-query
                                  "imageBuildVersionArn"))
                                (:shape-name "DeleteImageRequest"))

(smithy/sdk/shapes:define-output delete-image-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (image-build-version-arn :target-type
                                   image-build-version-arn :member-name
                                   "imageBuildVersionArn"))
                                 (:shape-name "DeleteImageResponse"))

(smithy/sdk/shapes:define-input delete-infrastructure-configuration-request
                                common-lisp:nil
                                ((infrastructure-configuration-arn :target-type
                                  infrastructure-configuration-arn :required
                                  common-lisp:t :member-name
                                  "infrastructureConfigurationArn" :http-query
                                  "infrastructureConfigurationArn"))
                                (:shape-name
                                 "DeleteInfrastructureConfigurationRequest"))

(smithy/sdk/shapes:define-output delete-infrastructure-configuration-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (infrastructure-configuration-arn
                                   :target-type
                                   infrastructure-configuration-arn
                                   :member-name
                                   "infrastructureConfigurationArn"))
                                 (:shape-name
                                  "DeleteInfrastructureConfigurationResponse"))

(smithy/sdk/shapes:define-input delete-lifecycle-policy-request common-lisp:nil
                                ((lifecycle-policy-arn :target-type
                                  lifecycle-policy-arn :required common-lisp:t
                                  :member-name "lifecyclePolicyArn" :http-query
                                  "lifecyclePolicyArn"))
                                (:shape-name "DeleteLifecyclePolicyRequest"))

(smithy/sdk/shapes:define-output delete-lifecycle-policy-response
                                 common-lisp:nil
                                 ((lifecycle-policy-arn :target-type
                                   lifecycle-policy-arn :member-name
                                   "lifecyclePolicyArn"))
                                 (:shape-name "DeleteLifecyclePolicyResponse"))

(smithy/sdk/shapes:define-input delete-workflow-request common-lisp:nil
                                ((workflow-build-version-arn :target-type
                                  workflow-build-version-arn :required
                                  common-lisp:t :member-name
                                  "workflowBuildVersionArn" :http-query
                                  "workflowBuildVersionArn"))
                                (:shape-name "DeleteWorkflowRequest"))

(smithy/sdk/shapes:define-output delete-workflow-response common-lisp:nil
                                 ((workflow-build-version-arn :target-type
                                   workflow-build-version-arn :member-name
                                   "workflowBuildVersionArn"))
                                 (:shape-name "DeleteWorkflowResponse"))

(smithy/sdk/shapes:define-enum disk-image-format
    common-lisp:nil
  (:vmdk "VMDK")
  (:raw "RAW")
  (:vhd "VHD"))

(smithy/sdk/shapes:define-structure distribution common-lisp:nil
                                    ((region :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "region")
                                     (ami-distribution-configuration
                                      :target-type
                                      ami-distribution-configuration
                                      :member-name
                                      "amiDistributionConfiguration")
                                     (container-distribution-configuration
                                      :target-type
                                      container-distribution-configuration
                                      :member-name
                                      "containerDistributionConfiguration")
                                     (license-configuration-arns :target-type
                                      license-configuration-arn-list
                                      :member-name "licenseConfigurationArns")
                                     (launch-template-configurations
                                      :target-type
                                      launch-template-configuration-list
                                      :member-name
                                      "launchTemplateConfigurations")
                                     (s3export-configuration :target-type
                                      s3export-configuration :member-name
                                      "s3ExportConfiguration")
                                     (fast-launch-configurations :target-type
                                      fast-launch-configuration-list
                                      :member-name "fastLaunchConfigurations")
                                     (ssm-parameter-configurations :target-type
                                      ssm-parameter-configuration-list
                                      :member-name
                                      "ssmParameterConfigurations"))
                                    (:shape-name "Distribution"))

(smithy/sdk/shapes:define-structure distribution-configuration common-lisp:nil
                                    ((arn :target-type image-builder-arn
                                      :member-name "arn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (distributions :target-type
                                      distribution-list :member-name
                                      "distributions")
                                     (timeout-minutes :target-type
                                      distribution-timeout-minutes :required
                                      common-lisp:t :member-name
                                      "timeoutMinutes")
                                     (date-created :target-type date-time
                                      :member-name "dateCreated")
                                     (date-updated :target-type date-time
                                      :member-name "dateUpdated")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "DistributionConfiguration"))

(smithy/sdk/shapes:define-type distribution-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure distribution-configuration-summary
                                    common-lisp:nil
                                    ((arn :target-type image-builder-arn
                                      :member-name "arn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (date-created :target-type date-time
                                      :member-name "dateCreated")
                                     (date-updated :target-type date-time
                                      :member-name "dateUpdated")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (regions :target-type region-list
                                      :member-name "regions"))
                                    (:shape-name
                                     "DistributionConfigurationSummary"))

(smithy/sdk/shapes:define-list distribution-configuration-summary-list :member
                               distribution-configuration-summary)

(smithy/sdk/shapes:define-list distribution-list :member distribution)

(smithy/sdk/shapes:define-type distribution-timeout-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type docker-file-template
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ebs-instance-block-device-specification
                                    common-lisp:nil
                                    ((encrypted :target-type nullable-boolean
                                      :member-name "encrypted")
                                     (delete-on-termination :target-type
                                      nullable-boolean :member-name
                                      "deleteOnTermination")
                                     (iops :target-type ebs-iops-integer
                                      :member-name "iops")
                                     (kms-key-id :target-type non-empty-string
                                      :member-name "kmsKeyId")
                                     (snapshot-id :target-type non-empty-string
                                      :member-name "snapshotId")
                                     (volume-size :target-type
                                      ebs-volume-size-integer :member-name
                                      "volumeSize")
                                     (volume-type :target-type ebs-volume-type
                                      :member-name "volumeType")
                                     (throughput :target-type
                                      ebs-volume-throughput :member-name
                                      "throughput"))
                                    (:shape-name
                                     "EbsInstanceBlockDeviceSpecification"))

(smithy/sdk/shapes:define-type ebs-iops-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type ebs-volume-size-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type ebs-volume-throughput
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum ebs-volume-type
    common-lisp:nil
  (:standard "standard")
  (:io1 "io1")
  (:io2 "io2")
  (:gp2 "gp2")
  (:gp3 "gp3")
  (:sc1 "sc1")
  (:st1 "st1"))

(smithy/sdk/shapes:define-structure ecr-configuration common-lisp:nil
                                    ((repository-name :target-type
                                      non-empty-string :member-name
                                      "repositoryName")
                                     (container-tags :target-type string-list
                                      :member-name "containerTags"))
                                    (:shape-name "EcrConfiguration"))

(smithy/sdk/shapes:define-type empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure fast-launch-configuration common-lisp:nil
                                    ((enabled :target-type boolean :required
                                      common-lisp:t :member-name "enabled")
                                     (snapshot-configuration :target-type
                                      fast-launch-snapshot-configuration
                                      :member-name "snapshotConfiguration")
                                     (max-parallel-launches :target-type
                                      max-parallel-launches :member-name
                                      "maxParallelLaunches")
                                     (launch-template :target-type
                                      fast-launch-launch-template-specification
                                      :member-name "launchTemplate")
                                     (account-id :target-type account-id
                                      :member-name "accountId"))
                                    (:shape-name "FastLaunchConfiguration"))

(smithy/sdk/shapes:define-list fast-launch-configuration-list :member
                               fast-launch-configuration)

(smithy/sdk/shapes:define-structure fast-launch-launch-template-specification
                                    common-lisp:nil
                                    ((launch-template-id :target-type
                                      launch-template-id :member-name
                                      "launchTemplateId")
                                     (launch-template-name :target-type
                                      non-empty-string :member-name
                                      "launchTemplateName")
                                     (launch-template-version :target-type
                                      non-empty-string :member-name
                                      "launchTemplateVersion"))
                                    (:shape-name
                                     "FastLaunchLaunchTemplateSpecification"))

(smithy/sdk/shapes:define-structure fast-launch-snapshot-configuration
                                    common-lisp:nil
                                    ((target-resource-count :target-type
                                      target-resource-count :member-name
                                      "targetResourceCount"))
                                    (:shape-name
                                     "FastLaunchSnapshotConfiguration"))

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((name :target-type filter-name
                                      :member-name "name")
                                     (values :target-type filter-values
                                      :member-name "values"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-list filter-list :member filter)

(smithy/sdk/shapes:define-type filter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-values :member filter-value)

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input get-component-policy-request common-lisp:nil
                                ((component-arn :target-type
                                  component-build-version-arn :required
                                  common-lisp:t :member-name "componentArn"
                                  :http-query "componentArn"))
                                (:shape-name "GetComponentPolicyRequest"))

(smithy/sdk/shapes:define-output get-component-policy-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (policy :target-type resource-policy-document
                                   :member-name "policy"))
                                 (:shape-name "GetComponentPolicyResponse"))

(smithy/sdk/shapes:define-input get-component-request common-lisp:nil
                                ((component-build-version-arn :target-type
                                  component-version-arn-or-build-version-arn
                                  :required common-lisp:t :member-name
                                  "componentBuildVersionArn" :http-query
                                  "componentBuildVersionArn"))
                                (:shape-name "GetComponentRequest"))

(smithy/sdk/shapes:define-output get-component-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (component :target-type component
                                   :member-name "component"))
                                 (:shape-name "GetComponentResponse"))

(smithy/sdk/shapes:define-input get-container-recipe-policy-request
                                common-lisp:nil
                                ((container-recipe-arn :target-type
                                  container-recipe-arn :required common-lisp:t
                                  :member-name "containerRecipeArn" :http-query
                                  "containerRecipeArn"))
                                (:shape-name "GetContainerRecipePolicyRequest"))

(smithy/sdk/shapes:define-output get-container-recipe-policy-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (policy :target-type resource-policy-document
                                   :member-name "policy"))
                                 (:shape-name
                                  "GetContainerRecipePolicyResponse"))

(smithy/sdk/shapes:define-input get-container-recipe-request common-lisp:nil
                                ((container-recipe-arn :target-type
                                  container-recipe-arn :required common-lisp:t
                                  :member-name "containerRecipeArn" :http-query
                                  "containerRecipeArn"))
                                (:shape-name "GetContainerRecipeRequest"))

(smithy/sdk/shapes:define-output get-container-recipe-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (container-recipe :target-type
                                   container-recipe :member-name
                                   "containerRecipe"))
                                 (:shape-name "GetContainerRecipeResponse"))

(smithy/sdk/shapes:define-input get-distribution-configuration-request
                                common-lisp:nil
                                ((distribution-configuration-arn :target-type
                                  distribution-configuration-arn :required
                                  common-lisp:t :member-name
                                  "distributionConfigurationArn" :http-query
                                  "distributionConfigurationArn"))
                                (:shape-name
                                 "GetDistributionConfigurationRequest"))

(smithy/sdk/shapes:define-output get-distribution-configuration-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (distribution-configuration :target-type
                                   distribution-configuration :member-name
                                   "distributionConfiguration"))
                                 (:shape-name
                                  "GetDistributionConfigurationResponse"))

(smithy/sdk/shapes:define-input get-image-pipeline-request common-lisp:nil
                                ((image-pipeline-arn :target-type
                                  image-pipeline-arn :required common-lisp:t
                                  :member-name "imagePipelineArn" :http-query
                                  "imagePipelineArn"))
                                (:shape-name "GetImagePipelineRequest"))

(smithy/sdk/shapes:define-output get-image-pipeline-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (image-pipeline :target-type image-pipeline
                                   :member-name "imagePipeline"))
                                 (:shape-name "GetImagePipelineResponse"))

(smithy/sdk/shapes:define-input get-image-policy-request common-lisp:nil
                                ((image-arn :target-type
                                  image-build-version-arn :required
                                  common-lisp:t :member-name "imageArn"
                                  :http-query "imageArn"))
                                (:shape-name "GetImagePolicyRequest"))

(smithy/sdk/shapes:define-output get-image-policy-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (policy :target-type resource-policy-document
                                   :member-name "policy"))
                                 (:shape-name "GetImagePolicyResponse"))

(smithy/sdk/shapes:define-input get-image-recipe-policy-request common-lisp:nil
                                ((image-recipe-arn :target-type
                                  image-recipe-arn :required common-lisp:t
                                  :member-name "imageRecipeArn" :http-query
                                  "imageRecipeArn"))
                                (:shape-name "GetImageRecipePolicyRequest"))

(smithy/sdk/shapes:define-output get-image-recipe-policy-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (policy :target-type resource-policy-document
                                   :member-name "policy"))
                                 (:shape-name "GetImageRecipePolicyResponse"))

(smithy/sdk/shapes:define-input get-image-recipe-request common-lisp:nil
                                ((image-recipe-arn :target-type
                                  image-recipe-arn :required common-lisp:t
                                  :member-name "imageRecipeArn" :http-query
                                  "imageRecipeArn"))
                                (:shape-name "GetImageRecipeRequest"))

(smithy/sdk/shapes:define-output get-image-recipe-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (image-recipe :target-type image-recipe
                                   :member-name "imageRecipe"))
                                 (:shape-name "GetImageRecipeResponse"))

(smithy/sdk/shapes:define-input get-image-request common-lisp:nil
                                ((image-build-version-arn :target-type
                                  image-version-arn-or-build-version-arn
                                  :required common-lisp:t :member-name
                                  "imageBuildVersionArn" :http-query
                                  "imageBuildVersionArn"))
                                (:shape-name "GetImageRequest"))

(smithy/sdk/shapes:define-output get-image-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (image :target-type image :member-name
                                   "image"))
                                 (:shape-name "GetImageResponse"))

(smithy/sdk/shapes:define-input get-infrastructure-configuration-request
                                common-lisp:nil
                                ((infrastructure-configuration-arn :target-type
                                  infrastructure-configuration-arn :required
                                  common-lisp:t :member-name
                                  "infrastructureConfigurationArn" :http-query
                                  "infrastructureConfigurationArn"))
                                (:shape-name
                                 "GetInfrastructureConfigurationRequest"))

(smithy/sdk/shapes:define-output get-infrastructure-configuration-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (infrastructure-configuration :target-type
                                   infrastructure-configuration :member-name
                                   "infrastructureConfiguration"))
                                 (:shape-name
                                  "GetInfrastructureConfigurationResponse"))

(smithy/sdk/shapes:define-input get-lifecycle-execution-request common-lisp:nil
                                ((lifecycle-execution-id :target-type
                                  lifecycle-execution-id :required
                                  common-lisp:t :member-name
                                  "lifecycleExecutionId" :http-query
                                  "lifecycleExecutionId"))
                                (:shape-name "GetLifecycleExecutionRequest"))

(smithy/sdk/shapes:define-output get-lifecycle-execution-response
                                 common-lisp:nil
                                 ((lifecycle-execution :target-type
                                   lifecycle-execution :member-name
                                   "lifecycleExecution"))
                                 (:shape-name "GetLifecycleExecutionResponse"))

(smithy/sdk/shapes:define-input get-lifecycle-policy-request common-lisp:nil
                                ((lifecycle-policy-arn :target-type
                                  lifecycle-policy-arn :required common-lisp:t
                                  :member-name "lifecyclePolicyArn" :http-query
                                  "lifecyclePolicyArn"))
                                (:shape-name "GetLifecyclePolicyRequest"))

(smithy/sdk/shapes:define-output get-lifecycle-policy-response common-lisp:nil
                                 ((lifecycle-policy :target-type
                                   lifecycle-policy :member-name
                                   "lifecyclePolicy"))
                                 (:shape-name "GetLifecyclePolicyResponse"))

(smithy/sdk/shapes:define-input get-marketplace-resource-request
                                common-lisp:nil
                                ((resource-type :target-type
                                  marketplace-resource-type :required
                                  common-lisp:t :member-name "resourceType")
                                 (resource-arn :target-type image-builder-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn")
                                 (resource-location :target-type
                                  marketplace-resource-location :member-name
                                  "resourceLocation"))
                                (:shape-name "GetMarketplaceResourceRequest"))

(smithy/sdk/shapes:define-output get-marketplace-resource-response
                                 common-lisp:nil
                                 ((resource-arn :target-type image-builder-arn
                                   :member-name "resourceArn")
                                  (url :target-type non-empty-string
                                   :member-name "url")
                                  (data :target-type non-empty-string
                                   :member-name "data"))
                                 (:shape-name "GetMarketplaceResourceResponse"))

(smithy/sdk/shapes:define-input get-workflow-execution-request common-lisp:nil
                                ((workflow-execution-id :target-type
                                  workflow-execution-id :required common-lisp:t
                                  :member-name "workflowExecutionId"
                                  :http-query "workflowExecutionId"))
                                (:shape-name "GetWorkflowExecutionRequest"))

(smithy/sdk/shapes:define-output get-workflow-execution-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (workflow-build-version-arn :target-type
                                   workflow-build-version-arn :member-name
                                   "workflowBuildVersionArn")
                                  (workflow-execution-id :target-type
                                   workflow-execution-id :member-name
                                   "workflowExecutionId")
                                  (image-build-version-arn :target-type
                                   image-build-version-arn :member-name
                                   "imageBuildVersionArn")
                                  (type :target-type workflow-type :member-name
                                   "type")
                                  (status :target-type
                                   workflow-execution-status :member-name
                                   "status")
                                  (message :target-type
                                   workflow-execution-message :member-name
                                   "message")
                                  (total-step-count :target-type
                                   workflow-step-count :member-name
                                   "totalStepCount")
                                  (total-steps-succeeded :target-type
                                   workflow-step-count :member-name
                                   "totalStepsSucceeded")
                                  (total-steps-failed :target-type
                                   workflow-step-count :member-name
                                   "totalStepsFailed")
                                  (total-steps-skipped :target-type
                                   workflow-step-count :member-name
                                   "totalStepsSkipped")
                                  (start-time :target-type date-time
                                   :member-name "startTime")
                                  (end-time :target-type date-time :member-name
                                   "endTime")
                                  (parallel-group :target-type parallel-group
                                   :member-name "parallelGroup"))
                                 (:shape-name "GetWorkflowExecutionResponse"))

(smithy/sdk/shapes:define-input get-workflow-request common-lisp:nil
                                ((workflow-build-version-arn :target-type
                                  workflow-version-arn-or-build-version-arn
                                  :required common-lisp:t :member-name
                                  "workflowBuildVersionArn" :http-query
                                  "workflowBuildVersionArn"))
                                (:shape-name "GetWorkflowRequest"))

(smithy/sdk/shapes:define-output get-workflow-response common-lisp:nil
                                 ((workflow :target-type workflow :member-name
                                   "workflow"))
                                 (:shape-name "GetWorkflowResponse"))

(smithy/sdk/shapes:define-input get-workflow-step-execution-request
                                common-lisp:nil
                                ((step-execution-id :target-type
                                  workflow-step-execution-id :required
                                  common-lisp:t :member-name "stepExecutionId"
                                  :http-query "stepExecutionId"))
                                (:shape-name "GetWorkflowStepExecutionRequest"))

(smithy/sdk/shapes:define-output get-workflow-step-execution-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (step-execution-id :target-type
                                   workflow-step-execution-id :member-name
                                   "stepExecutionId")
                                  (workflow-build-version-arn :target-type
                                   workflow-build-version-arn :member-name
                                   "workflowBuildVersionArn")
                                  (workflow-execution-id :target-type
                                   workflow-execution-id :member-name
                                   "workflowExecutionId")
                                  (image-build-version-arn :target-type
                                   image-build-version-arn :member-name
                                   "imageBuildVersionArn")
                                  (name :target-type workflow-step-name
                                   :member-name "name")
                                  (description :target-type
                                   workflow-step-description :member-name
                                   "description")
                                  (action :target-type workflow-step-action
                                   :member-name "action")
                                  (status :target-type
                                   workflow-step-execution-status :member-name
                                   "status")
                                  (rollback-status :target-type
                                   workflow-step-execution-rollback-status
                                   :member-name "rollbackStatus")
                                  (message :target-type workflow-step-message
                                   :member-name "message")
                                  (inputs :target-type workflow-step-inputs
                                   :member-name "inputs")
                                  (outputs :target-type workflow-step-outputs
                                   :member-name "outputs")
                                  (start-time :target-type date-time
                                   :member-name "startTime")
                                  (end-time :target-type date-time :member-name
                                   "endTime")
                                  (on-failure :target-type non-empty-string
                                   :member-name "onFailure")
                                  (timeout-seconds :target-type
                                   workflow-step-timeout-seconds-integer
                                   :member-name "timeoutSeconds"))
                                 (:shape-name
                                  "GetWorkflowStepExecutionResponse"))

(smithy/sdk/shapes:define-type http-put-response-hop-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type http-tokens smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error idempotent-parameter-mismatch-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "IdempotentParameterMismatchException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure image common-lisp:nil
                                    ((arn :target-type image-builder-arn
                                      :member-name "arn")
                                     (type :target-type image-type :member-name
                                      "type")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (version :target-type version-number
                                      :member-name "version")
                                     (platform :target-type platform
                                      :member-name "platform")
                                     (enhanced-image-metadata-enabled
                                      :target-type nullable-boolean
                                      :member-name
                                      "enhancedImageMetadataEnabled")
                                     (os-version :target-type os-version
                                      :member-name "osVersion")
                                     (state :target-type image-state
                                      :member-name "state")
                                     (image-recipe :target-type image-recipe
                                      :member-name "imageRecipe")
                                     (container-recipe :target-type
                                      container-recipe :member-name
                                      "containerRecipe")
                                     (source-pipeline-name :target-type
                                      resource-name :member-name
                                      "sourcePipelineName")
                                     (source-pipeline-arn :target-type arn
                                      :member-name "sourcePipelineArn")
                                     (infrastructure-configuration :target-type
                                      infrastructure-configuration :member-name
                                      "infrastructureConfiguration")
                                     (distribution-configuration :target-type
                                      distribution-configuration :member-name
                                      "distributionConfiguration")
                                     (image-tests-configuration :target-type
                                      image-tests-configuration :member-name
                                      "imageTestsConfiguration")
                                     (date-created :target-type date-time
                                      :member-name "dateCreated")
                                     (output-resources :target-type
                                      output-resources :member-name
                                      "outputResources")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (build-type :target-type build-type
                                      :member-name "buildType")
                                     (image-source :target-type image-source
                                      :member-name "imageSource")
                                     (scan-state :target-type image-scan-state
                                      :member-name "scanState")
                                     (image-scanning-configuration :target-type
                                      image-scanning-configuration :member-name
                                      "imageScanningConfiguration")
                                     (deprecation-time :target-type
                                      date-time-timestamp :member-name
                                      "deprecationTime")
                                     (lifecycle-execution-id :target-type
                                      lifecycle-execution-id :member-name
                                      "lifecycleExecutionId")
                                     (execution-role :target-type
                                      role-name-or-arn :member-name
                                      "executionRole")
                                     (workflows :target-type
                                      workflow-configuration-list :member-name
                                      "workflows"))
                                    (:shape-name "Image"))

(smithy/sdk/shapes:define-structure image-aggregation common-lisp:nil
                                    ((image-build-version-arn :target-type
                                      image-build-version-arn :member-name
                                      "imageBuildVersionArn")
                                     (severity-counts :target-type
                                      severity-counts :member-name
                                      "severityCounts"))
                                    (:shape-name "ImageAggregation"))

(smithy/sdk/shapes:define-type image-build-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type image-build-version-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type image-builder-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure image-package common-lisp:nil
                                    ((package-name :target-type
                                      non-empty-string :member-name
                                      "packageName")
                                     (package-version :target-type
                                      non-empty-string :member-name
                                      "packageVersion"))
                                    (:shape-name "ImagePackage"))

(smithy/sdk/shapes:define-list image-package-list :member image-package)

(smithy/sdk/shapes:define-structure image-pipeline common-lisp:nil
                                    ((arn :target-type image-builder-arn
                                      :member-name "arn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (platform :target-type platform
                                      :member-name "platform")
                                     (enhanced-image-metadata-enabled
                                      :target-type nullable-boolean
                                      :member-name
                                      "enhancedImageMetadataEnabled")
                                     (image-recipe-arn :target-type arn
                                      :member-name "imageRecipeArn")
                                     (container-recipe-arn :target-type arn
                                      :member-name "containerRecipeArn")
                                     (infrastructure-configuration-arn
                                      :target-type arn :member-name
                                      "infrastructureConfigurationArn")
                                     (distribution-configuration-arn
                                      :target-type arn :member-name
                                      "distributionConfigurationArn")
                                     (image-tests-configuration :target-type
                                      image-tests-configuration :member-name
                                      "imageTestsConfiguration")
                                     (schedule :target-type schedule
                                      :member-name "schedule")
                                     (status :target-type pipeline-status
                                      :member-name "status")
                                     (date-created :target-type date-time
                                      :member-name "dateCreated")
                                     (date-updated :target-type date-time
                                      :member-name "dateUpdated")
                                     (date-last-run :target-type date-time
                                      :member-name "dateLastRun")
                                     (date-next-run :target-type date-time
                                      :member-name "dateNextRun")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (image-scanning-configuration :target-type
                                      image-scanning-configuration :member-name
                                      "imageScanningConfiguration")
                                     (execution-role :target-type
                                      role-name-or-arn :member-name
                                      "executionRole")
                                     (workflows :target-type
                                      workflow-configuration-list :member-name
                                      "workflows"))
                                    (:shape-name "ImagePipeline"))

(smithy/sdk/shapes:define-structure image-pipeline-aggregation common-lisp:nil
                                    ((image-pipeline-arn :target-type
                                      image-pipeline-arn :member-name
                                      "imagePipelineArn")
                                     (severity-counts :target-type
                                      severity-counts :member-name
                                      "severityCounts"))
                                    (:shape-name "ImagePipelineAggregation"))

(smithy/sdk/shapes:define-type image-pipeline-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list image-pipeline-list :member image-pipeline)

(smithy/sdk/shapes:define-structure image-recipe common-lisp:nil
                                    ((arn :target-type image-builder-arn
                                      :member-name "arn")
                                     (type :target-type image-type :member-name
                                      "type")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (platform :target-type platform
                                      :member-name "platform")
                                     (owner :target-type non-empty-string
                                      :member-name "owner")
                                     (version :target-type version-number
                                      :member-name "version")
                                     (components :target-type
                                      component-configuration-list :member-name
                                      "components")
                                     (parent-image :target-type
                                      non-empty-string :member-name
                                      "parentImage")
                                     (block-device-mappings :target-type
                                      instance-block-device-mappings
                                      :member-name "blockDeviceMappings")
                                     (date-created :target-type date-time
                                      :member-name "dateCreated")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (working-directory :target-type
                                      non-empty-string :member-name
                                      "workingDirectory")
                                     (additional-instance-configuration
                                      :target-type
                                      additional-instance-configuration
                                      :member-name
                                      "additionalInstanceConfiguration"))
                                    (:shape-name "ImageRecipe"))

(smithy/sdk/shapes:define-type image-recipe-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure image-recipe-summary common-lisp:nil
                                    ((arn :target-type image-builder-arn
                                      :member-name "arn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (platform :target-type platform
                                      :member-name "platform")
                                     (owner :target-type non-empty-string
                                      :member-name "owner")
                                     (parent-image :target-type
                                      non-empty-string :member-name
                                      "parentImage")
                                     (date-created :target-type date-time
                                      :member-name "dateCreated")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ImageRecipeSummary"))

(smithy/sdk/shapes:define-list image-recipe-summary-list :member
                               image-recipe-summary)

(smithy/sdk/shapes:define-structure image-scan-finding common-lisp:nil
                                    ((aws-account-id :target-type
                                      non-empty-string :member-name
                                      "awsAccountId")
                                     (image-build-version-arn :target-type
                                      image-build-version-arn :member-name
                                      "imageBuildVersionArn")
                                     (image-pipeline-arn :target-type
                                      image-pipeline-arn :member-name
                                      "imagePipelineArn")
                                     (type :target-type non-empty-string
                                      :member-name "type")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (title :target-type non-empty-string
                                      :member-name "title")
                                     (remediation :target-type remediation
                                      :member-name "remediation")
                                     (severity :target-type non-empty-string
                                      :member-name "severity")
                                     (first-observed-at :target-type
                                      date-time-timestamp :member-name
                                      "firstObservedAt")
                                     (updated-at :target-type
                                      date-time-timestamp :member-name
                                      "updatedAt")
                                     (inspector-score :target-type
                                      non-negative-double :member-name
                                      "inspectorScore")
                                     (inspector-score-details :target-type
                                      inspector-score-details :member-name
                                      "inspectorScoreDetails")
                                     (package-vulnerability-details
                                      :target-type
                                      package-vulnerability-details
                                      :member-name
                                      "packageVulnerabilityDetails")
                                     (fix-available :target-type
                                      non-empty-string :member-name
                                      "fixAvailable"))
                                    (:shape-name "ImageScanFinding"))

(smithy/sdk/shapes:define-structure image-scan-finding-aggregation
                                    common-lisp:nil
                                    ((account-aggregation :target-type
                                      account-aggregation :member-name
                                      "accountAggregation")
                                     (image-aggregation :target-type
                                      image-aggregation :member-name
                                      "imageAggregation")
                                     (image-pipeline-aggregation :target-type
                                      image-pipeline-aggregation :member-name
                                      "imagePipelineAggregation")
                                     (vulnerability-id-aggregation :target-type
                                      vulnerability-id-aggregation :member-name
                                      "vulnerabilityIdAggregation"))
                                    (:shape-name "ImageScanFindingAggregation"))

(smithy/sdk/shapes:define-list image-scan-finding-aggregations-list :member
                               image-scan-finding-aggregation)

(smithy/sdk/shapes:define-structure image-scan-findings-filter common-lisp:nil
                                    ((name :target-type filter-name
                                      :member-name "name")
                                     (values :target-type
                                      image-scan-findings-filter-values
                                      :member-name "values"))
                                    (:shape-name "ImageScanFindingsFilter"))

(smithy/sdk/shapes:define-list image-scan-findings-filter-list :member
                               image-scan-findings-filter)

(smithy/sdk/shapes:define-list image-scan-findings-filter-values :member
                               filter-value)

(smithy/sdk/shapes:define-list image-scan-findings-list :member
                               image-scan-finding)

(smithy/sdk/shapes:define-structure image-scan-state common-lisp:nil
                                    ((status :target-type image-scan-status
                                      :member-name "status")
                                     (reason :target-type non-empty-string
                                      :member-name "reason"))
                                    (:shape-name "ImageScanState"))

(smithy/sdk/shapes:define-enum image-scan-status
    common-lisp:nil
  (:pending "PENDING")
  (:scanning "SCANNING")
  (:collecting "COLLECTING")
  (:completed "COMPLETED")
  (:abandoned "ABANDONED")
  (:failed "FAILED")
  (:timed-out "TIMED_OUT"))

(smithy/sdk/shapes:define-structure image-scanning-configuration
                                    common-lisp:nil
                                    ((image-scanning-enabled :target-type
                                      nullable-boolean :member-name
                                      "imageScanningEnabled")
                                     (ecr-configuration :target-type
                                      ecr-configuration :member-name
                                      "ecrConfiguration"))
                                    (:shape-name "ImageScanningConfiguration"))

(smithy/sdk/shapes:define-enum image-source
    common-lisp:nil
  (:amazon-managed "AMAZON_MANAGED")
  (:aws-marketplace "AWS_MARKETPLACE")
  (:imported "IMPORTED")
  (:custom "CUSTOM"))

(smithy/sdk/shapes:define-structure image-state common-lisp:nil
                                    ((status :target-type image-status
                                      :member-name "status")
                                     (reason :target-type non-empty-string
                                      :member-name "reason"))
                                    (:shape-name "ImageState"))

(smithy/sdk/shapes:define-enum image-status
    common-lisp:nil
  (:pending "PENDING")
  (:creating "CREATING")
  (:building "BUILDING")
  (:testing "TESTING")
  (:distributing "DISTRIBUTING")
  (:integrating "INTEGRATING")
  (:available "AVAILABLE")
  (:cancelled "CANCELLED")
  (:failed "FAILED")
  (:deprecated "DEPRECATED")
  (:deleted "DELETED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure image-summary common-lisp:nil
                                    ((arn :target-type image-builder-arn
                                      :member-name "arn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (type :target-type image-type :member-name
                                      "type")
                                     (version :target-type version-number
                                      :member-name "version")
                                     (platform :target-type platform
                                      :member-name "platform")
                                     (os-version :target-type os-version
                                      :member-name "osVersion")
                                     (state :target-type image-state
                                      :member-name "state")
                                     (owner :target-type non-empty-string
                                      :member-name "owner")
                                     (date-created :target-type date-time
                                      :member-name "dateCreated")
                                     (output-resources :target-type
                                      output-resources :member-name
                                      "outputResources")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (build-type :target-type build-type
                                      :member-name "buildType")
                                     (image-source :target-type image-source
                                      :member-name "imageSource")
                                     (deprecation-time :target-type
                                      date-time-timestamp :member-name
                                      "deprecationTime")
                                     (lifecycle-execution-id :target-type
                                      lifecycle-execution-id :member-name
                                      "lifecycleExecutionId"))
                                    (:shape-name "ImageSummary"))

(smithy/sdk/shapes:define-list image-summary-list :member image-summary)

(smithy/sdk/shapes:define-structure image-tests-configuration common-lisp:nil
                                    ((image-tests-enabled :target-type
                                      nullable-boolean :member-name
                                      "imageTestsEnabled")
                                     (timeout-minutes :target-type
                                      image-tests-timeout-minutes :member-name
                                      "timeoutMinutes"))
                                    (:shape-name "ImageTestsConfiguration"))

(smithy/sdk/shapes:define-type image-tests-timeout-minutes
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum image-type
    common-lisp:nil
  (:ami "AMI")
  (:docker "DOCKER"))

(smithy/sdk/shapes:define-structure image-version common-lisp:nil
                                    ((arn :target-type image-builder-arn
                                      :member-name "arn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (type :target-type image-type :member-name
                                      "type")
                                     (version :target-type version-number
                                      :member-name "version")
                                     (platform :target-type platform
                                      :member-name "platform")
                                     (os-version :target-type os-version
                                      :member-name "osVersion")
                                     (owner :target-type non-empty-string
                                      :member-name "owner")
                                     (date-created :target-type date-time
                                      :member-name "dateCreated")
                                     (build-type :target-type build-type
                                      :member-name "buildType")
                                     (image-source :target-type image-source
                                      :member-name "imageSource"))
                                    (:shape-name "ImageVersion"))

(smithy/sdk/shapes:define-type image-version-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type image-version-arn-or-build-version-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list image-version-list :member image-version)

(smithy/sdk/shapes:define-input import-component-request common-lisp:nil
                                ((name :target-type resource-name :required
                                  common-lisp:t :member-name "name")
                                 (semantic-version :target-type version-number
                                  :required common-lisp:t :member-name
                                  "semanticVersion")
                                 (description :target-type non-empty-string
                                  :member-name "description")
                                 (change-description :target-type
                                  non-empty-string :member-name
                                  "changeDescription")
                                 (type :target-type component-type :required
                                  common-lisp:t :member-name "type")
                                 (format :target-type component-format
                                  :required common-lisp:t :member-name
                                  "format")
                                 (platform :target-type platform :required
                                  common-lisp:t :member-name "platform")
                                 (data :target-type non-empty-string
                                  :member-name "data")
                                 (uri :target-type uri :member-name "uri")
                                 (kms-key-id :target-type non-empty-string
                                  :member-name "kmsKeyId")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "ImportComponentRequest"))

(smithy/sdk/shapes:define-output import-component-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (client-token :target-type client-token
                                   :member-name "clientToken")
                                  (component-build-version-arn :target-type
                                   component-build-version-arn :member-name
                                   "componentBuildVersionArn"))
                                 (:shape-name "ImportComponentResponse"))

(smithy/sdk/shapes:define-input import-disk-image-request common-lisp:nil
                                ((name :target-type non-empty-string :required
                                  common-lisp:t :member-name "name")
                                 (semantic-version :target-type version-number
                                  :required common-lisp:t :member-name
                                  "semanticVersion")
                                 (description :target-type non-empty-string
                                  :member-name "description")
                                 (platform :target-type non-empty-string
                                  :required common-lisp:t :member-name
                                  "platform")
                                 (os-version :target-type os-version :required
                                  common-lisp:t :member-name "osVersion")
                                 (execution-role :target-type role-name-or-arn
                                  :member-name "executionRole")
                                 (infrastructure-configuration-arn :target-type
                                  infrastructure-configuration-arn :required
                                  common-lisp:t :member-name
                                  "infrastructureConfigurationArn")
                                 (uri :target-type uri :required common-lisp:t
                                  :member-name "uri")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "ImportDiskImageRequest"))

(smithy/sdk/shapes:define-output import-disk-image-response common-lisp:nil
                                 ((client-token :target-type client-token
                                   :member-name "clientToken")
                                  (image-build-version-arn :target-type
                                   image-build-version-arn :member-name
                                   "imageBuildVersionArn"))
                                 (:shape-name "ImportDiskImageResponse"))

(smithy/sdk/shapes:define-input import-vm-image-request common-lisp:nil
                                ((name :target-type non-empty-string :required
                                  common-lisp:t :member-name "name")
                                 (semantic-version :target-type version-number
                                  :required common-lisp:t :member-name
                                  "semanticVersion")
                                 (description :target-type non-empty-string
                                  :member-name "description")
                                 (platform :target-type platform :required
                                  common-lisp:t :member-name "platform")
                                 (os-version :target-type os-version
                                  :member-name "osVersion")
                                 (vm-import-task-id :target-type
                                  non-empty-string :required common-lisp:t
                                  :member-name "vmImportTaskId")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "ImportVmImageRequest"))

(smithy/sdk/shapes:define-output import-vm-image-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (image-arn :target-type arn :member-name
                                   "imageArn")
                                  (client-token :target-type client-token
                                   :member-name "clientToken"))
                                 (:shape-name "ImportVmImageResponse"))

(smithy/sdk/shapes:define-structure infrastructure-configuration
                                    common-lisp:nil
                                    ((arn :target-type image-builder-arn
                                      :member-name "arn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (instance-types :target-type
                                      instance-type-list :member-name
                                      "instanceTypes")
                                     (instance-profile-name :target-type
                                      instance-profile-name-type :member-name
                                      "instanceProfileName")
                                     (security-group-ids :target-type
                                      security-group-ids :member-name
                                      "securityGroupIds")
                                     (subnet-id :target-type non-empty-string
                                      :member-name "subnetId")
                                     (logging :target-type logging :member-name
                                      "logging")
                                     (key-pair :target-type non-empty-string
                                      :member-name "keyPair")
                                     (terminate-instance-on-failure
                                      :target-type nullable-boolean
                                      :member-name
                                      "terminateInstanceOnFailure")
                                     (sns-topic-arn :target-type
                                      non-empty-string :member-name
                                      "snsTopicArn")
                                     (date-created :target-type date-time
                                      :member-name "dateCreated")
                                     (date-updated :target-type date-time
                                      :member-name "dateUpdated")
                                     (resource-tags :target-type
                                      resource-tag-map :member-name
                                      "resourceTags")
                                     (instance-metadata-options :target-type
                                      instance-metadata-options :member-name
                                      "instanceMetadataOptions")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (placement :target-type placement
                                      :member-name "placement"))
                                    (:shape-name "InfrastructureConfiguration"))

(smithy/sdk/shapes:define-type infrastructure-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure infrastructure-configuration-summary
                                    common-lisp:nil
                                    ((arn :target-type image-builder-arn
                                      :member-name "arn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (date-created :target-type date-time
                                      :member-name "dateCreated")
                                     (date-updated :target-type date-time
                                      :member-name "dateUpdated")
                                     (resource-tags :target-type
                                      resource-tag-map :member-name
                                      "resourceTags")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (instance-types :target-type
                                      instance-type-list :member-name
                                      "instanceTypes")
                                     (instance-profile-name :target-type
                                      instance-profile-name-type :member-name
                                      "instanceProfileName")
                                     (placement :target-type placement
                                      :member-name "placement"))
                                    (:shape-name
                                     "InfrastructureConfigurationSummary"))

(smithy/sdk/shapes:define-list infrastructure-configuration-summary-list
                               :member infrastructure-configuration-summary)

(smithy/sdk/shapes:define-type inline-component-data
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type inline-docker-file-template
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type inline-workflow-data
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure inspector-score-details common-lisp:nil
                                    ((adjusted-cvss :target-type
                                      cvss-score-details :member-name
                                      "adjustedCvss"))
                                    (:shape-name "InspectorScoreDetails"))

(smithy/sdk/shapes:define-structure instance-block-device-mapping
                                    common-lisp:nil
                                    ((device-name :target-type non-empty-string
                                      :member-name "deviceName")
                                     (ebs :target-type
                                      ebs-instance-block-device-specification
                                      :member-name "ebs")
                                     (virtual-name :target-type
                                      non-empty-string :member-name
                                      "virtualName")
                                     (no-device :target-type empty-string
                                      :member-name "noDevice"))
                                    (:shape-name "InstanceBlockDeviceMapping"))

(smithy/sdk/shapes:define-list instance-block-device-mappings :member
                               instance-block-device-mapping)

(smithy/sdk/shapes:define-structure instance-configuration common-lisp:nil
                                    ((image :target-type non-empty-string
                                      :member-name "image")
                                     (block-device-mappings :target-type
                                      instance-block-device-mappings
                                      :member-name "blockDeviceMappings"))
                                    (:shape-name "InstanceConfiguration"))

(smithy/sdk/shapes:define-structure instance-metadata-options common-lisp:nil
                                    ((http-tokens :target-type http-tokens
                                      :member-name "httpTokens")
                                     (http-put-response-hop-limit :target-type
                                      http-put-response-hop-limit :member-name
                                      "httpPutResponseHopLimit"))
                                    (:shape-name "InstanceMetadataOptions"))

(smithy/sdk/shapes:define-type instance-profile-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instance-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list instance-type-list :member instance-type)

(smithy/sdk/shapes:define-error invalid-pagination-token-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidPaginationTokenException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-combination-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "InvalidParameterCombinationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-value-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidParameterValueException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-version-number-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidVersionNumberException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure launch-permission-configuration
                                    common-lisp:nil
                                    ((user-ids :target-type account-list
                                      :member-name "userIds")
                                     (user-groups :target-type string-list
                                      :member-name "userGroups")
                                     (organization-arns :target-type
                                      organization-arn-list :member-name
                                      "organizationArns")
                                     (organizational-unit-arns :target-type
                                      organizational-unit-arn-list :member-name
                                      "organizationalUnitArns"))
                                    (:shape-name
                                     "LaunchPermissionConfiguration"))

(smithy/sdk/shapes:define-structure launch-template-configuration
                                    common-lisp:nil
                                    ((launch-template-id :target-type
                                      launch-template-id :required
                                      common-lisp:t :member-name
                                      "launchTemplateId")
                                     (account-id :target-type account-id
                                      :member-name "accountId")
                                     (set-default-version :target-type boolean
                                      :member-name "setDefaultVersion"))
                                    (:shape-name "LaunchTemplateConfiguration"))

(smithy/sdk/shapes:define-list launch-template-configuration-list :member
                               launch-template-configuration)

(smithy/sdk/shapes:define-type launch-template-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type license-configuration-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list license-configuration-arn-list :member
                               license-configuration-arn)

(smithy/sdk/shapes:define-structure lifecycle-execution common-lisp:nil
                                    ((lifecycle-execution-id :target-type
                                      lifecycle-execution-id :member-name
                                      "lifecycleExecutionId")
                                     (lifecycle-policy-arn :target-type
                                      lifecycle-policy-arn :member-name
                                      "lifecyclePolicyArn")
                                     (resources-impacted-summary :target-type
                                      lifecycle-execution-resources-impacted-summary
                                      :member-name "resourcesImpactedSummary")
                                     (state :target-type
                                      lifecycle-execution-state :member-name
                                      "state")
                                     (start-time :target-type
                                      date-time-timestamp :member-name
                                      "startTime")
                                     (end-time :target-type date-time-timestamp
                                      :member-name "endTime"))
                                    (:shape-name "LifecycleExecution"))

(smithy/sdk/shapes:define-type lifecycle-execution-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lifecycle-execution-resource
                                    common-lisp:nil
                                    ((account-id :target-type non-empty-string
                                      :member-name "accountId")
                                     (resource-id :target-type non-empty-string
                                      :member-name "resourceId")
                                     (state :target-type
                                      lifecycle-execution-resource-state
                                      :member-name "state")
                                     (action :target-type
                                      lifecycle-execution-resource-action
                                      :member-name "action")
                                     (region :target-type non-empty-string
                                      :member-name "region")
                                     (snapshots :target-type
                                      lifecycle-execution-snapshot-resource-list
                                      :member-name "snapshots")
                                     (image-uris :target-type string-list
                                      :member-name "imageUris")
                                     (start-time :target-type
                                      date-time-timestamp :member-name
                                      "startTime")
                                     (end-time :target-type date-time-timestamp
                                      :member-name "endTime"))
                                    (:shape-name "LifecycleExecutionResource"))

(smithy/sdk/shapes:define-structure lifecycle-execution-resource-action
                                    common-lisp:nil
                                    ((name :target-type
                                      lifecycle-execution-resource-action-name
                                      :member-name "name")
                                     (reason :target-type non-empty-string
                                      :member-name "reason"))
                                    (:shape-name
                                     "LifecycleExecutionResourceAction"))

(smithy/sdk/shapes:define-enum lifecycle-execution-resource-action-name
    common-lisp:nil
  (:available "AVAILABLE")
  (:delete "DELETE")
  (:deprecate "DEPRECATE")
  (:disable "DISABLE"))

(smithy/sdk/shapes:define-list lifecycle-execution-resource-list :member
                               lifecycle-execution-resource)

(smithy/sdk/shapes:define-structure lifecycle-execution-resource-state
                                    common-lisp:nil
                                    ((status :target-type
                                      lifecycle-execution-resource-status
                                      :member-name "status")
                                     (reason :target-type non-empty-string
                                      :member-name "reason"))
                                    (:shape-name
                                     "LifecycleExecutionResourceState"))

(smithy/sdk/shapes:define-enum lifecycle-execution-resource-status
    common-lisp:nil
  (:failed "FAILED")
  (:in-progress "IN_PROGRESS")
  (:skipped "SKIPPED")
  (:success "SUCCESS"))

(smithy/sdk/shapes:define-structure
 lifecycle-execution-resources-impacted-summary common-lisp:nil
 ((has-impacted-resources :target-type boolean :member-name
   "hasImpactedResources"))
 (:shape-name "LifecycleExecutionResourcesImpactedSummary"))

(smithy/sdk/shapes:define-structure lifecycle-execution-snapshot-resource
                                    common-lisp:nil
                                    ((snapshot-id :target-type non-empty-string
                                      :member-name "snapshotId")
                                     (state :target-type
                                      lifecycle-execution-resource-state
                                      :member-name "state"))
                                    (:shape-name
                                     "LifecycleExecutionSnapshotResource"))

(smithy/sdk/shapes:define-list lifecycle-execution-snapshot-resource-list
                               :member lifecycle-execution-snapshot-resource)

(smithy/sdk/shapes:define-structure lifecycle-execution-state common-lisp:nil
                                    ((status :target-type
                                      lifecycle-execution-status :member-name
                                      "status")
                                     (reason :target-type non-empty-string
                                      :member-name "reason"))
                                    (:shape-name "LifecycleExecutionState"))

(smithy/sdk/shapes:define-enum lifecycle-execution-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:cancelled "CANCELLED")
  (:cancelling "CANCELLING")
  (:failed "FAILED")
  (:success "SUCCESS")
  (:pending "PENDING"))

(smithy/sdk/shapes:define-list lifecycle-executions-list :member
                               lifecycle-execution)

(smithy/sdk/shapes:define-structure lifecycle-policy common-lisp:nil
                                    ((arn :target-type lifecycle-policy-arn
                                      :member-name "arn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (status :target-type
                                      lifecycle-policy-status :member-name
                                      "status")
                                     (execution-role :target-type
                                      role-name-or-arn :member-name
                                      "executionRole")
                                     (resource-type :target-type
                                      lifecycle-policy-resource-type
                                      :member-name "resourceType")
                                     (policy-details :target-type
                                      lifecycle-policy-details :member-name
                                      "policyDetails")
                                     (resource-selection :target-type
                                      lifecycle-policy-resource-selection
                                      :member-name "resourceSelection")
                                     (date-created :target-type
                                      date-time-timestamp :member-name
                                      "dateCreated")
                                     (date-updated :target-type
                                      date-time-timestamp :member-name
                                      "dateUpdated")
                                     (date-last-run :target-type
                                      date-time-timestamp :member-name
                                      "dateLastRun")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "LifecyclePolicy"))

(smithy/sdk/shapes:define-type lifecycle-policy-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lifecycle-policy-detail common-lisp:nil
                                    ((action :target-type
                                      lifecycle-policy-detail-action :required
                                      common-lisp:t :member-name "action")
                                     (filter :target-type
                                      lifecycle-policy-detail-filter :required
                                      common-lisp:t :member-name "filter")
                                     (exclusion-rules :target-type
                                      lifecycle-policy-detail-exclusion-rules
                                      :member-name "exclusionRules"))
                                    (:shape-name "LifecyclePolicyDetail"))

(smithy/sdk/shapes:define-structure lifecycle-policy-detail-action
                                    common-lisp:nil
                                    ((type :target-type
                                      lifecycle-policy-detail-action-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (include-resources :target-type
                                      lifecycle-policy-detail-action-include-resources
                                      :member-name "includeResources"))
                                    (:shape-name "LifecyclePolicyDetailAction"))

(smithy/sdk/shapes:define-structure
 lifecycle-policy-detail-action-include-resources common-lisp:nil
 ((amis :target-type boolean :member-name "amis")
  (snapshots :target-type boolean :member-name "snapshots")
  (containers :target-type boolean :member-name "containers"))
 (:shape-name "LifecyclePolicyDetailActionIncludeResources"))

(smithy/sdk/shapes:define-enum lifecycle-policy-detail-action-type
    common-lisp:nil
  (:delete "DELETE")
  (:deprecate "DEPRECATE")
  (:disable "DISABLE"))

(smithy/sdk/shapes:define-structure lifecycle-policy-detail-exclusion-rules
                                    common-lisp:nil
                                    ((tag-map :target-type tag-map :member-name
                                      "tagMap")
                                     (amis :target-type
                                      lifecycle-policy-detail-exclusion-rules-amis
                                      :member-name "amis"))
                                    (:shape-name
                                     "LifecyclePolicyDetailExclusionRules"))

(smithy/sdk/shapes:define-structure
 lifecycle-policy-detail-exclusion-rules-amis common-lisp:nil
 ((is-public :target-type boolean :member-name "isPublic")
  (regions :target-type string-list :member-name "regions")
  (shared-accounts :target-type account-list :member-name "sharedAccounts")
  (last-launched :target-type
   lifecycle-policy-detail-exclusion-rules-amis-last-launched :member-name
   "lastLaunched")
  (tag-map :target-type tag-map :member-name "tagMap"))
 (:shape-name "LifecyclePolicyDetailExclusionRulesAmis"))

(smithy/sdk/shapes:define-structure
 lifecycle-policy-detail-exclusion-rules-amis-last-launched common-lisp:nil
 ((value :target-type
   lifecycle-policy-detail-exclusion-rules-amis-last-launched-value :required
   common-lisp:t :member-name "value")
  (unit :target-type lifecycle-policy-time-unit :required common-lisp:t
   :member-name "unit"))
 (:shape-name "LifecyclePolicyDetailExclusionRulesAmisLastLaunched"))

(smithy/sdk/shapes:define-type
 lifecycle-policy-detail-exclusion-rules-amis-last-launched-value
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure lifecycle-policy-detail-filter
                                    common-lisp:nil
                                    ((type :target-type
                                      lifecycle-policy-detail-filter-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (value :target-type
                                      lifecycle-policy-detail-filter-value
                                      :required common-lisp:t :member-name
                                      "value")
                                     (unit :target-type
                                      lifecycle-policy-time-unit :member-name
                                      "unit")
                                     (retain-at-least :target-type
                                      lifecycle-policy-detail-filter-retain-at-least
                                      :member-name "retainAtLeast"))
                                    (:shape-name "LifecyclePolicyDetailFilter"))

(smithy/sdk/shapes:define-type lifecycle-policy-detail-filter-retain-at-least
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum lifecycle-policy-detail-filter-type
    common-lisp:nil
  (:age "AGE")
  (:count "COUNT"))

(smithy/sdk/shapes:define-type lifecycle-policy-detail-filter-value
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list lifecycle-policy-details :member
                               lifecycle-policy-detail)

(smithy/sdk/shapes:define-structure lifecycle-policy-resource-selection
                                    common-lisp:nil
                                    ((recipes :target-type
                                      lifecycle-policy-resource-selection-recipes
                                      :member-name "recipes")
                                     (tag-map :target-type tag-map :member-name
                                      "tagMap"))
                                    (:shape-name
                                     "LifecyclePolicyResourceSelection"))

(smithy/sdk/shapes:define-structure lifecycle-policy-resource-selection-recipe
                                    common-lisp:nil
                                    ((name :target-type resource-name :required
                                      common-lisp:t :member-name "name")
                                     (semantic-version :target-type
                                      version-number :required common-lisp:t
                                      :member-name "semanticVersion"))
                                    (:shape-name
                                     "LifecyclePolicyResourceSelectionRecipe"))

(smithy/sdk/shapes:define-list lifecycle-policy-resource-selection-recipes
                               :member
                               lifecycle-policy-resource-selection-recipe)

(smithy/sdk/shapes:define-enum lifecycle-policy-resource-type
    common-lisp:nil
  (:ami-image "AMI_IMAGE")
  (:container-image "CONTAINER_IMAGE"))

(smithy/sdk/shapes:define-enum lifecycle-policy-status
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure lifecycle-policy-summary common-lisp:nil
                                    ((arn :target-type lifecycle-policy-arn
                                      :member-name "arn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (status :target-type
                                      lifecycle-policy-status :member-name
                                      "status")
                                     (execution-role :target-type
                                      role-name-or-arn :member-name
                                      "executionRole")
                                     (resource-type :target-type
                                      lifecycle-policy-resource-type
                                      :member-name "resourceType")
                                     (date-created :target-type
                                      date-time-timestamp :member-name
                                      "dateCreated")
                                     (date-updated :target-type
                                      date-time-timestamp :member-name
                                      "dateUpdated")
                                     (date-last-run :target-type
                                      date-time-timestamp :member-name
                                      "dateLastRun")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "LifecyclePolicySummary"))

(smithy/sdk/shapes:define-list lifecycle-policy-summary-list :member
                               lifecycle-policy-summary)

(smithy/sdk/shapes:define-enum lifecycle-policy-time-unit
    common-lisp:nil
  (:days "DAYS")
  (:weeks "WEEKS")
  (:months "MONTHS")
  (:years "YEARS"))

(smithy/sdk/shapes:define-input list-component-build-versions-request
                                common-lisp:nil
                                ((component-version-arn :target-type
                                  component-version-arn :required common-lisp:t
                                  :member-name "componentVersionArn")
                                 (max-results :target-type restricted-integer
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "ListComponentBuildVersionsRequest"))

(smithy/sdk/shapes:define-output list-component-build-versions-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (component-summary-list :target-type
                                   component-summary-list :member-name
                                   "componentSummaryList")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListComponentBuildVersionsResponse"))

(smithy/sdk/shapes:define-input list-components-request common-lisp:nil
                                ((owner :target-type ownership :member-name
                                  "owner")
                                 (filters :target-type filter-list :member-name
                                  "filters")
                                 (by-name :target-type boolean :member-name
                                  "byName")
                                 (max-results :target-type restricted-integer
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListComponentsRequest"))

(smithy/sdk/shapes:define-output list-components-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (component-version-list :target-type
                                   component-version-list :member-name
                                   "componentVersionList")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListComponentsResponse"))

(smithy/sdk/shapes:define-input list-container-recipes-request common-lisp:nil
                                ((owner :target-type ownership :member-name
                                  "owner")
                                 (filters :target-type filter-list :member-name
                                  "filters")
                                 (max-results :target-type restricted-integer
                                  :member-name "maxResults")
                                 (next-token :target-type non-empty-string
                                  :member-name "nextToken"))
                                (:shape-name "ListContainerRecipesRequest"))

(smithy/sdk/shapes:define-output list-container-recipes-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (container-recipe-summary-list :target-type
                                   container-recipe-summary-list :member-name
                                   "containerRecipeSummaryList")
                                  (next-token :target-type non-empty-string
                                   :member-name "nextToken"))
                                 (:shape-name "ListContainerRecipesResponse"))

(smithy/sdk/shapes:define-input list-distribution-configurations-request
                                common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "filters")
                                 (max-results :target-type restricted-integer
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "ListDistributionConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-distribution-configurations-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (distribution-configuration-summary-list
                                   :target-type
                                   distribution-configuration-summary-list
                                   :member-name
                                   "distributionConfigurationSummaryList")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListDistributionConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-image-build-versions-request
                                common-lisp:nil
                                ((image-version-arn :target-type
                                  image-version-arn :required common-lisp:t
                                  :member-name "imageVersionArn")
                                 (filters :target-type filter-list :member-name
                                  "filters")
                                 (max-results :target-type restricted-integer
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListImageBuildVersionsRequest"))

(smithy/sdk/shapes:define-output list-image-build-versions-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (image-summary-list :target-type
                                   image-summary-list :member-name
                                   "imageSummaryList")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListImageBuildVersionsResponse"))

(smithy/sdk/shapes:define-input list-image-packages-request common-lisp:nil
                                ((image-build-version-arn :target-type
                                  image-build-version-arn :required
                                  common-lisp:t :member-name
                                  "imageBuildVersionArn")
                                 (max-results :target-type restricted-integer
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListImagePackagesRequest"))

(smithy/sdk/shapes:define-output list-image-packages-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (image-package-list :target-type
                                   image-package-list :member-name
                                   "imagePackageList")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListImagePackagesResponse"))

(smithy/sdk/shapes:define-input list-image-pipeline-images-request
                                common-lisp:nil
                                ((image-pipeline-arn :target-type
                                  image-pipeline-arn :required common-lisp:t
                                  :member-name "imagePipelineArn")
                                 (filters :target-type filter-list :member-name
                                  "filters")
                                 (max-results :target-type restricted-integer
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListImagePipelineImagesRequest"))

(smithy/sdk/shapes:define-output list-image-pipeline-images-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (image-summary-list :target-type
                                   image-summary-list :member-name
                                   "imageSummaryList")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListImagePipelineImagesResponse"))

(smithy/sdk/shapes:define-input list-image-pipelines-request common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "filters")
                                 (max-results :target-type restricted-integer
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListImagePipelinesRequest"))

(smithy/sdk/shapes:define-output list-image-pipelines-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (image-pipeline-list :target-type
                                   image-pipeline-list :member-name
                                   "imagePipelineList")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListImagePipelinesResponse"))

(smithy/sdk/shapes:define-input list-image-recipes-request common-lisp:nil
                                ((owner :target-type ownership :member-name
                                  "owner")
                                 (filters :target-type filter-list :member-name
                                  "filters")
                                 (max-results :target-type restricted-integer
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListImageRecipesRequest"))

(smithy/sdk/shapes:define-output list-image-recipes-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (image-recipe-summary-list :target-type
                                   image-recipe-summary-list :member-name
                                   "imageRecipeSummaryList")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListImageRecipesResponse"))

(smithy/sdk/shapes:define-input list-image-scan-finding-aggregations-request
                                common-lisp:nil
                                ((filter :target-type filter :member-name
                                  "filter")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "ListImageScanFindingAggregationsRequest"))

(smithy/sdk/shapes:define-output list-image-scan-finding-aggregations-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (aggregation-type :target-type
                                   non-empty-string :member-name
                                   "aggregationType")
                                  (responses :target-type
                                   image-scan-finding-aggregations-list
                                   :member-name "responses")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListImageScanFindingAggregationsResponse"))

(smithy/sdk/shapes:define-input list-image-scan-findings-request
                                common-lisp:nil
                                ((filters :target-type
                                  image-scan-findings-filter-list :member-name
                                  "filters")
                                 (max-results :target-type restricted-integer
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListImageScanFindingsRequest"))

(smithy/sdk/shapes:define-output list-image-scan-findings-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (findings :target-type
                                   image-scan-findings-list :member-name
                                   "findings")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListImageScanFindingsResponse"))

(smithy/sdk/shapes:define-input list-images-request common-lisp:nil
                                ((owner :target-type ownership :member-name
                                  "owner")
                                 (filters :target-type filter-list :member-name
                                  "filters")
                                 (by-name :target-type boolean :member-name
                                  "byName")
                                 (max-results :target-type restricted-integer
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (include-deprecated :target-type
                                  nullable-boolean :member-name
                                  "includeDeprecated"))
                                (:shape-name "ListImagesRequest"))

(smithy/sdk/shapes:define-output list-images-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (image-version-list :target-type
                                   image-version-list :member-name
                                   "imageVersionList")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListImagesResponse"))

(smithy/sdk/shapes:define-input list-infrastructure-configurations-request
                                common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "filters")
                                 (max-results :target-type restricted-integer
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "ListInfrastructureConfigurationsRequest"))

(smithy/sdk/shapes:define-output list-infrastructure-configurations-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (infrastructure-configuration-summary-list
                                   :target-type
                                   infrastructure-configuration-summary-list
                                   :member-name
                                   "infrastructureConfigurationSummaryList")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListInfrastructureConfigurationsResponse"))

(smithy/sdk/shapes:define-input list-lifecycle-execution-resources-request
                                common-lisp:nil
                                ((lifecycle-execution-id :target-type
                                  lifecycle-execution-id :required
                                  common-lisp:t :member-name
                                  "lifecycleExecutionId")
                                 (parent-resource-id :target-type
                                  non-empty-string :member-name
                                  "parentResourceId")
                                 (max-results :target-type restricted-integer
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "ListLifecycleExecutionResourcesRequest"))

(smithy/sdk/shapes:define-output list-lifecycle-execution-resources-response
                                 common-lisp:nil
                                 ((lifecycle-execution-id :target-type
                                   lifecycle-execution-id :member-name
                                   "lifecycleExecutionId")
                                  (lifecycle-execution-state :target-type
                                   lifecycle-execution-state :member-name
                                   "lifecycleExecutionState")
                                  (resources :target-type
                                   lifecycle-execution-resource-list
                                   :member-name "resources")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListLifecycleExecutionResourcesResponse"))

(smithy/sdk/shapes:define-input list-lifecycle-executions-request
                                common-lisp:nil
                                ((max-results :target-type restricted-integer
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (resource-arn :target-type image-builder-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn"))
                                (:shape-name "ListLifecycleExecutionsRequest"))

(smithy/sdk/shapes:define-output list-lifecycle-executions-response
                                 common-lisp:nil
                                 ((lifecycle-executions :target-type
                                   lifecycle-executions-list :member-name
                                   "lifecycleExecutions")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListLifecycleExecutionsResponse"))

(smithy/sdk/shapes:define-input list-lifecycle-policies-request common-lisp:nil
                                ((filters :target-type filter-list :member-name
                                  "filters")
                                 (max-results :target-type restricted-integer
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListLifecyclePoliciesRequest"))

(smithy/sdk/shapes:define-output list-lifecycle-policies-response
                                 common-lisp:nil
                                 ((lifecycle-policy-summary-list :target-type
                                   lifecycle-policy-summary-list :member-name
                                   "lifecyclePolicySummaryList")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListLifecyclePoliciesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type image-builder-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-waiting-workflow-steps-request
                                common-lisp:nil
                                ((max-results :target-type restricted-integer
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListWaitingWorkflowStepsRequest"))

(smithy/sdk/shapes:define-output list-waiting-workflow-steps-response
                                 common-lisp:nil
                                 ((steps :target-type
                                   workflow-step-execution-list :member-name
                                   "steps")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListWaitingWorkflowStepsResponse"))

(smithy/sdk/shapes:define-input list-workflow-build-versions-request
                                common-lisp:nil
                                ((workflow-version-arn :target-type
                                  workflow-wildcard-version-arn :required
                                  common-lisp:t :member-name
                                  "workflowVersionArn")
                                 (max-results :target-type restricted-integer
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "ListWorkflowBuildVersionsRequest"))

(smithy/sdk/shapes:define-output list-workflow-build-versions-response
                                 common-lisp:nil
                                 ((workflow-summary-list :target-type
                                   workflow-summary-list :member-name
                                   "workflowSummaryList")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListWorkflowBuildVersionsResponse"))

(smithy/sdk/shapes:define-input list-workflow-executions-request
                                common-lisp:nil
                                ((max-results :target-type restricted-integer
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (image-build-version-arn :target-type
                                  image-build-version-arn :required
                                  common-lisp:t :member-name
                                  "imageBuildVersionArn"))
                                (:shape-name "ListWorkflowExecutionsRequest"))

(smithy/sdk/shapes:define-output list-workflow-executions-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (workflow-executions :target-type
                                   workflow-executions-list :member-name
                                   "workflowExecutions")
                                  (image-build-version-arn :target-type
                                   image-build-version-arn :member-name
                                   "imageBuildVersionArn")
                                  (message :target-type image-build-message
                                   :member-name "message")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListWorkflowExecutionsResponse"))

(smithy/sdk/shapes:define-input list-workflow-step-executions-request
                                common-lisp:nil
                                ((max-results :target-type restricted-integer
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken")
                                 (workflow-execution-id :target-type
                                  workflow-execution-id :required common-lisp:t
                                  :member-name "workflowExecutionId"))
                                (:shape-name
                                 "ListWorkflowStepExecutionsRequest"))

(smithy/sdk/shapes:define-output list-workflow-step-executions-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (steps :target-type
                                   workflow-step-executions-list :member-name
                                   "steps")
                                  (workflow-build-version-arn :target-type
                                   workflow-build-version-arn :member-name
                                   "workflowBuildVersionArn")
                                  (workflow-execution-id :target-type
                                   workflow-execution-id :member-name
                                   "workflowExecutionId")
                                  (image-build-version-arn :target-type
                                   image-build-version-arn :member-name
                                   "imageBuildVersionArn")
                                  (message :target-type image-build-message
                                   :member-name "message")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListWorkflowStepExecutionsResponse"))

(smithy/sdk/shapes:define-input list-workflows-request common-lisp:nil
                                ((owner :target-type ownership :member-name
                                  "owner")
                                 (filters :target-type filter-list :member-name
                                  "filters")
                                 (by-name :target-type boolean :member-name
                                  "byName")
                                 (max-results :target-type restricted-integer
                                  :member-name "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken"))
                                (:shape-name "ListWorkflowsRequest"))

(smithy/sdk/shapes:define-output list-workflows-response common-lisp:nil
                                 ((workflow-version-list :target-type
                                   workflow-version-list :member-name
                                   "workflowVersionList")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListWorkflowsResponse"))

(smithy/sdk/shapes:define-structure logging common-lisp:nil
                                    ((s3logs :target-type s3logs :member-name
                                      "s3Logs"))
                                    (:shape-name "Logging"))

(smithy/sdk/shapes:define-type marketplace-resource-location
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum marketplace-resource-type
    common-lisp:nil
  (:component-data "COMPONENT_DATA")
  (:component-artifact "COMPONENT_ARTIFACT"))

(smithy/sdk/shapes:define-type max-parallel-launches
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list non-empty-string-list :member non-empty-string)

(smithy/sdk/shapes:define-type non-negative-double
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type nullable-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum on-workflow-failure
    common-lisp:nil
  (:continue "CONTINUE")
  (:abort "ABORT"))

(smithy/sdk/shapes:define-type organization-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list organization-arn-list :member organization-arn)

(smithy/sdk/shapes:define-type organizational-unit-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list organizational-unit-arn-list :member
                               organizational-unit-arn)

(smithy/sdk/shapes:define-type os-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list os-version-list :member os-version)

(smithy/sdk/shapes:define-structure output-resources common-lisp:nil
                                    ((amis :target-type ami-list :member-name
                                      "amis")
                                     (containers :target-type container-list
                                      :member-name "containers"))
                                    (:shape-name "OutputResources"))

(smithy/sdk/shapes:define-enum ownership
    common-lisp:nil
  (:self "Self")
  (:shared "Shared")
  (:amazon "Amazon")
  (:thirdparty "ThirdParty")
  (:aws-marketplace "AWSMarketplace"))

(smithy/sdk/shapes:define-type package-architecture
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type package-epoch smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure package-vulnerability-details
                                    common-lisp:nil
                                    ((vulnerability-id :target-type
                                      vulnerability-id :required common-lisp:t
                                      :member-name "vulnerabilityId")
                                     (vulnerable-packages :target-type
                                      vulnerable-package-list :member-name
                                      "vulnerablePackages")
                                     (source :target-type non-empty-string
                                      :member-name "source")
                                     (cvss :target-type cvss-score-list
                                      :member-name "cvss")
                                     (related-vulnerabilities :target-type
                                      vulnerability-id-list :member-name
                                      "relatedVulnerabilities")
                                     (source-url :target-type non-empty-string
                                      :member-name "sourceUrl")
                                     (vendor-severity :target-type
                                      non-empty-string :member-name
                                      "vendorSeverity")
                                     (vendor-created-at :target-type
                                      date-time-timestamp :member-name
                                      "vendorCreatedAt")
                                     (vendor-updated-at :target-type
                                      date-time-timestamp :member-name
                                      "vendorUpdatedAt")
                                     (reference-urls :target-type
                                      non-empty-string-list :member-name
                                      "referenceUrls"))
                                    (:shape-name "PackageVulnerabilityDetails"))

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parallel-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum pipeline-execution-start-condition
    common-lisp:nil
  (:expression-match-only "EXPRESSION_MATCH_ONLY")
  (:expression-match-and-dependency-updates-available
   "EXPRESSION_MATCH_AND_DEPENDENCY_UPDATES_AVAILABLE"))

(smithy/sdk/shapes:define-enum pipeline-status
    common-lisp:nil
  (:disabled "DISABLED")
  (:enabled "ENABLED"))

(smithy/sdk/shapes:define-structure placement common-lisp:nil
                                    ((availability-zone :target-type
                                      non-empty-string :member-name
                                      "availabilityZone")
                                     (tenancy :target-type tenancy-type
                                      :member-name "tenancy")
                                     (host-id :target-type non-empty-string
                                      :member-name "hostId")
                                     (host-resource-group-arn :target-type
                                      non-empty-string :member-name
                                      "hostResourceGroupArn"))
                                    (:shape-name "Placement"))

(smithy/sdk/shapes:define-enum platform
    common-lisp:nil
  (:windows "Windows")
  (:linux "Linux")
  (:macos "macOS"))

(smithy/sdk/shapes:define-type product-code-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list product-code-list :member product-code-list-item)

(smithy/sdk/shapes:define-structure product-code-list-item common-lisp:nil
                                    ((product-code-id :target-type
                                      product-code-id :required common-lisp:t
                                      :member-name "productCodeId")
                                     (product-code-type :target-type
                                      product-code-type :required common-lisp:t
                                      :member-name "productCodeType"))
                                    (:shape-name "ProductCodeListItem"))

(smithy/sdk/shapes:define-enum product-code-type
    common-lisp:nil
  (:marketplace "marketplace"))

(smithy/sdk/shapes:define-input put-component-policy-request common-lisp:nil
                                ((component-arn :target-type
                                  component-build-version-arn :required
                                  common-lisp:t :member-name "componentArn")
                                 (policy :target-type resource-policy-document
                                  :required common-lisp:t :member-name
                                  "policy"))
                                (:shape-name "PutComponentPolicyRequest"))

(smithy/sdk/shapes:define-output put-component-policy-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (component-arn :target-type
                                   component-build-version-arn :member-name
                                   "componentArn"))
                                 (:shape-name "PutComponentPolicyResponse"))

(smithy/sdk/shapes:define-input put-container-recipe-policy-request
                                common-lisp:nil
                                ((container-recipe-arn :target-type
                                  container-recipe-arn :required common-lisp:t
                                  :member-name "containerRecipeArn")
                                 (policy :target-type resource-policy-document
                                  :required common-lisp:t :member-name
                                  "policy"))
                                (:shape-name "PutContainerRecipePolicyRequest"))

(smithy/sdk/shapes:define-output put-container-recipe-policy-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (container-recipe-arn :target-type
                                   container-recipe-arn :member-name
                                   "containerRecipeArn"))
                                 (:shape-name
                                  "PutContainerRecipePolicyResponse"))

(smithy/sdk/shapes:define-input put-image-policy-request common-lisp:nil
                                ((image-arn :target-type
                                  image-build-version-arn :required
                                  common-lisp:t :member-name "imageArn")
                                 (policy :target-type resource-policy-document
                                  :required common-lisp:t :member-name
                                  "policy"))
                                (:shape-name "PutImagePolicyRequest"))

(smithy/sdk/shapes:define-output put-image-policy-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (image-arn :target-type
                                   image-build-version-arn :member-name
                                   "imageArn"))
                                 (:shape-name "PutImagePolicyResponse"))

(smithy/sdk/shapes:define-input put-image-recipe-policy-request common-lisp:nil
                                ((image-recipe-arn :target-type
                                  image-recipe-arn :required common-lisp:t
                                  :member-name "imageRecipeArn")
                                 (policy :target-type resource-policy-document
                                  :required common-lisp:t :member-name
                                  "policy"))
                                (:shape-name "PutImageRecipePolicyRequest"))

(smithy/sdk/shapes:define-output put-image-recipe-policy-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (image-recipe-arn :target-type
                                   image-recipe-arn :member-name
                                   "imageRecipeArn"))
                                 (:shape-name "PutImageRecipePolicyResponse"))

(smithy/sdk/shapes:define-list region-list :member non-empty-string)

(smithy/sdk/shapes:define-structure remediation common-lisp:nil
                                    ((recommendation :target-type
                                      remediation-recommendation :member-name
                                      "recommendation"))
                                    (:shape-name "Remediation"))

(smithy/sdk/shapes:define-structure remediation-recommendation common-lisp:nil
                                    ((text :target-type non-empty-string
                                      :member-name "text")
                                     (url :target-type non-empty-string
                                      :member-name "url"))
                                    (:shape-name "RemediationRecommendation"))

(smithy/sdk/shapes:define-error resource-already-exists-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceAlreadyExistsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-dependency-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceDependencyException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-policy-document
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resource-state common-lisp:nil
                                    ((status :target-type resource-status
                                      :member-name "status"))
                                    (:shape-name "ResourceState"))

(smithy/sdk/shapes:define-structure resource-state-update-exclusion-rules
                                    common-lisp:nil
                                    ((amis :target-type
                                      lifecycle-policy-detail-exclusion-rules-amis
                                      :member-name "amis"))
                                    (:shape-name
                                     "ResourceStateUpdateExclusionRules"))

(smithy/sdk/shapes:define-structure resource-state-update-include-resources
                                    common-lisp:nil
                                    ((amis :target-type boolean :member-name
                                      "amis")
                                     (snapshots :target-type boolean
                                      :member-name "snapshots")
                                     (containers :target-type boolean
                                      :member-name "containers"))
                                    (:shape-name
                                     "ResourceStateUpdateIncludeResources"))

(smithy/sdk/shapes:define-enum resource-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:deleted "DELETED")
  (:deprecated "DEPRECATED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-map resource-tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-type restricted-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type role-name-or-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3export-configuration common-lisp:nil
                                    ((role-name :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "roleName")
                                     (disk-image-format :target-type
                                      disk-image-format :required common-lisp:t
                                      :member-name "diskImageFormat")
                                     (s3bucket :target-type non-empty-string
                                      :required common-lisp:t :member-name
                                      "s3Bucket")
                                     (s3prefix :target-type non-empty-string
                                      :member-name "s3Prefix"))
                                    (:shape-name "S3ExportConfiguration"))

(smithy/sdk/shapes:define-structure s3logs common-lisp:nil
                                    ((s3bucket-name :target-type
                                      non-empty-string :member-name
                                      "s3BucketName")
                                     (s3key-prefix :target-type
                                      non-empty-string :member-name
                                      "s3KeyPrefix"))
                                    (:shape-name "S3Logs"))

(smithy/sdk/shapes:define-structure schedule common-lisp:nil
                                    ((schedule-expression :target-type
                                      non-empty-string :member-name
                                      "scheduleExpression")
                                     (timezone :target-type timezone
                                      :member-name "timezone")
                                     (pipeline-execution-start-condition
                                      :target-type
                                      pipeline-execution-start-condition
                                      :member-name
                                      "pipelineExecutionStartCondition"))
                                    (:shape-name "Schedule"))

(smithy/sdk/shapes:define-list security-group-ids :member non-empty-string)

(smithy/sdk/shapes:define-input send-workflow-step-action-request
                                common-lisp:nil
                                ((step-execution-id :target-type
                                  workflow-step-execution-id :required
                                  common-lisp:t :member-name "stepExecutionId")
                                 (image-build-version-arn :target-type
                                  image-build-version-arn :required
                                  common-lisp:t :member-name
                                  "imageBuildVersionArn")
                                 (action :target-type workflow-step-action-type
                                  :required common-lisp:t :member-name
                                  "action")
                                 (reason :target-type non-empty-string
                                  :member-name "reason")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "SendWorkflowStepActionRequest"))

(smithy/sdk/shapes:define-output send-workflow-step-action-response
                                 common-lisp:nil
                                 ((step-execution-id :target-type
                                   workflow-step-execution-id :member-name
                                   "stepExecutionId")
                                  (image-build-version-arn :target-type
                                   image-build-version-arn :member-name
                                   "imageBuildVersionArn")
                                  (client-token :target-type client-token
                                   :member-name "clientToken"))
                                 (:shape-name "SendWorkflowStepActionResponse"))

(smithy/sdk/shapes:define-error service-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ServiceException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-type severity-count-number
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure severity-counts common-lisp:nil
                                    ((all :target-type severity-count-number
                                      :member-name "all")
                                     (critical :target-type
                                      severity-count-number :member-name
                                      "critical")
                                     (high :target-type severity-count-number
                                      :member-name "high")
                                     (medium :target-type severity-count-number
                                      :member-name "medium"))
                                    (:shape-name "SeverityCounts"))

(smithy/sdk/shapes:define-type sns-topic-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type source-layer-hash smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ssm-parameter-configuration common-lisp:nil
                                    ((ami-account-id :target-type account-id
                                      :member-name "amiAccountId")
                                     (parameter-name :target-type
                                      ssm-parameter-name :required
                                      common-lisp:t :member-name
                                      "parameterName")
                                     (data-type :target-type
                                      ssm-parameter-data-type :member-name
                                      "dataType"))
                                    (:shape-name "SsmParameterConfiguration"))

(smithy/sdk/shapes:define-list ssm-parameter-configuration-list :member
                               ssm-parameter-configuration)

(smithy/sdk/shapes:define-enum ssm-parameter-data-type
    common-lisp:nil
  (:text "text")
  (:aws-ec2-image "aws:ec2:image"))

(smithy/sdk/shapes:define-type ssm-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-image-pipeline-execution-request
                                common-lisp:nil
                                ((image-pipeline-arn :target-type
                                  image-pipeline-arn :required common-lisp:t
                                  :member-name "imagePipelineArn")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name
                                 "StartImagePipelineExecutionRequest"))

(smithy/sdk/shapes:define-output start-image-pipeline-execution-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (client-token :target-type client-token
                                   :member-name "clientToken")
                                  (image-build-version-arn :target-type
                                   image-build-version-arn :member-name
                                   "imageBuildVersionArn"))
                                 (:shape-name
                                  "StartImagePipelineExecutionResponse"))

(smithy/sdk/shapes:define-input start-resource-state-update-request
                                common-lisp:nil
                                ((resource-arn :target-type
                                  image-build-version-arn :required
                                  common-lisp:t :member-name "resourceArn")
                                 (state :target-type resource-state :required
                                  common-lisp:t :member-name "state")
                                 (execution-role :target-type role-name-or-arn
                                  :member-name "executionRole")
                                 (include-resources :target-type
                                  resource-state-update-include-resources
                                  :member-name "includeResources")
                                 (exclusion-rules :target-type
                                  resource-state-update-exclusion-rules
                                  :member-name "exclusionRules")
                                 (update-at :target-type date-time-timestamp
                                  :member-name "updateAt")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "StartResourceStateUpdateRequest"))

(smithy/sdk/shapes:define-output start-resource-state-update-response
                                 common-lisp:nil
                                 ((lifecycle-execution-id :target-type
                                   lifecycle-execution-id :member-name
                                   "lifecycleExecutionId")
                                  (resource-arn :target-type
                                   image-build-version-arn :member-name
                                   "resourceArn"))
                                 (:shape-name
                                  "StartResourceStateUpdateResponse"))

(smithy/sdk/shapes:define-list string-list :member non-empty-string)

(smithy/sdk/shapes:define-structure systems-manager-agent common-lisp:nil
                                    ((uninstall-after-build :target-type
                                      nullable-boolean :member-name
                                      "uninstallAfterBuild"))
                                    (:shape-name "SystemsManagerAgent"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type image-builder-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure target-container-repository common-lisp:nil
                                    ((service :target-type
                                      container-repository-service :required
                                      common-lisp:t :member-name "service")
                                     (repository-name :target-type
                                      non-empty-string :required common-lisp:t
                                      :member-name "repositoryName"))
                                    (:shape-name "TargetContainerRepository"))

(smithy/sdk/shapes:define-type target-resource-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum tenancy-type
    common-lisp:nil
  (:default "default")
  (:dedicated "dedicated")
  (:host "host"))

(smithy/sdk/shapes:define-type timezone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type image-builder-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-distribution-configuration-request
                                common-lisp:nil
                                ((distribution-configuration-arn :target-type
                                  distribution-configuration-arn :required
                                  common-lisp:t :member-name
                                  "distributionConfigurationArn")
                                 (description :target-type non-empty-string
                                  :member-name "description")
                                 (distributions :target-type distribution-list
                                  :required common-lisp:t :member-name
                                  "distributions")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name
                                 "UpdateDistributionConfigurationRequest"))

(smithy/sdk/shapes:define-output update-distribution-configuration-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (client-token :target-type client-token
                                   :member-name "clientToken")
                                  (distribution-configuration-arn :target-type
                                   distribution-configuration-arn :member-name
                                   "distributionConfigurationArn"))
                                 (:shape-name
                                  "UpdateDistributionConfigurationResponse"))

(smithy/sdk/shapes:define-input update-image-pipeline-request common-lisp:nil
                                ((image-pipeline-arn :target-type
                                  image-pipeline-arn :required common-lisp:t
                                  :member-name "imagePipelineArn")
                                 (description :target-type non-empty-string
                                  :member-name "description")
                                 (image-recipe-arn :target-type
                                  image-recipe-arn :member-name
                                  "imageRecipeArn")
                                 (container-recipe-arn :target-type
                                  container-recipe-arn :member-name
                                  "containerRecipeArn")
                                 (infrastructure-configuration-arn :target-type
                                  infrastructure-configuration-arn :required
                                  common-lisp:t :member-name
                                  "infrastructureConfigurationArn")
                                 (distribution-configuration-arn :target-type
                                  distribution-configuration-arn :member-name
                                  "distributionConfigurationArn")
                                 (image-tests-configuration :target-type
                                  image-tests-configuration :member-name
                                  "imageTestsConfiguration")
                                 (enhanced-image-metadata-enabled :target-type
                                  nullable-boolean :member-name
                                  "enhancedImageMetadataEnabled")
                                 (schedule :target-type schedule :member-name
                                  "schedule")
                                 (status :target-type pipeline-status
                                  :member-name "status")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken")
                                 (image-scanning-configuration :target-type
                                  image-scanning-configuration :member-name
                                  "imageScanningConfiguration")
                                 (workflows :target-type
                                  workflow-configuration-list :member-name
                                  "workflows")
                                 (execution-role :target-type role-name-or-arn
                                  :member-name "executionRole"))
                                (:shape-name "UpdateImagePipelineRequest"))

(smithy/sdk/shapes:define-output update-image-pipeline-response common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (client-token :target-type client-token
                                   :member-name "clientToken")
                                  (image-pipeline-arn :target-type
                                   image-pipeline-arn :member-name
                                   "imagePipelineArn"))
                                 (:shape-name "UpdateImagePipelineResponse"))

(smithy/sdk/shapes:define-input update-infrastructure-configuration-request
                                common-lisp:nil
                                ((infrastructure-configuration-arn :target-type
                                  infrastructure-configuration-arn :required
                                  common-lisp:t :member-name
                                  "infrastructureConfigurationArn")
                                 (description :target-type non-empty-string
                                  :member-name "description")
                                 (instance-types :target-type
                                  instance-type-list :member-name
                                  "instanceTypes")
                                 (instance-profile-name :target-type
                                  instance-profile-name-type :required
                                  common-lisp:t :member-name
                                  "instanceProfileName")
                                 (security-group-ids :target-type
                                  security-group-ids :member-name
                                  "securityGroupIds")
                                 (subnet-id :target-type non-empty-string
                                  :member-name "subnetId")
                                 (logging :target-type logging :member-name
                                  "logging")
                                 (key-pair :target-type non-empty-string
                                  :member-name "keyPair")
                                 (terminate-instance-on-failure :target-type
                                  nullable-boolean :member-name
                                  "terminateInstanceOnFailure")
                                 (sns-topic-arn :target-type sns-topic-arn
                                  :member-name "snsTopicArn")
                                 (resource-tags :target-type resource-tag-map
                                  :member-name "resourceTags")
                                 (instance-metadata-options :target-type
                                  instance-metadata-options :member-name
                                  "instanceMetadataOptions")
                                 (placement :target-type placement :member-name
                                  "placement")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name
                                 "UpdateInfrastructureConfigurationRequest"))

(smithy/sdk/shapes:define-output update-infrastructure-configuration-response
                                 common-lisp:nil
                                 ((request-id :target-type non-empty-string
                                   :member-name "requestId")
                                  (client-token :target-type client-token
                                   :member-name "clientToken")
                                  (infrastructure-configuration-arn
                                   :target-type
                                   infrastructure-configuration-arn
                                   :member-name
                                   "infrastructureConfigurationArn"))
                                 (:shape-name
                                  "UpdateInfrastructureConfigurationResponse"))

(smithy/sdk/shapes:define-input update-lifecycle-policy-request common-lisp:nil
                                ((lifecycle-policy-arn :target-type
                                  lifecycle-policy-arn :required common-lisp:t
                                  :member-name "lifecyclePolicyArn")
                                 (description :target-type non-empty-string
                                  :member-name "description")
                                 (status :target-type lifecycle-policy-status
                                  :member-name "status")
                                 (execution-role :target-type role-name-or-arn
                                  :required common-lisp:t :member-name
                                  "executionRole")
                                 (resource-type :target-type
                                  lifecycle-policy-resource-type :required
                                  common-lisp:t :member-name "resourceType")
                                 (policy-details :target-type
                                  lifecycle-policy-details :required
                                  common-lisp:t :member-name "policyDetails")
                                 (resource-selection :target-type
                                  lifecycle-policy-resource-selection :required
                                  common-lisp:t :member-name
                                  "resourceSelection")
                                 (client-token :target-type client-token
                                  :required common-lisp:t :member-name
                                  "clientToken"))
                                (:shape-name "UpdateLifecyclePolicyRequest"))

(smithy/sdk/shapes:define-output update-lifecycle-policy-response
                                 common-lisp:nil
                                 ((lifecycle-policy-arn :target-type
                                   lifecycle-policy-arn :member-name
                                   "lifecyclePolicyArn"))
                                 (:shape-name "UpdateLifecyclePolicyResponse"))

(smithy/sdk/shapes:define-type uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type user-data-override
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type version-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type vulnerability-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vulnerability-id-aggregation
                                    common-lisp:nil
                                    ((vulnerability-id :target-type
                                      non-empty-string :member-name
                                      "vulnerabilityId")
                                     (severity-counts :target-type
                                      severity-counts :member-name
                                      "severityCounts"))
                                    (:shape-name "VulnerabilityIdAggregation"))

(smithy/sdk/shapes:define-list vulnerability-id-list :member vulnerability-id)

(smithy/sdk/shapes:define-structure vulnerable-package common-lisp:nil
                                    ((name :target-type non-empty-string
                                      :member-name "name")
                                     (version :target-type non-empty-string
                                      :member-name "version")
                                     (source-layer-hash :target-type
                                      source-layer-hash :member-name
                                      "sourceLayerHash")
                                     (epoch :target-type package-epoch
                                      :member-name "epoch")
                                     (release :target-type non-empty-string
                                      :member-name "release")
                                     (arch :target-type package-architecture
                                      :member-name "arch")
                                     (package-manager :target-type
                                      non-empty-string :member-name
                                      "packageManager")
                                     (file-path :target-type non-empty-string
                                      :member-name "filePath")
                                     (fixed-in-version :target-type
                                      non-empty-string :member-name
                                      "fixedInVersion")
                                     (remediation :target-type non-empty-string
                                      :member-name "remediation"))
                                    (:shape-name "VulnerablePackage"))

(smithy/sdk/shapes:define-list vulnerable-package-list :member
                               vulnerable-package)

(smithy/sdk/shapes:define-structure workflow common-lisp:nil
                                    ((arn :target-type
                                      workflow-build-version-arn :member-name
                                      "arn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (version :target-type version-number
                                      :member-name "version")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (change-description :target-type
                                      non-empty-string :member-name
                                      "changeDescription")
                                     (type :target-type workflow-type
                                      :member-name "type")
                                     (state :target-type workflow-state
                                      :member-name "state")
                                     (owner :target-type non-empty-string
                                      :member-name "owner")
                                     (data :target-type workflow-data
                                      :member-name "data")
                                     (kms-key-id :target-type non-empty-string
                                      :member-name "kmsKeyId")
                                     (date-created :target-type date-time
                                      :member-name "dateCreated")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (parameters :target-type
                                      workflow-parameter-detail-list
                                      :member-name "parameters"))
                                    (:shape-name "Workflow"))

(smithy/sdk/shapes:define-type workflow-build-version-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workflow-configuration common-lisp:nil
                                    ((workflow-arn :target-type
                                      workflow-version-arn-or-build-version-arn
                                      :required common-lisp:t :member-name
                                      "workflowArn")
                                     (parameters :target-type
                                      workflow-parameter-list :member-name
                                      "parameters")
                                     (parallel-group :target-type
                                      parallel-group :member-name
                                      "parallelGroup")
                                     (on-failure :target-type
                                      on-workflow-failure :member-name
                                      "onFailure"))
                                    (:shape-name "WorkflowConfiguration"))

(smithy/sdk/shapes:define-list workflow-configuration-list :member
                               workflow-configuration)

(smithy/sdk/shapes:define-type workflow-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-execution-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-execution-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workflow-execution-metadata common-lisp:nil
                                    ((workflow-build-version-arn :target-type
                                      workflow-build-version-arn :member-name
                                      "workflowBuildVersionArn")
                                     (workflow-execution-id :target-type
                                      workflow-execution-id :member-name
                                      "workflowExecutionId")
                                     (type :target-type workflow-type
                                      :member-name "type")
                                     (status :target-type
                                      workflow-execution-status :member-name
                                      "status")
                                     (message :target-type
                                      workflow-execution-message :member-name
                                      "message")
                                     (total-step-count :target-type
                                      workflow-step-count :member-name
                                      "totalStepCount")
                                     (total-steps-succeeded :target-type
                                      workflow-step-count :member-name
                                      "totalStepsSucceeded")
                                     (total-steps-failed :target-type
                                      workflow-step-count :member-name
                                      "totalStepsFailed")
                                     (total-steps-skipped :target-type
                                      workflow-step-count :member-name
                                      "totalStepsSkipped")
                                     (start-time :target-type date-time
                                      :member-name "startTime")
                                     (end-time :target-type date-time
                                      :member-name "endTime")
                                     (parallel-group :target-type
                                      parallel-group :member-name
                                      "parallelGroup"))
                                    (:shape-name "WorkflowExecutionMetadata"))

(smithy/sdk/shapes:define-enum workflow-execution-status
    common-lisp:nil
  (:pending "PENDING")
  (:skipped "SKIPPED")
  (:running "RUNNING")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:rollback-in-progress "ROLLBACK_IN_PROGRESS")
  (:rollback-completed "ROLLBACK_COMPLETED")
  (:cancelled "CANCELLED"))

(smithy/sdk/shapes:define-list workflow-executions-list :member
                               workflow-execution-metadata)

(smithy/sdk/shapes:define-type workflow-name-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workflow-parameter common-lisp:nil
                                    ((name :target-type workflow-parameter-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (value :target-type
                                      workflow-parameter-value-list :required
                                      common-lisp:t :member-name "value"))
                                    (:shape-name "WorkflowParameter"))

(smithy/sdk/shapes:define-type workflow-parameter-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workflow-parameter-detail common-lisp:nil
                                    ((name :target-type workflow-parameter-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (type :target-type workflow-parameter-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (default-value :target-type
                                      workflow-parameter-value-list
                                      :member-name "defaultValue")
                                     (description :target-type
                                      workflow-parameter-description
                                      :member-name "description"))
                                    (:shape-name "WorkflowParameterDetail"))

(smithy/sdk/shapes:define-list workflow-parameter-detail-list :member
                               workflow-parameter-detail)

(smithy/sdk/shapes:define-list workflow-parameter-list :member
                               workflow-parameter)

(smithy/sdk/shapes:define-type workflow-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-parameter-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list workflow-parameter-value-list :member
                               workflow-parameter-value)

(smithy/sdk/shapes:define-structure workflow-state common-lisp:nil
                                    ((status :target-type workflow-status
                                      :member-name "status")
                                     (reason :target-type non-empty-string
                                      :member-name "reason"))
                                    (:shape-name "WorkflowState"))

(smithy/sdk/shapes:define-enum workflow-status
    common-lisp:nil
  (:deprecated "DEPRECATED"))

(smithy/sdk/shapes:define-type workflow-step-action
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum workflow-step-action-type
    common-lisp:nil
  (:resume "RESUME")
  (:stop "STOP"))

(smithy/sdk/shapes:define-type workflow-step-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type workflow-step-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workflow-step-execution common-lisp:nil
                                    ((step-execution-id :target-type
                                      workflow-step-execution-id :member-name
                                      "stepExecutionId")
                                     (image-build-version-arn :target-type
                                      image-build-version-arn :member-name
                                      "imageBuildVersionArn")
                                     (workflow-execution-id :target-type
                                      workflow-execution-id :member-name
                                      "workflowExecutionId")
                                     (workflow-build-version-arn :target-type
                                      workflow-build-version-arn :member-name
                                      "workflowBuildVersionArn")
                                     (name :target-type workflow-step-name
                                      :member-name "name")
                                     (action :target-type workflow-step-action
                                      :member-name "action")
                                     (start-time :target-type date-time
                                      :member-name "startTime"))
                                    (:shape-name "WorkflowStepExecution"))

(smithy/sdk/shapes:define-type workflow-step-execution-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list workflow-step-execution-list :member
                               workflow-step-execution)

(smithy/sdk/shapes:define-enum workflow-step-execution-rollback-status
    common-lisp:nil
  (:running "RUNNING")
  (:completed "COMPLETED")
  (:skipped "SKIPPED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum workflow-step-execution-status
    common-lisp:nil
  (:pending "PENDING")
  (:skipped "SKIPPED")
  (:running "RUNNING")
  (:completed "COMPLETED")
  (:failed "FAILED")
  (:cancelled "CANCELLED"))

(smithy/sdk/shapes:define-list workflow-step-executions-list :member
                               workflow-step-metadata)

(smithy/sdk/shapes:define-type workflow-step-inputs
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-step-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workflow-step-metadata common-lisp:nil
                                    ((step-execution-id :target-type
                                      workflow-step-execution-id :member-name
                                      "stepExecutionId")
                                     (name :target-type workflow-step-name
                                      :member-name "name")
                                     (description :target-type
                                      workflow-step-description :member-name
                                      "description")
                                     (action :target-type workflow-step-action
                                      :member-name "action")
                                     (status :target-type
                                      workflow-step-execution-status
                                      :member-name "status")
                                     (rollback-status :target-type
                                      workflow-step-execution-rollback-status
                                      :member-name "rollbackStatus")
                                     (message :target-type
                                      workflow-step-message :member-name
                                      "message")
                                     (inputs :target-type workflow-step-inputs
                                      :member-name "inputs")
                                     (outputs :target-type
                                      workflow-step-outputs :member-name
                                      "outputs")
                                     (start-time :target-type date-time
                                      :member-name "startTime")
                                     (end-time :target-type date-time
                                      :member-name "endTime"))
                                    (:shape-name "WorkflowStepMetadata"))

(smithy/sdk/shapes:define-type workflow-step-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-step-outputs
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-step-timeout-seconds-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure workflow-summary common-lisp:nil
                                    ((arn :target-type workflow-name-arn
                                      :member-name "arn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (version :target-type version-number
                                      :member-name "version")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (change-description :target-type
                                      non-empty-string :member-name
                                      "changeDescription")
                                     (type :target-type workflow-type
                                      :member-name "type")
                                     (owner :target-type non-empty-string
                                      :member-name "owner")
                                     (state :target-type workflow-state
                                      :member-name "state")
                                     (date-created :target-type date-time
                                      :member-name "dateCreated")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "WorkflowSummary"))

(smithy/sdk/shapes:define-list workflow-summary-list :member workflow-summary)

(smithy/sdk/shapes:define-enum workflow-type
    common-lisp:nil
  (:build "BUILD")
  (:test "TEST")
  (:distribution "DISTRIBUTION"))

(smithy/sdk/shapes:define-structure workflow-version common-lisp:nil
                                    ((arn :target-type workflow-version-arn
                                      :member-name "arn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (version :target-type version-number
                                      :member-name "version")
                                     (description :target-type non-empty-string
                                      :member-name "description")
                                     (type :target-type workflow-type
                                      :member-name "type")
                                     (owner :target-type non-empty-string
                                      :member-name "owner")
                                     (date-created :target-type date-time
                                      :member-name "dateCreated"))
                                    (:shape-name "WorkflowVersion"))

(smithy/sdk/shapes:define-type workflow-version-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workflow-version-arn-or-build-version-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list workflow-version-list :member workflow-version)

(smithy/sdk/shapes:define-type workflow-wildcard-version-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation cancel-image-creation :shape-name
                                       "CancelImageCreation" :input
                                       cancel-image-creation-request :output
                                       cancel-image-creation-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        idempotent-parameter-mismatch-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/CancelImageCreation" :code 200)

(smithy/sdk/operation:define-operation cancel-lifecycle-execution :shape-name
                                       "CancelLifecycleExecution" :input
                                       cancel-lifecycle-execution-request
                                       :output
                                       cancel-lifecycle-execution-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        idempotent-parameter-mismatch-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/CancelLifecycleExecution" :code 200)

(smithy/sdk/operation:define-operation create-component :shape-name
                                       "CreateComponent" :input
                                       create-component-request :output
                                       create-component-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        idempotent-parameter-mismatch-exception
                                        invalid-parameter-combination-exception
                                        invalid-request-exception
                                        invalid-version-number-exception
                                        resource-in-use-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri "/CreateComponent"
                                       :code 200)

(smithy/sdk/operation:define-operation create-container-recipe :shape-name
                                       "CreateContainerRecipe" :input
                                       create-container-recipe-request :output
                                       create-container-recipe-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        idempotent-parameter-mismatch-exception
                                        invalid-request-exception
                                        invalid-version-number-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/CreateContainerRecipe" :code 200)

(smithy/sdk/operation:define-operation create-distribution-configuration
                                       :shape-name
                                       "CreateDistributionConfiguration" :input
                                       create-distribution-configuration-request
                                       :output
                                       create-distribution-configuration-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        idempotent-parameter-mismatch-exception
                                        invalid-parameter-combination-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/CreateDistributionConfiguration" :code
                                       200)

(smithy/sdk/operation:define-operation create-image :shape-name "CreateImage"
                                       :input create-image-request :output
                                       create-image-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        idempotent-parameter-mismatch-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri "/CreateImage" :code
                                       200)

(smithy/sdk/operation:define-operation create-image-pipeline :shape-name
                                       "CreateImagePipeline" :input
                                       create-image-pipeline-request :output
                                       create-image-pipeline-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        idempotent-parameter-mismatch-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/CreateImagePipeline" :code 200)

(smithy/sdk/operation:define-operation create-image-recipe :shape-name
                                       "CreateImageRecipe" :input
                                       create-image-recipe-request :output
                                       create-image-recipe-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        idempotent-parameter-mismatch-exception
                                        invalid-request-exception
                                        invalid-version-number-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri "/CreateImageRecipe"
                                       :code 200)

(smithy/sdk/operation:define-operation create-infrastructure-configuration
                                       :shape-name
                                       "CreateInfrastructureConfiguration"
                                       :input
                                       create-infrastructure-configuration-request
                                       :output
                                       create-infrastructure-configuration-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        idempotent-parameter-mismatch-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/CreateInfrastructureConfiguration"
                                       :code 200)

(smithy/sdk/operation:define-operation create-lifecycle-policy :shape-name
                                       "CreateLifecyclePolicy" :input
                                       create-lifecycle-policy-request :output
                                       create-lifecycle-policy-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        idempotent-parameter-mismatch-exception
                                        invalid-request-exception
                                        resource-already-exists-exception
                                        resource-in-use-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/CreateLifecyclePolicy" :code 200)

(smithy/sdk/operation:define-operation create-workflow :shape-name
                                       "CreateWorkflow" :input
                                       create-workflow-request :output
                                       create-workflow-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        idempotent-parameter-mismatch-exception
                                        invalid-parameter-combination-exception
                                        invalid-request-exception
                                        invalid-version-number-exception
                                        resource-in-use-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri "/CreateWorkflow"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-component :shape-name
                                       "DeleteComponent" :input
                                       delete-component-request :output
                                       delete-component-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        resource-dependency-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri "/DeleteComponent"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-container-recipe :shape-name
                                       "DeleteContainerRecipe" :input
                                       delete-container-recipe-request :output
                                       delete-container-recipe-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        resource-dependency-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/DeleteContainerRecipe" :code 200)

(smithy/sdk/operation:define-operation delete-distribution-configuration
                                       :shape-name
                                       "DeleteDistributionConfiguration" :input
                                       delete-distribution-configuration-request
                                       :output
                                       delete-distribution-configuration-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        resource-dependency-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/DeleteDistributionConfiguration" :code
                                       200)

(smithy/sdk/operation:define-operation delete-image :shape-name "DeleteImage"
                                       :input delete-image-request :output
                                       delete-image-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        resource-dependency-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri "/DeleteImage"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-image-pipeline :shape-name
                                       "DeleteImagePipeline" :input
                                       delete-image-pipeline-request :output
                                       delete-image-pipeline-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        resource-dependency-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/DeleteImagePipeline" :code 200)

(smithy/sdk/operation:define-operation delete-image-recipe :shape-name
                                       "DeleteImageRecipe" :input
                                       delete-image-recipe-request :output
                                       delete-image-recipe-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        resource-dependency-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/DeleteImageRecipe" :code 200)

(smithy/sdk/operation:define-operation delete-infrastructure-configuration
                                       :shape-name
                                       "DeleteInfrastructureConfiguration"
                                       :input
                                       delete-infrastructure-configuration-request
                                       :output
                                       delete-infrastructure-configuration-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        resource-dependency-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/DeleteInfrastructureConfiguration"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-lifecycle-policy :shape-name
                                       "DeleteLifecyclePolicy" :input
                                       delete-lifecycle-policy-request :output
                                       delete-lifecycle-policy-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        resource-dependency-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri
                                       "/DeleteLifecyclePolicy" :code 200)

(smithy/sdk/operation:define-operation delete-workflow :shape-name
                                       "DeleteWorkflow" :input
                                       delete-workflow-request :output
                                       delete-workflow-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        resource-dependency-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "DELETE" :uri "/DeleteWorkflow"
                                       :code 200)

(smithy/sdk/operation:define-operation get-component :shape-name "GetComponent"
                                       :input get-component-request :output
                                       get-component-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/GetComponent" :code
                                       200)

(smithy/sdk/operation:define-operation get-component-policy :shape-name
                                       "GetComponentPolicy" :input
                                       get-component-policy-request :output
                                       get-component-policy-response :errors
                                       (call-rate-limit-exceeded-exception
                                        forbidden-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/GetComponentPolicy"
                                       :code 200)

(smithy/sdk/operation:define-operation get-container-recipe :shape-name
                                       "GetContainerRecipe" :input
                                       get-container-recipe-request :output
                                       get-container-recipe-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/GetContainerRecipe"
                                       :code 200)

(smithy/sdk/operation:define-operation get-container-recipe-policy :shape-name
                                       "GetContainerRecipePolicy" :input
                                       get-container-recipe-policy-request
                                       :output
                                       get-container-recipe-policy-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        forbidden-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/GetContainerRecipePolicy" :code 200)

(smithy/sdk/operation:define-operation get-distribution-configuration
                                       :shape-name
                                       "GetDistributionConfiguration" :input
                                       get-distribution-configuration-request
                                       :output
                                       get-distribution-configuration-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/GetDistributionConfiguration" :code
                                       200)

(smithy/sdk/operation:define-operation get-image :shape-name "GetImage" :input
                                       get-image-request :output
                                       get-image-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/GetImage" :code 200)

(smithy/sdk/operation:define-operation get-image-pipeline :shape-name
                                       "GetImagePipeline" :input
                                       get-image-pipeline-request :output
                                       get-image-pipeline-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/GetImagePipeline"
                                       :code 200)

(smithy/sdk/operation:define-operation get-image-policy :shape-name
                                       "GetImagePolicy" :input
                                       get-image-policy-request :output
                                       get-image-policy-response :errors
                                       (call-rate-limit-exceeded-exception
                                        forbidden-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/GetImagePolicy"
                                       :code 200)

(smithy/sdk/operation:define-operation get-image-recipe :shape-name
                                       "GetImageRecipe" :input
                                       get-image-recipe-request :output
                                       get-image-recipe-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/GetImageRecipe"
                                       :code 200)

(smithy/sdk/operation:define-operation get-image-recipe-policy :shape-name
                                       "GetImageRecipePolicy" :input
                                       get-image-recipe-policy-request :output
                                       get-image-recipe-policy-response :errors
                                       (call-rate-limit-exceeded-exception
                                        forbidden-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/GetImageRecipePolicy" :code 200)

(smithy/sdk/operation:define-operation get-infrastructure-configuration
                                       :shape-name
                                       "GetInfrastructureConfiguration" :input
                                       get-infrastructure-configuration-request
                                       :output
                                       get-infrastructure-configuration-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/GetInfrastructureConfiguration" :code
                                       200)

(smithy/sdk/operation:define-operation get-lifecycle-execution :shape-name
                                       "GetLifecycleExecution" :input
                                       get-lifecycle-execution-request :output
                                       get-lifecycle-execution-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/GetLifecycleExecution" :code 200)

(smithy/sdk/operation:define-operation get-lifecycle-policy :shape-name
                                       "GetLifecyclePolicy" :input
                                       get-lifecycle-policy-request :output
                                       get-lifecycle-policy-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/GetLifecyclePolicy"
                                       :code 200)

(smithy/sdk/operation:define-operation get-marketplace-resource :shape-name
                                       "GetMarketplaceResource" :input
                                       get-marketplace-resource-request :output
                                       get-marketplace-resource-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/GetMarketplaceResource" :code 200)

(smithy/sdk/operation:define-operation get-workflow :shape-name "GetWorkflow"
                                       :input get-workflow-request :output
                                       get-workflow-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri "/GetWorkflow" :code
                                       200)

(smithy/sdk/operation:define-operation get-workflow-execution :shape-name
                                       "GetWorkflowExecution" :input
                                       get-workflow-execution-request :output
                                       get-workflow-execution-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/GetWorkflowExecution" :code 200)

(smithy/sdk/operation:define-operation get-workflow-step-execution :shape-name
                                       "GetWorkflowStepExecution" :input
                                       get-workflow-step-execution-request
                                       :output
                                       get-workflow-step-execution-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "GET" :uri
                                       "/GetWorkflowStepExecution" :code 200)

(smithy/sdk/operation:define-operation import-component :shape-name
                                       "ImportComponent" :input
                                       import-component-request :output
                                       import-component-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        idempotent-parameter-mismatch-exception
                                        invalid-parameter-combination-exception
                                        invalid-request-exception
                                        invalid-version-number-exception
                                        resource-in-use-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri "/ImportComponent"
                                       :code 200)

(smithy/sdk/operation:define-operation import-disk-image :shape-name
                                       "ImportDiskImage" :input
                                       import-disk-image-request :output
                                       import-disk-image-response :errors
                                       (client-exception service-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri "/ImportDiskImage"
                                       :code 200)

(smithy/sdk/operation:define-operation import-vm-image :shape-name
                                       "ImportVmImage" :input
                                       import-vm-image-request :output
                                       import-vm-image-response :errors
                                       (client-exception service-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri "/ImportVmImage"
                                       :code 200)

(smithy/sdk/operation:define-operation list-component-build-versions
                                       :shape-name "ListComponentBuildVersions"
                                       :input
                                       list-component-build-versions-request
                                       :output
                                       list-component-build-versions-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/ListComponentBuildVersions" :code 200)

(smithy/sdk/operation:define-operation list-components :shape-name
                                       "ListComponents" :input
                                       list-components-request :output
                                       list-components-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/ListComponents"
                                       :code 200)

(smithy/sdk/operation:define-operation list-container-recipes :shape-name
                                       "ListContainerRecipes" :input
                                       list-container-recipes-request :output
                                       list-container-recipes-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/ListContainerRecipes" :code 200)

(smithy/sdk/operation:define-operation list-distribution-configurations
                                       :shape-name
                                       "ListDistributionConfigurations" :input
                                       list-distribution-configurations-request
                                       :output
                                       list-distribution-configurations-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/ListDistributionConfigurations" :code
                                       200)

(smithy/sdk/operation:define-operation list-image-build-versions :shape-name
                                       "ListImageBuildVersions" :input
                                       list-image-build-versions-request
                                       :output
                                       list-image-build-versions-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/ListImageBuildVersions" :code 200)

(smithy/sdk/operation:define-operation list-image-packages :shape-name
                                       "ListImagePackages" :input
                                       list-image-packages-request :output
                                       list-image-packages-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/ListImagePackages"
                                       :code 200)

(smithy/sdk/operation:define-operation list-image-pipeline-images :shape-name
                                       "ListImagePipelineImages" :input
                                       list-image-pipeline-images-request
                                       :output
                                       list-image-pipeline-images-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/ListImagePipelineImages" :code 200)

(smithy/sdk/operation:define-operation list-image-pipelines :shape-name
                                       "ListImagePipelines" :input
                                       list-image-pipelines-request :output
                                       list-image-pipelines-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/ListImagePipelines" :code 200)

(smithy/sdk/operation:define-operation list-image-recipes :shape-name
                                       "ListImageRecipes" :input
                                       list-image-recipes-request :output
                                       list-image-recipes-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/ListImageRecipes"
                                       :code 200)

(smithy/sdk/operation:define-operation list-image-scan-finding-aggregations
                                       :shape-name
                                       "ListImageScanFindingAggregations"
                                       :input
                                       list-image-scan-finding-aggregations-request
                                       :output
                                       list-image-scan-finding-aggregations-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/ListImageScanFindingAggregations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-image-scan-findings :shape-name
                                       "ListImageScanFindings" :input
                                       list-image-scan-findings-request :output
                                       list-image-scan-findings-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/ListImageScanFindings" :code 200)

(smithy/sdk/operation:define-operation list-images :shape-name "ListImages"
                                       :input list-images-request :output
                                       list-images-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/ListImages" :code
                                       200)

(smithy/sdk/operation:define-operation list-infrastructure-configurations
                                       :shape-name
                                       "ListInfrastructureConfigurations"
                                       :input
                                       list-infrastructure-configurations-request
                                       :output
                                       list-infrastructure-configurations-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/ListInfrastructureConfigurations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-lifecycle-execution-resources
                                       :shape-name
                                       "ListLifecycleExecutionResources" :input
                                       list-lifecycle-execution-resources-request
                                       :output
                                       list-lifecycle-execution-resources-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/ListLifecycleExecutionResources" :code
                                       200)

(smithy/sdk/operation:define-operation list-lifecycle-executions :shape-name
                                       "ListLifecycleExecutions" :input
                                       list-lifecycle-executions-request
                                       :output
                                       list-lifecycle-executions-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/ListLifecycleExecutions" :code 200)

(smithy/sdk/operation:define-operation list-lifecycle-policies :shape-name
                                       "ListLifecyclePolicies" :input
                                       list-lifecycle-policies-request :output
                                       list-lifecycle-policies-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/ListLifecyclePolicies" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        service-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-waiting-workflow-steps :shape-name
                                       "ListWaitingWorkflowSteps" :input
                                       list-waiting-workflow-steps-request
                                       :output
                                       list-waiting-workflow-steps-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/ListWaitingWorkflowSteps" :code 200)

(smithy/sdk/operation:define-operation list-workflow-build-versions :shape-name
                                       "ListWorkflowBuildVersions" :input
                                       list-workflow-build-versions-request
                                       :output
                                       list-workflow-build-versions-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/ListWorkflowBuildVersions" :code 200)

(smithy/sdk/operation:define-operation list-workflow-executions :shape-name
                                       "ListWorkflowExecutions" :input
                                       list-workflow-executions-request :output
                                       list-workflow-executions-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/ListWorkflowExecutions" :code 200)

(smithy/sdk/operation:define-operation list-workflow-step-executions
                                       :shape-name "ListWorkflowStepExecutions"
                                       :input
                                       list-workflow-step-executions-request
                                       :output
                                       list-workflow-step-executions-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri
                                       "/ListWorkflowStepExecutions" :code 200)

(smithy/sdk/operation:define-operation list-workflows :shape-name
                                       "ListWorkflows" :input
                                       list-workflows-request :output
                                       list-workflows-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-pagination-token-exception
                                        invalid-request-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "POST" :uri "/ListWorkflows"
                                       :code 200)

(smithy/sdk/operation:define-operation put-component-policy :shape-name
                                       "PutComponentPolicy" :input
                                       put-component-policy-request :output
                                       put-component-policy-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-parameter-value-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri "/PutComponentPolicy"
                                       :code 200)

(smithy/sdk/operation:define-operation put-container-recipe-policy :shape-name
                                       "PutContainerRecipePolicy" :input
                                       put-container-recipe-policy-request
                                       :output
                                       put-container-recipe-policy-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-parameter-value-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/PutContainerRecipePolicy" :code 200)

(smithy/sdk/operation:define-operation put-image-policy :shape-name
                                       "PutImagePolicy" :input
                                       put-image-policy-request :output
                                       put-image-policy-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-parameter-value-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri "/PutImagePolicy"
                                       :code 200)

(smithy/sdk/operation:define-operation put-image-recipe-policy :shape-name
                                       "PutImageRecipePolicy" :input
                                       put-image-recipe-policy-request :output
                                       put-image-recipe-policy-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        invalid-parameter-value-exception
                                        invalid-request-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/PutImageRecipePolicy" :code 200)

(smithy/sdk/operation:define-operation send-workflow-step-action :shape-name
                                       "SendWorkflowStepAction" :input
                                       send-workflow-step-action-request
                                       :output
                                       send-workflow-step-action-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        idempotent-parameter-mismatch-exception
                                        invalid-parameter-value-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/SendWorkflowStepAction" :code 200)

(smithy/sdk/operation:define-operation start-image-pipeline-execution
                                       :shape-name
                                       "StartImagePipelineExecution" :input
                                       start-image-pipeline-execution-request
                                       :output
                                       start-image-pipeline-execution-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        idempotent-parameter-mismatch-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/StartImagePipelineExecution" :code 200)

(smithy/sdk/operation:define-operation start-resource-state-update :shape-name
                                       "StartResourceStateUpdate" :input
                                       start-resource-state-update-request
                                       :output
                                       start-resource-state-update-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        idempotent-parameter-mismatch-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/StartResourceStateUpdate" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        service-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (invalid-parameter-exception
                                        resource-not-found-exception
                                        service-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-distribution-configuration
                                       :shape-name
                                       "UpdateDistributionConfiguration" :input
                                       update-distribution-configuration-request
                                       :output
                                       update-distribution-configuration-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        idempotent-parameter-mismatch-exception
                                        invalid-parameter-combination-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/UpdateDistributionConfiguration" :code
                                       200)

(smithy/sdk/operation:define-operation update-image-pipeline :shape-name
                                       "UpdateImagePipeline" :input
                                       update-image-pipeline-request :output
                                       update-image-pipeline-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        idempotent-parameter-mismatch-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/UpdateImagePipeline" :code 200)

(smithy/sdk/operation:define-operation update-infrastructure-configuration
                                       :shape-name
                                       "UpdateInfrastructureConfiguration"
                                       :input
                                       update-infrastructure-configuration-request
                                       :output
                                       update-infrastructure-configuration-response
                                       :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        idempotent-parameter-mismatch-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/UpdateInfrastructureConfiguration"
                                       :code 200)

(smithy/sdk/operation:define-operation update-lifecycle-policy :shape-name
                                       "UpdateLifecyclePolicy" :input
                                       update-lifecycle-policy-request :output
                                       update-lifecycle-policy-response :errors
                                       (call-rate-limit-exceeded-exception
                                        client-exception forbidden-exception
                                        idempotent-parameter-mismatch-exception
                                        invalid-parameter-combination-exception
                                        invalid-request-exception
                                        resource-in-use-exception
                                        service-exception
                                        service-unavailable-exception)
                                       :method "PUT" :uri
                                       "/UpdateLifecyclePolicy" :code 200)
