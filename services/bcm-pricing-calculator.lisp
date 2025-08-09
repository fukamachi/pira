(uiop/package:define-package #:pira/bcm-pricing-calculator (:use)
                             (:export #:awsbcmpricing-calculator #:account-id
                              #:add-reserved-instance-action
                              #:add-savings-plan-action #:arn
                              #:availability-zone
                              #:batch-create-bill-scenario-commitment-modification
                              #:batch-create-bill-scenario-commitment-modification-entries
                              #:batch-create-bill-scenario-commitment-modification-entry
                              #:batch-create-bill-scenario-commitment-modification-error
                              #:batch-create-bill-scenario-commitment-modification-error-code
                              #:batch-create-bill-scenario-commitment-modification-errors
                              #:batch-create-bill-scenario-commitment-modification-item
                              #:batch-create-bill-scenario-commitment-modification-items
                              #:batch-create-bill-scenario-usage-modification
                              #:batch-create-bill-scenario-usage-modification-entries
                              #:batch-create-bill-scenario-usage-modification-entry
                              #:batch-create-bill-scenario-usage-modification-error
                              #:batch-create-bill-scenario-usage-modification-error-code
                              #:batch-create-bill-scenario-usage-modification-errors
                              #:batch-create-bill-scenario-usage-modification-item
                              #:batch-create-bill-scenario-usage-modification-items
                              #:batch-create-workload-estimate-usage
                              #:batch-create-workload-estimate-usage-code
                              #:batch-create-workload-estimate-usage-entries
                              #:batch-create-workload-estimate-usage-entry
                              #:batch-create-workload-estimate-usage-error
                              #:batch-create-workload-estimate-usage-errors
                              #:batch-create-workload-estimate-usage-item
                              #:batch-create-workload-estimate-usage-items
                              #:batch-delete-bill-scenario-commitment-modification
                              #:batch-delete-bill-scenario-commitment-modification-entries
                              #:batch-delete-bill-scenario-commitment-modification-error
                              #:batch-delete-bill-scenario-commitment-modification-error-code
                              #:batch-delete-bill-scenario-commitment-modification-errors
                              #:batch-delete-bill-scenario-usage-modification
                              #:batch-delete-bill-scenario-usage-modification-entries
                              #:batch-delete-bill-scenario-usage-modification-error
                              #:batch-delete-bill-scenario-usage-modification-error-code
                              #:batch-delete-bill-scenario-usage-modification-errors
                              #:batch-delete-workload-estimate-usage
                              #:batch-delete-workload-estimate-usage-entries
                              #:batch-delete-workload-estimate-usage-error
                              #:batch-delete-workload-estimate-usage-errors
                              #:batch-update-bill-scenario-commitment-modification
                              #:batch-update-bill-scenario-commitment-modification-entries
                              #:batch-update-bill-scenario-commitment-modification-entry
                              #:batch-update-bill-scenario-commitment-modification-error
                              #:batch-update-bill-scenario-commitment-modification-error-code
                              #:batch-update-bill-scenario-commitment-modification-errors
                              #:batch-update-bill-scenario-usage-modification
                              #:batch-update-bill-scenario-usage-modification-entries
                              #:batch-update-bill-scenario-usage-modification-entry
                              #:batch-update-bill-scenario-usage-modification-error
                              #:batch-update-bill-scenario-usage-modification-error-code
                              #:batch-update-bill-scenario-usage-modification-errors
                              #:batch-update-workload-estimate-usage
                              #:batch-update-workload-estimate-usage-entries
                              #:batch-update-workload-estimate-usage-entry
                              #:batch-update-workload-estimate-usage-error
                              #:batch-update-workload-estimate-usage-errors
                              #:bill-estimate #:bill-estimate-commitment
                              #:bill-estimate-commitment-summaries
                              #:bill-estimate-commitment-summary
                              #:bill-estimate-cost-summary
                              #:bill-estimate-input-commitment-modification
                              #:bill-estimate-input-commitment-modification-summaries
                              #:bill-estimate-input-commitment-modification-summary
                              #:bill-estimate-input-usage-modification
                              #:bill-estimate-input-usage-modification-summaries
                              #:bill-estimate-input-usage-modification-summary
                              #:bill-estimate-line-item
                              #:bill-estimate-line-item-summaries
                              #:bill-estimate-line-item-summary
                              #:bill-estimate-name #:bill-estimate-status
                              #:bill-estimate-summaries #:bill-estimate-summary
                              #:bill-interval #:bill-scenario
                              #:bill-scenario-commitment-modification
                              #:bill-scenario-commitment-modification-action
                              #:bill-scenario-commitment-modification-item
                              #:bill-scenario-commitment-modification-items
                              #:bill-scenario-name #:bill-scenario-status
                              #:bill-scenario-summaries #:bill-scenario-summary
                              #:bill-scenario-usage-modification
                              #:bill-scenario-usage-modification-item
                              #:bill-scenario-usage-modification-items
                              #:client-token #:cost-amount #:cost-difference
                              #:create-bill-estimate #:create-bill-scenario
                              #:create-workload-estimate #:currency-code
                              #:delete-bill-estimate #:delete-bill-scenario
                              #:delete-workload-estimate #:expression
                              #:expression-filter #:expression-list
                              #:filter-timestamp #:get-bill-estimate
                              #:get-bill-scenario #:get-preferences
                              #:get-workload-estimate #:historical-usage-entity
                              #:key #:list-bill-estimate-commitments
                              #:list-bill-estimate-input-commitment-modifications
                              #:list-bill-estimate-input-usage-modifications
                              #:list-bill-estimate-line-items
                              #:list-bill-estimate-line-items-filter
                              #:list-bill-estimate-line-items-filter-name
                              #:list-bill-estimate-line-items-filter-values
                              #:list-bill-estimate-line-items-filters
                              #:list-bill-estimates
                              #:list-bill-estimates-filter
                              #:list-bill-estimates-filter-name
                              #:list-bill-estimates-filter-values
                              #:list-bill-estimates-filters
                              #:list-bill-scenario-commitment-modifications
                              #:list-bill-scenario-usage-modifications
                              #:list-bill-scenarios
                              #:list-bill-scenarios-filter
                              #:list-bill-scenarios-filter-name
                              #:list-bill-scenarios-filter-values
                              #:list-bill-scenarios-filters
                              #:list-tags-for-resource #:list-usage-filter
                              #:list-usage-filter-name
                              #:list-usage-filter-values #:list-usage-filters
                              #:list-workload-estimate-usage
                              #:list-workload-estimates
                              #:list-workload-estimates-filter
                              #:list-workload-estimates-filter-name
                              #:list-workload-estimates-filter-values
                              #:list-workload-estimates-filters #:match-option
                              #:max-results #:negate-reserved-instance-action
                              #:negate-savings-plan-action #:next-page-token
                              #:operation #:purchase-agreement-type #:rate-type
                              #:rate-types #:reserved-instance-instance-count
                              #:resource-id #:resource-tag-key
                              #:resource-tag-keys #:resource-tag-value
                              #:savings-plan-arns #:savings-plan-commitment
                              #:service-code #:service-cost-difference-map
                              #:string-list #:tag-resource #:tags
                              #:untag-resource #:update-bill-estimate
                              #:update-bill-scenario #:update-preferences
                              #:update-workload-estimate #:usage-amount
                              #:usage-amounts #:usage-group #:usage-quantities
                              #:usage-quantity #:usage-quantity-result
                              #:usage-type #:uuid #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:workload-estimate
                              #:workload-estimate-cost-status
                              #:workload-estimate-name
                              #:workload-estimate-rate-type
                              #:workload-estimate-status
                              #:workload-estimate-summaries
                              #:workload-estimate-summary
                              #:workload-estimate-update-usage-error-code
                              #:workload-estimate-usage
                              #:workload-estimate-usage-item
                              #:workload-estimate-usage-items
                              #:workload-estimate-usage-max-results
                              #:workload-estimate-usage-quantity))
(common-lisp:in-package #:pira/bcm-pricing-calculator)

(smithy/sdk/service:define-service awsbcmpricing-calculator :shape-name
                                   "AWSBCMPricingCalculator" :version
                                   "2024-06-19" :title
                                   "AWS Billing and Cost Management Pricing Calculator"
                                   :errors
                                   '(access-denied-exception
                                     internal-server-exception
                                     throttling-exception validation-exception)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "BCM Pricing Calculator")
                                      ("arnNamespace"
                                       . "bcm-pricing-calculator"))
                                     ("aws.api#tagEnabled")
                                     ("aws.auth#sigv4"
                                      ("name" . "bcm-pricing-calculator"))
                                     ("aws.endpoints#dualStackOnlyEndpoints")
                                     ("aws.endpoints#standardPartitionalEndpoints"
                                      ("endpointPatternType"
                                       . "service_region_dnsSuffix"))
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the tags that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"))
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the tags associated with the resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by the tag keys that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys")))
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure add-reserved-instance-action
                                    common-lisp:nil
                                    ((reserved-instances-offering-id
                                      :target-type uuid :member-name
                                      "reservedInstancesOfferingId")
                                     (instance-count :target-type
                                      reserved-instance-instance-count
                                      :member-name "instanceCount"))
                                    (:shape-name "AddReservedInstanceAction"))

(smithy/sdk/shapes:define-structure add-savings-plan-action common-lisp:nil
                                    ((savings-plan-offering-id :target-type
                                      uuid :member-name
                                      "savingsPlanOfferingId")
                                     (commitment :target-type
                                      savings-plan-commitment :member-name
                                      "commitment"))
                                    (:shape-name "AddSavingsPlanAction"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type availability-zone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list
 batch-create-bill-scenario-commitment-modification-entries :member
 batch-create-bill-scenario-commitment-modification-entry)

(smithy/sdk/shapes:define-structure
 batch-create-bill-scenario-commitment-modification-entry common-lisp:nil
 ((key :target-type key :required common-lisp:t :member-name "key")
  (group :target-type usage-group :member-name "group")
  (usage-account-id :target-type account-id :required common-lisp:t
   :member-name "usageAccountId")
  (commitment-action :target-type bill-scenario-commitment-modification-action
   :required common-lisp:t :member-name "commitmentAction"))
 (:shape-name "BatchCreateBillScenarioCommitmentModificationEntry"))

(smithy/sdk/shapes:define-structure
 batch-create-bill-scenario-commitment-modification-error common-lisp:nil
 ((key :target-type key :member-name "key")
  (error-message :target-type smithy/sdk/smithy-types:string :member-name
   "errorMessage")
  (error-code :target-type
   batch-create-bill-scenario-commitment-modification-error-code :member-name
   "errorCode"))
 (:shape-name "BatchCreateBillScenarioCommitmentModificationError"))

(smithy/sdk/shapes:define-enum batch-create-bill-scenario-commitment-modification-error-code
    common-lisp:nil
  (:conflict "CONFLICT")
  (:internal-server-error "INTERNAL_SERVER_ERROR")
  (:invalid-account "INVALID_ACCOUNT"))

(smithy/sdk/shapes:define-list
 batch-create-bill-scenario-commitment-modification-errors :member
 batch-create-bill-scenario-commitment-modification-error)

(smithy/sdk/shapes:define-structure
 batch-create-bill-scenario-commitment-modification-item common-lisp:nil
 ((key :target-type key :member-name "key")
  (id :target-type resource-id :member-name "id")
  (group :target-type usage-group :member-name "group")
  (usage-account-id :target-type account-id :member-name "usageAccountId")
  (commitment-action :target-type bill-scenario-commitment-modification-action
   :member-name "commitmentAction"))
 (:shape-name "BatchCreateBillScenarioCommitmentModificationItem"))

(smithy/sdk/shapes:define-list
 batch-create-bill-scenario-commitment-modification-items :member
 batch-create-bill-scenario-commitment-modification-item)

(smithy/sdk/shapes:define-input
 batch-create-bill-scenario-commitment-modification-request common-lisp:nil
 ((bill-scenario-id :target-type resource-id :required common-lisp:t
   :member-name "billScenarioId")
  (commitment-modifications :target-type
   batch-create-bill-scenario-commitment-modification-entries :required
   common-lisp:t :member-name "commitmentModifications")
  (client-token :target-type client-token :member-name "clientToken"
   :http-header "X-Amzn-Client-Token"))
 (:shape-name "BatchCreateBillScenarioCommitmentModificationRequest"))

(smithy/sdk/shapes:define-output
 batch-create-bill-scenario-commitment-modification-response common-lisp:nil
 ((items :target-type batch-create-bill-scenario-commitment-modification-items
   :member-name "items")
  (errors :target-type
   batch-create-bill-scenario-commitment-modification-errors :member-name
   "errors"))
 (:shape-name "BatchCreateBillScenarioCommitmentModificationResponse"))

(smithy/sdk/shapes:define-list
 batch-create-bill-scenario-usage-modification-entries :member
 batch-create-bill-scenario-usage-modification-entry)

(smithy/sdk/shapes:define-structure
 batch-create-bill-scenario-usage-modification-entry common-lisp:nil
 ((service-code :target-type service-code :required common-lisp:t :member-name
   "serviceCode")
  (usage-type :target-type usage-type :required common-lisp:t :member-name
   "usageType")
  (operation :target-type operation :required common-lisp:t :member-name
   "operation")
  (availability-zone :target-type availability-zone :member-name
   "availabilityZone")
  (key :target-type key :required common-lisp:t :member-name "key")
  (group :target-type usage-group :member-name "group")
  (usage-account-id :target-type account-id :required common-lisp:t
   :member-name "usageAccountId")
  (amounts :target-type usage-amounts :member-name "amounts")
  (historical-usage :target-type historical-usage-entity :member-name
   "historicalUsage"))
 (:shape-name "BatchCreateBillScenarioUsageModificationEntry"))

(smithy/sdk/shapes:define-structure
 batch-create-bill-scenario-usage-modification-error common-lisp:nil
 ((key :target-type key :member-name "key")
  (error-message :target-type smithy/sdk/smithy-types:string :member-name
   "errorMessage")
  (error-code :target-type
   batch-create-bill-scenario-usage-modification-error-code :member-name
   "errorCode"))
 (:shape-name "BatchCreateBillScenarioUsageModificationError"))

(smithy/sdk/shapes:define-enum batch-create-bill-scenario-usage-modification-error-code
    common-lisp:nil
  (:bad-request "BAD_REQUEST")
  (:not-found "NOT_FOUND")
  (:conflict "CONFLICT")
  (:internal-server-error "INTERNAL_SERVER_ERROR"))

(smithy/sdk/shapes:define-list
 batch-create-bill-scenario-usage-modification-errors :member
 batch-create-bill-scenario-usage-modification-error)

(smithy/sdk/shapes:define-structure
 batch-create-bill-scenario-usage-modification-item common-lisp:nil
 ((service-code :target-type service-code :required common-lisp:t :member-name
   "serviceCode")
  (usage-type :target-type usage-type :required common-lisp:t :member-name
   "usageType")
  (operation :target-type operation :required common-lisp:t :member-name
   "operation")
  (location :target-type smithy/sdk/smithy-types:string :member-name
   "location")
  (availability-zone :target-type availability-zone :member-name
   "availabilityZone")
  (id :target-type resource-id :member-name "id")
  (group :target-type usage-group :member-name "group")
  (usage-account-id :target-type account-id :member-name "usageAccountId")
  (quantities :target-type usage-quantities :member-name "quantities")
  (historical-usage :target-type historical-usage-entity :member-name
   "historicalUsage")
  (key :target-type key :member-name "key"))
 (:shape-name "BatchCreateBillScenarioUsageModificationItem"))

(smithy/sdk/shapes:define-list
 batch-create-bill-scenario-usage-modification-items :member
 batch-create-bill-scenario-usage-modification-item)

(smithy/sdk/shapes:define-input
 batch-create-bill-scenario-usage-modification-request common-lisp:nil
 ((bill-scenario-id :target-type resource-id :required common-lisp:t
   :member-name "billScenarioId")
  (usage-modifications :target-type
   batch-create-bill-scenario-usage-modification-entries :required
   common-lisp:t :member-name "usageModifications")
  (client-token :target-type client-token :member-name "clientToken"
   :http-header "X-Amzn-Client-Token"))
 (:shape-name "BatchCreateBillScenarioUsageModificationRequest"))

(smithy/sdk/shapes:define-output
 batch-create-bill-scenario-usage-modification-response common-lisp:nil
 ((items :target-type batch-create-bill-scenario-usage-modification-items
   :member-name "items")
  (errors :target-type batch-create-bill-scenario-usage-modification-errors
   :member-name "errors"))
 (:shape-name "BatchCreateBillScenarioUsageModificationResponse"))

(smithy/sdk/shapes:define-enum batch-create-workload-estimate-usage-code
    common-lisp:nil
  (:bad-request "BAD_REQUEST")
  (:not-found "NOT_FOUND")
  (:conflict "CONFLICT")
  (:internal-server-error "INTERNAL_SERVER_ERROR"))

(smithy/sdk/shapes:define-list batch-create-workload-estimate-usage-entries
                               :member
                               batch-create-workload-estimate-usage-entry)

(smithy/sdk/shapes:define-structure batch-create-workload-estimate-usage-entry
                                    common-lisp:nil
                                    ((service-code :target-type service-code
                                      :required common-lisp:t :member-name
                                      "serviceCode")
                                     (usage-type :target-type usage-type
                                      :required common-lisp:t :member-name
                                      "usageType")
                                     (operation :target-type operation
                                      :required common-lisp:t :member-name
                                      "operation")
                                     (key :target-type key :required
                                      common-lisp:t :member-name "key")
                                     (group :target-type usage-group
                                      :member-name "group")
                                     (usage-account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "usageAccountId")
                                     (amount :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "amount")
                                     (historical-usage :target-type
                                      historical-usage-entity :member-name
                                      "historicalUsage"))
                                    (:shape-name
                                     "BatchCreateWorkloadEstimateUsageEntry"))

(smithy/sdk/shapes:define-structure batch-create-workload-estimate-usage-error
                                    common-lisp:nil
                                    ((key :target-type key :member-name "key")
                                     (error-code :target-type
                                      batch-create-workload-estimate-usage-code
                                      :member-name "errorCode")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorMessage"))
                                    (:shape-name
                                     "BatchCreateWorkloadEstimateUsageError"))

(smithy/sdk/shapes:define-list batch-create-workload-estimate-usage-errors
                               :member
                               batch-create-workload-estimate-usage-error)

(smithy/sdk/shapes:define-structure batch-create-workload-estimate-usage-item
                                    common-lisp:nil
                                    ((service-code :target-type service-code
                                      :required common-lisp:t :member-name
                                      "serviceCode")
                                     (usage-type :target-type usage-type
                                      :required common-lisp:t :member-name
                                      "usageType")
                                     (operation :target-type operation
                                      :required common-lisp:t :member-name
                                      "operation")
                                     (location :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "location")
                                     (id :target-type resource-id :member-name
                                      "id")
                                     (usage-account-id :target-type account-id
                                      :member-name "usageAccountId")
                                     (group :target-type usage-group
                                      :member-name "group")
                                     (quantity :target-type
                                      workload-estimate-usage-quantity
                                      :member-name "quantity")
                                     (cost :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "cost")
                                     (currency :target-type currency-code
                                      :member-name "currency")
                                     (status :target-type
                                      workload-estimate-cost-status
                                      :member-name "status")
                                     (historical-usage :target-type
                                      historical-usage-entity :member-name
                                      "historicalUsage")
                                     (key :target-type key :member-name "key"))
                                    (:shape-name
                                     "BatchCreateWorkloadEstimateUsageItem"))

(smithy/sdk/shapes:define-list batch-create-workload-estimate-usage-items
                               :member
                               batch-create-workload-estimate-usage-item)

(smithy/sdk/shapes:define-input batch-create-workload-estimate-usage-request
                                common-lisp:nil
                                ((workload-estimate-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "workloadEstimateId")
                                 (usage :target-type
                                  batch-create-workload-estimate-usage-entries
                                  :required common-lisp:t :member-name "usage")
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amzn-Client-Token"))
                                (:shape-name
                                 "BatchCreateWorkloadEstimateUsageRequest"))

(smithy/sdk/shapes:define-output batch-create-workload-estimate-usage-response
                                 common-lisp:nil
                                 ((items :target-type
                                   batch-create-workload-estimate-usage-items
                                   :member-name "items")
                                  (errors :target-type
                                   batch-create-workload-estimate-usage-errors
                                   :member-name "errors"))
                                 (:shape-name
                                  "BatchCreateWorkloadEstimateUsageResponse"))

(smithy/sdk/shapes:define-list
 batch-delete-bill-scenario-commitment-modification-entries :member resource-id)

(smithy/sdk/shapes:define-structure
 batch-delete-bill-scenario-commitment-modification-error common-lisp:nil
 ((id :target-type resource-id :member-name "id")
  (error-code :target-type
   batch-delete-bill-scenario-commitment-modification-error-code :member-name
   "errorCode")
  (error-message :target-type smithy/sdk/smithy-types:string :member-name
   "errorMessage"))
 (:shape-name "BatchDeleteBillScenarioCommitmentModificationError"))

(smithy/sdk/shapes:define-enum batch-delete-bill-scenario-commitment-modification-error-code
    common-lisp:nil
  (:bad-request "BAD_REQUEST")
  (:conflict "CONFLICT")
  (:internal-server-error "INTERNAL_SERVER_ERROR"))

(smithy/sdk/shapes:define-list
 batch-delete-bill-scenario-commitment-modification-errors :member
 batch-delete-bill-scenario-commitment-modification-error)

(smithy/sdk/shapes:define-input
 batch-delete-bill-scenario-commitment-modification-request common-lisp:nil
 ((bill-scenario-id :target-type resource-id :required common-lisp:t
   :member-name "billScenarioId")
  (ids :target-type batch-delete-bill-scenario-commitment-modification-entries
   :required common-lisp:t :member-name "ids"))
 (:shape-name "BatchDeleteBillScenarioCommitmentModificationRequest"))

(smithy/sdk/shapes:define-output
 batch-delete-bill-scenario-commitment-modification-response common-lisp:nil
 ((errors :target-type
   batch-delete-bill-scenario-commitment-modification-errors :member-name
   "errors"))
 (:shape-name "BatchDeleteBillScenarioCommitmentModificationResponse"))

(smithy/sdk/shapes:define-list
 batch-delete-bill-scenario-usage-modification-entries :member resource-id)

(smithy/sdk/shapes:define-structure
 batch-delete-bill-scenario-usage-modification-error common-lisp:nil
 ((id :target-type resource-id :member-name "id")
  (error-message :target-type smithy/sdk/smithy-types:string :member-name
   "errorMessage")
  (error-code :target-type
   batch-delete-bill-scenario-usage-modification-error-code :member-name
   "errorCode"))
 (:shape-name "BatchDeleteBillScenarioUsageModificationError"))

(smithy/sdk/shapes:define-enum batch-delete-bill-scenario-usage-modification-error-code
    common-lisp:nil
  (:bad-request "BAD_REQUEST")
  (:conflict "CONFLICT")
  (:internal-server-error "INTERNAL_SERVER_ERROR"))

(smithy/sdk/shapes:define-list
 batch-delete-bill-scenario-usage-modification-errors :member
 batch-delete-bill-scenario-usage-modification-error)

(smithy/sdk/shapes:define-input
 batch-delete-bill-scenario-usage-modification-request common-lisp:nil
 ((bill-scenario-id :target-type resource-id :required common-lisp:t
   :member-name "billScenarioId")
  (ids :target-type batch-delete-bill-scenario-usage-modification-entries
   :required common-lisp:t :member-name "ids"))
 (:shape-name "BatchDeleteBillScenarioUsageModificationRequest"))

(smithy/sdk/shapes:define-output
 batch-delete-bill-scenario-usage-modification-response common-lisp:nil
 ((errors :target-type batch-delete-bill-scenario-usage-modification-errors
   :member-name "errors"))
 (:shape-name "BatchDeleteBillScenarioUsageModificationResponse"))

(smithy/sdk/shapes:define-list batch-delete-workload-estimate-usage-entries
                               :member resource-id)

(smithy/sdk/shapes:define-structure batch-delete-workload-estimate-usage-error
                                    common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "id")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorMessage")
                                     (error-code :target-type
                                      workload-estimate-update-usage-error-code
                                      :member-name "errorCode"))
                                    (:shape-name
                                     "BatchDeleteWorkloadEstimateUsageError"))

(smithy/sdk/shapes:define-list batch-delete-workload-estimate-usage-errors
                               :member
                               batch-delete-workload-estimate-usage-error)

(smithy/sdk/shapes:define-input batch-delete-workload-estimate-usage-request
                                common-lisp:nil
                                ((workload-estimate-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "workloadEstimateId")
                                 (ids :target-type
                                  batch-delete-workload-estimate-usage-entries
                                  :required common-lisp:t :member-name "ids"))
                                (:shape-name
                                 "BatchDeleteWorkloadEstimateUsageRequest"))

(smithy/sdk/shapes:define-output batch-delete-workload-estimate-usage-response
                                 common-lisp:nil
                                 ((errors :target-type
                                   batch-delete-workload-estimate-usage-errors
                                   :member-name "errors"))
                                 (:shape-name
                                  "BatchDeleteWorkloadEstimateUsageResponse"))

(smithy/sdk/shapes:define-list
 batch-update-bill-scenario-commitment-modification-entries :member
 batch-update-bill-scenario-commitment-modification-entry)

(smithy/sdk/shapes:define-structure
 batch-update-bill-scenario-commitment-modification-entry common-lisp:nil
 ((id :target-type resource-id :required common-lisp:t :member-name "id")
  (group :target-type usage-group :member-name "group"))
 (:shape-name "BatchUpdateBillScenarioCommitmentModificationEntry"))

(smithy/sdk/shapes:define-structure
 batch-update-bill-scenario-commitment-modification-error common-lisp:nil
 ((id :target-type resource-id :member-name "id")
  (error-code :target-type
   batch-update-bill-scenario-commitment-modification-error-code :member-name
   "errorCode")
  (error-message :target-type smithy/sdk/smithy-types:string :member-name
   "errorMessage"))
 (:shape-name "BatchUpdateBillScenarioCommitmentModificationError"))

(smithy/sdk/shapes:define-enum batch-update-bill-scenario-commitment-modification-error-code
    common-lisp:nil
  (:bad-request "BAD_REQUEST")
  (:not-found "NOT_FOUND")
  (:conflict "CONFLICT")
  (:internal-server-error "INTERNAL_SERVER_ERROR"))

(smithy/sdk/shapes:define-list
 batch-update-bill-scenario-commitment-modification-errors :member
 batch-update-bill-scenario-commitment-modification-error)

(smithy/sdk/shapes:define-input
 batch-update-bill-scenario-commitment-modification-request common-lisp:nil
 ((bill-scenario-id :target-type resource-id :required common-lisp:t
   :member-name "billScenarioId")
  (commitment-modifications :target-type
   batch-update-bill-scenario-commitment-modification-entries :required
   common-lisp:t :member-name "commitmentModifications"))
 (:shape-name "BatchUpdateBillScenarioCommitmentModificationRequest"))

(smithy/sdk/shapes:define-output
 batch-update-bill-scenario-commitment-modification-response common-lisp:nil
 ((items :target-type bill-scenario-commitment-modification-items :member-name
   "items")
  (errors :target-type
   batch-update-bill-scenario-commitment-modification-errors :member-name
   "errors"))
 (:shape-name "BatchUpdateBillScenarioCommitmentModificationResponse"))

(smithy/sdk/shapes:define-list
 batch-update-bill-scenario-usage-modification-entries :member
 batch-update-bill-scenario-usage-modification-entry)

(smithy/sdk/shapes:define-structure
 batch-update-bill-scenario-usage-modification-entry common-lisp:nil
 ((id :target-type resource-id :required common-lisp:t :member-name "id")
  (group :target-type usage-group :member-name "group")
  (amounts :target-type usage-amounts :member-name "amounts"))
 (:shape-name "BatchUpdateBillScenarioUsageModificationEntry"))

(smithy/sdk/shapes:define-structure
 batch-update-bill-scenario-usage-modification-error common-lisp:nil
 ((id :target-type resource-id :member-name "id")
  (error-message :target-type smithy/sdk/smithy-types:string :member-name
   "errorMessage")
  (error-code :target-type
   batch-update-bill-scenario-usage-modification-error-code :member-name
   "errorCode"))
 (:shape-name "BatchUpdateBillScenarioUsageModificationError"))

(smithy/sdk/shapes:define-enum batch-update-bill-scenario-usage-modification-error-code
    common-lisp:nil
  (:bad-request "BAD_REQUEST")
  (:not-found "NOT_FOUND")
  (:conflict "CONFLICT")
  (:internal-server-error "INTERNAL_SERVER_ERROR"))

(smithy/sdk/shapes:define-list
 batch-update-bill-scenario-usage-modification-errors :member
 batch-update-bill-scenario-usage-modification-error)

(smithy/sdk/shapes:define-input
 batch-update-bill-scenario-usage-modification-request common-lisp:nil
 ((bill-scenario-id :target-type resource-id :required common-lisp:t
   :member-name "billScenarioId")
  (usage-modifications :target-type
   batch-update-bill-scenario-usage-modification-entries :required
   common-lisp:t :member-name "usageModifications"))
 (:shape-name "BatchUpdateBillScenarioUsageModificationRequest"))

(smithy/sdk/shapes:define-output
 batch-update-bill-scenario-usage-modification-response common-lisp:nil
 ((items :target-type bill-scenario-usage-modification-items :member-name
   "items")
  (errors :target-type batch-update-bill-scenario-usage-modification-errors
   :member-name "errors"))
 (:shape-name "BatchUpdateBillScenarioUsageModificationResponse"))

(smithy/sdk/shapes:define-list batch-update-workload-estimate-usage-entries
                               :member
                               batch-update-workload-estimate-usage-entry)

(smithy/sdk/shapes:define-structure batch-update-workload-estimate-usage-entry
                                    common-lisp:nil
                                    ((id :target-type resource-id :required
                                      common-lisp:t :member-name "id")
                                     (group :target-type usage-group
                                      :member-name "group")
                                     (amount :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "amount"))
                                    (:shape-name
                                     "BatchUpdateWorkloadEstimateUsageEntry"))

(smithy/sdk/shapes:define-structure batch-update-workload-estimate-usage-error
                                    common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "id")
                                     (error-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "errorMessage")
                                     (error-code :target-type
                                      workload-estimate-update-usage-error-code
                                      :member-name "errorCode"))
                                    (:shape-name
                                     "BatchUpdateWorkloadEstimateUsageError"))

(smithy/sdk/shapes:define-list batch-update-workload-estimate-usage-errors
                               :member
                               batch-update-workload-estimate-usage-error)

(smithy/sdk/shapes:define-input batch-update-workload-estimate-usage-request
                                common-lisp:nil
                                ((workload-estimate-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "workloadEstimateId")
                                 (usage :target-type
                                  batch-update-workload-estimate-usage-entries
                                  :required common-lisp:t :member-name
                                  "usage"))
                                (:shape-name
                                 "BatchUpdateWorkloadEstimateUsageRequest"))

(smithy/sdk/shapes:define-output batch-update-workload-estimate-usage-response
                                 common-lisp:nil
                                 ((items :target-type
                                   workload-estimate-usage-items :member-name
                                   "items")
                                  (errors :target-type
                                   batch-update-workload-estimate-usage-errors
                                   :member-name "errors"))
                                 (:shape-name
                                  "BatchUpdateWorkloadEstimateUsageResponse"))

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-list bill-estimate-commitment-summaries :member
                               bill-estimate-commitment-summary)

(smithy/sdk/shapes:define-structure bill-estimate-commitment-summary
                                    common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "id")
                                     (purchase-agreement-type :target-type
                                      purchase-agreement-type :member-name
                                      "purchaseAgreementType")
                                     (offering-id :target-type uuid
                                      :member-name "offeringId")
                                     (usage-account-id :target-type account-id
                                      :member-name "usageAccountId")
                                     (region :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "region")
                                     (term-length :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "termLength")
                                     (payment-option :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "paymentOption")
                                     (upfront-payment :target-type cost-amount
                                      :member-name "upfrontPayment")
                                     (monthly-payment :target-type cost-amount
                                      :member-name "monthlyPayment"))
                                    (:shape-name
                                     "BillEstimateCommitmentSummary"))

(smithy/sdk/shapes:define-structure bill-estimate-cost-summary common-lisp:nil
                                    ((total-cost-difference :target-type
                                      cost-difference :member-name
                                      "totalCostDifference")
                                     (service-cost-differences :target-type
                                      service-cost-difference-map :member-name
                                      "serviceCostDifferences"))
                                    (:shape-name "BillEstimateCostSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-list
 bill-estimate-input-commitment-modification-summaries :member
 bill-estimate-input-commitment-modification-summary)

(smithy/sdk/shapes:define-structure
 bill-estimate-input-commitment-modification-summary common-lisp:nil
 ((id :target-type resource-id :member-name "id")
  (group :target-type usage-group :member-name "group")
  (usage-account-id :target-type account-id :member-name "usageAccountId")
  (commitment-action :target-type bill-scenario-commitment-modification-action
   :member-name "commitmentAction"))
 (:shape-name "BillEstimateInputCommitmentModificationSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-list bill-estimate-input-usage-modification-summaries
                               :member
                               bill-estimate-input-usage-modification-summary)

(smithy/sdk/shapes:define-structure
 bill-estimate-input-usage-modification-summary common-lisp:nil
 ((service-code :target-type service-code :required common-lisp:t :member-name
   "serviceCode")
  (usage-type :target-type usage-type :required common-lisp:t :member-name
   "usageType")
  (operation :target-type operation :required common-lisp:t :member-name
   "operation")
  (location :target-type smithy/sdk/smithy-types:string :member-name
   "location")
  (availability-zone :target-type availability-zone :member-name
   "availabilityZone")
  (id :target-type resource-id :member-name "id")
  (group :target-type usage-group :member-name "group")
  (usage-account-id :target-type account-id :member-name "usageAccountId")
  (quantities :target-type usage-quantities :member-name "quantities")
  (historical-usage :target-type historical-usage-entity :member-name
   "historicalUsage"))
 (:shape-name "BillEstimateInputUsageModificationSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-list bill-estimate-line-item-summaries :member
                               bill-estimate-line-item-summary)

(smithy/sdk/shapes:define-structure bill-estimate-line-item-summary
                                    common-lisp:nil
                                    ((service-code :target-type service-code
                                      :required common-lisp:t :member-name
                                      "serviceCode")
                                     (usage-type :target-type usage-type
                                      :required common-lisp:t :member-name
                                      "usageType")
                                     (operation :target-type operation
                                      :required common-lisp:t :member-name
                                      "operation")
                                     (location :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "location")
                                     (availability-zone :target-type
                                      availability-zone :member-name
                                      "availabilityZone")
                                     (id :target-type resource-id :member-name
                                      "id")
                                     (line-item-id :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "lineItemId")
                                     (line-item-type :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "lineItemType")
                                     (payer-account-id :target-type account-id
                                      :member-name "payerAccountId")
                                     (usage-account-id :target-type account-id
                                      :member-name "usageAccountId")
                                     (estimated-usage-quantity :target-type
                                      usage-quantity-result :member-name
                                      "estimatedUsageQuantity")
                                     (estimated-cost :target-type cost-amount
                                      :member-name "estimatedCost")
                                     (historical-usage-quantity :target-type
                                      usage-quantity-result :member-name
                                      "historicalUsageQuantity")
                                     (historical-cost :target-type cost-amount
                                      :member-name "historicalCost")
                                     (savings-plan-arns :target-type
                                      savings-plan-arns :member-name
                                      "savingsPlanArns"))
                                    (:shape-name "BillEstimateLineItemSummary"))

(smithy/sdk/shapes:define-type bill-estimate-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum bill-estimate-status
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:complete "COMPLETE")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list bill-estimate-summaries :member
                               bill-estimate-summary)

(smithy/sdk/shapes:define-structure bill-estimate-summary common-lisp:nil
                                    ((id :target-type resource-id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type bill-estimate-name
                                      :member-name "name")
                                     (status :target-type bill-estimate-status
                                      :member-name "status")
                                     (bill-interval :target-type bill-interval
                                      :member-name "billInterval")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt")
                                     (expires-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "expiresAt"))
                                    (:shape-name "BillEstimateSummary"))

(smithy/sdk/shapes:define-structure bill-interval common-lisp:nil
                                    ((start :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "start")
                                     (end :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "end"))
                                    (:shape-name "BillInterval"))

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-union bill-scenario-commitment-modification-action
                                common-lisp:nil
                                ((add-reserved-instance-action :target-type
                                  add-reserved-instance-action :member-name
                                  "addReservedInstanceAction")
                                 (add-savings-plan-action :target-type
                                  add-savings-plan-action :member-name
                                  "addSavingsPlanAction")
                                 (negate-reserved-instance-action :target-type
                                  negate-reserved-instance-action :member-name
                                  "negateReservedInstanceAction")
                                 (negate-savings-plan-action :target-type
                                  negate-savings-plan-action :member-name
                                  "negateSavingsPlanAction"))
                                (:shape-name
                                 "BillScenarioCommitmentModificationAction"))

(smithy/sdk/shapes:define-structure bill-scenario-commitment-modification-item
                                    common-lisp:nil
                                    ((id :target-type resource-id :member-name
                                      "id")
                                     (usage-account-id :target-type account-id
                                      :member-name "usageAccountId")
                                     (group :target-type usage-group
                                      :member-name "group")
                                     (commitment-action :target-type
                                      bill-scenario-commitment-modification-action
                                      :member-name "commitmentAction"))
                                    (:shape-name
                                     "BillScenarioCommitmentModificationItem"))

(smithy/sdk/shapes:define-list bill-scenario-commitment-modification-items
                               :member
                               bill-scenario-commitment-modification-item)

(smithy/sdk/shapes:define-type bill-scenario-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum bill-scenario-status
    common-lisp:nil
  (:ready "READY")
  (:locked "LOCKED")
  (:failed "FAILED")
  (:stale "STALE"))

(smithy/sdk/shapes:define-list bill-scenario-summaries :member
                               bill-scenario-summary)

(smithy/sdk/shapes:define-structure bill-scenario-summary common-lisp:nil
                                    ((id :target-type resource-id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type bill-scenario-name
                                      :member-name "name")
                                     (bill-interval :target-type bill-interval
                                      :member-name "billInterval")
                                     (status :target-type bill-scenario-status
                                      :member-name "status")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt")
                                     (expires-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "expiresAt")
                                     (failure-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "failureMessage"))
                                    (:shape-name "BillScenarioSummary"))

common-lisp:nil

(smithy/sdk/shapes:define-structure bill-scenario-usage-modification-item
                                    common-lisp:nil
                                    ((service-code :target-type service-code
                                      :required common-lisp:t :member-name
                                      "serviceCode")
                                     (usage-type :target-type usage-type
                                      :required common-lisp:t :member-name
                                      "usageType")
                                     (operation :target-type operation
                                      :required common-lisp:t :member-name
                                      "operation")
                                     (location :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "location")
                                     (availability-zone :target-type
                                      availability-zone :member-name
                                      "availabilityZone")
                                     (id :target-type resource-id :member-name
                                      "id")
                                     (group :target-type usage-group
                                      :member-name "group")
                                     (usage-account-id :target-type account-id
                                      :member-name "usageAccountId")
                                     (quantities :target-type usage-quantities
                                      :member-name "quantities")
                                     (historical-usage :target-type
                                      historical-usage-entity :member-name
                                      "historicalUsage"))
                                    (:shape-name
                                     "BillScenarioUsageModificationItem"))

(smithy/sdk/shapes:define-list bill-scenario-usage-modification-items :member
                               bill-scenario-usage-modification-item)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-structure cost-amount common-lisp:nil
                                    ((amount :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "amount")
                                     (currency :target-type currency-code
                                      :member-name "currency"))
                                    (:shape-name "CostAmount"))

(smithy/sdk/shapes:define-structure cost-difference common-lisp:nil
                                    ((historical-cost :target-type cost-amount
                                      :member-name "historicalCost")
                                     (estimated-cost :target-type cost-amount
                                      :member-name "estimatedCost"))
                                    (:shape-name "CostDifference"))

(smithy/sdk/shapes:define-input create-bill-estimate-request common-lisp:nil
                                ((bill-scenario-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "billScenarioId")
                                 (name :target-type bill-estimate-name
                                  :required common-lisp:t :member-name "name")
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateBillEstimateRequest"))

(smithy/sdk/shapes:define-output create-bill-estimate-response common-lisp:nil
                                 ((id :target-type resource-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type bill-estimate-name
                                   :member-name "name")
                                  (status :target-type bill-estimate-status
                                   :member-name "status")
                                  (failure-message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "failureMessage")
                                  (bill-interval :target-type bill-interval
                                   :member-name "billInterval")
                                  (cost-summary :target-type
                                   bill-estimate-cost-summary :member-name
                                   "costSummary")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt")
                                  (expires-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "expiresAt"))
                                 (:shape-name "CreateBillEstimateResponse"))

(smithy/sdk/shapes:define-input create-bill-scenario-request common-lisp:nil
                                ((name :target-type bill-scenario-name
                                  :required common-lisp:t :member-name "name")
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateBillScenarioRequest"))

(smithy/sdk/shapes:define-output create-bill-scenario-response common-lisp:nil
                                 ((id :target-type resource-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type bill-scenario-name
                                   :member-name "name")
                                  (bill-interval :target-type bill-interval
                                   :member-name "billInterval")
                                  (status :target-type bill-scenario-status
                                   :member-name "status")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt")
                                  (expires-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "expiresAt")
                                  (failure-message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "failureMessage"))
                                 (:shape-name "CreateBillScenarioResponse"))

(smithy/sdk/shapes:define-input create-workload-estimate-request
                                common-lisp:nil
                                ((name :target-type workload-estimate-name
                                  :required common-lisp:t :member-name "name")
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (rate-type :target-type
                                  workload-estimate-rate-type :member-name
                                  "rateType")
                                 (tags :target-type tags :member-name "tags"))
                                (:shape-name "CreateWorkloadEstimateRequest"))

(smithy/sdk/shapes:define-output create-workload-estimate-response
                                 common-lisp:nil
                                 ((id :target-type resource-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type workload-estimate-name
                                   :member-name "name")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt")
                                  (expires-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "expiresAt")
                                  (rate-type :target-type
                                   workload-estimate-rate-type :member-name
                                   "rateType")
                                  (rate-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "rateTimestamp")
                                  (status :target-type workload-estimate-status
                                   :member-name "status")
                                  (total-cost :target-type
                                   smithy/sdk/smithy-types:double :member-name
                                   "totalCost")
                                  (cost-currency :target-type currency-code
                                   :member-name "costCurrency")
                                  (failure-message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "failureMessage"))
                                 (:shape-name "CreateWorkloadEstimateResponse"))

(smithy/sdk/shapes:define-enum currency-code
    common-lisp:nil
  (:usd "USD"))

(smithy/sdk/shapes:define-error data-unavailable-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "DataUnavailableException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input delete-bill-estimate-request common-lisp:nil
                                ((identifier :target-type resource-id :required
                                  common-lisp:t :member-name "identifier"))
                                (:shape-name "DeleteBillEstimateRequest"))

(smithy/sdk/shapes:define-output delete-bill-estimate-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteBillEstimateResponse"))

(smithy/sdk/shapes:define-input delete-bill-scenario-request common-lisp:nil
                                ((identifier :target-type resource-id :required
                                  common-lisp:t :member-name "identifier"))
                                (:shape-name "DeleteBillScenarioRequest"))

(smithy/sdk/shapes:define-output delete-bill-scenario-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteBillScenarioResponse"))

(smithy/sdk/shapes:define-input delete-workload-estimate-request
                                common-lisp:nil
                                ((identifier :target-type resource-id :required
                                  common-lisp:t :member-name "identifier"))
                                (:shape-name "DeleteWorkloadEstimateRequest"))

(smithy/sdk/shapes:define-output delete-workload-estimate-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteWorkloadEstimateResponse"))

(smithy/sdk/shapes:define-structure expression common-lisp:nil
                                    ((and :target-type expression-list
                                      :member-name "and")
                                     (or :target-type expression-list
                                      :member-name "or")
                                     (not :target-type expression :member-name
                                      "not")
                                     (cost-categories :target-type
                                      expression-filter :member-name
                                      "costCategories")
                                     (dimensions :target-type expression-filter
                                      :member-name "dimensions")
                                     (tags :target-type expression-filter
                                      :member-name "tags"))
                                    (:shape-name "Expression"))

(smithy/sdk/shapes:define-structure expression-filter common-lisp:nil
                                    ((key :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "key")
                                     (match-options :target-type string-list
                                      :member-name "matchOptions")
                                     (values :target-type string-list
                                      :member-name "values"))
                                    (:shape-name "ExpressionFilter"))

(smithy/sdk/shapes:define-list expression-list :member expression)

(smithy/sdk/shapes:define-structure filter-timestamp common-lisp:nil
                                    ((after-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "afterTimestamp")
                                     (before-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "beforeTimestamp"))
                                    (:shape-name "FilterTimestamp"))

(smithy/sdk/shapes:define-input get-bill-estimate-request common-lisp:nil
                                ((identifier :target-type resource-id :required
                                  common-lisp:t :member-name "identifier"))
                                (:shape-name "GetBillEstimateRequest"))

(smithy/sdk/shapes:define-output get-bill-estimate-response common-lisp:nil
                                 ((id :target-type resource-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type bill-estimate-name
                                   :member-name "name")
                                  (status :target-type bill-estimate-status
                                   :member-name "status")
                                  (failure-message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "failureMessage")
                                  (bill-interval :target-type bill-interval
                                   :member-name "billInterval")
                                  (cost-summary :target-type
                                   bill-estimate-cost-summary :member-name
                                   "costSummary")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt")
                                  (expires-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "expiresAt"))
                                 (:shape-name "GetBillEstimateResponse"))

(smithy/sdk/shapes:define-input get-bill-scenario-request common-lisp:nil
                                ((identifier :target-type resource-id :required
                                  common-lisp:t :member-name "identifier"))
                                (:shape-name "GetBillScenarioRequest"))

(smithy/sdk/shapes:define-output get-bill-scenario-response common-lisp:nil
                                 ((id :target-type resource-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type bill-scenario-name
                                   :member-name "name")
                                  (bill-interval :target-type bill-interval
                                   :member-name "billInterval")
                                  (status :target-type bill-scenario-status
                                   :member-name "status")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt")
                                  (expires-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "expiresAt")
                                  (failure-message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "failureMessage"))
                                 (:shape-name "GetBillScenarioResponse"))

(smithy/sdk/shapes:define-input get-preferences-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetPreferencesRequest"))

(smithy/sdk/shapes:define-output get-preferences-response common-lisp:nil
                                 ((management-account-rate-type-selections
                                   :target-type rate-types :member-name
                                   "managementAccountRateTypeSelections")
                                  (member-account-rate-type-selections
                                   :target-type rate-types :member-name
                                   "memberAccountRateTypeSelections")
                                  (standalone-account-rate-type-selections
                                   :target-type rate-types :member-name
                                   "standaloneAccountRateTypeSelections"))
                                 (:shape-name "GetPreferencesResponse"))

(smithy/sdk/shapes:define-input get-workload-estimate-request common-lisp:nil
                                ((identifier :target-type resource-id :required
                                  common-lisp:t :member-name "identifier"))
                                (:shape-name "GetWorkloadEstimateRequest"))

(smithy/sdk/shapes:define-output get-workload-estimate-response common-lisp:nil
                                 ((id :target-type resource-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type workload-estimate-name
                                   :member-name "name")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt")
                                  (expires-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "expiresAt")
                                  (rate-type :target-type
                                   workload-estimate-rate-type :member-name
                                   "rateType")
                                  (rate-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "rateTimestamp")
                                  (status :target-type workload-estimate-status
                                   :member-name "status")
                                  (total-cost :target-type
                                   smithy/sdk/smithy-types:double :member-name
                                   "totalCost")
                                  (cost-currency :target-type currency-code
                                   :member-name "costCurrency")
                                  (failure-message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "failureMessage"))
                                 (:shape-name "GetWorkloadEstimateResponse"))

(smithy/sdk/shapes:define-structure historical-usage-entity common-lisp:nil
                                    ((service-code :target-type service-code
                                      :required common-lisp:t :member-name
                                      "serviceCode")
                                     (usage-type :target-type usage-type
                                      :required common-lisp:t :member-name
                                      "usageType")
                                     (operation :target-type operation
                                      :required common-lisp:t :member-name
                                      "operation")
                                     (location :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "location")
                                     (usage-account-id :target-type account-id
                                      :required common-lisp:t :member-name
                                      "usageAccountId")
                                     (bill-interval :target-type bill-interval
                                      :required common-lisp:t :member-name
                                      "billInterval")
                                     (filter-expression :target-type expression
                                      :required common-lisp:t :member-name
                                      "filterExpression"))
                                    (:shape-name "HistoricalUsageEntity"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-bill-estimate-commitments-request
                                common-lisp:nil
                                ((bill-estimate-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "billEstimateId")
                                 (next-token :target-type next-page-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "ListBillEstimateCommitmentsRequest"))

(smithy/sdk/shapes:define-output list-bill-estimate-commitments-response
                                 common-lisp:nil
                                 ((items :target-type
                                   bill-estimate-commitment-summaries
                                   :member-name "items")
                                  (next-token :target-type next-page-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListBillEstimateCommitmentsResponse"))

(smithy/sdk/shapes:define-input
 list-bill-estimate-input-commitment-modifications-request common-lisp:nil
 ((bill-estimate-id :target-type resource-id :required common-lisp:t
   :member-name "billEstimateId")
  (next-token :target-type next-page-token :member-name "nextToken")
  (max-results :target-type max-results :member-name "maxResults"))
 (:shape-name "ListBillEstimateInputCommitmentModificationsRequest"))

(smithy/sdk/shapes:define-output
 list-bill-estimate-input-commitment-modifications-response common-lisp:nil
 ((items :target-type bill-estimate-input-commitment-modification-summaries
   :member-name "items")
  (next-token :target-type next-page-token :member-name "nextToken"))
 (:shape-name "ListBillEstimateInputCommitmentModificationsResponse"))

(smithy/sdk/shapes:define-input
 list-bill-estimate-input-usage-modifications-request common-lisp:nil
 ((bill-estimate-id :target-type resource-id :required common-lisp:t
   :member-name "billEstimateId")
  (filters :target-type list-usage-filters :member-name "filters")
  (next-token :target-type next-page-token :member-name "nextToken")
  (max-results :target-type max-results :member-name "maxResults"))
 (:shape-name "ListBillEstimateInputUsageModificationsRequest"))

(smithy/sdk/shapes:define-output
 list-bill-estimate-input-usage-modifications-response common-lisp:nil
 ((items :target-type bill-estimate-input-usage-modification-summaries
   :member-name "items")
  (next-token :target-type next-page-token :member-name "nextToken"))
 (:shape-name "ListBillEstimateInputUsageModificationsResponse"))

(smithy/sdk/shapes:define-structure list-bill-estimate-line-items-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      list-bill-estimate-line-items-filter-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (values :target-type
                                      list-bill-estimate-line-items-filter-values
                                      :required common-lisp:t :member-name
                                      "values")
                                     (match-option :target-type match-option
                                      :member-name "matchOption"))
                                    (:shape-name
                                     "ListBillEstimateLineItemsFilter"))

(smithy/sdk/shapes:define-enum list-bill-estimate-line-items-filter-name
    common-lisp:nil
  (:usage-account-id "USAGE_ACCOUNT_ID")
  (:service-code "SERVICE_CODE")
  (:usage-type "USAGE_TYPE")
  (:operation "OPERATION")
  (:location "LOCATION")
  (:line-item-type "LINE_ITEM_TYPE"))

(smithy/sdk/shapes:define-list list-bill-estimate-line-items-filter-values
                               :member smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list list-bill-estimate-line-items-filters :member
                               list-bill-estimate-line-items-filter)

(smithy/sdk/shapes:define-input list-bill-estimate-line-items-request
                                common-lisp:nil
                                ((bill-estimate-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "billEstimateId")
                                 (filters :target-type
                                  list-bill-estimate-line-items-filters
                                  :member-name "filters")
                                 (next-token :target-type next-page-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "ListBillEstimateLineItemsRequest"))

(smithy/sdk/shapes:define-output list-bill-estimate-line-items-response
                                 common-lisp:nil
                                 ((items :target-type
                                   bill-estimate-line-item-summaries
                                   :member-name "items")
                                  (next-token :target-type next-page-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListBillEstimateLineItemsResponse"))

(smithy/sdk/shapes:define-structure list-bill-estimates-filter common-lisp:nil
                                    ((name :target-type
                                      list-bill-estimates-filter-name :required
                                      common-lisp:t :member-name "name")
                                     (values :target-type
                                      list-bill-estimates-filter-values
                                      :required common-lisp:t :member-name
                                      "values")
                                     (match-option :target-type match-option
                                      :member-name "matchOption"))
                                    (:shape-name "ListBillEstimatesFilter"))

(smithy/sdk/shapes:define-enum list-bill-estimates-filter-name
    common-lisp:nil
  (:status "STATUS")
  (:name "NAME"))

(smithy/sdk/shapes:define-list list-bill-estimates-filter-values :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list list-bill-estimates-filters :member
                               list-bill-estimates-filter)

(smithy/sdk/shapes:define-input list-bill-estimates-request common-lisp:nil
                                ((filters :target-type
                                  list-bill-estimates-filters :member-name
                                  "filters")
                                 (created-at-filter :target-type
                                  filter-timestamp :member-name
                                  "createdAtFilter")
                                 (expires-at-filter :target-type
                                  filter-timestamp :member-name
                                  "expiresAtFilter")
                                 (next-token :target-type next-page-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListBillEstimatesRequest"))

(smithy/sdk/shapes:define-output list-bill-estimates-response common-lisp:nil
                                 ((items :target-type bill-estimate-summaries
                                   :member-name "items")
                                  (next-token :target-type next-page-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListBillEstimatesResponse"))

(smithy/sdk/shapes:define-input
 list-bill-scenario-commitment-modifications-request common-lisp:nil
 ((bill-scenario-id :target-type resource-id :required common-lisp:t
   :member-name "billScenarioId")
  (next-token :target-type next-page-token :member-name "nextToken")
  (max-results :target-type max-results :member-name "maxResults"))
 (:shape-name "ListBillScenarioCommitmentModificationsRequest"))

(smithy/sdk/shapes:define-output
 list-bill-scenario-commitment-modifications-response common-lisp:nil
 ((items :target-type bill-scenario-commitment-modification-items :member-name
   "items")
  (next-token :target-type next-page-token :member-name "nextToken"))
 (:shape-name "ListBillScenarioCommitmentModificationsResponse"))

(smithy/sdk/shapes:define-input list-bill-scenario-usage-modifications-request
                                common-lisp:nil
                                ((bill-scenario-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "billScenarioId")
                                 (filters :target-type list-usage-filters
                                  :member-name "filters")
                                 (next-token :target-type next-page-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "ListBillScenarioUsageModificationsRequest"))

(smithy/sdk/shapes:define-output
 list-bill-scenario-usage-modifications-response common-lisp:nil
 ((items :target-type bill-scenario-usage-modification-items :member-name
   "items")
  (next-token :target-type next-page-token :member-name "nextToken"))
 (:shape-name "ListBillScenarioUsageModificationsResponse"))

(smithy/sdk/shapes:define-structure list-bill-scenarios-filter common-lisp:nil
                                    ((name :target-type
                                      list-bill-scenarios-filter-name :required
                                      common-lisp:t :member-name "name")
                                     (values :target-type
                                      list-bill-scenarios-filter-values
                                      :required common-lisp:t :member-name
                                      "values")
                                     (match-option :target-type match-option
                                      :member-name "matchOption"))
                                    (:shape-name "ListBillScenariosFilter"))

(smithy/sdk/shapes:define-enum list-bill-scenarios-filter-name
    common-lisp:nil
  (:status "STATUS")
  (:name "NAME"))

(smithy/sdk/shapes:define-list list-bill-scenarios-filter-values :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list list-bill-scenarios-filters :member
                               list-bill-scenarios-filter)

(smithy/sdk/shapes:define-input list-bill-scenarios-request common-lisp:nil
                                ((filters :target-type
                                  list-bill-scenarios-filters :member-name
                                  "filters")
                                 (created-at-filter :target-type
                                  filter-timestamp :member-name
                                  "createdAtFilter")
                                 (expires-at-filter :target-type
                                  filter-timestamp :member-name
                                  "expiresAtFilter")
                                 (next-token :target-type next-page-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListBillScenariosRequest"))

(smithy/sdk/shapes:define-output list-bill-scenarios-response common-lisp:nil
                                 ((items :target-type bill-scenario-summaries
                                   :member-name "items")
                                  (next-token :target-type next-page-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListBillScenariosResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "arn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tags :member-name "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure list-usage-filter common-lisp:nil
                                    ((name :target-type list-usage-filter-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (values :target-type
                                      list-usage-filter-values :required
                                      common-lisp:t :member-name "values")
                                     (match-option :target-type match-option
                                      :member-name "matchOption"))
                                    (:shape-name "ListUsageFilter"))

(smithy/sdk/shapes:define-enum list-usage-filter-name
    common-lisp:nil
  (:usage-account-id "USAGE_ACCOUNT_ID")
  (:service-code "SERVICE_CODE")
  (:usage-type "USAGE_TYPE")
  (:operation "OPERATION")
  (:location "LOCATION")
  (:usage-group "USAGE_GROUP")
  (:historical-usage-account-id "HISTORICAL_USAGE_ACCOUNT_ID")
  (:historical-service-code "HISTORICAL_SERVICE_CODE")
  (:historical-usage-type "HISTORICAL_USAGE_TYPE")
  (:historical-operation "HISTORICAL_OPERATION")
  (:historical-location "HISTORICAL_LOCATION"))

(smithy/sdk/shapes:define-list list-usage-filter-values :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list list-usage-filters :member list-usage-filter)

(smithy/sdk/shapes:define-input list-workload-estimate-usage-request
                                common-lisp:nil
                                ((workload-estimate-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "workloadEstimateId")
                                 (filters :target-type list-usage-filters
                                  :member-name "filters")
                                 (next-token :target-type next-page-token
                                  :member-name "nextToken")
                                 (max-results :target-type
                                  workload-estimate-usage-max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "ListWorkloadEstimateUsageRequest"))

(smithy/sdk/shapes:define-output list-workload-estimate-usage-response
                                 common-lisp:nil
                                 ((items :target-type
                                   workload-estimate-usage-items :member-name
                                   "items")
                                  (next-token :target-type next-page-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListWorkloadEstimateUsageResponse"))

(smithy/sdk/shapes:define-structure list-workload-estimates-filter
                                    common-lisp:nil
                                    ((name :target-type
                                      list-workload-estimates-filter-name
                                      :required common-lisp:t :member-name
                                      "name")
                                     (values :target-type
                                      list-workload-estimates-filter-values
                                      :required common-lisp:t :member-name
                                      "values")
                                     (match-option :target-type match-option
                                      :member-name "matchOption"))
                                    (:shape-name "ListWorkloadEstimatesFilter"))

(smithy/sdk/shapes:define-enum list-workload-estimates-filter-name
    common-lisp:nil
  (:status "STATUS")
  (:name "NAME"))

(smithy/sdk/shapes:define-list list-workload-estimates-filter-values :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list list-workload-estimates-filters :member
                               list-workload-estimates-filter)

(smithy/sdk/shapes:define-input list-workload-estimates-request common-lisp:nil
                                ((created-at-filter :target-type
                                  filter-timestamp :member-name
                                  "createdAtFilter")
                                 (expires-at-filter :target-type
                                  filter-timestamp :member-name
                                  "expiresAtFilter")
                                 (filters :target-type
                                  list-workload-estimates-filters :member-name
                                  "filters")
                                 (next-token :target-type next-page-token
                                  :member-name "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name "ListWorkloadEstimatesRequest"))

(smithy/sdk/shapes:define-output list-workload-estimates-response
                                 common-lisp:nil
                                 ((items :target-type
                                   workload-estimate-summaries :member-name
                                   "items")
                                  (next-token :target-type next-page-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListWorkloadEstimatesResponse"))

(smithy/sdk/shapes:define-enum match-option
    common-lisp:nil
  (:equals "EQUALS")
  (:starts-with "STARTS_WITH")
  (:contains "CONTAINS"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure negate-reserved-instance-action
                                    common-lisp:nil
                                    ((reserved-instances-id :target-type uuid
                                      :member-name "reservedInstancesId"))
                                    (:shape-name
                                     "NegateReservedInstanceAction"))

(smithy/sdk/shapes:define-structure negate-savings-plan-action common-lisp:nil
                                    ((savings-plan-id :target-type uuid
                                      :member-name "savingsPlanId"))
                                    (:shape-name "NegateSavingsPlanAction"))

(smithy/sdk/shapes:define-type next-page-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type operation smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum purchase-agreement-type
    common-lisp:nil
  (:savings-plans "SAVINGS_PLANS")
  (:reserved-instance "RESERVED_INSTANCE"))

(smithy/sdk/shapes:define-enum rate-type
    common-lisp:nil
  (:before-discounts "BEFORE_DISCOUNTS")
  (:after-discounts "AFTER_DISCOUNTS")
  (:after-discounts-and-commitments "AFTER_DISCOUNTS_AND_COMMITMENTS"))

(smithy/sdk/shapes:define-list rate-types :member rate-type)

(smithy/sdk/shapes:define-type reserved-instance-instance-count
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type resource-tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-tag-keys :member resource-tag-key)

(smithy/sdk/shapes:define-type resource-tag-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list savings-plan-arns :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type savings-plan-commitment
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type service-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map service-cost-difference-map :key
                              smithy/sdk/smithy-types:string :value
                              cost-difference)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceId")
                                 (resource-type :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "resourceType")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-list string-list :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "arn")
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-map tags :key resource-tag-key :value
                              resource-tag-value)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (service-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "serviceCode")
                                 (quota-code :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "quotaCode")
                                 (retry-after-seconds :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "retryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((arn :target-type arn :required common-lisp:t
                                  :member-name "arn")
                                 (tag-keys :target-type resource-tag-keys
                                  :required common-lisp:t :member-name
                                  "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-bill-estimate-request common-lisp:nil
                                ((identifier :target-type resource-id :required
                                  common-lisp:t :member-name "identifier")
                                 (name :target-type bill-estimate-name
                                  :member-name "name")
                                 (expires-at :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "expiresAt"))
                                (:shape-name "UpdateBillEstimateRequest"))

(smithy/sdk/shapes:define-output update-bill-estimate-response common-lisp:nil
                                 ((id :target-type resource-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type bill-estimate-name
                                   :member-name "name")
                                  (status :target-type bill-estimate-status
                                   :member-name "status")
                                  (failure-message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "failureMessage")
                                  (bill-interval :target-type bill-interval
                                   :member-name "billInterval")
                                  (cost-summary :target-type
                                   bill-estimate-cost-summary :member-name
                                   "costSummary")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt")
                                  (expires-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "expiresAt"))
                                 (:shape-name "UpdateBillEstimateResponse"))

(smithy/sdk/shapes:define-input update-bill-scenario-request common-lisp:nil
                                ((identifier :target-type resource-id :required
                                  common-lisp:t :member-name "identifier")
                                 (name :target-type bill-scenario-name
                                  :member-name "name")
                                 (expires-at :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "expiresAt"))
                                (:shape-name "UpdateBillScenarioRequest"))

(smithy/sdk/shapes:define-output update-bill-scenario-response common-lisp:nil
                                 ((id :target-type resource-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type bill-scenario-name
                                   :member-name "name")
                                  (bill-interval :target-type bill-interval
                                   :member-name "billInterval")
                                  (status :target-type bill-scenario-status
                                   :member-name "status")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt")
                                  (expires-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "expiresAt")
                                  (failure-message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "failureMessage"))
                                 (:shape-name "UpdateBillScenarioResponse"))

(smithy/sdk/shapes:define-input update-preferences-request common-lisp:nil
                                ((management-account-rate-type-selections
                                  :target-type rate-types :member-name
                                  "managementAccountRateTypeSelections")
                                 (member-account-rate-type-selections
                                  :target-type rate-types :member-name
                                  "memberAccountRateTypeSelections")
                                 (standalone-account-rate-type-selections
                                  :target-type rate-types :member-name
                                  "standaloneAccountRateTypeSelections"))
                                (:shape-name "UpdatePreferencesRequest"))

(smithy/sdk/shapes:define-output update-preferences-response common-lisp:nil
                                 ((management-account-rate-type-selections
                                   :target-type rate-types :member-name
                                   "managementAccountRateTypeSelections")
                                  (member-account-rate-type-selections
                                   :target-type rate-types :member-name
                                   "memberAccountRateTypeSelections")
                                  (standalone-account-rate-type-selections
                                   :target-type rate-types :member-name
                                   "standaloneAccountRateTypeSelections"))
                                 (:shape-name "UpdatePreferencesResponse"))

(smithy/sdk/shapes:define-input update-workload-estimate-request
                                common-lisp:nil
                                ((identifier :target-type resource-id :required
                                  common-lisp:t :member-name "identifier")
                                 (name :target-type workload-estimate-name
                                  :member-name "name")
                                 (expires-at :target-type
                                  smithy/sdk/smithy-types:timestamp
                                  :member-name "expiresAt"))
                                (:shape-name "UpdateWorkloadEstimateRequest"))

(smithy/sdk/shapes:define-output update-workload-estimate-response
                                 common-lisp:nil
                                 ((id :target-type resource-id :required
                                   common-lisp:t :member-name "id")
                                  (name :target-type workload-estimate-name
                                   :member-name "name")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt")
                                  (expires-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "expiresAt")
                                  (rate-type :target-type
                                   workload-estimate-rate-type :member-name
                                   "rateType")
                                  (rate-timestamp :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "rateTimestamp")
                                  (status :target-type workload-estimate-status
                                   :member-name "status")
                                  (total-cost :target-type
                                   smithy/sdk/smithy-types:double :member-name
                                   "totalCost")
                                  (cost-currency :target-type currency-code
                                   :member-name "costCurrency")
                                  (failure-message :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "failureMessage"))
                                 (:shape-name "UpdateWorkloadEstimateResponse"))

(smithy/sdk/shapes:define-structure usage-amount common-lisp:nil
                                    ((start-hour :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "startHour")
                                     (amount :target-type
                                      smithy/sdk/smithy-types:double :required
                                      common-lisp:t :member-name "amount"))
                                    (:shape-name "UsageAmount"))

(smithy/sdk/shapes:define-list usage-amounts :member usage-amount)

(smithy/sdk/shapes:define-type usage-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list usage-quantities :member usage-quantity)

(smithy/sdk/shapes:define-structure usage-quantity common-lisp:nil
                                    ((start-hour :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "startHour")
                                     (unit :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "unit")
                                     (amount :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "amount"))
                                    (:shape-name "UsageQuantity"))

(smithy/sdk/shapes:define-structure usage-quantity-result common-lisp:nil
                                    ((amount :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "amount")
                                     (unit :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "unit"))
                                    (:shape-name "UsageQuantityResult"))

(smithy/sdk/shapes:define-type usage-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type uuid smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
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

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:unknown-operation "unknownOperation")
  (:cannot-parse "cannotParse")
  (:field-validation-failed "fieldValidationFailed")
  (:invalid-request-from-member "invalidRequestFromMember")
  (:disallowed-rate "disallowedRate")
  (:other "other"))

common-lisp:nil

(smithy/sdk/shapes:define-enum workload-estimate-cost-status
    common-lisp:nil
  (:valid "VALID")
  (:invalid "INVALID")
  (:stale "STALE"))

(smithy/sdk/shapes:define-type workload-estimate-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum workload-estimate-rate-type
    common-lisp:nil
  (:before-discounts "BEFORE_DISCOUNTS")
  (:after-discounts "AFTER_DISCOUNTS")
  (:after-discounts-and-commitments "AFTER_DISCOUNTS_AND_COMMITMENTS"))

(smithy/sdk/shapes:define-enum workload-estimate-status
    common-lisp:nil
  (:updating "UPDATING")
  (:valid "VALID")
  (:invalid "INVALID")
  (:action-needed "ACTION_NEEDED"))

(smithy/sdk/shapes:define-list workload-estimate-summaries :member
                               workload-estimate-summary)

(smithy/sdk/shapes:define-structure workload-estimate-summary common-lisp:nil
                                    ((id :target-type resource-id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type workload-estimate-name
                                      :member-name "name")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt")
                                     (expires-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "expiresAt")
                                     (rate-type :target-type
                                      workload-estimate-rate-type :member-name
                                      "rateType")
                                     (rate-timestamp :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "rateTimestamp")
                                     (status :target-type
                                      workload-estimate-status :member-name
                                      "status")
                                     (total-cost :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "totalCost")
                                     (cost-currency :target-type currency-code
                                      :member-name "costCurrency")
                                     (failure-message :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "failureMessage"))
                                    (:shape-name "WorkloadEstimateSummary"))

(smithy/sdk/shapes:define-enum workload-estimate-update-usage-error-code
    common-lisp:nil
  (:bad-request "BAD_REQUEST")
  (:not-found "NOT_FOUND")
  (:conflict "CONFLICT")
  (:internal-server-error "INTERNAL_SERVER_ERROR"))

common-lisp:nil

(smithy/sdk/shapes:define-structure workload-estimate-usage-item
                                    common-lisp:nil
                                    ((service-code :target-type service-code
                                      :required common-lisp:t :member-name
                                      "serviceCode")
                                     (usage-type :target-type usage-type
                                      :required common-lisp:t :member-name
                                      "usageType")
                                     (operation :target-type operation
                                      :required common-lisp:t :member-name
                                      "operation")
                                     (location :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "location")
                                     (id :target-type resource-id :member-name
                                      "id")
                                     (usage-account-id :target-type account-id
                                      :member-name "usageAccountId")
                                     (group :target-type usage-group
                                      :member-name "group")
                                     (quantity :target-type
                                      workload-estimate-usage-quantity
                                      :member-name "quantity")
                                     (cost :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "cost")
                                     (currency :target-type currency-code
                                      :member-name "currency")
                                     (status :target-type
                                      workload-estimate-cost-status
                                      :member-name "status")
                                     (historical-usage :target-type
                                      historical-usage-entity :member-name
                                      "historicalUsage"))
                                    (:shape-name "WorkloadEstimateUsageItem"))

(smithy/sdk/shapes:define-list workload-estimate-usage-items :member
                               workload-estimate-usage-item)

(smithy/sdk/shapes:define-type workload-estimate-usage-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure workload-estimate-usage-quantity
                                    common-lisp:nil
                                    ((unit :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "unit")
                                     (amount :target-type
                                      smithy/sdk/smithy-types:double
                                      :member-name "amount"))
                                    (:shape-name
                                     "WorkloadEstimateUsageQuantity"))

(smithy/sdk/operation:define-operation
 batch-create-bill-scenario-commitment-modification :shape-name
 "BatchCreateBillScenarioCommitmentModification" :input
 batch-create-bill-scenario-commitment-modification-request :output
 batch-create-bill-scenario-commitment-modification-response :errors
 (conflict-exception data-unavailable-exception resource-not-found-exception))

(smithy/sdk/operation:define-operation
 batch-create-bill-scenario-usage-modification :shape-name
 "BatchCreateBillScenarioUsageModification" :input
 batch-create-bill-scenario-usage-modification-request :output
 batch-create-bill-scenario-usage-modification-response :errors
 (conflict-exception data-unavailable-exception resource-not-found-exception
  service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation batch-create-workload-estimate-usage
                                       :shape-name
                                       "BatchCreateWorkloadEstimateUsage"
                                       :input
                                       batch-create-workload-estimate-usage-request
                                       :output
                                       batch-create-workload-estimate-usage-response
                                       :errors
                                       (conflict-exception
                                        data-unavailable-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation
 batch-delete-bill-scenario-commitment-modification :shape-name
 "BatchDeleteBillScenarioCommitmentModification" :input
 batch-delete-bill-scenario-commitment-modification-request :output
 batch-delete-bill-scenario-commitment-modification-response :errors
 (conflict-exception data-unavailable-exception resource-not-found-exception))

(smithy/sdk/operation:define-operation
 batch-delete-bill-scenario-usage-modification :shape-name
 "BatchDeleteBillScenarioUsageModification" :input
 batch-delete-bill-scenario-usage-modification-request :output
 batch-delete-bill-scenario-usage-modification-response :errors
 (conflict-exception data-unavailable-exception resource-not-found-exception
  service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation batch-delete-workload-estimate-usage
                                       :shape-name
                                       "BatchDeleteWorkloadEstimateUsage"
                                       :input
                                       batch-delete-workload-estimate-usage-request
                                       :output
                                       batch-delete-workload-estimate-usage-response
                                       :errors
                                       (data-unavailable-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation
 batch-update-bill-scenario-commitment-modification :shape-name
 "BatchUpdateBillScenarioCommitmentModification" :input
 batch-update-bill-scenario-commitment-modification-request :output
 batch-update-bill-scenario-commitment-modification-response :errors
 (conflict-exception data-unavailable-exception resource-not-found-exception))

(smithy/sdk/operation:define-operation
 batch-update-bill-scenario-usage-modification :shape-name
 "BatchUpdateBillScenarioUsageModification" :input
 batch-update-bill-scenario-usage-modification-request :output
 batch-update-bill-scenario-usage-modification-response :errors
 (conflict-exception data-unavailable-exception resource-not-found-exception
  service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation batch-update-workload-estimate-usage
                                       :shape-name
                                       "BatchUpdateWorkloadEstimateUsage"
                                       :input
                                       batch-update-workload-estimate-usage-request
                                       :output
                                       batch-update-workload-estimate-usage-response
                                       :errors
                                       (data-unavailable-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation create-bill-estimate :shape-name
                                       "CreateBillEstimate" :input
                                       create-bill-estimate-request :output
                                       create-bill-estimate-response :errors
                                       (conflict-exception
                                        data-unavailable-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation create-bill-scenario :shape-name
                                       "CreateBillScenario" :input
                                       create-bill-scenario-request :output
                                       create-bill-scenario-response :errors
                                       (conflict-exception
                                        data-unavailable-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation create-workload-estimate :shape-name
                                       "CreateWorkloadEstimate" :input
                                       create-workload-estimate-request :output
                                       create-workload-estimate-response
                                       :errors
                                       (conflict-exception
                                        data-unavailable-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation delete-bill-estimate :shape-name
                                       "DeleteBillEstimate" :input
                                       delete-bill-estimate-request :output
                                       delete-bill-estimate-response :errors
                                       (conflict-exception
                                        data-unavailable-exception))

(smithy/sdk/operation:define-operation delete-bill-scenario :shape-name
                                       "DeleteBillScenario" :input
                                       delete-bill-scenario-request :output
                                       delete-bill-scenario-response :errors
                                       (conflict-exception
                                        data-unavailable-exception))

(smithy/sdk/operation:define-operation delete-workload-estimate :shape-name
                                       "DeleteWorkloadEstimate" :input
                                       delete-workload-estimate-request :output
                                       delete-workload-estimate-response
                                       :errors (data-unavailable-exception))

(smithy/sdk/operation:define-operation get-bill-estimate :shape-name
                                       "GetBillEstimate" :input
                                       get-bill-estimate-request :output
                                       get-bill-estimate-response :errors
                                       (data-unavailable-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-bill-scenario :shape-name
                                       "GetBillScenario" :input
                                       get-bill-scenario-request :output
                                       get-bill-scenario-response :errors
                                       (data-unavailable-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation get-preferences :shape-name
                                       "GetPreferences" :input
                                       get-preferences-request :output
                                       get-preferences-response :errors
                                       (data-unavailable-exception))

(smithy/sdk/operation:define-operation get-workload-estimate :shape-name
                                       "GetWorkloadEstimate" :input
                                       get-workload-estimate-request :output
                                       get-workload-estimate-response :errors
                                       (data-unavailable-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-bill-estimate-commitments
                                       :shape-name
                                       "ListBillEstimateCommitments" :input
                                       list-bill-estimate-commitments-request
                                       :output
                                       list-bill-estimate-commitments-response
                                       :errors
                                       (data-unavailable-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation
 list-bill-estimate-input-commitment-modifications :shape-name
 "ListBillEstimateInputCommitmentModifications" :input
 list-bill-estimate-input-commitment-modifications-request :output
 list-bill-estimate-input-commitment-modifications-response :errors
 (data-unavailable-exception resource-not-found-exception))

(smithy/sdk/operation:define-operation
 list-bill-estimate-input-usage-modifications :shape-name
 "ListBillEstimateInputUsageModifications" :input
 list-bill-estimate-input-usage-modifications-request :output
 list-bill-estimate-input-usage-modifications-response :errors
 (data-unavailable-exception resource-not-found-exception))

(smithy/sdk/operation:define-operation list-bill-estimate-line-items
                                       :shape-name "ListBillEstimateLineItems"
                                       :input
                                       list-bill-estimate-line-items-request
                                       :output
                                       list-bill-estimate-line-items-response
                                       :errors
                                       (data-unavailable-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-bill-estimates :shape-name
                                       "ListBillEstimates" :input
                                       list-bill-estimates-request :output
                                       list-bill-estimates-response :errors
                                       (data-unavailable-exception))

(smithy/sdk/operation:define-operation
 list-bill-scenario-commitment-modifications :shape-name
 "ListBillScenarioCommitmentModifications" :input
 list-bill-scenario-commitment-modifications-request :output
 list-bill-scenario-commitment-modifications-response :errors
 (data-unavailable-exception resource-not-found-exception))

(smithy/sdk/operation:define-operation list-bill-scenario-usage-modifications
                                       :shape-name
                                       "ListBillScenarioUsageModifications"
                                       :input
                                       list-bill-scenario-usage-modifications-request
                                       :output
                                       list-bill-scenario-usage-modifications-response
                                       :errors
                                       (data-unavailable-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-bill-scenarios :shape-name
                                       "ListBillScenarios" :input
                                       list-bill-scenarios-request :output
                                       list-bill-scenarios-response :errors
                                       (data-unavailable-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation list-workload-estimate-usage :shape-name
                                       "ListWorkloadEstimateUsage" :input
                                       list-workload-estimate-usage-request
                                       :output
                                       list-workload-estimate-usage-response
                                       :errors
                                       (data-unavailable-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation list-workload-estimates :shape-name
                                       "ListWorkloadEstimates" :input
                                       list-workload-estimates-request :output
                                       list-workload-estimates-response :errors
                                       (data-unavailable-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (resource-not-found-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (resource-not-found-exception))

(smithy/sdk/operation:define-operation update-bill-estimate :shape-name
                                       "UpdateBillEstimate" :input
                                       update-bill-estimate-request :output
                                       update-bill-estimate-response :errors
                                       (conflict-exception
                                        data-unavailable-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-bill-scenario :shape-name
                                       "UpdateBillScenario" :input
                                       update-bill-scenario-request :output
                                       update-bill-scenario-response :errors
                                       (conflict-exception
                                        data-unavailable-exception
                                        resource-not-found-exception))

(smithy/sdk/operation:define-operation update-preferences :shape-name
                                       "UpdatePreferences" :input
                                       update-preferences-request :output
                                       update-preferences-response :errors
                                       (data-unavailable-exception
                                        service-quota-exceeded-exception))

(smithy/sdk/operation:define-operation update-workload-estimate :shape-name
                                       "UpdateWorkloadEstimate" :input
                                       update-workload-estimate-request :output
                                       update-workload-estimate-response
                                       :errors
                                       (conflict-exception
                                        data-unavailable-exception
                                        resource-not-found-exception))
