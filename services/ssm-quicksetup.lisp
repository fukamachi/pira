(uiop/package:define-package #:pira/ssm-quicksetup (:use)
                             (:export #:access-denied-exception
                              #:configuration-definition
                              #:configuration-definition-input
                              #:configuration-definition-summaries-list
                              #:configuration-definition-summary
                              #:configuration-definitions-input-list
                              #:configuration-definitions-list
                              #:configuration-manager-list
                              #:configuration-manager-summary
                              #:configuration-parameters-map
                              #:configuration-summary #:configurations-list
                              #:conflict-exception
                              #:create-configuration-manager
                              #:create-configuration-manager-input
                              #:create-configuration-manager-output
                              #:delete-configuration-manager
                              #:delete-configuration-manager-input #:filter
                              #:filter-values #:filters-list
                              #:get-configuration #:get-configuration-input
                              #:get-configuration-manager
                              #:get-configuration-manager-input
                              #:get-configuration-manager-output
                              #:get-configuration-output #:get-service-settings
                              #:get-service-settings-output #:iamrole-arn
                              #:internal-server-exception
                              #:list-configuration-managers
                              #:list-configuration-managers-input
                              #:list-configuration-managers-output
                              #:list-configurations #:list-configurations-input
                              #:list-configurations-output
                              #:list-quick-setup-types
                              #:list-quick-setup-types-output
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:quick-setup
                              #:quick-setup-type-list #:quick-setup-type-output
                              #:resource-not-found-exception #:service-settings
                              #:status #:status-details #:status-summaries-list
                              #:status-summary #:status-type #:tag-entry
                              #:tag-keys #:tag-resource #:tag-resource-input
                              #:tags #:tags-map #:throttling-exception
                              #:untag-resource #:untag-resource-input
                              #:update-configuration-definition
                              #:update-configuration-definition-input
                              #:update-configuration-manager
                              #:update-configuration-manager-input
                              #:update-service-settings
                              #:update-service-settings-input
                              #:validation-exception))
(common-lisp:in-package #:pira/ssm-quicksetup)

(smithy/sdk/service:define-service quick-setup :shape-name "QuickSetup"
                                   :version "2018-05-10" :title
                                   "AWS Systems Manager QuickSetup" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "SSM QuickSetup")
                                      ("arnNamespace" . "ssm-quicksetup")
                                      ("cloudTrailEventSource"
                                       . "ssm-quicksetup.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "ssm-quicksetup"))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure configuration-definition common-lisp:nil
                                    ((type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Type")
                                     (parameters :target-type
                                      configuration-parameters-map :required
                                      common-lisp:t :member-name "Parameters")
                                     (type-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "TypeVersion")
                                     (local-deployment-execution-role-name
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "LocalDeploymentExecutionRoleName")
                                     (local-deployment-administration-role-arn
                                      :target-type iamrole-arn :member-name
                                      "LocalDeploymentAdministrationRoleArn")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Id"))
                                    (:shape-name "ConfigurationDefinition"))

(smithy/sdk/shapes:define-structure configuration-definition-input
                                    common-lisp:nil
                                    ((type :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Type")
                                     (parameters :target-type
                                      configuration-parameters-map :required
                                      common-lisp:t :member-name "Parameters")
                                     (type-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "TypeVersion")
                                     (local-deployment-execution-role-name
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "LocalDeploymentExecutionRoleName")
                                     (local-deployment-administration-role-arn
                                      :target-type iamrole-arn :member-name
                                      "LocalDeploymentAdministrationRoleArn"))
                                    (:shape-name
                                     "ConfigurationDefinitionInput"))

(smithy/sdk/shapes:define-list configuration-definition-summaries-list :member
                               configuration-definition-summary)

(smithy/sdk/shapes:define-structure configuration-definition-summary
                                    common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Id")
                                     (type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Type")
                                     (type-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "TypeVersion")
                                     (first-class-parameters :target-type
                                      configuration-parameters-map :member-name
                                      "FirstClassParameters"))
                                    (:shape-name
                                     "ConfigurationDefinitionSummary"))

(smithy/sdk/shapes:define-list configuration-definitions-input-list :member
                               configuration-definition-input)

(smithy/sdk/shapes:define-list configuration-definitions-list :member
                               configuration-definition)

(smithy/sdk/shapes:define-list configuration-manager-list :member
                               configuration-manager-summary)

(smithy/sdk/shapes:define-structure configuration-manager-summary
                                    common-lisp:nil
                                    ((manager-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "ManagerArn")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Description")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Name")
                                     (status-summaries :target-type
                                      status-summaries-list :member-name
                                      "StatusSummaries")
                                     (configuration-definition-summaries
                                      :target-type
                                      configuration-definition-summaries-list
                                      :member-name
                                      "ConfigurationDefinitionSummaries"))
                                    (:shape-name "ConfigurationManagerSummary"))

(smithy/sdk/shapes:define-map configuration-parameters-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure configuration-summary common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Id")
                                     (manager-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ManagerArn")
                                     (configuration-definition-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "ConfigurationDefinitionId")
                                     (type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Type")
                                     (type-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "TypeVersion")
                                     (region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Region")
                                     (account :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Account")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "CreatedAt"
                                      :timestamp-format "date-time")
                                     (first-class-parameters :target-type
                                      configuration-parameters-map :member-name
                                      "FirstClassParameters")
                                     (status-summaries :target-type
                                      status-summaries-list :member-name
                                      "StatusSummaries"))
                                    (:shape-name "ConfigurationSummary"))

(smithy/sdk/shapes:define-list configurations-list :member
                               configuration-summary)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-configuration-manager-input
                                common-lisp:nil
                                ((name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Name")
                                 (description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Description")
                                 (configuration-definitions :target-type
                                  configuration-definitions-input-list
                                  :required common-lisp:t :member-name
                                  "ConfigurationDefinitions")
                                 (tags :target-type tags-map :member-name
                                  "Tags"))
                                (:shape-name "CreateConfigurationManagerInput"))

(smithy/sdk/shapes:define-output create-configuration-manager-output
                                 common-lisp:nil
                                 ((manager-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "ManagerArn"))
                                 (:shape-name
                                  "CreateConfigurationManagerOutput"))

(smithy/sdk/shapes:define-input delete-configuration-manager-input
                                common-lisp:nil
                                ((manager-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ManagerArn"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteConfigurationManagerInput"))

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((key :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "Key")
                                     (values :target-type filter-values
                                      :required common-lisp:t :member-name
                                      "Values"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-list filter-values :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filters-list :member filter)

(smithy/sdk/shapes:define-input get-configuration-input common-lisp:nil
                                ((configuration-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ConfigurationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetConfigurationInput"))

(smithy/sdk/shapes:define-input get-configuration-manager-input common-lisp:nil
                                ((manager-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ManagerArn"
                                  :http-label common-lisp:t))
                                (:shape-name "GetConfigurationManagerInput"))

(smithy/sdk/shapes:define-output get-configuration-manager-output
                                 common-lisp:nil
                                 ((manager-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "ManagerArn")
                                  (description :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Description")
                                  (name :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Name")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedAt" :timestamp-format
                                   "date-time")
                                  (last-modified-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "LastModifiedAt"
                                   :timestamp-format "date-time")
                                  (status-summaries :target-type
                                   status-summaries-list :member-name
                                   "StatusSummaries")
                                  (configuration-definitions :target-type
                                   configuration-definitions-list :member-name
                                   "ConfigurationDefinitions")
                                  (tags :target-type tags-map :member-name
                                   "Tags"))
                                 (:shape-name "GetConfigurationManagerOutput"))

(smithy/sdk/shapes:define-output get-configuration-output common-lisp:nil
                                 ((id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Id")
                                  (manager-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ManagerArn")
                                  (configuration-definition-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "ConfigurationDefinitionId")
                                  (type :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Type")
                                  (type-version :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "TypeVersion")
                                  (account :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Account")
                                  (region :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "Region")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "CreatedAt" :timestamp-format
                                   "date-time")
                                  (last-modified-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "LastModifiedAt"
                                   :timestamp-format "date-time")
                                  (status-summaries :target-type
                                   status-summaries-list :member-name
                                   "StatusSummaries")
                                  (parameters :target-type
                                   configuration-parameters-map :member-name
                                   "Parameters"))
                                 (:shape-name "GetConfigurationOutput"))

(smithy/sdk/shapes:define-output get-service-settings-output common-lisp:nil
                                 ((service-settings :target-type
                                   service-settings :member-name
                                   "ServiceSettings"))
                                 (:shape-name "GetServiceSettingsOutput"))

(smithy/sdk/shapes:define-type iamrole-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-configuration-managers-input
                                common-lisp:nil
                                ((starting-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "StartingToken")
                                 (max-items :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxItems")
                                 (filters :target-type filters-list
                                  :member-name "Filters"))
                                (:shape-name "ListConfigurationManagersInput"))

(smithy/sdk/shapes:define-output list-configuration-managers-output
                                 common-lisp:nil
                                 ((configuration-managers-list :target-type
                                   configuration-manager-list :member-name
                                   "ConfigurationManagersList")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "ListConfigurationManagersOutput"))

(smithy/sdk/shapes:define-input list-configurations-input common-lisp:nil
                                ((starting-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "StartingToken")
                                 (max-items :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "MaxItems")
                                 (filters :target-type filters-list
                                  :member-name "Filters")
                                 (manager-arn :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ManagerArn")
                                 (configuration-definition-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "ConfigurationDefinitionId"))
                                (:shape-name "ListConfigurationsInput"))

(smithy/sdk/shapes:define-output list-configurations-output common-lisp:nil
                                 ((configurations-list :target-type
                                   configurations-list :member-name
                                   "ConfigurationsList")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "NextToken"))
                                 (:shape-name "ListConfigurationsOutput"))

(smithy/sdk/shapes:define-output list-quick-setup-types-output common-lisp:nil
                                 ((quick-setup-type-list :target-type
                                   quick-setup-type-list :member-name
                                   "QuickSetupTypeList"))
                                 (:shape-name "ListQuickSetupTypesOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-list quick-setup-type-list :member
                               quick-setup-type-output)

(smithy/sdk/shapes:define-structure quick-setup-type-output common-lisp:nil
                                    ((type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Type")
                                     (latest-version :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "LatestVersion"))
                                    (:shape-name "QuickSetupTypeOutput"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure service-settings common-lisp:nil
                                    ((explorer-enabling-role-arn :target-type
                                      iamrole-arn :member-name
                                      "ExplorerEnablingRoleArn"))
                                    (:shape-name "ServiceSettings"))

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:initializing "INITIALIZING")
  (:deploying "DEPLOYING")
  (:succeeded "SUCCEEDED")
  (:deleting "DELETING")
  (:stopping "STOPPING")
  (:failed "FAILED")
  (:stopped "STOPPED")
  (:delete-failed "DELETE_FAILED")
  (:stop-failed "STOP_FAILED")
  (:none "NONE"))

(smithy/sdk/shapes:define-map status-details :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list status-summaries-list :member status-summary)

(smithy/sdk/shapes:define-structure status-summary common-lisp:nil
                                    ((status-type :target-type status-type
                                      :required common-lisp:t :member-name
                                      "StatusType")
                                     (status :target-type status :member-name
                                      "Status")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "StatusMessage")
                                     (last-updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "LastUpdatedAt" :timestamp-format
                                      "date-time")
                                     (status-details :target-type
                                      status-details :member-name
                                      "StatusDetails"))
                                    (:shape-name "StatusSummary"))

(smithy/sdk/shapes:define-enum status-type
    common-lisp:nil
  (:deployment "Deployment")
  (:async-executions "AsyncExecutions"))

(smithy/sdk/shapes:define-structure tag-entry common-lisp:nil
                                    ((key :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Key")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Value"))
                                    (:shape-name "TagEntry"))

(smithy/sdk/shapes:define-list tag-keys :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags-map :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-list tags :member tag-entry)

(smithy/sdk/shapes:define-map tags-map :key smithy/sdk/smithy-types:string
                              :value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-input update-configuration-definition-input
                                common-lisp:nil
                                ((manager-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ManagerArn"
                                  :http-label common-lisp:t)
                                 (id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "Id" :http-label
                                  common-lisp:t)
                                 (type-version :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "TypeVersion")
                                 (parameters :target-type
                                  configuration-parameters-map :member-name
                                  "Parameters")
                                 (local-deployment-execution-role-name
                                  :target-type smithy/sdk/smithy-types:string
                                  :member-name
                                  "LocalDeploymentExecutionRoleName")
                                 (local-deployment-administration-role-arn
                                  :target-type iamrole-arn :member-name
                                  "LocalDeploymentAdministrationRoleArn"))
                                (:shape-name
                                 "UpdateConfigurationDefinitionInput"))

(smithy/sdk/shapes:define-input update-configuration-manager-input
                                common-lisp:nil
                                ((manager-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "ManagerArn"
                                  :http-label common-lisp:t)
                                 (name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Name")
                                 (description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Description"))
                                (:shape-name "UpdateConfigurationManagerInput"))

(smithy/sdk/shapes:define-input update-service-settings-input common-lisp:nil
                                ((explorer-enabling-role-arn :target-type
                                  iamrole-arn :member-name
                                  "ExplorerEnablingRoleArn"))
                                (:shape-name "UpdateServiceSettingsInput"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation create-configuration-manager :shape-name
                                       "CreateConfigurationManager" :input
                                       create-configuration-manager-input
                                       :output
                                       create-configuration-manager-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/configurationManager" :code 200)

(smithy/sdk/operation:define-operation delete-configuration-manager :shape-name
                                       "DeleteConfigurationManager" :input
                                       delete-configuration-manager-input
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/configurationManager/{ManagerArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-configuration :shape-name
                                       "GetConfiguration" :input
                                       get-configuration-input :output
                                       get-configuration-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/getConfiguration/{ConfigurationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-configuration-manager :shape-name
                                       "GetConfigurationManager" :input
                                       get-configuration-manager-input :output
                                       get-configuration-manager-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/configurationManager/{ManagerArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-service-settings :shape-name
                                       "GetServiceSettings" :input
                                       common-lisp:null :output
                                       get-service-settings-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception)
                                       :method "GET" :uri "/serviceSettings"
                                       :code 200)

(smithy/sdk/operation:define-operation list-configuration-managers :shape-name
                                       "ListConfigurationManagers" :input
                                       list-configuration-managers-input
                                       :output
                                       list-configuration-managers-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/listConfigurationManagers" :code 200)

(smithy/sdk/operation:define-operation list-configurations :shape-name
                                       "ListConfigurations" :input
                                       list-configurations-input :output
                                       list-configurations-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/listConfigurations" :code 200)

(smithy/sdk/operation:define-operation list-quick-setup-types :shape-name
                                       "ListQuickSetupTypes" :input
                                       common-lisp:null :output
                                       list-quick-setup-types-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/listQuickSetupTypes" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/tags/{ResourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-configuration-definition
                                       :shape-name
                                       "UpdateConfigurationDefinition" :input
                                       update-configuration-definition-input
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/configurationDefinition/{ManagerArn}/{Id}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-configuration-manager :shape-name
                                       "UpdateConfigurationManager" :input
                                       update-configuration-manager-input
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/configurationManager/{ManagerArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-service-settings :shape-name
                                       "UpdateServiceSettings" :input
                                       update-service-settings-input :output
                                       common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/serviceSettings"
                                       :code 200)
