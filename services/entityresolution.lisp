(uiop/package:define-package #:pira/entityresolution (:use)
                             (:export #:awsvenice-service
                              #:access-denied-exception #:add-policy-statement
                              #:add-policy-statement-input
                              #:add-policy-statement-output
                              #:attribute-matching-model #:attribute-name
                              #:aws-account-id #:aws-account-id-list
                              #:batch-delete-unique-id
                              #:batch-delete-unique-id-input
                              #:batch-delete-unique-id-output
                              #:conflict-exception #:create-id-mapping-workflow
                              #:create-id-mapping-workflow-input
                              #:create-id-mapping-workflow-output
                              #:create-id-namespace #:create-id-namespace-input
                              #:create-id-namespace-output
                              #:create-matching-workflow
                              #:create-matching-workflow-input
                              #:create-matching-workflow-output
                              #:create-schema-mapping
                              #:create-schema-mapping-input
                              #:create-schema-mapping-output
                              #:delete-id-mapping-workflow
                              #:delete-id-mapping-workflow-input
                              #:delete-id-mapping-workflow-output
                              #:delete-id-namespace #:delete-id-namespace-input
                              #:delete-id-namespace-output
                              #:delete-matching-workflow
                              #:delete-matching-workflow-input
                              #:delete-matching-workflow-output
                              #:delete-policy-statement
                              #:delete-policy-statement-input
                              #:delete-policy-statement-output
                              #:delete-schema-mapping
                              #:delete-schema-mapping-input
                              #:delete-schema-mapping-output
                              #:delete-unique-id-error
                              #:delete-unique-id-error-type
                              #:delete-unique-id-errors-list
                              #:delete-unique-id-status #:deleted-unique-id
                              #:deleted-unique-id-list #:description
                              #:disconnected-unique-ids-list #:entity-name
                              #:entity-name-or-id-mapping-workflow-arn
                              #:entity-name-or-id-namespace-arn #:error-details
                              #:error-message #:exceeds-limit-exception
                              #:failed-record #:failed-records-list
                              #:generate-match-id #:generate-match-id-input
                              #:generate-match-id-output #:get-id-mapping-job
                              #:get-id-mapping-job-input
                              #:get-id-mapping-job-output
                              #:get-id-mapping-workflow
                              #:get-id-mapping-workflow-input
                              #:get-id-mapping-workflow-output
                              #:get-id-namespace #:get-id-namespace-input
                              #:get-id-namespace-output #:get-match-id
                              #:get-match-id-input #:get-match-id-output
                              #:get-matching-job #:get-matching-job-input
                              #:get-matching-job-output #:get-matching-workflow
                              #:get-matching-workflow-input
                              #:get-matching-workflow-output #:get-policy
                              #:get-policy-input #:get-policy-output
                              #:get-provider-service
                              #:get-provider-service-input
                              #:get-provider-service-output
                              #:get-schema-mapping #:get-schema-mapping-input
                              #:get-schema-mapping-output
                              #:header-safe-unique-id #:id-mapping-job-metrics
                              #:id-mapping-job-output-source
                              #:id-mapping-job-output-source-config
                              #:id-mapping-role-arn
                              #:id-mapping-rule-based-properties
                              #:id-mapping-techniques #:id-mapping-type
                              #:id-mapping-workflow-arn
                              #:id-mapping-workflow-input-source
                              #:id-mapping-workflow-input-source-config
                              #:id-mapping-workflow-list
                              #:id-mapping-workflow-output-source
                              #:id-mapping-workflow-output-source-config
                              #:id-mapping-workflow-rule-definition-type
                              #:id-mapping-workflow-rule-definition-type-list
                              #:id-mapping-workflow-summary #:id-namespace-arn
                              #:id-namespace-id-mapping-workflow-metadata
                              #:id-namespace-id-mapping-workflow-metadata-list
                              #:id-namespace-id-mapping-workflow-properties
                              #:id-namespace-id-mapping-workflow-properties-list
                              #:id-namespace-input-source
                              #:id-namespace-input-source-config
                              #:id-namespace-list #:id-namespace-summary
                              #:id-namespace-type #:incremental-run-config
                              #:incremental-run-type #:input-source
                              #:input-source-config
                              #:intermediate-source-configuration
                              #:internal-server-exception #:job-id #:job-list
                              #:job-metrics #:job-output-source
                              #:job-output-source-config #:job-status
                              #:job-summary #:kmsarn #:list-id-mapping-jobs
                              #:list-id-mapping-jobs-input
                              #:list-id-mapping-jobs-output
                              #:list-id-mapping-workflows
                              #:list-id-mapping-workflows-input
                              #:list-id-mapping-workflows-output
                              #:list-id-namespaces #:list-id-namespaces-input
                              #:list-id-namespaces-output #:list-matching-jobs
                              #:list-matching-jobs-input
                              #:list-matching-jobs-output
                              #:list-matching-workflows
                              #:list-matching-workflows-input
                              #:list-matching-workflows-output
                              #:list-provider-services
                              #:list-provider-services-input
                              #:list-provider-services-output
                              #:list-schema-mappings
                              #:list-schema-mappings-input
                              #:list-schema-mappings-output
                              #:list-tags-for-resource
                              #:list-tags-for-resource-input
                              #:list-tags-for-resource-output #:match-group
                              #:match-groups-list #:match-purpose
                              #:matched-record #:matched-records-list
                              #:matching-keys #:matching-workflow-arn
                              #:matching-workflow-list
                              #:matching-workflow-summary
                              #:namespace-provider-properties
                              #:namespace-rule-based-properties #:next-token
                              #:output-attribute #:output-attributes
                              #:output-source #:output-source-config
                              #:policy-document #:policy-token
                              #:processing-type #:provider-component-schema
                              #:provider-endpoint-configuration
                              #:provider-id-name-space-configuration
                              #:provider-intermediate-data-access-configuration
                              #:provider-marketplace-configuration
                              #:provider-properties #:provider-schema-attribute
                              #:provider-schema-attributes
                              #:provider-service-arn
                              #:provider-service-display-name
                              #:provider-service-list
                              #:provider-service-summary #:put-policy
                              #:put-policy-input #:put-policy-output #:record
                              #:record-attribute-map
                              #:record-attribute-map-string255 #:record-list
                              #:record-matching-model
                              #:record-matching-model-list
                              #:required-bucket-actions-list
                              #:resolution-techniques #:resolution-type
                              #:resource-not-found-exception #:role-arn #:rule
                              #:rule-based-properties #:rule-condition
                              #:rule-condition-list #:rule-condition-properties
                              #:rule-list #:s3path #:schema-attribute-type
                              #:schema-input-attribute
                              #:schema-input-attributes #:schema-list
                              #:schema-mapping-arn #:schema-mapping-list
                              #:schema-mapping-summary #:schemas #:service-type
                              #:start-id-mapping-job
                              #:start-id-mapping-job-input
                              #:start-id-mapping-job-output
                              #:start-matching-job #:start-matching-job-input
                              #:start-matching-job-output #:statement-action
                              #:statement-action-list #:statement-condition
                              #:statement-effect #:statement-id
                              #:statement-principal #:statement-principal-list
                              #:tag-key #:tag-key-list #:tag-map #:tag-resource
                              #:tag-resource-input #:tag-resource-output
                              #:tag-value #:throttling-exception #:unique-id
                              #:unique-id-list #:untag-resource
                              #:untag-resource-input #:untag-resource-output
                              #:update-id-mapping-workflow
                              #:update-id-mapping-workflow-input
                              #:update-id-mapping-workflow-output
                              #:update-id-namespace #:update-id-namespace-input
                              #:update-id-namespace-output
                              #:update-matching-workflow
                              #:update-matching-workflow-input
                              #:update-matching-workflow-output
                              #:update-schema-mapping
                              #:update-schema-mapping-input
                              #:update-schema-mapping-output
                              #:validation-exception #:venice-global-arn))
(common-lisp:in-package #:pira/entityresolution)

(smithy/sdk/service:define-service awsvenice-service :shape-name
                                   "AWSVeniceService" :version "2018-05-10"
                                   :title "AWS EntityResolution" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "EntityResolution")
                                      ("arnNamespace" . "entityresolution")
                                      ("cloudTrailEventSource"
                                       . "entityresolution.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "entityresolution"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input add-policy-statement-input common-lisp:nil
                                ((arn :target-type venice-global-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t)
                                 (statement-id :target-type statement-id
                                  :required common-lisp:t :member-name
                                  "statementId" :http-label common-lisp:t)
                                 (effect :target-type statement-effect
                                  :required common-lisp:t :member-name
                                  "effect")
                                 (action :target-type statement-action-list
                                  :required common-lisp:t :member-name
                                  "action")
                                 (principal :target-type
                                  statement-principal-list :required
                                  common-lisp:t :member-name "principal")
                                 (condition :target-type statement-condition
                                  :member-name "condition"))
                                (:shape-name "AddPolicyStatementInput"))

(smithy/sdk/shapes:define-output add-policy-statement-output common-lisp:nil
                                 ((arn :target-type venice-global-arn :required
                                   common-lisp:t :member-name "arn")
                                  (token :target-type policy-token :required
                                   common-lisp:t :member-name "token")
                                  (policy :target-type policy-document
                                   :member-name "policy"))
                                 (:shape-name "AddPolicyStatementOutput"))

(smithy/sdk/shapes:define-enum attribute-matching-model
    common-lisp:nil
  (:one-to-one "ONE_TO_ONE")
  (:many-to-many "MANY_TO_MANY"))

(smithy/sdk/shapes:define-type attribute-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type aws-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list aws-account-id-list :member aws-account-id)

(smithy/sdk/shapes:define-input batch-delete-unique-id-input common-lisp:nil
                                ((workflow-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "workflowName" :http-label common-lisp:t)
                                 (input-source :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "inputSource" :http-header "inputSource")
                                 (unique-ids :target-type unique-id-list
                                  :required common-lisp:t :member-name
                                  "uniqueIds" :http-header "uniqueIds"))
                                (:shape-name "BatchDeleteUniqueIdInput"))

(smithy/sdk/shapes:define-output batch-delete-unique-id-output common-lisp:nil
                                 ((status :target-type delete-unique-id-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (errors :target-type
                                   delete-unique-id-errors-list :required
                                   common-lisp:t :member-name "errors")
                                  (deleted :target-type deleted-unique-id-list
                                   :required common-lisp:t :member-name
                                   "deleted")
                                  (disconnected-unique-ids :target-type
                                   disconnected-unique-ids-list :required
                                   common-lisp:t :member-name
                                   "disconnectedUniqueIds"))
                                 (:shape-name "BatchDeleteUniqueIdOutput"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input create-id-mapping-workflow-input
                                common-lisp:nil
                                ((workflow-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "workflowName")
                                 (description :target-type description
                                  :member-name "description")
                                 (input-source-config :target-type
                                  id-mapping-workflow-input-source-config
                                  :required common-lisp:t :member-name
                                  "inputSourceConfig")
                                 (output-source-config :target-type
                                  id-mapping-workflow-output-source-config
                                  :member-name "outputSourceConfig")
                                 (id-mapping-techniques :target-type
                                  id-mapping-techniques :required common-lisp:t
                                  :member-name "idMappingTechniques")
                                 (role-arn :target-type id-mapping-role-arn
                                  :member-name "roleArn")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateIdMappingWorkflowInput"))

(smithy/sdk/shapes:define-output create-id-mapping-workflow-output
                                 common-lisp:nil
                                 ((workflow-name :target-type entity-name
                                   :required common-lisp:t :member-name
                                   "workflowName")
                                  (workflow-arn :target-type
                                   id-mapping-workflow-arn :required
                                   common-lisp:t :member-name "workflowArn")
                                  (description :target-type description
                                   :member-name "description")
                                  (input-source-config :target-type
                                   id-mapping-workflow-input-source-config
                                   :required common-lisp:t :member-name
                                   "inputSourceConfig")
                                  (output-source-config :target-type
                                   id-mapping-workflow-output-source-config
                                   :member-name "outputSourceConfig")
                                  (id-mapping-techniques :target-type
                                   id-mapping-techniques :required
                                   common-lisp:t :member-name
                                   "idMappingTechniques")
                                  (role-arn :target-type id-mapping-role-arn
                                   :member-name "roleArn"))
                                 (:shape-name "CreateIdMappingWorkflowOutput"))

(smithy/sdk/shapes:define-input create-id-namespace-input common-lisp:nil
                                ((id-namespace-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "idNamespaceName")
                                 (description :target-type description
                                  :member-name "description")
                                 (input-source-config :target-type
                                  id-namespace-input-source-config :member-name
                                  "inputSourceConfig")
                                 (id-mapping-workflow-properties :target-type
                                  id-namespace-id-mapping-workflow-properties-list
                                  :member-name "idMappingWorkflowProperties")
                                 (type :target-type id-namespace-type :required
                                  common-lisp:t :member-name "type")
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateIdNamespaceInput"))

(smithy/sdk/shapes:define-output create-id-namespace-output common-lisp:nil
                                 ((id-namespace-name :target-type entity-name
                                   :required common-lisp:t :member-name
                                   "idNamespaceName")
                                  (id-namespace-arn :target-type
                                   id-namespace-arn :required common-lisp:t
                                   :member-name "idNamespaceArn")
                                  (description :target-type description
                                   :member-name "description")
                                  (input-source-config :target-type
                                   id-namespace-input-source-config
                                   :member-name "inputSourceConfig")
                                  (id-mapping-workflow-properties :target-type
                                   id-namespace-id-mapping-workflow-properties-list
                                   :member-name "idMappingWorkflowProperties")
                                  (type :target-type id-namespace-type
                                   :required common-lisp:t :member-name "type")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "updatedAt")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "CreateIdNamespaceOutput"))

(smithy/sdk/shapes:define-input create-matching-workflow-input common-lisp:nil
                                ((workflow-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "workflowName")
                                 (description :target-type description
                                  :member-name "description")
                                 (input-source-config :target-type
                                  input-source-config :required common-lisp:t
                                  :member-name "inputSourceConfig")
                                 (output-source-config :target-type
                                  output-source-config :required common-lisp:t
                                  :member-name "outputSourceConfig")
                                 (resolution-techniques :target-type
                                  resolution-techniques :required common-lisp:t
                                  :member-name "resolutionTechniques")
                                 (incremental-run-config :target-type
                                  incremental-run-config :member-name
                                  "incrementalRunConfig")
                                 (role-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "roleArn")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateMatchingWorkflowInput"))

(smithy/sdk/shapes:define-output create-matching-workflow-output
                                 common-lisp:nil
                                 ((workflow-name :target-type entity-name
                                   :required common-lisp:t :member-name
                                   "workflowName")
                                  (workflow-arn :target-type
                                   matching-workflow-arn :required
                                   common-lisp:t :member-name "workflowArn")
                                  (description :target-type description
                                   :member-name "description")
                                  (input-source-config :target-type
                                   input-source-config :required common-lisp:t
                                   :member-name "inputSourceConfig")
                                  (output-source-config :target-type
                                   output-source-config :required common-lisp:t
                                   :member-name "outputSourceConfig")
                                  (resolution-techniques :target-type
                                   resolution-techniques :required
                                   common-lisp:t :member-name
                                   "resolutionTechniques")
                                  (incremental-run-config :target-type
                                   incremental-run-config :member-name
                                   "incrementalRunConfig")
                                  (role-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "roleArn"))
                                 (:shape-name "CreateMatchingWorkflowOutput"))

(smithy/sdk/shapes:define-input create-schema-mapping-input common-lisp:nil
                                ((schema-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "schemaName")
                                 (description :target-type description
                                  :member-name "description")
                                 (mapped-input-fields :target-type
                                  schema-input-attributes :required
                                  common-lisp:t :member-name
                                  "mappedInputFields")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateSchemaMappingInput"))

(smithy/sdk/shapes:define-output create-schema-mapping-output common-lisp:nil
                                 ((schema-name :target-type entity-name
                                   :required common-lisp:t :member-name
                                   "schemaName")
                                  (schema-arn :target-type schema-mapping-arn
                                   :required common-lisp:t :member-name
                                   "schemaArn")
                                  (description :target-type description
                                   :required common-lisp:t :member-name
                                   "description")
                                  (mapped-input-fields :target-type
                                   schema-input-attributes :required
                                   common-lisp:t :member-name
                                   "mappedInputFields"))
                                 (:shape-name "CreateSchemaMappingOutput"))

(smithy/sdk/shapes:define-input delete-id-mapping-workflow-input
                                common-lisp:nil
                                ((workflow-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "workflowName" :http-label common-lisp:t))
                                (:shape-name "DeleteIdMappingWorkflowInput"))

(smithy/sdk/shapes:define-output delete-id-mapping-workflow-output
                                 common-lisp:nil
                                 ((message :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "message"))
                                 (:shape-name "DeleteIdMappingWorkflowOutput"))

(smithy/sdk/shapes:define-input delete-id-namespace-input common-lisp:nil
                                ((id-namespace-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "idNamespaceName" :http-label common-lisp:t))
                                (:shape-name "DeleteIdNamespaceInput"))

(smithy/sdk/shapes:define-output delete-id-namespace-output common-lisp:nil
                                 ((message :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "message"))
                                 (:shape-name "DeleteIdNamespaceOutput"))

(smithy/sdk/shapes:define-input delete-matching-workflow-input common-lisp:nil
                                ((workflow-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "workflowName" :http-label common-lisp:t))
                                (:shape-name "DeleteMatchingWorkflowInput"))

(smithy/sdk/shapes:define-output delete-matching-workflow-output
                                 common-lisp:nil
                                 ((message :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "message"))
                                 (:shape-name "DeleteMatchingWorkflowOutput"))

(smithy/sdk/shapes:define-input delete-policy-statement-input common-lisp:nil
                                ((arn :target-type venice-global-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t)
                                 (statement-id :target-type statement-id
                                  :required common-lisp:t :member-name
                                  "statementId" :http-label common-lisp:t))
                                (:shape-name "DeletePolicyStatementInput"))

(smithy/sdk/shapes:define-output delete-policy-statement-output common-lisp:nil
                                 ((arn :target-type venice-global-arn :required
                                   common-lisp:t :member-name "arn")
                                  (token :target-type policy-token :required
                                   common-lisp:t :member-name "token")
                                  (policy :target-type policy-document
                                   :member-name "policy"))
                                 (:shape-name "DeletePolicyStatementOutput"))

(smithy/sdk/shapes:define-input delete-schema-mapping-input common-lisp:nil
                                ((schema-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "schemaName" :http-label common-lisp:t))
                                (:shape-name "DeleteSchemaMappingInput"))

(smithy/sdk/shapes:define-output delete-schema-mapping-output common-lisp:nil
                                 ((message :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "message"))
                                 (:shape-name "DeleteSchemaMappingOutput"))

(smithy/sdk/shapes:define-structure delete-unique-id-error common-lisp:nil
                                    ((unique-id :target-type
                                      header-safe-unique-id :required
                                      common-lisp:t :member-name "uniqueId")
                                     (error-type :target-type
                                      delete-unique-id-error-type :required
                                      common-lisp:t :member-name "errorType"))
                                    (:shape-name "DeleteUniqueIdError"))

(smithy/sdk/shapes:define-enum delete-unique-id-error-type
    common-lisp:nil
  (:service-error "SERVICE_ERROR")
  (:validation-error "VALIDATION_ERROR"))

(smithy/sdk/shapes:define-list delete-unique-id-errors-list :member
                               delete-unique-id-error)

(smithy/sdk/shapes:define-enum delete-unique-id-status
    common-lisp:nil
  (:completed "COMPLETED")
  (:accepted "ACCEPTED"))

(smithy/sdk/shapes:define-structure deleted-unique-id common-lisp:nil
                                    ((unique-id :target-type
                                      header-safe-unique-id :required
                                      common-lisp:t :member-name "uniqueId"))
                                    (:shape-name "DeletedUniqueId"))

(smithy/sdk/shapes:define-list deleted-unique-id-list :member deleted-unique-id)

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list disconnected-unique-ids-list :member
                               header-safe-unique-id)

(smithy/sdk/shapes:define-type entity-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-name-or-id-mapping-workflow-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-name-or-id-namespace-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure error-details common-lisp:nil
                                    ((error-message :target-type error-message
                                      :member-name "errorMessage"))
                                    (:shape-name "ErrorDetails"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error exceeds-limit-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (quota-name :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaName")
                                 (quota-value :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "quotaValue"))
                                (:shape-name "ExceedsLimitException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure failed-record common-lisp:nil
                                    ((input-source-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "inputSourceARN")
                                     (unique-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "uniqueId")
                                     (error-message :target-type error-message
                                      :required common-lisp:t :member-name
                                      "errorMessage"))
                                    (:shape-name "FailedRecord"))

(smithy/sdk/shapes:define-list failed-records-list :member failed-record)

(smithy/sdk/shapes:define-input generate-match-id-input common-lisp:nil
                                ((workflow-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "workflowName" :http-label common-lisp:t)
                                 (records :target-type record-list :required
                                  common-lisp:t :member-name "records")
                                 (processing-type :target-type processing-type
                                  :member-name "processingType"))
                                (:shape-name "GenerateMatchIdInput"))

(smithy/sdk/shapes:define-output generate-match-id-output common-lisp:nil
                                 ((match-groups :target-type match-groups-list
                                   :required common-lisp:t :member-name
                                   "matchGroups")
                                  (failed-records :target-type
                                   failed-records-list :required common-lisp:t
                                   :member-name "failedRecords"))
                                 (:shape-name "GenerateMatchIdOutput"))

(smithy/sdk/shapes:define-input get-id-mapping-job-input common-lisp:nil
                                ((workflow-name :target-type
                                  entity-name-or-id-mapping-workflow-arn
                                  :required common-lisp:t :member-name
                                  "workflowName" :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetIdMappingJobInput"))

(smithy/sdk/shapes:define-output get-id-mapping-job-output common-lisp:nil
                                 ((job-id :target-type job-id :required
                                   common-lisp:t :member-name "jobId")
                                  (status :target-type job-status :required
                                   common-lisp:t :member-name "status")
                                  (start-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "startTime")
                                  (end-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "endTime")
                                  (metrics :target-type id-mapping-job-metrics
                                   :member-name "metrics")
                                  (error-details :target-type error-details
                                   :member-name "errorDetails")
                                  (output-source-config :target-type
                                   id-mapping-job-output-source-config
                                   :member-name "outputSourceConfig"))
                                 (:shape-name "GetIdMappingJobOutput"))

(smithy/sdk/shapes:define-input get-id-mapping-workflow-input common-lisp:nil
                                ((workflow-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "workflowName" :http-label common-lisp:t))
                                (:shape-name "GetIdMappingWorkflowInput"))

(smithy/sdk/shapes:define-output get-id-mapping-workflow-output common-lisp:nil
                                 ((workflow-name :target-type entity-name
                                   :required common-lisp:t :member-name
                                   "workflowName")
                                  (workflow-arn :target-type
                                   id-mapping-workflow-arn :required
                                   common-lisp:t :member-name "workflowArn")
                                  (description :target-type description
                                   :member-name "description")
                                  (input-source-config :target-type
                                   id-mapping-workflow-input-source-config
                                   :required common-lisp:t :member-name
                                   "inputSourceConfig")
                                  (output-source-config :target-type
                                   id-mapping-workflow-output-source-config
                                   :member-name "outputSourceConfig")
                                  (id-mapping-techniques :target-type
                                   id-mapping-techniques :required
                                   common-lisp:t :member-name
                                   "idMappingTechniques")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "updatedAt")
                                  (role-arn :target-type id-mapping-role-arn
                                   :member-name "roleArn")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetIdMappingWorkflowOutput"))

(smithy/sdk/shapes:define-input get-id-namespace-input common-lisp:nil
                                ((id-namespace-name :target-type
                                  entity-name-or-id-namespace-arn :required
                                  common-lisp:t :member-name "idNamespaceName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetIdNamespaceInput"))

(smithy/sdk/shapes:define-output get-id-namespace-output common-lisp:nil
                                 ((id-namespace-name :target-type entity-name
                                   :required common-lisp:t :member-name
                                   "idNamespaceName")
                                  (id-namespace-arn :target-type
                                   id-namespace-arn :required common-lisp:t
                                   :member-name "idNamespaceArn")
                                  (description :target-type description
                                   :member-name "description")
                                  (input-source-config :target-type
                                   id-namespace-input-source-config
                                   :member-name "inputSourceConfig")
                                  (id-mapping-workflow-properties :target-type
                                   id-namespace-id-mapping-workflow-properties-list
                                   :member-name "idMappingWorkflowProperties")
                                  (type :target-type id-namespace-type
                                   :required common-lisp:t :member-name "type")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "updatedAt")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetIdNamespaceOutput"))

(smithy/sdk/shapes:define-input get-match-id-input common-lisp:nil
                                ((workflow-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "workflowName" :http-label common-lisp:t)
                                 (record :target-type record-attribute-map
                                  :required common-lisp:t :member-name
                                  "record")
                                 (apply-normalization :target-type
                                  smithy/sdk/smithy-types:boolean :member-name
                                  "applyNormalization"))
                                (:shape-name "GetMatchIdInput"))

(smithy/sdk/shapes:define-output get-match-id-output common-lisp:nil
                                 ((match-id :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "matchId")
                                  (match-rule :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "matchRule"))
                                 (:shape-name "GetMatchIdOutput"))

(smithy/sdk/shapes:define-input get-matching-job-input common-lisp:nil
                                ((workflow-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "workflowName" :http-label common-lisp:t)
                                 (job-id :target-type job-id :required
                                  common-lisp:t :member-name "jobId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetMatchingJobInput"))

(smithy/sdk/shapes:define-output get-matching-job-output common-lisp:nil
                                 ((job-id :target-type job-id :required
                                   common-lisp:t :member-name "jobId")
                                  (status :target-type job-status :required
                                   common-lisp:t :member-name "status")
                                  (start-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "startTime")
                                  (end-time :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "endTime")
                                  (metrics :target-type job-metrics
                                   :member-name "metrics")
                                  (error-details :target-type error-details
                                   :member-name "errorDetails")
                                  (output-source-config :target-type
                                   job-output-source-config :member-name
                                   "outputSourceConfig"))
                                 (:shape-name "GetMatchingJobOutput"))

(smithy/sdk/shapes:define-input get-matching-workflow-input common-lisp:nil
                                ((workflow-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "workflowName" :http-label common-lisp:t))
                                (:shape-name "GetMatchingWorkflowInput"))

(smithy/sdk/shapes:define-output get-matching-workflow-output common-lisp:nil
                                 ((workflow-name :target-type entity-name
                                   :required common-lisp:t :member-name
                                   "workflowName")
                                  (workflow-arn :target-type
                                   matching-workflow-arn :required
                                   common-lisp:t :member-name "workflowArn")
                                  (description :target-type description
                                   :member-name "description")
                                  (input-source-config :target-type
                                   input-source-config :required common-lisp:t
                                   :member-name "inputSourceConfig")
                                  (output-source-config :target-type
                                   output-source-config :required common-lisp:t
                                   :member-name "outputSourceConfig")
                                  (resolution-techniques :target-type
                                   resolution-techniques :required
                                   common-lisp:t :member-name
                                   "resolutionTechniques")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "updatedAt")
                                  (incremental-run-config :target-type
                                   incremental-run-config :member-name
                                   "incrementalRunConfig")
                                  (role-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "roleArn")
                                  (tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "GetMatchingWorkflowOutput"))

(smithy/sdk/shapes:define-input get-policy-input common-lisp:nil
                                ((arn :target-type venice-global-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetPolicyInput"))

(smithy/sdk/shapes:define-output get-policy-output common-lisp:nil
                                 ((arn :target-type venice-global-arn :required
                                   common-lisp:t :member-name "arn")
                                  (token :target-type policy-token :required
                                   common-lisp:t :member-name "token")
                                  (policy :target-type policy-document
                                   :member-name "policy"))
                                 (:shape-name "GetPolicyOutput"))

(smithy/sdk/shapes:define-input get-provider-service-input common-lisp:nil
                                ((provider-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "providerName" :http-label common-lisp:t)
                                 (provider-service-name :target-type
                                  provider-service-arn :required common-lisp:t
                                  :member-name "providerServiceName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetProviderServiceInput"))

(smithy/sdk/shapes:define-output get-provider-service-output common-lisp:nil
                                 ((provider-name :target-type entity-name
                                   :required common-lisp:t :member-name
                                   "providerName")
                                  (provider-service-name :target-type
                                   entity-name :required common-lisp:t
                                   :member-name "providerServiceName")
                                  (provider-service-display-name :target-type
                                   provider-service-display-name :required
                                   common-lisp:t :member-name
                                   "providerServiceDisplayName")
                                  (provider-service-type :target-type
                                   service-type :required common-lisp:t
                                   :member-name "providerServiceType")
                                  (provider-service-arn :target-type
                                   provider-service-arn :required common-lisp:t
                                   :member-name "providerServiceArn")
                                  (provider-configuration-definition
                                   :target-type
                                   smithy/sdk/smithy-types:document
                                   :member-name
                                   "providerConfigurationDefinition")
                                  (provider-id-name-space-configuration
                                   :target-type
                                   provider-id-name-space-configuration
                                   :member-name
                                   "providerIdNameSpaceConfiguration")
                                  (provider-job-configuration :target-type
                                   smithy/sdk/smithy-types:document
                                   :member-name "providerJobConfiguration")
                                  (provider-endpoint-configuration :target-type
                                   provider-endpoint-configuration :required
                                   common-lisp:t :member-name
                                   "providerEndpointConfiguration")
                                  (anonymized-output :target-type
                                   smithy/sdk/smithy-types:boolean :required
                                   common-lisp:t :member-name
                                   "anonymizedOutput")
                                  (provider-entity-output-definition
                                   :target-type
                                   smithy/sdk/smithy-types:document :required
                                   common-lisp:t :member-name
                                   "providerEntityOutputDefinition")
                                  (provider-intermediate-data-access-configuration
                                   :target-type
                                   provider-intermediate-data-access-configuration
                                   :member-name
                                   "providerIntermediateDataAccessConfiguration")
                                  (provider-component-schema :target-type
                                   provider-component-schema :member-name
                                   "providerComponentSchema"))
                                 (:shape-name "GetProviderServiceOutput"))

(smithy/sdk/shapes:define-input get-schema-mapping-input common-lisp:nil
                                ((schema-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "schemaName" :http-label common-lisp:t))
                                (:shape-name "GetSchemaMappingInput"))

(smithy/sdk/shapes:define-output get-schema-mapping-output common-lisp:nil
                                 ((schema-name :target-type entity-name
                                   :required common-lisp:t :member-name
                                   "schemaName")
                                  (schema-arn :target-type schema-mapping-arn
                                   :required common-lisp:t :member-name
                                   "schemaArn")
                                  (description :target-type description
                                   :member-name "description")
                                  (mapped-input-fields :target-type
                                   schema-input-attributes :required
                                   common-lisp:t :member-name
                                   "mappedInputFields")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "updatedAt")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (has-workflows :target-type
                                   smithy/sdk/smithy-types:boolean :required
                                   common-lisp:t :member-name "hasWorkflows"))
                                 (:shape-name "GetSchemaMappingOutput"))

(smithy/sdk/shapes:define-type header-safe-unique-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure id-mapping-job-metrics common-lisp:nil
                                    ((input-records :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "inputRecords")
                                     (total-records-processed :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalRecordsProcessed")
                                     (records-not-processed :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "recordsNotProcessed")
                                     (total-mapped-records :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalMappedRecords")
                                     (total-mapped-source-records :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalMappedSourceRecords")
                                     (total-mapped-target-records :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalMappedTargetRecords")
                                     (unique-records-loaded :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "uniqueRecordsLoaded"))
                                    (:shape-name "IdMappingJobMetrics"))

(smithy/sdk/shapes:define-structure id-mapping-job-output-source
                                    common-lisp:nil
                                    ((role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (output-s3path :target-type s3path
                                      :required common-lisp:t :member-name
                                      "outputS3Path")
                                     (kmsarn :target-type kmsarn :member-name
                                      "KMSArn"))
                                    (:shape-name "IdMappingJobOutputSource"))

(smithy/sdk/shapes:define-list id-mapping-job-output-source-config :member
                               id-mapping-job-output-source)

(smithy/sdk/shapes:define-type id-mapping-role-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure id-mapping-rule-based-properties
                                    common-lisp:nil
                                    ((rules :target-type rule-list :member-name
                                      "rules")
                                     (rule-definition-type :target-type
                                      id-mapping-workflow-rule-definition-type
                                      :required common-lisp:t :member-name
                                      "ruleDefinitionType")
                                     (attribute-matching-model :target-type
                                      attribute-matching-model :required
                                      common-lisp:t :member-name
                                      "attributeMatchingModel")
                                     (record-matching-model :target-type
                                      record-matching-model :required
                                      common-lisp:t :member-name
                                      "recordMatchingModel"))
                                    (:shape-name
                                     "IdMappingRuleBasedProperties"))

(smithy/sdk/shapes:define-structure id-mapping-techniques common-lisp:nil
                                    ((id-mapping-type :target-type
                                      id-mapping-type :required common-lisp:t
                                      :member-name "idMappingType")
                                     (rule-based-properties :target-type
                                      id-mapping-rule-based-properties
                                      :member-name "ruleBasedProperties")
                                     (provider-properties :target-type
                                      provider-properties :member-name
                                      "providerProperties"))
                                    (:shape-name "IdMappingTechniques"))

(smithy/sdk/shapes:define-enum id-mapping-type
    common-lisp:nil
  (:provider "PROVIDER")
  (:rule-based "RULE_BASED"))

(smithy/sdk/shapes:define-type id-mapping-workflow-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure id-mapping-workflow-input-source
                                    common-lisp:nil
                                    ((input-source-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "inputSourceARN")
                                     (schema-name :target-type entity-name
                                      :member-name "schemaName")
                                     (type :target-type id-namespace-type
                                      :member-name "type"))
                                    (:shape-name
                                     "IdMappingWorkflowInputSource"))

(smithy/sdk/shapes:define-list id-mapping-workflow-input-source-config :member
                               id-mapping-workflow-input-source)

(smithy/sdk/shapes:define-list id-mapping-workflow-list :member
                               id-mapping-workflow-summary)

(smithy/sdk/shapes:define-structure id-mapping-workflow-output-source
                                    common-lisp:nil
                                    ((output-s3path :target-type s3path
                                      :required common-lisp:t :member-name
                                      "outputS3Path")
                                     (kmsarn :target-type kmsarn :member-name
                                      "KMSArn"))
                                    (:shape-name
                                     "IdMappingWorkflowOutputSource"))

(smithy/sdk/shapes:define-list id-mapping-workflow-output-source-config :member
                               id-mapping-workflow-output-source)

(smithy/sdk/shapes:define-enum id-mapping-workflow-rule-definition-type
    common-lisp:nil
  (:source "SOURCE")
  (:target "TARGET"))

(smithy/sdk/shapes:define-list id-mapping-workflow-rule-definition-type-list
                               :member id-mapping-workflow-rule-definition-type)

(smithy/sdk/shapes:define-structure id-mapping-workflow-summary common-lisp:nil
                                    ((workflow-name :target-type entity-name
                                      :required common-lisp:t :member-name
                                      "workflowName")
                                     (workflow-arn :target-type
                                      id-mapping-workflow-arn :required
                                      common-lisp:t :member-name "workflowArn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt"))
                                    (:shape-name "IdMappingWorkflowSummary"))

(smithy/sdk/shapes:define-type id-namespace-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure id-namespace-id-mapping-workflow-metadata
                                    common-lisp:nil
                                    ((id-mapping-type :target-type
                                      id-mapping-type :required common-lisp:t
                                      :member-name "idMappingType"))
                                    (:shape-name
                                     "IdNamespaceIdMappingWorkflowMetadata"))

(smithy/sdk/shapes:define-list id-namespace-id-mapping-workflow-metadata-list
                               :member
                               id-namespace-id-mapping-workflow-metadata)

(smithy/sdk/shapes:define-structure id-namespace-id-mapping-workflow-properties
                                    common-lisp:nil
                                    ((id-mapping-type :target-type
                                      id-mapping-type :required common-lisp:t
                                      :member-name "idMappingType")
                                     (rule-based-properties :target-type
                                      namespace-rule-based-properties
                                      :member-name "ruleBasedProperties")
                                     (provider-properties :target-type
                                      namespace-provider-properties
                                      :member-name "providerProperties"))
                                    (:shape-name
                                     "IdNamespaceIdMappingWorkflowProperties"))

(smithy/sdk/shapes:define-list id-namespace-id-mapping-workflow-properties-list
                               :member
                               id-namespace-id-mapping-workflow-properties)

(smithy/sdk/shapes:define-structure id-namespace-input-source common-lisp:nil
                                    ((input-source-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "inputSourceARN")
                                     (schema-name :target-type entity-name
                                      :member-name "schemaName"))
                                    (:shape-name "IdNamespaceInputSource"))

(smithy/sdk/shapes:define-list id-namespace-input-source-config :member
                               id-namespace-input-source)

(smithy/sdk/shapes:define-list id-namespace-list :member id-namespace-summary)

(smithy/sdk/shapes:define-structure id-namespace-summary common-lisp:nil
                                    ((id-namespace-name :target-type
                                      entity-name :required common-lisp:t
                                      :member-name "idNamespaceName")
                                     (id-namespace-arn :target-type
                                      id-namespace-arn :required common-lisp:t
                                      :member-name "idNamespaceArn")
                                     (description :target-type description
                                      :member-name "description")
                                     (id-mapping-workflow-properties
                                      :target-type
                                      id-namespace-id-mapping-workflow-metadata-list
                                      :member-name
                                      "idMappingWorkflowProperties")
                                     (type :target-type id-namespace-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt"))
                                    (:shape-name "IdNamespaceSummary"))

(smithy/sdk/shapes:define-enum id-namespace-type
    common-lisp:nil
  (:source "SOURCE")
  (:target "TARGET"))

(smithy/sdk/shapes:define-structure incremental-run-config common-lisp:nil
                                    ((incremental-run-type :target-type
                                      incremental-run-type :member-name
                                      "incrementalRunType"))
                                    (:shape-name "IncrementalRunConfig"))

(smithy/sdk/shapes:define-enum incremental-run-type
    common-lisp:nil
  (:immediate "IMMEDIATE"))

(smithy/sdk/shapes:define-structure input-source common-lisp:nil
                                    ((input-source-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "inputSourceARN")
                                     (schema-name :target-type entity-name
                                      :required common-lisp:t :member-name
                                      "schemaName")
                                     (apply-normalization :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "applyNormalization"))
                                    (:shape-name "InputSource"))

(smithy/sdk/shapes:define-list input-source-config :member input-source)

(smithy/sdk/shapes:define-structure intermediate-source-configuration
                                    common-lisp:nil
                                    ((intermediate-s3path :target-type s3path
                                      :required common-lisp:t :member-name
                                      "intermediateS3Path"))
                                    (:shape-name
                                     "IntermediateSourceConfiguration"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type job-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list job-list :member job-summary)

(smithy/sdk/shapes:define-structure job-metrics common-lisp:nil
                                    ((input-records :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "inputRecords")
                                     (total-records-processed :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "totalRecordsProcessed")
                                     (records-not-processed :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "recordsNotProcessed")
                                     (match-ids :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "matchIDs"))
                                    (:shape-name "JobMetrics"))

(smithy/sdk/shapes:define-structure job-output-source common-lisp:nil
                                    ((role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (output-s3path :target-type s3path
                                      :required common-lisp:t :member-name
                                      "outputS3Path")
                                     (kmsarn :target-type kmsarn :member-name
                                      "KMSArn"))
                                    (:shape-name "JobOutputSource"))

(smithy/sdk/shapes:define-list job-output-source-config :member
                               job-output-source)

(smithy/sdk/shapes:define-enum job-status
    common-lisp:nil
  (:running "RUNNING")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED")
  (:queued "QUEUED"))

(smithy/sdk/shapes:define-structure job-summary common-lisp:nil
                                    ((job-id :target-type job-id :required
                                      common-lisp:t :member-name "jobId")
                                     (status :target-type job-status :required
                                      common-lisp:t :member-name "status")
                                     (start-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "startTime")
                                     (end-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "endTime"))
                                    (:shape-name "JobSummary"))

(smithy/sdk/shapes:define-type kmsarn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-id-mapping-jobs-input common-lisp:nil
                                ((workflow-name :target-type
                                  entity-name-or-id-mapping-workflow-arn
                                  :required common-lisp:t :member-name
                                  "workflowName" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListIdMappingJobsInput"))

(smithy/sdk/shapes:define-output list-id-mapping-jobs-output common-lisp:nil
                                 ((jobs :target-type job-list :member-name
                                   "jobs")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListIdMappingJobsOutput"))

(smithy/sdk/shapes:define-input list-id-mapping-workflows-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListIdMappingWorkflowsInput"))

(smithy/sdk/shapes:define-output list-id-mapping-workflows-output
                                 common-lisp:nil
                                 ((workflow-summaries :target-type
                                   id-mapping-workflow-list :member-name
                                   "workflowSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListIdMappingWorkflowsOutput"))

(smithy/sdk/shapes:define-input list-id-namespaces-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListIdNamespacesInput"))

(smithy/sdk/shapes:define-output list-id-namespaces-output common-lisp:nil
                                 ((id-namespace-summaries :target-type
                                   id-namespace-list :member-name
                                   "idNamespaceSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListIdNamespacesOutput"))

(smithy/sdk/shapes:define-input list-matching-jobs-input common-lisp:nil
                                ((workflow-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "workflowName" :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListMatchingJobsInput"))

(smithy/sdk/shapes:define-output list-matching-jobs-output common-lisp:nil
                                 ((jobs :target-type job-list :member-name
                                   "jobs")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListMatchingJobsOutput"))

(smithy/sdk/shapes:define-input list-matching-workflows-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListMatchingWorkflowsInput"))

(smithy/sdk/shapes:define-output list-matching-workflows-output common-lisp:nil
                                 ((workflow-summaries :target-type
                                   matching-workflow-list :member-name
                                   "workflowSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListMatchingWorkflowsOutput"))

(smithy/sdk/shapes:define-input list-provider-services-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults")
                                 (provider-name :target-type entity-name
                                  :member-name "providerName" :http-query
                                  "providerName"))
                                (:shape-name "ListProviderServicesInput"))

(smithy/sdk/shapes:define-output list-provider-services-output common-lisp:nil
                                 ((provider-service-summaries :target-type
                                   provider-service-list :member-name
                                   "providerServiceSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListProviderServicesOutput"))

(smithy/sdk/shapes:define-input list-schema-mappings-input common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults" :http-query "maxResults"))
                                (:shape-name "ListSchemaMappingsInput"))

(smithy/sdk/shapes:define-output list-schema-mappings-output common-lisp:nil
                                 ((schema-list :target-type schema-mapping-list
                                   :member-name "schemaList")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListSchemaMappingsOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type venice-global-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tag-map :required
                                   common-lisp:t :member-name "tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-structure match-group common-lisp:nil
                                    ((records :target-type matched-records-list
                                      :required common-lisp:t :member-name
                                      "records")
                                     (match-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "matchId")
                                     (match-rule :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "matchRule"))
                                    (:shape-name "MatchGroup"))

(smithy/sdk/shapes:define-list match-groups-list :member match-group)

(smithy/sdk/shapes:define-enum match-purpose
    common-lisp:nil
  (:identifier-generation "IDENTIFIER_GENERATION")
  (:indexing "INDEXING"))

(smithy/sdk/shapes:define-structure matched-record common-lisp:nil
                                    ((input-source-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "inputSourceARN")
                                     (record-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "recordId"))
                                    (:shape-name "MatchedRecord"))

(smithy/sdk/shapes:define-list matched-records-list :member matched-record)

(smithy/sdk/shapes:define-list matching-keys :member attribute-name)

(smithy/sdk/shapes:define-type matching-workflow-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list matching-workflow-list :member
                               matching-workflow-summary)

(smithy/sdk/shapes:define-structure matching-workflow-summary common-lisp:nil
                                    ((workflow-name :target-type entity-name
                                      :required common-lisp:t :member-name
                                      "workflowName")
                                     (workflow-arn :target-type
                                      matching-workflow-arn :required
                                      common-lisp:t :member-name "workflowArn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (resolution-type :target-type
                                      resolution-type :required common-lisp:t
                                      :member-name "resolutionType"))
                                    (:shape-name "MatchingWorkflowSummary"))

(smithy/sdk/shapes:define-structure namespace-provider-properties
                                    common-lisp:nil
                                    ((provider-service-arn :target-type
                                      provider-service-arn :required
                                      common-lisp:t :member-name
                                      "providerServiceArn")
                                     (provider-configuration :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name "providerConfiguration"))
                                    (:shape-name "NamespaceProviderProperties"))

(smithy/sdk/shapes:define-structure namespace-rule-based-properties
                                    common-lisp:nil
                                    ((rules :target-type rule-list :member-name
                                      "rules")
                                     (rule-definition-types :target-type
                                      id-mapping-workflow-rule-definition-type-list
                                      :member-name "ruleDefinitionTypes")
                                     (attribute-matching-model :target-type
                                      attribute-matching-model :member-name
                                      "attributeMatchingModel")
                                     (record-matching-models :target-type
                                      record-matching-model-list :member-name
                                      "recordMatchingModels"))
                                    (:shape-name
                                     "NamespaceRuleBasedProperties"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure output-attribute common-lisp:nil
                                    ((name :target-type attribute-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (hashed :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "hashed"))
                                    (:shape-name "OutputAttribute"))

(smithy/sdk/shapes:define-list output-attributes :member output-attribute)

(smithy/sdk/shapes:define-structure output-source common-lisp:nil
                                    ((output-s3path :target-type s3path
                                      :required common-lisp:t :member-name
                                      "outputS3Path")
                                     (kmsarn :target-type kmsarn :member-name
                                      "KMSArn")
                                     (output :target-type output-attributes
                                      :required common-lisp:t :member-name
                                      "output")
                                     (apply-normalization :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "applyNormalization"))
                                    (:shape-name "OutputSource"))

(smithy/sdk/shapes:define-list output-source-config :member output-source)

(smithy/sdk/shapes:define-type policy-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum processing-type
    common-lisp:nil
  (:consistent "CONSISTENT")
  (:eventual "EVENTUAL")
  (:eventual-no-lookup "EVENTUAL_NO_LOOKUP"))

(smithy/sdk/shapes:define-structure provider-component-schema common-lisp:nil
                                    ((schemas :target-type schemas :member-name
                                      "schemas")
                                     (provider-schema-attributes :target-type
                                      provider-schema-attributes :member-name
                                      "providerSchemaAttributes"))
                                    (:shape-name "ProviderComponentSchema"))

(smithy/sdk/shapes:define-union provider-endpoint-configuration common-lisp:nil
                                ((marketplace-configuration :target-type
                                  provider-marketplace-configuration
                                  :member-name "marketplaceConfiguration"))
                                (:shape-name "ProviderEndpointConfiguration"))

(smithy/sdk/shapes:define-structure provider-id-name-space-configuration
                                    common-lisp:nil
                                    ((description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description")
                                     (provider-target-configuration-definition
                                      :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name
                                      "providerTargetConfigurationDefinition")
                                     (provider-source-configuration-definition
                                      :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name
                                      "providerSourceConfigurationDefinition"))
                                    (:shape-name
                                     "ProviderIdNameSpaceConfiguration"))

(smithy/sdk/shapes:define-structure
 provider-intermediate-data-access-configuration common-lisp:nil
 ((aws-account-ids :target-type aws-account-id-list :member-name
   "awsAccountIds")
  (required-bucket-actions :target-type required-bucket-actions-list
   :member-name "requiredBucketActions"))
 (:shape-name "ProviderIntermediateDataAccessConfiguration"))

(smithy/sdk/shapes:define-structure provider-marketplace-configuration
                                    common-lisp:nil
                                    ((data-set-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "dataSetId")
                                     (revision-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "revisionId")
                                     (asset-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "assetId")
                                     (listing-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "listingId"))
                                    (:shape-name
                                     "ProviderMarketplaceConfiguration"))

(smithy/sdk/shapes:define-structure provider-properties common-lisp:nil
                                    ((provider-service-arn :target-type
                                      provider-service-arn :required
                                      common-lisp:t :member-name
                                      "providerServiceArn")
                                     (provider-configuration :target-type
                                      smithy/sdk/smithy-types:document
                                      :member-name "providerConfiguration")
                                     (intermediate-source-configuration
                                      :target-type
                                      intermediate-source-configuration
                                      :member-name
                                      "intermediateSourceConfiguration"))
                                    (:shape-name "ProviderProperties"))

(smithy/sdk/shapes:define-structure provider-schema-attribute common-lisp:nil
                                    ((field-name :target-type attribute-name
                                      :required common-lisp:t :member-name
                                      "fieldName")
                                     (type :target-type schema-attribute-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (sub-type :target-type attribute-name
                                      :member-name "subType")
                                     (hashing :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "hashing"))
                                    (:shape-name "ProviderSchemaAttribute"))

(smithy/sdk/shapes:define-list provider-schema-attributes :member
                               provider-schema-attribute)

(smithy/sdk/shapes:define-type provider-service-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type provider-service-display-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list provider-service-list :member
                               provider-service-summary)

(smithy/sdk/shapes:define-structure provider-service-summary common-lisp:nil
                                    ((provider-service-arn :target-type
                                      provider-service-arn :required
                                      common-lisp:t :member-name
                                      "providerServiceArn")
                                     (provider-name :target-type entity-name
                                      :required common-lisp:t :member-name
                                      "providerName")
                                     (provider-service-display-name
                                      :target-type
                                      provider-service-display-name :required
                                      common-lisp:t :member-name
                                      "providerServiceDisplayName")
                                     (provider-service-name :target-type
                                      entity-name :required common-lisp:t
                                      :member-name "providerServiceName")
                                     (provider-service-type :target-type
                                      service-type :required common-lisp:t
                                      :member-name "providerServiceType"))
                                    (:shape-name "ProviderServiceSummary"))

(smithy/sdk/shapes:define-input put-policy-input common-lisp:nil
                                ((arn :target-type venice-global-arn :required
                                  common-lisp:t :member-name "arn" :http-label
                                  common-lisp:t)
                                 (token :target-type policy-token :member-name
                                  "token")
                                 (policy :target-type policy-document :required
                                  common-lisp:t :member-name "policy"))
                                (:shape-name "PutPolicyInput"))

(smithy/sdk/shapes:define-output put-policy-output common-lisp:nil
                                 ((arn :target-type venice-global-arn :required
                                   common-lisp:t :member-name "arn")
                                  (token :target-type policy-token :required
                                   common-lisp:t :member-name "token")
                                  (policy :target-type policy-document
                                   :member-name "policy"))
                                 (:shape-name "PutPolicyOutput"))

(smithy/sdk/shapes:define-structure record common-lisp:nil
                                    ((input-source-arn :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "inputSourceARN")
                                     (unique-id :target-type unique-id
                                      :required common-lisp:t :member-name
                                      "uniqueId")
                                     (record-attribute-map :target-type
                                      record-attribute-map-string255 :required
                                      common-lisp:t :member-name
                                      "recordAttributeMap"))
                                    (:shape-name "Record"))

(smithy/sdk/shapes:define-map record-attribute-map :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map record-attribute-map-string255 :key
                              smithy/sdk/smithy-types:string :value
                              smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list record-list :member record)

(smithy/sdk/shapes:define-enum record-matching-model
    common-lisp:nil
  (:one-source-to-one-target "ONE_SOURCE_TO_ONE_TARGET")
  (:many-source-to-one-target "MANY_SOURCE_TO_ONE_TARGET"))

(smithy/sdk/shapes:define-list record-matching-model-list :member
                               record-matching-model)

(smithy/sdk/shapes:define-list required-bucket-actions-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resolution-techniques common-lisp:nil
                                    ((resolution-type :target-type
                                      resolution-type :required common-lisp:t
                                      :member-name "resolutionType")
                                     (rule-based-properties :target-type
                                      rule-based-properties :member-name
                                      "ruleBasedProperties")
                                     (rule-condition-properties :target-type
                                      rule-condition-properties :member-name
                                      "ruleConditionProperties")
                                     (provider-properties :target-type
                                      provider-properties :member-name
                                      "providerProperties"))
                                    (:shape-name "ResolutionTechniques"))

(smithy/sdk/shapes:define-enum resolution-type
    common-lisp:nil
  (:rule-matching "RULE_MATCHING")
  (:ml-matching "ML_MATCHING")
  (:provider "PROVIDER"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rule common-lisp:nil
                                    ((rule-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "ruleName")
                                     (matching-keys :target-type matching-keys
                                      :required common-lisp:t :member-name
                                      "matchingKeys"))
                                    (:shape-name "Rule"))

(smithy/sdk/shapes:define-structure rule-based-properties common-lisp:nil
                                    ((rules :target-type rule-list :required
                                      common-lisp:t :member-name "rules")
                                     (attribute-matching-model :target-type
                                      attribute-matching-model :required
                                      common-lisp:t :member-name
                                      "attributeMatchingModel")
                                     (match-purpose :target-type match-purpose
                                      :member-name "matchPurpose"))
                                    (:shape-name "RuleBasedProperties"))

(smithy/sdk/shapes:define-structure rule-condition common-lisp:nil
                                    ((rule-name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "ruleName")
                                     (condition :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "condition"))
                                    (:shape-name "RuleCondition"))

(smithy/sdk/shapes:define-list rule-condition-list :member rule-condition)

(smithy/sdk/shapes:define-structure rule-condition-properties common-lisp:nil
                                    ((rules :target-type rule-condition-list
                                      :required common-lisp:t :member-name
                                      "rules"))
                                    (:shape-name "RuleConditionProperties"))

(smithy/sdk/shapes:define-list rule-list :member rule)

(smithy/sdk/shapes:define-type s3path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum schema-attribute-type
    common-lisp:nil
  (:name "NAME")
  (:name-first "NAME_FIRST")
  (:name-middle "NAME_MIDDLE")
  (:name-last "NAME_LAST")
  (:address "ADDRESS")
  (:address-street1 "ADDRESS_STREET1")
  (:address-street2 "ADDRESS_STREET2")
  (:address-street3 "ADDRESS_STREET3")
  (:address-city "ADDRESS_CITY")
  (:address-state "ADDRESS_STATE")
  (:address-country "ADDRESS_COUNTRY")
  (:address-postalcode "ADDRESS_POSTALCODE")
  (:phone "PHONE")
  (:phone-number "PHONE_NUMBER")
  (:phone-countrycode "PHONE_COUNTRYCODE")
  (:email-address "EMAIL_ADDRESS")
  (:unique-id "UNIQUE_ID")
  (:date "DATE")
  (:string "STRING")
  (:provider-id "PROVIDER_ID")
  (:ipv4 "IPV4")
  (:ipv6 "IPV6")
  (:maid "MAID"))

(smithy/sdk/shapes:define-structure schema-input-attribute common-lisp:nil
                                    ((field-name :target-type attribute-name
                                      :required common-lisp:t :member-name
                                      "fieldName")
                                     (type :target-type schema-attribute-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (group-name :target-type attribute-name
                                      :member-name "groupName")
                                     (match-key :target-type attribute-name
                                      :member-name "matchKey")
                                     (sub-type :target-type attribute-name
                                      :member-name "subType")
                                     (hashed :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "hashed"))
                                    (:shape-name "SchemaInputAttribute"))

(smithy/sdk/shapes:define-list schema-input-attributes :member
                               schema-input-attribute)

(smithy/sdk/shapes:define-list schema-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type schema-mapping-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list schema-mapping-list :member
                               schema-mapping-summary)

(smithy/sdk/shapes:define-structure schema-mapping-summary common-lisp:nil
                                    ((schema-name :target-type entity-name
                                      :required common-lisp:t :member-name
                                      "schemaName")
                                     (schema-arn :target-type
                                      schema-mapping-arn :required
                                      common-lisp:t :member-name "schemaArn")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (has-workflows :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "hasWorkflows"))
                                    (:shape-name "SchemaMappingSummary"))

(smithy/sdk/shapes:define-list schemas :member schema-list)

(smithy/sdk/shapes:define-enum service-type
    common-lisp:nil
  (:assignment "ASSIGNMENT")
  (:id-mapping "ID_MAPPING"))

(smithy/sdk/shapes:define-input start-id-mapping-job-input common-lisp:nil
                                ((workflow-name :target-type
                                  entity-name-or-id-mapping-workflow-arn
                                  :required common-lisp:t :member-name
                                  "workflowName" :http-label common-lisp:t)
                                 (output-source-config :target-type
                                  id-mapping-job-output-source-config
                                  :member-name "outputSourceConfig"))
                                (:shape-name "StartIdMappingJobInput"))

(smithy/sdk/shapes:define-output start-id-mapping-job-output common-lisp:nil
                                 ((job-id :target-type job-id :required
                                   common-lisp:t :member-name "jobId")
                                  (output-source-config :target-type
                                   id-mapping-job-output-source-config
                                   :member-name "outputSourceConfig"))
                                 (:shape-name "StartIdMappingJobOutput"))

(smithy/sdk/shapes:define-input start-matching-job-input common-lisp:nil
                                ((workflow-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "workflowName" :http-label common-lisp:t))
                                (:shape-name "StartMatchingJobInput"))

(smithy/sdk/shapes:define-output start-matching-job-output common-lisp:nil
                                 ((job-id :target-type job-id :required
                                   common-lisp:t :member-name "jobId"))
                                 (:shape-name "StartMatchingJobOutput"))

(smithy/sdk/shapes:define-type statement-action smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list statement-action-list :member statement-action)

(smithy/sdk/shapes:define-type statement-condition
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum statement-effect
    common-lisp:nil
  (:allow "Allow")
  (:deny "Deny"))

(smithy/sdk/shapes:define-type statement-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type statement-principal
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list statement-principal-list :member
                               statement-principal)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type venice-global-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type unique-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list unique-id-list :member header-safe-unique-id)

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type venice-global-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-input update-id-mapping-workflow-input
                                common-lisp:nil
                                ((workflow-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "workflowName" :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (input-source-config :target-type
                                  id-mapping-workflow-input-source-config
                                  :required common-lisp:t :member-name
                                  "inputSourceConfig")
                                 (output-source-config :target-type
                                  id-mapping-workflow-output-source-config
                                  :member-name "outputSourceConfig")
                                 (id-mapping-techniques :target-type
                                  id-mapping-techniques :required common-lisp:t
                                  :member-name "idMappingTechniques")
                                 (role-arn :target-type id-mapping-role-arn
                                  :member-name "roleArn"))
                                (:shape-name "UpdateIdMappingWorkflowInput"))

(smithy/sdk/shapes:define-output update-id-mapping-workflow-output
                                 common-lisp:nil
                                 ((workflow-name :target-type entity-name
                                   :required common-lisp:t :member-name
                                   "workflowName")
                                  (workflow-arn :target-type
                                   id-mapping-workflow-arn :required
                                   common-lisp:t :member-name "workflowArn")
                                  (description :target-type description
                                   :member-name "description")
                                  (input-source-config :target-type
                                   id-mapping-workflow-input-source-config
                                   :required common-lisp:t :member-name
                                   "inputSourceConfig")
                                  (output-source-config :target-type
                                   id-mapping-workflow-output-source-config
                                   :member-name "outputSourceConfig")
                                  (id-mapping-techniques :target-type
                                   id-mapping-techniques :required
                                   common-lisp:t :member-name
                                   "idMappingTechniques")
                                  (role-arn :target-type id-mapping-role-arn
                                   :member-name "roleArn"))
                                 (:shape-name "UpdateIdMappingWorkflowOutput"))

(smithy/sdk/shapes:define-input update-id-namespace-input common-lisp:nil
                                ((id-namespace-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "idNamespaceName" :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (input-source-config :target-type
                                  id-namespace-input-source-config :member-name
                                  "inputSourceConfig")
                                 (id-mapping-workflow-properties :target-type
                                  id-namespace-id-mapping-workflow-properties-list
                                  :member-name "idMappingWorkflowProperties")
                                 (role-arn :target-type role-arn :member-name
                                  "roleArn"))
                                (:shape-name "UpdateIdNamespaceInput"))

(smithy/sdk/shapes:define-output update-id-namespace-output common-lisp:nil
                                 ((id-namespace-name :target-type entity-name
                                   :required common-lisp:t :member-name
                                   "idNamespaceName")
                                  (id-namespace-arn :target-type
                                   id-namespace-arn :required common-lisp:t
                                   :member-name "idNamespaceArn")
                                  (description :target-type description
                                   :member-name "description")
                                  (input-source-config :target-type
                                   id-namespace-input-source-config
                                   :member-name "inputSourceConfig")
                                  (id-mapping-workflow-properties :target-type
                                   id-namespace-id-mapping-workflow-properties-list
                                   :member-name "idMappingWorkflowProperties")
                                  (type :target-type id-namespace-type
                                   :required common-lisp:t :member-name "type")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createdAt")
                                  (updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "updatedAt"))
                                 (:shape-name "UpdateIdNamespaceOutput"))

(smithy/sdk/shapes:define-input update-matching-workflow-input common-lisp:nil
                                ((workflow-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "workflowName" :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (input-source-config :target-type
                                  input-source-config :required common-lisp:t
                                  :member-name "inputSourceConfig")
                                 (output-source-config :target-type
                                  output-source-config :required common-lisp:t
                                  :member-name "outputSourceConfig")
                                 (resolution-techniques :target-type
                                  resolution-techniques :required common-lisp:t
                                  :member-name "resolutionTechniques")
                                 (incremental-run-config :target-type
                                  incremental-run-config :member-name
                                  "incrementalRunConfig")
                                 (role-arn :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "roleArn"))
                                (:shape-name "UpdateMatchingWorkflowInput"))

(smithy/sdk/shapes:define-output update-matching-workflow-output
                                 common-lisp:nil
                                 ((workflow-name :target-type entity-name
                                   :required common-lisp:t :member-name
                                   "workflowName")
                                  (description :target-type description
                                   :member-name "description")
                                  (input-source-config :target-type
                                   input-source-config :required common-lisp:t
                                   :member-name "inputSourceConfig")
                                  (output-source-config :target-type
                                   output-source-config :required common-lisp:t
                                   :member-name "outputSourceConfig")
                                  (resolution-techniques :target-type
                                   resolution-techniques :required
                                   common-lisp:t :member-name
                                   "resolutionTechniques")
                                  (incremental-run-config :target-type
                                   incremental-run-config :member-name
                                   "incrementalRunConfig")
                                  (role-arn :target-type
                                   smithy/sdk/smithy-types:string :required
                                   common-lisp:t :member-name "roleArn"))
                                 (:shape-name "UpdateMatchingWorkflowOutput"))

(smithy/sdk/shapes:define-input update-schema-mapping-input common-lisp:nil
                                ((schema-name :target-type entity-name
                                  :required common-lisp:t :member-name
                                  "schemaName" :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (mapped-input-fields :target-type
                                  schema-input-attributes :required
                                  common-lisp:t :member-name
                                  "mappedInputFields"))
                                (:shape-name "UpdateSchemaMappingInput"))

(smithy/sdk/shapes:define-output update-schema-mapping-output common-lisp:nil
                                 ((schema-name :target-type entity-name
                                   :required common-lisp:t :member-name
                                   "schemaName")
                                  (schema-arn :target-type schema-mapping-arn
                                   :required common-lisp:t :member-name
                                   "schemaArn")
                                  (description :target-type description
                                   :member-name "description")
                                  (mapped-input-fields :target-type
                                   schema-input-attributes :required
                                   common-lisp:t :member-name
                                   "mappedInputFields"))
                                 (:shape-name "UpdateSchemaMappingOutput"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type venice-global-arn smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation add-policy-statement :shape-name
                                       "AddPolicyStatement" :input
                                       add-policy-statement-input :output
                                       add-policy-statement-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/policies/{arn}/{statementId}" :code
                                       200)

(smithy/sdk/operation:define-operation batch-delete-unique-id :shape-name
                                       "BatchDeleteUniqueId" :input
                                       batch-delete-unique-id-input :output
                                       batch-delete-unique-id-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/matchingworkflows/{workflowName}/uniqueids"
                                       :code 200)

(smithy/sdk/operation:define-operation create-id-mapping-workflow :shape-name
                                       "CreateIdMappingWorkflow" :input
                                       create-id-mapping-workflow-input :output
                                       create-id-mapping-workflow-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        exceeds-limit-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/idmappingworkflows" :code 200)

(smithy/sdk/operation:define-operation create-id-namespace :shape-name
                                       "CreateIdNamespace" :input
                                       create-id-namespace-input :output
                                       create-id-namespace-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        exceeds-limit-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/idnamespaces"
                                       :code 200)

(smithy/sdk/operation:define-operation create-matching-workflow :shape-name
                                       "CreateMatchingWorkflow" :input
                                       create-matching-workflow-input :output
                                       create-matching-workflow-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        exceeds-limit-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/matchingworkflows"
                                       :code 200)

(smithy/sdk/operation:define-operation create-schema-mapping :shape-name
                                       "CreateSchemaMapping" :input
                                       create-schema-mapping-input :output
                                       create-schema-mapping-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        exceeds-limit-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/schemas" :code 200)

(smithy/sdk/operation:define-operation delete-id-mapping-workflow :shape-name
                                       "DeleteIdMappingWorkflow" :input
                                       delete-id-mapping-workflow-input :output
                                       delete-id-mapping-workflow-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/idmappingworkflows/{workflowName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-id-namespace :shape-name
                                       "DeleteIdNamespace" :input
                                       delete-id-namespace-input :output
                                       delete-id-namespace-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/idnamespaces/{idNamespaceName}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-matching-workflow :shape-name
                                       "DeleteMatchingWorkflow" :input
                                       delete-matching-workflow-input :output
                                       delete-matching-workflow-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/matchingworkflows/{workflowName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-policy-statement :shape-name
                                       "DeletePolicyStatement" :input
                                       delete-policy-statement-input :output
                                       delete-policy-statement-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/policies/{arn}/{statementId}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-schema-mapping :shape-name
                                       "DeleteSchemaMapping" :input
                                       delete-schema-mapping-input :output
                                       delete-schema-mapping-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/schemas/{schemaName}" :code 200)

(smithy/sdk/operation:define-operation generate-match-id :shape-name
                                       "GenerateMatchId" :input
                                       generate-match-id-input :output
                                       generate-match-id-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/matchingworkflows/{workflowName}/generateMatches"
                                       :code 200)

(smithy/sdk/operation:define-operation get-id-mapping-job :shape-name
                                       "GetIdMappingJob" :input
                                       get-id-mapping-job-input :output
                                       get-id-mapping-job-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/idmappingworkflows/{workflowName}/jobs/{jobId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-id-mapping-workflow :shape-name
                                       "GetIdMappingWorkflow" :input
                                       get-id-mapping-workflow-input :output
                                       get-id-mapping-workflow-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/idmappingworkflows/{workflowName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-id-namespace :shape-name
                                       "GetIdNamespace" :input
                                       get-id-namespace-input :output
                                       get-id-namespace-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/idnamespaces/{idNamespaceName}" :code
                                       200)

(smithy/sdk/operation:define-operation get-match-id :shape-name "GetMatchId"
                                       :input get-match-id-input :output
                                       get-match-id-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/matchingworkflows/{workflowName}/matches"
                                       :code 200)

(smithy/sdk/operation:define-operation get-matching-job :shape-name
                                       "GetMatchingJob" :input
                                       get-matching-job-input :output
                                       get-matching-job-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/matchingworkflows/{workflowName}/jobs/{jobId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-matching-workflow :shape-name
                                       "GetMatchingWorkflow" :input
                                       get-matching-workflow-input :output
                                       get-matching-workflow-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/matchingworkflows/{workflowName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-policy :shape-name "GetPolicy"
                                       :input get-policy-input :output
                                       get-policy-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/policies/{arn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-provider-service :shape-name
                                       "GetProviderService" :input
                                       get-provider-service-input :output
                                       get-provider-service-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/providerservices/{providerName}/{providerServiceName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-schema-mapping :shape-name
                                       "GetSchemaMapping" :input
                                       get-schema-mapping-input :output
                                       get-schema-mapping-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/schemas/{schemaName}" :code 200)

(smithy/sdk/operation:define-operation list-id-mapping-jobs :shape-name
                                       "ListIdMappingJobs" :input
                                       list-id-mapping-jobs-input :output
                                       list-id-mapping-jobs-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/idmappingworkflows/{workflowName}/jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-id-mapping-workflows :shape-name
                                       "ListIdMappingWorkflows" :input
                                       list-id-mapping-workflows-input :output
                                       list-id-mapping-workflows-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/idmappingworkflows"
                                       :code 200)

(smithy/sdk/operation:define-operation list-id-namespaces :shape-name
                                       "ListIdNamespaces" :input
                                       list-id-namespaces-input :output
                                       list-id-namespaces-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/idnamespaces" :code
                                       200)

(smithy/sdk/operation:define-operation list-matching-jobs :shape-name
                                       "ListMatchingJobs" :input
                                       list-matching-jobs-input :output
                                       list-matching-jobs-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/matchingworkflows/{workflowName}/jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-matching-workflows :shape-name
                                       "ListMatchingWorkflows" :input
                                       list-matching-workflows-input :output
                                       list-matching-workflows-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/matchingworkflows"
                                       :code 200)

(smithy/sdk/operation:define-operation list-provider-services :shape-name
                                       "ListProviderServices" :input
                                       list-provider-services-input :output
                                       list-provider-services-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/providerservices"
                                       :code 200)

(smithy/sdk/operation:define-operation list-schema-mappings :shape-name
                                       "ListSchemaMappings" :input
                                       list-schema-mappings-input :output
                                       list-schema-mappings-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/schemas" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation put-policy :shape-name "PutPolicy"
                                       :input put-policy-input :output
                                       put-policy-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/policies/{arn}"
                                       :code 200)

(smithy/sdk/operation:define-operation start-id-mapping-job :shape-name
                                       "StartIdMappingJob" :input
                                       start-id-mapping-job-input :output
                                       start-id-mapping-job-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        exceeds-limit-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/idmappingworkflows/{workflowName}/jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation start-matching-job :shape-name
                                       "StartMatchingJob" :input
                                       start-matching-job-input :output
                                       start-matching-job-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        exceeds-limit-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/matchingworkflows/{workflowName}/jobs"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (internal-server-exception
                                        resource-not-found-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}")

(smithy/sdk/operation:define-operation update-id-mapping-workflow :shape-name
                                       "UpdateIdMappingWorkflow" :input
                                       update-id-mapping-workflow-input :output
                                       update-id-mapping-workflow-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/idmappingworkflows/{workflowName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-id-namespace :shape-name
                                       "UpdateIdNamespace" :input
                                       update-id-namespace-input :output
                                       update-id-namespace-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/idnamespaces/{idNamespaceName}" :code
                                       200)

(smithy/sdk/operation:define-operation update-matching-workflow :shape-name
                                       "UpdateMatchingWorkflow" :input
                                       update-matching-workflow-input :output
                                       update-matching-workflow-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/matchingworkflows/{workflowName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-schema-mapping :shape-name
                                       "UpdateSchemaMapping" :input
                                       update-schema-mapping-input :output
                                       update-schema-mapping-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/schemas/{schemaName}" :code 200)
