(uiop/package:define-package #:pira/cleanrooms (:use)
                             (:export #:awsbastion-control-plane-service-lambda
                              #:access-denied-exception-reason #:account-id
                              #:additional-analyses
                              #:additional-analyses-resource-arn
                              #:aggregate-column #:aggregate-column-list
                              #:aggregate-function-name
                              #:aggregation-constraint
                              #:aggregation-constraints #:aggregation-type
                              #:allowed-additional-analyses
                              #:allowed-analyses-list
                              #:allowed-analysis-provider-list
                              #:allowed-column-list #:allowed-result-receivers
                              #:analysis-format #:analysis-method
                              #:analysis-parameter #:analysis-parameter-list
                              #:analysis-rule #:analysis-rule-aggregation
                              #:analysis-rule-column-list
                              #:analysis-rule-column-name
                              #:analysis-rule-column-name-list
                              #:analysis-rule-custom
                              #:analysis-rule-id-mapping-table
                              #:analysis-rule-list #:analysis-rule-policy
                              #:analysis-rule-policy-v1 #:analysis-rule-type
                              #:analysis-rule-type-list #:analysis-schema
                              #:analysis-source #:analysis-source-metadata
                              #:analysis-template #:analysis-template-arn
                              #:analysis-template-arn-list
                              #:analysis-template-arn-or-query-wildcard
                              #:analysis-template-artifact
                              #:analysis-template-artifact-list
                              #:analysis-template-artifact-metadata
                              #:analysis-template-artifacts
                              #:analysis-template-identifier
                              #:analysis-template-resource
                              #:analysis-template-summary
                              #:analysis-template-summary-list
                              #:analysis-template-text
                              #:analysis-template-validation-status
                              #:analysis-template-validation-status-detail
                              #:analysis-template-validation-status-detail-list
                              #:analysis-template-validation-status-reason
                              #:analysis-template-validation-status-reason-list
                              #:analysis-template-validation-type
                              #:analysis-type #:analytics-engine
                              #:athena-database-name #:athena-output-location
                              #:athena-table-name #:athena-table-reference
                              #:athena-work-group
                              #:batch-get-collaboration-analysis-template
                              #:batch-get-collaboration-analysis-template-error
                              #:batch-get-collaboration-analysis-template-error-list
                              #:batch-get-collaboration-analysis-template-input
                              #:batch-get-collaboration-analysis-template-output
                              #:batch-get-schema
                              #:batch-get-schema-analysis-rule
                              #:batch-get-schema-analysis-rule-error
                              #:batch-get-schema-analysis-rule-error-list
                              #:batch-get-schema-error
                              #:batch-get-schema-error-list
                              #:batch-get-schema-input
                              #:batch-get-schema-output
                              #:billed-job-resource-utilization
                              #:billed-resource-utilization #:cleanrooms-arn
                              #:collaboration #:collaboration-analysis-template
                              #:collaboration-analysis-template-list
                              #:collaboration-analysis-template-summary
                              #:collaboration-analysis-template-summary-list
                              #:collaboration-arn
                              #:collaboration-configured-audience-model-association
                              #:collaboration-configured-audience-model-association-summary
                              #:collaboration-configured-audience-model-association-summary-list
                              #:collaboration-description
                              #:collaboration-id-namespace-association
                              #:collaboration-id-namespace-association-summary
                              #:collaboration-id-namespace-association-summary-list
                              #:collaboration-identifier
                              #:collaboration-job-log-status
                              #:collaboration-name
                              #:collaboration-privacy-budget-summary
                              #:collaboration-privacy-budget-summary-list
                              #:collaboration-privacy-budget-template
                              #:collaboration-privacy-budget-template-summary
                              #:collaboration-privacy-budget-template-summary-list
                              #:collaboration-query-log-status
                              #:collaboration-resource #:collaboration-summary
                              #:collaboration-summary-list #:column
                              #:column-list #:column-name #:column-type-string
                              #:compute-configuration #:configuration-details
                              #:configured-audience-model-arn
                              #:configured-audience-model-association
                              #:configured-audience-model-association-arn
                              #:configured-audience-model-association-identifier
                              #:configured-audience-model-association-name
                              #:configured-audience-model-association-resource
                              #:configured-audience-model-association-summary
                              #:configured-audience-model-association-summary-list
                              #:configured-table
                              #:configured-table-analysis-rule
                              #:configured-table-analysis-rule-policy
                              #:configured-table-analysis-rule-policy-v1
                              #:configured-table-analysis-rule-type
                              #:configured-table-analysis-rule-type-list
                              #:configured-table-arn
                              #:configured-table-association
                              #:configured-table-association-analysis-rule
                              #:configured-table-association-analysis-rule-aggregation
                              #:configured-table-association-analysis-rule-custom
                              #:configured-table-association-analysis-rule-list
                              #:configured-table-association-analysis-rule-policy
                              #:configured-table-association-analysis-rule-policy-v1
                              #:configured-table-association-analysis-rule-type
                              #:configured-table-association-analysis-rule-type-list
                              #:configured-table-association-arn
                              #:configured-table-association-identifier
                              #:configured-table-association-resource
                              #:configured-table-association-summary
                              #:configured-table-association-summary-list
                              #:configured-table-identifier
                              #:configured-table-resource
                              #:configured-table-summary
                              #:configured-table-summary-list
                              #:conflict-exception-reason #:consolidated-policy
                              #:consolidated-policy-aggregation
                              #:consolidated-policy-custom
                              #:consolidated-policy-list
                              #:consolidated-policy-v1
                              #:create-analysis-template
                              #:create-analysis-template-input
                              #:create-analysis-template-output
                              #:create-collaboration
                              #:create-collaboration-input
                              #:create-collaboration-output
                              #:create-configured-audience-model-association
                              #:create-configured-table
                              #:create-configured-table-analysis-rule
                              #:create-configured-table-analysis-rule-input
                              #:create-configured-table-analysis-rule-output
                              #:create-configured-table-association
                              #:create-configured-table-association-analysis-rule
                              #:create-configured-table-association-input
                              #:create-configured-table-association-output
                              #:create-configured-table-input
                              #:create-configured-table-output
                              #:create-id-mapping-table
                              #:create-id-namespace-association
                              #:create-membership #:create-membership-input
                              #:create-membership-output
                              #:create-privacy-budget-template
                              #:custom-mlmember-abilities
                              #:custom-mlmember-ability
                              #:data-encryption-metadata
                              #:delete-analysis-template
                              #:delete-analysis-template-input
                              #:delete-analysis-template-output
                              #:delete-collaboration
                              #:delete-collaboration-input
                              #:delete-collaboration-output
                              #:delete-configured-audience-model-association
                              #:delete-configured-table
                              #:delete-configured-table-analysis-rule
                              #:delete-configured-table-analysis-rule-input
                              #:delete-configured-table-analysis-rule-output
                              #:delete-configured-table-association
                              #:delete-configured-table-association-analysis-rule
                              #:delete-configured-table-association-input
                              #:delete-configured-table-association-output
                              #:delete-configured-table-input
                              #:delete-configured-table-output
                              #:delete-id-mapping-table
                              #:delete-id-namespace-association #:delete-member
                              #:delete-member-input #:delete-member-output
                              #:delete-membership #:delete-membership-input
                              #:delete-membership-output
                              #:delete-privacy-budget-template
                              #:differential-privacy-aggregation-expression
                              #:differential-privacy-aggregation-type
                              #:differential-privacy-column
                              #:differential-privacy-column-list
                              #:differential-privacy-configuration
                              #:differential-privacy-parameters
                              #:differential-privacy-preview-aggregation
                              #:differential-privacy-preview-aggregation-list
                              #:differential-privacy-preview-parameters-input
                              #:differential-privacy-privacy-budget
                              #:differential-privacy-privacy-budget-aggregation
                              #:differential-privacy-privacy-budget-aggregation-list
                              #:differential-privacy-privacy-impact
                              #:differential-privacy-sensitivity-parameters
                              #:differential-privacy-sensitivity-parameters-list
                              #:differential-privacy-template-parameters-input
                              #:differential-privacy-template-parameters-output
                              #:differential-privacy-template-update-parameters
                              #:direct-analysis-configuration-details
                              #:display-name #:epsilon
                              #:filterable-member-status
                              #:generic-resource-name #:get-analysis-template
                              #:get-analysis-template-input
                              #:get-analysis-template-output
                              #:get-collaboration
                              #:get-collaboration-analysis-template
                              #:get-collaboration-analysis-template-input
                              #:get-collaboration-analysis-template-output
                              #:get-collaboration-configured-audience-model-association
                              #:get-collaboration-id-namespace-association
                              #:get-collaboration-input
                              #:get-collaboration-output
                              #:get-collaboration-privacy-budget-template
                              #:get-configured-audience-model-association
                              #:get-configured-table
                              #:get-configured-table-analysis-rule
                              #:get-configured-table-analysis-rule-input
                              #:get-configured-table-analysis-rule-output
                              #:get-configured-table-association
                              #:get-configured-table-association-analysis-rule
                              #:get-configured-table-association-input
                              #:get-configured-table-association-output
                              #:get-configured-table-input
                              #:get-configured-table-output
                              #:get-id-mapping-table
                              #:get-id-namespace-association #:get-membership
                              #:get-membership-input #:get-membership-output
                              #:get-privacy-budget-template #:get-protected-job
                              #:get-protected-query #:get-protected-query-input
                              #:get-protected-query-output #:get-schema
                              #:get-schema-analysis-rule
                              #:get-schema-analysis-rule-input
                              #:get-schema-analysis-rule-output
                              #:get-schema-input #:get-schema-output
                              #:glue-database-name #:glue-table-name
                              #:glue-table-reference #:hash #:hash-list
                              #:id-mapping-config #:id-mapping-table
                              #:id-mapping-table-arn
                              #:id-mapping-table-input-reference-arn
                              #:id-mapping-table-input-reference-config
                              #:id-mapping-table-input-reference-properties
                              #:id-mapping-table-input-source
                              #:id-mapping-table-input-source-list
                              #:id-mapping-table-resource
                              #:id-mapping-table-schema-type-properties
                              #:id-mapping-table-summary
                              #:id-mapping-table-summary-list
                              #:id-mapping-workflows-supported
                              #:id-namespace-association
                              #:id-namespace-association-arn
                              #:id-namespace-association-identifier
                              #:id-namespace-association-input-reference-arn
                              #:id-namespace-association-input-reference-config
                              #:id-namespace-association-input-reference-properties
                              #:id-namespace-association-input-reference-properties-summary
                              #:id-namespace-association-resource
                              #:id-namespace-association-summary
                              #:id-namespace-association-summary-list
                              #:id-namespace-type #:job-compute-payment-config
                              #:join-operator #:join-operators-list
                              #:join-required-option #:kmskey-arn #:key-prefix
                              #:list-analysis-templates
                              #:list-analysis-templates-input
                              #:list-analysis-templates-output
                              #:list-collaboration-analysis-templates
                              #:list-collaboration-analysis-templates-input
                              #:list-collaboration-analysis-templates-output
                              #:list-collaboration-configured-audience-model-associations
                              #:list-collaboration-id-namespace-associations
                              #:list-collaboration-privacy-budget-templates
                              #:list-collaboration-privacy-budgets
                              #:list-collaborations #:list-collaborations-input
                              #:list-collaborations-output
                              #:list-configured-audience-model-associations
                              #:list-configured-table-associations
                              #:list-configured-table-associations-input
                              #:list-configured-table-associations-output
                              #:list-configured-tables
                              #:list-configured-tables-input
                              #:list-configured-tables-output
                              #:list-id-mapping-tables
                              #:list-id-namespace-associations #:list-members
                              #:list-members-input #:list-members-output
                              #:list-memberships #:list-memberships-input
                              #:list-memberships-output
                              #:list-privacy-budget-templates
                              #:list-privacy-budgets #:list-protected-jobs
                              #:list-protected-queries
                              #:list-protected-queries-input
                              #:list-protected-queries-output #:list-schemas
                              #:list-schemas-input #:list-schemas-output
                              #:list-tags-for-resource #:mlmember-abilities
                              #:mlpayment-config #:max-results
                              #:member-abilities #:member-ability #:member-list
                              #:member-specification #:member-status
                              #:member-summary #:member-summary-list
                              #:membership #:membership-arn
                              #:membership-identifier
                              #:membership-job-compute-payment-config
                              #:membership-job-log-status
                              #:membership-mlpayment-config
                              #:membership-model-inference-payment-config
                              #:membership-model-training-payment-config
                              #:membership-payment-configuration
                              #:membership-protected-job-output-configuration
                              #:membership-protected-job-result-configuration
                              #:membership-protected-query-output-configuration
                              #:membership-protected-query-result-configuration
                              #:membership-query-compute-payment-config
                              #:membership-query-log-status
                              #:membership-resource #:membership-status
                              #:membership-summary #:membership-summary-list
                              #:model-inference-payment-config
                              #:model-training-payment-config
                              #:pagination-token #:parameter-map
                              #:parameter-name #:parameter-type
                              #:parameter-value #:payment-configuration
                              #:populate-id-mapping-table
                              #:preview-privacy-impact
                              #:preview-privacy-impact-parameters-input
                              #:privacy-budget #:privacy-budget-summary
                              #:privacy-budget-summary-list
                              #:privacy-budget-template
                              #:privacy-budget-template-arn
                              #:privacy-budget-template-auto-refresh
                              #:privacy-budget-template-identifier
                              #:privacy-budget-template-parameters-input
                              #:privacy-budget-template-parameters-output
                              #:privacy-budget-template-resource
                              #:privacy-budget-template-summary
                              #:privacy-budget-template-summary-list
                              #:privacy-budget-template-update-parameters
                              #:privacy-budget-type #:privacy-impact
                              #:protected-job #:protected-job-analysis-type
                              #:protected-job-configuration-details
                              #:protected-job-direct-analysis-configuration-details
                              #:protected-job-error #:protected-job-identifier
                              #:protected-job-member-output-configuration-input
                              #:protected-job-member-output-configuration-output
                              #:protected-job-member-output-list
                              #:protected-job-output
                              #:protected-job-output-configuration-input
                              #:protected-job-output-configuration-output
                              #:protected-job-parameters
                              #:protected-job-receiver-account-ids
                              #:protected-job-receiver-configuration
                              #:protected-job-receiver-configurations
                              #:protected-job-result
                              #:protected-job-result-configuration-input
                              #:protected-job-result-configuration-output
                              #:protected-job-s3output
                              #:protected-job-s3output-configuration-input
                              #:protected-job-s3output-configuration-output
                              #:protected-job-single-member-output
                              #:protected-job-statistics #:protected-job-status
                              #:protected-job-summary
                              #:protected-job-summary-list #:protected-job-type
                              #:protected-query
                              #:protected-query-distribute-output
                              #:protected-query-distribute-output-configuration
                              #:protected-query-distribute-output-configuration-location
                              #:protected-query-distribute-output-configuration-locations
                              #:protected-query-error
                              #:protected-query-identifier
                              #:protected-query-member-output-configuration
                              #:protected-query-member-output-list
                              #:protected-query-output
                              #:protected-query-output-configuration
                              #:protected-query-result
                              #:protected-query-result-configuration
                              #:protected-query-s3output
                              #:protected-query-s3output-configuration
                              #:protected-query-sqlparameters
                              #:protected-query-single-member-output
                              #:protected-query-statistics
                              #:protected-query-status
                              #:protected-query-summary
                              #:protected-query-summary-list
                              #:protected-query-type
                              #:query-compute-payment-config #:query-constraint
                              #:query-constraint-list
                              #:query-constraint-require-overlap #:query-tables
                              #:receiver-account-ids #:receiver-configuration
                              #:receiver-configurations-list #:resource-alias
                              #:resource-description #:resource-type
                              #:result-format #:role-arn #:s3location
                              #:scalar-functions #:scalar-functions-list
                              #:schema #:schema-analysis-rule-list
                              #:schema-analysis-rule-request
                              #:schema-analysis-rule-request-list
                              #:schema-configuration
                              #:schema-configuration-list #:schema-list
                              #:schema-status #:schema-status-detail
                              #:schema-status-detail-list
                              #:schema-status-reason
                              #:schema-status-reason-code
                              #:schema-status-reason-list #:schema-summary
                              #:schema-summary-list #:schema-type
                              #:schema-type-properties #:secrets-manager-arn
                              #:selected-analysis-method
                              #:selected-analysis-methods
                              #:snowflake-account-identifier
                              #:snowflake-database-name #:snowflake-schema-name
                              #:snowflake-table-name
                              #:snowflake-table-reference
                              #:snowflake-table-schema
                              #:snowflake-table-schema-list
                              #:snowflake-table-schema-v1 #:start-protected-job
                              #:start-protected-query
                              #:start-protected-query-input
                              #:start-protected-query-output #:table-alias
                              #:table-alias-list #:table-description
                              #:table-reference #:tag-key #:tag-keys #:tag-map
                              #:tag-resource #:tag-value
                              #:target-protected-job-status
                              #:target-protected-query-status #:uuid
                              #:untag-resource #:update-analysis-template
                              #:update-analysis-template-input
                              #:update-analysis-template-output
                              #:update-collaboration
                              #:update-collaboration-input
                              #:update-collaboration-output
                              #:update-configured-audience-model-association
                              #:update-configured-table
                              #:update-configured-table-analysis-rule
                              #:update-configured-table-analysis-rule-input
                              #:update-configured-table-analysis-rule-output
                              #:update-configured-table-association
                              #:update-configured-table-association-analysis-rule
                              #:update-configured-table-association-input
                              #:update-configured-table-association-output
                              #:update-configured-table-input
                              #:update-configured-table-output
                              #:update-id-mapping-table
                              #:update-id-namespace-association
                              #:update-membership #:update-membership-input
                              #:update-membership-output
                              #:update-privacy-budget-template
                              #:update-protected-job #:update-protected-query
                              #:update-protected-query-input
                              #:update-protected-query-output
                              #:users-noise-per-query
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason
                              #:worker-compute-configuration
                              #:worker-compute-type))
(common-lisp:in-package #:pira/cleanrooms)

(smithy/sdk/service:define-service awsbastion-control-plane-service-lambda
                                   :shape-name
                                   "AWSBastionControlPlaneServiceLambda"
                                   :version "2022-02-17" :title
                                   "AWS Clean Rooms Service" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "CleanRooms")
                                      ("arnNamespace" . "cleanrooms")
                                      ("cloudTrailEventSource"
                                       . "cleanrooms.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "cleanrooms"))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (reason :target-type
                                  access-denied-exception-reason :member-name
                                  "reason"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type access-denied-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum additional-analyses
    common-lisp:nil
  (:allowed "ALLOWED")
  (:required "REQUIRED")
  (:not-allowed "NOT_ALLOWED"))

(smithy/sdk/shapes:define-type additional-analyses-resource-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure aggregate-column common-lisp:nil
                                    ((column-names :target-type
                                      analysis-rule-column-name-list :required
                                      common-lisp:t :member-name "columnNames")
                                     (function :target-type
                                      aggregate-function-name :required
                                      common-lisp:t :member-name "function"))
                                    (:shape-name "AggregateColumn"))

(smithy/sdk/shapes:define-list aggregate-column-list :member aggregate-column)

(smithy/sdk/shapes:define-type aggregate-function-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure aggregation-constraint common-lisp:nil
                                    ((column-name :target-type
                                      analysis-rule-column-name :required
                                      common-lisp:t :member-name "columnName")
                                     (minimum :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "minimum")
                                     (type :target-type aggregation-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "AggregationConstraint"))

(smithy/sdk/shapes:define-list aggregation-constraints :member
                               aggregation-constraint)

(smithy/sdk/shapes:define-type aggregation-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list allowed-additional-analyses :member
                               additional-analyses-resource-arn)

(smithy/sdk/shapes:define-list allowed-analyses-list :member
                               analysis-template-arn-or-query-wildcard)

(smithy/sdk/shapes:define-list allowed-analysis-provider-list :member
                               account-id)

(smithy/sdk/shapes:define-list allowed-column-list :member column-name)

(smithy/sdk/shapes:define-list allowed-result-receivers :member account-id)

(smithy/sdk/shapes:define-enum analysis-format
    common-lisp:nil
  (:sql "SQL")
  (:pyspark-1-0 "PYSPARK_1_0"))

(smithy/sdk/shapes:define-enum analysis-method
    common-lisp:nil
  (:direct-query "DIRECT_QUERY")
  (:direct-job "DIRECT_JOB")
  (:multiple "MULTIPLE"))

(smithy/sdk/shapes:define-structure analysis-parameter common-lisp:nil
                                    ((name :target-type parameter-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (type :target-type parameter-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (default-value :target-type
                                      parameter-value :member-name
                                      "defaultValue"))
                                    (:shape-name "AnalysisParameter"))

(smithy/sdk/shapes:define-list analysis-parameter-list :member
                               analysis-parameter)

(smithy/sdk/shapes:define-structure analysis-rule common-lisp:nil
                                    ((collaboration-id :target-type
                                      collaboration-identifier :required
                                      common-lisp:t :member-name
                                      "collaborationId")
                                     (type :target-type analysis-rule-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (name :target-type table-alias :required
                                      common-lisp:t :member-name "name")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (policy :target-type analysis-rule-policy
                                      :required common-lisp:t :member-name
                                      "policy")
                                     (collaboration-policy :target-type
                                      configured-table-association-analysis-rule-policy
                                      :member-name "collaborationPolicy")
                                     (consolidated-policy :target-type
                                      consolidated-policy :member-name
                                      "consolidatedPolicy"))
                                    (:shape-name "AnalysisRule"))

(smithy/sdk/shapes:define-structure analysis-rule-aggregation common-lisp:nil
                                    ((aggregate-columns :target-type
                                      aggregate-column-list :required
                                      common-lisp:t :member-name
                                      "aggregateColumns")
                                     (join-columns :target-type
                                      analysis-rule-column-list :required
                                      common-lisp:t :member-name "joinColumns")
                                     (join-required :target-type
                                      join-required-option :member-name
                                      "joinRequired")
                                     (allowed-join-operators :target-type
                                      join-operators-list :member-name
                                      "allowedJoinOperators")
                                     (dimension-columns :target-type
                                      analysis-rule-column-list :required
                                      common-lisp:t :member-name
                                      "dimensionColumns")
                                     (scalar-functions :target-type
                                      scalar-functions-list :required
                                      common-lisp:t :member-name
                                      "scalarFunctions")
                                     (output-constraints :target-type
                                      aggregation-constraints :required
                                      common-lisp:t :member-name
                                      "outputConstraints")
                                     (additional-analyses :target-type
                                      additional-analyses :member-name
                                      "additionalAnalyses"))
                                    (:shape-name "AnalysisRuleAggregation"))

(smithy/sdk/shapes:define-list analysis-rule-column-list :member
                               analysis-rule-column-name)

(smithy/sdk/shapes:define-type analysis-rule-column-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list analysis-rule-column-name-list :member
                               analysis-rule-column-name)

(smithy/sdk/shapes:define-structure analysis-rule-custom common-lisp:nil
                                    ((allowed-analyses :target-type
                                      allowed-analyses-list :required
                                      common-lisp:t :member-name
                                      "allowedAnalyses")
                                     (allowed-analysis-providers :target-type
                                      allowed-analysis-provider-list
                                      :member-name "allowedAnalysisProviders")
                                     (additional-analyses :target-type
                                      additional-analyses :member-name
                                      "additionalAnalyses")
                                     (disallowed-output-columns :target-type
                                      analysis-rule-column-list :member-name
                                      "disallowedOutputColumns")
                                     (differential-privacy :target-type
                                      differential-privacy-configuration
                                      :member-name "differentialPrivacy"))
                                    (:shape-name "AnalysisRuleCustom"))

(smithy/sdk/shapes:define-structure analysis-rule-id-mapping-table
                                    common-lisp:nil
                                    ((join-columns :target-type
                                      analysis-rule-column-list :required
                                      common-lisp:t :member-name "joinColumns")
                                     (query-constraints :target-type
                                      query-constraint-list :required
                                      common-lisp:t :member-name
                                      "queryConstraints")
                                     (dimension-columns :target-type
                                      analysis-rule-column-list :member-name
                                      "dimensionColumns"))
                                    (:shape-name "AnalysisRuleIdMappingTable"))

(smithy/sdk/shapes:define-structure analysis-rule-list common-lisp:nil
                                    ((join-columns :target-type
                                      analysis-rule-column-list :required
                                      common-lisp:t :member-name "joinColumns")
                                     (allowed-join-operators :target-type
                                      join-operators-list :member-name
                                      "allowedJoinOperators")
                                     (list-columns :target-type
                                      analysis-rule-column-list :required
                                      common-lisp:t :member-name "listColumns")
                                     (additional-analyses :target-type
                                      additional-analyses :member-name
                                      "additionalAnalyses"))
                                    (:shape-name "AnalysisRuleList"))

(smithy/sdk/shapes:define-union analysis-rule-policy common-lisp:nil
                                ((v1 :target-type analysis-rule-policy-v1
                                  :member-name "v1"))
                                (:shape-name "AnalysisRulePolicy"))

(smithy/sdk/shapes:define-union analysis-rule-policy-v1 common-lisp:nil
                                ((list :target-type analysis-rule-list
                                  :member-name "list")
                                 (aggregation :target-type
                                  analysis-rule-aggregation :member-name
                                  "aggregation")
                                 (custom :target-type analysis-rule-custom
                                  :member-name "custom")
                                 (id-mapping-table :target-type
                                  analysis-rule-id-mapping-table :member-name
                                  "idMappingTable"))
                                (:shape-name "AnalysisRulePolicyV1"))

(smithy/sdk/shapes:define-enum analysis-rule-type
    common-lisp:nil
  (:aggregation "AGGREGATION")
  (:list "LIST")
  (:custom "CUSTOM")
  (:id-mapping-table "ID_MAPPING_TABLE"))

(smithy/sdk/shapes:define-list analysis-rule-type-list :member
                               analysis-rule-type)

(smithy/sdk/shapes:define-structure analysis-schema common-lisp:nil
                                    ((referenced-tables :target-type
                                      query-tables :member-name
                                      "referencedTables"))
                                    (:shape-name "AnalysisSchema"))

(smithy/sdk/shapes:define-union analysis-source common-lisp:nil
                                ((text :target-type analysis-template-text
                                  :member-name "text")
                                 (artifacts :target-type
                                  analysis-template-artifacts :member-name
                                  "artifacts"))
                                (:shape-name "AnalysisSource"))

(smithy/sdk/shapes:define-union analysis-source-metadata common-lisp:nil
                                ((artifacts :target-type
                                  analysis-template-artifact-metadata
                                  :member-name "artifacts"))
                                (:shape-name "AnalysisSourceMetadata"))

(smithy/sdk/shapes:define-structure analysis-template common-lisp:nil
                                    ((id :target-type
                                      analysis-template-identifier :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type analysis-template-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (collaboration-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "collaborationId")
                                     (collaboration-arn :target-type
                                      collaboration-arn :required common-lisp:t
                                      :member-name "collaborationArn")
                                     (membership-id :target-type uuid :required
                                      common-lisp:t :member-name
                                      "membershipId")
                                     (membership-arn :target-type
                                      membership-arn :required common-lisp:t
                                      :member-name "membershipArn")
                                     (description :target-type
                                      resource-description :member-name
                                      "description")
                                     (name :target-type resource-alias
                                      :required common-lisp:t :member-name
                                      "name")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (schema :target-type analysis-schema
                                      :required common-lisp:t :member-name
                                      "schema")
                                     (format :target-type analysis-format
                                      :required common-lisp:t :member-name
                                      "format")
                                     (source :target-type analysis-source
                                      :required common-lisp:t :member-name
                                      "source")
                                     (source-metadata :target-type
                                      analysis-source-metadata :member-name
                                      "sourceMetadata")
                                     (analysis-parameters :target-type
                                      analysis-parameter-list :member-name
                                      "analysisParameters")
                                     (validations :target-type
                                      analysis-template-validation-status-detail-list
                                      :member-name "validations"))
                                    (:shape-name "AnalysisTemplate"))

(smithy/sdk/shapes:define-type analysis-template-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list analysis-template-arn-list :member
                               analysis-template-arn)

(smithy/sdk/shapes:define-type analysis-template-arn-or-query-wildcard
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure analysis-template-artifact common-lisp:nil
                                    ((location :target-type s3location
                                      :required common-lisp:t :member-name
                                      "location"))
                                    (:shape-name "AnalysisTemplateArtifact"))

(smithy/sdk/shapes:define-list analysis-template-artifact-list :member
                               analysis-template-artifact)

(smithy/sdk/shapes:define-structure analysis-template-artifact-metadata
                                    common-lisp:nil
                                    ((entry-point-hash :target-type hash
                                      :required common-lisp:t :member-name
                                      "entryPointHash")
                                     (additional-artifact-hashes :target-type
                                      hash-list :member-name
                                      "additionalArtifactHashes"))
                                    (:shape-name
                                     "AnalysisTemplateArtifactMetadata"))

(smithy/sdk/shapes:define-structure analysis-template-artifacts common-lisp:nil
                                    ((entry-point :target-type
                                      analysis-template-artifact :required
                                      common-lisp:t :member-name "entryPoint")
                                     (additional-artifacts :target-type
                                      analysis-template-artifact-list
                                      :member-name "additionalArtifacts")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn"))
                                    (:shape-name "AnalysisTemplateArtifacts"))

(smithy/sdk/shapes:define-type analysis-template-identifier
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure analysis-template-summary common-lisp:nil
                                    ((arn :target-type analysis-template-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (id :target-type
                                      analysis-template-identifier :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type resource-alias
                                      :required common-lisp:t :member-name
                                      "name")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (membership-arn :target-type
                                      membership-arn :required common-lisp:t
                                      :member-name "membershipArn")
                                     (membership-id :target-type uuid :required
                                      common-lisp:t :member-name
                                      "membershipId")
                                     (collaboration-arn :target-type
                                      collaboration-arn :required common-lisp:t
                                      :member-name "collaborationArn")
                                     (collaboration-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "collaborationId")
                                     (description :target-type
                                      resource-description :member-name
                                      "description"))
                                    (:shape-name "AnalysisTemplateSummary"))

(smithy/sdk/shapes:define-list analysis-template-summary-list :member
                               analysis-template-summary)

(smithy/sdk/shapes:define-type analysis-template-text
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum analysis-template-validation-status
    common-lisp:nil
  (:valid "VALID")
  (:invalid "INVALID")
  (:unable-to-validate "UNABLE_TO_VALIDATE"))

(smithy/sdk/shapes:define-structure analysis-template-validation-status-detail
                                    common-lisp:nil
                                    ((type :target-type
                                      analysis-template-validation-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (status :target-type
                                      analysis-template-validation-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (reasons :target-type
                                      analysis-template-validation-status-reason-list
                                      :member-name "reasons"))
                                    (:shape-name
                                     "AnalysisTemplateValidationStatusDetail"))

(smithy/sdk/shapes:define-list analysis-template-validation-status-detail-list
                               :member
                               analysis-template-validation-status-detail)

(smithy/sdk/shapes:define-structure analysis-template-validation-status-reason
                                    common-lisp:nil
                                    ((message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name
                                     "AnalysisTemplateValidationStatusReason"))

(smithy/sdk/shapes:define-list analysis-template-validation-status-reason-list
                               :member
                               analysis-template-validation-status-reason)

(smithy/sdk/shapes:define-enum analysis-template-validation-type
    common-lisp:nil
  (:differential-privacy "DIFFERENTIAL_PRIVACY"))

(smithy/sdk/shapes:define-enum analysis-type
    common-lisp:nil
  (:direct-analysis "DIRECT_ANALYSIS")
  (:additional-analysis "ADDITIONAL_ANALYSIS"))

(smithy/sdk/shapes:define-enum analytics-engine
    common-lisp:nil
  (:spark "SPARK")
  (:clean-rooms-sql "CLEAN_ROOMS_SQL"))

(smithy/sdk/shapes:define-type athena-database-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type athena-output-location
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type athena-table-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure athena-table-reference common-lisp:nil
                                    ((work-group :target-type athena-work-group
                                      :required common-lisp:t :member-name
                                      "workGroup")
                                     (output-location :target-type
                                      athena-output-location :member-name
                                      "outputLocation")
                                     (database-name :target-type
                                      athena-database-name :required
                                      common-lisp:t :member-name
                                      "databaseName")
                                     (table-name :target-type athena-table-name
                                      :required common-lisp:t :member-name
                                      "tableName"))
                                    (:shape-name "AthenaTableReference"))

(smithy/sdk/shapes:define-type athena-work-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 batch-get-collaboration-analysis-template-error common-lisp:nil
 ((arn :target-type analysis-template-arn :required common-lisp:t :member-name
   "arn")
  (code :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "code")
  (message :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "message"))
 (:shape-name "BatchGetCollaborationAnalysisTemplateError"))

(smithy/sdk/shapes:define-list
 batch-get-collaboration-analysis-template-error-list :member
 batch-get-collaboration-analysis-template-error)

(smithy/sdk/shapes:define-structure
 batch-get-collaboration-analysis-template-input common-lisp:nil
 ((collaboration-identifier :target-type collaboration-identifier :required
   common-lisp:t :member-name "collaborationIdentifier")
  (analysis-template-arns :target-type analysis-template-arn-list :required
   common-lisp:t :member-name "analysisTemplateArns"))
 (:shape-name "BatchGetCollaborationAnalysisTemplateInput"))

(smithy/sdk/shapes:define-structure
 batch-get-collaboration-analysis-template-output common-lisp:nil
 ((collaboration-analysis-templates :target-type
   collaboration-analysis-template-list :required common-lisp:t :member-name
   "collaborationAnalysisTemplates")
  (errors :target-type batch-get-collaboration-analysis-template-error-list
   :required common-lisp:t :member-name "errors"))
 (:shape-name "BatchGetCollaborationAnalysisTemplateOutput"))

(smithy/sdk/shapes:define-structure batch-get-schema-analysis-rule-error
                                    common-lisp:nil
                                    ((name :target-type table-alias :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type analysis-rule-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (code :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "code")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name
                                     "BatchGetSchemaAnalysisRuleError"))

(smithy/sdk/shapes:define-list batch-get-schema-analysis-rule-error-list
                               :member batch-get-schema-analysis-rule-error)

(smithy/sdk/shapes:define-input batch-get-schema-analysis-rule-input
                                common-lisp:nil
                                ((collaboration-identifier :target-type
                                  collaboration-identifier :required
                                  common-lisp:t :member-name
                                  "collaborationIdentifier" :http-label
                                  common-lisp:t)
                                 (schema-analysis-rule-requests :target-type
                                  schema-analysis-rule-request-list :required
                                  common-lisp:t :member-name
                                  "schemaAnalysisRuleRequests"))
                                (:shape-name "BatchGetSchemaAnalysisRuleInput"))

(smithy/sdk/shapes:define-output batch-get-schema-analysis-rule-output
                                 common-lisp:nil
                                 ((analysis-rules :target-type
                                   schema-analysis-rule-list :required
                                   common-lisp:t :member-name "analysisRules")
                                  (errors :target-type
                                   batch-get-schema-analysis-rule-error-list
                                   :required common-lisp:t :member-name
                                   "errors"))
                                 (:shape-name
                                  "BatchGetSchemaAnalysisRuleOutput"))

(smithy/sdk/shapes:define-structure batch-get-schema-error common-lisp:nil
                                    ((name :target-type table-alias :required
                                      common-lisp:t :member-name "name")
                                     (code :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "code")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "BatchGetSchemaError"))

(smithy/sdk/shapes:define-list batch-get-schema-error-list :member
                               batch-get-schema-error)

(smithy/sdk/shapes:define-structure batch-get-schema-input common-lisp:nil
                                    ((collaboration-identifier :target-type
                                      collaboration-identifier :required
                                      common-lisp:t :member-name
                                      "collaborationIdentifier")
                                     (names :target-type table-alias-list
                                      :required common-lisp:t :member-name
                                      "names"))
                                    (:shape-name "BatchGetSchemaInput"))

(smithy/sdk/shapes:define-structure batch-get-schema-output common-lisp:nil
                                    ((schemas :target-type schema-list
                                      :required common-lisp:t :member-name
                                      "schemas")
                                     (errors :target-type
                                      batch-get-schema-error-list :required
                                      common-lisp:t :member-name "errors"))
                                    (:shape-name "BatchGetSchemaOutput"))

(smithy/sdk/shapes:define-structure billed-job-resource-utilization
                                    common-lisp:nil
                                    ((units :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "units"))
                                    (:shape-name
                                     "BilledJobResourceUtilization"))

(smithy/sdk/shapes:define-structure billed-resource-utilization common-lisp:nil
                                    ((units :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "units"))
                                    (:shape-name "BilledResourceUtilization"))

(smithy/sdk/shapes:define-type cleanrooms-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure collaboration common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type collaboration-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (name :target-type collaboration-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (description :target-type
                                      collaboration-description :member-name
                                      "description")
                                     (creator-account-id :target-type
                                      account-id :required common-lisp:t
                                      :member-name "creatorAccountId")
                                     (creator-display-name :target-type
                                      display-name :required common-lisp:t
                                      :member-name "creatorDisplayName")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (member-status :target-type member-status
                                      :required common-lisp:t :member-name
                                      "memberStatus")
                                     (membership-id :target-type uuid
                                      :member-name "membershipId")
                                     (membership-arn :target-type
                                      membership-arn :member-name
                                      "membershipArn")
                                     (data-encryption-metadata :target-type
                                      data-encryption-metadata :member-name
                                      "dataEncryptionMetadata")
                                     (query-log-status :target-type
                                      collaboration-query-log-status :required
                                      common-lisp:t :member-name
                                      "queryLogStatus")
                                     (job-log-status :target-type
                                      collaboration-job-log-status :member-name
                                      "jobLogStatus")
                                     (analytics-engine :target-type
                                      analytics-engine :member-name
                                      "analyticsEngine"))
                                    (:shape-name "Collaboration"))

(smithy/sdk/shapes:define-structure collaboration-analysis-template
                                    common-lisp:nil
                                    ((id :target-type
                                      analysis-template-identifier :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type analysis-template-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (collaboration-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "collaborationId")
                                     (collaboration-arn :target-type
                                      collaboration-arn :required common-lisp:t
                                      :member-name "collaborationArn")
                                     (description :target-type
                                      resource-description :member-name
                                      "description")
                                     (creator-account-id :target-type
                                      account-id :required common-lisp:t
                                      :member-name "creatorAccountId")
                                     (name :target-type resource-alias
                                      :required common-lisp:t :member-name
                                      "name")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (schema :target-type analysis-schema
                                      :required common-lisp:t :member-name
                                      "schema")
                                     (format :target-type analysis-format
                                      :required common-lisp:t :member-name
                                      "format")
                                     (source :target-type analysis-source
                                      :member-name "source")
                                     (source-metadata :target-type
                                      analysis-source-metadata :member-name
                                      "sourceMetadata")
                                     (analysis-parameters :target-type
                                      analysis-parameter-list :member-name
                                      "analysisParameters")
                                     (validations :target-type
                                      analysis-template-validation-status-detail-list
                                      :member-name "validations"))
                                    (:shape-name
                                     "CollaborationAnalysisTemplate"))

(smithy/sdk/shapes:define-list collaboration-analysis-template-list :member
                               collaboration-analysis-template)

(smithy/sdk/shapes:define-structure collaboration-analysis-template-summary
                                    common-lisp:nil
                                    ((arn :target-type analysis-template-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (id :target-type
                                      analysis-template-identifier :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type resource-alias
                                      :required common-lisp:t :member-name
                                      "name")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (collaboration-arn :target-type
                                      collaboration-arn :required common-lisp:t
                                      :member-name "collaborationArn")
                                     (collaboration-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "collaborationId")
                                     (creator-account-id :target-type
                                      account-id :required common-lisp:t
                                      :member-name "creatorAccountId")
                                     (description :target-type
                                      resource-description :member-name
                                      "description"))
                                    (:shape-name
                                     "CollaborationAnalysisTemplateSummary"))

(smithy/sdk/shapes:define-list collaboration-analysis-template-summary-list
                               :member collaboration-analysis-template-summary)

(smithy/sdk/shapes:define-type collaboration-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 collaboration-configured-audience-model-association common-lisp:nil
 ((id :target-type configured-audience-model-association-identifier :required
   common-lisp:t :member-name "id")
  (arn :target-type configured-audience-model-association-arn :required
   common-lisp:t :member-name "arn")
  (collaboration-id :target-type uuid :required common-lisp:t :member-name
   "collaborationId")
  (collaboration-arn :target-type collaboration-arn :required common-lisp:t
   :member-name "collaborationArn")
  (configured-audience-model-arn :target-type configured-audience-model-arn
   :required common-lisp:t :member-name "configuredAudienceModelArn")
  (name :target-type configured-audience-model-association-name :required
   common-lisp:t :member-name "name")
  (description :target-type resource-description :member-name "description")
  (creator-account-id :target-type account-id :required common-lisp:t
   :member-name "creatorAccountId")
  (create-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "createTime")
  (update-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "updateTime"))
 (:shape-name "CollaborationConfiguredAudienceModelAssociation"))

(smithy/sdk/shapes:define-structure
 collaboration-configured-audience-model-association-summary common-lisp:nil
 ((arn :target-type configured-audience-model-association-arn :required
   common-lisp:t :member-name "arn")
  (create-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "createTime")
  (id :target-type configured-audience-model-association-identifier :required
   common-lisp:t :member-name "id")
  (name :target-type configured-audience-model-association-name :required
   common-lisp:t :member-name "name")
  (update-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "updateTime")
  (collaboration-arn :target-type collaboration-arn :required common-lisp:t
   :member-name "collaborationArn")
  (collaboration-id :target-type uuid :required common-lisp:t :member-name
   "collaborationId")
  (creator-account-id :target-type account-id :required common-lisp:t
   :member-name "creatorAccountId")
  (description :target-type resource-description :member-name "description"))
 (:shape-name "CollaborationConfiguredAudienceModelAssociationSummary"))

(smithy/sdk/shapes:define-list
 collaboration-configured-audience-model-association-summary-list :member
 collaboration-configured-audience-model-association-summary)

(smithy/sdk/shapes:define-type collaboration-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure collaboration-id-namespace-association
                                    common-lisp:nil
                                    ((id :target-type
                                      id-namespace-association-identifier
                                      :required common-lisp:t :member-name
                                      "id")
                                     (arn :target-type
                                      id-namespace-association-arn :required
                                      common-lisp:t :member-name "arn")
                                     (collaboration-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "collaborationId")
                                     (collaboration-arn :target-type
                                      collaboration-arn :required common-lisp:t
                                      :member-name "collaborationArn")
                                     (name :target-type generic-resource-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (description :target-type
                                      resource-description :member-name
                                      "description")
                                     (creator-account-id :target-type
                                      account-id :required common-lisp:t
                                      :member-name "creatorAccountId")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (input-reference-config :target-type
                                      id-namespace-association-input-reference-config
                                      :required common-lisp:t :member-name
                                      "inputReferenceConfig")
                                     (input-reference-properties :target-type
                                      id-namespace-association-input-reference-properties
                                      :required common-lisp:t :member-name
                                      "inputReferenceProperties")
                                     (id-mapping-config :target-type
                                      id-mapping-config :member-name
                                      "idMappingConfig"))
                                    (:shape-name
                                     "CollaborationIdNamespaceAssociation"))

(smithy/sdk/shapes:define-structure
 collaboration-id-namespace-association-summary common-lisp:nil
 ((arn :target-type id-namespace-association-arn :required common-lisp:t
   :member-name "arn")
  (create-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "createTime")
  (id :target-type id-namespace-association-identifier :required common-lisp:t
   :member-name "id")
  (update-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "updateTime")
  (collaboration-arn :target-type collaboration-arn :required common-lisp:t
   :member-name "collaborationArn")
  (collaboration-id :target-type uuid :required common-lisp:t :member-name
   "collaborationId")
  (creator-account-id :target-type account-id :required common-lisp:t
   :member-name "creatorAccountId")
  (input-reference-config :target-type
   id-namespace-association-input-reference-config :required common-lisp:t
   :member-name "inputReferenceConfig")
  (name :target-type generic-resource-name :required common-lisp:t :member-name
   "name")
  (description :target-type resource-description :member-name "description")
  (input-reference-properties :target-type
   id-namespace-association-input-reference-properties-summary :required
   common-lisp:t :member-name "inputReferenceProperties"))
 (:shape-name "CollaborationIdNamespaceAssociationSummary"))

(smithy/sdk/shapes:define-list
 collaboration-id-namespace-association-summary-list :member
 collaboration-id-namespace-association-summary)

(smithy/sdk/shapes:define-type collaboration-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum collaboration-job-log-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type collaboration-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure collaboration-privacy-budget-summary
                                    common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (privacy-budget-template-id :target-type
                                      privacy-budget-template-identifier
                                      :required common-lisp:t :member-name
                                      "privacyBudgetTemplateId")
                                     (privacy-budget-template-arn :target-type
                                      privacy-budget-template-arn :required
                                      common-lisp:t :member-name
                                      "privacyBudgetTemplateArn")
                                     (collaboration-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "collaborationId")
                                     (collaboration-arn :target-type
                                      collaboration-arn :required common-lisp:t
                                      :member-name "collaborationArn")
                                     (creator-account-id :target-type
                                      account-id :required common-lisp:t
                                      :member-name "creatorAccountId")
                                     (type :target-type privacy-budget-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (budget :target-type privacy-budget
                                      :required common-lisp:t :member-name
                                      "budget"))
                                    (:shape-name
                                     "CollaborationPrivacyBudgetSummary"))

(smithy/sdk/shapes:define-list collaboration-privacy-budget-summary-list
                               :member collaboration-privacy-budget-summary)

(smithy/sdk/shapes:define-structure collaboration-privacy-budget-template
                                    common-lisp:nil
                                    ((id :target-type
                                      privacy-budget-template-identifier
                                      :required common-lisp:t :member-name
                                      "id")
                                     (arn :target-type
                                      privacy-budget-template-arn :required
                                      common-lisp:t :member-name "arn")
                                     (collaboration-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "collaborationId")
                                     (collaboration-arn :target-type
                                      collaboration-arn :required common-lisp:t
                                      :member-name "collaborationArn")
                                     (creator-account-id :target-type
                                      account-id :required common-lisp:t
                                      :member-name "creatorAccountId")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (privacy-budget-type :target-type
                                      privacy-budget-type :required
                                      common-lisp:t :member-name
                                      "privacyBudgetType")
                                     (auto-refresh :target-type
                                      privacy-budget-template-auto-refresh
                                      :required common-lisp:t :member-name
                                      "autoRefresh")
                                     (parameters :target-type
                                      privacy-budget-template-parameters-output
                                      :required common-lisp:t :member-name
                                      "parameters"))
                                    (:shape-name
                                     "CollaborationPrivacyBudgetTemplate"))

(smithy/sdk/shapes:define-structure
 collaboration-privacy-budget-template-summary common-lisp:nil
 ((id :target-type privacy-budget-template-identifier :required common-lisp:t
   :member-name "id")
  (arn :target-type privacy-budget-template-arn :required common-lisp:t
   :member-name "arn")
  (collaboration-id :target-type uuid :required common-lisp:t :member-name
   "collaborationId")
  (collaboration-arn :target-type collaboration-arn :required common-lisp:t
   :member-name "collaborationArn")
  (creator-account-id :target-type account-id :required common-lisp:t
   :member-name "creatorAccountId")
  (privacy-budget-type :target-type privacy-budget-type :required common-lisp:t
   :member-name "privacyBudgetType")
  (create-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "createTime")
  (update-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "updateTime"))
 (:shape-name "CollaborationPrivacyBudgetTemplateSummary"))

(smithy/sdk/shapes:define-list
 collaboration-privacy-budget-template-summary-list :member
 collaboration-privacy-budget-template-summary)

(smithy/sdk/shapes:define-enum collaboration-query-log-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

common-lisp:nil

(smithy/sdk/shapes:define-structure collaboration-summary common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type collaboration-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (name :target-type collaboration-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (creator-account-id :target-type
                                      account-id :required common-lisp:t
                                      :member-name "creatorAccountId")
                                     (creator-display-name :target-type
                                      display-name :required common-lisp:t
                                      :member-name "creatorDisplayName")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (member-status :target-type member-status
                                      :required common-lisp:t :member-name
                                      "memberStatus")
                                     (membership-id :target-type uuid
                                      :member-name "membershipId")
                                     (membership-arn :target-type
                                      membership-arn :member-name
                                      "membershipArn")
                                     (analytics-engine :target-type
                                      analytics-engine :member-name
                                      "analyticsEngine"))
                                    (:shape-name "CollaborationSummary"))

(smithy/sdk/shapes:define-list collaboration-summary-list :member
                               collaboration-summary)

(smithy/sdk/shapes:define-structure column common-lisp:nil
                                    ((name :target-type column-name :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type column-type-string
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "Column"))

(smithy/sdk/shapes:define-list column-list :member column)

(smithy/sdk/shapes:define-type column-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type column-type-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union compute-configuration common-lisp:nil
                                ((worker :target-type
                                  worker-compute-configuration :member-name
                                  "worker"))
                                (:shape-name "ComputeConfiguration"))

(smithy/sdk/shapes:define-union configuration-details common-lisp:nil
                                ((direct-analysis-configuration-details
                                  :target-type
                                  direct-analysis-configuration-details
                                  :member-name
                                  "directAnalysisConfigurationDetails"))
                                (:shape-name "ConfigurationDetails"))

(smithy/sdk/shapes:define-type configured-audience-model-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure configured-audience-model-association
                                    common-lisp:nil
                                    ((id :target-type
                                      configured-audience-model-association-identifier
                                      :required common-lisp:t :member-name
                                      "id")
                                     (arn :target-type
                                      configured-audience-model-association-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (configured-audience-model-arn
                                      :target-type
                                      configured-audience-model-arn :required
                                      common-lisp:t :member-name
                                      "configuredAudienceModelArn")
                                     (membership-id :target-type uuid :required
                                      common-lisp:t :member-name
                                      "membershipId")
                                     (membership-arn :target-type
                                      membership-arn :required common-lisp:t
                                      :member-name "membershipArn")
                                     (collaboration-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "collaborationId")
                                     (collaboration-arn :target-type
                                      collaboration-arn :required common-lisp:t
                                      :member-name "collaborationArn")
                                     (name :target-type
                                      configured-audience-model-association-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (manage-resource-policies :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "manageResourcePolicies")
                                     (description :target-type
                                      resource-description :member-name
                                      "description")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime"))
                                    (:shape-name
                                     "ConfiguredAudienceModelAssociation"))

(smithy/sdk/shapes:define-type configured-audience-model-association-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type configured-audience-model-association-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type configured-audience-model-association-name
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure
 configured-audience-model-association-summary common-lisp:nil
 ((membership-id :target-type membership-identifier :required common-lisp:t
   :member-name "membershipId")
  (membership-arn :target-type membership-arn :required common-lisp:t
   :member-name "membershipArn")
  (collaboration-arn :target-type collaboration-arn :required common-lisp:t
   :member-name "collaborationArn")
  (collaboration-id :target-type uuid :required common-lisp:t :member-name
   "collaborationId")
  (create-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "createTime")
  (update-time :target-type smithy/sdk/smithy-types:timestamp :required
   common-lisp:t :member-name "updateTime")
  (id :target-type uuid :required common-lisp:t :member-name "id")
  (arn :target-type configured-audience-model-association-arn :required
   common-lisp:t :member-name "arn")
  (name :target-type configured-audience-model-association-name :required
   common-lisp:t :member-name "name")
  (configured-audience-model-arn :target-type configured-audience-model-arn
   :required common-lisp:t :member-name "configuredAudienceModelArn")
  (description :target-type resource-description :member-name "description"))
 (:shape-name "ConfiguredAudienceModelAssociationSummary"))

(smithy/sdk/shapes:define-list
 configured-audience-model-association-summary-list :member
 configured-audience-model-association-summary)

(smithy/sdk/shapes:define-structure configured-table common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type configured-table-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (name :target-type display-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      table-description :member-name
                                      "description")
                                     (table-reference :target-type
                                      table-reference :required common-lisp:t
                                      :member-name "tableReference")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (analysis-rule-types :target-type
                                      configured-table-analysis-rule-type-list
                                      :required common-lisp:t :member-name
                                      "analysisRuleTypes")
                                     (analysis-method :target-type
                                      analysis-method :required common-lisp:t
                                      :member-name "analysisMethod")
                                     (allowed-columns :target-type
                                      allowed-column-list :required
                                      common-lisp:t :member-name
                                      "allowedColumns")
                                     (selected-analysis-methods :target-type
                                      selected-analysis-methods :member-name
                                      "selectedAnalysisMethods"))
                                    (:shape-name "ConfiguredTable"))

(smithy/sdk/shapes:define-structure configured-table-analysis-rule
                                    common-lisp:nil
                                    ((configured-table-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "configuredTableId")
                                     (configured-table-arn :target-type
                                      configured-table-arn :required
                                      common-lisp:t :member-name
                                      "configuredTableArn")
                                     (policy :target-type
                                      configured-table-analysis-rule-policy
                                      :required common-lisp:t :member-name
                                      "policy")
                                     (type :target-type
                                      configured-table-analysis-rule-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime"))
                                    (:shape-name "ConfiguredTableAnalysisRule"))

(smithy/sdk/shapes:define-union configured-table-analysis-rule-policy
                                common-lisp:nil
                                ((v1 :target-type
                                  configured-table-analysis-rule-policy-v1
                                  :member-name "v1"))
                                (:shape-name
                                 "ConfiguredTableAnalysisRulePolicy"))

(smithy/sdk/shapes:define-union configured-table-analysis-rule-policy-v1
                                common-lisp:nil
                                ((list :target-type analysis-rule-list
                                  :member-name "list")
                                 (aggregation :target-type
                                  analysis-rule-aggregation :member-name
                                  "aggregation")
                                 (custom :target-type analysis-rule-custom
                                  :member-name "custom"))
                                (:shape-name
                                 "ConfiguredTableAnalysisRulePolicyV1"))

(smithy/sdk/shapes:define-enum configured-table-analysis-rule-type
    common-lisp:nil
  (:aggregation "AGGREGATION")
  (:list "LIST")
  (:custom "CUSTOM"))

(smithy/sdk/shapes:define-list configured-table-analysis-rule-type-list :member
                               configured-table-analysis-rule-type)

(smithy/sdk/shapes:define-type configured-table-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure configured-table-association
                                    common-lisp:nil
                                    ((arn :target-type
                                      configured-table-association-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (configured-table-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "configuredTableId")
                                     (configured-table-arn :target-type
                                      configured-table-arn :required
                                      common-lisp:t :member-name
                                      "configuredTableArn")
                                     (membership-id :target-type uuid :required
                                      common-lisp:t :member-name
                                      "membershipId")
                                     (membership-arn :target-type
                                      membership-arn :required common-lisp:t
                                      :member-name "membershipArn")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (name :target-type table-alias :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      table-description :member-name
                                      "description")
                                     (analysis-rule-types :target-type
                                      configured-table-association-analysis-rule-type-list
                                      :member-name "analysisRuleTypes")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime"))
                                    (:shape-name "ConfiguredTableAssociation"))

(smithy/sdk/shapes:define-structure configured-table-association-analysis-rule
                                    common-lisp:nil
                                    ((membership-identifier :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipIdentifier")
                                     (configured-table-association-id
                                      :target-type
                                      configured-table-association-identifier
                                      :required common-lisp:t :member-name
                                      "configuredTableAssociationId")
                                     (configured-table-association-arn
                                      :target-type
                                      configured-table-association-arn
                                      :required common-lisp:t :member-name
                                      "configuredTableAssociationArn")
                                     (policy :target-type
                                      configured-table-association-analysis-rule-policy
                                      :required common-lisp:t :member-name
                                      "policy")
                                     (type :target-type
                                      configured-table-association-analysis-rule-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime"))
                                    (:shape-name
                                     "ConfiguredTableAssociationAnalysisRule"))

(smithy/sdk/shapes:define-structure
 configured-table-association-analysis-rule-aggregation common-lisp:nil
 ((allowed-result-receivers :target-type allowed-result-receivers :member-name
   "allowedResultReceivers")
  (allowed-additional-analyses :target-type allowed-additional-analyses
   :member-name "allowedAdditionalAnalyses"))
 (:shape-name "ConfiguredTableAssociationAnalysisRuleAggregation"))

(smithy/sdk/shapes:define-structure
 configured-table-association-analysis-rule-custom common-lisp:nil
 ((allowed-result-receivers :target-type allowed-result-receivers :member-name
   "allowedResultReceivers")
  (allowed-additional-analyses :target-type allowed-additional-analyses
   :member-name "allowedAdditionalAnalyses"))
 (:shape-name "ConfiguredTableAssociationAnalysisRuleCustom"))

(smithy/sdk/shapes:define-structure
 configured-table-association-analysis-rule-list common-lisp:nil
 ((allowed-result-receivers :target-type allowed-result-receivers :member-name
   "allowedResultReceivers")
  (allowed-additional-analyses :target-type allowed-additional-analyses
   :member-name "allowedAdditionalAnalyses"))
 (:shape-name "ConfiguredTableAssociationAnalysisRuleList"))

(smithy/sdk/shapes:define-union
 configured-table-association-analysis-rule-policy common-lisp:nil
 ((v1 :target-type configured-table-association-analysis-rule-policy-v1
   :member-name "v1"))
 (:shape-name "ConfiguredTableAssociationAnalysisRulePolicy"))

(smithy/sdk/shapes:define-union
 configured-table-association-analysis-rule-policy-v1 common-lisp:nil
 ((list :target-type configured-table-association-analysis-rule-list
   :member-name "list")
  (aggregation :target-type
   configured-table-association-analysis-rule-aggregation :member-name
   "aggregation")
  (custom :target-type configured-table-association-analysis-rule-custom
   :member-name "custom"))
 (:shape-name "ConfiguredTableAssociationAnalysisRulePolicyV1"))

(smithy/sdk/shapes:define-enum configured-table-association-analysis-rule-type
    common-lisp:nil
  (:aggregation "AGGREGATION")
  (:list "LIST")
  (:custom "CUSTOM"))

(smithy/sdk/shapes:define-list
 configured-table-association-analysis-rule-type-list :member
 configured-table-association-analysis-rule-type)

(smithy/sdk/shapes:define-type configured-table-association-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type configured-table-association-identifier
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure configured-table-association-summary
                                    common-lisp:nil
                                    ((configured-table-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "configuredTableId")
                                     (membership-id :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipId")
                                     (membership-arn :target-type
                                      membership-arn :required common-lisp:t
                                      :member-name "membershipArn")
                                     (name :target-type table-alias :required
                                      common-lisp:t :member-name "name")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type
                                      configured-table-association-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (analysis-rule-types :target-type
                                      configured-table-association-analysis-rule-type-list
                                      :member-name "analysisRuleTypes"))
                                    (:shape-name
                                     "ConfiguredTableAssociationSummary"))

(smithy/sdk/shapes:define-list configured-table-association-summary-list
                               :member configured-table-association-summary)

(smithy/sdk/shapes:define-type configured-table-identifier
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-structure configured-table-summary common-lisp:nil
                                    ((id :target-type
                                      configured-table-identifier :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type configured-table-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (name :target-type display-name :required
                                      common-lisp:t :member-name "name")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (analysis-rule-types :target-type
                                      configured-table-analysis-rule-type-list
                                      :required common-lisp:t :member-name
                                      "analysisRuleTypes")
                                     (analysis-method :target-type
                                      analysis-method :required common-lisp:t
                                      :member-name "analysisMethod")
                                     (selected-analysis-methods :target-type
                                      selected-analysis-methods :member-name
                                      "selectedAnalysisMethods"))
                                    (:shape-name "ConfiguredTableSummary"))

(smithy/sdk/shapes:define-list configured-table-summary-list :member
                               configured-table-summary)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "resourceId")
                                 (resource-type :target-type resource-type
                                  :member-name "resourceType")
                                 (reason :target-type conflict-exception-reason
                                  :member-name "reason"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type conflict-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union consolidated-policy common-lisp:nil
                                ((v1 :target-type consolidated-policy-v1
                                  :member-name "v1"))
                                (:shape-name "ConsolidatedPolicy"))

(smithy/sdk/shapes:define-structure consolidated-policy-aggregation
                                    common-lisp:nil
                                    ((aggregate-columns :target-type
                                      aggregate-column-list :required
                                      common-lisp:t :member-name
                                      "aggregateColumns")
                                     (join-columns :target-type
                                      analysis-rule-column-list :required
                                      common-lisp:t :member-name "joinColumns")
                                     (join-required :target-type
                                      join-required-option :member-name
                                      "joinRequired")
                                     (allowed-join-operators :target-type
                                      join-operators-list :member-name
                                      "allowedJoinOperators")
                                     (dimension-columns :target-type
                                      analysis-rule-column-list :required
                                      common-lisp:t :member-name
                                      "dimensionColumns")
                                     (scalar-functions :target-type
                                      scalar-functions-list :required
                                      common-lisp:t :member-name
                                      "scalarFunctions")
                                     (output-constraints :target-type
                                      aggregation-constraints :required
                                      common-lisp:t :member-name
                                      "outputConstraints")
                                     (additional-analyses :target-type
                                      additional-analyses :member-name
                                      "additionalAnalyses")
                                     (allowed-result-receivers :target-type
                                      allowed-result-receivers :member-name
                                      "allowedResultReceivers")
                                     (allowed-additional-analyses :target-type
                                      allowed-additional-analyses :member-name
                                      "allowedAdditionalAnalyses"))
                                    (:shape-name
                                     "ConsolidatedPolicyAggregation"))

(smithy/sdk/shapes:define-structure consolidated-policy-custom common-lisp:nil
                                    ((allowed-analyses :target-type
                                      allowed-analyses-list :required
                                      common-lisp:t :member-name
                                      "allowedAnalyses")
                                     (allowed-analysis-providers :target-type
                                      allowed-analysis-provider-list
                                      :member-name "allowedAnalysisProviders")
                                     (additional-analyses :target-type
                                      additional-analyses :member-name
                                      "additionalAnalyses")
                                     (disallowed-output-columns :target-type
                                      analysis-rule-column-list :member-name
                                      "disallowedOutputColumns")
                                     (differential-privacy :target-type
                                      differential-privacy-configuration
                                      :member-name "differentialPrivacy")
                                     (allowed-result-receivers :target-type
                                      allowed-result-receivers :member-name
                                      "allowedResultReceivers")
                                     (allowed-additional-analyses :target-type
                                      allowed-additional-analyses :member-name
                                      "allowedAdditionalAnalyses"))
                                    (:shape-name "ConsolidatedPolicyCustom"))

(smithy/sdk/shapes:define-structure consolidated-policy-list common-lisp:nil
                                    ((join-columns :target-type
                                      analysis-rule-column-list :required
                                      common-lisp:t :member-name "joinColumns")
                                     (allowed-join-operators :target-type
                                      join-operators-list :member-name
                                      "allowedJoinOperators")
                                     (list-columns :target-type
                                      analysis-rule-column-list :required
                                      common-lisp:t :member-name "listColumns")
                                     (additional-analyses :target-type
                                      additional-analyses :member-name
                                      "additionalAnalyses")
                                     (allowed-result-receivers :target-type
                                      allowed-result-receivers :member-name
                                      "allowedResultReceivers")
                                     (allowed-additional-analyses :target-type
                                      allowed-additional-analyses :member-name
                                      "allowedAdditionalAnalyses"))
                                    (:shape-name "ConsolidatedPolicyList"))

(smithy/sdk/shapes:define-union consolidated-policy-v1 common-lisp:nil
                                ((list :target-type consolidated-policy-list
                                  :member-name "list")
                                 (aggregation :target-type
                                  consolidated-policy-aggregation :member-name
                                  "aggregation")
                                 (custom :target-type
                                  consolidated-policy-custom :member-name
                                  "custom"))
                                (:shape-name "ConsolidatedPolicyV1"))

(smithy/sdk/shapes:define-structure create-analysis-template-input
                                    common-lisp:nil
                                    ((description :target-type
                                      resource-description :member-name
                                      "description")
                                     (membership-identifier :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipIdentifier")
                                     (name :target-type table-alias :required
                                      common-lisp:t :member-name "name")
                                     (format :target-type analysis-format
                                      :required common-lisp:t :member-name
                                      "format")
                                     (source :target-type analysis-source
                                      :required common-lisp:t :member-name
                                      "source")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (analysis-parameters :target-type
                                      analysis-parameter-list :member-name
                                      "analysisParameters")
                                     (schema :target-type analysis-schema
                                      :member-name "schema"))
                                    (:shape-name "CreateAnalysisTemplateInput"))

(smithy/sdk/shapes:define-structure create-analysis-template-output
                                    common-lisp:nil
                                    ((analysis-template :target-type
                                      analysis-template :required common-lisp:t
                                      :member-name "analysisTemplate"))
                                    (:shape-name
                                     "CreateAnalysisTemplateOutput"))

(smithy/sdk/shapes:define-structure create-collaboration-input common-lisp:nil
                                    ((members :target-type member-list
                                      :required common-lisp:t :member-name
                                      "members")
                                     (name :target-type collaboration-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (description :target-type
                                      collaboration-description :required
                                      common-lisp:t :member-name "description")
                                     (creator-member-abilities :target-type
                                      member-abilities :required common-lisp:t
                                      :member-name "creatorMemberAbilities")
                                     (creator-mlmember-abilities :target-type
                                      mlmember-abilities :member-name
                                      "creatorMLMemberAbilities")
                                     (creator-display-name :target-type
                                      display-name :required common-lisp:t
                                      :member-name "creatorDisplayName")
                                     (data-encryption-metadata :target-type
                                      data-encryption-metadata :member-name
                                      "dataEncryptionMetadata")
                                     (query-log-status :target-type
                                      collaboration-query-log-status :required
                                      common-lisp:t :member-name
                                      "queryLogStatus")
                                     (job-log-status :target-type
                                      collaboration-job-log-status :member-name
                                      "jobLogStatus")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (creator-payment-configuration
                                      :target-type payment-configuration
                                      :member-name
                                      "creatorPaymentConfiguration")
                                     (analytics-engine :target-type
                                      analytics-engine :member-name
                                      "analyticsEngine"))
                                    (:shape-name "CreateCollaborationInput"))

(smithy/sdk/shapes:define-structure create-collaboration-output common-lisp:nil
                                    ((collaboration :target-type collaboration
                                      :required common-lisp:t :member-name
                                      "collaboration"))
                                    (:shape-name "CreateCollaborationOutput"))

(smithy/sdk/shapes:define-input
 create-configured-audience-model-association-input common-lisp:nil
 ((membership-identifier :target-type membership-identifier :required
   common-lisp:t :member-name "membershipIdentifier" :http-label common-lisp:t)
  (configured-audience-model-arn :target-type configured-audience-model-arn
   :required common-lisp:t :member-name "configuredAudienceModelArn")
  (configured-audience-model-association-name :target-type
   configured-audience-model-association-name :required common-lisp:t
   :member-name "configuredAudienceModelAssociationName")
  (manage-resource-policies :target-type smithy/sdk/smithy-types:boolean
   :required common-lisp:t :member-name "manageResourcePolicies")
  (tags :target-type tag-map :member-name "tags")
  (description :target-type resource-description :member-name "description"))
 (:shape-name "CreateConfiguredAudienceModelAssociationInput"))

(smithy/sdk/shapes:define-output
 create-configured-audience-model-association-output common-lisp:nil
 ((configured-audience-model-association :target-type
   configured-audience-model-association :required common-lisp:t :member-name
   "configuredAudienceModelAssociation"))
 (:shape-name "CreateConfiguredAudienceModelAssociationOutput"))

(smithy/sdk/shapes:define-structure create-configured-table-analysis-rule-input
                                    common-lisp:nil
                                    ((configured-table-identifier :target-type
                                      configured-table-identifier :required
                                      common-lisp:t :member-name
                                      "configuredTableIdentifier")
                                     (analysis-rule-type :target-type
                                      configured-table-analysis-rule-type
                                      :required common-lisp:t :member-name
                                      "analysisRuleType")
                                     (analysis-rule-policy :target-type
                                      configured-table-analysis-rule-policy
                                      :required common-lisp:t :member-name
                                      "analysisRulePolicy"))
                                    (:shape-name
                                     "CreateConfiguredTableAnalysisRuleInput"))

(smithy/sdk/shapes:define-structure
 create-configured-table-analysis-rule-output common-lisp:nil
 ((analysis-rule :target-type configured-table-analysis-rule :required
   common-lisp:t :member-name "analysisRule"))
 (:shape-name "CreateConfiguredTableAnalysisRuleOutput"))

(smithy/sdk/shapes:define-input
 create-configured-table-association-analysis-rule-input common-lisp:nil
 ((membership-identifier :target-type membership-identifier :required
   common-lisp:t :member-name "membershipIdentifier" :http-label common-lisp:t)
  (configured-table-association-identifier :target-type
   configured-table-association-identifier :required common-lisp:t :member-name
   "configuredTableAssociationIdentifier" :http-label common-lisp:t)
  (analysis-rule-type :target-type
   configured-table-association-analysis-rule-type :required common-lisp:t
   :member-name "analysisRuleType")
  (analysis-rule-policy :target-type
   configured-table-association-analysis-rule-policy :required common-lisp:t
   :member-name "analysisRulePolicy"))
 (:shape-name "CreateConfiguredTableAssociationAnalysisRuleInput"))

(smithy/sdk/shapes:define-output
 create-configured-table-association-analysis-rule-output common-lisp:nil
 ((analysis-rule :target-type configured-table-association-analysis-rule
   :required common-lisp:t :member-name "analysisRule"))
 (:shape-name "CreateConfiguredTableAssociationAnalysisRuleOutput"))

(smithy/sdk/shapes:define-structure create-configured-table-association-input
                                    common-lisp:nil
                                    ((name :target-type table-alias :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      table-description :member-name
                                      "description")
                                     (membership-identifier :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipIdentifier")
                                     (configured-table-identifier :target-type
                                      configured-table-identifier :required
                                      common-lisp:t :member-name
                                      "configuredTableIdentifier")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name
                                     "CreateConfiguredTableAssociationInput"))

(smithy/sdk/shapes:define-structure create-configured-table-association-output
                                    common-lisp:nil
                                    ((configured-table-association :target-type
                                      configured-table-association :required
                                      common-lisp:t :member-name
                                      "configuredTableAssociation"))
                                    (:shape-name
                                     "CreateConfiguredTableAssociationOutput"))

(smithy/sdk/shapes:define-structure create-configured-table-input
                                    common-lisp:nil
                                    ((name :target-type display-name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      table-description :member-name
                                      "description")
                                     (table-reference :target-type
                                      table-reference :required common-lisp:t
                                      :member-name "tableReference")
                                     (allowed-columns :target-type
                                      allowed-column-list :required
                                      common-lisp:t :member-name
                                      "allowedColumns")
                                     (analysis-method :target-type
                                      analysis-method :required common-lisp:t
                                      :member-name "analysisMethod")
                                     (selected-analysis-methods :target-type
                                      selected-analysis-methods :member-name
                                      "selectedAnalysisMethods")
                                     (tags :target-type tag-map :member-name
                                      "tags"))
                                    (:shape-name "CreateConfiguredTableInput"))

(smithy/sdk/shapes:define-structure create-configured-table-output
                                    common-lisp:nil
                                    ((configured-table :target-type
                                      configured-table :required common-lisp:t
                                      :member-name "configuredTable"))
                                    (:shape-name "CreateConfiguredTableOutput"))

(smithy/sdk/shapes:define-input create-id-mapping-table-input common-lisp:nil
                                ((membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t)
                                 (name :target-type resource-alias :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (input-reference-config :target-type
                                  id-mapping-table-input-reference-config
                                  :required common-lisp:t :member-name
                                  "inputReferenceConfig")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (kms-key-arn :target-type kmskey-arn
                                  :member-name "kmsKeyArn"))
                                (:shape-name "CreateIdMappingTableInput"))

(smithy/sdk/shapes:define-output create-id-mapping-table-output common-lisp:nil
                                 ((id-mapping-table :target-type
                                   id-mapping-table :required common-lisp:t
                                   :member-name "idMappingTable"))
                                 (:shape-name "CreateIdMappingTableOutput"))

(smithy/sdk/shapes:define-input create-id-namespace-association-input
                                common-lisp:nil
                                ((membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t)
                                 (input-reference-config :target-type
                                  id-namespace-association-input-reference-config
                                  :required common-lisp:t :member-name
                                  "inputReferenceConfig")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (name :target-type generic-resource-name
                                  :required common-lisp:t :member-name "name")
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (id-mapping-config :target-type
                                  id-mapping-config :member-name
                                  "idMappingConfig"))
                                (:shape-name
                                 "CreateIdNamespaceAssociationInput"))

(smithy/sdk/shapes:define-output create-id-namespace-association-output
                                 common-lisp:nil
                                 ((id-namespace-association :target-type
                                   id-namespace-association :required
                                   common-lisp:t :member-name
                                   "idNamespaceAssociation"))
                                 (:shape-name
                                  "CreateIdNamespaceAssociationOutput"))

(smithy/sdk/shapes:define-structure create-membership-input common-lisp:nil
                                    ((collaboration-identifier :target-type
                                      collaboration-identifier :required
                                      common-lisp:t :member-name
                                      "collaborationIdentifier")
                                     (query-log-status :target-type
                                      membership-query-log-status :required
                                      common-lisp:t :member-name
                                      "queryLogStatus")
                                     (job-log-status :target-type
                                      membership-job-log-status :member-name
                                      "jobLogStatus")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (default-result-configuration :target-type
                                      membership-protected-query-result-configuration
                                      :member-name
                                      "defaultResultConfiguration")
                                     (default-job-result-configuration
                                      :target-type
                                      membership-protected-job-result-configuration
                                      :member-name
                                      "defaultJobResultConfiguration")
                                     (payment-configuration :target-type
                                      membership-payment-configuration
                                      :member-name "paymentConfiguration"))
                                    (:shape-name "CreateMembershipInput"))

(smithy/sdk/shapes:define-structure create-membership-output common-lisp:nil
                                    ((membership :target-type membership
                                      :required common-lisp:t :member-name
                                      "membership"))
                                    (:shape-name "CreateMembershipOutput"))

(smithy/sdk/shapes:define-input create-privacy-budget-template-input
                                common-lisp:nil
                                ((membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t)
                                 (auto-refresh :target-type
                                  privacy-budget-template-auto-refresh
                                  :required common-lisp:t :member-name
                                  "autoRefresh")
                                 (privacy-budget-type :target-type
                                  privacy-budget-type :required common-lisp:t
                                  :member-name "privacyBudgetType")
                                 (parameters :target-type
                                  privacy-budget-template-parameters-input
                                  :required common-lisp:t :member-name
                                  "parameters")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name
                                 "CreatePrivacyBudgetTemplateInput"))

(smithy/sdk/shapes:define-output create-privacy-budget-template-output
                                 common-lisp:nil
                                 ((privacy-budget-template :target-type
                                   privacy-budget-template :required
                                   common-lisp:t :member-name
                                   "privacyBudgetTemplate"))
                                 (:shape-name
                                  "CreatePrivacyBudgetTemplateOutput"))

(smithy/sdk/shapes:define-list custom-mlmember-abilities :member
                               custom-mlmember-ability)

(smithy/sdk/shapes:define-enum custom-mlmember-ability
    common-lisp:nil
  (:can-receive-model-output "CAN_RECEIVE_MODEL_OUTPUT")
  (:can-receive-inference-output "CAN_RECEIVE_INFERENCE_OUTPUT"))

(smithy/sdk/shapes:define-structure data-encryption-metadata common-lisp:nil
                                    ((allow-cleartext :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "allowCleartext")
                                     (allow-duplicates :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "allowDuplicates")
                                     (allow-joins-on-columns-with-different-names
                                      :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "allowJoinsOnColumnsWithDifferentNames")
                                     (preserve-nulls :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "preserveNulls"))
                                    (:shape-name "DataEncryptionMetadata"))

(smithy/sdk/shapes:define-structure delete-analysis-template-input
                                    common-lisp:nil
                                    ((membership-identifier :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipIdentifier")
                                     (analysis-template-identifier :target-type
                                      analysis-template-identifier :required
                                      common-lisp:t :member-name
                                      "analysisTemplateIdentifier"))
                                    (:shape-name "DeleteAnalysisTemplateInput"))

(smithy/sdk/shapes:define-structure delete-analysis-template-output
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeleteAnalysisTemplateOutput"))

(smithy/sdk/shapes:define-structure delete-collaboration-input common-lisp:nil
                                    ((collaboration-identifier :target-type
                                      collaboration-identifier :required
                                      common-lisp:t :member-name
                                      "collaborationIdentifier"))
                                    (:shape-name "DeleteCollaborationInput"))

(smithy/sdk/shapes:define-structure delete-collaboration-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteCollaborationOutput"))

(smithy/sdk/shapes:define-input
 delete-configured-audience-model-association-input common-lisp:nil
 ((configured-audience-model-association-identifier :target-type
   configured-audience-model-association-identifier :required common-lisp:t
   :member-name "configuredAudienceModelAssociationIdentifier" :http-label
   common-lisp:t)
  (membership-identifier :target-type membership-identifier :required
   common-lisp:t :member-name "membershipIdentifier" :http-label
   common-lisp:t))
 (:shape-name "DeleteConfiguredAudienceModelAssociationInput"))

(smithy/sdk/shapes:define-output
 delete-configured-audience-model-association-output common-lisp:nil
 common-lisp:nil (:shape-name "DeleteConfiguredAudienceModelAssociationOutput"))

(smithy/sdk/shapes:define-structure delete-configured-table-analysis-rule-input
                                    common-lisp:nil
                                    ((configured-table-identifier :target-type
                                      configured-table-identifier :required
                                      common-lisp:t :member-name
                                      "configuredTableIdentifier")
                                     (analysis-rule-type :target-type
                                      configured-table-analysis-rule-type
                                      :required common-lisp:t :member-name
                                      "analysisRuleType"))
                                    (:shape-name
                                     "DeleteConfiguredTableAnalysisRuleInput"))

(smithy/sdk/shapes:define-structure
 delete-configured-table-analysis-rule-output common-lisp:nil common-lisp:nil
 (:shape-name "DeleteConfiguredTableAnalysisRuleOutput"))

(smithy/sdk/shapes:define-input
 delete-configured-table-association-analysis-rule-input common-lisp:nil
 ((membership-identifier :target-type membership-identifier :required
   common-lisp:t :member-name "membershipIdentifier" :http-label common-lisp:t)
  (configured-table-association-identifier :target-type
   configured-table-association-identifier :required common-lisp:t :member-name
   "configuredTableAssociationIdentifier" :http-label common-lisp:t)
  (analysis-rule-type :target-type
   configured-table-association-analysis-rule-type :required common-lisp:t
   :member-name "analysisRuleType" :http-label common-lisp:t))
 (:shape-name "DeleteConfiguredTableAssociationAnalysisRuleInput"))

(smithy/sdk/shapes:define-output
 delete-configured-table-association-analysis-rule-output common-lisp:nil
 common-lisp:nil
 (:shape-name "DeleteConfiguredTableAssociationAnalysisRuleOutput"))

(smithy/sdk/shapes:define-structure delete-configured-table-association-input
                                    common-lisp:nil
                                    ((configured-table-association-identifier
                                      :target-type
                                      configured-table-association-identifier
                                      :required common-lisp:t :member-name
                                      "configuredTableAssociationIdentifier")
                                     (membership-identifier :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipIdentifier"))
                                    (:shape-name
                                     "DeleteConfiguredTableAssociationInput"))

(smithy/sdk/shapes:define-structure delete-configured-table-association-output
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "DeleteConfiguredTableAssociationOutput"))

(smithy/sdk/shapes:define-structure delete-configured-table-input
                                    common-lisp:nil
                                    ((configured-table-identifier :target-type
                                      configured-table-identifier :required
                                      common-lisp:t :member-name
                                      "configuredTableIdentifier"))
                                    (:shape-name "DeleteConfiguredTableInput"))

(smithy/sdk/shapes:define-structure delete-configured-table-output
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name "DeleteConfiguredTableOutput"))

(smithy/sdk/shapes:define-input delete-id-mapping-table-input common-lisp:nil
                                ((id-mapping-table-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "idMappingTableIdentifier" :http-label
                                  common-lisp:t)
                                 (membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteIdMappingTableInput"))

(smithy/sdk/shapes:define-output delete-id-mapping-table-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteIdMappingTableOutput"))

(smithy/sdk/shapes:define-input delete-id-namespace-association-input
                                common-lisp:nil
                                ((id-namespace-association-identifier
                                  :target-type
                                  id-namespace-association-identifier :required
                                  common-lisp:t :member-name
                                  "idNamespaceAssociationIdentifier"
                                  :http-label common-lisp:t)
                                 (membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteIdNamespaceAssociationInput"))

(smithy/sdk/shapes:define-output delete-id-namespace-association-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteIdNamespaceAssociationOutput"))

(smithy/sdk/shapes:define-structure delete-member-input common-lisp:nil
                                    ((collaboration-identifier :target-type
                                      collaboration-identifier :required
                                      common-lisp:t :member-name
                                      "collaborationIdentifier")
                                     (account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId"))
                                    (:shape-name "DeleteMemberInput"))

(smithy/sdk/shapes:define-structure delete-member-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteMemberOutput"))

(smithy/sdk/shapes:define-structure delete-membership-input common-lisp:nil
                                    ((membership-identifier :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipIdentifier"))
                                    (:shape-name "DeleteMembershipInput"))

(smithy/sdk/shapes:define-structure delete-membership-output common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DeleteMembershipOutput"))

(smithy/sdk/shapes:define-input delete-privacy-budget-template-input
                                common-lisp:nil
                                ((membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t)
                                 (privacy-budget-template-identifier
                                  :target-type
                                  privacy-budget-template-identifier :required
                                  common-lisp:t :member-name
                                  "privacyBudgetTemplateIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeletePrivacyBudgetTemplateInput"))

(smithy/sdk/shapes:define-output delete-privacy-budget-template-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeletePrivacyBudgetTemplateOutput"))

(smithy/sdk/shapes:define-type differential-privacy-aggregation-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum differential-privacy-aggregation-type
    common-lisp:nil
  (:avg "AVG")
  (:count "COUNT")
  (:count-distinct "COUNT_DISTINCT")
  (:sum "SUM")
  (:stddev "STDDEV"))

(smithy/sdk/shapes:define-structure differential-privacy-column common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "DifferentialPrivacyColumn"))

(smithy/sdk/shapes:define-list differential-privacy-column-list :member
                               differential-privacy-column)

(smithy/sdk/shapes:define-structure differential-privacy-configuration
                                    common-lisp:nil
                                    ((columns :target-type
                                      differential-privacy-column-list
                                      :required common-lisp:t :member-name
                                      "columns"))
                                    (:shape-name
                                     "DifferentialPrivacyConfiguration"))

(smithy/sdk/shapes:define-structure differential-privacy-parameters
                                    common-lisp:nil
                                    ((sensitivity-parameters :target-type
                                      differential-privacy-sensitivity-parameters-list
                                      :required common-lisp:t :member-name
                                      "sensitivityParameters"))
                                    (:shape-name
                                     "DifferentialPrivacyParameters"))

(smithy/sdk/shapes:define-structure differential-privacy-preview-aggregation
                                    common-lisp:nil
                                    ((type :target-type
                                      differential-privacy-aggregation-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (max-count :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name "maxCount"))
                                    (:shape-name
                                     "DifferentialPrivacyPreviewAggregation"))

(smithy/sdk/shapes:define-list differential-privacy-preview-aggregation-list
                               :member differential-privacy-preview-aggregation)

(smithy/sdk/shapes:define-structure
 differential-privacy-preview-parameters-input common-lisp:nil
 ((epsilon :target-type epsilon :required common-lisp:t :member-name "epsilon")
  (users-noise-per-query :target-type users-noise-per-query :required
   common-lisp:t :member-name "usersNoisePerQuery"))
 (:shape-name "DifferentialPrivacyPreviewParametersInput"))

(smithy/sdk/shapes:define-structure differential-privacy-privacy-budget
                                    common-lisp:nil
                                    ((aggregations :target-type
                                      differential-privacy-privacy-budget-aggregation-list
                                      :required common-lisp:t :member-name
                                      "aggregations")
                                     (epsilon :target-type epsilon :required
                                      common-lisp:t :member-name "epsilon"))
                                    (:shape-name
                                     "DifferentialPrivacyPrivacyBudget"))

(smithy/sdk/shapes:define-structure
 differential-privacy-privacy-budget-aggregation common-lisp:nil
 ((type :target-type differential-privacy-aggregation-type :required
   common-lisp:t :member-name "type")
  (max-count :target-type smithy/sdk/smithy-types:integer :required
   common-lisp:t :member-name "maxCount")
  (remaining-count :target-type smithy/sdk/smithy-types:integer :required
   common-lisp:t :member-name "remainingCount"))
 (:shape-name "DifferentialPrivacyPrivacyBudgetAggregation"))

(smithy/sdk/shapes:define-list
 differential-privacy-privacy-budget-aggregation-list :member
 differential-privacy-privacy-budget-aggregation)

(smithy/sdk/shapes:define-structure differential-privacy-privacy-impact
                                    common-lisp:nil
                                    ((aggregations :target-type
                                      differential-privacy-preview-aggregation-list
                                      :required common-lisp:t :member-name
                                      "aggregations"))
                                    (:shape-name
                                     "DifferentialPrivacyPrivacyImpact"))

(smithy/sdk/shapes:define-structure differential-privacy-sensitivity-parameters
                                    common-lisp:nil
                                    ((aggregation-type :target-type
                                      differential-privacy-aggregation-type
                                      :required common-lisp:t :member-name
                                      "aggregationType")
                                     (aggregation-expression :target-type
                                      differential-privacy-aggregation-expression
                                      :required common-lisp:t :member-name
                                      "aggregationExpression")
                                     (user-contribution-limit :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "userContributionLimit")
                                     (min-column-value :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "minColumnValue")
                                     (max-column-value :target-type
                                      smithy/sdk/smithy-types:float
                                      :member-name "maxColumnValue"))
                                    (:shape-name
                                     "DifferentialPrivacySensitivityParameters"))

(smithy/sdk/shapes:define-list differential-privacy-sensitivity-parameters-list
                               :member
                               differential-privacy-sensitivity-parameters)

(smithy/sdk/shapes:define-structure
 differential-privacy-template-parameters-input common-lisp:nil
 ((epsilon :target-type epsilon :required common-lisp:t :member-name "epsilon")
  (users-noise-per-query :target-type users-noise-per-query :required
   common-lisp:t :member-name "usersNoisePerQuery"))
 (:shape-name "DifferentialPrivacyTemplateParametersInput"))

(smithy/sdk/shapes:define-structure
 differential-privacy-template-parameters-output common-lisp:nil
 ((epsilon :target-type epsilon :required common-lisp:t :member-name "epsilon")
  (users-noise-per-query :target-type users-noise-per-query :required
   common-lisp:t :member-name "usersNoisePerQuery"))
 (:shape-name "DifferentialPrivacyTemplateParametersOutput"))

(smithy/sdk/shapes:define-structure
 differential-privacy-template-update-parameters common-lisp:nil
 ((epsilon :target-type epsilon :member-name "epsilon")
  (users-noise-per-query :target-type users-noise-per-query :member-name
   "usersNoisePerQuery"))
 (:shape-name "DifferentialPrivacyTemplateUpdateParameters"))

(smithy/sdk/shapes:define-structure direct-analysis-configuration-details
                                    common-lisp:nil
                                    ((receiver-account-ids :target-type
                                      receiver-account-ids :member-name
                                      "receiverAccountIds"))
                                    (:shape-name
                                     "DirectAnalysisConfigurationDetails"))

(smithy/sdk/shapes:define-type display-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type epsilon smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type filterable-member-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type generic-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure get-analysis-template-input common-lisp:nil
                                    ((membership-identifier :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipIdentifier")
                                     (analysis-template-identifier :target-type
                                      analysis-template-identifier :required
                                      common-lisp:t :member-name
                                      "analysisTemplateIdentifier"))
                                    (:shape-name "GetAnalysisTemplateInput"))

(smithy/sdk/shapes:define-structure get-analysis-template-output
                                    common-lisp:nil
                                    ((analysis-template :target-type
                                      analysis-template :required common-lisp:t
                                      :member-name "analysisTemplate"))
                                    (:shape-name "GetAnalysisTemplateOutput"))

(smithy/sdk/shapes:define-structure get-collaboration-analysis-template-input
                                    common-lisp:nil
                                    ((collaboration-identifier :target-type
                                      collaboration-identifier :required
                                      common-lisp:t :member-name
                                      "collaborationIdentifier")
                                     (analysis-template-arn :target-type
                                      analysis-template-arn :required
                                      common-lisp:t :member-name
                                      "analysisTemplateArn"))
                                    (:shape-name
                                     "GetCollaborationAnalysisTemplateInput"))

(smithy/sdk/shapes:define-structure get-collaboration-analysis-template-output
                                    common-lisp:nil
                                    ((collaboration-analysis-template
                                      :target-type
                                      collaboration-analysis-template :required
                                      common-lisp:t :member-name
                                      "collaborationAnalysisTemplate"))
                                    (:shape-name
                                     "GetCollaborationAnalysisTemplateOutput"))

(smithy/sdk/shapes:define-input
 get-collaboration-configured-audience-model-association-input common-lisp:nil
 ((collaboration-identifier :target-type collaboration-identifier :required
   common-lisp:t :member-name "collaborationIdentifier" :http-label
   common-lisp:t)
  (configured-audience-model-association-identifier :target-type
   configured-audience-model-association-identifier :required common-lisp:t
   :member-name "configuredAudienceModelAssociationIdentifier" :http-label
   common-lisp:t))
 (:shape-name "GetCollaborationConfiguredAudienceModelAssociationInput"))

(smithy/sdk/shapes:define-output
 get-collaboration-configured-audience-model-association-output common-lisp:nil
 ((collaboration-configured-audience-model-association :target-type
   collaboration-configured-audience-model-association :required common-lisp:t
   :member-name "collaborationConfiguredAudienceModelAssociation"))
 (:shape-name "GetCollaborationConfiguredAudienceModelAssociationOutput"))

(smithy/sdk/shapes:define-input
 get-collaboration-id-namespace-association-input common-lisp:nil
 ((collaboration-identifier :target-type collaboration-identifier :required
   common-lisp:t :member-name "collaborationIdentifier" :http-label
   common-lisp:t)
  (id-namespace-association-identifier :target-type
   id-namespace-association-identifier :required common-lisp:t :member-name
   "idNamespaceAssociationIdentifier" :http-label common-lisp:t))
 (:shape-name "GetCollaborationIdNamespaceAssociationInput"))

(smithy/sdk/shapes:define-output
 get-collaboration-id-namespace-association-output common-lisp:nil
 ((collaboration-id-namespace-association :target-type
   collaboration-id-namespace-association :required common-lisp:t :member-name
   "collaborationIdNamespaceAssociation"))
 (:shape-name "GetCollaborationIdNamespaceAssociationOutput"))

(smithy/sdk/shapes:define-structure get-collaboration-input common-lisp:nil
                                    ((collaboration-identifier :target-type
                                      collaboration-identifier :required
                                      common-lisp:t :member-name
                                      "collaborationIdentifier"))
                                    (:shape-name "GetCollaborationInput"))

(smithy/sdk/shapes:define-structure get-collaboration-output common-lisp:nil
                                    ((collaboration :target-type collaboration
                                      :required common-lisp:t :member-name
                                      "collaboration"))
                                    (:shape-name "GetCollaborationOutput"))

(smithy/sdk/shapes:define-input get-collaboration-privacy-budget-template-input
                                common-lisp:nil
                                ((collaboration-identifier :target-type
                                  collaboration-identifier :required
                                  common-lisp:t :member-name
                                  "collaborationIdentifier" :http-label
                                  common-lisp:t)
                                 (privacy-budget-template-identifier
                                  :target-type
                                  privacy-budget-template-identifier :required
                                  common-lisp:t :member-name
                                  "privacyBudgetTemplateIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "GetCollaborationPrivacyBudgetTemplateInput"))

(smithy/sdk/shapes:define-output
 get-collaboration-privacy-budget-template-output common-lisp:nil
 ((collaboration-privacy-budget-template :target-type
   collaboration-privacy-budget-template :required common-lisp:t :member-name
   "collaborationPrivacyBudgetTemplate"))
 (:shape-name "GetCollaborationPrivacyBudgetTemplateOutput"))

(smithy/sdk/shapes:define-input get-configured-audience-model-association-input
                                common-lisp:nil
                                ((configured-audience-model-association-identifier
                                  :target-type
                                  configured-audience-model-association-identifier
                                  :required common-lisp:t :member-name
                                  "configuredAudienceModelAssociationIdentifier"
                                  :http-label common-lisp:t)
                                 (membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetConfiguredAudienceModelAssociationInput"))

(smithy/sdk/shapes:define-output
 get-configured-audience-model-association-output common-lisp:nil
 ((configured-audience-model-association :target-type
   configured-audience-model-association :required common-lisp:t :member-name
   "configuredAudienceModelAssociation"))
 (:shape-name "GetConfiguredAudienceModelAssociationOutput"))

(smithy/sdk/shapes:define-structure get-configured-table-analysis-rule-input
                                    common-lisp:nil
                                    ((configured-table-identifier :target-type
                                      configured-table-identifier :required
                                      common-lisp:t :member-name
                                      "configuredTableIdentifier")
                                     (analysis-rule-type :target-type
                                      configured-table-analysis-rule-type
                                      :required common-lisp:t :member-name
                                      "analysisRuleType"))
                                    (:shape-name
                                     "GetConfiguredTableAnalysisRuleInput"))

(smithy/sdk/shapes:define-structure get-configured-table-analysis-rule-output
                                    common-lisp:nil
                                    ((analysis-rule :target-type
                                      configured-table-analysis-rule :required
                                      common-lisp:t :member-name
                                      "analysisRule"))
                                    (:shape-name
                                     "GetConfiguredTableAnalysisRuleOutput"))

(smithy/sdk/shapes:define-input
 get-configured-table-association-analysis-rule-input common-lisp:nil
 ((membership-identifier :target-type membership-identifier :required
   common-lisp:t :member-name "membershipIdentifier" :http-label common-lisp:t)
  (configured-table-association-identifier :target-type
   configured-table-association-identifier :required common-lisp:t :member-name
   "configuredTableAssociationIdentifier" :http-label common-lisp:t)
  (analysis-rule-type :target-type
   configured-table-association-analysis-rule-type :required common-lisp:t
   :member-name "analysisRuleType" :http-label common-lisp:t))
 (:shape-name "GetConfiguredTableAssociationAnalysisRuleInput"))

(smithy/sdk/shapes:define-output
 get-configured-table-association-analysis-rule-output common-lisp:nil
 ((analysis-rule :target-type configured-table-association-analysis-rule
   :required common-lisp:t :member-name "analysisRule"))
 (:shape-name "GetConfiguredTableAssociationAnalysisRuleOutput"))

(smithy/sdk/shapes:define-structure get-configured-table-association-input
                                    common-lisp:nil
                                    ((configured-table-association-identifier
                                      :target-type
                                      configured-table-association-identifier
                                      :required common-lisp:t :member-name
                                      "configuredTableAssociationIdentifier")
                                     (membership-identifier :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipIdentifier"))
                                    (:shape-name
                                     "GetConfiguredTableAssociationInput"))

(smithy/sdk/shapes:define-structure get-configured-table-association-output
                                    common-lisp:nil
                                    ((configured-table-association :target-type
                                      configured-table-association :required
                                      common-lisp:t :member-name
                                      "configuredTableAssociation"))
                                    (:shape-name
                                     "GetConfiguredTableAssociationOutput"))

(smithy/sdk/shapes:define-structure get-configured-table-input common-lisp:nil
                                    ((configured-table-identifier :target-type
                                      configured-table-identifier :required
                                      common-lisp:t :member-name
                                      "configuredTableIdentifier"))
                                    (:shape-name "GetConfiguredTableInput"))

(smithy/sdk/shapes:define-structure get-configured-table-output common-lisp:nil
                                    ((configured-table :target-type
                                      configured-table :required common-lisp:t
                                      :member-name "configuredTable"))
                                    (:shape-name "GetConfiguredTableOutput"))

(smithy/sdk/shapes:define-input get-id-mapping-table-input common-lisp:nil
                                ((id-mapping-table-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "idMappingTableIdentifier" :http-label
                                  common-lisp:t)
                                 (membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetIdMappingTableInput"))

(smithy/sdk/shapes:define-output get-id-mapping-table-output common-lisp:nil
                                 ((id-mapping-table :target-type
                                   id-mapping-table :required common-lisp:t
                                   :member-name "idMappingTable"))
                                 (:shape-name "GetIdMappingTableOutput"))

(smithy/sdk/shapes:define-input get-id-namespace-association-input
                                common-lisp:nil
                                ((id-namespace-association-identifier
                                  :target-type
                                  id-namespace-association-identifier :required
                                  common-lisp:t :member-name
                                  "idNamespaceAssociationIdentifier"
                                  :http-label common-lisp:t)
                                 (membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "GetIdNamespaceAssociationInput"))

(smithy/sdk/shapes:define-output get-id-namespace-association-output
                                 common-lisp:nil
                                 ((id-namespace-association :target-type
                                   id-namespace-association :required
                                   common-lisp:t :member-name
                                   "idNamespaceAssociation"))
                                 (:shape-name
                                  "GetIdNamespaceAssociationOutput"))

(smithy/sdk/shapes:define-structure get-membership-input common-lisp:nil
                                    ((membership-identifier :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipIdentifier"))
                                    (:shape-name "GetMembershipInput"))

(smithy/sdk/shapes:define-structure get-membership-output common-lisp:nil
                                    ((membership :target-type membership
                                      :required common-lisp:t :member-name
                                      "membership"))
                                    (:shape-name "GetMembershipOutput"))

(smithy/sdk/shapes:define-input get-privacy-budget-template-input
                                common-lisp:nil
                                ((membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t)
                                 (privacy-budget-template-identifier
                                  :target-type
                                  privacy-budget-template-identifier :required
                                  common-lisp:t :member-name
                                  "privacyBudgetTemplateIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetPrivacyBudgetTemplateInput"))

(smithy/sdk/shapes:define-output get-privacy-budget-template-output
                                 common-lisp:nil
                                 ((privacy-budget-template :target-type
                                   privacy-budget-template :required
                                   common-lisp:t :member-name
                                   "privacyBudgetTemplate"))
                                 (:shape-name "GetPrivacyBudgetTemplateOutput"))

(smithy/sdk/shapes:define-input get-protected-job-input common-lisp:nil
                                ((membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t)
                                 (protected-job-identifier :target-type
                                  protected-job-identifier :required
                                  common-lisp:t :member-name
                                  "protectedJobIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetProtectedJobInput"))

(smithy/sdk/shapes:define-output get-protected-job-output common-lisp:nil
                                 ((protected-job :target-type protected-job
                                   :required common-lisp:t :member-name
                                   "protectedJob"))
                                 (:shape-name "GetProtectedJobOutput"))

(smithy/sdk/shapes:define-structure get-protected-query-input common-lisp:nil
                                    ((membership-identifier :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipIdentifier")
                                     (protected-query-identifier :target-type
                                      protected-query-identifier :required
                                      common-lisp:t :member-name
                                      "protectedQueryIdentifier"))
                                    (:shape-name "GetProtectedQueryInput"))

(smithy/sdk/shapes:define-structure get-protected-query-output common-lisp:nil
                                    ((protected-query :target-type
                                      protected-query :required common-lisp:t
                                      :member-name "protectedQuery"))
                                    (:shape-name "GetProtectedQueryOutput"))

(smithy/sdk/shapes:define-structure get-schema-analysis-rule-input
                                    common-lisp:nil
                                    ((collaboration-identifier :target-type
                                      collaboration-identifier :required
                                      common-lisp:t :member-name
                                      "collaborationIdentifier")
                                     (name :target-type table-alias :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type analysis-rule-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "GetSchemaAnalysisRuleInput"))

(smithy/sdk/shapes:define-structure get-schema-analysis-rule-output
                                    common-lisp:nil
                                    ((analysis-rule :target-type analysis-rule
                                      :required common-lisp:t :member-name
                                      "analysisRule"))
                                    (:shape-name "GetSchemaAnalysisRuleOutput"))

(smithy/sdk/shapes:define-structure get-schema-input common-lisp:nil
                                    ((collaboration-identifier :target-type
                                      collaboration-identifier :required
                                      common-lisp:t :member-name
                                      "collaborationIdentifier")
                                     (name :target-type table-alias :required
                                      common-lisp:t :member-name "name"))
                                    (:shape-name "GetSchemaInput"))

(smithy/sdk/shapes:define-structure get-schema-output common-lisp:nil
                                    ((schema :target-type schema :required
                                      common-lisp:t :member-name "schema"))
                                    (:shape-name "GetSchemaOutput"))

(smithy/sdk/shapes:define-type glue-database-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type glue-table-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure glue-table-reference common-lisp:nil
                                    ((table-name :target-type glue-table-name
                                      :required common-lisp:t :member-name
                                      "tableName")
                                     (database-name :target-type
                                      glue-database-name :required
                                      common-lisp:t :member-name
                                      "databaseName"))
                                    (:shape-name "GlueTableReference"))

(smithy/sdk/shapes:define-structure hash common-lisp:nil
                                    ((sha256 :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "sha256"))
                                    (:shape-name "Hash"))

(smithy/sdk/shapes:define-list hash-list :member hash)

(smithy/sdk/shapes:define-structure id-mapping-config common-lisp:nil
                                    ((allow-use-as-dimension-column
                                      :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "allowUseAsDimensionColumn"))
                                    (:shape-name "IdMappingConfig"))

(smithy/sdk/shapes:define-structure id-mapping-table common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type id-mapping-table-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (input-reference-config :target-type
                                      id-mapping-table-input-reference-config
                                      :required common-lisp:t :member-name
                                      "inputReferenceConfig")
                                     (membership-id :target-type uuid :required
                                      common-lisp:t :member-name
                                      "membershipId")
                                     (membership-arn :target-type
                                      membership-arn :required common-lisp:t
                                      :member-name "membershipArn")
                                     (collaboration-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "collaborationId")
                                     (collaboration-arn :target-type
                                      collaboration-arn :required common-lisp:t
                                      :member-name "collaborationArn")
                                     (description :target-type
                                      resource-description :member-name
                                      "description")
                                     (name :target-type resource-alias
                                      :required common-lisp:t :member-name
                                      "name")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (input-reference-properties :target-type
                                      id-mapping-table-input-reference-properties
                                      :required common-lisp:t :member-name
                                      "inputReferenceProperties")
                                     (kms-key-arn :target-type kmskey-arn
                                      :member-name "kmsKeyArn"))
                                    (:shape-name "IdMappingTable"))

(smithy/sdk/shapes:define-type id-mapping-table-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type id-mapping-table-input-reference-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure id-mapping-table-input-reference-config
                                    common-lisp:nil
                                    ((input-reference-arn :target-type
                                      id-mapping-table-input-reference-arn
                                      :required common-lisp:t :member-name
                                      "inputReferenceArn")
                                     (manage-resource-policies :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "manageResourcePolicies"))
                                    (:shape-name
                                     "IdMappingTableInputReferenceConfig"))

(smithy/sdk/shapes:define-structure id-mapping-table-input-reference-properties
                                    common-lisp:nil
                                    ((id-mapping-table-input-source
                                      :target-type
                                      id-mapping-table-input-source-list
                                      :required common-lisp:t :member-name
                                      "idMappingTableInputSource"))
                                    (:shape-name
                                     "IdMappingTableInputReferenceProperties"))

(smithy/sdk/shapes:define-structure id-mapping-table-input-source
                                    common-lisp:nil
                                    ((id-namespace-association-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "idNamespaceAssociationId")
                                     (type :target-type id-namespace-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "IdMappingTableInputSource"))

(smithy/sdk/shapes:define-list id-mapping-table-input-source-list :member
                               id-mapping-table-input-source)

common-lisp:nil

(smithy/sdk/shapes:define-structure id-mapping-table-schema-type-properties
                                    common-lisp:nil
                                    ((id-mapping-table-input-source
                                      :target-type
                                      id-mapping-table-input-source-list
                                      :required common-lisp:t :member-name
                                      "idMappingTableInputSource"))
                                    (:shape-name
                                     "IdMappingTableSchemaTypeProperties"))

(smithy/sdk/shapes:define-structure id-mapping-table-summary common-lisp:nil
                                    ((collaboration-arn :target-type
                                      collaboration-arn :required common-lisp:t
                                      :member-name "collaborationArn")
                                     (collaboration-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "collaborationId")
                                     (membership-id :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipId")
                                     (membership-arn :target-type
                                      membership-arn :required common-lisp:t
                                      :member-name "membershipArn")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type id-mapping-table-arn
                                      :required common-lisp:t :member-name
                                      "arn")
                                     (description :target-type
                                      resource-description :member-name
                                      "description")
                                     (input-reference-config :target-type
                                      id-mapping-table-input-reference-config
                                      :required common-lisp:t :member-name
                                      "inputReferenceConfig")
                                     (name :target-type resource-alias
                                      :required common-lisp:t :member-name
                                      "name"))
                                    (:shape-name "IdMappingTableSummary"))

(smithy/sdk/shapes:define-list id-mapping-table-summary-list :member
                               id-mapping-table-summary)

(smithy/sdk/shapes:define-list id-mapping-workflows-supported :member
                               smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-structure id-namespace-association common-lisp:nil
                                    ((id :target-type
                                      id-namespace-association-identifier
                                      :required common-lisp:t :member-name
                                      "id")
                                     (arn :target-type
                                      id-namespace-association-arn :required
                                      common-lisp:t :member-name "arn")
                                     (membership-id :target-type uuid :required
                                      common-lisp:t :member-name
                                      "membershipId")
                                     (membership-arn :target-type
                                      membership-arn :required common-lisp:t
                                      :member-name "membershipArn")
                                     (collaboration-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "collaborationId")
                                     (collaboration-arn :target-type
                                      collaboration-arn :required common-lisp:t
                                      :member-name "collaborationArn")
                                     (name :target-type generic-resource-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (description :target-type
                                      resource-description :member-name
                                      "description")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (input-reference-config :target-type
                                      id-namespace-association-input-reference-config
                                      :required common-lisp:t :member-name
                                      "inputReferenceConfig")
                                     (input-reference-properties :target-type
                                      id-namespace-association-input-reference-properties
                                      :required common-lisp:t :member-name
                                      "inputReferenceProperties")
                                     (id-mapping-config :target-type
                                      id-mapping-config :member-name
                                      "idMappingConfig"))
                                    (:shape-name "IdNamespaceAssociation"))

(smithy/sdk/shapes:define-type id-namespace-association-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type id-namespace-association-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type id-namespace-association-input-reference-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 id-namespace-association-input-reference-config common-lisp:nil
 ((input-reference-arn :target-type
   id-namespace-association-input-reference-arn :required common-lisp:t
   :member-name "inputReferenceArn")
  (manage-resource-policies :target-type smithy/sdk/smithy-types:boolean
   :required common-lisp:t :member-name "manageResourcePolicies"))
 (:shape-name "IdNamespaceAssociationInputReferenceConfig"))

(smithy/sdk/shapes:define-structure
 id-namespace-association-input-reference-properties common-lisp:nil
 ((id-namespace-type :target-type id-namespace-type :required common-lisp:t
   :member-name "idNamespaceType")
  (id-mapping-workflows-supported :target-type id-mapping-workflows-supported
   :required common-lisp:t :member-name "idMappingWorkflowsSupported"))
 (:shape-name "IdNamespaceAssociationInputReferenceProperties"))

(smithy/sdk/shapes:define-structure
 id-namespace-association-input-reference-properties-summary common-lisp:nil
 ((id-namespace-type :target-type id-namespace-type :required common-lisp:t
   :member-name "idNamespaceType"))
 (:shape-name "IdNamespaceAssociationInputReferencePropertiesSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-structure id-namespace-association-summary
                                    common-lisp:nil
                                    ((membership-id :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipId")
                                     (membership-arn :target-type
                                      membership-arn :required common-lisp:t
                                      :member-name "membershipArn")
                                     (collaboration-arn :target-type
                                      collaboration-arn :required common-lisp:t
                                      :member-name "collaborationArn")
                                     (collaboration-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "collaborationId")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type
                                      id-namespace-association-arn :required
                                      common-lisp:t :member-name "arn")
                                     (input-reference-config :target-type
                                      id-namespace-association-input-reference-config
                                      :required common-lisp:t :member-name
                                      "inputReferenceConfig")
                                     (name :target-type generic-resource-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (description :target-type
                                      resource-description :member-name
                                      "description")
                                     (input-reference-properties :target-type
                                      id-namespace-association-input-reference-properties-summary
                                      :required common-lisp:t :member-name
                                      "inputReferenceProperties"))
                                    (:shape-name
                                     "IdNamespaceAssociationSummary"))

(smithy/sdk/shapes:define-list id-namespace-association-summary-list :member
                               id-namespace-association-summary)

(smithy/sdk/shapes:define-enum id-namespace-type
    common-lisp:nil
  (:source "SOURCE")
  (:target "TARGET"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure job-compute-payment-config common-lisp:nil
                                    ((is-responsible :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "isResponsible"))
                                    (:shape-name "JobComputePaymentConfig"))

(smithy/sdk/shapes:define-type join-operator smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list join-operators-list :member join-operator)

(smithy/sdk/shapes:define-type join-required-option
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kmskey-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure list-analysis-templates-input
                                    common-lisp:nil
                                    ((membership-identifier :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipIdentifier")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name "ListAnalysisTemplatesInput"))

(smithy/sdk/shapes:define-structure list-analysis-templates-output
                                    common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (analysis-template-summaries :target-type
                                      analysis-template-summary-list :required
                                      common-lisp:t :member-name
                                      "analysisTemplateSummaries"))
                                    (:shape-name "ListAnalysisTemplatesOutput"))

(smithy/sdk/shapes:define-structure list-collaboration-analysis-templates-input
                                    common-lisp:nil
                                    ((collaboration-identifier :target-type
                                      collaboration-identifier :required
                                      common-lisp:t :member-name
                                      "collaborationIdentifier")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name
                                     "ListCollaborationAnalysisTemplatesInput"))

(smithy/sdk/shapes:define-structure
 list-collaboration-analysis-templates-output common-lisp:nil
 ((next-token :target-type pagination-token :member-name "nextToken")
  (collaboration-analysis-template-summaries :target-type
   collaboration-analysis-template-summary-list :required common-lisp:t
   :member-name "collaborationAnalysisTemplateSummaries"))
 (:shape-name "ListCollaborationAnalysisTemplatesOutput"))

(smithy/sdk/shapes:define-input
 list-collaboration-configured-audience-model-associations-input
 common-lisp:nil
 ((collaboration-identifier :target-type collaboration-identifier :required
   common-lisp:t :member-name "collaborationIdentifier" :http-label
   common-lisp:t)
  (next-token :target-type pagination-token :member-name "nextToken"
   :http-query "nextToken")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults"))
 (:shape-name "ListCollaborationConfiguredAudienceModelAssociationsInput"))

(smithy/sdk/shapes:define-output
 list-collaboration-configured-audience-model-associations-output
 common-lisp:nil
 ((collaboration-configured-audience-model-association-summaries :target-type
   collaboration-configured-audience-model-association-summary-list :required
   common-lisp:t :member-name
   "collaborationConfiguredAudienceModelAssociationSummaries")
  (next-token :target-type pagination-token :member-name "nextToken"))
 (:shape-name "ListCollaborationConfiguredAudienceModelAssociationsOutput"))

(smithy/sdk/shapes:define-input
 list-collaboration-id-namespace-associations-input common-lisp:nil
 ((collaboration-identifier :target-type collaboration-identifier :required
   common-lisp:t :member-name "collaborationIdentifier" :http-label
   common-lisp:t)
  (next-token :target-type pagination-token :member-name "nextToken"
   :http-query "nextToken")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults"))
 (:shape-name "ListCollaborationIdNamespaceAssociationsInput"))

(smithy/sdk/shapes:define-output
 list-collaboration-id-namespace-associations-output common-lisp:nil
 ((next-token :target-type pagination-token :member-name "nextToken")
  (collaboration-id-namespace-association-summaries :target-type
   collaboration-id-namespace-association-summary-list :required common-lisp:t
   :member-name "collaborationIdNamespaceAssociationSummaries"))
 (:shape-name "ListCollaborationIdNamespaceAssociationsOutput"))

(smithy/sdk/shapes:define-input
 list-collaboration-privacy-budget-templates-input common-lisp:nil
 ((collaboration-identifier :target-type collaboration-identifier :required
   common-lisp:t :member-name "collaborationIdentifier" :http-label
   common-lisp:t)
  (next-token :target-type pagination-token :member-name "nextToken"
   :http-query "nextToken")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults"))
 (:shape-name "ListCollaborationPrivacyBudgetTemplatesInput"))

(smithy/sdk/shapes:define-output
 list-collaboration-privacy-budget-templates-output common-lisp:nil
 ((next-token :target-type pagination-token :member-name "nextToken")
  (collaboration-privacy-budget-template-summaries :target-type
   collaboration-privacy-budget-template-summary-list :required common-lisp:t
   :member-name "collaborationPrivacyBudgetTemplateSummaries"))
 (:shape-name "ListCollaborationPrivacyBudgetTemplatesOutput"))

(smithy/sdk/shapes:define-input list-collaboration-privacy-budgets-input
                                common-lisp:nil
                                ((collaboration-identifier :target-type
                                  collaboration-identifier :required
                                  common-lisp:t :member-name
                                  "collaborationIdentifier" :http-label
                                  common-lisp:t)
                                 (privacy-budget-type :target-type
                                  privacy-budget-type :required common-lisp:t
                                  :member-name "privacyBudgetType" :http-query
                                  "privacyBudgetType")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListCollaborationPrivacyBudgetsInput"))

(smithy/sdk/shapes:define-output list-collaboration-privacy-budgets-output
                                 common-lisp:nil
                                 ((collaboration-privacy-budget-summaries
                                   :target-type
                                   collaboration-privacy-budget-summary-list
                                   :required common-lisp:t :member-name
                                   "collaborationPrivacyBudgetSummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListCollaborationPrivacyBudgetsOutput"))

(smithy/sdk/shapes:define-structure list-collaborations-input common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (member-status :target-type
                                      filterable-member-status :member-name
                                      "memberStatus" :http-query
                                      "memberStatus"))
                                    (:shape-name "ListCollaborationsInput"))

(smithy/sdk/shapes:define-structure list-collaborations-output common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (collaboration-list :target-type
                                      collaboration-summary-list :required
                                      common-lisp:t :member-name
                                      "collaborationList"))
                                    (:shape-name "ListCollaborationsOutput"))

(smithy/sdk/shapes:define-input
 list-configured-audience-model-associations-input common-lisp:nil
 ((membership-identifier :target-type membership-identifier :required
   common-lisp:t :member-name "membershipIdentifier" :http-label common-lisp:t)
  (next-token :target-type pagination-token :member-name "nextToken"
   :http-query "nextToken")
  (max-results :target-type max-results :member-name "maxResults" :http-query
   "maxResults"))
 (:shape-name "ListConfiguredAudienceModelAssociationsInput"))

(smithy/sdk/shapes:define-output
 list-configured-audience-model-associations-output common-lisp:nil
 ((configured-audience-model-association-summaries :target-type
   configured-audience-model-association-summary-list :required common-lisp:t
   :member-name "configuredAudienceModelAssociationSummaries")
  (next-token :target-type pagination-token :member-name "nextToken"))
 (:shape-name "ListConfiguredAudienceModelAssociationsOutput"))

(smithy/sdk/shapes:define-structure list-configured-table-associations-input
                                    common-lisp:nil
                                    ((membership-identifier :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipIdentifier")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name
                                     "ListConfiguredTableAssociationsInput"))

(smithy/sdk/shapes:define-structure list-configured-table-associations-output
                                    common-lisp:nil
                                    ((configured-table-association-summaries
                                      :target-type
                                      configured-table-association-summary-list
                                      :required common-lisp:t :member-name
                                      "configuredTableAssociationSummaries")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "ListConfiguredTableAssociationsOutput"))

(smithy/sdk/shapes:define-structure list-configured-tables-input
                                    common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name "ListConfiguredTablesInput"))

(smithy/sdk/shapes:define-structure list-configured-tables-output
                                    common-lisp:nil
                                    ((configured-table-summaries :target-type
                                      configured-table-summary-list :required
                                      common-lisp:t :member-name
                                      "configuredTableSummaries")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListConfiguredTablesOutput"))

(smithy/sdk/shapes:define-input list-id-mapping-tables-input common-lisp:nil
                                ((membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListIdMappingTablesInput"))

(smithy/sdk/shapes:define-output list-id-mapping-tables-output common-lisp:nil
                                 ((id-mapping-table-summaries :target-type
                                   id-mapping-table-summary-list :required
                                   common-lisp:t :member-name
                                   "idMappingTableSummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListIdMappingTablesOutput"))

(smithy/sdk/shapes:define-input list-id-namespace-associations-input
                                common-lisp:nil
                                ((membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListIdNamespaceAssociationsInput"))

(smithy/sdk/shapes:define-output list-id-namespace-associations-output
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (id-namespace-association-summaries
                                   :target-type
                                   id-namespace-association-summary-list
                                   :required common-lisp:t :member-name
                                   "idNamespaceAssociationSummaries"))
                                 (:shape-name
                                  "ListIdNamespaceAssociationsOutput"))

(smithy/sdk/shapes:define-structure list-members-input common-lisp:nil
                                    ((collaboration-identifier :target-type
                                      collaboration-identifier :required
                                      common-lisp:t :member-name
                                      "collaborationIdentifier")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name "ListMembersInput"))

(smithy/sdk/shapes:define-structure list-members-output common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (member-summaries :target-type
                                      member-summary-list :required
                                      common-lisp:t :member-name
                                      "memberSummaries"))
                                    (:shape-name "ListMembersOutput"))

(smithy/sdk/shapes:define-structure list-memberships-input common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults")
                                     (status :target-type membership-status
                                      :member-name "status" :http-query
                                      "status"))
                                    (:shape-name "ListMembershipsInput"))

(smithy/sdk/shapes:define-structure list-memberships-output common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (membership-summaries :target-type
                                      membership-summary-list :required
                                      common-lisp:t :member-name
                                      "membershipSummaries"))
                                    (:shape-name "ListMembershipsOutput"))

(smithy/sdk/shapes:define-input list-privacy-budget-templates-input
                                common-lisp:nil
                                ((membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListPrivacyBudgetTemplatesInput"))

(smithy/sdk/shapes:define-output list-privacy-budget-templates-output
                                 common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (privacy-budget-template-summaries
                                   :target-type
                                   privacy-budget-template-summary-list
                                   :required common-lisp:t :member-name
                                   "privacyBudgetTemplateSummaries"))
                                 (:shape-name
                                  "ListPrivacyBudgetTemplatesOutput"))

(smithy/sdk/shapes:define-input list-privacy-budgets-input common-lisp:nil
                                ((membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t)
                                 (privacy-budget-type :target-type
                                  privacy-budget-type :required common-lisp:t
                                  :member-name "privacyBudgetType" :http-query
                                  "privacyBudgetType")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListPrivacyBudgetsInput"))

(smithy/sdk/shapes:define-output list-privacy-budgets-output common-lisp:nil
                                 ((privacy-budget-summaries :target-type
                                   privacy-budget-summary-list :required
                                   common-lisp:t :member-name
                                   "privacyBudgetSummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListPrivacyBudgetsOutput"))

(smithy/sdk/shapes:define-input list-protected-jobs-input common-lisp:nil
                                ((membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t)
                                 (status :target-type protected-job-status
                                  :member-name "status" :http-query "status")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListProtectedJobsInput"))

(smithy/sdk/shapes:define-output list-protected-jobs-output common-lisp:nil
                                 ((next-token :target-type pagination-token
                                   :member-name "nextToken")
                                  (protected-jobs :target-type
                                   protected-job-summary-list :required
                                   common-lisp:t :member-name "protectedJobs"))
                                 (:shape-name "ListProtectedJobsOutput"))

(smithy/sdk/shapes:define-structure list-protected-queries-input
                                    common-lisp:nil
                                    ((membership-identifier :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipIdentifier")
                                     (status :target-type
                                      protected-query-status :member-name
                                      "status" :http-query "status")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name "ListProtectedQueriesInput"))

(smithy/sdk/shapes:define-structure list-protected-queries-output
                                    common-lisp:nil
                                    ((next-token :target-type pagination-token
                                      :member-name "nextToken")
                                     (protected-queries :target-type
                                      protected-query-summary-list :required
                                      common-lisp:t :member-name
                                      "protectedQueries"))
                                    (:shape-name "ListProtectedQueriesOutput"))

(smithy/sdk/shapes:define-structure list-schemas-input common-lisp:nil
                                    ((collaboration-identifier :target-type
                                      collaboration-identifier :required
                                      common-lisp:t :member-name
                                      "collaborationIdentifier")
                                     (schema-type :target-type schema-type
                                      :member-name "schemaType" :http-query
                                      "schemaType")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken" :http-query
                                      "nextToken")
                                     (max-results :target-type max-results
                                      :member-name "maxResults" :http-query
                                      "maxResults"))
                                    (:shape-name "ListSchemasInput"))

(smithy/sdk/shapes:define-structure list-schemas-output common-lisp:nil
                                    ((schema-summaries :target-type
                                      schema-summary-list :required
                                      common-lisp:t :member-name
                                      "schemaSummaries")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name "ListSchemasOutput"))

(smithy/sdk/shapes:define-input list-tags-for-resource-input common-lisp:nil
                                ((resource-arn :target-type cleanrooms-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceInput"))

(smithy/sdk/shapes:define-output list-tags-for-resource-output common-lisp:nil
                                 ((tags :target-type tag-map :required
                                   common-lisp:t :member-name "tags"))
                                 (:shape-name "ListTagsForResourceOutput"))

(smithy/sdk/shapes:define-structure mlmember-abilities common-lisp:nil
                                    ((custom-mlmember-abilities :target-type
                                      custom-mlmember-abilities :required
                                      common-lisp:t :member-name
                                      "customMLMemberAbilities"))
                                    (:shape-name "MLMemberAbilities"))

(smithy/sdk/shapes:define-structure mlpayment-config common-lisp:nil
                                    ((model-training :target-type
                                      model-training-payment-config
                                      :member-name "modelTraining")
                                     (model-inference :target-type
                                      model-inference-payment-config
                                      :member-name "modelInference"))
                                    (:shape-name "MLPaymentConfig"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list member-abilities :member member-ability)

(smithy/sdk/shapes:define-enum member-ability
    common-lisp:nil
  (:can-query "CAN_QUERY")
  (:can-receive-results "CAN_RECEIVE_RESULTS")
  (:can-run-job "CAN_RUN_JOB"))

(smithy/sdk/shapes:define-list member-list :member member-specification)

(smithy/sdk/shapes:define-structure member-specification common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId")
                                     (member-abilities :target-type
                                      member-abilities :required common-lisp:t
                                      :member-name "memberAbilities")
                                     (ml-member-abilities :target-type
                                      mlmember-abilities :member-name
                                      "mlMemberAbilities")
                                     (display-name :target-type display-name
                                      :required common-lisp:t :member-name
                                      "displayName")
                                     (payment-configuration :target-type
                                      payment-configuration :member-name
                                      "paymentConfiguration"))
                                    (:shape-name "MemberSpecification"))

(smithy/sdk/shapes:define-type member-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure member-summary common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId")
                                     (status :target-type member-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (display-name :target-type display-name
                                      :required common-lisp:t :member-name
                                      "displayName")
                                     (abilities :target-type member-abilities
                                      :required common-lisp:t :member-name
                                      "abilities")
                                     (ml-abilities :target-type
                                      mlmember-abilities :member-name
                                      "mlAbilities")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (membership-id :target-type uuid
                                      :member-name "membershipId")
                                     (membership-arn :target-type
                                      membership-arn :member-name
                                      "membershipArn")
                                     (payment-configuration :target-type
                                      payment-configuration :required
                                      common-lisp:t :member-name
                                      "paymentConfiguration"))
                                    (:shape-name "MemberSummary"))

(smithy/sdk/shapes:define-list member-summary-list :member member-summary)

(smithy/sdk/shapes:define-structure membership common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type membership-arn :required
                                      common-lisp:t :member-name "arn")
                                     (collaboration-arn :target-type
                                      collaboration-arn :required common-lisp:t
                                      :member-name "collaborationArn")
                                     (collaboration-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "collaborationId")
                                     (collaboration-creator-account-id
                                      :target-type account-id :required
                                      common-lisp:t :member-name
                                      "collaborationCreatorAccountId")
                                     (collaboration-creator-display-name
                                      :target-type display-name :required
                                      common-lisp:t :member-name
                                      "collaborationCreatorDisplayName")
                                     (collaboration-name :target-type
                                      collaboration-name :required
                                      common-lisp:t :member-name
                                      "collaborationName")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (status :target-type membership-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (member-abilities :target-type
                                      member-abilities :required common-lisp:t
                                      :member-name "memberAbilities")
                                     (ml-member-abilities :target-type
                                      mlmember-abilities :member-name
                                      "mlMemberAbilities")
                                     (query-log-status :target-type
                                      membership-query-log-status :required
                                      common-lisp:t :member-name
                                      "queryLogStatus")
                                     (job-log-status :target-type
                                      membership-job-log-status :member-name
                                      "jobLogStatus")
                                     (default-result-configuration :target-type
                                      membership-protected-query-result-configuration
                                      :member-name
                                      "defaultResultConfiguration")
                                     (default-job-result-configuration
                                      :target-type
                                      membership-protected-job-result-configuration
                                      :member-name
                                      "defaultJobResultConfiguration")
                                     (payment-configuration :target-type
                                      membership-payment-configuration
                                      :required common-lisp:t :member-name
                                      "paymentConfiguration"))
                                    (:shape-name "Membership"))

(smithy/sdk/shapes:define-type membership-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type membership-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure membership-job-compute-payment-config
                                    common-lisp:nil
                                    ((is-responsible :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "isResponsible"))
                                    (:shape-name
                                     "MembershipJobComputePaymentConfig"))

(smithy/sdk/shapes:define-enum membership-job-log-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure membership-mlpayment-config common-lisp:nil
                                    ((model-training :target-type
                                      membership-model-training-payment-config
                                      :member-name "modelTraining")
                                     (model-inference :target-type
                                      membership-model-inference-payment-config
                                      :member-name "modelInference"))
                                    (:shape-name "MembershipMLPaymentConfig"))

(smithy/sdk/shapes:define-structure membership-model-inference-payment-config
                                    common-lisp:nil
                                    ((is-responsible :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "isResponsible"))
                                    (:shape-name
                                     "MembershipModelInferencePaymentConfig"))

(smithy/sdk/shapes:define-structure membership-model-training-payment-config
                                    common-lisp:nil
                                    ((is-responsible :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "isResponsible"))
                                    (:shape-name
                                     "MembershipModelTrainingPaymentConfig"))

(smithy/sdk/shapes:define-structure membership-payment-configuration
                                    common-lisp:nil
                                    ((query-compute :target-type
                                      membership-query-compute-payment-config
                                      :required common-lisp:t :member-name
                                      "queryCompute")
                                     (machine-learning :target-type
                                      membership-mlpayment-config :member-name
                                      "machineLearning")
                                     (job-compute :target-type
                                      membership-job-compute-payment-config
                                      :member-name "jobCompute"))
                                    (:shape-name
                                     "MembershipPaymentConfiguration"))

(smithy/sdk/shapes:define-union membership-protected-job-output-configuration
                                common-lisp:nil
                                ((s3 :target-type
                                  protected-job-s3output-configuration-input
                                  :member-name "s3"))
                                (:shape-name
                                 "MembershipProtectedJobOutputConfiguration"))

(smithy/sdk/shapes:define-structure
 membership-protected-job-result-configuration common-lisp:nil
 ((output-configuration :target-type
   membership-protected-job-output-configuration :required common-lisp:t
   :member-name "outputConfiguration")
  (role-arn :target-type role-arn :required common-lisp:t :member-name
   "roleArn"))
 (:shape-name "MembershipProtectedJobResultConfiguration"))

(smithy/sdk/shapes:define-union membership-protected-query-output-configuration
                                common-lisp:nil
                                ((s3 :target-type
                                  protected-query-s3output-configuration
                                  :member-name "s3"))
                                (:shape-name
                                 "MembershipProtectedQueryOutputConfiguration"))

(smithy/sdk/shapes:define-structure
 membership-protected-query-result-configuration common-lisp:nil
 ((output-configuration :target-type
   membership-protected-query-output-configuration :required common-lisp:t
   :member-name "outputConfiguration")
  (role-arn :target-type role-arn :member-name "roleArn"))
 (:shape-name "MembershipProtectedQueryResultConfiguration"))

(smithy/sdk/shapes:define-structure membership-query-compute-payment-config
                                    common-lisp:nil
                                    ((is-responsible :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "isResponsible"))
                                    (:shape-name
                                     "MembershipQueryComputePaymentConfig"))

(smithy/sdk/shapes:define-enum membership-query-log-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

common-lisp:nil

(smithy/sdk/shapes:define-type membership-status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure membership-summary common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (arn :target-type membership-arn :required
                                      common-lisp:t :member-name "arn")
                                     (collaboration-arn :target-type
                                      collaboration-arn :required common-lisp:t
                                      :member-name "collaborationArn")
                                     (collaboration-id :target-type
                                      collaboration-identifier :required
                                      common-lisp:t :member-name
                                      "collaborationId")
                                     (collaboration-creator-account-id
                                      :target-type account-id :required
                                      common-lisp:t :member-name
                                      "collaborationCreatorAccountId")
                                     (collaboration-creator-display-name
                                      :target-type display-name :required
                                      common-lisp:t :member-name
                                      "collaborationCreatorDisplayName")
                                     (collaboration-name :target-type
                                      collaboration-name :required
                                      common-lisp:t :member-name
                                      "collaborationName")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (status :target-type membership-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (member-abilities :target-type
                                      member-abilities :required common-lisp:t
                                      :member-name "memberAbilities")
                                     (ml-member-abilities :target-type
                                      mlmember-abilities :member-name
                                      "mlMemberAbilities")
                                     (payment-configuration :target-type
                                      membership-payment-configuration
                                      :required common-lisp:t :member-name
                                      "paymentConfiguration"))
                                    (:shape-name "MembershipSummary"))

(smithy/sdk/shapes:define-list membership-summary-list :member
                               membership-summary)

(smithy/sdk/shapes:define-structure model-inference-payment-config
                                    common-lisp:nil
                                    ((is-responsible :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "isResponsible"))
                                    (:shape-name "ModelInferencePaymentConfig"))

(smithy/sdk/shapes:define-structure model-training-payment-config
                                    common-lisp:nil
                                    ((is-responsible :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "isResponsible"))
                                    (:shape-name "ModelTrainingPaymentConfig"))

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map parameter-map :key parameter-name :value
                              parameter-value)

(smithy/sdk/shapes:define-type parameter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum parameter-type
    common-lisp:nil
  (:smallint "SMALLINT")
  (:integer "INTEGER")
  (:bigint "BIGINT")
  (:decimal "DECIMAL")
  (:real "REAL")
  (:double-precision "DOUBLE_PRECISION")
  (:boolean "BOOLEAN")
  (:char "CHAR")
  (:varchar "VARCHAR")
  (:date "DATE")
  (:timestamp "TIMESTAMP")
  (:timestamptz "TIMESTAMPTZ")
  (:time "TIME")
  (:timetz "TIMETZ")
  (:varbyte "VARBYTE")
  (:binary "BINARY")
  (:byte "BYTE")
  (:character "CHARACTER")
  (:double "DOUBLE")
  (:float "FLOAT")
  (:int "INT")
  (:long "LONG")
  (:numeric "NUMERIC")
  (:short "SHORT")
  (:string "STRING")
  (:timestamp-ltz "TIMESTAMP_LTZ")
  (:timestamp-ntz "TIMESTAMP_NTZ")
  (:tinyint "TINYINT"))

(smithy/sdk/shapes:define-type parameter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure payment-configuration common-lisp:nil
                                    ((query-compute :target-type
                                      query-compute-payment-config :required
                                      common-lisp:t :member-name
                                      "queryCompute")
                                     (machine-learning :target-type
                                      mlpayment-config :member-name
                                      "machineLearning")
                                     (job-compute :target-type
                                      job-compute-payment-config :member-name
                                      "jobCompute"))
                                    (:shape-name "PaymentConfiguration"))

(smithy/sdk/shapes:define-input populate-id-mapping-table-input common-lisp:nil
                                ((id-mapping-table-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "idMappingTableIdentifier" :http-label
                                  common-lisp:t)
                                 (membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t))
                                (:shape-name "PopulateIdMappingTableInput"))

(smithy/sdk/shapes:define-output populate-id-mapping-table-output
                                 common-lisp:nil
                                 ((id-mapping-job-id :target-type uuid
                                   :required common-lisp:t :member-name
                                   "idMappingJobId"))
                                 (:shape-name "PopulateIdMappingTableOutput"))

(smithy/sdk/shapes:define-input preview-privacy-impact-input common-lisp:nil
                                ((membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t)
                                 (parameters :target-type
                                  preview-privacy-impact-parameters-input
                                  :required common-lisp:t :member-name
                                  "parameters"))
                                (:shape-name "PreviewPrivacyImpactInput"))

(smithy/sdk/shapes:define-output preview-privacy-impact-output common-lisp:nil
                                 ((privacy-impact :target-type privacy-impact
                                   :required common-lisp:t :member-name
                                   "privacyImpact"))
                                 (:shape-name "PreviewPrivacyImpactOutput"))

(smithy/sdk/shapes:define-union preview-privacy-impact-parameters-input
                                common-lisp:nil
                                ((differential-privacy :target-type
                                  differential-privacy-preview-parameters-input
                                  :member-name "differentialPrivacy"))
                                (:shape-name
                                 "PreviewPrivacyImpactParametersInput"))

(smithy/sdk/shapes:define-union privacy-budget common-lisp:nil
                                ((differential-privacy :target-type
                                  differential-privacy-privacy-budget
                                  :member-name "differentialPrivacy"))
                                (:shape-name "PrivacyBudget"))

(smithy/sdk/shapes:define-structure privacy-budget-summary common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (privacy-budget-template-id :target-type
                                      privacy-budget-template-identifier
                                      :required common-lisp:t :member-name
                                      "privacyBudgetTemplateId")
                                     (privacy-budget-template-arn :target-type
                                      privacy-budget-template-arn :required
                                      common-lisp:t :member-name
                                      "privacyBudgetTemplateArn")
                                     (membership-id :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipId")
                                     (membership-arn :target-type
                                      membership-arn :required common-lisp:t
                                      :member-name "membershipArn")
                                     (collaboration-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "collaborationId")
                                     (collaboration-arn :target-type
                                      collaboration-arn :required common-lisp:t
                                      :member-name "collaborationArn")
                                     (type :target-type privacy-budget-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (budget :target-type privacy-budget
                                      :required common-lisp:t :member-name
                                      "budget"))
                                    (:shape-name "PrivacyBudgetSummary"))

(smithy/sdk/shapes:define-list privacy-budget-summary-list :member
                               privacy-budget-summary)

(smithy/sdk/shapes:define-structure privacy-budget-template common-lisp:nil
                                    ((id :target-type
                                      privacy-budget-template-identifier
                                      :required common-lisp:t :member-name
                                      "id")
                                     (arn :target-type
                                      privacy-budget-template-arn :required
                                      common-lisp:t :member-name "arn")
                                     (membership-id :target-type uuid :required
                                      common-lisp:t :member-name
                                      "membershipId")
                                     (membership-arn :target-type
                                      membership-arn :required common-lisp:t
                                      :member-name "membershipArn")
                                     (collaboration-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "collaborationId")
                                     (collaboration-arn :target-type
                                      collaboration-arn :required common-lisp:t
                                      :member-name "collaborationArn")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (privacy-budget-type :target-type
                                      privacy-budget-type :required
                                      common-lisp:t :member-name
                                      "privacyBudgetType")
                                     (auto-refresh :target-type
                                      privacy-budget-template-auto-refresh
                                      :required common-lisp:t :member-name
                                      "autoRefresh")
                                     (parameters :target-type
                                      privacy-budget-template-parameters-output
                                      :required common-lisp:t :member-name
                                      "parameters"))
                                    (:shape-name "PrivacyBudgetTemplate"))

(smithy/sdk/shapes:define-type privacy-budget-template-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum privacy-budget-template-auto-refresh
    common-lisp:nil
  (:calendar-month "CALENDAR_MONTH")
  (:none "NONE"))

(smithy/sdk/shapes:define-type privacy-budget-template-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union privacy-budget-template-parameters-input
                                common-lisp:nil
                                ((differential-privacy :target-type
                                  differential-privacy-template-parameters-input
                                  :member-name "differentialPrivacy"))
                                (:shape-name
                                 "PrivacyBudgetTemplateParametersInput"))

(smithy/sdk/shapes:define-union privacy-budget-template-parameters-output
                                common-lisp:nil
                                ((differential-privacy :target-type
                                  differential-privacy-template-parameters-output
                                  :member-name "differentialPrivacy"))
                                (:shape-name
                                 "PrivacyBudgetTemplateParametersOutput"))

common-lisp:nil

(smithy/sdk/shapes:define-structure privacy-budget-template-summary
                                    common-lisp:nil
                                    ((id :target-type
                                      privacy-budget-template-identifier
                                      :required common-lisp:t :member-name
                                      "id")
                                     (arn :target-type
                                      privacy-budget-template-arn :required
                                      common-lisp:t :member-name "arn")
                                     (membership-id :target-type uuid :required
                                      common-lisp:t :member-name
                                      "membershipId")
                                     (membership-arn :target-type
                                      membership-arn :required common-lisp:t
                                      :member-name "membershipArn")
                                     (collaboration-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "collaborationId")
                                     (collaboration-arn :target-type
                                      collaboration-arn :required common-lisp:t
                                      :member-name "collaborationArn")
                                     (privacy-budget-type :target-type
                                      privacy-budget-type :required
                                      common-lisp:t :member-name
                                      "privacyBudgetType")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime"))
                                    (:shape-name
                                     "PrivacyBudgetTemplateSummary"))

(smithy/sdk/shapes:define-list privacy-budget-template-summary-list :member
                               privacy-budget-template-summary)

(smithy/sdk/shapes:define-union privacy-budget-template-update-parameters
                                common-lisp:nil
                                ((differential-privacy :target-type
                                  differential-privacy-template-update-parameters
                                  :member-name "differentialPrivacy"))
                                (:shape-name
                                 "PrivacyBudgetTemplateUpdateParameters"))

(smithy/sdk/shapes:define-enum privacy-budget-type
    common-lisp:nil
  (:differential-privacy "DIFFERENTIAL_PRIVACY"))

(smithy/sdk/shapes:define-union privacy-impact common-lisp:nil
                                ((differential-privacy :target-type
                                  differential-privacy-privacy-impact
                                  :member-name "differentialPrivacy"))
                                (:shape-name "PrivacyImpact"))

(smithy/sdk/shapes:define-structure protected-job common-lisp:nil
                                    ((id :target-type protected-job-identifier
                                      :required common-lisp:t :member-name
                                      "id")
                                     (membership-id :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipId")
                                     (membership-arn :target-type
                                      membership-arn :required common-lisp:t
                                      :member-name "membershipArn")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (job-parameters :target-type
                                      protected-job-parameters :member-name
                                      "jobParameters")
                                     (status :target-type protected-job-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (result-configuration :target-type
                                      protected-job-result-configuration-output
                                      :member-name "resultConfiguration")
                                     (statistics :target-type
                                      protected-job-statistics :member-name
                                      "statistics")
                                     (result :target-type protected-job-result
                                      :member-name "result")
                                     (error :target-type protected-job-error
                                      :member-name "error"))
                                    (:shape-name "ProtectedJob"))

(smithy/sdk/shapes:define-enum protected-job-analysis-type
    common-lisp:nil
  (:direct-analysis "DIRECT_ANALYSIS"))

(smithy/sdk/shapes:define-union protected-job-configuration-details
                                common-lisp:nil
                                ((direct-analysis-configuration-details
                                  :target-type
                                  protected-job-direct-analysis-configuration-details
                                  :member-name
                                  "directAnalysisConfigurationDetails"))
                                (:shape-name
                                 "ProtectedJobConfigurationDetails"))

(smithy/sdk/shapes:define-structure
 protected-job-direct-analysis-configuration-details common-lisp:nil
 ((receiver-account-ids :target-type protected-job-receiver-account-ids
   :member-name "receiverAccountIds"))
 (:shape-name "ProtectedJobDirectAnalysisConfigurationDetails"))

(smithy/sdk/shapes:define-structure protected-job-error common-lisp:nil
                                    ((message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message")
                                     (code :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "code"))
                                    (:shape-name "ProtectedJobError"))

(smithy/sdk/shapes:define-type protected-job-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 protected-job-member-output-configuration-input common-lisp:nil
 ((account-id :target-type account-id :required common-lisp:t :member-name
   "accountId"))
 (:shape-name "ProtectedJobMemberOutputConfigurationInput"))

(smithy/sdk/shapes:define-structure
 protected-job-member-output-configuration-output common-lisp:nil
 ((account-id :target-type account-id :required common-lisp:t :member-name
   "accountId"))
 (:shape-name "ProtectedJobMemberOutputConfigurationOutput"))

(smithy/sdk/shapes:define-list protected-job-member-output-list :member
                               protected-job-single-member-output)

(smithy/sdk/shapes:define-union protected-job-output common-lisp:nil
                                ((s3 :target-type protected-job-s3output
                                  :member-name "s3")
                                 (member-list :target-type
                                  protected-job-member-output-list :member-name
                                  "memberList"))
                                (:shape-name "ProtectedJobOutput"))

(smithy/sdk/shapes:define-union protected-job-output-configuration-input
                                common-lisp:nil
                                ((member :target-type
                                  protected-job-member-output-configuration-input
                                  :member-name "member"))
                                (:shape-name
                                 "ProtectedJobOutputConfigurationInput"))

(smithy/sdk/shapes:define-union protected-job-output-configuration-output
                                common-lisp:nil
                                ((s3 :target-type
                                  protected-job-s3output-configuration-output
                                  :member-name "s3")
                                 (member :target-type
                                  protected-job-member-output-configuration-output
                                  :member-name "member"))
                                (:shape-name
                                 "ProtectedJobOutputConfigurationOutput"))

(smithy/sdk/shapes:define-structure protected-job-parameters common-lisp:nil
                                    ((analysis-template-arn :target-type
                                      analysis-template-arn :member-name
                                      "analysisTemplateArn"))
                                    (:shape-name "ProtectedJobParameters"))

(smithy/sdk/shapes:define-list protected-job-receiver-account-ids :member
                               account-id)

(smithy/sdk/shapes:define-structure protected-job-receiver-configuration
                                    common-lisp:nil
                                    ((analysis-type :target-type
                                      protected-job-analysis-type :required
                                      common-lisp:t :member-name
                                      "analysisType")
                                     (configuration-details :target-type
                                      protected-job-configuration-details
                                      :member-name "configurationDetails"))
                                    (:shape-name
                                     "ProtectedJobReceiverConfiguration"))

(smithy/sdk/shapes:define-list protected-job-receiver-configurations :member
                               protected-job-receiver-configuration)

(smithy/sdk/shapes:define-structure protected-job-result common-lisp:nil
                                    ((output :target-type protected-job-output
                                      :required common-lisp:t :member-name
                                      "output"))
                                    (:shape-name "ProtectedJobResult"))

(smithy/sdk/shapes:define-structure protected-job-result-configuration-input
                                    common-lisp:nil
                                    ((output-configuration :target-type
                                      protected-job-output-configuration-input
                                      :required common-lisp:t :member-name
                                      "outputConfiguration"))
                                    (:shape-name
                                     "ProtectedJobResultConfigurationInput"))

(smithy/sdk/shapes:define-structure protected-job-result-configuration-output
                                    common-lisp:nil
                                    ((output-configuration :target-type
                                      protected-job-output-configuration-output
                                      :required common-lisp:t :member-name
                                      "outputConfiguration"))
                                    (:shape-name
                                     "ProtectedJobResultConfigurationOutput"))

(smithy/sdk/shapes:define-structure protected-job-s3output common-lisp:nil
                                    ((location :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "location"))
                                    (:shape-name "ProtectedJobS3Output"))

(smithy/sdk/shapes:define-structure protected-job-s3output-configuration-input
                                    common-lisp:nil
                                    ((bucket :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "bucket")
                                     (key-prefix :target-type key-prefix
                                      :member-name "keyPrefix"))
                                    (:shape-name
                                     "ProtectedJobS3OutputConfigurationInput"))

(smithy/sdk/shapes:define-structure protected-job-s3output-configuration-output
                                    common-lisp:nil
                                    ((bucket :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "bucket")
                                     (key-prefix :target-type key-prefix
                                      :member-name "keyPrefix"))
                                    (:shape-name
                                     "ProtectedJobS3OutputConfigurationOutput"))

(smithy/sdk/shapes:define-structure protected-job-single-member-output
                                    common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId"))
                                    (:shape-name
                                     "ProtectedJobSingleMemberOutput"))

(smithy/sdk/shapes:define-structure protected-job-statistics common-lisp:nil
                                    ((total-duration-in-millis :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "totalDurationInMillis")
                                     (billed-resource-utilization :target-type
                                      billed-job-resource-utilization
                                      :member-name
                                      "billedResourceUtilization"))
                                    (:shape-name "ProtectedJobStatistics"))

(smithy/sdk/shapes:define-enum protected-job-status
    common-lisp:nil
  (:submitted "SUBMITTED")
  (:started "STARTED")
  (:cancelled "CANCELLED")
  (:cancelling "CANCELLING")
  (:failed "FAILED")
  (:success "SUCCESS"))

(smithy/sdk/shapes:define-structure protected-job-summary common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (membership-id :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipId")
                                     (membership-arn :target-type
                                      membership-arn :required common-lisp:t
                                      :member-name "membershipArn")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (status :target-type protected-job-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (receiver-configurations :target-type
                                      protected-job-receiver-configurations
                                      :required common-lisp:t :member-name
                                      "receiverConfigurations"))
                                    (:shape-name "ProtectedJobSummary"))

(smithy/sdk/shapes:define-list protected-job-summary-list :member
                               protected-job-summary)

(smithy/sdk/shapes:define-enum protected-job-type
    common-lisp:nil
  (:pyspark "PYSPARK"))

(smithy/sdk/shapes:define-structure protected-query common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (membership-id :target-type uuid :required
                                      common-lisp:t :member-name
                                      "membershipId")
                                     (membership-arn :target-type
                                      membership-arn :required common-lisp:t
                                      :member-name "membershipArn")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (sql-parameters :target-type
                                      protected-query-sqlparameters
                                      :member-name "sqlParameters")
                                     (status :target-type
                                      protected-query-status :required
                                      common-lisp:t :member-name "status")
                                     (result-configuration :target-type
                                      protected-query-result-configuration
                                      :member-name "resultConfiguration")
                                     (statistics :target-type
                                      protected-query-statistics :member-name
                                      "statistics")
                                     (result :target-type
                                      protected-query-result :member-name
                                      "result")
                                     (error :target-type protected-query-error
                                      :member-name "error")
                                     (differential-privacy :target-type
                                      differential-privacy-parameters
                                      :member-name "differentialPrivacy")
                                     (compute-configuration :target-type
                                      compute-configuration :member-name
                                      "computeConfiguration"))
                                    (:shape-name "ProtectedQuery"))

(smithy/sdk/shapes:define-structure protected-query-distribute-output
                                    common-lisp:nil
                                    ((s3 :target-type protected-query-s3output
                                      :member-name "s3")
                                     (member-list :target-type
                                      protected-query-member-output-list
                                      :member-name "memberList"))
                                    (:shape-name
                                     "ProtectedQueryDistributeOutput"))

(smithy/sdk/shapes:define-structure
 protected-query-distribute-output-configuration common-lisp:nil
 ((locations :target-type
   protected-query-distribute-output-configuration-locations :required
   common-lisp:t :member-name "locations"))
 (:shape-name "ProtectedQueryDistributeOutputConfiguration"))

(smithy/sdk/shapes:define-union
 protected-query-distribute-output-configuration-location common-lisp:nil
 ((s3 :target-type protected-query-s3output-configuration :member-name "s3")
  (member :target-type protected-query-member-output-configuration :member-name
   "member"))
 (:shape-name "ProtectedQueryDistributeOutputConfigurationLocation"))

(smithy/sdk/shapes:define-list
 protected-query-distribute-output-configuration-locations :member
 protected-query-distribute-output-configuration-location)

(smithy/sdk/shapes:define-structure protected-query-error common-lisp:nil
                                    ((message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message")
                                     (code :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "code"))
                                    (:shape-name "ProtectedQueryError"))

(smithy/sdk/shapes:define-type protected-query-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure protected-query-member-output-configuration
                                    common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId"))
                                    (:shape-name
                                     "ProtectedQueryMemberOutputConfiguration"))

(smithy/sdk/shapes:define-list protected-query-member-output-list :member
                               protected-query-single-member-output)

(smithy/sdk/shapes:define-union protected-query-output common-lisp:nil
                                ((s3 :target-type protected-query-s3output
                                  :member-name "s3")
                                 (member-list :target-type
                                  protected-query-member-output-list
                                  :member-name "memberList")
                                 (distribute :target-type
                                  protected-query-distribute-output
                                  :member-name "distribute"))
                                (:shape-name "ProtectedQueryOutput"))

(smithy/sdk/shapes:define-union protected-query-output-configuration
                                common-lisp:nil
                                ((s3 :target-type
                                  protected-query-s3output-configuration
                                  :member-name "s3")
                                 (member :target-type
                                  protected-query-member-output-configuration
                                  :member-name "member")
                                 (distribute :target-type
                                  protected-query-distribute-output-configuration
                                  :member-name "distribute"))
                                (:shape-name
                                 "ProtectedQueryOutputConfiguration"))

(smithy/sdk/shapes:define-structure protected-query-result common-lisp:nil
                                    ((output :target-type
                                      protected-query-output :required
                                      common-lisp:t :member-name "output"))
                                    (:shape-name "ProtectedQueryResult"))

(smithy/sdk/shapes:define-structure protected-query-result-configuration
                                    common-lisp:nil
                                    ((output-configuration :target-type
                                      protected-query-output-configuration
                                      :required common-lisp:t :member-name
                                      "outputConfiguration"))
                                    (:shape-name
                                     "ProtectedQueryResultConfiguration"))

(smithy/sdk/shapes:define-structure protected-query-s3output common-lisp:nil
                                    ((location :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "location"))
                                    (:shape-name "ProtectedQueryS3Output"))

(smithy/sdk/shapes:define-structure protected-query-s3output-configuration
                                    common-lisp:nil
                                    ((result-format :target-type result-format
                                      :required common-lisp:t :member-name
                                      "resultFormat")
                                     (bucket :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "bucket")
                                     (key-prefix :target-type key-prefix
                                      :member-name "keyPrefix")
                                     (single-file-output :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "singleFileOutput"))
                                    (:shape-name
                                     "ProtectedQueryS3OutputConfiguration"))

(smithy/sdk/shapes:define-structure protected-query-sqlparameters
                                    common-lisp:nil
                                    ((query-string :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "queryString")
                                     (analysis-template-arn :target-type
                                      analysis-template-arn :member-name
                                      "analysisTemplateArn")
                                     (parameters :target-type parameter-map
                                      :member-name "parameters"))
                                    (:shape-name "ProtectedQuerySQLParameters"))

(smithy/sdk/shapes:define-structure protected-query-single-member-output
                                    common-lisp:nil
                                    ((account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "accountId"))
                                    (:shape-name
                                     "ProtectedQuerySingleMemberOutput"))

(smithy/sdk/shapes:define-structure protected-query-statistics common-lisp:nil
                                    ((total-duration-in-millis :target-type
                                      smithy/sdk/smithy-types:long :member-name
                                      "totalDurationInMillis")
                                     (billed-resource-utilization :target-type
                                      billed-resource-utilization :member-name
                                      "billedResourceUtilization"))
                                    (:shape-name "ProtectedQueryStatistics"))

(smithy/sdk/shapes:define-type protected-query-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure protected-query-summary common-lisp:nil
                                    ((id :target-type uuid :required
                                      common-lisp:t :member-name "id")
                                     (membership-id :target-type uuid :required
                                      common-lisp:t :member-name
                                      "membershipId")
                                     (membership-arn :target-type
                                      membership-arn :required common-lisp:t
                                      :member-name "membershipArn")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (status :target-type
                                      protected-query-status :required
                                      common-lisp:t :member-name "status")
                                     (receiver-configurations :target-type
                                      receiver-configurations-list :required
                                      common-lisp:t :member-name
                                      "receiverConfigurations"))
                                    (:shape-name "ProtectedQuerySummary"))

(smithy/sdk/shapes:define-list protected-query-summary-list :member
                               protected-query-summary)

(smithy/sdk/shapes:define-type protected-query-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure query-compute-payment-config
                                    common-lisp:nil
                                    ((is-responsible :target-type
                                      smithy/sdk/smithy-types:boolean :required
                                      common-lisp:t :member-name
                                      "isResponsible"))
                                    (:shape-name "QueryComputePaymentConfig"))

(smithy/sdk/shapes:define-union query-constraint common-lisp:nil
                                ((require-overlap :target-type
                                  query-constraint-require-overlap :member-name
                                  "requireOverlap"))
                                (:shape-name "QueryConstraint"))

(smithy/sdk/shapes:define-list query-constraint-list :member query-constraint)

(smithy/sdk/shapes:define-structure query-constraint-require-overlap
                                    common-lisp:nil
                                    ((columns :target-type
                                      analysis-rule-column-list :member-name
                                      "columns"))
                                    (:shape-name
                                     "QueryConstraintRequireOverlap"))

(smithy/sdk/shapes:define-list query-tables :member table-alias)

(smithy/sdk/shapes:define-list receiver-account-ids :member account-id)

(smithy/sdk/shapes:define-structure receiver-configuration common-lisp:nil
                                    ((analysis-type :target-type analysis-type
                                      :required common-lisp:t :member-name
                                      "analysisType")
                                     (configuration-details :target-type
                                      configuration-details :member-name
                                      "configurationDetails"))
                                    (:shape-name "ReceiverConfiguration"))

(smithy/sdk/shapes:define-list receiver-configurations-list :member
                               receiver-configuration)

(smithy/sdk/shapes:define-type resource-alias smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type result-format smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((bucket :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "bucket")
                                     (key :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "key"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-type scalar-functions smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list scalar-functions-list :member scalar-functions)

(smithy/sdk/shapes:define-structure schema common-lisp:nil
                                    ((columns :target-type column-list
                                      :required common-lisp:t :member-name
                                      "columns")
                                     (partition-keys :target-type column-list
                                      :required common-lisp:t :member-name
                                      "partitionKeys")
                                     (analysis-rule-types :target-type
                                      analysis-rule-type-list :required
                                      common-lisp:t :member-name
                                      "analysisRuleTypes")
                                     (analysis-method :target-type
                                      analysis-method :member-name
                                      "analysisMethod")
                                     (selected-analysis-methods :target-type
                                      selected-analysis-methods :member-name
                                      "selectedAnalysisMethods")
                                     (creator-account-id :target-type
                                      account-id :required common-lisp:t
                                      :member-name "creatorAccountId")
                                     (name :target-type table-alias :required
                                      common-lisp:t :member-name "name")
                                     (collaboration-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "collaborationId")
                                     (collaboration-arn :target-type
                                      collaboration-arn :required common-lisp:t
                                      :member-name "collaborationArn")
                                     (description :target-type
                                      table-description :required common-lisp:t
                                      :member-name "description")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (type :target-type schema-type :required
                                      common-lisp:t :member-name "type")
                                     (schema-status-details :target-type
                                      schema-status-detail-list :required
                                      common-lisp:t :member-name
                                      "schemaStatusDetails")
                                     (schema-type-properties :target-type
                                      schema-type-properties :member-name
                                      "schemaTypeProperties"))
                                    (:shape-name "Schema"))

(smithy/sdk/shapes:define-list schema-analysis-rule-list :member analysis-rule)

(smithy/sdk/shapes:define-structure schema-analysis-rule-request
                                    common-lisp:nil
                                    ((name :target-type table-alias :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type analysis-rule-type
                                      :required common-lisp:t :member-name
                                      "type"))
                                    (:shape-name "SchemaAnalysisRuleRequest"))

(smithy/sdk/shapes:define-list schema-analysis-rule-request-list :member
                               schema-analysis-rule-request)

(smithy/sdk/shapes:define-enum schema-configuration
    common-lisp:nil
  (:differential-privacy "DIFFERENTIAL_PRIVACY"))

(smithy/sdk/shapes:define-list schema-configuration-list :member
                               schema-configuration)

(smithy/sdk/shapes:define-list schema-list :member schema)

(smithy/sdk/shapes:define-enum schema-status
    common-lisp:nil
  (:ready "READY")
  (:not-ready "NOT_READY"))

(smithy/sdk/shapes:define-structure schema-status-detail common-lisp:nil
                                    ((status :target-type schema-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (reasons :target-type
                                      schema-status-reason-list :member-name
                                      "reasons")
                                     (analysis-rule-type :target-type
                                      analysis-rule-type :member-name
                                      "analysisRuleType")
                                     (configurations :target-type
                                      schema-configuration-list :member-name
                                      "configurations")
                                     (analysis-type :target-type analysis-type
                                      :required common-lisp:t :member-name
                                      "analysisType"))
                                    (:shape-name "SchemaStatusDetail"))

(smithy/sdk/shapes:define-list schema-status-detail-list :member
                               schema-status-detail)

(smithy/sdk/shapes:define-structure schema-status-reason common-lisp:nil
                                    ((code :target-type
                                      schema-status-reason-code :required
                                      common-lisp:t :member-name "code")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "SchemaStatusReason"))

(smithy/sdk/shapes:define-enum schema-status-reason-code
    common-lisp:nil
  (:analysis-rule-missing "ANALYSIS_RULE_MISSING")
  (:analysis-templates-not-configured "ANALYSIS_TEMPLATES_NOT_CONFIGURED")
  (:analysis-providers-not-configured "ANALYSIS_PROVIDERS_NOT_CONFIGURED")
  (:differential-privacy-policy-not-configured
   "DIFFERENTIAL_PRIVACY_POLICY_NOT_CONFIGURED")
  (:id-mapping-table-not-populated "ID_MAPPING_TABLE_NOT_POPULATED")
  (:collaboration-analysis-rule-not-configured
   "COLLABORATION_ANALYSIS_RULE_NOT_CONFIGURED")
  (:additional-analyses-not-configured "ADDITIONAL_ANALYSES_NOT_CONFIGURED")
  (:result-receivers-not-configured "RESULT_RECEIVERS_NOT_CONFIGURED")
  (:additional-analyses-not-allowed "ADDITIONAL_ANALYSES_NOT_ALLOWED")
  (:result-receivers-not-allowed "RESULT_RECEIVERS_NOT_ALLOWED")
  (:analysis-rule-types-not-compatible "ANALYSIS_RULE_TYPES_NOT_COMPATIBLE"))

(smithy/sdk/shapes:define-list schema-status-reason-list :member
                               schema-status-reason)

(smithy/sdk/shapes:define-structure schema-summary common-lisp:nil
                                    ((name :target-type table-alias :required
                                      common-lisp:t :member-name "name")
                                     (type :target-type schema-type :required
                                      common-lisp:t :member-name "type")
                                     (creator-account-id :target-type
                                      account-id :required common-lisp:t
                                      :member-name "creatorAccountId")
                                     (create-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createTime")
                                     (update-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updateTime")
                                     (collaboration-id :target-type uuid
                                      :required common-lisp:t :member-name
                                      "collaborationId")
                                     (collaboration-arn :target-type
                                      collaboration-arn :required common-lisp:t
                                      :member-name "collaborationArn")
                                     (analysis-rule-types :target-type
                                      analysis-rule-type-list :required
                                      common-lisp:t :member-name
                                      "analysisRuleTypes")
                                     (analysis-method :target-type
                                      analysis-method :member-name
                                      "analysisMethod")
                                     (selected-analysis-methods :target-type
                                      selected-analysis-methods :member-name
                                      "selectedAnalysisMethods"))
                                    (:shape-name "SchemaSummary"))

(smithy/sdk/shapes:define-list schema-summary-list :member schema-summary)

(smithy/sdk/shapes:define-enum schema-type
    common-lisp:nil
  (:table "TABLE")
  (:id-mapping-table "ID_MAPPING_TABLE"))

(smithy/sdk/shapes:define-union schema-type-properties common-lisp:nil
                                ((id-mapping-table :target-type
                                  id-mapping-table-schema-type-properties
                                  :member-name "idMappingTable"))
                                (:shape-name "SchemaTypeProperties"))

(smithy/sdk/shapes:define-type secrets-manager-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum selected-analysis-method
    common-lisp:nil
  (:direct-query "DIRECT_QUERY")
  (:direct-job "DIRECT_JOB"))

(smithy/sdk/shapes:define-list selected-analysis-methods :member
                               selected-analysis-method)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (quota-name :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "quotaName")
                                 (quota-value :target-type
                                  smithy/sdk/smithy-types:double :required
                                  common-lisp:t :member-name "quotaValue"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type snowflake-account-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type snowflake-database-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type snowflake-schema-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type snowflake-table-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure snowflake-table-reference common-lisp:nil
                                    ((secret-arn :target-type
                                      secrets-manager-arn :required
                                      common-lisp:t :member-name "secretArn")
                                     (account-identifier :target-type
                                      snowflake-account-identifier :required
                                      common-lisp:t :member-name
                                      "accountIdentifier")
                                     (database-name :target-type
                                      snowflake-database-name :required
                                      common-lisp:t :member-name
                                      "databaseName")
                                     (table-name :target-type
                                      snowflake-table-name :required
                                      common-lisp:t :member-name "tableName")
                                     (schema-name :target-type
                                      snowflake-schema-name :required
                                      common-lisp:t :member-name "schemaName")
                                     (table-schema :target-type
                                      snowflake-table-schema :required
                                      common-lisp:t :member-name
                                      "tableSchema"))
                                    (:shape-name "SnowflakeTableReference"))

(smithy/sdk/shapes:define-union snowflake-table-schema common-lisp:nil
                                ((v1 :target-type snowflake-table-schema-list
                                  :member-name "v1"))
                                (:shape-name "SnowflakeTableSchema"))

(smithy/sdk/shapes:define-list snowflake-table-schema-list :member
                               snowflake-table-schema-v1)

(smithy/sdk/shapes:define-structure snowflake-table-schema-v1 common-lisp:nil
                                    ((column-name :target-type column-name
                                      :required common-lisp:t :member-name
                                      "columnName")
                                     (column-type :target-type
                                      column-type-string :required
                                      common-lisp:t :member-name "columnType"))
                                    (:shape-name "SnowflakeTableSchemaV1"))

(smithy/sdk/shapes:define-input start-protected-job-input common-lisp:nil
                                ((type :target-type protected-job-type
                                  :required common-lisp:t :member-name "type")
                                 (membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t)
                                 (job-parameters :target-type
                                  protected-job-parameters :required
                                  common-lisp:t :member-name "jobParameters")
                                 (result-configuration :target-type
                                  protected-job-result-configuration-input
                                  :member-name "resultConfiguration"))
                                (:shape-name "StartProtectedJobInput"))

(smithy/sdk/shapes:define-output start-protected-job-output common-lisp:nil
                                 ((protected-job :target-type protected-job
                                   :required common-lisp:t :member-name
                                   "protectedJob"))
                                 (:shape-name "StartProtectedJobOutput"))

(smithy/sdk/shapes:define-structure start-protected-query-input common-lisp:nil
                                    ((type :target-type protected-query-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (membership-identifier :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipIdentifier")
                                     (sql-parameters :target-type
                                      protected-query-sqlparameters :required
                                      common-lisp:t :member-name
                                      "sqlParameters")
                                     (result-configuration :target-type
                                      protected-query-result-configuration
                                      :member-name "resultConfiguration")
                                     (compute-configuration :target-type
                                      compute-configuration :member-name
                                      "computeConfiguration"))
                                    (:shape-name "StartProtectedQueryInput"))

(smithy/sdk/shapes:define-structure start-protected-query-output
                                    common-lisp:nil
                                    ((protected-query :target-type
                                      protected-query :required common-lisp:t
                                      :member-name "protectedQuery"))
                                    (:shape-name "StartProtectedQueryOutput"))

(smithy/sdk/shapes:define-type table-alias smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list table-alias-list :member table-alias)

(smithy/sdk/shapes:define-type table-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union table-reference common-lisp:nil
                                ((glue :target-type glue-table-reference
                                  :member-name "glue")
                                 (snowflake :target-type
                                  snowflake-table-reference :member-name
                                  "snowflake")
                                 (athena :target-type athena-table-reference
                                  :member-name "athena"))
                                (:shape-name "TableReference"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-input common-lisp:nil
                                ((resource-arn :target-type cleanrooms-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceInput"))

(smithy/sdk/shapes:define-output tag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum target-protected-job-status
    common-lisp:nil
  (:cancelled "CANCELLED"))

(smithy/sdk/shapes:define-type target-protected-query-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-input common-lisp:nil
                                ((resource-arn :target-type cleanrooms-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-keys :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceInput"))

(smithy/sdk/shapes:define-output untag-resource-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceOutput"))

(smithy/sdk/shapes:define-structure update-analysis-template-input
                                    common-lisp:nil
                                    ((membership-identifier :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipIdentifier")
                                     (analysis-template-identifier :target-type
                                      analysis-template-identifier :required
                                      common-lisp:t :member-name
                                      "analysisTemplateIdentifier")
                                     (description :target-type
                                      resource-description :member-name
                                      "description"))
                                    (:shape-name "UpdateAnalysisTemplateInput"))

(smithy/sdk/shapes:define-structure update-analysis-template-output
                                    common-lisp:nil
                                    ((analysis-template :target-type
                                      analysis-template :required common-lisp:t
                                      :member-name "analysisTemplate"))
                                    (:shape-name
                                     "UpdateAnalysisTemplateOutput"))

(smithy/sdk/shapes:define-structure update-collaboration-input common-lisp:nil
                                    ((collaboration-identifier :target-type
                                      collaboration-identifier :required
                                      common-lisp:t :member-name
                                      "collaborationIdentifier")
                                     (name :target-type collaboration-name
                                      :member-name "name")
                                     (description :target-type
                                      collaboration-description :member-name
                                      "description")
                                     (analytics-engine :target-type
                                      analytics-engine :member-name
                                      "analyticsEngine"))
                                    (:shape-name "UpdateCollaborationInput"))

(smithy/sdk/shapes:define-structure update-collaboration-output common-lisp:nil
                                    ((collaboration :target-type collaboration
                                      :required common-lisp:t :member-name
                                      "collaboration"))
                                    (:shape-name "UpdateCollaborationOutput"))

(smithy/sdk/shapes:define-input
 update-configured-audience-model-association-input common-lisp:nil
 ((configured-audience-model-association-identifier :target-type
   configured-audience-model-association-identifier :required common-lisp:t
   :member-name "configuredAudienceModelAssociationIdentifier" :http-label
   common-lisp:t)
  (membership-identifier :target-type membership-identifier :required
   common-lisp:t :member-name "membershipIdentifier" :http-label common-lisp:t)
  (description :target-type resource-description :member-name "description")
  (name :target-type configured-audience-model-association-name :member-name
   "name"))
 (:shape-name "UpdateConfiguredAudienceModelAssociationInput"))

(smithy/sdk/shapes:define-output
 update-configured-audience-model-association-output common-lisp:nil
 ((configured-audience-model-association :target-type
   configured-audience-model-association :required common-lisp:t :member-name
   "configuredAudienceModelAssociation"))
 (:shape-name "UpdateConfiguredAudienceModelAssociationOutput"))

(smithy/sdk/shapes:define-structure update-configured-table-analysis-rule-input
                                    common-lisp:nil
                                    ((configured-table-identifier :target-type
                                      configured-table-identifier :required
                                      common-lisp:t :member-name
                                      "configuredTableIdentifier")
                                     (analysis-rule-type :target-type
                                      configured-table-analysis-rule-type
                                      :required common-lisp:t :member-name
                                      "analysisRuleType")
                                     (analysis-rule-policy :target-type
                                      configured-table-analysis-rule-policy
                                      :required common-lisp:t :member-name
                                      "analysisRulePolicy"))
                                    (:shape-name
                                     "UpdateConfiguredTableAnalysisRuleInput"))

(smithy/sdk/shapes:define-structure
 update-configured-table-analysis-rule-output common-lisp:nil
 ((analysis-rule :target-type configured-table-analysis-rule :required
   common-lisp:t :member-name "analysisRule"))
 (:shape-name "UpdateConfiguredTableAnalysisRuleOutput"))

(smithy/sdk/shapes:define-input
 update-configured-table-association-analysis-rule-input common-lisp:nil
 ((membership-identifier :target-type membership-identifier :required
   common-lisp:t :member-name "membershipIdentifier" :http-label common-lisp:t)
  (configured-table-association-identifier :target-type
   configured-table-association-identifier :required common-lisp:t :member-name
   "configuredTableAssociationIdentifier" :http-label common-lisp:t)
  (analysis-rule-type :target-type
   configured-table-association-analysis-rule-type :required common-lisp:t
   :member-name "analysisRuleType" :http-label common-lisp:t)
  (analysis-rule-policy :target-type
   configured-table-association-analysis-rule-policy :required common-lisp:t
   :member-name "analysisRulePolicy"))
 (:shape-name "UpdateConfiguredTableAssociationAnalysisRuleInput"))

(smithy/sdk/shapes:define-output
 update-configured-table-association-analysis-rule-output common-lisp:nil
 ((analysis-rule :target-type configured-table-association-analysis-rule
   :required common-lisp:t :member-name "analysisRule"))
 (:shape-name "UpdateConfiguredTableAssociationAnalysisRuleOutput"))

(smithy/sdk/shapes:define-structure update-configured-table-association-input
                                    common-lisp:nil
                                    ((configured-table-association-identifier
                                      :target-type
                                      configured-table-association-identifier
                                      :required common-lisp:t :member-name
                                      "configuredTableAssociationIdentifier")
                                     (membership-identifier :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipIdentifier")
                                     (description :target-type
                                      table-description :member-name
                                      "description")
                                     (role-arn :target-type role-arn
                                      :member-name "roleArn"))
                                    (:shape-name
                                     "UpdateConfiguredTableAssociationInput"))

(smithy/sdk/shapes:define-structure update-configured-table-association-output
                                    common-lisp:nil
                                    ((configured-table-association :target-type
                                      configured-table-association :required
                                      common-lisp:t :member-name
                                      "configuredTableAssociation"))
                                    (:shape-name
                                     "UpdateConfiguredTableAssociationOutput"))

(smithy/sdk/shapes:define-structure update-configured-table-input
                                    common-lisp:nil
                                    ((configured-table-identifier :target-type
                                      configured-table-identifier :required
                                      common-lisp:t :member-name
                                      "configuredTableIdentifier")
                                     (name :target-type display-name
                                      :member-name "name")
                                     (description :target-type
                                      table-description :member-name
                                      "description")
                                     (table-reference :target-type
                                      table-reference :member-name
                                      "tableReference")
                                     (allowed-columns :target-type
                                      allowed-column-list :member-name
                                      "allowedColumns")
                                     (analysis-method :target-type
                                      analysis-method :member-name
                                      "analysisMethod")
                                     (selected-analysis-methods :target-type
                                      selected-analysis-methods :member-name
                                      "selectedAnalysisMethods"))
                                    (:shape-name "UpdateConfiguredTableInput"))

(smithy/sdk/shapes:define-structure update-configured-table-output
                                    common-lisp:nil
                                    ((configured-table :target-type
                                      configured-table :required common-lisp:t
                                      :member-name "configuredTable"))
                                    (:shape-name "UpdateConfiguredTableOutput"))

(smithy/sdk/shapes:define-input update-id-mapping-table-input common-lisp:nil
                                ((id-mapping-table-identifier :target-type uuid
                                  :required common-lisp:t :member-name
                                  "idMappingTableIdentifier" :http-label
                                  common-lisp:t)
                                 (membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t)
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (kms-key-arn :target-type kmskey-arn
                                  :member-name "kmsKeyArn"))
                                (:shape-name "UpdateIdMappingTableInput"))

(smithy/sdk/shapes:define-output update-id-mapping-table-output common-lisp:nil
                                 ((id-mapping-table :target-type
                                   id-mapping-table :required common-lisp:t
                                   :member-name "idMappingTable"))
                                 (:shape-name "UpdateIdMappingTableOutput"))

(smithy/sdk/shapes:define-input update-id-namespace-association-input
                                common-lisp:nil
                                ((id-namespace-association-identifier
                                  :target-type
                                  id-namespace-association-identifier :required
                                  common-lisp:t :member-name
                                  "idNamespaceAssociationIdentifier"
                                  :http-label common-lisp:t)
                                 (membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t)
                                 (name :target-type generic-resource-name
                                  :member-name "name")
                                 (description :target-type resource-description
                                  :member-name "description")
                                 (id-mapping-config :target-type
                                  id-mapping-config :member-name
                                  "idMappingConfig"))
                                (:shape-name
                                 "UpdateIdNamespaceAssociationInput"))

(smithy/sdk/shapes:define-output update-id-namespace-association-output
                                 common-lisp:nil
                                 ((id-namespace-association :target-type
                                   id-namespace-association :required
                                   common-lisp:t :member-name
                                   "idNamespaceAssociation"))
                                 (:shape-name
                                  "UpdateIdNamespaceAssociationOutput"))

(smithy/sdk/shapes:define-structure update-membership-input common-lisp:nil
                                    ((membership-identifier :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipIdentifier")
                                     (query-log-status :target-type
                                      membership-query-log-status :member-name
                                      "queryLogStatus")
                                     (job-log-status :target-type
                                      membership-job-log-status :member-name
                                      "jobLogStatus")
                                     (default-result-configuration :target-type
                                      membership-protected-query-result-configuration
                                      :member-name
                                      "defaultResultConfiguration")
                                     (default-job-result-configuration
                                      :target-type
                                      membership-protected-job-result-configuration
                                      :member-name
                                      "defaultJobResultConfiguration"))
                                    (:shape-name "UpdateMembershipInput"))

(smithy/sdk/shapes:define-structure update-membership-output common-lisp:nil
                                    ((membership :target-type membership
                                      :required common-lisp:t :member-name
                                      "membership"))
                                    (:shape-name "UpdateMembershipOutput"))

(smithy/sdk/shapes:define-input update-privacy-budget-template-input
                                common-lisp:nil
                                ((membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t)
                                 (privacy-budget-template-identifier
                                  :target-type
                                  privacy-budget-template-identifier :required
                                  common-lisp:t :member-name
                                  "privacyBudgetTemplateIdentifier" :http-label
                                  common-lisp:t)
                                 (privacy-budget-type :target-type
                                  privacy-budget-type :required common-lisp:t
                                  :member-name "privacyBudgetType")
                                 (parameters :target-type
                                  privacy-budget-template-update-parameters
                                  :member-name "parameters"))
                                (:shape-name
                                 "UpdatePrivacyBudgetTemplateInput"))

(smithy/sdk/shapes:define-output update-privacy-budget-template-output
                                 common-lisp:nil
                                 ((privacy-budget-template :target-type
                                   privacy-budget-template :required
                                   common-lisp:t :member-name
                                   "privacyBudgetTemplate"))
                                 (:shape-name
                                  "UpdatePrivacyBudgetTemplateOutput"))

(smithy/sdk/shapes:define-input update-protected-job-input common-lisp:nil
                                ((membership-identifier :target-type
                                  membership-identifier :required common-lisp:t
                                  :member-name "membershipIdentifier"
                                  :http-label common-lisp:t)
                                 (protected-job-identifier :target-type
                                  protected-job-identifier :required
                                  common-lisp:t :member-name
                                  "protectedJobIdentifier" :http-label
                                  common-lisp:t)
                                 (target-status :target-type
                                  target-protected-job-status :required
                                  common-lisp:t :member-name "targetStatus"))
                                (:shape-name "UpdateProtectedJobInput"))

(smithy/sdk/shapes:define-output update-protected-job-output common-lisp:nil
                                 ((protected-job :target-type protected-job
                                   :required common-lisp:t :member-name
                                   "protectedJob"))
                                 (:shape-name "UpdateProtectedJobOutput"))

(smithy/sdk/shapes:define-structure update-protected-query-input
                                    common-lisp:nil
                                    ((membership-identifier :target-type
                                      membership-identifier :required
                                      common-lisp:t :member-name
                                      "membershipIdentifier")
                                     (protected-query-identifier :target-type
                                      protected-query-identifier :required
                                      common-lisp:t :member-name
                                      "protectedQueryIdentifier")
                                     (target-status :target-type
                                      target-protected-query-status :required
                                      common-lisp:t :member-name
                                      "targetStatus"))
                                    (:shape-name "UpdateProtectedQueryInput"))

(smithy/sdk/shapes:define-structure update-protected-query-output
                                    common-lisp:nil
                                    ((protected-query :target-type
                                      protected-query :required common-lisp:t
                                      :member-name "protectedQuery"))
                                    (:shape-name "UpdateProtectedQueryOutput"))

(smithy/sdk/shapes:define-type users-noise-per-query
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type validation-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure worker-compute-configuration
                                    common-lisp:nil
                                    ((type :target-type worker-compute-type
                                      :member-name "type")
                                     (number :target-type
                                      smithy/sdk/smithy-types:integer
                                      :member-name "number"))
                                    (:shape-name "WorkerComputeConfiguration"))

(smithy/sdk/shapes:define-enum worker-compute-type
    common-lisp:nil
  (:cr1x "CR.1X")
  (:cr4x "CR.4X"))

(smithy/sdk/operation:define-operation
 batch-get-collaboration-analysis-template :shape-name
 "BatchGetCollaborationAnalysisTemplate" :input
 batch-get-collaboration-analysis-template-input :output
 batch-get-collaboration-analysis-template-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri
 "/collaborations/{collaborationIdentifier}/batch-analysistemplates" :code 200)

(smithy/sdk/operation:define-operation batch-get-schema :shape-name
                                       "BatchGetSchema" :input
                                       batch-get-schema-input :output
                                       batch-get-schema-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/collaborations/{collaborationIdentifier}/batch-schema"
                                       :code 200)

(smithy/sdk/operation:define-operation batch-get-schema-analysis-rule
                                       :shape-name "BatchGetSchemaAnalysisRule"
                                       :input
                                       batch-get-schema-analysis-rule-input
                                       :output
                                       batch-get-schema-analysis-rule-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/collaborations/{collaborationIdentifier}/batch-schema-analysis-rule"
                                       :code 200)

(smithy/sdk/operation:define-operation create-analysis-template :shape-name
                                       "CreateAnalysisTemplate" :input
                                       create-analysis-template-input :output
                                       create-analysis-template-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/memberships/{membershipIdentifier}/analysistemplates"
                                       :code 200)

(smithy/sdk/operation:define-operation create-collaboration :shape-name
                                       "CreateCollaboration" :input
                                       create-collaboration-input :output
                                       create-collaboration-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/collaborations"
                                       :code 200)

(smithy/sdk/operation:define-operation
 create-configured-audience-model-association :shape-name
 "CreateConfiguredAudienceModelAssociation" :input
 create-configured-audience-model-association-input :output
 create-configured-audience-model-association-output :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception service-quota-exceeded-exception
  throttling-exception validation-exception)
 :method "POST" :uri
 "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations"
 :code 200)

(smithy/sdk/operation:define-operation create-configured-table :shape-name
                                       "CreateConfiguredTable" :input
                                       create-configured-table-input :output
                                       create-configured-table-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/configuredTables"
                                       :code 200)

(smithy/sdk/operation:define-operation create-configured-table-analysis-rule
                                       :shape-name
                                       "CreateConfiguredTableAnalysisRule"
                                       :input
                                       create-configured-table-analysis-rule-input
                                       :output
                                       create-configured-table-analysis-rule-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/configuredTables/{configuredTableIdentifier}/analysisRule"
                                       :code 200)

(smithy/sdk/operation:define-operation create-configured-table-association
                                       :shape-name
                                       "CreateConfiguredTableAssociation"
                                       :input
                                       create-configured-table-association-input
                                       :output
                                       create-configured-table-association-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/memberships/{membershipIdentifier}/configuredTableAssociations"
                                       :code 200)

(smithy/sdk/operation:define-operation
 create-configured-table-association-analysis-rule :shape-name
 "CreateConfiguredTableAssociationAnalysisRule" :input
 create-configured-table-association-analysis-rule-input :output
 create-configured-table-association-analysis-rule-output :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri
 "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule"
 :code 200)

(smithy/sdk/operation:define-operation create-id-mapping-table :shape-name
                                       "CreateIdMappingTable" :input
                                       create-id-mapping-table-input :output
                                       create-id-mapping-table-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/memberships/{membershipIdentifier}/idmappingtables"
                                       :code 200)

(smithy/sdk/operation:define-operation create-id-namespace-association
                                       :shape-name
                                       "CreateIdNamespaceAssociation" :input
                                       create-id-namespace-association-input
                                       :output
                                       create-id-namespace-association-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/memberships/{membershipIdentifier}/idnamespaceassociations"
                                       :code 200)

(smithy/sdk/operation:define-operation create-membership :shape-name
                                       "CreateMembership" :input
                                       create-membership-input :output
                                       create-membership-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/memberships" :code
                                       200)

(smithy/sdk/operation:define-operation create-privacy-budget-template
                                       :shape-name
                                       "CreatePrivacyBudgetTemplate" :input
                                       create-privacy-budget-template-input
                                       :output
                                       create-privacy-budget-template-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/memberships/{membershipIdentifier}/privacybudgettemplates"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-analysis-template :shape-name
                                       "DeleteAnalysisTemplate" :input
                                       delete-analysis-template-input :output
                                       delete-analysis-template-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/memberships/{membershipIdentifier}/analysistemplates/{analysisTemplateIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-collaboration :shape-name
                                       "DeleteCollaboration" :input
                                       delete-collaboration-input :output
                                       delete-collaboration-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/collaborations/{collaborationIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation
 delete-configured-audience-model-association :shape-name
 "DeleteConfiguredAudienceModelAssociation" :input
 delete-configured-audience-model-association-input :output
 delete-configured-audience-model-association-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "DELETE" :uri
 "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}"
 :code 204)

(smithy/sdk/operation:define-operation delete-configured-table :shape-name
                                       "DeleteConfiguredTable" :input
                                       delete-configured-table-input :output
                                       delete-configured-table-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/configuredTables/{configuredTableIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-configured-table-analysis-rule
                                       :shape-name
                                       "DeleteConfiguredTableAnalysisRule"
                                       :input
                                       delete-configured-table-analysis-rule-input
                                       :output
                                       delete-configured-table-analysis-rule-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-configured-table-association
                                       :shape-name
                                       "DeleteConfiguredTableAssociation"
                                       :input
                                       delete-configured-table-association-input
                                       :output
                                       delete-configured-table-association-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation
 delete-configured-table-association-analysis-rule :shape-name
 "DeleteConfiguredTableAssociationAnalysisRule" :input
 delete-configured-table-association-analysis-rule-input :output
 delete-configured-table-association-analysis-rule-output :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "DELETE" :uri
 "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule/{analysisRuleType}"
 :code 204)

(smithy/sdk/operation:define-operation delete-id-mapping-table :shape-name
                                       "DeleteIdMappingTable" :input
                                       delete-id-mapping-table-input :output
                                       delete-id-mapping-table-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-id-namespace-association
                                       :shape-name
                                       "DeleteIdNamespaceAssociation" :input
                                       delete-id-namespace-association-input
                                       :output
                                       delete-id-namespace-association-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/memberships/{membershipIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-member :shape-name "DeleteMember"
                                       :input delete-member-input :output
                                       delete-member-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/collaborations/{collaborationIdentifier}/member/{accountId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-membership :shape-name
                                       "DeleteMembership" :input
                                       delete-membership-input :output
                                       delete-membership-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/memberships/{membershipIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-privacy-budget-template
                                       :shape-name
                                       "DeletePrivacyBudgetTemplate" :input
                                       delete-privacy-budget-template-input
                                       :output
                                       delete-privacy-budget-template-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/memberships/{membershipIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}"
                                       :code 204)

(smithy/sdk/operation:define-operation get-analysis-template :shape-name
                                       "GetAnalysisTemplate" :input
                                       get-analysis-template-input :output
                                       get-analysis-template-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/analysistemplates/{analysisTemplateIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-collaboration :shape-name
                                       "GetCollaboration" :input
                                       get-collaboration-input :output
                                       get-collaboration-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/collaborations/{collaborationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-collaboration-analysis-template
                                       :shape-name
                                       "GetCollaborationAnalysisTemplate"
                                       :input
                                       get-collaboration-analysis-template-input
                                       :output
                                       get-collaboration-analysis-template-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/collaborations/{collaborationIdentifier}/analysistemplates/{analysisTemplateArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-collaboration-configured-audience-model-association :shape-name
 "GetCollaborationConfiguredAudienceModelAssociation" :input
 get-collaboration-configured-audience-model-association-input :output
 get-collaboration-configured-audience-model-association-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/collaborations/{collaborationIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}"
 :code 200)

(smithy/sdk/operation:define-operation
 get-collaboration-id-namespace-association :shape-name
 "GetCollaborationIdNamespaceAssociation" :input
 get-collaboration-id-namespace-association-input :output
 get-collaboration-id-namespace-association-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/collaborations/{collaborationIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}"
 :code 200)

(smithy/sdk/operation:define-operation
 get-collaboration-privacy-budget-template :shape-name
 "GetCollaborationPrivacyBudgetTemplate" :input
 get-collaboration-privacy-budget-template-input :output
 get-collaboration-privacy-budget-template-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/collaborations/{collaborationIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}"
 :code 200)

(smithy/sdk/operation:define-operation
 get-configured-audience-model-association :shape-name
 "GetConfiguredAudienceModelAssociation" :input
 get-configured-audience-model-association-input :output
 get-configured-audience-model-association-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}"
 :code 200)

(smithy/sdk/operation:define-operation get-configured-table :shape-name
                                       "GetConfiguredTable" :input
                                       get-configured-table-input :output
                                       get-configured-table-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/configuredTables/{configuredTableIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-configured-table-analysis-rule
                                       :shape-name
                                       "GetConfiguredTableAnalysisRule" :input
                                       get-configured-table-analysis-rule-input
                                       :output
                                       get-configured-table-analysis-rule-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-configured-table-association
                                       :shape-name
                                       "GetConfiguredTableAssociation" :input
                                       get-configured-table-association-input
                                       :output
                                       get-configured-table-association-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 get-configured-table-association-analysis-rule :shape-name
 "GetConfiguredTableAssociationAnalysisRule" :input
 get-configured-table-association-analysis-rule-input :output
 get-configured-table-association-analysis-rule-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule/{analysisRuleType}"
 :code 200)

(smithy/sdk/operation:define-operation get-id-mapping-table :shape-name
                                       "GetIdMappingTable" :input
                                       get-id-mapping-table-input :output
                                       get-id-mapping-table-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-id-namespace-association :shape-name
                                       "GetIdNamespaceAssociation" :input
                                       get-id-namespace-association-input
                                       :output
                                       get-id-namespace-association-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-membership :shape-name
                                       "GetMembership" :input
                                       get-membership-input :output
                                       get-membership-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-privacy-budget-template :shape-name
                                       "GetPrivacyBudgetTemplate" :input
                                       get-privacy-budget-template-input
                                       :output
                                       get-privacy-budget-template-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-protected-job :shape-name
                                       "GetProtectedJob" :input
                                       get-protected-job-input :output
                                       get-protected-job-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/protectedJobs/{protectedJobIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-protected-query :shape-name
                                       "GetProtectedQuery" :input
                                       get-protected-query-input :output
                                       get-protected-query-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/protectedQueries/{protectedQueryIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-schema :shape-name "GetSchema"
                                       :input get-schema-input :output
                                       get-schema-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/collaborations/{collaborationIdentifier}/schemas/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-schema-analysis-rule :shape-name
                                       "GetSchemaAnalysisRule" :input
                                       get-schema-analysis-rule-input :output
                                       get-schema-analysis-rule-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/collaborations/{collaborationIdentifier}/schemas/{name}/analysisRule/{type}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-analysis-templates :shape-name
                                       "ListAnalysisTemplates" :input
                                       list-analysis-templates-input :output
                                       list-analysis-templates-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/analysistemplates"
                                       :code 200)

(smithy/sdk/operation:define-operation list-collaboration-analysis-templates
                                       :shape-name
                                       "ListCollaborationAnalysisTemplates"
                                       :input
                                       list-collaboration-analysis-templates-input
                                       :output
                                       list-collaboration-analysis-templates-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/collaborations/{collaborationIdentifier}/analysistemplates"
                                       :code 200)

(smithy/sdk/operation:define-operation
 list-collaboration-configured-audience-model-associations :shape-name
 "ListCollaborationConfiguredAudienceModelAssociations" :input
 list-collaboration-configured-audience-model-associations-input :output
 list-collaboration-configured-audience-model-associations-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/collaborations/{collaborationIdentifier}/configuredaudiencemodelassociations"
 :code 200)

(smithy/sdk/operation:define-operation
 list-collaboration-id-namespace-associations :shape-name
 "ListCollaborationIdNamespaceAssociations" :input
 list-collaboration-id-namespace-associations-input :output
 list-collaboration-id-namespace-associations-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/collaborations/{collaborationIdentifier}/idnamespaceassociations" :code 200)

(smithy/sdk/operation:define-operation
 list-collaboration-privacy-budget-templates :shape-name
 "ListCollaborationPrivacyBudgetTemplates" :input
 list-collaboration-privacy-budget-templates-input :output
 list-collaboration-privacy-budget-templates-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/collaborations/{collaborationIdentifier}/privacybudgettemplates" :code 200)

(smithy/sdk/operation:define-operation list-collaboration-privacy-budgets
                                       :shape-name
                                       "ListCollaborationPrivacyBudgets" :input
                                       list-collaboration-privacy-budgets-input
                                       :output
                                       list-collaboration-privacy-budgets-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/collaborations/{collaborationIdentifier}/privacybudgets"
                                       :code 200)

(smithy/sdk/operation:define-operation list-collaborations :shape-name
                                       "ListCollaborations" :input
                                       list-collaborations-input :output
                                       list-collaborations-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/collaborations"
                                       :code 200)

(smithy/sdk/operation:define-operation
 list-configured-audience-model-associations :shape-name
 "ListConfiguredAudienceModelAssociations" :input
 list-configured-audience-model-associations-input :output
 list-configured-audience-model-associations-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "GET" :uri
 "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations"
 :code 200)

(smithy/sdk/operation:define-operation list-configured-table-associations
                                       :shape-name
                                       "ListConfiguredTableAssociations" :input
                                       list-configured-table-associations-input
                                       :output
                                       list-configured-table-associations-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/configuredTableAssociations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-configured-tables :shape-name
                                       "ListConfiguredTables" :input
                                       list-configured-tables-input :output
                                       list-configured-tables-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/configuredTables"
                                       :code 200)

(smithy/sdk/operation:define-operation list-id-mapping-tables :shape-name
                                       "ListIdMappingTables" :input
                                       list-id-mapping-tables-input :output
                                       list-id-mapping-tables-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/idmappingtables"
                                       :code 200)

(smithy/sdk/operation:define-operation list-id-namespace-associations
                                       :shape-name
                                       "ListIdNamespaceAssociations" :input
                                       list-id-namespace-associations-input
                                       :output
                                       list-id-namespace-associations-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/idnamespaceassociations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-members :shape-name "ListMembers"
                                       :input list-members-input :output
                                       list-members-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/collaborations/{collaborationIdentifier}/members"
                                       :code 200)

(smithy/sdk/operation:define-operation list-memberships :shape-name
                                       "ListMemberships" :input
                                       list-memberships-input :output
                                       list-memberships-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/memberships" :code
                                       200)

(smithy/sdk/operation:define-operation list-privacy-budget-templates
                                       :shape-name "ListPrivacyBudgetTemplates"
                                       :input
                                       list-privacy-budget-templates-input
                                       :output
                                       list-privacy-budget-templates-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/privacybudgettemplates"
                                       :code 200)

(smithy/sdk/operation:define-operation list-privacy-budgets :shape-name
                                       "ListPrivacyBudgets" :input
                                       list-privacy-budgets-input :output
                                       list-privacy-budgets-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/privacybudgets"
                                       :code 200)

(smithy/sdk/operation:define-operation list-protected-jobs :shape-name
                                       "ListProtectedJobs" :input
                                       list-protected-jobs-input :output
                                       list-protected-jobs-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/protectedJobs"
                                       :code 200)

(smithy/sdk/operation:define-operation list-protected-queries :shape-name
                                       "ListProtectedQueries" :input
                                       list-protected-queries-input :output
                                       list-protected-queries-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memberships/{membershipIdentifier}/protectedQueries"
                                       :code 200)

(smithy/sdk/operation:define-operation list-schemas :shape-name "ListSchemas"
                                       :input list-schemas-input :output
                                       list-schemas-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/collaborations/{collaborationIdentifier}/schemas"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-input :output
                                       list-tags-for-resource-output :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation populate-id-mapping-table :shape-name
                                       "PopulateIdMappingTable" :input
                                       populate-id-mapping-table-input :output
                                       populate-id-mapping-table-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}/populate"
                                       :code 200)

(smithy/sdk/operation:define-operation preview-privacy-impact :shape-name
                                       "PreviewPrivacyImpact" :input
                                       preview-privacy-impact-input :output
                                       preview-privacy-impact-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/memberships/{membershipIdentifier}/previewprivacyimpact"
                                       :code 200)

(smithy/sdk/operation:define-operation start-protected-job :shape-name
                                       "StartProtectedJob" :input
                                       start-protected-job-input :output
                                       start-protected-job-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/memberships/{membershipIdentifier}/protectedJobs"
                                       :code 200)

(smithy/sdk/operation:define-operation start-protected-query :shape-name
                                       "StartProtectedQuery" :input
                                       start-protected-query-input :output
                                       start-protected-query-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/memberships/{membershipIdentifier}/protectedQueries"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-input :output
                                       tag-resource-output :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-input :output
                                       untag-resource-output :errors
                                       (resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-analysis-template :shape-name
                                       "UpdateAnalysisTemplate" :input
                                       update-analysis-template-input :output
                                       update-analysis-template-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/memberships/{membershipIdentifier}/analysistemplates/{analysisTemplateIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-collaboration :shape-name
                                       "UpdateCollaboration" :input
                                       update-collaboration-input :output
                                       update-collaboration-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/collaborations/{collaborationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 update-configured-audience-model-association :shape-name
 "UpdateConfiguredAudienceModelAssociation" :input
 update-configured-audience-model-association-input :output
 update-configured-audience-model-association-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "PATCH" :uri
 "/memberships/{membershipIdentifier}/configuredaudiencemodelassociations/{configuredAudienceModelAssociationIdentifier}"
 :code 200)

(smithy/sdk/operation:define-operation update-configured-table :shape-name
                                       "UpdateConfiguredTable" :input
                                       update-configured-table-input :output
                                       update-configured-table-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/configuredTables/{configuredTableIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-configured-table-analysis-rule
                                       :shape-name
                                       "UpdateConfiguredTableAnalysisRule"
                                       :input
                                       update-configured-table-analysis-rule-input
                                       :output
                                       update-configured-table-analysis-rule-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-configured-table-association
                                       :shape-name
                                       "UpdateConfiguredTableAssociation"
                                       :input
                                       update-configured-table-association-input
                                       :output
                                       update-configured-table-association-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation
 update-configured-table-association-analysis-rule :shape-name
 "UpdateConfiguredTableAssociationAnalysisRule" :input
 update-configured-table-association-analysis-rule-input :output
 update-configured-table-association-analysis-rule-output :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "PATCH" :uri
 "/memberships/{membershipIdentifier}/configuredTableAssociations/{configuredTableAssociationIdentifier}/analysisRule/{analysisRuleType}"
 :code 200)

(smithy/sdk/operation:define-operation update-id-mapping-table :shape-name
                                       "UpdateIdMappingTable" :input
                                       update-id-mapping-table-input :output
                                       update-id-mapping-table-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/memberships/{membershipIdentifier}/idmappingtables/{idMappingTableIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-id-namespace-association
                                       :shape-name
                                       "UpdateIdNamespaceAssociation" :input
                                       update-id-namespace-association-input
                                       :output
                                       update-id-namespace-association-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/memberships/{membershipIdentifier}/idnamespaceassociations/{idNamespaceAssociationIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-membership :shape-name
                                       "UpdateMembership" :input
                                       update-membership-input :output
                                       update-membership-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/memberships/{membershipIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-privacy-budget-template
                                       :shape-name
                                       "UpdatePrivacyBudgetTemplate" :input
                                       update-privacy-budget-template-input
                                       :output
                                       update-privacy-budget-template-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/memberships/{membershipIdentifier}/privacybudgettemplates/{privacyBudgetTemplateIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-protected-job :shape-name
                                       "UpdateProtectedJob" :input
                                       update-protected-job-input :output
                                       update-protected-job-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/memberships/{membershipIdentifier}/protectedJobs/{protectedJobIdentifier}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-protected-query :shape-name
                                       "UpdateProtectedQuery" :input
                                       update-protected-query-input :output
                                       update-protected-query-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri
                                       "/memberships/{membershipIdentifier}/protectedQueries/{protectedQueryIdentifier}"
                                       :code 200)
