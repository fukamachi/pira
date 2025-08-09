(uiop/package:define-package #:pira/service-catalog (:use)
                             (:export #:aws242service-catalog-service
                              #:accept-language #:accept-portfolio-share
                              #:access-level-filter #:access-level-filter-key
                              #:access-level-filter-value #:access-status
                              #:account-id #:account-ids #:add-tags
                              #:allowed-values #:approximate-count
                              #:associate-budget-with-resource
                              #:associate-principal-with-portfolio
                              #:associate-product-with-portfolio
                              #:associate-service-action-with-provisioning-artifact
                              #:associate-tag-option-with-resource
                              #:attribute-value
                              #:batch-associate-service-action-with-provisioning-artifact
                              #:batch-disassociate-service-action-from-provisioning-artifact
                              #:boolean #:budget-detail #:budget-name #:budgets
                              #:causing-entity #:change-action
                              #:cloud-watch-dashboard
                              #:cloud-watch-dashboard-name
                              #:cloud-watch-dashboards
                              #:code-star-connection-arn #:code-star-parameters
                              #:constraint-description #:constraint-detail
                              #:constraint-details #:constraint-parameters
                              #:constraint-summaries #:constraint-summary
                              #:constraint-type #:copy-option #:copy-options
                              #:copy-product #:copy-product-status
                              #:create-constraint #:create-portfolio
                              #:create-portfolio-share #:create-product
                              #:create-provisioned-product-plan
                              #:create-provisioning-artifact
                              #:create-service-action #:create-tag-option
                              #:created-time #:creation-time #:default-value
                              #:delete-constraint #:delete-portfolio
                              #:delete-portfolio-share #:delete-product
                              #:delete-provisioned-product-plan
                              #:delete-provisioning-artifact
                              #:delete-service-action #:delete-tag-option
                              #:describe-constraint
                              #:describe-copy-product-status
                              #:describe-portfolio
                              #:describe-portfolio-share-status
                              #:describe-portfolio-share-type
                              #:describe-portfolio-shares #:describe-product
                              #:describe-product-as-admin
                              #:describe-product-view
                              #:describe-provisioned-product
                              #:describe-provisioned-product-plan
                              #:describe-provisioning-artifact
                              #:describe-provisioning-parameters
                              #:describe-record #:describe-service-action
                              #:describe-service-action-execution-parameters
                              #:describe-tag-option #:description
                              #:disable-awsorganizations-access
                              #:disable-template-validation
                              #:disassociate-budget-from-resource
                              #:disassociate-principal-from-portfolio
                              #:disassociate-product-from-portfolio
                              #:disassociate-service-action-from-provisioning-artifact
                              #:disassociate-tag-option-from-resource
                              #:enable-awsorganizations-access
                              #:engine-workflow-failure-reason
                              #:engine-workflow-resource-identifier
                              #:engine-workflow-status #:engine-workflow-token
                              #:error #:error-code #:error-description
                              #:error-message #:evaluation-type
                              #:execute-provisioned-product-plan
                              #:execute-provisioned-product-service-action
                              #:execution-parameter #:execution-parameter-key
                              #:execution-parameter-map
                              #:execution-parameter-type
                              #:execution-parameter-value
                              #:execution-parameter-value-list
                              #:execution-parameters
                              #:failed-service-action-association
                              #:failed-service-action-associations
                              #:get-awsorganizations-access-status
                              #:get-provisioned-product-outputs
                              #:has-default-path #:id #:idempotency-token
                              #:ignore-errors #:import-as-provisioned-product
                              #:instruction-type #:instruction-value
                              #:last-request-id #:last-successful-sync-time
                              #:last-sync #:last-sync-status
                              #:last-sync-status-message #:last-sync-time
                              #:launch-path #:launch-path-summaries
                              #:launch-path-summary #:launch-paths
                              #:list-accepted-portfolio-shares
                              #:list-budgets-for-resource
                              #:list-constraints-for-portfolio
                              #:list-launch-paths
                              #:list-organization-portfolio-access
                              #:list-portfolio-access #:list-portfolios
                              #:list-portfolios-for-product
                              #:list-principals-for-portfolio
                              #:list-provisioned-product-plans
                              #:list-provisioning-artifacts
                              #:list-provisioning-artifacts-for-service-action
                              #:list-record-history
                              #:list-record-history-search-filter
                              #:list-resources-for-tag-option
                              #:list-service-actions
                              #:list-service-actions-for-provisioning-artifact
                              #:list-stack-instances-for-provisioned-product
                              #:list-tag-options #:list-tag-options-filters
                              #:logical-resource-id #:message #:namespaces
                              #:no-echo #:notification-arn #:notification-arns
                              #:notify-provision-product-engine-workflow-result
                              #:notify-terminate-provisioned-product-engine-workflow-result
                              #:notify-update-provisioned-product-engine-workflow-result
                              #:nullable-boolean #:organization-node
                              #:organization-node-type
                              #:organization-node-value #:organization-nodes
                              #:output-description #:output-key #:output-keys
                              #:output-value #:owner #:page-size
                              #:page-size-max100 #:page-token
                              #:parameter-constraints #:parameter-key
                              #:parameter-type #:parameter-value #:physical-id
                              #:physical-resource-id #:plan-resource-type
                              #:portfolio-description #:portfolio-detail
                              #:portfolio-details #:portfolio-display-name
                              #:portfolio-name #:portfolio-share-detail
                              #:portfolio-share-details #:portfolio-share-type
                              #:principal #:principal-arn #:principal-type
                              #:principals #:product-arn #:product-source
                              #:product-type #:product-view-aggregation-type
                              #:product-view-aggregation-value
                              #:product-view-aggregation-values
                              #:product-view-aggregations #:product-view-detail
                              #:product-view-details #:product-view-distributor
                              #:product-view-filter-by
                              #:product-view-filter-value
                              #:product-view-filter-values
                              #:product-view-filters #:product-view-name
                              #:product-view-owner
                              #:product-view-short-description
                              #:product-view-sort-by #:product-view-summaries
                              #:product-view-summary #:property-key
                              #:property-name #:property-value #:provider-name
                              #:provision-product
                              #:provisioned-product-attribute
                              #:provisioned-product-attributes
                              #:provisioned-product-detail
                              #:provisioned-product-details
                              #:provisioned-product-filters
                              #:provisioned-product-id
                              #:provisioned-product-name
                              #:provisioned-product-name-or-arn
                              #:provisioned-product-plan-details
                              #:provisioned-product-plan-name
                              #:provisioned-product-plan-status
                              #:provisioned-product-plan-summary
                              #:provisioned-product-plan-type
                              #:provisioned-product-plans
                              #:provisioned-product-properties
                              #:provisioned-product-status
                              #:provisioned-product-status-message
                              #:provisioned-product-type
                              #:provisioned-product-view-filter-by
                              #:provisioned-product-view-filter-value
                              #:provisioned-product-view-filter-values
                              #:provisioning-artifact
                              #:provisioning-artifact-active
                              #:provisioning-artifact-created-time
                              #:provisioning-artifact-description
                              #:provisioning-artifact-detail
                              #:provisioning-artifact-details
                              #:provisioning-artifact-guidance
                              #:provisioning-artifact-info
                              #:provisioning-artifact-info-key
                              #:provisioning-artifact-info-value
                              #:provisioning-artifact-name
                              #:provisioning-artifact-output
                              #:provisioning-artifact-output-key
                              #:provisioning-artifact-outputs
                              #:provisioning-artifact-parameter
                              #:provisioning-artifact-parameters
                              #:provisioning-artifact-preferences
                              #:provisioning-artifact-properties
                              #:provisioning-artifact-property-name
                              #:provisioning-artifact-property-value
                              #:provisioning-artifact-summaries
                              #:provisioning-artifact-summary
                              #:provisioning-artifact-type
                              #:provisioning-artifact-view
                              #:provisioning-artifact-views
                              #:provisioning-artifacts #:provisioning-parameter
                              #:provisioning-parameters
                              #:provisioning-preferences #:record-detail
                              #:record-details #:record-error #:record-errors
                              #:record-output #:record-outputs #:record-status
                              #:record-tag #:record-tag-key #:record-tag-value
                              #:record-tags #:record-type #:region
                              #:reject-portfolio-share #:replacement
                              #:repository #:repository-artifact-path
                              #:repository-branch #:requires-recreation
                              #:resource-arn #:resource-attribute
                              #:resource-change #:resource-change-detail
                              #:resource-change-details #:resource-changes
                              #:resource-detail #:resource-detail-arn
                              #:resource-detail-created-time
                              #:resource-detail-description
                              #:resource-detail-id #:resource-detail-name
                              #:resource-details #:resource-id
                              #:resource-target-definition #:resource-type
                              #:retain-physical-resources #:role-arn
                              #:scan-provisioned-products #:scope
                              #:search-filter-key #:search-filter-value
                              #:search-products #:search-products-as-admin
                              #:search-provisioned-products
                              #:search-provisioned-products-page-size
                              #:service-action-association
                              #:service-action-association-error-code
                              #:service-action-association-error-message
                              #:service-action-associations
                              #:service-action-definition-key
                              #:service-action-definition-map
                              #:service-action-definition-type
                              #:service-action-definition-value
                              #:service-action-description
                              #:service-action-detail #:service-action-name
                              #:service-action-summaries
                              #:service-action-summary #:share-details
                              #:share-error #:share-errors #:share-status
                              #:sort-field #:sort-order #:source-connection
                              #:source-connection-detail
                              #:source-connection-parameters
                              #:source-provisioning-artifact-properties
                              #:source-provisioning-artifact-properties-map
                              #:source-revision #:source-type #:stack-instance
                              #:stack-instance-status #:stack-instances
                              #:stack-set-accounts
                              #:stack-set-failure-tolerance-count
                              #:stack-set-failure-tolerance-percentage
                              #:stack-set-max-concurrency-count
                              #:stack-set-max-concurrency-percentage
                              #:stack-set-operation-type #:stack-set-regions
                              #:status #:status-detail #:status-message
                              #:string #:successful-shares
                              #:support-description #:support-email
                              #:support-url #:tag #:tag-key #:tag-keys
                              #:tag-option-active #:tag-option-detail
                              #:tag-option-details #:tag-option-id
                              #:tag-option-key #:tag-option-summaries
                              #:tag-option-summary #:tag-option-value
                              #:tag-option-values #:tag-value #:tags
                              #:terminate-provisioned-product
                              #:total-results-count #:unique-tag-key
                              #:unique-tag-resource-identifier
                              #:unique-tag-value #:update-constraint
                              #:update-portfolio #:update-portfolio-share
                              #:update-product #:update-provisioned-product
                              #:update-provisioned-product-properties
                              #:update-provisioning-artifact
                              #:update-provisioning-parameter
                              #:update-provisioning-parameters
                              #:update-provisioning-preferences
                              #:update-service-action #:update-tag-option
                              #:updated-time #:usage-instruction
                              #:usage-instructions #:use-previous-value
                              #:user-arn #:user-arn-session #:verbose))
(common-lisp:in-package #:pira/service-catalog)

(smithy/sdk/service:define-service aws242service-catalog-service :shape-name
                                   "AWS242ServiceCatalogService" :version
                                   "2015-12-10" :title "AWS Service Catalog"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Service Catalog")
                                      ("arnNamespace" . "servicecatalog")
                                      ("cloudFormationName" . "ServiceCatalog")
                                      ("cloudTrailEventSource"
                                       . "servicecatalog.amazonaws.com")
                                      ("docId" . "servicecatalog-2015-12-10")
                                      ("endpointPrefix" . "servicecatalog"))
                                     ("aws.auth#sigv4"
                                      ("name" . "servicecatalog"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type accept-language smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input accept-portfolio-share-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (portfolio-id :target-type id :required
                                  common-lisp:t :member-name "PortfolioId")
                                 (portfolio-share-type :target-type
                                  portfolio-share-type :member-name
                                  "PortfolioShareType"))
                                (:shape-name "AcceptPortfolioShareInput"))

(smithy/sdk/shapes:define-output accept-portfolio-share-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "AcceptPortfolioShareOutput"))

(smithy/sdk/shapes:define-structure access-level-filter common-lisp:nil
                                    ((key :target-type access-level-filter-key
                                      :member-name "Key")
                                     (value :target-type
                                      access-level-filter-value :member-name
                                      "Value"))
                                    (:shape-name "AccessLevelFilter"))

(smithy/sdk/shapes:define-enum access-level-filter-key
    common-lisp:nil
  (:account "Account")
  (:role "Role")
  (:user "User"))

(smithy/sdk/shapes:define-type access-level-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum access-status
    common-lisp:nil
  (:enabled "ENABLED")
  (:under-change "UNDER_CHANGE")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list account-ids :member account-id)

(smithy/sdk/shapes:define-list add-tags :member tag)

(smithy/sdk/shapes:define-list allowed-values :member string)

(smithy/sdk/shapes:define-type approximate-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input associate-budget-with-resource-input
                                common-lisp:nil
                                ((budget-name :target-type budget-name
                                  :required common-lisp:t :member-name
                                  "BudgetName")
                                 (resource-id :target-type id :required
                                  common-lisp:t :member-name "ResourceId"))
                                (:shape-name
                                 "AssociateBudgetWithResourceInput"))

(smithy/sdk/shapes:define-output associate-budget-with-resource-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AssociateBudgetWithResourceOutput"))

(smithy/sdk/shapes:define-input associate-principal-with-portfolio-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (portfolio-id :target-type id :required
                                  common-lisp:t :member-name "PortfolioId")
                                 (principal-arn :target-type principal-arn
                                  :required common-lisp:t :member-name
                                  "PrincipalARN")
                                 (principal-type :target-type principal-type
                                  :required common-lisp:t :member-name
                                  "PrincipalType"))
                                (:shape-name
                                 "AssociatePrincipalWithPortfolioInput"))

(smithy/sdk/shapes:define-output associate-principal-with-portfolio-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AssociatePrincipalWithPortfolioOutput"))

(smithy/sdk/shapes:define-input associate-product-with-portfolio-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (product-id :target-type id :required
                                  common-lisp:t :member-name "ProductId")
                                 (portfolio-id :target-type id :required
                                  common-lisp:t :member-name "PortfolioId")
                                 (source-portfolio-id :target-type id
                                  :member-name "SourcePortfolioId"))
                                (:shape-name
                                 "AssociateProductWithPortfolioInput"))

(smithy/sdk/shapes:define-output associate-product-with-portfolio-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AssociateProductWithPortfolioOutput"))

(smithy/sdk/shapes:define-input
 associate-service-action-with-provisioning-artifact-input common-lisp:nil
 ((product-id :target-type id :required common-lisp:t :member-name "ProductId")
  (provisioning-artifact-id :target-type id :required common-lisp:t
   :member-name "ProvisioningArtifactId")
  (service-action-id :target-type id :required common-lisp:t :member-name
   "ServiceActionId")
  (accept-language :target-type accept-language :member-name "AcceptLanguage")
  (idempotency-token :target-type idempotency-token :member-name
   "IdempotencyToken"))
 (:shape-name "AssociateServiceActionWithProvisioningArtifactInput"))

(smithy/sdk/shapes:define-output
 associate-service-action-with-provisioning-artifact-output common-lisp:nil
 common-lisp:nil
 (:shape-name "AssociateServiceActionWithProvisioningArtifactOutput"))

(smithy/sdk/shapes:define-input associate-tag-option-with-resource-input
                                common-lisp:nil
                                ((resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId")
                                 (tag-option-id :target-type tag-option-id
                                  :required common-lisp:t :member-name
                                  "TagOptionId"))
                                (:shape-name
                                 "AssociateTagOptionWithResourceInput"))

(smithy/sdk/shapes:define-output associate-tag-option-with-resource-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "AssociateTagOptionWithResourceOutput"))

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input
 batch-associate-service-action-with-provisioning-artifact-input
 common-lisp:nil
 ((service-action-associations :target-type service-action-associations
   :required common-lisp:t :member-name "ServiceActionAssociations")
  (accept-language :target-type accept-language :member-name "AcceptLanguage"))
 (:shape-name "BatchAssociateServiceActionWithProvisioningArtifactInput"))

(smithy/sdk/shapes:define-output
 batch-associate-service-action-with-provisioning-artifact-output
 common-lisp:nil
 ((failed-service-action-associations :target-type
   failed-service-action-associations :member-name
   "FailedServiceActionAssociations"))
 (:shape-name "BatchAssociateServiceActionWithProvisioningArtifactOutput"))

(smithy/sdk/shapes:define-input
 batch-disassociate-service-action-from-provisioning-artifact-input
 common-lisp:nil
 ((service-action-associations :target-type service-action-associations
   :required common-lisp:t :member-name "ServiceActionAssociations")
  (accept-language :target-type accept-language :member-name "AcceptLanguage"))
 (:shape-name "BatchDisassociateServiceActionFromProvisioningArtifactInput"))

(smithy/sdk/shapes:define-output
 batch-disassociate-service-action-from-provisioning-artifact-output
 common-lisp:nil
 ((failed-service-action-associations :target-type
   failed-service-action-associations :member-name
   "FailedServiceActionAssociations"))
 (:shape-name "BatchDisassociateServiceActionFromProvisioningArtifactOutput"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure budget-detail common-lisp:nil
                                    ((budget-name :target-type budget-name
                                      :member-name "BudgetName"))
                                    (:shape-name "BudgetDetail"))

(smithy/sdk/shapes:define-type budget-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list budgets :member budget-detail)

(smithy/sdk/shapes:define-type causing-entity smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum change-action
    common-lisp:nil
  (:add "ADD")
  (:modify "MODIFY")
  (:remove "REMOVE"))

(smithy/sdk/shapes:define-structure cloud-watch-dashboard common-lisp:nil
                                    ((name :target-type
                                      cloud-watch-dashboard-name :member-name
                                      "Name"))
                                    (:shape-name "CloudWatchDashboard"))

(smithy/sdk/shapes:define-type cloud-watch-dashboard-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list cloud-watch-dashboards :member
                               cloud-watch-dashboard)

(smithy/sdk/shapes:define-type code-star-connection-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure code-star-parameters common-lisp:nil
                                    ((connection-arn :target-type
                                      code-star-connection-arn :required
                                      common-lisp:t :member-name
                                      "ConnectionArn")
                                     (repository :target-type repository
                                      :required common-lisp:t :member-name
                                      "Repository")
                                     (branch :target-type repository-branch
                                      :required common-lisp:t :member-name
                                      "Branch")
                                     (artifact-path :target-type
                                      repository-artifact-path :required
                                      common-lisp:t :member-name
                                      "ArtifactPath"))
                                    (:shape-name "CodeStarParameters"))

(smithy/sdk/shapes:define-type constraint-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure constraint-detail common-lisp:nil
                                    ((constraint-id :target-type id
                                      :member-name "ConstraintId")
                                     (type :target-type constraint-type
                                      :member-name "Type")
                                     (description :target-type
                                      constraint-description :member-name
                                      "Description")
                                     (owner :target-type account-id
                                      :member-name "Owner")
                                     (product-id :target-type id :member-name
                                      "ProductId")
                                     (portfolio-id :target-type id :member-name
                                      "PortfolioId"))
                                    (:shape-name "ConstraintDetail"))

(smithy/sdk/shapes:define-list constraint-details :member constraint-detail)

(smithy/sdk/shapes:define-type constraint-parameters
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list constraint-summaries :member constraint-summary)

(smithy/sdk/shapes:define-structure constraint-summary common-lisp:nil
                                    ((type :target-type constraint-type
                                      :member-name "Type")
                                     (description :target-type
                                      constraint-description :member-name
                                      "Description"))
                                    (:shape-name "ConstraintSummary"))

(smithy/sdk/shapes:define-type constraint-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum copy-option
    common-lisp:nil
  (:copy-tags "CopyTags"))

(smithy/sdk/shapes:define-list copy-options :member copy-option)

(smithy/sdk/shapes:define-input copy-product-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (source-product-arn :target-type product-arn
                                  :required common-lisp:t :member-name
                                  "SourceProductArn")
                                 (target-product-id :target-type id
                                  :member-name "TargetProductId")
                                 (target-product-name :target-type
                                  product-view-name :member-name
                                  "TargetProductName")
                                 (source-provisioning-artifact-identifiers
                                  :target-type
                                  source-provisioning-artifact-properties
                                  :member-name
                                  "SourceProvisioningArtifactIdentifiers")
                                 (copy-options :target-type copy-options
                                  :member-name "CopyOptions")
                                 (idempotency-token :target-type
                                  idempotency-token :required common-lisp:t
                                  :member-name "IdempotencyToken"))
                                (:shape-name "CopyProductInput"))

(smithy/sdk/shapes:define-output copy-product-output common-lisp:nil
                                 ((copy-product-token :target-type id
                                   :member-name "CopyProductToken"))
                                 (:shape-name "CopyProductOutput"))

(smithy/sdk/shapes:define-enum copy-product-status
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:in-progress "IN_PROGRESS")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-input create-constraint-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (portfolio-id :target-type id :required
                                  common-lisp:t :member-name "PortfolioId")
                                 (product-id :target-type id :required
                                  common-lisp:t :member-name "ProductId")
                                 (parameters :target-type constraint-parameters
                                  :required common-lisp:t :member-name
                                  "Parameters")
                                 (type :target-type constraint-type :required
                                  common-lisp:t :member-name "Type")
                                 (description :target-type
                                  constraint-description :member-name
                                  "Description")
                                 (idempotency-token :target-type
                                  idempotency-token :required common-lisp:t
                                  :member-name "IdempotencyToken"))
                                (:shape-name "CreateConstraintInput"))

(smithy/sdk/shapes:define-output create-constraint-output common-lisp:nil
                                 ((constraint-detail :target-type
                                   constraint-detail :member-name
                                   "ConstraintDetail")
                                  (constraint-parameters :target-type
                                   constraint-parameters :member-name
                                   "ConstraintParameters")
                                  (status :target-type status :member-name
                                   "Status"))
                                 (:shape-name "CreateConstraintOutput"))

(smithy/sdk/shapes:define-input create-portfolio-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (display-name :target-type
                                  portfolio-display-name :required
                                  common-lisp:t :member-name "DisplayName")
                                 (description :target-type
                                  portfolio-description :member-name
                                  "Description")
                                 (provider-name :target-type provider-name
                                  :required common-lisp:t :member-name
                                  "ProviderName")
                                 (tags :target-type add-tags :member-name
                                  "Tags")
                                 (idempotency-token :target-type
                                  idempotency-token :required common-lisp:t
                                  :member-name "IdempotencyToken"))
                                (:shape-name "CreatePortfolioInput"))

(smithy/sdk/shapes:define-output create-portfolio-output common-lisp:nil
                                 ((portfolio-detail :target-type
                                   portfolio-detail :member-name
                                   "PortfolioDetail")
                                  (tags :target-type tags :member-name "Tags"))
                                 (:shape-name "CreatePortfolioOutput"))

(smithy/sdk/shapes:define-input create-portfolio-share-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (portfolio-id :target-type id :required
                                  common-lisp:t :member-name "PortfolioId")
                                 (account-id :target-type account-id
                                  :member-name "AccountId")
                                 (organization-node :target-type
                                  organization-node :member-name
                                  "OrganizationNode")
                                 (share-tag-options :target-type boolean
                                  :member-name "ShareTagOptions")
                                 (share-principals :target-type boolean
                                  :member-name "SharePrincipals"))
                                (:shape-name "CreatePortfolioShareInput"))

(smithy/sdk/shapes:define-output create-portfolio-share-output common-lisp:nil
                                 ((portfolio-share-token :target-type id
                                   :member-name "PortfolioShareToken"))
                                 (:shape-name "CreatePortfolioShareOutput"))

(smithy/sdk/shapes:define-input create-product-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (name :target-type product-view-name :required
                                  common-lisp:t :member-name "Name")
                                 (owner :target-type product-view-owner
                                  :required common-lisp:t :member-name "Owner")
                                 (description :target-type
                                  product-view-short-description :member-name
                                  "Description")
                                 (distributor :target-type product-view-owner
                                  :member-name "Distributor")
                                 (support-description :target-type
                                  support-description :member-name
                                  "SupportDescription")
                                 (support-email :target-type support-email
                                  :member-name "SupportEmail")
                                 (support-url :target-type support-url
                                  :member-name "SupportUrl")
                                 (product-type :target-type product-type
                                  :required common-lisp:t :member-name
                                  "ProductType")
                                 (tags :target-type add-tags :member-name
                                  "Tags")
                                 (provisioning-artifact-parameters :target-type
                                  provisioning-artifact-properties :member-name
                                  "ProvisioningArtifactParameters")
                                 (idempotency-token :target-type
                                  idempotency-token :required common-lisp:t
                                  :member-name "IdempotencyToken")
                                 (source-connection :target-type
                                  source-connection :member-name
                                  "SourceConnection"))
                                (:shape-name "CreateProductInput"))

(smithy/sdk/shapes:define-output create-product-output common-lisp:nil
                                 ((product-view-detail :target-type
                                   product-view-detail :member-name
                                   "ProductViewDetail")
                                  (provisioning-artifact-detail :target-type
                                   provisioning-artifact-detail :member-name
                                   "ProvisioningArtifactDetail")
                                  (tags :target-type tags :member-name "Tags"))
                                 (:shape-name "CreateProductOutput"))

(smithy/sdk/shapes:define-input create-provisioned-product-plan-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (plan-name :target-type
                                  provisioned-product-plan-name :required
                                  common-lisp:t :member-name "PlanName")
                                 (plan-type :target-type
                                  provisioned-product-plan-type :required
                                  common-lisp:t :member-name "PlanType")
                                 (notification-arns :target-type
                                  notification-arns :member-name
                                  "NotificationArns")
                                 (path-id :target-type id :member-name
                                  "PathId")
                                 (product-id :target-type id :required
                                  common-lisp:t :member-name "ProductId")
                                 (provisioned-product-name :target-type
                                  provisioned-product-name :required
                                  common-lisp:t :member-name
                                  "ProvisionedProductName")
                                 (provisioning-artifact-id :target-type id
                                  :required common-lisp:t :member-name
                                  "ProvisioningArtifactId")
                                 (provisioning-parameters :target-type
                                  update-provisioning-parameters :member-name
                                  "ProvisioningParameters")
                                 (idempotency-token :target-type
                                  idempotency-token :required common-lisp:t
                                  :member-name "IdempotencyToken")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name
                                 "CreateProvisionedProductPlanInput"))

(smithy/sdk/shapes:define-output create-provisioned-product-plan-output
                                 common-lisp:nil
                                 ((plan-name :target-type
                                   provisioned-product-plan-name :member-name
                                   "PlanName")
                                  (plan-id :target-type id :member-name
                                   "PlanId")
                                  (provision-product-id :target-type id
                                   :member-name "ProvisionProductId")
                                  (provisioned-product-name :target-type
                                   provisioned-product-name :member-name
                                   "ProvisionedProductName")
                                  (provisioning-artifact-id :target-type id
                                   :member-name "ProvisioningArtifactId"))
                                 (:shape-name
                                  "CreateProvisionedProductPlanOutput"))

(smithy/sdk/shapes:define-input create-provisioning-artifact-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (product-id :target-type id :required
                                  common-lisp:t :member-name "ProductId")
                                 (parameters :target-type
                                  provisioning-artifact-properties :required
                                  common-lisp:t :member-name "Parameters")
                                 (idempotency-token :target-type
                                  idempotency-token :required common-lisp:t
                                  :member-name "IdempotencyToken"))
                                (:shape-name "CreateProvisioningArtifactInput"))

(smithy/sdk/shapes:define-output create-provisioning-artifact-output
                                 common-lisp:nil
                                 ((provisioning-artifact-detail :target-type
                                   provisioning-artifact-detail :member-name
                                   "ProvisioningArtifactDetail")
                                  (info :target-type provisioning-artifact-info
                                   :member-name "Info")
                                  (status :target-type status :member-name
                                   "Status"))
                                 (:shape-name
                                  "CreateProvisioningArtifactOutput"))

(smithy/sdk/shapes:define-input create-service-action-input common-lisp:nil
                                ((name :target-type service-action-name
                                  :required common-lisp:t :member-name "Name")
                                 (definition-type :target-type
                                  service-action-definition-type :required
                                  common-lisp:t :member-name "DefinitionType")
                                 (definition :target-type
                                  service-action-definition-map :required
                                  common-lisp:t :member-name "Definition")
                                 (description :target-type
                                  service-action-description :member-name
                                  "Description")
                                 (accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (idempotency-token :target-type
                                  idempotency-token :required common-lisp:t
                                  :member-name "IdempotencyToken"))
                                (:shape-name "CreateServiceActionInput"))

(smithy/sdk/shapes:define-output create-service-action-output common-lisp:nil
                                 ((service-action-detail :target-type
                                   service-action-detail :member-name
                                   "ServiceActionDetail"))
                                 (:shape-name "CreateServiceActionOutput"))

(smithy/sdk/shapes:define-input create-tag-option-input common-lisp:nil
                                ((key :target-type tag-option-key :required
                                  common-lisp:t :member-name "Key")
                                 (value :target-type tag-option-value :required
                                  common-lisp:t :member-name "Value"))
                                (:shape-name "CreateTagOptionInput"))

(smithy/sdk/shapes:define-output create-tag-option-output common-lisp:nil
                                 ((tag-option-detail :target-type
                                   tag-option-detail :member-name
                                   "TagOptionDetail"))
                                 (:shape-name "CreateTagOptionOutput"))

(smithy/sdk/shapes:define-type created-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type creation-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type default-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-constraint-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (id :target-type id :required common-lisp:t
                                  :member-name "Id"))
                                (:shape-name "DeleteConstraintInput"))

(smithy/sdk/shapes:define-output delete-constraint-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteConstraintOutput"))

(smithy/sdk/shapes:define-input delete-portfolio-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (id :target-type id :required common-lisp:t
                                  :member-name "Id"))
                                (:shape-name "DeletePortfolioInput"))

(smithy/sdk/shapes:define-output delete-portfolio-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeletePortfolioOutput"))

(smithy/sdk/shapes:define-input delete-portfolio-share-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (portfolio-id :target-type id :required
                                  common-lisp:t :member-name "PortfolioId")
                                 (account-id :target-type account-id
                                  :member-name "AccountId")
                                 (organization-node :target-type
                                  organization-node :member-name
                                  "OrganizationNode"))
                                (:shape-name "DeletePortfolioShareInput"))

(smithy/sdk/shapes:define-output delete-portfolio-share-output common-lisp:nil
                                 ((portfolio-share-token :target-type id
                                   :member-name "PortfolioShareToken"))
                                 (:shape-name "DeletePortfolioShareOutput"))

(smithy/sdk/shapes:define-input delete-product-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (id :target-type id :required common-lisp:t
                                  :member-name "Id"))
                                (:shape-name "DeleteProductInput"))

(smithy/sdk/shapes:define-output delete-product-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteProductOutput"))

(smithy/sdk/shapes:define-input delete-provisioned-product-plan-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (plan-id :target-type id :required
                                  common-lisp:t :member-name "PlanId")
                                 (ignore-errors :target-type ignore-errors
                                  :member-name "IgnoreErrors"))
                                (:shape-name
                                 "DeleteProvisionedProductPlanInput"))

(smithy/sdk/shapes:define-output delete-provisioned-product-plan-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteProvisionedProductPlanOutput"))

(smithy/sdk/shapes:define-input delete-provisioning-artifact-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (product-id :target-type id :required
                                  common-lisp:t :member-name "ProductId")
                                 (provisioning-artifact-id :target-type id
                                  :required common-lisp:t :member-name
                                  "ProvisioningArtifactId"))
                                (:shape-name "DeleteProvisioningArtifactInput"))

(smithy/sdk/shapes:define-output delete-provisioning-artifact-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteProvisioningArtifactOutput"))

(smithy/sdk/shapes:define-input delete-service-action-input common-lisp:nil
                                ((id :target-type id :required common-lisp:t
                                  :member-name "Id")
                                 (accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (idempotency-token :target-type
                                  idempotency-token :member-name
                                  "IdempotencyToken"))
                                (:shape-name "DeleteServiceActionInput"))

(smithy/sdk/shapes:define-output delete-service-action-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteServiceActionOutput"))

(smithy/sdk/shapes:define-input delete-tag-option-input common-lisp:nil
                                ((id :target-type tag-option-id :required
                                  common-lisp:t :member-name "Id" :http-query
                                  "id"))
                                (:shape-name "DeleteTagOptionInput"))

(smithy/sdk/shapes:define-output delete-tag-option-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteTagOptionOutput"))

(smithy/sdk/shapes:define-input describe-constraint-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (id :target-type id :required common-lisp:t
                                  :member-name "Id"))
                                (:shape-name "DescribeConstraintInput"))

(smithy/sdk/shapes:define-output describe-constraint-output common-lisp:nil
                                 ((constraint-detail :target-type
                                   constraint-detail :member-name
                                   "ConstraintDetail")
                                  (constraint-parameters :target-type
                                   constraint-parameters :member-name
                                   "ConstraintParameters")
                                  (status :target-type status :member-name
                                   "Status"))
                                 (:shape-name "DescribeConstraintOutput"))

(smithy/sdk/shapes:define-input describe-copy-product-status-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (copy-product-token :target-type id :required
                                  common-lisp:t :member-name
                                  "CopyProductToken"))
                                (:shape-name "DescribeCopyProductStatusInput"))

(smithy/sdk/shapes:define-output describe-copy-product-status-output
                                 common-lisp:nil
                                 ((copy-product-status :target-type
                                   copy-product-status :member-name
                                   "CopyProductStatus")
                                  (target-product-id :target-type id
                                   :member-name "TargetProductId")
                                  (status-detail :target-type status-detail
                                   :member-name "StatusDetail"))
                                 (:shape-name
                                  "DescribeCopyProductStatusOutput"))

(smithy/sdk/shapes:define-input describe-portfolio-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (id :target-type id :required common-lisp:t
                                  :member-name "Id"))
                                (:shape-name "DescribePortfolioInput"))

(smithy/sdk/shapes:define-output describe-portfolio-output common-lisp:nil
                                 ((portfolio-detail :target-type
                                   portfolio-detail :member-name
                                   "PortfolioDetail")
                                  (tags :target-type tags :member-name "Tags")
                                  (tag-options :target-type tag-option-details
                                   :member-name "TagOptions")
                                  (budgets :target-type budgets :member-name
                                   "Budgets"))
                                 (:shape-name "DescribePortfolioOutput"))

(smithy/sdk/shapes:define-input describe-portfolio-share-status-input
                                common-lisp:nil
                                ((portfolio-share-token :target-type id
                                  :required common-lisp:t :member-name
                                  "PortfolioShareToken"))
                                (:shape-name
                                 "DescribePortfolioShareStatusInput"))

(smithy/sdk/shapes:define-output describe-portfolio-share-status-output
                                 common-lisp:nil
                                 ((portfolio-share-token :target-type id
                                   :member-name "PortfolioShareToken")
                                  (portfolio-id :target-type id :member-name
                                   "PortfolioId")
                                  (organization-node-value :target-type
                                   organization-node-value :member-name
                                   "OrganizationNodeValue")
                                  (status :target-type share-status
                                   :member-name "Status")
                                  (share-details :target-type share-details
                                   :member-name "ShareDetails"))
                                 (:shape-name
                                  "DescribePortfolioShareStatusOutput"))

(smithy/sdk/shapes:define-enum describe-portfolio-share-type
    common-lisp:nil
  (:account "ACCOUNT")
  (:organization "ORGANIZATION")
  (:organizational-unit "ORGANIZATIONAL_UNIT")
  (:organization-member-account "ORGANIZATION_MEMBER_ACCOUNT"))

(smithy/sdk/shapes:define-input describe-portfolio-shares-input common-lisp:nil
                                ((portfolio-id :target-type id :required
                                  common-lisp:t :member-name "PortfolioId")
                                 (type :target-type
                                  describe-portfolio-share-type :required
                                  common-lisp:t :member-name "Type")
                                 (page-token :target-type page-token
                                  :member-name "PageToken")
                                 (page-size :target-type page-size-max100
                                  :member-name "PageSize"))
                                (:shape-name "DescribePortfolioSharesInput"))

(smithy/sdk/shapes:define-output describe-portfolio-shares-output
                                 common-lisp:nil
                                 ((next-page-token :target-type page-token
                                   :member-name "NextPageToken")
                                  (portfolio-share-details :target-type
                                   portfolio-share-details :member-name
                                   "PortfolioShareDetails"))
                                 (:shape-name "DescribePortfolioSharesOutput"))

(smithy/sdk/shapes:define-input describe-product-as-admin-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (id :target-type id :member-name "Id")
                                 (name :target-type product-view-name
                                  :member-name "Name")
                                 (source-portfolio-id :target-type id
                                  :member-name "SourcePortfolioId"))
                                (:shape-name "DescribeProductAsAdminInput"))

(smithy/sdk/shapes:define-output describe-product-as-admin-output
                                 common-lisp:nil
                                 ((product-view-detail :target-type
                                   product-view-detail :member-name
                                   "ProductViewDetail")
                                  (provisioning-artifact-summaries :target-type
                                   provisioning-artifact-summaries :member-name
                                   "ProvisioningArtifactSummaries")
                                  (tags :target-type tags :member-name "Tags")
                                  (tag-options :target-type tag-option-details
                                   :member-name "TagOptions")
                                  (budgets :target-type budgets :member-name
                                   "Budgets"))
                                 (:shape-name "DescribeProductAsAdminOutput"))

(smithy/sdk/shapes:define-input describe-product-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (id :target-type id :member-name "Id")
                                 (name :target-type product-view-name
                                  :member-name "Name"))
                                (:shape-name "DescribeProductInput"))

(smithy/sdk/shapes:define-output describe-product-output common-lisp:nil
                                 ((product-view-summary :target-type
                                   product-view-summary :member-name
                                   "ProductViewSummary")
                                  (provisioning-artifacts :target-type
                                   provisioning-artifacts :member-name
                                   "ProvisioningArtifacts")
                                  (budgets :target-type budgets :member-name
                                   "Budgets")
                                  (launch-paths :target-type launch-paths
                                   :member-name "LaunchPaths"))
                                 (:shape-name "DescribeProductOutput"))

(smithy/sdk/shapes:define-input describe-product-view-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (id :target-type id :required common-lisp:t
                                  :member-name "Id"))
                                (:shape-name "DescribeProductViewInput"))

(smithy/sdk/shapes:define-output describe-product-view-output common-lisp:nil
                                 ((product-view-summary :target-type
                                   product-view-summary :member-name
                                   "ProductViewSummary")
                                  (provisioning-artifacts :target-type
                                   provisioning-artifacts :member-name
                                   "ProvisioningArtifacts"))
                                 (:shape-name "DescribeProductViewOutput"))

(smithy/sdk/shapes:define-input describe-provisioned-product-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (id :target-type id :member-name "Id")
                                 (name :target-type provisioned-product-name
                                  :member-name "Name"))
                                (:shape-name "DescribeProvisionedProductInput"))

(smithy/sdk/shapes:define-output describe-provisioned-product-output
                                 common-lisp:nil
                                 ((provisioned-product-detail :target-type
                                   provisioned-product-detail :member-name
                                   "ProvisionedProductDetail")
                                  (cloud-watch-dashboards :target-type
                                   cloud-watch-dashboards :member-name
                                   "CloudWatchDashboards"))
                                 (:shape-name
                                  "DescribeProvisionedProductOutput"))

(smithy/sdk/shapes:define-input describe-provisioned-product-plan-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (plan-id :target-type id :required
                                  common-lisp:t :member-name "PlanId")
                                 (page-size :target-type page-size :member-name
                                  "PageSize")
                                 (page-token :target-type page-token
                                  :member-name "PageToken"))
                                (:shape-name
                                 "DescribeProvisionedProductPlanInput"))

(smithy/sdk/shapes:define-output describe-provisioned-product-plan-output
                                 common-lisp:nil
                                 ((provisioned-product-plan-details
                                   :target-type
                                   provisioned-product-plan-details
                                   :member-name
                                   "ProvisionedProductPlanDetails")
                                  (resource-changes :target-type
                                   resource-changes :member-name
                                   "ResourceChanges")
                                  (next-page-token :target-type page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name
                                  "DescribeProvisionedProductPlanOutput"))

(smithy/sdk/shapes:define-input describe-provisioning-artifact-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (provisioning-artifact-id :target-type id
                                  :member-name "ProvisioningArtifactId")
                                 (product-id :target-type id :member-name
                                  "ProductId")
                                 (provisioning-artifact-name :target-type
                                  provisioning-artifact-name :member-name
                                  "ProvisioningArtifactName")
                                 (product-name :target-type product-view-name
                                  :member-name "ProductName")
                                 (verbose :target-type verbose :member-name
                                  "Verbose")
                                 (include-provisioning-artifact-parameters
                                  :target-type boolean :member-name
                                  "IncludeProvisioningArtifactParameters"))
                                (:shape-name
                                 "DescribeProvisioningArtifactInput"))

(smithy/sdk/shapes:define-output describe-provisioning-artifact-output
                                 common-lisp:nil
                                 ((provisioning-artifact-detail :target-type
                                   provisioning-artifact-detail :member-name
                                   "ProvisioningArtifactDetail")
                                  (info :target-type provisioning-artifact-info
                                   :member-name "Info")
                                  (status :target-type status :member-name
                                   "Status")
                                  (provisioning-artifact-parameters
                                   :target-type
                                   provisioning-artifact-parameters
                                   :member-name
                                   "ProvisioningArtifactParameters"))
                                 (:shape-name
                                  "DescribeProvisioningArtifactOutput"))

(smithy/sdk/shapes:define-input describe-provisioning-parameters-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (product-id :target-type id :member-name
                                  "ProductId")
                                 (product-name :target-type product-view-name
                                  :member-name "ProductName")
                                 (provisioning-artifact-id :target-type id
                                  :member-name "ProvisioningArtifactId")
                                 (provisioning-artifact-name :target-type
                                  provisioning-artifact-name :member-name
                                  "ProvisioningArtifactName")
                                 (path-id :target-type id :member-name
                                  "PathId")
                                 (path-name :target-type portfolio-display-name
                                  :member-name "PathName"))
                                (:shape-name
                                 "DescribeProvisioningParametersInput"))

(smithy/sdk/shapes:define-output describe-provisioning-parameters-output
                                 common-lisp:nil
                                 ((provisioning-artifact-parameters
                                   :target-type
                                   provisioning-artifact-parameters
                                   :member-name
                                   "ProvisioningArtifactParameters")
                                  (constraint-summaries :target-type
                                   constraint-summaries :member-name
                                   "ConstraintSummaries")
                                  (usage-instructions :target-type
                                   usage-instructions :member-name
                                   "UsageInstructions")
                                  (tag-options :target-type
                                   tag-option-summaries :member-name
                                   "TagOptions")
                                  (provisioning-artifact-preferences
                                   :target-type
                                   provisioning-artifact-preferences
                                   :member-name
                                   "ProvisioningArtifactPreferences")
                                  (provisioning-artifact-outputs :target-type
                                   provisioning-artifact-outputs :member-name
                                   "ProvisioningArtifactOutputs")
                                  (provisioning-artifact-output-keys
                                   :target-type provisioning-artifact-outputs
                                   :member-name
                                   "ProvisioningArtifactOutputKeys"))
                                 (:shape-name
                                  "DescribeProvisioningParametersOutput"))

(smithy/sdk/shapes:define-input describe-record-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (id :target-type id :required common-lisp:t
                                  :member-name "Id")
                                 (page-token :target-type page-token
                                  :member-name "PageToken")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name "DescribeRecordInput"))

(smithy/sdk/shapes:define-output describe-record-output common-lisp:nil
                                 ((record-detail :target-type record-detail
                                   :member-name "RecordDetail")
                                  (record-outputs :target-type record-outputs
                                   :member-name "RecordOutputs")
                                  (next-page-token :target-type page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name "DescribeRecordOutput"))

(smithy/sdk/shapes:define-input
 describe-service-action-execution-parameters-input common-lisp:nil
 ((provisioned-product-id :target-type id :required common-lisp:t :member-name
   "ProvisionedProductId")
  (service-action-id :target-type id :required common-lisp:t :member-name
   "ServiceActionId")
  (accept-language :target-type accept-language :member-name "AcceptLanguage"))
 (:shape-name "DescribeServiceActionExecutionParametersInput"))

(smithy/sdk/shapes:define-output
 describe-service-action-execution-parameters-output common-lisp:nil
 ((service-action-parameters :target-type execution-parameters :member-name
   "ServiceActionParameters"))
 (:shape-name "DescribeServiceActionExecutionParametersOutput"))

(smithy/sdk/shapes:define-input describe-service-action-input common-lisp:nil
                                ((id :target-type id :required common-lisp:t
                                  :member-name "Id")
                                 (accept-language :target-type accept-language
                                  :member-name "AcceptLanguage"))
                                (:shape-name "DescribeServiceActionInput"))

(smithy/sdk/shapes:define-output describe-service-action-output common-lisp:nil
                                 ((service-action-detail :target-type
                                   service-action-detail :member-name
                                   "ServiceActionDetail"))
                                 (:shape-name "DescribeServiceActionOutput"))

(smithy/sdk/shapes:define-input describe-tag-option-input common-lisp:nil
                                ((id :target-type tag-option-id :required
                                  common-lisp:t :member-name "Id" :http-query
                                  "id"))
                                (:shape-name "DescribeTagOptionInput"))

(smithy/sdk/shapes:define-output describe-tag-option-output common-lisp:nil
                                 ((tag-option-detail :target-type
                                   tag-option-detail :member-name
                                   "TagOptionDetail"))
                                 (:shape-name "DescribeTagOptionOutput"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disable-awsorganizations-access-input
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "DisableAWSOrganizationsAccessInput"))

(smithy/sdk/shapes:define-output disable-awsorganizations-access-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisableAWSOrganizationsAccessOutput"))

(smithy/sdk/shapes:define-type disable-template-validation
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input disassociate-budget-from-resource-input
                                common-lisp:nil
                                ((budget-name :target-type budget-name
                                  :required common-lisp:t :member-name
                                  "BudgetName")
                                 (resource-id :target-type id :required
                                  common-lisp:t :member-name "ResourceId"))
                                (:shape-name
                                 "DisassociateBudgetFromResourceInput"))

(smithy/sdk/shapes:define-output disassociate-budget-from-resource-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateBudgetFromResourceOutput"))

(smithy/sdk/shapes:define-input disassociate-principal-from-portfolio-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (portfolio-id :target-type id :required
                                  common-lisp:t :member-name "PortfolioId")
                                 (principal-arn :target-type principal-arn
                                  :required common-lisp:t :member-name
                                  "PrincipalARN")
                                 (principal-type :target-type principal-type
                                  :member-name "PrincipalType"))
                                (:shape-name
                                 "DisassociatePrincipalFromPortfolioInput"))

(smithy/sdk/shapes:define-output disassociate-principal-from-portfolio-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociatePrincipalFromPortfolioOutput"))

(smithy/sdk/shapes:define-input disassociate-product-from-portfolio-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (product-id :target-type id :required
                                  common-lisp:t :member-name "ProductId")
                                 (portfolio-id :target-type id :required
                                  common-lisp:t :member-name "PortfolioId"))
                                (:shape-name
                                 "DisassociateProductFromPortfolioInput"))

(smithy/sdk/shapes:define-output disassociate-product-from-portfolio-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateProductFromPortfolioOutput"))

(smithy/sdk/shapes:define-input
 disassociate-service-action-from-provisioning-artifact-input common-lisp:nil
 ((product-id :target-type id :required common-lisp:t :member-name "ProductId")
  (provisioning-artifact-id :target-type id :required common-lisp:t
   :member-name "ProvisioningArtifactId")
  (service-action-id :target-type id :required common-lisp:t :member-name
   "ServiceActionId")
  (accept-language :target-type accept-language :member-name "AcceptLanguage")
  (idempotency-token :target-type idempotency-token :member-name
   "IdempotencyToken"))
 (:shape-name "DisassociateServiceActionFromProvisioningArtifactInput"))

(smithy/sdk/shapes:define-output
 disassociate-service-action-from-provisioning-artifact-output common-lisp:nil
 common-lisp:nil
 (:shape-name "DisassociateServiceActionFromProvisioningArtifactOutput"))

(smithy/sdk/shapes:define-input disassociate-tag-option-from-resource-input
                                common-lisp:nil
                                ((resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ResourceId" :http-query "resourceId")
                                 (tag-option-id :target-type tag-option-id
                                  :required common-lisp:t :member-name
                                  "TagOptionId" :http-query "tagOptionId"))
                                (:shape-name
                                 "DisassociateTagOptionFromResourceInput"))

(smithy/sdk/shapes:define-output disassociate-tag-option-from-resource-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DisassociateTagOptionFromResourceOutput"))

(smithy/sdk/shapes:define-error duplicate-resource-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "DuplicateResourceException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input enable-awsorganizations-access-input
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "EnableAWSOrganizationsAccessInput"))

(smithy/sdk/shapes:define-output enable-awsorganizations-access-output
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "EnableAWSOrganizationsAccessOutput"))

(smithy/sdk/shapes:define-type engine-workflow-failure-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure engine-workflow-resource-identifier
                                    common-lisp:nil
                                    ((unique-tag :target-type
                                      unique-tag-resource-identifier
                                      :member-name "UniqueTag"))
                                    (:shape-name
                                     "EngineWorkflowResourceIdentifier"))

(smithy/sdk/shapes:define-enum engine-workflow-status
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type engine-workflow-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum evaluation-type
    common-lisp:nil
  (:static "STATIC")
  (:dynamic "DYNAMIC"))

(smithy/sdk/shapes:define-input execute-provisioned-product-plan-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (plan-id :target-type id :required
                                  common-lisp:t :member-name "PlanId")
                                 (idempotency-token :target-type
                                  idempotency-token :required common-lisp:t
                                  :member-name "IdempotencyToken"))
                                (:shape-name
                                 "ExecuteProvisionedProductPlanInput"))

(smithy/sdk/shapes:define-output execute-provisioned-product-plan-output
                                 common-lisp:nil
                                 ((record-detail :target-type record-detail
                                   :member-name "RecordDetail"))
                                 (:shape-name
                                  "ExecuteProvisionedProductPlanOutput"))

(smithy/sdk/shapes:define-input
 execute-provisioned-product-service-action-input common-lisp:nil
 ((provisioned-product-id :target-type id :required common-lisp:t :member-name
   "ProvisionedProductId")
  (service-action-id :target-type id :required common-lisp:t :member-name
   "ServiceActionId")
  (execute-token :target-type idempotency-token :required common-lisp:t
   :member-name "ExecuteToken")
  (accept-language :target-type accept-language :member-name "AcceptLanguage")
  (parameters :target-type execution-parameter-map :member-name "Parameters"))
 (:shape-name "ExecuteProvisionedProductServiceActionInput"))

(smithy/sdk/shapes:define-output
 execute-provisioned-product-service-action-output common-lisp:nil
 ((record-detail :target-type record-detail :member-name "RecordDetail"))
 (:shape-name "ExecuteProvisionedProductServiceActionOutput"))

(smithy/sdk/shapes:define-structure execution-parameter common-lisp:nil
                                    ((name :target-type execution-parameter-key
                                      :member-name "Name")
                                     (type :target-type
                                      execution-parameter-type :member-name
                                      "Type")
                                     (default-values :target-type
                                      execution-parameter-value-list
                                      :member-name "DefaultValues"))
                                    (:shape-name "ExecutionParameter"))

(smithy/sdk/shapes:define-type execution-parameter-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map execution-parameter-map :key
                              execution-parameter-key :value
                              execution-parameter-value-list)

(smithy/sdk/shapes:define-type execution-parameter-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type execution-parameter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list execution-parameter-value-list :member
                               execution-parameter-value)

(smithy/sdk/shapes:define-list execution-parameters :member execution-parameter)

(smithy/sdk/shapes:define-structure failed-service-action-association
                                    common-lisp:nil
                                    ((service-action-id :target-type id
                                      :member-name "ServiceActionId")
                                     (product-id :target-type id :member-name
                                      "ProductId")
                                     (provisioning-artifact-id :target-type id
                                      :member-name "ProvisioningArtifactId")
                                     (error-code :target-type
                                      service-action-association-error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type
                                      service-action-association-error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name
                                     "FailedServiceActionAssociation"))

(smithy/sdk/shapes:define-list failed-service-action-associations :member
                               failed-service-action-association)

(smithy/sdk/shapes:define-input get-awsorganizations-access-status-input
                                common-lisp:nil common-lisp:nil
                                (:shape-name
                                 "GetAWSOrganizationsAccessStatusInput"))

(smithy/sdk/shapes:define-output get-awsorganizations-access-status-output
                                 common-lisp:nil
                                 ((access-status :target-type access-status
                                   :member-name "AccessStatus"))
                                 (:shape-name
                                  "GetAWSOrganizationsAccessStatusOutput"))

(smithy/sdk/shapes:define-input get-provisioned-product-outputs-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (provisioned-product-id :target-type id
                                  :member-name "ProvisionedProductId")
                                 (provisioned-product-name :target-type
                                  provisioned-product-name :member-name
                                  "ProvisionedProductName")
                                 (output-keys :target-type output-keys
                                  :member-name "OutputKeys")
                                 (page-size :target-type page-size :member-name
                                  "PageSize")
                                 (page-token :target-type page-token
                                  :member-name "PageToken"))
                                (:shape-name
                                 "GetProvisionedProductOutputsInput"))

(smithy/sdk/shapes:define-output get-provisioned-product-outputs-output
                                 common-lisp:nil
                                 ((outputs :target-type record-outputs
                                   :member-name "Outputs")
                                  (next-page-token :target-type page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name
                                  "GetProvisionedProductOutputsOutput"))

(smithy/sdk/shapes:define-type has-default-path smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type idempotency-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type ignore-errors smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-input import-as-provisioned-product-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (product-id :target-type id :required
                                  common-lisp:t :member-name "ProductId")
                                 (provisioning-artifact-id :target-type id
                                  :required common-lisp:t :member-name
                                  "ProvisioningArtifactId")
                                 (provisioned-product-name :target-type
                                  provisioned-product-name :required
                                  common-lisp:t :member-name
                                  "ProvisionedProductName")
                                 (physical-id :target-type physical-id
                                  :required common-lisp:t :member-name
                                  "PhysicalId")
                                 (idempotency-token :target-type
                                  idempotency-token :required common-lisp:t
                                  :member-name "IdempotencyToken"))
                                (:shape-name "ImportAsProvisionedProductInput"))

(smithy/sdk/shapes:define-output import-as-provisioned-product-output
                                 common-lisp:nil
                                 ((record-detail :target-type record-detail
                                   :member-name "RecordDetail"))
                                 (:shape-name
                                  "ImportAsProvisionedProductOutput"))

(smithy/sdk/shapes:define-type instruction-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type instruction-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error invalid-parameters-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidParametersException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-state-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InvalidStateException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type last-request-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type last-successful-sync-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure last-sync common-lisp:nil
                                    ((last-sync-time :target-type
                                      last-sync-time :member-name
                                      "LastSyncTime")
                                     (last-sync-status :target-type
                                      last-sync-status :member-name
                                      "LastSyncStatus")
                                     (last-sync-status-message :target-type
                                      last-sync-status-message :member-name
                                      "LastSyncStatusMessage")
                                     (last-successful-sync-time :target-type
                                      last-successful-sync-time :member-name
                                      "LastSuccessfulSyncTime")
                                     (last-successful-sync-provisioning-artifact-id
                                      :target-type id :member-name
                                      "LastSuccessfulSyncProvisioningArtifactId"))
                                    (:shape-name "LastSync"))

(smithy/sdk/shapes:define-enum last-sync-status
    common-lisp:nil
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type last-sync-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type last-sync-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure launch-path common-lisp:nil
                                    ((id :target-type id :member-name "Id")
                                     (name :target-type portfolio-name
                                      :member-name "Name"))
                                    (:shape-name "LaunchPath"))

(smithy/sdk/shapes:define-list launch-path-summaries :member
                               launch-path-summary)

(smithy/sdk/shapes:define-structure launch-path-summary common-lisp:nil
                                    ((id :target-type id :member-name "Id")
                                     (constraint-summaries :target-type
                                      constraint-summaries :member-name
                                      "ConstraintSummaries")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (name :target-type portfolio-name
                                      :member-name "Name"))
                                    (:shape-name "LaunchPathSummary"))

(smithy/sdk/shapes:define-list launch-paths :member launch-path)

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input list-accepted-portfolio-shares-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (page-token :target-type page-token
                                  :member-name "PageToken")
                                 (page-size :target-type page-size-max100
                                  :member-name "PageSize")
                                 (portfolio-share-type :target-type
                                  portfolio-share-type :member-name
                                  "PortfolioShareType"))
                                (:shape-name
                                 "ListAcceptedPortfolioSharesInput"))

(smithy/sdk/shapes:define-output list-accepted-portfolio-shares-output
                                 common-lisp:nil
                                 ((portfolio-details :target-type
                                   portfolio-details :member-name
                                   "PortfolioDetails")
                                  (next-page-token :target-type page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name
                                  "ListAcceptedPortfolioSharesOutput"))

(smithy/sdk/shapes:define-input list-budgets-for-resource-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (resource-id :target-type id :required
                                  common-lisp:t :member-name "ResourceId")
                                 (page-size :target-type page-size :member-name
                                  "PageSize")
                                 (page-token :target-type page-token
                                  :member-name "PageToken"))
                                (:shape-name "ListBudgetsForResourceInput"))

(smithy/sdk/shapes:define-output list-budgets-for-resource-output
                                 common-lisp:nil
                                 ((budgets :target-type budgets :member-name
                                   "Budgets")
                                  (next-page-token :target-type page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name "ListBudgetsForResourceOutput"))

(smithy/sdk/shapes:define-input list-constraints-for-portfolio-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (portfolio-id :target-type id :required
                                  common-lisp:t :member-name "PortfolioId")
                                 (product-id :target-type id :member-name
                                  "ProductId")
                                 (page-size :target-type page-size :member-name
                                  "PageSize")
                                 (page-token :target-type page-token
                                  :member-name "PageToken"))
                                (:shape-name
                                 "ListConstraintsForPortfolioInput"))

(smithy/sdk/shapes:define-output list-constraints-for-portfolio-output
                                 common-lisp:nil
                                 ((constraint-details :target-type
                                   constraint-details :member-name
                                   "ConstraintDetails")
                                  (next-page-token :target-type page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name
                                  "ListConstraintsForPortfolioOutput"))

(smithy/sdk/shapes:define-input list-launch-paths-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (product-id :target-type id :required
                                  common-lisp:t :member-name "ProductId")
                                 (page-size :target-type page-size :member-name
                                  "PageSize")
                                 (page-token :target-type page-token
                                  :member-name "PageToken"))
                                (:shape-name "ListLaunchPathsInput"))

(smithy/sdk/shapes:define-output list-launch-paths-output common-lisp:nil
                                 ((launch-path-summaries :target-type
                                   launch-path-summaries :member-name
                                   "LaunchPathSummaries")
                                  (next-page-token :target-type page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name "ListLaunchPathsOutput"))

(smithy/sdk/shapes:define-input list-organization-portfolio-access-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (portfolio-id :target-type id :required
                                  common-lisp:t :member-name "PortfolioId")
                                 (organization-node-type :target-type
                                  organization-node-type :required
                                  common-lisp:t :member-name
                                  "OrganizationNodeType")
                                 (page-token :target-type page-token
                                  :member-name "PageToken")
                                 (page-size :target-type page-size :member-name
                                  "PageSize"))
                                (:shape-name
                                 "ListOrganizationPortfolioAccessInput"))

(smithy/sdk/shapes:define-output list-organization-portfolio-access-output
                                 common-lisp:nil
                                 ((organization-nodes :target-type
                                   organization-nodes :member-name
                                   "OrganizationNodes")
                                  (next-page-token :target-type page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name
                                  "ListOrganizationPortfolioAccessOutput"))

(smithy/sdk/shapes:define-input list-portfolio-access-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (portfolio-id :target-type id :required
                                  common-lisp:t :member-name "PortfolioId")
                                 (organization-parent-id :target-type id
                                  :member-name "OrganizationParentId")
                                 (page-token :target-type page-token
                                  :member-name "PageToken")
                                 (page-size :target-type page-size-max100
                                  :member-name "PageSize"))
                                (:shape-name "ListPortfolioAccessInput"))

(smithy/sdk/shapes:define-output list-portfolio-access-output common-lisp:nil
                                 ((account-ids :target-type account-ids
                                   :member-name "AccountIds")
                                  (next-page-token :target-type page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name "ListPortfolioAccessOutput"))

(smithy/sdk/shapes:define-input list-portfolios-for-product-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (product-id :target-type id :required
                                  common-lisp:t :member-name "ProductId")
                                 (page-token :target-type page-token
                                  :member-name "PageToken")
                                 (page-size :target-type page-size-max100
                                  :member-name "PageSize"))
                                (:shape-name "ListPortfoliosForProductInput"))

(smithy/sdk/shapes:define-output list-portfolios-for-product-output
                                 common-lisp:nil
                                 ((portfolio-details :target-type
                                   portfolio-details :member-name
                                   "PortfolioDetails")
                                  (next-page-token :target-type page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name "ListPortfoliosForProductOutput"))

(smithy/sdk/shapes:define-input list-portfolios-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (page-token :target-type page-token
                                  :member-name "PageToken")
                                 (page-size :target-type page-size-max100
                                  :member-name "PageSize"))
                                (:shape-name "ListPortfoliosInput"))

(smithy/sdk/shapes:define-output list-portfolios-output common-lisp:nil
                                 ((portfolio-details :target-type
                                   portfolio-details :member-name
                                   "PortfolioDetails")
                                  (next-page-token :target-type page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name "ListPortfoliosOutput"))

(smithy/sdk/shapes:define-input list-principals-for-portfolio-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (portfolio-id :target-type id :required
                                  common-lisp:t :member-name "PortfolioId")
                                 (page-size :target-type page-size :member-name
                                  "PageSize")
                                 (page-token :target-type page-token
                                  :member-name "PageToken"))
                                (:shape-name "ListPrincipalsForPortfolioInput"))

(smithy/sdk/shapes:define-output list-principals-for-portfolio-output
                                 common-lisp:nil
                                 ((principals :target-type principals
                                   :member-name "Principals")
                                  (next-page-token :target-type page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name
                                  "ListPrincipalsForPortfolioOutput"))

(smithy/sdk/shapes:define-input list-provisioned-product-plans-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (provision-product-id :target-type id
                                  :member-name "ProvisionProductId")
                                 (page-size :target-type page-size :member-name
                                  "PageSize")
                                 (page-token :target-type page-token
                                  :member-name "PageToken")
                                 (access-level-filter :target-type
                                  access-level-filter :member-name
                                  "AccessLevelFilter"))
                                (:shape-name
                                 "ListProvisionedProductPlansInput"))

(smithy/sdk/shapes:define-output list-provisioned-product-plans-output
                                 common-lisp:nil
                                 ((provisioned-product-plans :target-type
                                   provisioned-product-plans :member-name
                                   "ProvisionedProductPlans")
                                  (next-page-token :target-type page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name
                                  "ListProvisionedProductPlansOutput"))

(smithy/sdk/shapes:define-input
 list-provisioning-artifacts-for-service-action-input common-lisp:nil
 ((service-action-id :target-type id :required common-lisp:t :member-name
   "ServiceActionId")
  (page-size :target-type page-size :member-name "PageSize")
  (page-token :target-type page-token :member-name "PageToken")
  (accept-language :target-type accept-language :member-name "AcceptLanguage"))
 (:shape-name "ListProvisioningArtifactsForServiceActionInput"))

(smithy/sdk/shapes:define-output
 list-provisioning-artifacts-for-service-action-output common-lisp:nil
 ((provisioning-artifact-views :target-type provisioning-artifact-views
   :member-name "ProvisioningArtifactViews")
  (next-page-token :target-type page-token :member-name "NextPageToken"))
 (:shape-name "ListProvisioningArtifactsForServiceActionOutput"))

(smithy/sdk/shapes:define-input list-provisioning-artifacts-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (product-id :target-type id :required
                                  common-lisp:t :member-name "ProductId"))
                                (:shape-name "ListProvisioningArtifactsInput"))

(smithy/sdk/shapes:define-output list-provisioning-artifacts-output
                                 common-lisp:nil
                                 ((provisioning-artifact-details :target-type
                                   provisioning-artifact-details :member-name
                                   "ProvisioningArtifactDetails")
                                  (next-page-token :target-type page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name
                                  "ListProvisioningArtifactsOutput"))

(smithy/sdk/shapes:define-input list-record-history-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (access-level-filter :target-type
                                  access-level-filter :member-name
                                  "AccessLevelFilter")
                                 (search-filter :target-type
                                  list-record-history-search-filter
                                  :member-name "SearchFilter")
                                 (page-size :target-type page-size :member-name
                                  "PageSize")
                                 (page-token :target-type page-token
                                  :member-name "PageToken"))
                                (:shape-name "ListRecordHistoryInput"))

(smithy/sdk/shapes:define-output list-record-history-output common-lisp:nil
                                 ((record-details :target-type record-details
                                   :member-name "RecordDetails")
                                  (next-page-token :target-type page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name "ListRecordHistoryOutput"))

(smithy/sdk/shapes:define-structure list-record-history-search-filter
                                    common-lisp:nil
                                    ((key :target-type search-filter-key
                                      :member-name "Key")
                                     (value :target-type search-filter-value
                                      :member-name "Value"))
                                    (:shape-name
                                     "ListRecordHistorySearchFilter"))

(smithy/sdk/shapes:define-input list-resources-for-tag-option-input
                                common-lisp:nil
                                ((tag-option-id :target-type tag-option-id
                                  :required common-lisp:t :member-name
                                  "TagOptionId" :http-query "tagOptionId")
                                 (resource-type :target-type resource-type
                                  :member-name "ResourceType" :http-query
                                  "resourceType")
                                 (page-size :target-type page-size :member-name
                                  "PageSize" :http-query "pageSize")
                                 (page-token :target-type page-token
                                  :member-name "PageToken" :http-query
                                  "pageToken"))
                                (:shape-name "ListResourcesForTagOptionInput"))

(smithy/sdk/shapes:define-output list-resources-for-tag-option-output
                                 common-lisp:nil
                                 ((resource-details :target-type
                                   resource-details :member-name
                                   "ResourceDetails")
                                  (page-token :target-type page-token
                                   :member-name "PageToken"))
                                 (:shape-name
                                  "ListResourcesForTagOptionOutput"))

(smithy/sdk/shapes:define-input
 list-service-actions-for-provisioning-artifact-input common-lisp:nil
 ((product-id :target-type id :required common-lisp:t :member-name "ProductId")
  (provisioning-artifact-id :target-type id :required common-lisp:t
   :member-name "ProvisioningArtifactId")
  (page-size :target-type page-size :member-name "PageSize")
  (page-token :target-type page-token :member-name "PageToken")
  (accept-language :target-type accept-language :member-name "AcceptLanguage"))
 (:shape-name "ListServiceActionsForProvisioningArtifactInput"))

(smithy/sdk/shapes:define-output
 list-service-actions-for-provisioning-artifact-output common-lisp:nil
 ((service-action-summaries :target-type service-action-summaries :member-name
   "ServiceActionSummaries")
  (next-page-token :target-type page-token :member-name "NextPageToken"))
 (:shape-name "ListServiceActionsForProvisioningArtifactOutput"))

(smithy/sdk/shapes:define-input list-service-actions-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (page-size :target-type page-size :member-name
                                  "PageSize")
                                 (page-token :target-type page-token
                                  :member-name "PageToken"))
                                (:shape-name "ListServiceActionsInput"))

(smithy/sdk/shapes:define-output list-service-actions-output common-lisp:nil
                                 ((service-action-summaries :target-type
                                   service-action-summaries :member-name
                                   "ServiceActionSummaries")
                                  (next-page-token :target-type page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name "ListServiceActionsOutput"))

(smithy/sdk/shapes:define-input
 list-stack-instances-for-provisioned-product-input common-lisp:nil
 ((accept-language :target-type accept-language :member-name "AcceptLanguage")
  (provisioned-product-id :target-type id :required common-lisp:t :member-name
   "ProvisionedProductId")
  (page-token :target-type page-token :member-name "PageToken")
  (page-size :target-type page-size :member-name "PageSize"))
 (:shape-name "ListStackInstancesForProvisionedProductInput"))

(smithy/sdk/shapes:define-output
 list-stack-instances-for-provisioned-product-output common-lisp:nil
 ((stack-instances :target-type stack-instances :member-name "StackInstances")
  (next-page-token :target-type page-token :member-name "NextPageToken"))
 (:shape-name "ListStackInstancesForProvisionedProductOutput"))

(smithy/sdk/shapes:define-structure list-tag-options-filters common-lisp:nil
                                    ((key :target-type tag-option-key
                                      :member-name "Key")
                                     (value :target-type tag-option-value
                                      :member-name "Value")
                                     (active :target-type tag-option-active
                                      :member-name "Active"))
                                    (:shape-name "ListTagOptionsFilters"))

(smithy/sdk/shapes:define-input list-tag-options-input common-lisp:nil
                                ((filters :target-type list-tag-options-filters
                                  :member-name "Filters")
                                 (page-size :target-type page-size :member-name
                                  "PageSize")
                                 (page-token :target-type page-token
                                  :member-name "PageToken"))
                                (:shape-name "ListTagOptionsInput"))

(smithy/sdk/shapes:define-output list-tag-options-output common-lisp:nil
                                 ((tag-option-details :target-type
                                   tag-option-details :member-name
                                   "TagOptionDetails")
                                  (page-token :target-type page-token
                                   :member-name "PageToken"))
                                 (:shape-name "ListTagOptionsOutput"))

(smithy/sdk/shapes:define-type logical-resource-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list namespaces :member account-id)

(smithy/sdk/shapes:define-type no-echo smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type notification-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list notification-arns :member notification-arn)

(smithy/sdk/shapes:define-input
 notify-provision-product-engine-workflow-result-input common-lisp:nil
 ((workflow-token :target-type engine-workflow-token :required common-lisp:t
   :member-name "WorkflowToken")
  (record-id :target-type id :required common-lisp:t :member-name "RecordId")
  (status :target-type engine-workflow-status :required common-lisp:t
   :member-name "Status")
  (failure-reason :target-type engine-workflow-failure-reason :member-name
   "FailureReason")
  (resource-identifier :target-type engine-workflow-resource-identifier
   :member-name "ResourceIdentifier")
  (outputs :target-type record-outputs :member-name "Outputs")
  (idempotency-token :target-type idempotency-token :required common-lisp:t
   :member-name "IdempotencyToken"))
 (:shape-name "NotifyProvisionProductEngineWorkflowResultInput"))

(smithy/sdk/shapes:define-output
 notify-provision-product-engine-workflow-result-output common-lisp:nil
 common-lisp:nil
 (:shape-name "NotifyProvisionProductEngineWorkflowResultOutput"))

(smithy/sdk/shapes:define-input
 notify-terminate-provisioned-product-engine-workflow-result-input
 common-lisp:nil
 ((workflow-token :target-type engine-workflow-token :required common-lisp:t
   :member-name "WorkflowToken")
  (record-id :target-type id :required common-lisp:t :member-name "RecordId")
  (status :target-type engine-workflow-status :required common-lisp:t
   :member-name "Status")
  (failure-reason :target-type engine-workflow-failure-reason :member-name
   "FailureReason")
  (idempotency-token :target-type idempotency-token :required common-lisp:t
   :member-name "IdempotencyToken"))
 (:shape-name "NotifyTerminateProvisionedProductEngineWorkflowResultInput"))

(smithy/sdk/shapes:define-output
 notify-terminate-provisioned-product-engine-workflow-result-output
 common-lisp:nil common-lisp:nil
 (:shape-name "NotifyTerminateProvisionedProductEngineWorkflowResultOutput"))

(smithy/sdk/shapes:define-input
 notify-update-provisioned-product-engine-workflow-result-input common-lisp:nil
 ((workflow-token :target-type engine-workflow-token :required common-lisp:t
   :member-name "WorkflowToken")
  (record-id :target-type id :required common-lisp:t :member-name "RecordId")
  (status :target-type engine-workflow-status :required common-lisp:t
   :member-name "Status")
  (failure-reason :target-type engine-workflow-failure-reason :member-name
   "FailureReason")
  (outputs :target-type record-outputs :member-name "Outputs")
  (idempotency-token :target-type idempotency-token :required common-lisp:t
   :member-name "IdempotencyToken"))
 (:shape-name "NotifyUpdateProvisionedProductEngineWorkflowResultInput"))

(smithy/sdk/shapes:define-output
 notify-update-provisioned-product-engine-workflow-result-output
 common-lisp:nil common-lisp:nil
 (:shape-name "NotifyUpdateProvisionedProductEngineWorkflowResultOutput"))

(smithy/sdk/shapes:define-type nullable-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error operation-not-supported-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "OperationNotSupportedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure organization-node common-lisp:nil
                                    ((type :target-type organization-node-type
                                      :member-name "Type")
                                     (value :target-type
                                      organization-node-value :member-name
                                      "Value"))
                                    (:shape-name "OrganizationNode"))

(smithy/sdk/shapes:define-enum organization-node-type
    common-lisp:nil
  (:organization "ORGANIZATION")
  (:organizational-unit "ORGANIZATIONAL_UNIT")
  (:account "ACCOUNT"))

(smithy/sdk/shapes:define-type organization-node-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list organization-nodes :member organization-node)

(smithy/sdk/shapes:define-type output-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type output-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list output-keys :member output-key)

(smithy/sdk/shapes:define-type output-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type owner smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type page-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type page-size-max100 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type page-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure parameter-constraints common-lisp:nil
                                    ((allowed-values :target-type
                                      allowed-values :member-name
                                      "AllowedValues")
                                     (allowed-pattern :target-type string
                                      :member-name "AllowedPattern")
                                     (constraint-description :target-type
                                      string :member-name
                                      "ConstraintDescription")
                                     (max-length :target-type string
                                      :member-name "MaxLength")
                                     (min-length :target-type string
                                      :member-name "MinLength")
                                     (max-value :target-type string
                                      :member-name "MaxValue")
                                     (min-value :target-type string
                                      :member-name "MinValue"))
                                    (:shape-name "ParameterConstraints"))

(smithy/sdk/shapes:define-type parameter-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parameter-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type parameter-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type physical-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type physical-resource-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type plan-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type portfolio-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure portfolio-detail common-lisp:nil
                                    ((id :target-type id :member-name "Id")
                                     (arn :target-type resource-arn
                                      :member-name "ARN")
                                     (display-name :target-type
                                      portfolio-display-name :member-name
                                      "DisplayName")
                                     (description :target-type
                                      portfolio-description :member-name
                                      "Description")
                                     (created-time :target-type creation-time
                                      :member-name "CreatedTime")
                                     (provider-name :target-type provider-name
                                      :member-name "ProviderName"))
                                    (:shape-name "PortfolioDetail"))

(smithy/sdk/shapes:define-list portfolio-details :member portfolio-detail)

(smithy/sdk/shapes:define-type portfolio-display-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type portfolio-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure portfolio-share-detail common-lisp:nil
                                    ((principal-id :target-type id :member-name
                                      "PrincipalId")
                                     (type :target-type
                                      describe-portfolio-share-type
                                      :member-name "Type")
                                     (accepted :target-type boolean
                                      :member-name "Accepted")
                                     (share-tag-options :target-type boolean
                                      :member-name "ShareTagOptions")
                                     (share-principals :target-type boolean
                                      :member-name "SharePrincipals"))
                                    (:shape-name "PortfolioShareDetail"))

(smithy/sdk/shapes:define-list portfolio-share-details :member
                               portfolio-share-detail)

(smithy/sdk/shapes:define-enum portfolio-share-type
    common-lisp:nil
  (:imported "IMPORTED")
  (:aws-servicecatalog "AWS_SERVICECATALOG")
  (:aws-organizations "AWS_ORGANIZATIONS"))

(smithy/sdk/shapes:define-structure principal common-lisp:nil
                                    ((principal-arn :target-type principal-arn
                                      :member-name "PrincipalARN")
                                     (principal-type :target-type
                                      principal-type :member-name
                                      "PrincipalType"))
                                    (:shape-name "Principal"))

(smithy/sdk/shapes:define-type principal-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum principal-type
    common-lisp:nil
  (:iam "IAM")
  (:iam-pattern "IAM_PATTERN"))

(smithy/sdk/shapes:define-list principals :member principal)

(smithy/sdk/shapes:define-type product-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum product-source
    common-lisp:nil
  (:account "ACCOUNT"))

(smithy/sdk/shapes:define-enum product-type
    common-lisp:nil
  (:cloud-formation-template "CLOUD_FORMATION_TEMPLATE")
  (:marketplace "MARKETPLACE")
  (:terraform-open-source "TERRAFORM_OPEN_SOURCE")
  (:terraform-cloud "TERRAFORM_CLOUD")
  (:external "EXTERNAL"))

(smithy/sdk/shapes:define-type product-view-aggregation-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure product-view-aggregation-value
                                    common-lisp:nil
                                    ((value :target-type attribute-value
                                      :member-name "Value")
                                     (approximate-count :target-type
                                      approximate-count :member-name
                                      "ApproximateCount"))
                                    (:shape-name "ProductViewAggregationValue"))

(smithy/sdk/shapes:define-list product-view-aggregation-values :member
                               product-view-aggregation-value)

(smithy/sdk/shapes:define-map product-view-aggregations :key
                              product-view-aggregation-type :value
                              product-view-aggregation-values)

(smithy/sdk/shapes:define-structure product-view-detail common-lisp:nil
                                    ((product-view-summary :target-type
                                      product-view-summary :member-name
                                      "ProductViewSummary")
                                     (status :target-type status :member-name
                                      "Status")
                                     (product-arn :target-type resource-arn
                                      :member-name "ProductARN")
                                     (created-time :target-type created-time
                                      :member-name "CreatedTime")
                                     (source-connection :target-type
                                      source-connection-detail :member-name
                                      "SourceConnection"))
                                    (:shape-name "ProductViewDetail"))

(smithy/sdk/shapes:define-list product-view-details :member product-view-detail)

(smithy/sdk/shapes:define-type product-view-distributor
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum product-view-filter-by
    common-lisp:nil
  (:full-text-search "FullTextSearch")
  (:owner "Owner")
  (:product-type "ProductType")
  (:source-product-id "SourceProductId"))

(smithy/sdk/shapes:define-type product-view-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list product-view-filter-values :member
                               product-view-filter-value)

(smithy/sdk/shapes:define-map product-view-filters :key product-view-filter-by
                              :value product-view-filter-values)

(smithy/sdk/shapes:define-type product-view-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type product-view-owner
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type product-view-short-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum product-view-sort-by
    common-lisp:nil
  (:title "Title")
  (:version-count "VersionCount")
  (:creation-date "CreationDate"))

(smithy/sdk/shapes:define-list product-view-summaries :member
                               product-view-summary)

(smithy/sdk/shapes:define-structure product-view-summary common-lisp:nil
                                    ((id :target-type id :member-name "Id")
                                     (product-id :target-type id :member-name
                                      "ProductId")
                                     (name :target-type product-view-name
                                      :member-name "Name")
                                     (owner :target-type product-view-owner
                                      :member-name "Owner")
                                     (short-description :target-type
                                      product-view-short-description
                                      :member-name "ShortDescription")
                                     (type :target-type product-type
                                      :member-name "Type")
                                     (distributor :target-type
                                      product-view-distributor :member-name
                                      "Distributor")
                                     (has-default-path :target-type
                                      has-default-path :member-name
                                      "HasDefaultPath")
                                     (support-email :target-type support-email
                                      :member-name "SupportEmail")
                                     (support-description :target-type
                                      support-description :member-name
                                      "SupportDescription")
                                     (support-url :target-type support-url
                                      :member-name "SupportUrl"))
                                    (:shape-name "ProductViewSummary"))

(smithy/sdk/shapes:define-enum property-key
    common-lisp:nil
  (:owner "OWNER")
  (:launch-role "LAUNCH_ROLE"))

(smithy/sdk/shapes:define-type property-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type property-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type provider-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input provision-product-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (product-id :target-type id :member-name
                                  "ProductId")
                                 (product-name :target-type product-view-name
                                  :member-name "ProductName")
                                 (provisioning-artifact-id :target-type id
                                  :member-name "ProvisioningArtifactId")
                                 (provisioning-artifact-name :target-type
                                  provisioning-artifact-name :member-name
                                  "ProvisioningArtifactName")
                                 (path-id :target-type id :member-name
                                  "PathId")
                                 (path-name :target-type portfolio-display-name
                                  :member-name "PathName")
                                 (provisioned-product-name :target-type
                                  provisioned-product-name :required
                                  common-lisp:t :member-name
                                  "ProvisionedProductName")
                                 (provisioning-parameters :target-type
                                  provisioning-parameters :member-name
                                  "ProvisioningParameters")
                                 (provisioning-preferences :target-type
                                  provisioning-preferences :member-name
                                  "ProvisioningPreferences")
                                 (tags :target-type tags :member-name "Tags")
                                 (notification-arns :target-type
                                  notification-arns :member-name
                                  "NotificationArns")
                                 (provision-token :target-type
                                  idempotency-token :required common-lisp:t
                                  :member-name "ProvisionToken"))
                                (:shape-name "ProvisionProductInput"))

(smithy/sdk/shapes:define-output provision-product-output common-lisp:nil
                                 ((record-detail :target-type record-detail
                                   :member-name "RecordDetail"))
                                 (:shape-name "ProvisionProductOutput"))

(smithy/sdk/shapes:define-structure provisioned-product-attribute
                                    common-lisp:nil
                                    ((name :target-type
                                      provisioned-product-name-or-arn
                                      :member-name "Name")
                                     (arn :target-type
                                      provisioned-product-name-or-arn
                                      :member-name "Arn")
                                     (type :target-type
                                      provisioned-product-type :member-name
                                      "Type")
                                     (id :target-type id :member-name "Id")
                                     (status :target-type
                                      provisioned-product-status :member-name
                                      "Status")
                                     (status-message :target-type
                                      provisioned-product-status-message
                                      :member-name "StatusMessage")
                                     (created-time :target-type created-time
                                      :member-name "CreatedTime")
                                     (idempotency-token :target-type
                                      idempotency-token :member-name
                                      "IdempotencyToken")
                                     (last-record-id :target-type id
                                      :member-name "LastRecordId")
                                     (last-provisioning-record-id :target-type
                                      id :member-name
                                      "LastProvisioningRecordId")
                                     (last-successful-provisioning-record-id
                                      :target-type id :member-name
                                      "LastSuccessfulProvisioningRecordId")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (physical-id :target-type physical-id
                                      :member-name "PhysicalId")
                                     (product-id :target-type id :member-name
                                      "ProductId")
                                     (product-name :target-type
                                      product-view-name :member-name
                                      "ProductName")
                                     (provisioning-artifact-id :target-type id
                                      :member-name "ProvisioningArtifactId")
                                     (provisioning-artifact-name :target-type
                                      provisioning-artifact-name :member-name
                                      "ProvisioningArtifactName")
                                     (user-arn :target-type user-arn
                                      :member-name "UserArn")
                                     (user-arn-session :target-type
                                      user-arn-session :member-name
                                      "UserArnSession"))
                                    (:shape-name "ProvisionedProductAttribute"))

(smithy/sdk/shapes:define-list provisioned-product-attributes :member
                               provisioned-product-attribute)

(smithy/sdk/shapes:define-structure provisioned-product-detail common-lisp:nil
                                    ((name :target-type
                                      provisioned-product-name-or-arn
                                      :member-name "Name")
                                     (arn :target-type
                                      provisioned-product-name-or-arn
                                      :member-name "Arn")
                                     (type :target-type
                                      provisioned-product-type :member-name
                                      "Type")
                                     (id :target-type provisioned-product-id
                                      :member-name "Id")
                                     (status :target-type
                                      provisioned-product-status :member-name
                                      "Status")
                                     (status-message :target-type
                                      provisioned-product-status-message
                                      :member-name "StatusMessage")
                                     (created-time :target-type created-time
                                      :member-name "CreatedTime")
                                     (idempotency-token :target-type
                                      idempotency-token :member-name
                                      "IdempotencyToken")
                                     (last-record-id :target-type
                                      last-request-id :member-name
                                      "LastRecordId")
                                     (last-provisioning-record-id :target-type
                                      id :member-name
                                      "LastProvisioningRecordId")
                                     (last-successful-provisioning-record-id
                                      :target-type id :member-name
                                      "LastSuccessfulProvisioningRecordId")
                                     (product-id :target-type id :member-name
                                      "ProductId")
                                     (provisioning-artifact-id :target-type id
                                      :member-name "ProvisioningArtifactId")
                                     (launch-role-arn :target-type role-arn
                                      :member-name "LaunchRoleArn"))
                                    (:shape-name "ProvisionedProductDetail"))

(smithy/sdk/shapes:define-list provisioned-product-details :member
                               provisioned-product-detail)

(smithy/sdk/shapes:define-map provisioned-product-filters :key
                              provisioned-product-view-filter-by :value
                              provisioned-product-view-filter-values)

(smithy/sdk/shapes:define-type provisioned-product-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type provisioned-product-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type provisioned-product-name-or-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure provisioned-product-plan-details
                                    common-lisp:nil
                                    ((created-time :target-type created-time
                                      :member-name "CreatedTime")
                                     (path-id :target-type id :member-name
                                      "PathId")
                                     (product-id :target-type id :member-name
                                      "ProductId")
                                     (plan-name :target-type
                                      provisioned-product-plan-name
                                      :member-name "PlanName")
                                     (plan-id :target-type id :member-name
                                      "PlanId")
                                     (provision-product-id :target-type id
                                      :member-name "ProvisionProductId")
                                     (provision-product-name :target-type
                                      provisioned-product-name :member-name
                                      "ProvisionProductName")
                                     (plan-type :target-type
                                      provisioned-product-plan-type
                                      :member-name "PlanType")
                                     (provisioning-artifact-id :target-type id
                                      :member-name "ProvisioningArtifactId")
                                     (status :target-type
                                      provisioned-product-plan-status
                                      :member-name "Status")
                                     (updated-time :target-type updated-time
                                      :member-name "UpdatedTime")
                                     (notification-arns :target-type
                                      notification-arns :member-name
                                      "NotificationArns")
                                     (provisioning-parameters :target-type
                                      update-provisioning-parameters
                                      :member-name "ProvisioningParameters")
                                     (tags :target-type tags :member-name
                                      "Tags")
                                     (status-message :target-type
                                      status-message :member-name
                                      "StatusMessage"))
                                    (:shape-name
                                     "ProvisionedProductPlanDetails"))

(smithy/sdk/shapes:define-type provisioned-product-plan-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum provisioned-product-plan-status
    common-lisp:nil
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:create-success "CREATE_SUCCESS")
  (:create-failed "CREATE_FAILED")
  (:execute-in-progress "EXECUTE_IN_PROGRESS")
  (:execute-success "EXECUTE_SUCCESS")
  (:execute-failed "EXECUTE_FAILED"))

(smithy/sdk/shapes:define-structure provisioned-product-plan-summary
                                    common-lisp:nil
                                    ((plan-name :target-type
                                      provisioned-product-plan-name
                                      :member-name "PlanName")
                                     (plan-id :target-type id :member-name
                                      "PlanId")
                                     (provision-product-id :target-type id
                                      :member-name "ProvisionProductId")
                                     (provision-product-name :target-type
                                      provisioned-product-name :member-name
                                      "ProvisionProductName")
                                     (plan-type :target-type
                                      provisioned-product-plan-type
                                      :member-name "PlanType")
                                     (provisioning-artifact-id :target-type id
                                      :member-name "ProvisioningArtifactId"))
                                    (:shape-name
                                     "ProvisionedProductPlanSummary"))

(smithy/sdk/shapes:define-enum provisioned-product-plan-type
    common-lisp:nil
  (:cloudformation "CLOUDFORMATION"))

(smithy/sdk/shapes:define-list provisioned-product-plans :member
                               provisioned-product-plan-summary)

(smithy/sdk/shapes:define-map provisioned-product-properties :key property-key
                              :value property-value)

(smithy/sdk/shapes:define-enum provisioned-product-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:under-change "UNDER_CHANGE")
  (:tainted "TAINTED")
  (:error "ERROR")
  (:plan-in-progress "PLAN_IN_PROGRESS"))

(smithy/sdk/shapes:define-type provisioned-product-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type provisioned-product-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum provisioned-product-view-filter-by
    common-lisp:nil
  (:search-query "SearchQuery"))

(smithy/sdk/shapes:define-type provisioned-product-view-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list provisioned-product-view-filter-values :member
                               provisioned-product-view-filter-value)

(smithy/sdk/shapes:define-structure provisioning-artifact common-lisp:nil
                                    ((id :target-type id :member-name "Id")
                                     (name :target-type
                                      provisioning-artifact-name :member-name
                                      "Name")
                                     (description :target-type
                                      provisioning-artifact-description
                                      :member-name "Description")
                                     (created-time :target-type
                                      provisioning-artifact-created-time
                                      :member-name "CreatedTime")
                                     (guidance :target-type
                                      provisioning-artifact-guidance
                                      :member-name "Guidance"))
                                    (:shape-name "ProvisioningArtifact"))

(smithy/sdk/shapes:define-type provisioning-artifact-active
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type provisioning-artifact-created-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type provisioning-artifact-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure provisioning-artifact-detail
                                    common-lisp:nil
                                    ((id :target-type id :member-name "Id")
                                     (name :target-type
                                      provisioning-artifact-name :member-name
                                      "Name")
                                     (description :target-type
                                      provisioning-artifact-name :member-name
                                      "Description")
                                     (type :target-type
                                      provisioning-artifact-type :member-name
                                      "Type")
                                     (created-time :target-type creation-time
                                      :member-name "CreatedTime")
                                     (active :target-type
                                      provisioning-artifact-active :member-name
                                      "Active")
                                     (guidance :target-type
                                      provisioning-artifact-guidance
                                      :member-name "Guidance")
                                     (source-revision :target-type
                                      source-revision :member-name
                                      "SourceRevision"))
                                    (:shape-name "ProvisioningArtifactDetail"))

(smithy/sdk/shapes:define-list provisioning-artifact-details :member
                               provisioning-artifact-detail)

(smithy/sdk/shapes:define-enum provisioning-artifact-guidance
    common-lisp:nil
  (:default "DEFAULT")
  (:deprecated "DEPRECATED"))

(smithy/sdk/shapes:define-map provisioning-artifact-info :key
                              provisioning-artifact-info-key :value
                              provisioning-artifact-info-value)

(smithy/sdk/shapes:define-type provisioning-artifact-info-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type provisioning-artifact-info-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type provisioning-artifact-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure provisioning-artifact-output
                                    common-lisp:nil
                                    ((key :target-type
                                      provisioning-artifact-output-key
                                      :member-name "Key")
                                     (description :target-type
                                      output-description :member-name
                                      "Description"))
                                    (:shape-name "ProvisioningArtifactOutput"))

(smithy/sdk/shapes:define-type provisioning-artifact-output-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list provisioning-artifact-outputs :member
                               provisioning-artifact-output)

(smithy/sdk/shapes:define-structure provisioning-artifact-parameter
                                    common-lisp:nil
                                    ((parameter-key :target-type parameter-key
                                      :member-name "ParameterKey")
                                     (default-value :target-type default-value
                                      :member-name "DefaultValue")
                                     (parameter-type :target-type
                                      parameter-type :member-name
                                      "ParameterType")
                                     (is-no-echo :target-type no-echo
                                      :member-name "IsNoEcho")
                                     (description :target-type description
                                      :member-name "Description")
                                     (parameter-constraints :target-type
                                      parameter-constraints :member-name
                                      "ParameterConstraints"))
                                    (:shape-name
                                     "ProvisioningArtifactParameter"))

(smithy/sdk/shapes:define-list provisioning-artifact-parameters :member
                               provisioning-artifact-parameter)

(smithy/sdk/shapes:define-structure provisioning-artifact-preferences
                                    common-lisp:nil
                                    ((stack-set-accounts :target-type
                                      stack-set-accounts :member-name
                                      "StackSetAccounts")
                                     (stack-set-regions :target-type
                                      stack-set-regions :member-name
                                      "StackSetRegions"))
                                    (:shape-name
                                     "ProvisioningArtifactPreferences"))

(smithy/sdk/shapes:define-structure provisioning-artifact-properties
                                    common-lisp:nil
                                    ((name :target-type
                                      provisioning-artifact-name :member-name
                                      "Name")
                                     (description :target-type
                                      provisioning-artifact-description
                                      :member-name "Description")
                                     (info :target-type
                                      provisioning-artifact-info :member-name
                                      "Info")
                                     (type :target-type
                                      provisioning-artifact-type :member-name
                                      "Type")
                                     (disable-template-validation :target-type
                                      disable-template-validation :member-name
                                      "DisableTemplateValidation"))
                                    (:shape-name
                                     "ProvisioningArtifactProperties"))

(smithy/sdk/shapes:define-enum provisioning-artifact-property-name
    common-lisp:nil
  (:id "Id"))

(smithy/sdk/shapes:define-type provisioning-artifact-property-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list provisioning-artifact-summaries :member
                               provisioning-artifact-summary)

(smithy/sdk/shapes:define-structure provisioning-artifact-summary
                                    common-lisp:nil
                                    ((id :target-type id :member-name "Id")
                                     (name :target-type
                                      provisioning-artifact-name :member-name
                                      "Name")
                                     (description :target-type
                                      provisioning-artifact-description
                                      :member-name "Description")
                                     (created-time :target-type
                                      provisioning-artifact-created-time
                                      :member-name "CreatedTime")
                                     (provisioning-artifact-metadata
                                      :target-type provisioning-artifact-info
                                      :member-name
                                      "ProvisioningArtifactMetadata"))
                                    (:shape-name "ProvisioningArtifactSummary"))

(smithy/sdk/shapes:define-enum provisioning-artifact-type
    common-lisp:nil
  (:cloud-formation-template "CLOUD_FORMATION_TEMPLATE")
  (:marketplace-ami "MARKETPLACE_AMI")
  (:marketplace-car "MARKETPLACE_CAR")
  (:terraform-open-source "TERRAFORM_OPEN_SOURCE")
  (:terraform-cloud "TERRAFORM_CLOUD")
  (:external "EXTERNAL"))

(smithy/sdk/shapes:define-structure provisioning-artifact-view common-lisp:nil
                                    ((product-view-summary :target-type
                                      product-view-summary :member-name
                                      "ProductViewSummary")
                                     (provisioning-artifact :target-type
                                      provisioning-artifact :member-name
                                      "ProvisioningArtifact"))
                                    (:shape-name "ProvisioningArtifactView"))

(smithy/sdk/shapes:define-list provisioning-artifact-views :member
                               provisioning-artifact-view)

(smithy/sdk/shapes:define-list provisioning-artifacts :member
                               provisioning-artifact)

(smithy/sdk/shapes:define-structure provisioning-parameter common-lisp:nil
                                    ((key :target-type parameter-key
                                      :member-name "Key")
                                     (value :target-type parameter-value
                                      :member-name "Value"))
                                    (:shape-name "ProvisioningParameter"))

(smithy/sdk/shapes:define-list provisioning-parameters :member
                               provisioning-parameter)

(smithy/sdk/shapes:define-structure provisioning-preferences common-lisp:nil
                                    ((stack-set-accounts :target-type
                                      stack-set-accounts :member-name
                                      "StackSetAccounts")
                                     (stack-set-regions :target-type
                                      stack-set-regions :member-name
                                      "StackSetRegions")
                                     (stack-set-failure-tolerance-count
                                      :target-type
                                      stack-set-failure-tolerance-count
                                      :member-name
                                      "StackSetFailureToleranceCount")
                                     (stack-set-failure-tolerance-percentage
                                      :target-type
                                      stack-set-failure-tolerance-percentage
                                      :member-name
                                      "StackSetFailureTolerancePercentage")
                                     (stack-set-max-concurrency-count
                                      :target-type
                                      stack-set-max-concurrency-count
                                      :member-name
                                      "StackSetMaxConcurrencyCount")
                                     (stack-set-max-concurrency-percentage
                                      :target-type
                                      stack-set-max-concurrency-percentage
                                      :member-name
                                      "StackSetMaxConcurrencyPercentage"))
                                    (:shape-name "ProvisioningPreferences"))

(smithy/sdk/shapes:define-structure record-detail common-lisp:nil
                                    ((record-id :target-type id :member-name
                                      "RecordId")
                                     (provisioned-product-name :target-type
                                      provisioned-product-name :member-name
                                      "ProvisionedProductName")
                                     (status :target-type record-status
                                      :member-name "Status")
                                     (created-time :target-type created-time
                                      :member-name "CreatedTime")
                                     (updated-time :target-type updated-time
                                      :member-name "UpdatedTime")
                                     (provisioned-product-type :target-type
                                      provisioned-product-type :member-name
                                      "ProvisionedProductType")
                                     (record-type :target-type record-type
                                      :member-name "RecordType")
                                     (provisioned-product-id :target-type id
                                      :member-name "ProvisionedProductId")
                                     (product-id :target-type id :member-name
                                      "ProductId")
                                     (provisioning-artifact-id :target-type id
                                      :member-name "ProvisioningArtifactId")
                                     (path-id :target-type id :member-name
                                      "PathId")
                                     (record-errors :target-type record-errors
                                      :member-name "RecordErrors")
                                     (record-tags :target-type record-tags
                                      :member-name "RecordTags")
                                     (launch-role-arn :target-type role-arn
                                      :member-name "LaunchRoleArn"))
                                    (:shape-name "RecordDetail"))

(smithy/sdk/shapes:define-list record-details :member record-detail)

(smithy/sdk/shapes:define-structure record-error common-lisp:nil
                                    ((code :target-type error-code :member-name
                                      "Code")
                                     (description :target-type
                                      error-description :member-name
                                      "Description"))
                                    (:shape-name "RecordError"))

(smithy/sdk/shapes:define-list record-errors :member record-error)

(smithy/sdk/shapes:define-structure record-output common-lisp:nil
                                    ((output-key :target-type output-key
                                      :member-name "OutputKey")
                                     (output-value :target-type output-value
                                      :member-name "OutputValue")
                                     (description :target-type description
                                      :member-name "Description"))
                                    (:shape-name "RecordOutput"))

(smithy/sdk/shapes:define-list record-outputs :member record-output)

(smithy/sdk/shapes:define-enum record-status
    common-lisp:nil
  (:created "CREATED")
  (:in-progress "IN_PROGRESS")
  (:in-progress-in-error "IN_PROGRESS_IN_ERROR")
  (:succeeded "SUCCEEDED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure record-tag common-lisp:nil
                                    ((key :target-type record-tag-key
                                      :member-name "Key")
                                     (value :target-type record-tag-value
                                      :member-name "Value"))
                                    (:shape-name "RecordTag"))

(smithy/sdk/shapes:define-type record-tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type record-tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list record-tags :member record-tag)

(smithy/sdk/shapes:define-type record-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input reject-portfolio-share-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (portfolio-id :target-type id :required
                                  common-lisp:t :member-name "PortfolioId")
                                 (portfolio-share-type :target-type
                                  portfolio-share-type :member-name
                                  "PortfolioShareType"))
                                (:shape-name "RejectPortfolioShareInput"))

(smithy/sdk/shapes:define-output reject-portfolio-share-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "RejectPortfolioShareOutput"))

(smithy/sdk/shapes:define-enum replacement
    common-lisp:nil
  (:true "TRUE")
  (:false "FALSE")
  (:conditional "CONDITIONAL"))

(smithy/sdk/shapes:define-type repository smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type repository-artifact-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type repository-branch smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum requires-recreation
    common-lisp:nil
  (:never "NEVER")
  (:conditionally "CONDITIONALLY")
  (:always "ALWAYS"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum resource-attribute
    common-lisp:nil
  (:properties "PROPERTIES")
  (:metadata "METADATA")
  (:creationpolicy "CREATIONPOLICY")
  (:updatepolicy "UPDATEPOLICY")
  (:deletionpolicy "DELETIONPOLICY")
  (:tags "TAGS"))

(smithy/sdk/shapes:define-structure resource-change common-lisp:nil
                                    ((action :target-type change-action
                                      :member-name "Action")
                                     (logical-resource-id :target-type
                                      logical-resource-id :member-name
                                      "LogicalResourceId")
                                     (physical-resource-id :target-type
                                      physical-resource-id :member-name
                                      "PhysicalResourceId")
                                     (resource-type :target-type
                                      plan-resource-type :member-name
                                      "ResourceType")
                                     (replacement :target-type replacement
                                      :member-name "Replacement")
                                     (scope :target-type scope :member-name
                                      "Scope")
                                     (details :target-type
                                      resource-change-details :member-name
                                      "Details"))
                                    (:shape-name "ResourceChange"))

(smithy/sdk/shapes:define-structure resource-change-detail common-lisp:nil
                                    ((target :target-type
                                      resource-target-definition :member-name
                                      "Target")
                                     (evaluation :target-type evaluation-type
                                      :member-name "Evaluation")
                                     (causing-entity :target-type
                                      causing-entity :member-name
                                      "CausingEntity"))
                                    (:shape-name "ResourceChangeDetail"))

(smithy/sdk/shapes:define-list resource-change-details :member
                               resource-change-detail)

(smithy/sdk/shapes:define-list resource-changes :member resource-change)

(smithy/sdk/shapes:define-structure resource-detail common-lisp:nil
                                    ((id :target-type resource-detail-id
                                      :member-name "Id")
                                     (arn :target-type resource-detail-arn
                                      :member-name "ARN")
                                     (name :target-type resource-detail-name
                                      :member-name "Name")
                                     (description :target-type
                                      resource-detail-description :member-name
                                      "Description")
                                     (created-time :target-type
                                      resource-detail-created-time :member-name
                                      "CreatedTime"))
                                    (:shape-name "ResourceDetail"))

(smithy/sdk/shapes:define-type resource-detail-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-detail-created-time
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type resource-detail-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-detail-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-detail-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-details :member resource-detail)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure resource-target-definition common-lisp:nil
                                    ((attribute :target-type resource-attribute
                                      :member-name "Attribute")
                                     (name :target-type property-name
                                      :member-name "Name")
                                     (requires-recreation :target-type
                                      requires-recreation :member-name
                                      "RequiresRecreation"))
                                    (:shape-name "ResourceTargetDefinition"))

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type retain-physical-resources
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input scan-provisioned-products-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (access-level-filter :target-type
                                  access-level-filter :member-name
                                  "AccessLevelFilter")
                                 (page-size :target-type page-size :member-name
                                  "PageSize")
                                 (page-token :target-type page-token
                                  :member-name "PageToken"))
                                (:shape-name "ScanProvisionedProductsInput"))

(smithy/sdk/shapes:define-output scan-provisioned-products-output
                                 common-lisp:nil
                                 ((provisioned-products :target-type
                                   provisioned-product-details :member-name
                                   "ProvisionedProducts")
                                  (next-page-token :target-type page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name "ScanProvisionedProductsOutput"))

(smithy/sdk/shapes:define-list scope :member resource-attribute)

(smithy/sdk/shapes:define-type search-filter-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type search-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input search-products-as-admin-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (portfolio-id :target-type id :member-name
                                  "PortfolioId")
                                 (filters :target-type product-view-filters
                                  :member-name "Filters")
                                 (sort-by :target-type product-view-sort-by
                                  :member-name "SortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "SortOrder")
                                 (page-token :target-type page-token
                                  :member-name "PageToken")
                                 (page-size :target-type page-size :member-name
                                  "PageSize")
                                 (product-source :target-type product-source
                                  :member-name "ProductSource"))
                                (:shape-name "SearchProductsAsAdminInput"))

(smithy/sdk/shapes:define-output search-products-as-admin-output
                                 common-lisp:nil
                                 ((product-view-details :target-type
                                   product-view-details :member-name
                                   "ProductViewDetails")
                                  (next-page-token :target-type page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name "SearchProductsAsAdminOutput"))

(smithy/sdk/shapes:define-input search-products-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (filters :target-type product-view-filters
                                  :member-name "Filters")
                                 (page-size :target-type page-size-max100
                                  :member-name "PageSize")
                                 (sort-by :target-type product-view-sort-by
                                  :member-name "SortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "SortOrder")
                                 (page-token :target-type page-token
                                  :member-name "PageToken"))
                                (:shape-name "SearchProductsInput"))

(smithy/sdk/shapes:define-output search-products-output common-lisp:nil
                                 ((product-view-summaries :target-type
                                   product-view-summaries :member-name
                                   "ProductViewSummaries")
                                  (product-view-aggregations :target-type
                                   product-view-aggregations :member-name
                                   "ProductViewAggregations")
                                  (next-page-token :target-type page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name "SearchProductsOutput"))

(smithy/sdk/shapes:define-input search-provisioned-products-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (access-level-filter :target-type
                                  access-level-filter :member-name
                                  "AccessLevelFilter")
                                 (filters :target-type
                                  provisioned-product-filters :member-name
                                  "Filters")
                                 (sort-by :target-type sort-field :member-name
                                  "SortBy")
                                 (sort-order :target-type sort-order
                                  :member-name "SortOrder")
                                 (page-size :target-type
                                  search-provisioned-products-page-size
                                  :member-name "PageSize")
                                 (page-token :target-type page-token
                                  :member-name "PageToken"))
                                (:shape-name "SearchProvisionedProductsInput"))

(smithy/sdk/shapes:define-output search-provisioned-products-output
                                 common-lisp:nil
                                 ((provisioned-products :target-type
                                   provisioned-product-attributes :member-name
                                   "ProvisionedProducts")
                                  (total-results-count :target-type
                                   total-results-count :member-name
                                   "TotalResultsCount")
                                  (next-page-token :target-type page-token
                                   :member-name "NextPageToken"))
                                 (:shape-name
                                  "SearchProvisionedProductsOutput"))

(smithy/sdk/shapes:define-type search-provisioned-products-page-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure service-action-association common-lisp:nil
                                    ((service-action-id :target-type id
                                      :required common-lisp:t :member-name
                                      "ServiceActionId")
                                     (product-id :target-type id :required
                                      common-lisp:t :member-name "ProductId")
                                     (provisioning-artifact-id :target-type id
                                      :required common-lisp:t :member-name
                                      "ProvisioningArtifactId"))
                                    (:shape-name "ServiceActionAssociation"))

(smithy/sdk/shapes:define-enum service-action-association-error-code
    common-lisp:nil
  (:duplicate-resource-exception "DUPLICATE_RESOURCE")
  (:internal-failure "INTERNAL_FAILURE")
  (:limit-exceeded-exception "LIMIT_EXCEEDED")
  (:resource-not-found-exception "RESOURCE_NOT_FOUND")
  (:throttling-exception "THROTTLING")
  (:invalid-parameter-exception "INVALID_PARAMETER"))

(smithy/sdk/shapes:define-type service-action-association-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-action-associations :member
                               service-action-association)

(smithy/sdk/shapes:define-enum service-action-definition-key
    common-lisp:nil
  (:name "Name")
  (:version "Version")
  (:assume-role "AssumeRole")
  (:parameters "Parameters"))

(smithy/sdk/shapes:define-map service-action-definition-map :key
                              service-action-definition-key :value
                              service-action-definition-value)

(smithy/sdk/shapes:define-enum service-action-definition-type
    common-lisp:nil
  (:ssm-automation "SSM_AUTOMATION"))

(smithy/sdk/shapes:define-type service-action-definition-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-action-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure service-action-detail common-lisp:nil
                                    ((service-action-summary :target-type
                                      service-action-summary :member-name
                                      "ServiceActionSummary")
                                     (definition :target-type
                                      service-action-definition-map
                                      :member-name "Definition"))
                                    (:shape-name "ServiceActionDetail"))

(smithy/sdk/shapes:define-type service-action-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list service-action-summaries :member
                               service-action-summary)

(smithy/sdk/shapes:define-structure service-action-summary common-lisp:nil
                                    ((id :target-type id :member-name "Id")
                                     (name :target-type service-action-name
                                      :member-name "Name")
                                     (description :target-type
                                      service-action-description :member-name
                                      "Description")
                                     (definition-type :target-type
                                      service-action-definition-type
                                      :member-name "DefinitionType"))
                                    (:shape-name "ServiceActionSummary"))

(smithy/sdk/shapes:define-structure share-details common-lisp:nil
                                    ((successful-shares :target-type
                                      successful-shares :member-name
                                      "SuccessfulShares")
                                     (share-errors :target-type share-errors
                                      :member-name "ShareErrors"))
                                    (:shape-name "ShareDetails"))

(smithy/sdk/shapes:define-structure share-error common-lisp:nil
                                    ((accounts :target-type namespaces
                                      :member-name "Accounts")
                                     (message :target-type message :member-name
                                      "Message")
                                     (error :target-type error :member-name
                                      "Error"))
                                    (:shape-name "ShareError"))

(smithy/sdk/shapes:define-list share-errors :member share-error)

(smithy/sdk/shapes:define-enum share-status
    common-lisp:nil
  (:not-started "NOT_STARTED")
  (:in-progress "IN_PROGRESS")
  (:completed "COMPLETED")
  (:completed-with-errors "COMPLETED_WITH_ERRORS")
  (:error "ERROR"))

(smithy/sdk/shapes:define-type sort-field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:ascending "ASCENDING")
  (:descending "DESCENDING"))

(smithy/sdk/shapes:define-structure source-connection common-lisp:nil
                                    ((type :target-type source-type
                                      :member-name "Type")
                                     (connection-parameters :target-type
                                      source-connection-parameters :required
                                      common-lisp:t :member-name
                                      "ConnectionParameters"))
                                    (:shape-name "SourceConnection"))

(smithy/sdk/shapes:define-structure source-connection-detail common-lisp:nil
                                    ((type :target-type source-type
                                      :member-name "Type")
                                     (connection-parameters :target-type
                                      source-connection-parameters :member-name
                                      "ConnectionParameters")
                                     (last-sync :target-type last-sync
                                      :member-name "LastSync"))
                                    (:shape-name "SourceConnectionDetail"))

(smithy/sdk/shapes:define-structure source-connection-parameters
                                    common-lisp:nil
                                    ((code-star :target-type
                                      code-star-parameters :member-name
                                      "CodeStar"))
                                    (:shape-name "SourceConnectionParameters"))

(smithy/sdk/shapes:define-list source-provisioning-artifact-properties :member
                               source-provisioning-artifact-properties-map)

(smithy/sdk/shapes:define-map source-provisioning-artifact-properties-map :key
                              provisioning-artifact-property-name :value
                              provisioning-artifact-property-value)

(smithy/sdk/shapes:define-type source-revision smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum source-type
    common-lisp:nil
  (:codestar "CODESTAR"))

(smithy/sdk/shapes:define-structure stack-instance common-lisp:nil
                                    ((account :target-type account-id
                                      :member-name "Account")
                                     (region :target-type region :member-name
                                      "Region")
                                     (stack-instance-status :target-type
                                      stack-instance-status :member-name
                                      "StackInstanceStatus"))
                                    (:shape-name "StackInstance"))

(smithy/sdk/shapes:define-enum stack-instance-status
    common-lisp:nil
  (:current "CURRENT")
  (:outdated "OUTDATED")
  (:inoperable "INOPERABLE"))

(smithy/sdk/shapes:define-list stack-instances :member stack-instance)

(smithy/sdk/shapes:define-list stack-set-accounts :member account-id)

(smithy/sdk/shapes:define-type stack-set-failure-tolerance-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type stack-set-failure-tolerance-percentage
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type stack-set-max-concurrency-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type stack-set-max-concurrency-percentage
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum stack-set-operation-type
    common-lisp:nil
  (:create "CREATE")
  (:update "UPDATE")
  (:delete "DELETE"))

(smithy/sdk/shapes:define-list stack-set-regions :member region)

(smithy/sdk/shapes:define-enum status
    common-lisp:nil
  (:available "AVAILABLE")
  (:creating "CREATING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-type status-detail smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type status-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list successful-shares :member account-id)

(smithy/sdk/shapes:define-type support-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type support-email smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type support-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-keys :member tag-key)

(smithy/sdk/shapes:define-type tag-option-active
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure tag-option-detail common-lisp:nil
                                    ((key :target-type tag-option-key
                                      :member-name "Key")
                                     (value :target-type tag-option-value
                                      :member-name "Value")
                                     (active :target-type tag-option-active
                                      :member-name "Active")
                                     (id :target-type tag-option-id
                                      :member-name "Id")
                                     (owner :target-type owner :member-name
                                      "Owner"))
                                    (:shape-name "TagOptionDetail"))

(smithy/sdk/shapes:define-list tag-option-details :member tag-option-detail)

(smithy/sdk/shapes:define-type tag-option-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-option-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error tag-option-not-migrated-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "TagOptionNotMigratedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list tag-option-summaries :member tag-option-summary)

(smithy/sdk/shapes:define-structure tag-option-summary common-lisp:nil
                                    ((key :target-type tag-option-key
                                      :member-name "Key")
                                     (values :target-type tag-option-values
                                      :member-name "Values"))
                                    (:shape-name "TagOptionSummary"))

(smithy/sdk/shapes:define-type tag-option-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-option-values :member tag-option-value)

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tags :member tag)

(smithy/sdk/shapes:define-input terminate-provisioned-product-input
                                common-lisp:nil
                                ((provisioned-product-name :target-type
                                  provisioned-product-name-or-arn :member-name
                                  "ProvisionedProductName")
                                 (provisioned-product-id :target-type id
                                  :member-name "ProvisionedProductId")
                                 (terminate-token :target-type
                                  idempotency-token :required common-lisp:t
                                  :member-name "TerminateToken")
                                 (ignore-errors :target-type ignore-errors
                                  :member-name "IgnoreErrors")
                                 (accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (retain-physical-resources :target-type
                                  retain-physical-resources :member-name
                                  "RetainPhysicalResources"))
                                (:shape-name
                                 "TerminateProvisionedProductInput"))

(smithy/sdk/shapes:define-output terminate-provisioned-product-output
                                 common-lisp:nil
                                 ((record-detail :target-type record-detail
                                   :member-name "RecordDetail"))
                                 (:shape-name
                                  "TerminateProvisionedProductOutput"))

(smithy/sdk/shapes:define-type total-results-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type unique-tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure unique-tag-resource-identifier
                                    common-lisp:nil
                                    ((key :target-type unique-tag-key
                                      :member-name "Key")
                                     (value :target-type unique-tag-value
                                      :member-name "Value"))
                                    (:shape-name "UniqueTagResourceIdentifier"))

(smithy/sdk/shapes:define-type unique-tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input update-constraint-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (id :target-type id :required common-lisp:t
                                  :member-name "Id")
                                 (description :target-type
                                  constraint-description :member-name
                                  "Description")
                                 (parameters :target-type constraint-parameters
                                  :member-name "Parameters"))
                                (:shape-name "UpdateConstraintInput"))

(smithy/sdk/shapes:define-output update-constraint-output common-lisp:nil
                                 ((constraint-detail :target-type
                                   constraint-detail :member-name
                                   "ConstraintDetail")
                                  (constraint-parameters :target-type
                                   constraint-parameters :member-name
                                   "ConstraintParameters")
                                  (status :target-type status :member-name
                                   "Status"))
                                 (:shape-name "UpdateConstraintOutput"))

(smithy/sdk/shapes:define-input update-portfolio-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (id :target-type id :required common-lisp:t
                                  :member-name "Id")
                                 (display-name :target-type
                                  portfolio-display-name :member-name
                                  "DisplayName")
                                 (description :target-type
                                  portfolio-description :member-name
                                  "Description")
                                 (provider-name :target-type provider-name
                                  :member-name "ProviderName")
                                 (add-tags :target-type add-tags :member-name
                                  "AddTags")
                                 (remove-tags :target-type tag-keys
                                  :member-name "RemoveTags"))
                                (:shape-name "UpdatePortfolioInput"))

(smithy/sdk/shapes:define-output update-portfolio-output common-lisp:nil
                                 ((portfolio-detail :target-type
                                   portfolio-detail :member-name
                                   "PortfolioDetail")
                                  (tags :target-type tags :member-name "Tags"))
                                 (:shape-name "UpdatePortfolioOutput"))

(smithy/sdk/shapes:define-input update-portfolio-share-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (portfolio-id :target-type id :required
                                  common-lisp:t :member-name "PortfolioId")
                                 (account-id :target-type account-id
                                  :member-name "AccountId")
                                 (organization-node :target-type
                                  organization-node :member-name
                                  "OrganizationNode")
                                 (share-tag-options :target-type
                                  nullable-boolean :member-name
                                  "ShareTagOptions")
                                 (share-principals :target-type
                                  nullable-boolean :member-name
                                  "SharePrincipals"))
                                (:shape-name "UpdatePortfolioShareInput"))

(smithy/sdk/shapes:define-output update-portfolio-share-output common-lisp:nil
                                 ((portfolio-share-token :target-type id
                                   :member-name "PortfolioShareToken")
                                  (status :target-type share-status
                                   :member-name "Status"))
                                 (:shape-name "UpdatePortfolioShareOutput"))

(smithy/sdk/shapes:define-input update-product-input common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (id :target-type id :required common-lisp:t
                                  :member-name "Id")
                                 (name :target-type product-view-name
                                  :member-name "Name")
                                 (owner :target-type product-view-owner
                                  :member-name "Owner")
                                 (description :target-type
                                  product-view-short-description :member-name
                                  "Description")
                                 (distributor :target-type product-view-owner
                                  :member-name "Distributor")
                                 (support-description :target-type
                                  support-description :member-name
                                  "SupportDescription")
                                 (support-email :target-type support-email
                                  :member-name "SupportEmail")
                                 (support-url :target-type support-url
                                  :member-name "SupportUrl")
                                 (add-tags :target-type add-tags :member-name
                                  "AddTags")
                                 (remove-tags :target-type tag-keys
                                  :member-name "RemoveTags")
                                 (source-connection :target-type
                                  source-connection :member-name
                                  "SourceConnection"))
                                (:shape-name "UpdateProductInput"))

(smithy/sdk/shapes:define-output update-product-output common-lisp:nil
                                 ((product-view-detail :target-type
                                   product-view-detail :member-name
                                   "ProductViewDetail")
                                  (tags :target-type tags :member-name "Tags"))
                                 (:shape-name "UpdateProductOutput"))

(smithy/sdk/shapes:define-input update-provisioned-product-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (provisioned-product-name :target-type
                                  provisioned-product-name-or-arn :member-name
                                  "ProvisionedProductName")
                                 (provisioned-product-id :target-type id
                                  :member-name "ProvisionedProductId")
                                 (product-id :target-type id :member-name
                                  "ProductId")
                                 (product-name :target-type product-view-name
                                  :member-name "ProductName")
                                 (provisioning-artifact-id :target-type id
                                  :member-name "ProvisioningArtifactId")
                                 (provisioning-artifact-name :target-type
                                  provisioning-artifact-name :member-name
                                  "ProvisioningArtifactName")
                                 (path-id :target-type id :member-name
                                  "PathId")
                                 (path-name :target-type portfolio-display-name
                                  :member-name "PathName")
                                 (provisioning-parameters :target-type
                                  update-provisioning-parameters :member-name
                                  "ProvisioningParameters")
                                 (provisioning-preferences :target-type
                                  update-provisioning-preferences :member-name
                                  "ProvisioningPreferences")
                                 (tags :target-type tags :member-name "Tags")
                                 (update-token :target-type idempotency-token
                                  :required common-lisp:t :member-name
                                  "UpdateToken"))
                                (:shape-name "UpdateProvisionedProductInput"))

(smithy/sdk/shapes:define-output update-provisioned-product-output
                                 common-lisp:nil
                                 ((record-detail :target-type record-detail
                                   :member-name "RecordDetail"))
                                 (:shape-name "UpdateProvisionedProductOutput"))

(smithy/sdk/shapes:define-input update-provisioned-product-properties-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (provisioned-product-id :target-type id
                                  :required common-lisp:t :member-name
                                  "ProvisionedProductId")
                                 (provisioned-product-properties :target-type
                                  provisioned-product-properties :required
                                  common-lisp:t :member-name
                                  "ProvisionedProductProperties")
                                 (idempotency-token :target-type
                                  idempotency-token :required common-lisp:t
                                  :member-name "IdempotencyToken"))
                                (:shape-name
                                 "UpdateProvisionedProductPropertiesInput"))

(smithy/sdk/shapes:define-output update-provisioned-product-properties-output
                                 common-lisp:nil
                                 ((provisioned-product-id :target-type id
                                   :member-name "ProvisionedProductId")
                                  (provisioned-product-properties :target-type
                                   provisioned-product-properties :member-name
                                   "ProvisionedProductProperties")
                                  (record-id :target-type id :member-name
                                   "RecordId")
                                  (status :target-type record-status
                                   :member-name "Status"))
                                 (:shape-name
                                  "UpdateProvisionedProductPropertiesOutput"))

(smithy/sdk/shapes:define-input update-provisioning-artifact-input
                                common-lisp:nil
                                ((accept-language :target-type accept-language
                                  :member-name "AcceptLanguage")
                                 (product-id :target-type id :required
                                  common-lisp:t :member-name "ProductId")
                                 (provisioning-artifact-id :target-type id
                                  :required common-lisp:t :member-name
                                  "ProvisioningArtifactId")
                                 (name :target-type provisioning-artifact-name
                                  :member-name "Name")
                                 (description :target-type
                                  provisioning-artifact-description
                                  :member-name "Description")
                                 (active :target-type
                                  provisioning-artifact-active :member-name
                                  "Active")
                                 (guidance :target-type
                                  provisioning-artifact-guidance :member-name
                                  "Guidance"))
                                (:shape-name "UpdateProvisioningArtifactInput"))

(smithy/sdk/shapes:define-output update-provisioning-artifact-output
                                 common-lisp:nil
                                 ((provisioning-artifact-detail :target-type
                                   provisioning-artifact-detail :member-name
                                   "ProvisioningArtifactDetail")
                                  (info :target-type provisioning-artifact-info
                                   :member-name "Info")
                                  (status :target-type status :member-name
                                   "Status"))
                                 (:shape-name
                                  "UpdateProvisioningArtifactOutput"))

(smithy/sdk/shapes:define-structure update-provisioning-parameter
                                    common-lisp:nil
                                    ((key :target-type parameter-key
                                      :member-name "Key")
                                     (value :target-type parameter-value
                                      :member-name "Value")
                                     (use-previous-value :target-type
                                      use-previous-value :member-name
                                      "UsePreviousValue"))
                                    (:shape-name "UpdateProvisioningParameter"))

(smithy/sdk/shapes:define-list update-provisioning-parameters :member
                               update-provisioning-parameter)

(smithy/sdk/shapes:define-structure update-provisioning-preferences
                                    common-lisp:nil
                                    ((stack-set-accounts :target-type
                                      stack-set-accounts :member-name
                                      "StackSetAccounts")
                                     (stack-set-regions :target-type
                                      stack-set-regions :member-name
                                      "StackSetRegions")
                                     (stack-set-failure-tolerance-count
                                      :target-type
                                      stack-set-failure-tolerance-count
                                      :member-name
                                      "StackSetFailureToleranceCount")
                                     (stack-set-failure-tolerance-percentage
                                      :target-type
                                      stack-set-failure-tolerance-percentage
                                      :member-name
                                      "StackSetFailureTolerancePercentage")
                                     (stack-set-max-concurrency-count
                                      :target-type
                                      stack-set-max-concurrency-count
                                      :member-name
                                      "StackSetMaxConcurrencyCount")
                                     (stack-set-max-concurrency-percentage
                                      :target-type
                                      stack-set-max-concurrency-percentage
                                      :member-name
                                      "StackSetMaxConcurrencyPercentage")
                                     (stack-set-operation-type :target-type
                                      stack-set-operation-type :member-name
                                      "StackSetOperationType"))
                                    (:shape-name
                                     "UpdateProvisioningPreferences"))

(smithy/sdk/shapes:define-input update-service-action-input common-lisp:nil
                                ((id :target-type id :required common-lisp:t
                                  :member-name "Id")
                                 (name :target-type service-action-name
                                  :member-name "Name")
                                 (definition :target-type
                                  service-action-definition-map :member-name
                                  "Definition")
                                 (description :target-type
                                  service-action-description :member-name
                                  "Description")
                                 (accept-language :target-type accept-language
                                  :member-name "AcceptLanguage"))
                                (:shape-name "UpdateServiceActionInput"))

(smithy/sdk/shapes:define-output update-service-action-output common-lisp:nil
                                 ((service-action-detail :target-type
                                   service-action-detail :member-name
                                   "ServiceActionDetail"))
                                 (:shape-name "UpdateServiceActionOutput"))

(smithy/sdk/shapes:define-input update-tag-option-input common-lisp:nil
                                ((id :target-type tag-option-id :required
                                  common-lisp:t :member-name "Id")
                                 (value :target-type tag-option-value
                                  :member-name "Value")
                                 (active :target-type tag-option-active
                                  :member-name "Active"))
                                (:shape-name "UpdateTagOptionInput"))

(smithy/sdk/shapes:define-output update-tag-option-output common-lisp:nil
                                 ((tag-option-detail :target-type
                                   tag-option-detail :member-name
                                   "TagOptionDetail"))
                                 (:shape-name "UpdateTagOptionOutput"))

(smithy/sdk/shapes:define-type updated-time smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure usage-instruction common-lisp:nil
                                    ((type :target-type instruction-type
                                      :member-name "Type")
                                     (value :target-type instruction-value
                                      :member-name "Value"))
                                    (:shape-name "UsageInstruction"))

(smithy/sdk/shapes:define-list usage-instructions :member usage-instruction)

(smithy/sdk/shapes:define-type use-previous-value
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type user-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type user-arn-session smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type verbose smithy/sdk/smithy-types:boolean)

(smithy/sdk/operation:define-operation accept-portfolio-share :shape-name
                                       "AcceptPortfolioShare" :input
                                       accept-portfolio-share-input :output
                                       accept-portfolio-share-output :errors
                                       (invalid-parameters-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation associate-budget-with-resource
                                       :shape-name
                                       "AssociateBudgetWithResource" :input
                                       associate-budget-with-resource-input
                                       :output
                                       associate-budget-with-resource-output
                                       :errors
                                       (duplicate-resource-exception
                                        invalid-parameters-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation associate-principal-with-portfolio
                                       :shape-name
                                       "AssociatePrincipalWithPortfolio" :input
                                       associate-principal-with-portfolio-input
                                       :output
                                       associate-principal-with-portfolio-output
                                       :errors
                                       (invalid-parameters-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation associate-product-with-portfolio
                                       :shape-name
                                       "AssociateProductWithPortfolio" :input
                                       associate-product-with-portfolio-input
                                       :output
                                       associate-product-with-portfolio-output
                                       :errors
                                       (invalid-parameters-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation
 associate-service-action-with-provisioning-artifact :shape-name
 "AssociateServiceActionWithProvisioningArtifact" :input
 associate-service-action-with-provisioning-artifact-input :output
 associate-service-action-with-provisioning-artifact-output :errors
 (duplicate-resource-exception invalid-parameters-exception
  limit-exceeded-exception resource-not-found-exception))

(smithy/sdk/operation:define-operation associate-tag-option-with-resource
                                       :shape-name
                                       "AssociateTagOptionWithResource" :input
                                       associate-tag-option-with-resource-input
                                       :output
                                       associate-tag-option-with-resource-output
                                       :errors
                                       (duplicate-resource-exception
                                        invalid-parameters-exception
                                        invalid-state-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        tag-option-not-migrated-exception))

(smithy/sdk/operation:define-operation
 batch-associate-service-action-with-provisioning-artifact :shape-name
 "BatchAssociateServiceActionWithProvisioningArtifact" :input
 batch-associate-service-action-with-provisioning-artifact-input :output
 batch-associate-service-action-with-provisioning-artifact-output :errors
 (invalid-parameters-exception))

(smithy/sdk/operation:define-operation
 batch-disassociate-service-action-from-provisioning-artifact :shape-name
 "BatchDisassociateServiceActionFromProvisioningArtifact" :input
 batch-disassociate-service-action-from-provisioning-artifact-input :output
 batch-disassociate-service-action-from-provisioning-artifact-output :errors
 (invalid-parameters-exception))

(smithy/sdk/operation:define-operation copy-product :shape-name "CopyProduct"
                                       :input copy-product-input :output
                                       copy-product-output :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-constraint :shape-name
                                       "CreateConstraint" :input
                                       create-constraint-input :output
                                       create-constraint-output :errors
                                       (duplicate-resource-exception
                                        invalid-parameters-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-portfolio :shape-name
                                       "CreatePortfolio" :input
                                       create-portfolio-input :output
                                       create-portfolio-output :errors
                                       (invalid-parameters-exception
                                        limit-exceeded-exception
                                        tag-option-not-migrated-exception))

(smithy/sdk/operation:define-operation create-portfolio-share :shape-name
                                       "CreatePortfolioShare" :input
                                       create-portfolio-share-input :output
                                       create-portfolio-share-output :errors
                                       (invalid-parameters-exception
                                        invalid-state-exception
                                        limit-exceeded-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-product :shape-name
                                       "CreateProduct" :input
                                       create-product-input :output
                                       create-product-output :errors
                                       (invalid-parameters-exception
                                        limit-exceeded-exception
                                        tag-option-not-migrated-exception))

(smithy/sdk/operation:define-operation create-provisioned-product-plan
                                       :shape-name
                                       "CreateProvisionedProductPlan" :input
                                       create-provisioned-product-plan-input
                                       :output
                                       create-provisioned-product-plan-output
                                       :errors
                                       (invalid-parameters-exception
                                        invalid-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-provisioning-artifact :shape-name
                                       "CreateProvisioningArtifact" :input
                                       create-provisioning-artifact-input
                                       :output
                                       create-provisioning-artifact-output
                                       :errors
                                       (invalid-parameters-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-service-action :shape-name
                                       "CreateServiceAction" :input
                                       create-service-action-input :output
                                       create-service-action-output :errors
                                       (invalid-parameters-exception
                                        limit-exceeded-exception))

(smithy/sdk/operation:define-operation create-tag-option :shape-name
                                       "CreateTagOption" :input
                                       create-tag-option-input :output
                                       create-tag-option-output :errors
                                       (duplicate-resource-exception
                                        limit-exceeded-exception
                                        tag-option-not-migrated-exception))

(smithy/sdk/operation:define-operation delete-constraint :shape-name
                                       "DeleteConstraint" :input
                                       delete-constraint-input :output
                                       delete-constraint-output :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-portfolio :shape-name
                                       "DeletePortfolio" :input
                                       delete-portfolio-input :output
                                       delete-portfolio-output :errors
                                       (invalid-parameters-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        tag-option-not-migrated-exception))

(smithy/sdk/operation:define-operation delete-portfolio-share :shape-name
                                       "DeletePortfolioShare" :input
                                       delete-portfolio-share-input :output
                                       delete-portfolio-share-output :errors
                                       (invalid-parameters-exception
                                        invalid-state-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-product :shape-name
                                       "DeleteProduct" :input
                                       delete-product-input :output
                                       delete-product-output :errors
                                       (invalid-parameters-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        tag-option-not-migrated-exception))

(smithy/sdk/operation:define-operation delete-provisioned-product-plan
                                       :shape-name
                                       "DeleteProvisionedProductPlan" :input
                                       delete-provisioned-product-plan-input
                                       :output
                                       delete-provisioned-product-plan-output
                                       :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-provisioning-artifact :shape-name
                                       "DeleteProvisioningArtifact" :input
                                       delete-provisioning-artifact-input
                                       :output
                                       delete-provisioning-artifact-output
                                       :errors
                                       (invalid-parameters-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-service-action :shape-name
                                       "DeleteServiceAction" :input
                                       delete-service-action-input :output
                                       delete-service-action-output :errors
                                       (invalid-parameters-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation delete-tag-option :shape-name
                                       "DeleteTagOption" :input
                                       delete-tag-option-input :output
                                       delete-tag-option-output :errors
                                       (resource-in-use-exception
                                        resource-not-found-exception
                                        tag-option-not-migrated-exception))

(smithy/sdk/operation:define-operation describe-constraint :shape-name
                                       "DescribeConstraint" :input
                                       describe-constraint-input :output
                                       describe-constraint-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-copy-product-status :shape-name
                                       "DescribeCopyProductStatus" :input
                                       describe-copy-product-status-input
                                       :output
                                       describe-copy-product-status-output
                                       :errors (resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-portfolio :shape-name
                                       "DescribePortfolio" :input
                                       describe-portfolio-input :output
                                       describe-portfolio-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-portfolio-share-status
                                       :shape-name
                                       "DescribePortfolioShareStatus" :input
                                       describe-portfolio-share-status-input
                                       :output
                                       describe-portfolio-share-status-output
                                       :errors
                                       (invalid-parameters-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-portfolio-shares :shape-name
                                       "DescribePortfolioShares" :input
                                       describe-portfolio-shares-input :output
                                       describe-portfolio-shares-output :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-product :shape-name
                                       "DescribeProduct" :input
                                       describe-product-input :output
                                       describe-product-output :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-product-as-admin :shape-name
                                       "DescribeProductAsAdmin" :input
                                       describe-product-as-admin-input :output
                                       describe-product-as-admin-output :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-product-view :shape-name
                                       "DescribeProductView" :input
                                       describe-product-view-input :output
                                       describe-product-view-output :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-provisioned-product :shape-name
                                       "DescribeProvisionedProduct" :input
                                       describe-provisioned-product-input
                                       :output
                                       describe-provisioned-product-output
                                       :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-provisioned-product-plan
                                       :shape-name
                                       "DescribeProvisionedProductPlan" :input
                                       describe-provisioned-product-plan-input
                                       :output
                                       describe-provisioned-product-plan-output
                                       :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-provisioning-artifact
                                       :shape-name
                                       "DescribeProvisioningArtifact" :input
                                       describe-provisioning-artifact-input
                                       :output
                                       describe-provisioning-artifact-output
                                       :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-provisioning-parameters
                                       :shape-name
                                       "DescribeProvisioningParameters" :input
                                       describe-provisioning-parameters-input
                                       :output
                                       describe-provisioning-parameters-output
                                       :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-record :shape-name
                                       "DescribeRecord" :input
                                       describe-record-input :output
                                       describe-record-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-service-action :shape-name
                                       "DescribeServiceAction" :input
                                       describe-service-action-input :output
                                       describe-service-action-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation
 describe-service-action-execution-parameters :shape-name
 "DescribeServiceActionExecutionParameters" :input
 describe-service-action-execution-parameters-input :output
 describe-service-action-execution-parameters-output :errors
 (invalid-parameters-exception resource-not-found-exception))

(smithy/sdk/operation:define-operation describe-tag-option :shape-name
                                       "DescribeTagOption" :input
                                       describe-tag-option-input :output
                                       describe-tag-option-output :errors
                                       (resource-not-found-exception
                                        tag-option-not-migrated-exception))

(smithy/sdk/operation:define-operation disable-awsorganizations-access
                                       :shape-name
                                       "DisableAWSOrganizationsAccess" :input
                                       disable-awsorganizations-access-input
                                       :output
                                       disable-awsorganizations-access-output
                                       :errors
                                       (invalid-state-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation disassociate-budget-from-resource
                                       :shape-name
                                       "DisassociateBudgetFromResource" :input
                                       disassociate-budget-from-resource-input
                                       :output
                                       disassociate-budget-from-resource-output
                                       :errors (resource-not-found-exception))

(smithy/sdk/operation:define-operation disassociate-principal-from-portfolio
                                       :shape-name
                                       "DisassociatePrincipalFromPortfolio"
                                       :input
                                       disassociate-principal-from-portfolio-input
                                       :output
                                       disassociate-principal-from-portfolio-output
                                       :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation disassociate-product-from-portfolio
                                       :shape-name
                                       "DisassociateProductFromPortfolio"
                                       :input
                                       disassociate-product-from-portfolio-input
                                       :output
                                       disassociate-product-from-portfolio-output
                                       :errors
                                       (invalid-parameters-exception
                                        resource-in-use-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation
 disassociate-service-action-from-provisioning-artifact :shape-name
 "DisassociateServiceActionFromProvisioningArtifact" :input
 disassociate-service-action-from-provisioning-artifact-input :output
 disassociate-service-action-from-provisioning-artifact-output :errors
 (invalid-parameters-exception resource-not-found-exception))

(smithy/sdk/operation:define-operation disassociate-tag-option-from-resource
                                       :shape-name
                                       "DisassociateTagOptionFromResource"
                                       :input
                                       disassociate-tag-option-from-resource-input
                                       :output
                                       disassociate-tag-option-from-resource-output
                                       :errors
                                       (resource-not-found-exception
                                        tag-option-not-migrated-exception))

(smithy/sdk/operation:define-operation enable-awsorganizations-access
                                       :shape-name
                                       "EnableAWSOrganizationsAccess" :input
                                       enable-awsorganizations-access-input
                                       :output
                                       enable-awsorganizations-access-output
                                       :errors
                                       (invalid-state-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation execute-provisioned-product-plan
                                       :shape-name
                                       "ExecuteProvisionedProductPlan" :input
                                       execute-provisioned-product-plan-input
                                       :output
                                       execute-provisioned-product-plan-output
                                       :errors
                                       (invalid-parameters-exception
                                        invalid-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation
 execute-provisioned-product-service-action :shape-name
 "ExecuteProvisionedProductServiceAction" :input
 execute-provisioned-product-service-action-input :output
 execute-provisioned-product-service-action-output :errors
 (invalid-parameters-exception invalid-state-exception
  resource-not-found-exception))

(smithy/sdk/operation:define-operation get-awsorganizations-access-status
                                       :shape-name
                                       "GetAWSOrganizationsAccessStatus" :input
                                       get-awsorganizations-access-status-input
                                       :output
                                       get-awsorganizations-access-status-output
                                       :errors
                                       (operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-provisioned-product-outputs
                                       :shape-name
                                       "GetProvisionedProductOutputs" :input
                                       get-provisioned-product-outputs-input
                                       :output
                                       get-provisioned-product-outputs-output
                                       :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation import-as-provisioned-product
                                       :shape-name "ImportAsProvisionedProduct"
                                       :input
                                       import-as-provisioned-product-input
                                       :output
                                       import-as-provisioned-product-output
                                       :errors
                                       (duplicate-resource-exception
                                        invalid-parameters-exception
                                        invalid-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-accepted-portfolio-shares
                                       :shape-name
                                       "ListAcceptedPortfolioShares" :input
                                       list-accepted-portfolio-shares-input
                                       :output
                                       list-accepted-portfolio-shares-output
                                       :errors
                                       (invalid-parameters-exception
                                        operation-not-supported-exception))

(smithy/sdk/operation:define-operation list-budgets-for-resource :shape-name
                                       "ListBudgetsForResource" :input
                                       list-budgets-for-resource-input :output
                                       list-budgets-for-resource-output :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-constraints-for-portfolio
                                       :shape-name
                                       "ListConstraintsForPortfolio" :input
                                       list-constraints-for-portfolio-input
                                       :output
                                       list-constraints-for-portfolio-output
                                       :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-launch-paths :shape-name
                                       "ListLaunchPaths" :input
                                       list-launch-paths-input :output
                                       list-launch-paths-output :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-organization-portfolio-access
                                       :shape-name
                                       "ListOrganizationPortfolioAccess" :input
                                       list-organization-portfolio-access-input
                                       :output
                                       list-organization-portfolio-access-output
                                       :errors
                                       (invalid-parameters-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-portfolio-access :shape-name
                                       "ListPortfolioAccess" :input
                                       list-portfolio-access-input :output
                                       list-portfolio-access-output :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-portfolios :shape-name
                                       "ListPortfolios" :input
                                       list-portfolios-input :output
                                       list-portfolios-output :errors
                                       (invalid-parameters-exception))

(smithy/sdk/operation:define-operation list-portfolios-for-product :shape-name
                                       "ListPortfoliosForProduct" :input
                                       list-portfolios-for-product-input
                                       :output
                                       list-portfolios-for-product-output
                                       :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-principals-for-portfolio
                                       :shape-name "ListPrincipalsForPortfolio"
                                       :input
                                       list-principals-for-portfolio-input
                                       :output
                                       list-principals-for-portfolio-output
                                       :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-provisioned-product-plans
                                       :shape-name
                                       "ListProvisionedProductPlans" :input
                                       list-provisioned-product-plans-input
                                       :output
                                       list-provisioned-product-plans-output
                                       :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-provisioning-artifacts :shape-name
                                       "ListProvisioningArtifacts" :input
                                       list-provisioning-artifacts-input
                                       :output
                                       list-provisioning-artifacts-output
                                       :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation
 list-provisioning-artifacts-for-service-action :shape-name
 "ListProvisioningArtifactsForServiceAction" :input
 list-provisioning-artifacts-for-service-action-input :output
 list-provisioning-artifacts-for-service-action-output :errors
 (invalid-parameters-exception resource-not-found-exception))

(smithy/sdk/operation:define-operation list-record-history :shape-name
                                       "ListRecordHistory" :input
                                       list-record-history-input :output
                                       list-record-history-output :errors
                                       (invalid-parameters-exception))

(smithy/sdk/operation:define-operation list-resources-for-tag-option
                                       :shape-name "ListResourcesForTagOption"
                                       :input
                                       list-resources-for-tag-option-input
                                       :output
                                       list-resources-for-tag-option-output
                                       :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception
                                        tag-option-not-migrated-exception))

(smithy/sdk/operation:define-operation list-service-actions :shape-name
                                       "ListServiceActions" :input
                                       list-service-actions-input :output
                                       list-service-actions-output :errors
                                       (invalid-parameters-exception))

(smithy/sdk/operation:define-operation
 list-service-actions-for-provisioning-artifact :shape-name
 "ListServiceActionsForProvisioningArtifact" :input
 list-service-actions-for-provisioning-artifact-input :output
 list-service-actions-for-provisioning-artifact-output :errors
 (invalid-parameters-exception resource-not-found-exception))

(smithy/sdk/operation:define-operation
 list-stack-instances-for-provisioned-product :shape-name
 "ListStackInstancesForProvisionedProduct" :input
 list-stack-instances-for-provisioned-product-input :output
 list-stack-instances-for-provisioned-product-output :errors
 (invalid-parameters-exception resource-not-found-exception))

(smithy/sdk/operation:define-operation list-tag-options :shape-name
                                       "ListTagOptions" :input
                                       list-tag-options-input :output
                                       list-tag-options-output :errors
                                       (invalid-parameters-exception
                                        tag-option-not-migrated-exception))

(smithy/sdk/operation:define-operation
 notify-provision-product-engine-workflow-result :shape-name
 "NotifyProvisionProductEngineWorkflowResult" :input
 notify-provision-product-engine-workflow-result-input :output
 notify-provision-product-engine-workflow-result-output :errors
 (invalid-parameters-exception resource-not-found-exception))

(smithy/sdk/operation:define-operation
 notify-terminate-provisioned-product-engine-workflow-result :shape-name
 "NotifyTerminateProvisionedProductEngineWorkflowResult" :input
 notify-terminate-provisioned-product-engine-workflow-result-input :output
 notify-terminate-provisioned-product-engine-workflow-result-output :errors
 (invalid-parameters-exception resource-not-found-exception))

(smithy/sdk/operation:define-operation
 notify-update-provisioned-product-engine-workflow-result :shape-name
 "NotifyUpdateProvisionedProductEngineWorkflowResult" :input
 notify-update-provisioned-product-engine-workflow-result-input :output
 notify-update-provisioned-product-engine-workflow-result-output :errors
 (invalid-parameters-exception resource-not-found-exception))

(smithy/sdk/operation:define-operation provision-product :shape-name
                                       "ProvisionProduct" :input
                                       provision-product-input :output
                                       provision-product-output :errors
                                       (duplicate-resource-exception
                                        invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation reject-portfolio-share :shape-name
                                       "RejectPortfolioShare" :input
                                       reject-portfolio-share-input :output
                                       reject-portfolio-share-output :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation scan-provisioned-products :shape-name
                                       "ScanProvisionedProducts" :input
                                       scan-provisioned-products-input :output
                                       scan-provisioned-products-output :errors
                                       (invalid-parameters-exception))

(smithy/sdk/operation:define-operation search-products :shape-name
                                       "SearchProducts" :input
                                       search-products-input :output
                                       search-products-output :errors
                                       (invalid-parameters-exception))

(smithy/sdk/operation:define-operation search-products-as-admin :shape-name
                                       "SearchProductsAsAdmin" :input
                                       search-products-as-admin-input :output
                                       search-products-as-admin-output :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation search-provisioned-products :shape-name
                                       "SearchProvisionedProducts" :input
                                       search-provisioned-products-input
                                       :output
                                       search-provisioned-products-output
                                       :errors (invalid-parameters-exception))

(smithy/sdk/operation:define-operation terminate-provisioned-product
                                       :shape-name
                                       "TerminateProvisionedProduct" :input
                                       terminate-provisioned-product-input
                                       :output
                                       terminate-provisioned-product-output
                                       :errors (resource-not-found-exception))

(smithy/sdk/operation:define-operation update-constraint :shape-name
                                       "UpdateConstraint" :input
                                       update-constraint-input :output
                                       update-constraint-output :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-portfolio :shape-name
                                       "UpdatePortfolio" :input
                                       update-portfolio-input :output
                                       update-portfolio-output :errors
                                       (invalid-parameters-exception
                                        limit-exceeded-exception
                                        resource-not-found-exception
                                        tag-option-not-migrated-exception))

(smithy/sdk/operation:define-operation update-portfolio-share :shape-name
                                       "UpdatePortfolioShare" :input
                                       update-portfolio-share-input :output
                                       update-portfolio-share-output :errors
                                       (invalid-parameters-exception
                                        invalid-state-exception
                                        operation-not-supported-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-product :shape-name
                                       "UpdateProduct" :input
                                       update-product-input :output
                                       update-product-output :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception
                                        tag-option-not-migrated-exception))

(smithy/sdk/operation:define-operation update-provisioned-product :shape-name
                                       "UpdateProvisionedProduct" :input
                                       update-provisioned-product-input :output
                                       update-provisioned-product-output
                                       :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-provisioned-product-properties
                                       :shape-name
                                       "UpdateProvisionedProductProperties"
                                       :input
                                       update-provisioned-product-properties-input
                                       :output
                                       update-provisioned-product-properties-output
                                       :errors
                                       (invalid-parameters-exception
                                        invalid-state-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-provisioning-artifact :shape-name
                                       "UpdateProvisioningArtifact" :input
                                       update-provisioning-artifact-input
                                       :output
                                       update-provisioning-artifact-output
                                       :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-service-action :shape-name
                                       "UpdateServiceAction" :input
                                       update-service-action-input :output
                                       update-service-action-output :errors
                                       (invalid-parameters-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-tag-option :shape-name
                                       "UpdateTagOption" :input
                                       update-tag-option-input :output
                                       update-tag-option-output :errors
                                       (duplicate-resource-exception
                                        invalid-parameters-exception
                                        resource-not-found-exception
                                        tag-option-not-migrated-exception))
