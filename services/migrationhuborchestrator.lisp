(uiop/package:define-package #:pira/migrationhuborchestrator (:use)
                             (:export #:awsmigration-hub-orchestrator
                              #:application-configuration-name #:client-token
                              #:create-migration-workflow-request
                              #:create-migration-workflow-response
                              #:create-template #:create-workflow
                              #:create-workflow-step
                              #:create-workflow-step-group
                              #:create-workflow-step-group-request
                              #:create-workflow-step-group-response
                              #:create-workflow-step-request
                              #:create-workflow-step-response #:data-type
                              #:delete-migration-workflow-request
                              #:delete-migration-workflow-response
                              #:delete-template #:delete-workflow
                              #:delete-workflow-step
                              #:delete-workflow-step-group
                              #:delete-workflow-step-group-request
                              #:delete-workflow-step-group-response
                              #:delete-workflow-step-request
                              #:delete-workflow-step-response
                              #:get-migration-workflow-request
                              #:get-migration-workflow-response
                              #:get-migration-workflow-template-request
                              #:get-migration-workflow-template-response
                              #:get-template #:get-template-step
                              #:get-template-step-group
                              #:get-template-step-group-request
                              #:get-template-step-group-response
                              #:get-template-step-request
                              #:get-template-step-response #:get-workflow
                              #:get-workflow-step #:get-workflow-step-group
                              #:get-workflow-step-group-request
                              #:get-workflow-step-group-response
                              #:get-workflow-step-request
                              #:get-workflow-step-response #:ipaddress
                              #:list-migration-workflow-templates-request
                              #:list-migration-workflow-templates-response
                              #:list-migration-workflows-request
                              #:list-migration-workflows-response
                              #:list-plugins #:list-plugins-request
                              #:list-plugins-response #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:list-template-step-groups
                              #:list-template-step-groups-request
                              #:list-template-step-groups-response
                              #:list-template-steps
                              #:list-template-steps-request
                              #:list-template-steps-response #:list-templates
                              #:list-workflow-step-groups
                              #:list-workflow-step-groups-request
                              #:list-workflow-step-groups-response
                              #:list-workflow-steps
                              #:list-workflow-steps-request
                              #:list-workflow-steps-response #:list-workflows
                              #:max-results #:max-string-list
                              #:max-string-value #:migration-workflow
                              #:migration-workflow-description
                              #:migration-workflow-id #:migration-workflow-name
                              #:migration-workflow-status-enum
                              #:migration-workflow-summary
                              #:migration-workflow-summary-list
                              #:migration-workflow-template #:next-token
                              #:owner #:platform-command #:platform-script-key
                              #:plugin #:plugin-health #:plugin-id
                              #:plugin-summaries #:plugin-summary
                              #:plugin-version #:resource-arn
                              #:retry-workflow-step
                              #:retry-workflow-step-request
                              #:retry-workflow-step-response #:run-environment
                              #:s3bucket #:s3key
                              #:start-migration-workflow-request
                              #:start-migration-workflow-response
                              #:start-workflow #:step-action-type
                              #:step-automation-configuration
                              #:step-description #:step-group-description
                              #:step-group-id #:step-group-name
                              #:step-group-status #:step-id #:step-input
                              #:step-input-parameters
                              #:step-input-parameters-key #:step-name
                              #:step-output #:step-output-list #:step-status
                              #:stop-migration-workflow-request
                              #:stop-migration-workflow-response
                              #:stop-workflow #:string-list
                              #:string-list-member #:string-map
                              #:string-map-key #:string-map-value
                              #:string-value #:tag-key #:tag-key-list #:tag-map
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value #:target-type
                              #:template-id #:template-input
                              #:template-input-list #:template-input-name
                              #:template-name #:template-source
                              #:template-status #:template-step
                              #:template-step-group
                              #:template-step-group-summary
                              #:template-step-group-summary-list
                              #:template-step-groups #:template-step-summary
                              #:template-step-summary-list #:template-summary
                              #:template-summary-list #:tool #:tools-list
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response
                              #:update-migration-workflow-request
                              #:update-migration-workflow-response
                              #:update-template #:update-workflow
                              #:update-workflow-step
                              #:update-workflow-step-group
                              #:update-workflow-step-group-request
                              #:update-workflow-step-group-response
                              #:update-workflow-step-request
                              #:update-workflow-step-response #:workflow-step
                              #:workflow-step-automation-configuration
                              #:workflow-step-group
                              #:workflow-step-group-summary
                              #:workflow-step-groups-summary-list
                              #:workflow-step-output
                              #:workflow-step-output-list
                              #:workflow-step-output-name
                              #:workflow-step-output-union
                              #:workflow-step-summary
                              #:workflow-steps-summary-list))
(common-lisp:in-package #:pira/migrationhuborchestrator)

(smithy/sdk/service:define-service awsmigration-hub-orchestrator :shape-name
                                   "AWSMigrationHubOrchestrator" :version
                                   "2021-08-28" :title
                                   "AWS Migration Hub Orchestrator" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "MigrationHubOrchestrator")
                                      ("arnNamespace"
                                       . "migrationhub-orchestrator")
                                      ("endpointPrefix"
                                       . "migrationhub-orchestrator")
                                      ("cloudTrailEventSource"
                                       . "migrationhub-orchestrator.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "migrationhub-orchestrator"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type application-configuration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure create-migration-workflow-request
                                    common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (template-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "templateId")
                                     (application-configuration-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "applicationConfigurationId")
                                     (input-parameters :target-type
                                      step-input-parameters :required
                                      common-lisp:t :member-name
                                      "inputParameters")
                                     (step-targets :target-type string-list
                                      :member-name "stepTargets")
                                     (tags :target-type string-map :member-name
                                      "tags"))
                                    (:shape-name
                                     "CreateMigrationWorkflowRequest"))

(smithy/sdk/shapes:define-structure create-migration-workflow-response
                                    common-lisp:nil
                                    ((id :target-type migration-workflow-id
                                      :member-name "id")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "arn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (template-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "templateId")
                                     (ads-application-configuration-id
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "adsApplicationConfigurationId")
                                     (workflow-inputs :target-type
                                      step-input-parameters :member-name
                                      "workflowInputs")
                                     (step-targets :target-type string-list
                                      :member-name "stepTargets")
                                     (status :target-type
                                      migration-workflow-status-enum
                                      :member-name "status")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "creationTime")
                                     (tags :target-type string-map :member-name
                                      "tags"))
                                    (:shape-name
                                     "CreateMigrationWorkflowResponse"))

(smithy/sdk/shapes:define-input create-template-request common-lisp:nil
                                ((template-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "templateName")
                                 (template-description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "templateDescription")
                                 (template-source :target-type template-source
                                  :required common-lisp:t :member-name
                                  "templateSource")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateTemplateRequest"))

(smithy/sdk/shapes:define-output create-template-response common-lisp:nil
                                 ((template-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "templateId")
                                  (template-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "templateArn")
                                  (tags :target-type string-map :member-name
                                   "tags"))
                                 (:shape-name "CreateTemplateResponse"))

(smithy/sdk/shapes:define-structure create-workflow-step-group-request
                                    common-lisp:nil
                                    ((workflow-id :target-type
                                      migration-workflow-id :required
                                      common-lisp:t :member-name "workflowId")
                                     (name :target-type step-group-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (description :target-type
                                      step-group-description :member-name
                                      "description")
                                     (next :target-type string-list
                                      :member-name "next")
                                     (previous :target-type string-list
                                      :member-name "previous"))
                                    (:shape-name
                                     "CreateWorkflowStepGroupRequest"))

(smithy/sdk/shapes:define-structure create-workflow-step-group-response
                                    common-lisp:nil
                                    ((workflow-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workflowId")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (tools :target-type tools-list
                                      :member-name "tools")
                                     (next :target-type string-list
                                      :member-name "next")
                                     (previous :target-type string-list
                                      :member-name "previous")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "creationTime"))
                                    (:shape-name
                                     "CreateWorkflowStepGroupResponse"))

(smithy/sdk/shapes:define-structure create-workflow-step-request
                                    common-lisp:nil
                                    ((name :target-type migration-workflow-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (step-group-id :target-type step-group-id
                                      :required common-lisp:t :member-name
                                      "stepGroupId")
                                     (workflow-id :target-type
                                      migration-workflow-id :required
                                      common-lisp:t :member-name "workflowId")
                                     (step-action-type :target-type
                                      step-action-type :required common-lisp:t
                                      :member-name "stepActionType")
                                     (description :target-type
                                      migration-workflow-description
                                      :member-name "description")
                                     (workflow-step-automation-configuration
                                      :target-type
                                      workflow-step-automation-configuration
                                      :member-name
                                      "workflowStepAutomationConfiguration")
                                     (step-target :target-type string-list
                                      :member-name "stepTarget")
                                     (outputs :target-type
                                      workflow-step-output-list :member-name
                                      "outputs")
                                     (previous :target-type string-list
                                      :member-name "previous")
                                     (next :target-type string-list
                                      :member-name "next"))
                                    (:shape-name "CreateWorkflowStepRequest"))

(smithy/sdk/shapes:define-structure create-workflow-step-response
                                    common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id")
                                     (step-group-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "stepGroupId")
                                     (workflow-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workflowId")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name"))
                                    (:shape-name "CreateWorkflowStepResponse"))

(smithy/sdk/shapes:define-type data-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure delete-migration-workflow-request
                                    common-lisp:nil
                                    ((id :target-type migration-workflow-id
                                      :required common-lisp:t :member-name
                                      "id"))
                                    (:shape-name
                                     "DeleteMigrationWorkflowRequest"))

(smithy/sdk/shapes:define-structure delete-migration-workflow-response
                                    common-lisp:nil
                                    ((id :target-type migration-workflow-id
                                      :member-name "id")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "arn")
                                     (status :target-type
                                      migration-workflow-status-enum
                                      :member-name "status"))
                                    (:shape-name
                                     "DeleteMigrationWorkflowResponse"))

(smithy/sdk/shapes:define-input delete-template-request common-lisp:nil
                                ((id :target-type template-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteTemplateRequest"))

(smithy/sdk/shapes:define-output delete-template-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteTemplateResponse"))

(smithy/sdk/shapes:define-structure delete-workflow-step-group-request
                                    common-lisp:nil
                                    ((workflow-id :target-type
                                      migration-workflow-id :required
                                      common-lisp:t :member-name "workflowId"
                                      :http-query "workflowId")
                                     (id :target-type step-group-id :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name
                                     "DeleteWorkflowStepGroupRequest"))

(smithy/sdk/shapes:define-structure delete-workflow-step-group-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeleteWorkflowStepGroupResponse"))

(smithy/sdk/shapes:define-structure delete-workflow-step-request
                                    common-lisp:nil
                                    ((id :target-type step-id :required
                                      common-lisp:t :member-name "id")
                                     (step-group-id :target-type step-group-id
                                      :required common-lisp:t :member-name
                                      "stepGroupId" :http-query "stepGroupId")
                                     (workflow-id :target-type
                                      migration-workflow-id :required
                                      common-lisp:t :member-name "workflowId"
                                      :http-query "workflowId"))
                                    (:shape-name "DeleteWorkflowStepRequest"))

(smithy/sdk/shapes:define-structure delete-workflow-step-response
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "DeleteWorkflowStepResponse"))

(smithy/sdk/shapes:define-structure get-migration-workflow-request
                                    common-lisp:nil
                                    ((id :target-type migration-workflow-id
                                      :required common-lisp:t :member-name
                                      "id"))
                                    (:shape-name "GetMigrationWorkflowRequest"))

(smithy/sdk/shapes:define-structure get-migration-workflow-response
                                    common-lisp:nil
                                    ((id :target-type migration-workflow-id
                                      :member-name "id")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "arn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (template-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "templateId")
                                     (ads-application-configuration-id
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "adsApplicationConfigurationId")
                                     (ads-application-name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "adsApplicationName")
                                     (status :target-type
                                      migration-workflow-status-enum
                                      :member-name "status")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusMessage")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "creationTime")
                                     (last-start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastStartTime")
                                     (last-stop-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastStopTime")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastModifiedTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endTime")
                                     (tools :target-type tools-list
                                      :member-name "tools")
                                     (total-steps :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalSteps")
                                     (completed-steps :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "completedSteps")
                                     (workflow-inputs :target-type
                                      step-input-parameters :member-name
                                      "workflowInputs")
                                     (tags :target-type string-map :member-name
                                      "tags")
                                     (workflow-bucket :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workflowBucket"))
                                    (:shape-name
                                     "GetMigrationWorkflowResponse"))

(smithy/sdk/shapes:define-structure get-migration-workflow-template-request
                                    common-lisp:nil
                                    ((id :target-type template-id :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name
                                     "GetMigrationWorkflowTemplateRequest"))

(smithy/sdk/shapes:define-structure get-migration-workflow-template-response
                                    common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id")
                                     (template-arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "templateArn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (inputs :target-type template-input-list
                                      :member-name "inputs")
                                     (tools :target-type tools-list
                                      :member-name "tools")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "creationTime")
                                     (owner :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "owner")
                                     (status :target-type template-status
                                      :member-name "status")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusMessage")
                                     (template-class :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "templateClass")
                                     (tags :target-type string-map :member-name
                                      "tags"))
                                    (:shape-name
                                     "GetMigrationWorkflowTemplateResponse"))

(smithy/sdk/shapes:define-structure get-template-step-group-request
                                    common-lisp:nil
                                    ((template-id :target-type template-id
                                      :required common-lisp:t :member-name
                                      "templateId")
                                     (id :target-type step-group-id :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name "GetTemplateStepGroupRequest"))

(smithy/sdk/shapes:define-structure get-template-step-group-response
                                    common-lisp:nil
                                    ((template-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "templateId")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (status :target-type step-group-status
                                      :member-name "status")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "creationTime")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastModifiedTime")
                                     (tools :target-type tools-list
                                      :member-name "tools")
                                     (previous :target-type string-list
                                      :member-name "previous")
                                     (next :target-type string-list
                                      :member-name "next"))
                                    (:shape-name
                                     "GetTemplateStepGroupResponse"))

(smithy/sdk/shapes:define-structure get-template-step-request common-lisp:nil
                                    ((id :target-type step-id :required
                                      common-lisp:t :member-name "id")
                                     (template-id :target-type template-id
                                      :required common-lisp:t :member-name
                                      "templateId" :http-query "templateId")
                                     (step-group-id :target-type step-group-id
                                      :required common-lisp:t :member-name
                                      "stepGroupId" :http-query "stepGroupId"))
                                    (:shape-name "GetTemplateStepRequest"))

(smithy/sdk/shapes:define-structure get-template-step-response common-lisp:nil
                                    ((id :target-type step-id :member-name
                                      "id")
                                     (step-group-id :target-type step-group-id
                                      :member-name "stepGroupId")
                                     (template-id :target-type template-id
                                      :member-name "templateId")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (step-action-type :target-type
                                      step-action-type :member-name
                                      "stepActionType")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "creationTime")
                                     (previous :target-type string-list
                                      :member-name "previous")
                                     (next :target-type string-list
                                      :member-name "next")
                                     (outputs :target-type step-output-list
                                      :member-name "outputs")
                                     (step-automation-configuration
                                      :target-type
                                      step-automation-configuration
                                      :member-name
                                      "stepAutomationConfiguration"))
                                    (:shape-name "GetTemplateStepResponse"))

(smithy/sdk/shapes:define-structure get-workflow-step-group-request
                                    common-lisp:nil
                                    ((id :target-type step-group-id :required
                                      common-lisp:t :member-name "id")
                                     (workflow-id :target-type
                                      migration-workflow-id :required
                                      common-lisp:t :member-name "workflowId"
                                      :http-query "workflowId"))
                                    (:shape-name "GetWorkflowStepGroupRequest"))

(smithy/sdk/shapes:define-structure get-workflow-step-group-response
                                    common-lisp:nil
                                    ((id :target-type step-group-id
                                      :member-name "id")
                                     (workflow-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workflowId")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (status :target-type step-group-status
                                      :member-name "status")
                                     (owner :target-type owner :member-name
                                      "owner")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "creationTime")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastModifiedTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endTime")
                                     (tools :target-type tools-list
                                      :member-name "tools")
                                     (previous :target-type string-list
                                      :member-name "previous")
                                     (next :target-type string-list
                                      :member-name "next"))
                                    (:shape-name
                                     "GetWorkflowStepGroupResponse"))

(smithy/sdk/shapes:define-structure get-workflow-step-request common-lisp:nil
                                    ((workflow-id :target-type
                                      migration-workflow-id :required
                                      common-lisp:t :member-name "workflowId"
                                      :http-query "workflowId")
                                     (step-group-id :target-type step-group-id
                                      :required common-lisp:t :member-name
                                      "stepGroupId" :http-query "stepGroupId")
                                     (id :target-type step-id :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name "GetWorkflowStepRequest"))

(smithy/sdk/shapes:define-structure get-workflow-step-response common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (step-group-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "stepGroupId")
                                     (workflow-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workflowId")
                                     (step-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "stepId")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (step-action-type :target-type
                                      step-action-type :member-name
                                      "stepActionType")
                                     (owner :target-type owner :member-name
                                      "owner")
                                     (workflow-step-automation-configuration
                                      :target-type
                                      workflow-step-automation-configuration
                                      :member-name
                                      "workflowStepAutomationConfiguration")
                                     (step-target :target-type string-list
                                      :member-name "stepTarget")
                                     (outputs :target-type
                                      workflow-step-output-list :member-name
                                      "outputs")
                                     (previous :target-type string-list
                                      :member-name "previous")
                                     (next :target-type string-list
                                      :member-name "next")
                                     (status :target-type step-status
                                      :member-name "status")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusMessage")
                                     (script-output-location :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "scriptOutputLocation")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "creationTime")
                                     (last-start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastStartTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endTime")
                                     (no-of-srv-completed :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "noOfSrvCompleted")
                                     (no-of-srv-failed :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "noOfSrvFailed")
                                     (total-no-of-srv :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalNoOfSrv"))
                                    (:shape-name "GetWorkflowStepResponse"))

(smithy/sdk/shapes:define-type ipaddress smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure list-migration-workflow-templates-request
                                    common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (name :target-type template-name
                                      :member-name "name" :http-query "name"))
                                    (:shape-name
                                     "ListMigrationWorkflowTemplatesRequest"))

(smithy/sdk/shapes:define-structure list-migration-workflow-templates-response
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (template-summary :target-type
                                      template-summary-list :required
                                      common-lisp:t :member-name
                                      "templateSummary"))
                                    (:shape-name
                                     "ListMigrationWorkflowTemplatesResponse"))

(smithy/sdk/shapes:define-structure list-migration-workflows-request
                                    common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (template-id :target-type template-id
                                      :member-name "templateId" :http-query
                                      "templateId")
                                     (ads-application-configuration-name
                                      :target-type
                                      application-configuration-name
                                      :member-name
                                      "adsApplicationConfigurationName"
                                      :http-query
                                      "adsApplicationConfigurationName")
                                     (status :target-type
                                      migration-workflow-status-enum
                                      :member-name "status" :http-query
                                      "status")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name" :http-query "name"))
                                    (:shape-name
                                     "ListMigrationWorkflowsRequest"))

(smithy/sdk/shapes:define-structure list-migration-workflows-response
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (migration-workflow-summary :target-type
                                      migration-workflow-summary-list :required
                                      common-lisp:t :member-name
                                      "migrationWorkflowSummary"))
                                    (:shape-name
                                     "ListMigrationWorkflowsResponse"))

(smithy/sdk/shapes:define-structure list-plugins-request common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken"))
                                    (:shape-name "ListPluginsRequest"))

(smithy/sdk/shapes:define-structure list-plugins-response common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (plugins :target-type plugin-summaries
                                      :member-name "plugins"))
                                    (:shape-name "ListPluginsResponse"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure list-template-step-groups-request
                                    common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (template-id :target-type template-id
                                      :required common-lisp:t :member-name
                                      "templateId"))
                                    (:shape-name
                                     "ListTemplateStepGroupsRequest"))

(smithy/sdk/shapes:define-structure list-template-step-groups-response
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (template-step-group-summary :target-type
                                      template-step-group-summary-list
                                      :required common-lisp:t :member-name
                                      "templateStepGroupSummary"))
                                    (:shape-name
                                     "ListTemplateStepGroupsResponse"))

(smithy/sdk/shapes:define-structure list-template-steps-request common-lisp:nil
                                    ((max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (template-id :target-type template-id
                                      :required common-lisp:t :member-name
                                      "templateId" :http-query "templateId")
                                     (step-group-id :target-type step-group-id
                                      :required common-lisp:t :member-name
                                      "stepGroupId" :http-query "stepGroupId"))
                                    (:shape-name "ListTemplateStepsRequest"))

(smithy/sdk/shapes:define-structure list-template-steps-response
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (template-step-summary-list :target-type
                                      template-step-summary-list :member-name
                                      "templateStepSummaryList"))
                                    (:shape-name "ListTemplateStepsResponse"))

(smithy/sdk/shapes:define-structure list-workflow-step-groups-request
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (workflow-id :target-type
                                      migration-workflow-id :required
                                      common-lisp:t :member-name "workflowId"
                                      :http-query "workflowId"))
                                    (:shape-name
                                     "ListWorkflowStepGroupsRequest"))

(smithy/sdk/shapes:define-structure list-workflow-step-groups-response
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (workflow-step-groups-summary :target-type
                                      workflow-step-groups-summary-list
                                      :required common-lisp:t :member-name
                                      "workflowStepGroupsSummary"))
                                    (:shape-name
                                     "ListWorkflowStepGroupsResponse"))

(smithy/sdk/shapes:define-structure list-workflow-steps-request common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (workflow-id :target-type
                                      migration-workflow-id :required
                                      common-lisp:t :member-name "workflowId")
                                     (step-group-id :target-type step-group-id
                                      :required common-lisp:t :member-name
                                      "stepGroupId"))
                                    (:shape-name "ListWorkflowStepsRequest"))

(smithy/sdk/shapes:define-structure list-workflow-steps-response
                                    common-lisp:nil
                                    ((next-token :target-type next-token
                                      :member-name "nextToken")
                                     (workflow-steps-summary :target-type
                                      workflow-steps-summary-list :required
                                      common-lisp:t :member-name
                                      "workflowStepsSummary"))
                                    (:shape-name "ListWorkflowStepsResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list max-string-list :member max-string-value)

(smithy/sdk/shapes:define-type max-string-value smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type migration-workflow-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type migration-workflow-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type migration-workflow-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type migration-workflow-status-enum
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure migration-workflow-summary common-lisp:nil
                                    ((id :target-type migration-workflow-id
                                      :member-name "id")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (template-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "templateId")
                                     (ads-application-configuration-name
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "adsApplicationConfigurationName")
                                     (status :target-type
                                      migration-workflow-status-enum
                                      :member-name "status")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "creationTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endTime")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusMessage")
                                     (completed-steps :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "completedSteps")
                                     (total-steps :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalSteps"))
                                    (:shape-name "MigrationWorkflowSummary"))

(smithy/sdk/shapes:define-list migration-workflow-summary-list :member
                               migration-workflow-summary)

common-lisp:nil

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type owner smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure platform-command common-lisp:nil
                                    ((linux :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "linux")
                                     (windows :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "windows"))
                                    (:shape-name "PlatformCommand"))

(smithy/sdk/shapes:define-structure platform-script-key common-lisp:nil
                                    ((linux :target-type s3key :member-name
                                      "linux")
                                     (windows :target-type s3key :member-name
                                      "windows"))
                                    (:shape-name "PlatformScriptKey"))

common-lisp:nil

(smithy/sdk/shapes:define-type plugin-health smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type plugin-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list plugin-summaries :member plugin-summary)

(smithy/sdk/shapes:define-structure plugin-summary common-lisp:nil
                                    ((plugin-id :target-type plugin-id
                                      :member-name "pluginId")
                                     (hostname :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "hostname")
                                     (status :target-type plugin-health
                                      :member-name "status")
                                     (ip-address :target-type ipaddress
                                      :member-name "ipAddress")
                                     (version :target-type plugin-version
                                      :member-name "version")
                                     (registered-time :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "registeredTime"))
                                    (:shape-name "PluginSummary"))

(smithy/sdk/shapes:define-type plugin-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure retry-workflow-step-request common-lisp:nil
                                    ((workflow-id :target-type
                                      migration-workflow-id :required
                                      common-lisp:t :member-name "workflowId"
                                      :http-query "workflowId")
                                     (step-group-id :target-type step-group-id
                                      :required common-lisp:t :member-name
                                      "stepGroupId" :http-query "stepGroupId")
                                     (id :target-type step-id :required
                                      common-lisp:t :member-name "id"))
                                    (:shape-name "RetryWorkflowStepRequest"))

(smithy/sdk/shapes:define-structure retry-workflow-step-response
                                    common-lisp:nil
                                    ((step-group-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "stepGroupId")
                                     (workflow-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workflowId")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id")
                                     (status :target-type step-status
                                      :member-name "status"))
                                    (:shape-name "RetryWorkflowStepResponse"))

(smithy/sdk/shapes:define-type run-environment smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure start-migration-workflow-request
                                    common-lisp:nil
                                    ((id :target-type migration-workflow-id
                                      :required common-lisp:t :member-name
                                      "id"))
                                    (:shape-name
                                     "StartMigrationWorkflowRequest"))

(smithy/sdk/shapes:define-structure start-migration-workflow-response
                                    common-lisp:nil
                                    ((id :target-type migration-workflow-id
                                      :member-name "id")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "arn")
                                     (status :target-type
                                      migration-workflow-status-enum
                                      :member-name "status")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusMessage")
                                     (last-start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastStartTime"))
                                    (:shape-name
                                     "StartMigrationWorkflowResponse"))

(smithy/sdk/shapes:define-type step-action-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure step-automation-configuration
                                    common-lisp:nil
                                    ((script-location-s3bucket :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "scriptLocationS3Bucket")
                                     (script-location-s3key :target-type
                                      platform-script-key :member-name
                                      "scriptLocationS3Key")
                                     (command :target-type platform-command
                                      :member-name "command")
                                     (run-environment :target-type
                                      run-environment :member-name
                                      "runEnvironment")
                                     (target-type :target-type target-type
                                      :member-name "targetType"))
                                    (:shape-name "StepAutomationConfiguration"))

(smithy/sdk/shapes:define-type step-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type step-group-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type step-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type step-group-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type step-group-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type step-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union step-input common-lisp:nil
                                ((integer-value :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "integerValue")
                                 (string-value :target-type string-value
                                  :member-name "stringValue")
                                 (list-of-strings-value :target-type
                                  string-list :member-name
                                  "listOfStringsValue")
                                 (map-of-string-value :target-type string-map
                                  :member-name "mapOfStringValue"))
                                (:shape-name "StepInput"))

(smithy/sdk/shapes:define-map step-input-parameters :key
                              step-input-parameters-key :value step-input)

(smithy/sdk/shapes:define-type step-input-parameters-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type step-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure step-output common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (data-type :target-type data-type
                                      :member-name "dataType")
                                     (required :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "required"))
                                    (:shape-name "StepOutput"))

(smithy/sdk/shapes:define-list step-output-list :member step-output)

(smithy/sdk/shapes:define-type step-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stop-migration-workflow-request
                                    common-lisp:nil
                                    ((id :target-type migration-workflow-id
                                      :required common-lisp:t :member-name
                                      "id"))
                                    (:shape-name
                                     "StopMigrationWorkflowRequest"))

(smithy/sdk/shapes:define-structure stop-migration-workflow-response
                                    common-lisp:nil
                                    ((id :target-type migration-workflow-id
                                      :member-name "id")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "arn")
                                     (status :target-type
                                      migration-workflow-status-enum
                                      :member-name "status")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusMessage")
                                     (last-stop-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastStopTime"))
                                    (:shape-name
                                     "StopMigrationWorkflowResponse"))

(smithy/sdk/shapes:define-list string-list :member string-list-member)

(smithy/sdk/shapes:define-type string-list-member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map string-map :key string-map-key :value
                              string-map-value)

(smithy/sdk/shapes:define-type string-map-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-map-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn")
                                     (tags :target-type tag-map :required
                                      common-lisp:t :member-name "tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure template-input common-lisp:nil
                                    ((input-name :target-type
                                      template-input-name :member-name
                                      "inputName")
                                     (data-type :target-type data-type
                                      :member-name "dataType")
                                     (required :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "required"))
                                    (:shape-name "TemplateInput"))

(smithy/sdk/shapes:define-list template-input-list :member template-input)

(smithy/sdk/shapes:define-type template-input-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union template-source common-lisp:nil
                                ((workflow-id :target-type
                                  migration-workflow-id :member-name
                                  "workflowId"))
                                (:shape-name "TemplateSource"))

(smithy/sdk/shapes:define-type template-status smithy/sdk/smithy-types:string)

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-structure template-step-group-summary common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (previous :target-type string-list
                                      :member-name "previous")
                                     (next :target-type string-list
                                      :member-name "next"))
                                    (:shape-name "TemplateStepGroupSummary"))

(smithy/sdk/shapes:define-list template-step-group-summary-list :member
                               template-step-group-summary)

common-lisp:nil

(smithy/sdk/shapes:define-structure template-step-summary common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id")
                                     (step-group-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "stepGroupId")
                                     (template-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "templateId")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (step-action-type :target-type
                                      step-action-type :member-name
                                      "stepActionType")
                                     (target-type :target-type target-type
                                      :member-name "targetType")
                                     (owner :target-type owner :member-name
                                      "owner")
                                     (previous :target-type string-list
                                      :member-name "previous")
                                     (next :target-type string-list
                                      :member-name "next"))
                                    (:shape-name "TemplateStepSummary"))

(smithy/sdk/shapes:define-list template-step-summary-list :member
                               template-step-summary)

(smithy/sdk/shapes:define-structure template-summary common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "arn")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description"))
                                    (:shape-name "TemplateSummary"))

(smithy/sdk/shapes:define-list template-summary-list :member template-summary)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure tool common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (url :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "url"))
                                    (:shape-name "Tool"))

(smithy/sdk/shapes:define-list tools-list :member tool)

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn")
                                     (tag-keys :target-type tag-key-list
                                      :required common-lisp:t :member-name
                                      "tagKeys" :http-query "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update-migration-workflow-request
                                    common-lisp:nil
                                    ((id :target-type migration-workflow-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (input-parameters :target-type
                                      step-input-parameters :member-name
                                      "inputParameters")
                                     (step-targets :target-type string-list
                                      :member-name "stepTargets"))
                                    (:shape-name
                                     "UpdateMigrationWorkflowRequest"))

(smithy/sdk/shapes:define-structure update-migration-workflow-response
                                    common-lisp:nil
                                    ((id :target-type migration-workflow-id
                                      :member-name "id")
                                     (arn :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "arn")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (template-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "templateId")
                                     (ads-application-configuration-id
                                      :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name
                                      "adsApplicationConfigurationId")
                                     (workflow-inputs :target-type
                                      step-input-parameters :member-name
                                      "workflowInputs")
                                     (step-targets :target-type string-list
                                      :member-name "stepTargets")
                                     (status :target-type
                                      migration-workflow-status-enum
                                      :member-name "status")
                                     (creation-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "creationTime")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastModifiedTime")
                                     (tags :target-type string-map :member-name
                                      "tags"))
                                    (:shape-name
                                     "UpdateMigrationWorkflowResponse"))

(smithy/sdk/shapes:define-input update-template-request common-lisp:nil
                                ((id :target-type template-id :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (template-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "templateName")
                                 (template-description :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "templateDescription")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateTemplateRequest"))

(smithy/sdk/shapes:define-output update-template-response common-lisp:nil
                                 ((template-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "templateId")
                                  (template-arn :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "templateArn")
                                  (tags :target-type string-map :member-name
                                   "tags"))
                                 (:shape-name "UpdateTemplateResponse"))

(smithy/sdk/shapes:define-structure update-workflow-step-group-request
                                    common-lisp:nil
                                    ((workflow-id :target-type
                                      migration-workflow-id :required
                                      common-lisp:t :member-name "workflowId"
                                      :http-query "workflowId")
                                     (id :target-type step-group-id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type step-group-name
                                      :member-name "name")
                                     (description :target-type
                                      step-group-description :member-name
                                      "description")
                                     (next :target-type string-list
                                      :member-name "next")
                                     (previous :target-type string-list
                                      :member-name "previous"))
                                    (:shape-name
                                     "UpdateWorkflowStepGroupRequest"))

(smithy/sdk/shapes:define-structure update-workflow-step-group-response
                                    common-lisp:nil
                                    ((workflow-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workflowId")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (tools :target-type tools-list
                                      :member-name "tools")
                                     (next :target-type string-list
                                      :member-name "next")
                                     (previous :target-type string-list
                                      :member-name "previous")
                                     (last-modified-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "lastModifiedTime"))
                                    (:shape-name
                                     "UpdateWorkflowStepGroupResponse"))

(smithy/sdk/shapes:define-structure update-workflow-step-request
                                    common-lisp:nil
                                    ((id :target-type step-id :required
                                      common-lisp:t :member-name "id")
                                     (step-group-id :target-type step-group-id
                                      :required common-lisp:t :member-name
                                      "stepGroupId")
                                     (workflow-id :target-type
                                      migration-workflow-id :required
                                      common-lisp:t :member-name "workflowId")
                                     (name :target-type step-name :member-name
                                      "name")
                                     (description :target-type step-description
                                      :member-name "description")
                                     (step-action-type :target-type
                                      step-action-type :member-name
                                      "stepActionType")
                                     (workflow-step-automation-configuration
                                      :target-type
                                      workflow-step-automation-configuration
                                      :member-name
                                      "workflowStepAutomationConfiguration")
                                     (step-target :target-type string-list
                                      :member-name "stepTarget")
                                     (outputs :target-type
                                      workflow-step-output-list :member-name
                                      "outputs")
                                     (previous :target-type string-list
                                      :member-name "previous")
                                     (next :target-type string-list
                                      :member-name "next")
                                     (status :target-type step-status
                                      :member-name "status"))
                                    (:shape-name "UpdateWorkflowStepRequest"))

(smithy/sdk/shapes:define-structure update-workflow-step-response
                                    common-lisp:nil
                                    ((id :target-type step-id :member-name
                                      "id")
                                     (step-group-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "stepGroupId")
                                     (workflow-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "workflowId")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name"))
                                    (:shape-name "UpdateWorkflowStepResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

common-lisp:nil

(smithy/sdk/shapes:define-structure workflow-step-automation-configuration
                                    common-lisp:nil
                                    ((script-location-s3bucket :target-type
                                      s3bucket :member-name
                                      "scriptLocationS3Bucket")
                                     (script-location-s3key :target-type
                                      platform-script-key :member-name
                                      "scriptLocationS3Key")
                                     (command :target-type platform-command
                                      :member-name "command")
                                     (run-environment :target-type
                                      run-environment :member-name
                                      "runEnvironment")
                                     (target-type :target-type target-type
                                      :member-name "targetType"))
                                    (:shape-name
                                     "WorkflowStepAutomationConfiguration"))

common-lisp:nil

(smithy/sdk/shapes:define-structure workflow-step-group-summary common-lisp:nil
                                    ((id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "id")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (owner :target-type owner :member-name
                                      "owner")
                                     (status :target-type step-group-status
                                      :member-name "status")
                                     (previous :target-type string-list
                                      :member-name "previous")
                                     (next :target-type string-list
                                      :member-name "next"))
                                    (:shape-name "WorkflowStepGroupSummary"))

(smithy/sdk/shapes:define-list workflow-step-groups-summary-list :member
                               workflow-step-group-summary)

(smithy/sdk/shapes:define-structure workflow-step-output common-lisp:nil
                                    ((name :target-type
                                      workflow-step-output-name :member-name
                                      "name")
                                     (data-type :target-type data-type
                                      :member-name "dataType")
                                     (required :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "required")
                                     (value :target-type
                                      workflow-step-output-union :member-name
                                      "value"))
                                    (:shape-name "WorkflowStepOutput"))

(smithy/sdk/shapes:define-list workflow-step-output-list :member
                               workflow-step-output)

(smithy/sdk/shapes:define-type workflow-step-output-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union workflow-step-output-union common-lisp:nil
                                ((integer-value :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "integerValue")
                                 (string-value :target-type max-string-value
                                  :member-name "stringValue")
                                 (list-of-string-value :target-type
                                  max-string-list :member-name
                                  "listOfStringValue"))
                                (:shape-name "WorkflowStepOutputUnion"))

(smithy/sdk/shapes:define-structure workflow-step-summary common-lisp:nil
                                    ((step-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "stepId")
                                     (name :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "name")
                                     (step-action-type :target-type
                                      step-action-type :member-name
                                      "stepActionType")
                                     (owner :target-type owner :member-name
                                      "owner")
                                     (previous :target-type string-list
                                      :member-name "previous")
                                     (next :target-type string-list
                                      :member-name "next")
                                     (status :target-type step-status
                                      :member-name "status")
                                     (status-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "statusMessage")
                                     (no-of-srv-completed :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "noOfSrvCompleted")
                                     (no-of-srv-failed :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "noOfSrvFailed")
                                     (total-no-of-srv :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalNoOfSrv")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (script-location :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "scriptLocation"))
                                    (:shape-name "WorkflowStepSummary"))

(smithy/sdk/shapes:define-list workflow-steps-summary-list :member
                               workflow-step-summary)

(smithy/sdk/operation:define-operation create-template :shape-name
                                       "CreateTemplate" :input
                                       create-template-request :output
                                       create-template-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/template" :code
                                       200)

(smithy/sdk/operation:define-operation create-workflow :shape-name
                                       "CreateWorkflow" :input
                                       create-migration-workflow-request
                                       :output
                                       create-migration-workflow-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/migrationworkflow/" :code 200)

(smithy/sdk/operation:define-operation create-workflow-step :shape-name
                                       "CreateWorkflowStep" :input
                                       create-workflow-step-request :output
                                       create-workflow-step-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/workflowstep"
                                       :code 200)

(smithy/sdk/operation:define-operation create-workflow-step-group :shape-name
                                       "CreateWorkflowStepGroup" :input
                                       create-workflow-step-group-request
                                       :output
                                       create-workflow-step-group-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workflowstepgroups" :code 200)

(smithy/sdk/operation:define-operation delete-template :shape-name
                                       "DeleteTemplate" :input
                                       delete-template-request :output
                                       delete-template-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri "/template/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-workflow :shape-name
                                       "DeleteWorkflow" :input
                                       delete-migration-workflow-request
                                       :output
                                       delete-migration-workflow-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/migrationworkflow/{id}" :code 202)

(smithy/sdk/operation:define-operation delete-workflow-step :shape-name
                                       "DeleteWorkflowStep" :input
                                       delete-workflow-step-request :output
                                       delete-workflow-step-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/workflowstep/{id}" :code 200)

(smithy/sdk/operation:define-operation delete-workflow-step-group :shape-name
                                       "DeleteWorkflowStepGroup" :input
                                       delete-workflow-step-group-request
                                       :output
                                       delete-workflow-step-group-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/workflowstepgroup/{id}" :code 202)

(smithy/sdk/operation:define-operation get-template :shape-name "GetTemplate"
                                       :input
                                       get-migration-workflow-template-request
                                       :output
                                       get-migration-workflow-template-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/migrationworkflowtemplate/{id}" :code
                                       200)

(smithy/sdk/operation:define-operation get-template-step :shape-name
                                       "GetTemplateStep" :input
                                       get-template-step-request :output
                                       get-template-step-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/templatestep/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-template-step-group :shape-name
                                       "GetTemplateStepGroup" :input
                                       get-template-step-group-request :output
                                       get-template-step-group-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/templates/{templateId}/stepgroups/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-workflow :shape-name "GetWorkflow"
                                       :input get-migration-workflow-request
                                       :output get-migration-workflow-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/migrationworkflow/{id}" :code 200)

(smithy/sdk/operation:define-operation get-workflow-step :shape-name
                                       "GetWorkflowStep" :input
                                       get-workflow-step-request :output
                                       get-workflow-step-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri "/workflowstep/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-workflow-step-group :shape-name
                                       "GetWorkflowStepGroup" :input
                                       get-workflow-step-group-request :output
                                       get-workflow-step-group-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workflowstepgroup/{id}" :code 200)

(smithy/sdk/operation:define-operation list-plugins :shape-name "ListPlugins"
                                       :input list-plugins-request :output
                                       list-plugins-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        validation-exception)
                                       :method "GET" :uri "/plugins" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation list-template-step-groups :shape-name
                                       "ListTemplateStepGroups" :input
                                       list-template-step-groups-request
                                       :output
                                       list-template-step-groups-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/templatestepgroups/{templateId}" :code
                                       200)

(smithy/sdk/operation:define-operation list-template-steps :shape-name
                                       "ListTemplateSteps" :input
                                       list-template-steps-request :output
                                       list-template-steps-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/templatesteps"
                                       :code 200)

(smithy/sdk/operation:define-operation list-templates :shape-name
                                       "ListTemplates" :input
                                       list-migration-workflow-templates-request
                                       :output
                                       list-migration-workflow-templates-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/migrationworkflowtemplates" :code 200)

(smithy/sdk/operation:define-operation list-workflow-step-groups :shape-name
                                       "ListWorkflowStepGroups" :input
                                       list-workflow-step-groups-request
                                       :output
                                       list-workflow-step-groups-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/workflowstepgroups"
                                       :code 200)

(smithy/sdk/operation:define-operation list-workflow-steps :shape-name
                                       "ListWorkflowSteps" :input
                                       list-workflow-steps-request :output
                                       list-workflow-steps-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/workflow/{workflowId}/workflowstepgroups/{stepGroupId}/workflowsteps"
                                       :code 200)

(smithy/sdk/operation:define-operation list-workflows :shape-name
                                       "ListWorkflows" :input
                                       list-migration-workflows-request :output
                                       list-migration-workflows-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/migrationworkflows"
                                       :code 200)

(smithy/sdk/operation:define-operation retry-workflow-step :shape-name
                                       "RetryWorkflowStep" :input
                                       retry-workflow-step-request :output
                                       retry-workflow-step-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "POST" :uri
                                       "/retryworkflowstep/{id}" :code 200)

(smithy/sdk/operation:define-operation start-workflow :shape-name
                                       "StartWorkflow" :input
                                       start-migration-workflow-request :output
                                       start-migration-workflow-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/migrationworkflow/{id}/start" :code
                                       200)

(smithy/sdk/operation:define-operation stop-workflow :shape-name "StopWorkflow"
                                       :input stop-migration-workflow-request
                                       :output stop-migration-workflow-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/migrationworkflow/{id}/stop" :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-template :shape-name
                                       "UpdateTemplate" :input
                                       update-template-request :output
                                       update-template-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/template/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-workflow :shape-name
                                       "UpdateWorkflow" :input
                                       update-migration-workflow-request
                                       :output
                                       update-migration-workflow-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/migrationworkflow/{id}" :code 200)

(smithy/sdk/operation:define-operation update-workflow-step :shape-name
                                       "UpdateWorkflowStep" :input
                                       update-workflow-step-request :output
                                       update-workflow-step-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/workflowstep/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-workflow-step-group :shape-name
                                       "UpdateWorkflowStepGroup" :input
                                       update-workflow-step-group-request
                                       :output
                                       update-workflow-step-group-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/workflowstepgroup/{id}" :code 202)
