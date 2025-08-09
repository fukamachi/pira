(uiop/package:define-package #:pira/billingconductor (:use)
                             (:export #:awsbilling-conductor #:awscost
                              #:account-associations-list
                              #:account-associations-list-element
                              #:account-email #:account-grouping #:account-id
                              #:account-id-filter-list #:account-id-list
                              #:account-name #:arn #:associate-accounts
                              #:associate-accounts-input
                              #:associate-accounts-output
                              #:associate-pricing-rules
                              #:associate-pricing-rules-input
                              #:associate-pricing-rules-output
                              #:associate-resource-error
                              #:associate-resource-error-reason
                              #:associate-resource-response-element
                              #:associate-resources-response-list #:association
                              #:attribute #:attributes-list
                              #:batch-associate-resources-to-custom-line-item
                              #:batch-associate-resources-to-custom-line-item-input
                              #:batch-associate-resources-to-custom-line-item-output
                              #:batch-disassociate-resources-from-custom-line-item
                              #:batch-disassociate-resources-from-custom-line-item-input
                              #:batch-disassociate-resources-from-custom-line-item-output
                              #:billing-entity #:billing-group
                              #:billing-group-arn #:billing-group-arn-list
                              #:billing-group-cost-report-element
                              #:billing-group-cost-report-list
                              #:billing-group-cost-report-result-element
                              #:billing-group-cost-report-results-list
                              #:billing-group-description
                              #:billing-group-full-arn #:billing-group-list
                              #:billing-group-list-element #:billing-group-name
                              #:billing-group-status
                              #:billing-group-status-list
                              #:billing-group-status-reason #:billing-period
                              #:billing-period-range #:client-token
                              #:computation-preference
                              #:conflict-exception-reason
                              #:create-billing-group
                              #:create-billing-group-input
                              #:create-billing-group-output
                              #:create-custom-line-item
                              #:create-custom-line-item-input
                              #:create-custom-line-item-output
                              #:create-free-tier-config #:create-pricing-plan
                              #:create-pricing-plan-input
                              #:create-pricing-plan-output
                              #:create-pricing-rule #:create-pricing-rule-input
                              #:create-pricing-rule-output
                              #:create-tiering-input #:currency #:currency-code
                              #:custom-line-item #:custom-line-item-arn
                              #:custom-line-item-arns
                              #:custom-line-item-association-element
                              #:custom-line-item-associations-list
                              #:custom-line-item-batch-associations-list
                              #:custom-line-item-batch-disassociations-list
                              #:custom-line-item-billing-period-range
                              #:custom-line-item-charge-details
                              #:custom-line-item-charge-value
                              #:custom-line-item-description
                              #:custom-line-item-flat-charge-details
                              #:custom-line-item-list
                              #:custom-line-item-list-element
                              #:custom-line-item-name
                              #:custom-line-item-name-list
                              #:custom-line-item-percentage-charge-details
                              #:custom-line-item-percentage-charge-value
                              #:custom-line-item-product-code
                              #:custom-line-item-relationship
                              #:custom-line-item-type
                              #:custom-line-item-version-list
                              #:custom-line-item-version-list-element
                              #:delete-billing-group
                              #:delete-billing-group-input
                              #:delete-billing-group-output
                              #:delete-custom-line-item
                              #:delete-custom-line-item-input
                              #:delete-custom-line-item-output
                              #:delete-pricing-plan #:delete-pricing-plan-input
                              #:delete-pricing-plan-output
                              #:delete-pricing-rule #:delete-pricing-rule-input
                              #:delete-pricing-rule-output
                              #:disassociate-accounts
                              #:disassociate-accounts-input
                              #:disassociate-accounts-output
                              #:disassociate-pricing-rules
                              #:disassociate-pricing-rules-input
                              #:disassociate-pricing-rules-output
                              #:disassociate-resource-response-element
                              #:disassociate-resources-response-list
                              #:free-tier-config
                              #:get-billing-group-cost-report
                              #:group-by-attribute-name
                              #:group-by-attributes-list #:instant
                              #:line-item-filter
                              #:line-item-filter-attribute-name
                              #:line-item-filter-value
                              #:line-item-filter-values-list
                              #:line-item-filters-list
                              #:list-account-associations
                              #:list-account-associations-filter
                              #:list-account-associations-input
                              #:list-account-associations-output
                              #:list-billing-group-account-grouping
                              #:list-billing-group-cost-reports
                              #:list-billing-group-cost-reports-filter
                              #:list-billing-group-cost-reports-input
                              #:list-billing-group-cost-reports-output
                              #:list-billing-groups
                              #:list-billing-groups-filter
                              #:list-billing-groups-input
                              #:list-billing-groups-output
                              #:list-custom-line-item-charge-details
                              #:list-custom-line-item-flat-charge-details
                              #:list-custom-line-item-percentage-charge-details
                              #:list-custom-line-item-versions
                              #:list-custom-line-item-versions-billing-period-range-filter
                              #:list-custom-line-item-versions-filter
                              #:list-custom-line-item-versions-input
                              #:list-custom-line-item-versions-output
                              #:list-custom-line-items
                              #:list-custom-line-items-filter
                              #:list-custom-line-items-input
                              #:list-custom-line-items-output
                              #:list-pricing-plans
                              #:list-pricing-plans-associated-with-pricing-rule
                              #:list-pricing-plans-associated-with-pricing-rule-input
                              #:list-pricing-plans-associated-with-pricing-rule-output
                              #:list-pricing-plans-filter
                              #:list-pricing-plans-input
                              #:list-pricing-plans-output #:list-pricing-rules
                              #:list-pricing-rules-associated-to-pricing-plan
                              #:list-pricing-rules-associated-to-pricing-plan-input
                              #:list-pricing-rules-associated-to-pricing-plan-output
                              #:list-pricing-rules-filter
                              #:list-pricing-rules-input
                              #:list-pricing-rules-output
                              #:list-resources-associated-to-custom-line-item
                              #:list-resources-associated-to-custom-line-item-filter
                              #:list-resources-associated-to-custom-line-item-input
                              #:list-resources-associated-to-custom-line-item-output
                              #:list-resources-associated-to-custom-line-item-response-element
                              #:list-resources-associated-to-custom-line-item-response-list
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response #:margin
                              #:margin-percentage #:match-option
                              #:max-billing-group-cost-report-results
                              #:max-billing-group-results
                              #:max-custom-line-item-results
                              #:max-pricing-plan-results
                              #:max-pricing-rule-results #:modifier-percentage
                              #:number-of-accounts
                              #:number-of-associated-pricing-rules
                              #:number-of-associations
                              #:number-of-pricing-plans-associated-with
                              #:operation #:pricing-plan #:pricing-plan-arn
                              #:pricing-plan-arns #:pricing-plan-description
                              #:pricing-plan-full-arn #:pricing-plan-list
                              #:pricing-plan-list-element #:pricing-plan-name
                              #:pricing-rule #:pricing-rule-arn
                              #:pricing-rule-arns #:pricing-rule-arns-input
                              #:pricing-rule-arns-non-empty-input
                              #:pricing-rule-description #:pricing-rule-list
                              #:pricing-rule-list-element #:pricing-rule-name
                              #:pricing-rule-scope #:pricing-rule-type
                              #:proforma-cost #:retry-after-seconds #:service
                              #:string #:tag-key #:tag-key-list #:tag-map
                              #:tag-resource #:tag-resource-request
                              #:tag-resource-response #:tag-value #:tiering
                              #:tiering-activated #:token #:untag-resource
                              #:untag-resource-request
                              #:untag-resource-response #:update-billing-group
                              #:update-billing-group-account-grouping
                              #:update-billing-group-input
                              #:update-billing-group-output
                              #:update-custom-line-item
                              #:update-custom-line-item-charge-details
                              #:update-custom-line-item-flat-charge-details
                              #:update-custom-line-item-input
                              #:update-custom-line-item-output
                              #:update-custom-line-item-percentage-charge-details
                              #:update-free-tier-config #:update-pricing-plan
                              #:update-pricing-plan-input
                              #:update-pricing-plan-output
                              #:update-pricing-rule #:update-pricing-rule-input
                              #:update-pricing-rule-output
                              #:update-tiering-input #:usage-type
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason))
(common-lisp:in-package #:pira/billingconductor)

(smithy/sdk/service:define-service awsbilling-conductor :shape-name
                                   "AWSBillingConductor" :version "2021-07-30"
                                   :title "AWSBillingConductor" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "billingconductor")
                                      ("arnNamespace" . "billingconductor"))
                                     ("aws.auth#sigv4"
                                      ("name" . "billingconductor"))
                                     ("aws.iam#defineConditionKeys"
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access based on the tags associated with the resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag"))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access based on the tags that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag"))
                                      ("aws:TagKeys" ("type" . "String")
                                       ("documentation"
                                        . "Filters access based on the tag keys that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys")))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type awscost smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-list account-associations-list :member
                               account-associations-list-element)

(smithy/sdk/shapes:define-structure account-associations-list-element
                                    common-lisp:nil
                                    ((account-id :target-type account-id
                                      :member-name "AccountId")
                                     (billing-group-arn :target-type
                                      billing-group-arn :member-name
                                      "BillingGroupArn")
                                     (account-name :target-type account-name
                                      :member-name "AccountName")
                                     (account-email :target-type account-email
                                      :member-name "AccountEmail"))
                                    (:shape-name
                                     "AccountAssociationsListElement"))

(smithy/sdk/shapes:define-type account-email smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure account-grouping common-lisp:nil
                                    ((linked-account-ids :target-type
                                      account-id-list :required common-lisp:t
                                      :member-name "LinkedAccountIds")
                                     (auto-associate :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AutoAssociate"))
                                    (:shape-name "AccountGrouping"))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list account-id-filter-list :member account-id)

(smithy/sdk/shapes:define-list account-id-list :member account-id)

(smithy/sdk/shapes:define-type account-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure associate-accounts-input common-lisp:nil
                                    ((arn :target-type billing-group-arn
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (account-ids :target-type account-id-list
                                      :required common-lisp:t :member-name
                                      "AccountIds"))
                                    (:shape-name "AssociateAccountsInput"))

(smithy/sdk/shapes:define-structure associate-accounts-output common-lisp:nil
                                    ((arn :target-type billing-group-arn
                                      :member-name "Arn"))
                                    (:shape-name "AssociateAccountsOutput"))

(smithy/sdk/shapes:define-structure associate-pricing-rules-input
                                    common-lisp:nil
                                    ((arn :target-type pricing-plan-arn
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (pricing-rule-arns :target-type
                                      pricing-rule-arns-non-empty-input
                                      :required common-lisp:t :member-name
                                      "PricingRuleArns"))
                                    (:shape-name "AssociatePricingRulesInput"))

(smithy/sdk/shapes:define-structure associate-pricing-rules-output
                                    common-lisp:nil
                                    ((arn :target-type pricing-plan-arn
                                      :member-name "Arn"))
                                    (:shape-name "AssociatePricingRulesOutput"))

(smithy/sdk/shapes:define-structure associate-resource-error common-lisp:nil
                                    ((message :target-type string :member-name
                                      "Message")
                                     (reason :target-type
                                      associate-resource-error-reason
                                      :member-name "Reason"))
                                    (:shape-name "AssociateResourceError"))

(smithy/sdk/shapes:define-type associate-resource-error-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure associate-resource-response-element
                                    common-lisp:nil
                                    ((arn :target-type
                                      custom-line-item-association-element
                                      :member-name "Arn")
                                     (error :target-type
                                      associate-resource-error :member-name
                                      "Error"))
                                    (:shape-name
                                     "AssociateResourceResponseElement"))

(smithy/sdk/shapes:define-list associate-resources-response-list :member
                               associate-resource-response-element)

(smithy/sdk/shapes:define-type association smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure attribute common-lisp:nil
                                    ((key :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Key")
                                     (value :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "Value"))
                                    (:shape-name "Attribute"))

(smithy/sdk/shapes:define-list attributes-list :member attribute)

(smithy/sdk/shapes:define-structure
 batch-associate-resources-to-custom-line-item-input common-lisp:nil
 ((target-arn :target-type custom-line-item-arn :required common-lisp:t
   :member-name "TargetArn")
  (resource-arns :target-type custom-line-item-batch-associations-list
   :required common-lisp:t :member-name "ResourceArns")
  (billing-period-range :target-type custom-line-item-billing-period-range
   :member-name "BillingPeriodRange"))
 (:shape-name "BatchAssociateResourcesToCustomLineItemInput"))

(smithy/sdk/shapes:define-structure
 batch-associate-resources-to-custom-line-item-output common-lisp:nil
 ((successfully-associated-resources :target-type
   associate-resources-response-list :member-name
   "SuccessfullyAssociatedResources")
  (failed-associated-resources :target-type associate-resources-response-list
   :member-name "FailedAssociatedResources"))
 (:shape-name "BatchAssociateResourcesToCustomLineItemOutput"))

(smithy/sdk/shapes:define-structure
 batch-disassociate-resources-from-custom-line-item-input common-lisp:nil
 ((target-arn :target-type custom-line-item-arn :required common-lisp:t
   :member-name "TargetArn")
  (resource-arns :target-type custom-line-item-batch-disassociations-list
   :required common-lisp:t :member-name "ResourceArns")
  (billing-period-range :target-type custom-line-item-billing-period-range
   :member-name "BillingPeriodRange"))
 (:shape-name "BatchDisassociateResourcesFromCustomLineItemInput"))

(smithy/sdk/shapes:define-structure
 batch-disassociate-resources-from-custom-line-item-output common-lisp:nil
 ((successfully-disassociated-resources :target-type
   disassociate-resources-response-list :member-name
   "SuccessfullyDisassociatedResources")
  (failed-disassociated-resources :target-type
   disassociate-resources-response-list :member-name
   "FailedDisassociatedResources"))
 (:shape-name "BatchDisassociateResourcesFromCustomLineItemOutput"))

(smithy/sdk/shapes:define-type billing-entity smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type billing-group-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list billing-group-arn-list :member billing-group-arn)

(smithy/sdk/shapes:define-structure billing-group-cost-report-element
                                    common-lisp:nil
                                    ((arn :target-type billing-group-arn
                                      :member-name "Arn")
                                     (awscost :target-type awscost :member-name
                                      "AWSCost")
                                     (proforma-cost :target-type proforma-cost
                                      :member-name "ProformaCost")
                                     (margin :target-type margin :member-name
                                      "Margin")
                                     (margin-percentage :target-type
                                      margin-percentage :member-name
                                      "MarginPercentage")
                                     (currency :target-type currency
                                      :member-name "Currency"))
                                    (:shape-name
                                     "BillingGroupCostReportElement"))

(smithy/sdk/shapes:define-list billing-group-cost-report-list :member
                               billing-group-cost-report-element)

(smithy/sdk/shapes:define-structure billing-group-cost-report-result-element
                                    common-lisp:nil
                                    ((arn :target-type billing-group-arn
                                      :member-name "Arn")
                                     (awscost :target-type awscost :member-name
                                      "AWSCost")
                                     (proforma-cost :target-type proforma-cost
                                      :member-name "ProformaCost")
                                     (margin :target-type margin :member-name
                                      "Margin")
                                     (margin-percentage :target-type
                                      margin-percentage :member-name
                                      "MarginPercentage")
                                     (currency :target-type currency
                                      :member-name "Currency")
                                     (attributes :target-type attributes-list
                                      :member-name "Attributes"))
                                    (:shape-name
                                     "BillingGroupCostReportResultElement"))

(smithy/sdk/shapes:define-list billing-group-cost-report-results-list :member
                               billing-group-cost-report-result-element)

(smithy/sdk/shapes:define-type billing-group-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type billing-group-full-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list billing-group-list :member
                               billing-group-list-element)

(smithy/sdk/shapes:define-structure billing-group-list-element common-lisp:nil
                                    ((name :target-type billing-group-name
                                      :member-name "Name")
                                     (arn :target-type billing-group-arn
                                      :member-name "Arn")
                                     (description :target-type
                                      billing-group-description :member-name
                                      "Description")
                                     (primary-account-id :target-type
                                      account-id :member-name
                                      "PrimaryAccountId")
                                     (computation-preference :target-type
                                      computation-preference :member-name
                                      "ComputationPreference")
                                     (size :target-type number-of-accounts
                                      :member-name "Size")
                                     (creation-time :target-type instant
                                      :member-name "CreationTime")
                                     (last-modified-time :target-type instant
                                      :member-name "LastModifiedTime")
                                     (status :target-type billing-group-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      billing-group-status-reason :member-name
                                      "StatusReason")
                                     (account-grouping :target-type
                                      list-billing-group-account-grouping
                                      :member-name "AccountGrouping"))
                                    (:shape-name "BillingGroupListElement"))

(smithy/sdk/shapes:define-type billing-group-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type billing-group-status
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list billing-group-status-list :member
                               billing-group-status)

(smithy/sdk/shapes:define-type billing-group-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type billing-period smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure billing-period-range common-lisp:nil
                                    ((inclusive-start-billing-period
                                      :target-type billing-period :required
                                      common-lisp:t :member-name
                                      "InclusiveStartBillingPeriod")
                                     (exclusive-end-billing-period :target-type
                                      billing-period :required common-lisp:t
                                      :member-name
                                      "ExclusiveEndBillingPeriod"))
                                    (:shape-name "BillingPeriodRange"))

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure computation-preference common-lisp:nil
                                    ((pricing-plan-arn :target-type
                                      pricing-plan-full-arn :required
                                      common-lisp:t :member-name
                                      "PricingPlanArn"))
                                    (:shape-name "ComputationPreference"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "ResourceType")
                                 (reason :target-type conflict-exception-reason
                                  :member-name "Reason"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type conflict-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure create-billing-group-input common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "ClientToken" :http-header
                                      "X-Amzn-Client-Token")
                                     (name :target-type billing-group-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (account-grouping :target-type
                                      account-grouping :required common-lisp:t
                                      :member-name "AccountGrouping")
                                     (computation-preference :target-type
                                      computation-preference :required
                                      common-lisp:t :member-name
                                      "ComputationPreference")
                                     (primary-account-id :target-type
                                      account-id :member-name
                                      "PrimaryAccountId")
                                     (description :target-type
                                      billing-group-description :member-name
                                      "Description")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "CreateBillingGroupInput"))

(smithy/sdk/shapes:define-structure create-billing-group-output common-lisp:nil
                                    ((arn :target-type billing-group-arn
                                      :member-name "Arn"))
                                    (:shape-name "CreateBillingGroupOutput"))

(smithy/sdk/shapes:define-structure create-custom-line-item-input
                                    common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "ClientToken" :http-header
                                      "X-Amzn-Client-Token")
                                     (name :target-type custom-line-item-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (description :target-type
                                      custom-line-item-description :required
                                      common-lisp:t :member-name "Description")
                                     (billing-group-arn :target-type
                                      billing-group-arn :required common-lisp:t
                                      :member-name "BillingGroupArn")
                                     (billing-period-range :target-type
                                      custom-line-item-billing-period-range
                                      :member-name "BillingPeriodRange")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (charge-details :target-type
                                      custom-line-item-charge-details :required
                                      common-lisp:t :member-name
                                      "ChargeDetails")
                                     (account-id :target-type account-id
                                      :member-name "AccountId"))
                                    (:shape-name "CreateCustomLineItemInput"))

(smithy/sdk/shapes:define-structure create-custom-line-item-output
                                    common-lisp:nil
                                    ((arn :target-type custom-line-item-arn
                                      :member-name "Arn"))
                                    (:shape-name "CreateCustomLineItemOutput"))

(smithy/sdk/shapes:define-structure create-free-tier-config common-lisp:nil
                                    ((activated :target-type tiering-activated
                                      :required common-lisp:t :member-name
                                      "Activated"))
                                    (:shape-name "CreateFreeTierConfig"))

(smithy/sdk/shapes:define-structure create-pricing-plan-input common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "ClientToken" :http-header
                                      "X-Amzn-Client-Token")
                                     (name :target-type pricing-plan-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (description :target-type
                                      pricing-plan-description :member-name
                                      "Description")
                                     (pricing-rule-arns :target-type
                                      pricing-rule-arns-input :member-name
                                      "PricingRuleArns")
                                     (tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "CreatePricingPlanInput"))

(smithy/sdk/shapes:define-structure create-pricing-plan-output common-lisp:nil
                                    ((arn :target-type pricing-plan-arn
                                      :member-name "Arn"))
                                    (:shape-name "CreatePricingPlanOutput"))

(smithy/sdk/shapes:define-structure create-pricing-rule-input common-lisp:nil
                                    ((client-token :target-type client-token
                                      :member-name "ClientToken" :http-header
                                      "X-Amzn-Client-Token")
                                     (name :target-type pricing-rule-name
                                      :required common-lisp:t :member-name
                                      "Name")
                                     (description :target-type
                                      pricing-rule-description :member-name
                                      "Description")
                                     (scope :target-type pricing-rule-scope
                                      :required common-lisp:t :member-name
                                      "Scope")
                                     (type :target-type pricing-rule-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (modifier-percentage :target-type
                                      modifier-percentage :member-name
                                      "ModifierPercentage")
                                     (service :target-type service :member-name
                                      "Service")
                                     (tags :target-type tag-map :member-name
                                      "Tags")
                                     (billing-entity :target-type
                                      billing-entity :member-name
                                      "BillingEntity")
                                     (tiering :target-type create-tiering-input
                                      :member-name "Tiering")
                                     (usage-type :target-type usage-type
                                      :member-name "UsageType")
                                     (operation :target-type operation
                                      :member-name "Operation"))
                                    (:shape-name "CreatePricingRuleInput"))

(smithy/sdk/shapes:define-structure create-pricing-rule-output common-lisp:nil
                                    ((arn :target-type pricing-rule-arn
                                      :member-name "Arn"))
                                    (:shape-name "CreatePricingRuleOutput"))

(smithy/sdk/shapes:define-structure create-tiering-input common-lisp:nil
                                    ((free-tier :target-type
                                      create-free-tier-config :required
                                      common-lisp:t :member-name "FreeTier"))
                                    (:shape-name "CreateTieringInput"))

(smithy/sdk/shapes:define-type currency smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type currency-code smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type custom-line-item-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list custom-line-item-arns :member
                               custom-line-item-arn)

(smithy/sdk/shapes:define-type custom-line-item-association-element
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list custom-line-item-associations-list :member
                               custom-line-item-association-element)

(smithy/sdk/shapes:define-list custom-line-item-batch-associations-list :member
                               custom-line-item-association-element)

(smithy/sdk/shapes:define-list custom-line-item-batch-disassociations-list
                               :member custom-line-item-association-element)

(smithy/sdk/shapes:define-structure custom-line-item-billing-period-range
                                    common-lisp:nil
                                    ((inclusive-start-billing-period
                                      :target-type billing-period :required
                                      common-lisp:t :member-name
                                      "InclusiveStartBillingPeriod")
                                     (exclusive-end-billing-period :target-type
                                      billing-period :member-name
                                      "ExclusiveEndBillingPeriod"))
                                    (:shape-name
                                     "CustomLineItemBillingPeriodRange"))

(smithy/sdk/shapes:define-structure custom-line-item-charge-details
                                    common-lisp:nil
                                    ((flat :target-type
                                      custom-line-item-flat-charge-details
                                      :member-name "Flat")
                                     (percentage :target-type
                                      custom-line-item-percentage-charge-details
                                      :member-name "Percentage")
                                     (type :target-type custom-line-item-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (line-item-filters :target-type
                                      line-item-filters-list :member-name
                                      "LineItemFilters"))
                                    (:shape-name "CustomLineItemChargeDetails"))

(smithy/sdk/shapes:define-type custom-line-item-charge-value
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type custom-line-item-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure custom-line-item-flat-charge-details
                                    common-lisp:nil
                                    ((charge-value :target-type
                                      custom-line-item-charge-value :required
                                      common-lisp:t :member-name
                                      "ChargeValue"))
                                    (:shape-name
                                     "CustomLineItemFlatChargeDetails"))

(smithy/sdk/shapes:define-list custom-line-item-list :member
                               custom-line-item-list-element)

(smithy/sdk/shapes:define-structure custom-line-item-list-element
                                    common-lisp:nil
                                    ((arn :target-type custom-line-item-arn
                                      :member-name "Arn")
                                     (name :target-type custom-line-item-name
                                      :member-name "Name")
                                     (charge-details :target-type
                                      list-custom-line-item-charge-details
                                      :member-name "ChargeDetails")
                                     (currency-code :target-type currency-code
                                      :member-name "CurrencyCode")
                                     (description :target-type
                                      custom-line-item-description :member-name
                                      "Description")
                                     (product-code :target-type
                                      custom-line-item-product-code
                                      :member-name "ProductCode")
                                     (billing-group-arn :target-type
                                      billing-group-arn :member-name
                                      "BillingGroupArn")
                                     (creation-time :target-type instant
                                      :member-name "CreationTime")
                                     (last-modified-time :target-type instant
                                      :member-name "LastModifiedTime")
                                     (association-size :target-type
                                      number-of-associations :member-name
                                      "AssociationSize")
                                     (account-id :target-type account-id
                                      :member-name "AccountId"))
                                    (:shape-name "CustomLineItemListElement"))

(smithy/sdk/shapes:define-type custom-line-item-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list custom-line-item-name-list :member
                               custom-line-item-name)

(smithy/sdk/shapes:define-structure custom-line-item-percentage-charge-details
                                    common-lisp:nil
                                    ((percentage-value :target-type
                                      custom-line-item-percentage-charge-value
                                      :required common-lisp:t :member-name
                                      "PercentageValue")
                                     (associated-values :target-type
                                      custom-line-item-associations-list
                                      :member-name "AssociatedValues"))
                                    (:shape-name
                                     "CustomLineItemPercentageChargeDetails"))

(smithy/sdk/shapes:define-type custom-line-item-percentage-charge-value
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type custom-line-item-product-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-line-item-relationship
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-line-item-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list custom-line-item-version-list :member
                               custom-line-item-version-list-element)

(smithy/sdk/shapes:define-structure custom-line-item-version-list-element
                                    common-lisp:nil
                                    ((name :target-type custom-line-item-name
                                      :member-name "Name")
                                     (charge-details :target-type
                                      list-custom-line-item-charge-details
                                      :member-name "ChargeDetails")
                                     (currency-code :target-type currency-code
                                      :member-name "CurrencyCode")
                                     (description :target-type
                                      custom-line-item-description :member-name
                                      "Description")
                                     (product-code :target-type
                                      custom-line-item-product-code
                                      :member-name "ProductCode")
                                     (billing-group-arn :target-type
                                      billing-group-arn :member-name
                                      "BillingGroupArn")
                                     (creation-time :target-type instant
                                      :member-name "CreationTime")
                                     (last-modified-time :target-type instant
                                      :member-name "LastModifiedTime")
                                     (association-size :target-type
                                      number-of-associations :member-name
                                      "AssociationSize")
                                     (start-billing-period :target-type
                                      billing-period :member-name
                                      "StartBillingPeriod")
                                     (end-billing-period :target-type
                                      billing-period :member-name
                                      "EndBillingPeriod")
                                     (arn :target-type custom-line-item-arn
                                      :member-name "Arn")
                                     (start-time :target-type instant
                                      :member-name "StartTime")
                                     (account-id :target-type account-id
                                      :member-name "AccountId"))
                                    (:shape-name
                                     "CustomLineItemVersionListElement"))

(smithy/sdk/shapes:define-structure delete-billing-group-input common-lisp:nil
                                    ((arn :target-type billing-group-arn
                                      :required common-lisp:t :member-name
                                      "Arn"))
                                    (:shape-name "DeleteBillingGroupInput"))

(smithy/sdk/shapes:define-structure delete-billing-group-output common-lisp:nil
                                    ((arn :target-type billing-group-arn
                                      :member-name "Arn"))
                                    (:shape-name "DeleteBillingGroupOutput"))

(smithy/sdk/shapes:define-structure delete-custom-line-item-input
                                    common-lisp:nil
                                    ((arn :target-type custom-line-item-arn
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (billing-period-range :target-type
                                      custom-line-item-billing-period-range
                                      :member-name "BillingPeriodRange"))
                                    (:shape-name "DeleteCustomLineItemInput"))

(smithy/sdk/shapes:define-structure delete-custom-line-item-output
                                    common-lisp:nil
                                    ((arn :target-type custom-line-item-arn
                                      :member-name "Arn"))
                                    (:shape-name "DeleteCustomLineItemOutput"))

(smithy/sdk/shapes:define-structure delete-pricing-plan-input common-lisp:nil
                                    ((arn :target-type pricing-plan-arn
                                      :required common-lisp:t :member-name
                                      "Arn"))
                                    (:shape-name "DeletePricingPlanInput"))

(smithy/sdk/shapes:define-structure delete-pricing-plan-output common-lisp:nil
                                    ((arn :target-type pricing-plan-arn
                                      :member-name "Arn"))
                                    (:shape-name "DeletePricingPlanOutput"))

(smithy/sdk/shapes:define-structure delete-pricing-rule-input common-lisp:nil
                                    ((arn :target-type pricing-rule-arn
                                      :required common-lisp:t :member-name
                                      "Arn"))
                                    (:shape-name "DeletePricingRuleInput"))

(smithy/sdk/shapes:define-structure delete-pricing-rule-output common-lisp:nil
                                    ((arn :target-type pricing-rule-arn
                                      :member-name "Arn"))
                                    (:shape-name "DeletePricingRuleOutput"))

(smithy/sdk/shapes:define-structure disassociate-accounts-input common-lisp:nil
                                    ((arn :target-type billing-group-arn
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (account-ids :target-type account-id-list
                                      :required common-lisp:t :member-name
                                      "AccountIds"))
                                    (:shape-name "DisassociateAccountsInput"))

(smithy/sdk/shapes:define-structure disassociate-accounts-output
                                    common-lisp:nil
                                    ((arn :target-type billing-group-arn
                                      :member-name "Arn"))
                                    (:shape-name "DisassociateAccountsOutput"))

(smithy/sdk/shapes:define-structure disassociate-pricing-rules-input
                                    common-lisp:nil
                                    ((arn :target-type pricing-plan-arn
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (pricing-rule-arns :target-type
                                      pricing-rule-arns-non-empty-input
                                      :required common-lisp:t :member-name
                                      "PricingRuleArns"))
                                    (:shape-name
                                     "DisassociatePricingRulesInput"))

(smithy/sdk/shapes:define-structure disassociate-pricing-rules-output
                                    common-lisp:nil
                                    ((arn :target-type pricing-plan-arn
                                      :member-name "Arn"))
                                    (:shape-name
                                     "DisassociatePricingRulesOutput"))

(smithy/sdk/shapes:define-structure disassociate-resource-response-element
                                    common-lisp:nil
                                    ((arn :target-type
                                      custom-line-item-association-element
                                      :member-name "Arn")
                                     (error :target-type
                                      associate-resource-error :member-name
                                      "Error"))
                                    (:shape-name
                                     "DisassociateResourceResponseElement"))

(smithy/sdk/shapes:define-list disassociate-resources-response-list :member
                               disassociate-resource-response-element)

(smithy/sdk/shapes:define-structure free-tier-config common-lisp:nil
                                    ((activated :target-type tiering-activated
                                      :required common-lisp:t :member-name
                                      "Activated"))
                                    (:shape-name "FreeTierConfig"))

(smithy/sdk/shapes:define-input get-billing-group-cost-report-input
                                common-lisp:nil
                                ((arn :target-type billing-group-arn :required
                                  common-lisp:t :member-name "Arn")
                                 (billing-period-range :target-type
                                  billing-period-range :member-name
                                  "BillingPeriodRange")
                                 (group-by :target-type
                                  group-by-attributes-list :member-name
                                  "GroupBy")
                                 (max-results :target-type
                                  max-billing-group-cost-report-results
                                  :member-name "MaxResults")
                                 (next-token :target-type token :member-name
                                  "NextToken"))
                                (:shape-name "GetBillingGroupCostReportInput"))

(smithy/sdk/shapes:define-output get-billing-group-cost-report-output
                                 common-lisp:nil
                                 ((billing-group-cost-report-results
                                   :target-type
                                   billing-group-cost-report-results-list
                                   :member-name
                                   "BillingGroupCostReportResults")
                                  (next-token :target-type token :member-name
                                   "NextToken"))
                                 (:shape-name
                                  "GetBillingGroupCostReportOutput"))

(smithy/sdk/shapes:define-type group-by-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list group-by-attributes-list :member
                               group-by-attribute-name)

(smithy/sdk/shapes:define-type instant smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-structure line-item-filter common-lisp:nil
                                    ((attribute :target-type
                                      line-item-filter-attribute-name :required
                                      common-lisp:t :member-name "Attribute")
                                     (match-option :target-type match-option
                                      :required common-lisp:t :member-name
                                      "MatchOption")
                                     (values :target-type
                                      line-item-filter-values-list :required
                                      common-lisp:t :member-name "Values"))
                                    (:shape-name "LineItemFilter"))

(smithy/sdk/shapes:define-type line-item-filter-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type line-item-filter-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list line-item-filter-values-list :member
                               line-item-filter-value)

(smithy/sdk/shapes:define-list line-item-filters-list :member line-item-filter)

(smithy/sdk/shapes:define-structure list-account-associations-filter
                                    common-lisp:nil
                                    ((association :target-type association
                                      :member-name "Association")
                                     (account-id :target-type account-id
                                      :member-name "AccountId")
                                     (account-ids :target-type
                                      account-id-filter-list :member-name
                                      "AccountIds"))
                                    (:shape-name
                                     "ListAccountAssociationsFilter"))

(smithy/sdk/shapes:define-structure list-account-associations-input
                                    common-lisp:nil
                                    ((billing-period :target-type
                                      billing-period :member-name
                                      "BillingPeriod")
                                     (filters :target-type
                                      list-account-associations-filter
                                      :member-name "Filters")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListAccountAssociationsInput"))

(smithy/sdk/shapes:define-structure list-account-associations-output
                                    common-lisp:nil
                                    ((linked-accounts :target-type
                                      account-associations-list :member-name
                                      "LinkedAccounts")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListAccountAssociationsOutput"))

(smithy/sdk/shapes:define-structure list-billing-group-account-grouping
                                    common-lisp:nil
                                    ((auto-associate :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AutoAssociate"))
                                    (:shape-name
                                     "ListBillingGroupAccountGrouping"))

(smithy/sdk/shapes:define-structure list-billing-group-cost-reports-filter
                                    common-lisp:nil
                                    ((billing-group-arns :target-type
                                      billing-group-arn-list :member-name
                                      "BillingGroupArns"))
                                    (:shape-name
                                     "ListBillingGroupCostReportsFilter"))

(smithy/sdk/shapes:define-structure list-billing-group-cost-reports-input
                                    common-lisp:nil
                                    ((billing-period :target-type
                                      billing-period :member-name
                                      "BillingPeriod")
                                     (max-results :target-type
                                      max-billing-group-results :member-name
                                      "MaxResults")
                                     (next-token :target-type token
                                      :member-name "NextToken")
                                     (filters :target-type
                                      list-billing-group-cost-reports-filter
                                      :member-name "Filters"))
                                    (:shape-name
                                     "ListBillingGroupCostReportsInput"))

(smithy/sdk/shapes:define-structure list-billing-group-cost-reports-output
                                    common-lisp:nil
                                    ((billing-group-cost-reports :target-type
                                      billing-group-cost-report-list
                                      :member-name "BillingGroupCostReports")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListBillingGroupCostReportsOutput"))

(smithy/sdk/shapes:define-structure list-billing-groups-filter common-lisp:nil
                                    ((arns :target-type billing-group-arn-list
                                      :member-name "Arns")
                                     (pricing-plan :target-type
                                      pricing-plan-full-arn :member-name
                                      "PricingPlan")
                                     (statuses :target-type
                                      billing-group-status-list :member-name
                                      "Statuses")
                                     (auto-associate :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AutoAssociate"))
                                    (:shape-name "ListBillingGroupsFilter"))

(smithy/sdk/shapes:define-structure list-billing-groups-input common-lisp:nil
                                    ((billing-period :target-type
                                      billing-period :member-name
                                      "BillingPeriod")
                                     (max-results :target-type
                                      max-billing-group-results :member-name
                                      "MaxResults")
                                     (next-token :target-type token
                                      :member-name "NextToken")
                                     (filters :target-type
                                      list-billing-groups-filter :member-name
                                      "Filters"))
                                    (:shape-name "ListBillingGroupsInput"))

(smithy/sdk/shapes:define-structure list-billing-groups-output common-lisp:nil
                                    ((billing-groups :target-type
                                      billing-group-list :member-name
                                      "BillingGroups")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name "ListBillingGroupsOutput"))

(smithy/sdk/shapes:define-structure list-custom-line-item-charge-details
                                    common-lisp:nil
                                    ((flat :target-type
                                      list-custom-line-item-flat-charge-details
                                      :member-name "Flat")
                                     (percentage :target-type
                                      list-custom-line-item-percentage-charge-details
                                      :member-name "Percentage")
                                     (type :target-type custom-line-item-type
                                      :required common-lisp:t :member-name
                                      "Type")
                                     (line-item-filters :target-type
                                      line-item-filters-list :member-name
                                      "LineItemFilters"))
                                    (:shape-name
                                     "ListCustomLineItemChargeDetails"))

(smithy/sdk/shapes:define-structure list-custom-line-item-flat-charge-details
                                    common-lisp:nil
                                    ((charge-value :target-type
                                      custom-line-item-charge-value :required
                                      common-lisp:t :member-name
                                      "ChargeValue"))
                                    (:shape-name
                                     "ListCustomLineItemFlatChargeDetails"))

(smithy/sdk/shapes:define-structure
 list-custom-line-item-percentage-charge-details common-lisp:nil
 ((percentage-value :target-type custom-line-item-percentage-charge-value
   :required common-lisp:t :member-name "PercentageValue"))
 (:shape-name "ListCustomLineItemPercentageChargeDetails"))

(smithy/sdk/shapes:define-structure
 list-custom-line-item-versions-billing-period-range-filter common-lisp:nil
 ((start-billing-period :target-type billing-period :member-name
   "StartBillingPeriod")
  (end-billing-period :target-type billing-period :member-name
   "EndBillingPeriod"))
 (:shape-name "ListCustomLineItemVersionsBillingPeriodRangeFilter"))

(smithy/sdk/shapes:define-structure list-custom-line-item-versions-filter
                                    common-lisp:nil
                                    ((billing-period-range :target-type
                                      list-custom-line-item-versions-billing-period-range-filter
                                      :member-name "BillingPeriodRange"))
                                    (:shape-name
                                     "ListCustomLineItemVersionsFilter"))

(smithy/sdk/shapes:define-structure list-custom-line-item-versions-input
                                    common-lisp:nil
                                    ((arn :target-type custom-line-item-arn
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (max-results :target-type
                                      max-custom-line-item-results :member-name
                                      "MaxResults")
                                     (next-token :target-type token
                                      :member-name "NextToken")
                                     (filters :target-type
                                      list-custom-line-item-versions-filter
                                      :member-name "Filters"))
                                    (:shape-name
                                     "ListCustomLineItemVersionsInput"))

(smithy/sdk/shapes:define-structure list-custom-line-item-versions-output
                                    common-lisp:nil
                                    ((custom-line-item-versions :target-type
                                      custom-line-item-version-list
                                      :member-name "CustomLineItemVersions")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name
                                     "ListCustomLineItemVersionsOutput"))

(smithy/sdk/shapes:define-structure list-custom-line-items-filter
                                    common-lisp:nil
                                    ((names :target-type
                                      custom-line-item-name-list :member-name
                                      "Names")
                                     (billing-groups :target-type
                                      billing-group-arn-list :member-name
                                      "BillingGroups")
                                     (arns :target-type custom-line-item-arns
                                      :member-name "Arns")
                                     (account-ids :target-type account-id-list
                                      :member-name "AccountIds"))
                                    (:shape-name "ListCustomLineItemsFilter"))

(smithy/sdk/shapes:define-structure list-custom-line-items-input
                                    common-lisp:nil
                                    ((billing-period :target-type
                                      billing-period :member-name
                                      "BillingPeriod")
                                     (max-results :target-type
                                      max-custom-line-item-results :member-name
                                      "MaxResults")
                                     (next-token :target-type token
                                      :member-name "NextToken")
                                     (filters :target-type
                                      list-custom-line-items-filter
                                      :member-name "Filters"))
                                    (:shape-name "ListCustomLineItemsInput"))

(smithy/sdk/shapes:define-structure list-custom-line-items-output
                                    common-lisp:nil
                                    ((custom-line-items :target-type
                                      custom-line-item-list :member-name
                                      "CustomLineItems")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name "ListCustomLineItemsOutput"))

(smithy/sdk/shapes:define-structure
 list-pricing-plans-associated-with-pricing-rule-input common-lisp:nil
 ((billing-period :target-type billing-period :member-name "BillingPeriod")
  (pricing-rule-arn :target-type pricing-rule-arn :required common-lisp:t
   :member-name "PricingRuleArn")
  (max-results :target-type max-pricing-rule-results :member-name "MaxResults")
  (next-token :target-type token :member-name "NextToken"))
 (:shape-name "ListPricingPlansAssociatedWithPricingRuleInput"))

(smithy/sdk/shapes:define-structure
 list-pricing-plans-associated-with-pricing-rule-output common-lisp:nil
 ((billing-period :target-type billing-period :member-name "BillingPeriod")
  (pricing-rule-arn :target-type pricing-rule-arn :member-name
   "PricingRuleArn")
  (pricing-plan-arns :target-type pricing-plan-arns :member-name
   "PricingPlanArns")
  (next-token :target-type token :member-name "NextToken"))
 (:shape-name "ListPricingPlansAssociatedWithPricingRuleOutput"))

(smithy/sdk/shapes:define-structure list-pricing-plans-filter common-lisp:nil
                                    ((arns :target-type pricing-plan-arns
                                      :member-name "Arns"))
                                    (:shape-name "ListPricingPlansFilter"))

(smithy/sdk/shapes:define-structure list-pricing-plans-input common-lisp:nil
                                    ((billing-period :target-type
                                      billing-period :member-name
                                      "BillingPeriod")
                                     (filters :target-type
                                      list-pricing-plans-filter :member-name
                                      "Filters")
                                     (max-results :target-type
                                      max-pricing-plan-results :member-name
                                      "MaxResults")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name "ListPricingPlansInput"))

(smithy/sdk/shapes:define-structure list-pricing-plans-output common-lisp:nil
                                    ((billing-period :target-type
                                      billing-period :member-name
                                      "BillingPeriod")
                                     (pricing-plans :target-type
                                      pricing-plan-list :member-name
                                      "PricingPlans")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name "ListPricingPlansOutput"))

(smithy/sdk/shapes:define-structure
 list-pricing-rules-associated-to-pricing-plan-input common-lisp:nil
 ((billing-period :target-type billing-period :member-name "BillingPeriod")
  (pricing-plan-arn :target-type pricing-plan-arn :required common-lisp:t
   :member-name "PricingPlanArn")
  (max-results :target-type max-pricing-plan-results :member-name "MaxResults")
  (next-token :target-type token :member-name "NextToken"))
 (:shape-name "ListPricingRulesAssociatedToPricingPlanInput"))

(smithy/sdk/shapes:define-structure
 list-pricing-rules-associated-to-pricing-plan-output common-lisp:nil
 ((billing-period :target-type billing-period :member-name "BillingPeriod")
  (pricing-plan-arn :target-type pricing-plan-arn :member-name
   "PricingPlanArn")
  (pricing-rule-arns :target-type pricing-rule-arns :member-name
   "PricingRuleArns")
  (next-token :target-type token :member-name "NextToken"))
 (:shape-name "ListPricingRulesAssociatedToPricingPlanOutput"))

(smithy/sdk/shapes:define-structure list-pricing-rules-filter common-lisp:nil
                                    ((arns :target-type pricing-rule-arns
                                      :member-name "Arns"))
                                    (:shape-name "ListPricingRulesFilter"))

(smithy/sdk/shapes:define-structure list-pricing-rules-input common-lisp:nil
                                    ((billing-period :target-type
                                      billing-period :member-name
                                      "BillingPeriod")
                                     (filters :target-type
                                      list-pricing-rules-filter :member-name
                                      "Filters")
                                     (max-results :target-type
                                      max-pricing-rule-results :member-name
                                      "MaxResults")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name "ListPricingRulesInput"))

(smithy/sdk/shapes:define-structure list-pricing-rules-output common-lisp:nil
                                    ((billing-period :target-type
                                      billing-period :member-name
                                      "BillingPeriod")
                                     (pricing-rules :target-type
                                      pricing-rule-list :member-name
                                      "PricingRules")
                                     (next-token :target-type token
                                      :member-name "NextToken"))
                                    (:shape-name "ListPricingRulesOutput"))

(smithy/sdk/shapes:define-structure
 list-resources-associated-to-custom-line-item-filter common-lisp:nil
 ((relationship :target-type custom-line-item-relationship :member-name
   "Relationship"))
 (:shape-name "ListResourcesAssociatedToCustomLineItemFilter"))

(smithy/sdk/shapes:define-structure
 list-resources-associated-to-custom-line-item-input common-lisp:nil
 ((billing-period :target-type billing-period :member-name "BillingPeriod")
  (arn :target-type custom-line-item-arn :required common-lisp:t :member-name
   "Arn")
  (max-results :target-type max-custom-line-item-results :member-name
   "MaxResults")
  (next-token :target-type token :member-name "NextToken")
  (filters :target-type list-resources-associated-to-custom-line-item-filter
   :member-name "Filters"))
 (:shape-name "ListResourcesAssociatedToCustomLineItemInput"))

(smithy/sdk/shapes:define-structure
 list-resources-associated-to-custom-line-item-output common-lisp:nil
 ((arn :target-type custom-line-item-arn :member-name "Arn")
  (associated-resources :target-type
   list-resources-associated-to-custom-line-item-response-list :member-name
   "AssociatedResources")
  (next-token :target-type token :member-name "NextToken"))
 (:shape-name "ListResourcesAssociatedToCustomLineItemOutput"))

(smithy/sdk/shapes:define-structure
 list-resources-associated-to-custom-line-item-response-element common-lisp:nil
 ((arn :target-type custom-line-item-association-element :member-name "Arn")
  (relationship :target-type custom-line-item-relationship :member-name
   "Relationship")
  (end-billing-period :target-type billing-period :member-name
   "EndBillingPeriod"))
 (:shape-name "ListResourcesAssociatedToCustomLineItemResponseElement"))

(smithy/sdk/shapes:define-list
 list-resources-associated-to-custom-line-item-response-list :member
 list-resources-associated-to-custom-line-item-response-element)

(smithy/sdk/shapes:define-structure list-tags-for-resource-request
                                    common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name
                                      "ResourceArn"))
                                    (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-structure list-tags-for-resource-response
                                    common-lisp:nil
                                    ((tags :target-type tag-map :member-name
                                      "Tags"))
                                    (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type margin smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type margin-percentage smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type match-option smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-billing-group-cost-report-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-billing-group-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-custom-line-item-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-pricing-plan-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-pricing-rule-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type modifier-percentage
                               smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type number-of-accounts smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type number-of-associated-pricing-rules
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type number-of-associations
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type number-of-pricing-plans-associated-with
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type operation smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type pricing-plan-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list pricing-plan-arns :member pricing-plan-arn)

(smithy/sdk/shapes:define-type pricing-plan-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pricing-plan-full-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list pricing-plan-list :member
                               pricing-plan-list-element)

(smithy/sdk/shapes:define-structure pricing-plan-list-element common-lisp:nil
                                    ((name :target-type pricing-plan-name
                                      :member-name "Name")
                                     (arn :target-type pricing-plan-arn
                                      :member-name "Arn")
                                     (description :target-type
                                      pricing-plan-description :member-name
                                      "Description")
                                     (size :target-type
                                      number-of-associated-pricing-rules
                                      :member-name "Size")
                                     (creation-time :target-type instant
                                      :member-name "CreationTime")
                                     (last-modified-time :target-type instant
                                      :member-name "LastModifiedTime"))
                                    (:shape-name "PricingPlanListElement"))

(smithy/sdk/shapes:define-type pricing-plan-name smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type pricing-rule-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list pricing-rule-arns :member pricing-rule-arn)

(smithy/sdk/shapes:define-list pricing-rule-arns-input :member pricing-rule-arn)

(smithy/sdk/shapes:define-list pricing-rule-arns-non-empty-input :member
                               pricing-rule-arn)

(smithy/sdk/shapes:define-type pricing-rule-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list pricing-rule-list :member
                               pricing-rule-list-element)

(smithy/sdk/shapes:define-structure pricing-rule-list-element common-lisp:nil
                                    ((name :target-type pricing-rule-name
                                      :member-name "Name")
                                     (arn :target-type pricing-rule-arn
                                      :member-name "Arn")
                                     (description :target-type
                                      pricing-rule-description :member-name
                                      "Description")
                                     (scope :target-type pricing-rule-scope
                                      :member-name "Scope")
                                     (type :target-type pricing-rule-type
                                      :member-name "Type")
                                     (modifier-percentage :target-type
                                      modifier-percentage :member-name
                                      "ModifierPercentage")
                                     (service :target-type service :member-name
                                      "Service")
                                     (associated-pricing-plan-count
                                      :target-type
                                      number-of-pricing-plans-associated-with
                                      :member-name
                                      "AssociatedPricingPlanCount")
                                     (creation-time :target-type instant
                                      :member-name "CreationTime")
                                     (last-modified-time :target-type instant
                                      :member-name "LastModifiedTime")
                                     (billing-entity :target-type
                                      billing-entity :member-name
                                      "BillingEntity")
                                     (tiering :target-type tiering :member-name
                                      "Tiering")
                                     (usage-type :target-type usage-type
                                      :member-name "UsageType")
                                     (operation :target-type operation
                                      :member-name "Operation"))
                                    (:shape-name "PricingRuleListElement"))

(smithy/sdk/shapes:define-type pricing-rule-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pricing-rule-scope
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type pricing-rule-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type proforma-cost smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "ResourceId")
                                 (resource-type :target-type string :required
                                  common-lisp:t :member-name "ResourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type retry-after-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type service smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (resource-id :target-type string :member-name
                                  "ResourceId")
                                 (resource-type :target-type string
                                  :member-name "ResourceType")
                                 (limit-code :target-type string :required
                                  common-lisp:t :member-name "LimitCode")
                                 (service-code :target-type string :required
                                  common-lisp:t :member-name "ServiceCode"))
                                (:shape-name "ServiceLimitExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure tag-resource-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "ResourceArn")
                                     (tags :target-type tag-map :required
                                      common-lisp:t :member-name "Tags"))
                                    (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (retry-after-seconds :target-type
                                  retry-after-seconds :member-name
                                  "RetryAfterSeconds" :http-header
                                  "Retry-After"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-structure tiering common-lisp:nil
                                    ((free-tier :target-type free-tier-config
                                      :required common-lisp:t :member-name
                                      "FreeTier"))
                                    (:shape-name "Tiering"))

(smithy/sdk/shapes:define-type tiering-activated
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure untag-resource-request common-lisp:nil
                                    ((resource-arn :target-type arn :required
                                      common-lisp:t :member-name "ResourceArn")
                                     (tag-keys :target-type tag-key-list
                                      :required common-lisp:t :member-name
                                      "TagKeys" :http-query "tagKeys"))
                                    (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-structure untag-resource-response common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-structure update-billing-group-account-grouping
                                    common-lisp:nil
                                    ((auto-associate :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "AutoAssociate"))
                                    (:shape-name
                                     "UpdateBillingGroupAccountGrouping"))

(smithy/sdk/shapes:define-structure update-billing-group-input common-lisp:nil
                                    ((arn :target-type billing-group-arn
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (name :target-type billing-group-name
                                      :member-name "Name")
                                     (status :target-type billing-group-status
                                      :member-name "Status")
                                     (computation-preference :target-type
                                      computation-preference :member-name
                                      "ComputationPreference")
                                     (description :target-type
                                      billing-group-description :member-name
                                      "Description")
                                     (account-grouping :target-type
                                      update-billing-group-account-grouping
                                      :member-name "AccountGrouping"))
                                    (:shape-name "UpdateBillingGroupInput"))

(smithy/sdk/shapes:define-structure update-billing-group-output common-lisp:nil
                                    ((arn :target-type billing-group-arn
                                      :member-name "Arn")
                                     (name :target-type billing-group-name
                                      :member-name "Name")
                                     (description :target-type
                                      billing-group-description :member-name
                                      "Description")
                                     (primary-account-id :target-type
                                      account-id :member-name
                                      "PrimaryAccountId")
                                     (pricing-plan-arn :target-type
                                      pricing-plan-arn :member-name
                                      "PricingPlanArn")
                                     (size :target-type number-of-accounts
                                      :member-name "Size")
                                     (last-modified-time :target-type instant
                                      :member-name "LastModifiedTime")
                                     (status :target-type billing-group-status
                                      :member-name "Status")
                                     (status-reason :target-type
                                      billing-group-status-reason :member-name
                                      "StatusReason")
                                     (account-grouping :target-type
                                      update-billing-group-account-grouping
                                      :member-name "AccountGrouping"))
                                    (:shape-name "UpdateBillingGroupOutput"))

(smithy/sdk/shapes:define-structure update-custom-line-item-charge-details
                                    common-lisp:nil
                                    ((flat :target-type
                                      update-custom-line-item-flat-charge-details
                                      :member-name "Flat")
                                     (percentage :target-type
                                      update-custom-line-item-percentage-charge-details
                                      :member-name "Percentage")
                                     (line-item-filters :target-type
                                      line-item-filters-list :member-name
                                      "LineItemFilters"))
                                    (:shape-name
                                     "UpdateCustomLineItemChargeDetails"))

(smithy/sdk/shapes:define-structure update-custom-line-item-flat-charge-details
                                    common-lisp:nil
                                    ((charge-value :target-type
                                      custom-line-item-charge-value :required
                                      common-lisp:t :member-name
                                      "ChargeValue"))
                                    (:shape-name
                                     "UpdateCustomLineItemFlatChargeDetails"))

(smithy/sdk/shapes:define-structure update-custom-line-item-input
                                    common-lisp:nil
                                    ((arn :target-type custom-line-item-arn
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (name :target-type custom-line-item-name
                                      :member-name "Name")
                                     (description :target-type
                                      custom-line-item-description :member-name
                                      "Description")
                                     (charge-details :target-type
                                      update-custom-line-item-charge-details
                                      :member-name "ChargeDetails")
                                     (billing-period-range :target-type
                                      custom-line-item-billing-period-range
                                      :member-name "BillingPeriodRange"))
                                    (:shape-name "UpdateCustomLineItemInput"))

(smithy/sdk/shapes:define-structure update-custom-line-item-output
                                    common-lisp:nil
                                    ((arn :target-type custom-line-item-arn
                                      :member-name "Arn")
                                     (billing-group-arn :target-type
                                      billing-group-full-arn :member-name
                                      "BillingGroupArn")
                                     (name :target-type custom-line-item-name
                                      :member-name "Name")
                                     (description :target-type
                                      custom-line-item-description :member-name
                                      "Description")
                                     (charge-details :target-type
                                      list-custom-line-item-charge-details
                                      :member-name "ChargeDetails")
                                     (last-modified-time :target-type instant
                                      :member-name "LastModifiedTime")
                                     (association-size :target-type
                                      number-of-associations :member-name
                                      "AssociationSize"))
                                    (:shape-name "UpdateCustomLineItemOutput"))

(smithy/sdk/shapes:define-structure
 update-custom-line-item-percentage-charge-details common-lisp:nil
 ((percentage-value :target-type custom-line-item-percentage-charge-value
   :required common-lisp:t :member-name "PercentageValue"))
 (:shape-name "UpdateCustomLineItemPercentageChargeDetails"))

(smithy/sdk/shapes:define-structure update-free-tier-config common-lisp:nil
                                    ((activated :target-type tiering-activated
                                      :required common-lisp:t :member-name
                                      "Activated"))
                                    (:shape-name "UpdateFreeTierConfig"))

(smithy/sdk/shapes:define-structure update-pricing-plan-input common-lisp:nil
                                    ((arn :target-type pricing-plan-arn
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (name :target-type pricing-plan-name
                                      :member-name "Name")
                                     (description :target-type
                                      pricing-plan-description :member-name
                                      "Description"))
                                    (:shape-name "UpdatePricingPlanInput"))

(smithy/sdk/shapes:define-structure update-pricing-plan-output common-lisp:nil
                                    ((arn :target-type pricing-plan-arn
                                      :member-name "Arn")
                                     (name :target-type pricing-plan-name
                                      :member-name "Name")
                                     (description :target-type
                                      pricing-plan-description :member-name
                                      "Description")
                                     (size :target-type
                                      number-of-associated-pricing-rules
                                      :member-name "Size")
                                     (last-modified-time :target-type instant
                                      :member-name "LastModifiedTime"))
                                    (:shape-name "UpdatePricingPlanOutput"))

(smithy/sdk/shapes:define-structure update-pricing-rule-input common-lisp:nil
                                    ((arn :target-type pricing-rule-arn
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (name :target-type pricing-rule-name
                                      :member-name "Name")
                                     (description :target-type
                                      pricing-rule-description :member-name
                                      "Description")
                                     (type :target-type pricing-rule-type
                                      :member-name "Type")
                                     (modifier-percentage :target-type
                                      modifier-percentage :member-name
                                      "ModifierPercentage")
                                     (tiering :target-type update-tiering-input
                                      :member-name "Tiering"))
                                    (:shape-name "UpdatePricingRuleInput"))

(smithy/sdk/shapes:define-structure update-pricing-rule-output common-lisp:nil
                                    ((arn :target-type pricing-rule-arn
                                      :member-name "Arn")
                                     (name :target-type pricing-rule-name
                                      :member-name "Name")
                                     (description :target-type
                                      pricing-rule-description :member-name
                                      "Description")
                                     (scope :target-type pricing-rule-scope
                                      :member-name "Scope")
                                     (type :target-type pricing-rule-type
                                      :member-name "Type")
                                     (modifier-percentage :target-type
                                      modifier-percentage :member-name
                                      "ModifierPercentage")
                                     (service :target-type service :member-name
                                      "Service")
                                     (associated-pricing-plan-count
                                      :target-type
                                      number-of-pricing-plans-associated-with
                                      :member-name
                                      "AssociatedPricingPlanCount")
                                     (last-modified-time :target-type instant
                                      :member-name "LastModifiedTime")
                                     (billing-entity :target-type
                                      billing-entity :member-name
                                      "BillingEntity")
                                     (tiering :target-type update-tiering-input
                                      :member-name "Tiering")
                                     (usage-type :target-type usage-type
                                      :member-name "UsageType")
                                     (operation :target-type operation
                                      :member-name "Operation"))
                                    (:shape-name "UpdatePricingRuleOutput"))

(smithy/sdk/shapes:define-structure update-tiering-input common-lisp:nil
                                    ((free-tier :target-type
                                      update-free-tier-config :required
                                      common-lisp:t :member-name "FreeTier"))
                                    (:shape-name "UpdateTieringInput"))

(smithy/sdk/shapes:define-type usage-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type string :required
                                  common-lisp:t :member-name "Message")
                                 (reason :target-type
                                  validation-exception-reason :member-name
                                  "Reason")
                                 (fields :target-type
                                  validation-exception-field-list :member-name
                                  "Fields"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type string :required
                                      common-lisp:t :member-name "Name")
                                     (message :target-type string :required
                                      common-lisp:t :member-name "Message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-type validation-exception-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation associate-accounts :shape-name
                                       "AssociateAccounts" :input
                                       associate-accounts-input :output
                                       associate-accounts-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-limit-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/associate-accounts" :code 200)

(smithy/sdk/operation:define-operation associate-pricing-rules :shape-name
                                       "AssociatePricingRules" :input
                                       associate-pricing-rules-input :output
                                       associate-pricing-rules-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-limit-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/associate-pricing-rules" :code 200)

(smithy/sdk/operation:define-operation
 batch-associate-resources-to-custom-line-item :shape-name
 "BatchAssociateResourcesToCustomLineItem" :input
 batch-associate-resources-to-custom-line-item-input :output
 batch-associate-resources-to-custom-line-item-output :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception service-limit-exceeded-exception
  throttling-exception validation-exception)
 :method "PUT" :uri "/batch-associate-resources-to-custom-line-item" :code 200)

(smithy/sdk/operation:define-operation
 batch-disassociate-resources-from-custom-line-item :shape-name
 "BatchDisassociateResourcesFromCustomLineItem" :input
 batch-disassociate-resources-from-custom-line-item-input :output
 batch-disassociate-resources-from-custom-line-item-output :errors
 (access-denied-exception conflict-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "PUT" :uri "/batch-disassociate-resources-from-custom-line-item" :code
 200)

(smithy/sdk/operation:define-operation create-billing-group :shape-name
                                       "CreateBillingGroup" :input
                                       create-billing-group-input :output
                                       create-billing-group-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-limit-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/create-billing-group" :code 200)

(smithy/sdk/operation:define-operation create-custom-line-item :shape-name
                                       "CreateCustomLineItem" :input
                                       create-custom-line-item-input :output
                                       create-custom-line-item-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-limit-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/create-custom-line-item" :code 200)

(smithy/sdk/operation:define-operation create-pricing-plan :shape-name
                                       "CreatePricingPlan" :input
                                       create-pricing-plan-input :output
                                       create-pricing-plan-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-limit-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/create-pricing-plan" :code 200)

(smithy/sdk/operation:define-operation create-pricing-rule :shape-name
                                       "CreatePricingRule" :input
                                       create-pricing-rule-input :output
                                       create-pricing-rule-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-limit-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/create-pricing-rule" :code 200)

(smithy/sdk/operation:define-operation delete-billing-group :shape-name
                                       "DeleteBillingGroup" :input
                                       delete-billing-group-input :output
                                       delete-billing-group-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/delete-billing-group" :code 200)

(smithy/sdk/operation:define-operation delete-custom-line-item :shape-name
                                       "DeleteCustomLineItem" :input
                                       delete-custom-line-item-input :output
                                       delete-custom-line-item-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/delete-custom-line-item" :code 200)

(smithy/sdk/operation:define-operation delete-pricing-plan :shape-name
                                       "DeletePricingPlan" :input
                                       delete-pricing-plan-input :output
                                       delete-pricing-plan-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/delete-pricing-plan" :code 200)

(smithy/sdk/operation:define-operation delete-pricing-rule :shape-name
                                       "DeletePricingRule" :input
                                       delete-pricing-rule-input :output
                                       delete-pricing-rule-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/delete-pricing-rule" :code 200)

(smithy/sdk/operation:define-operation disassociate-accounts :shape-name
                                       "DisassociateAccounts" :input
                                       disassociate-accounts-input :output
                                       disassociate-accounts-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/disassociate-accounts" :code 200)

(smithy/sdk/operation:define-operation disassociate-pricing-rules :shape-name
                                       "DisassociatePricingRules" :input
                                       disassociate-pricing-rules-input :output
                                       disassociate-pricing-rules-output
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/disassociate-pricing-rules" :code 200)

(smithy/sdk/operation:define-operation get-billing-group-cost-report
                                       :shape-name "GetBillingGroupCostReport"
                                       :input
                                       get-billing-group-cost-report-input
                                       :output
                                       get-billing-group-cost-report-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/get-billing-group-cost-report" :code
                                       200)

(smithy/sdk/operation:define-operation list-account-associations :shape-name
                                       "ListAccountAssociations" :input
                                       list-account-associations-input :output
                                       list-account-associations-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-account-associations" :code 200)

(smithy/sdk/operation:define-operation list-billing-group-cost-reports
                                       :shape-name
                                       "ListBillingGroupCostReports" :input
                                       list-billing-group-cost-reports-input
                                       :output
                                       list-billing-group-cost-reports-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-billing-group-cost-reports" :code
                                       200)

(smithy/sdk/operation:define-operation list-billing-groups :shape-name
                                       "ListBillingGroups" :input
                                       list-billing-groups-input :output
                                       list-billing-groups-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-billing-groups" :code 200)

(smithy/sdk/operation:define-operation list-custom-line-item-versions
                                       :shape-name "ListCustomLineItemVersions"
                                       :input
                                       list-custom-line-item-versions-input
                                       :output
                                       list-custom-line-item-versions-output
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-custom-line-item-versions" :code
                                       200)

(smithy/sdk/operation:define-operation list-custom-line-items :shape-name
                                       "ListCustomLineItems" :input
                                       list-custom-line-items-input :output
                                       list-custom-line-items-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-custom-line-items" :code 200)

(smithy/sdk/operation:define-operation list-pricing-plans :shape-name
                                       "ListPricingPlans" :input
                                       list-pricing-plans-input :output
                                       list-pricing-plans-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-pricing-plans" :code 200)

(smithy/sdk/operation:define-operation
 list-pricing-plans-associated-with-pricing-rule :shape-name
 "ListPricingPlansAssociatedWithPricingRule" :input
 list-pricing-plans-associated-with-pricing-rule-input :output
 list-pricing-plans-associated-with-pricing-rule-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri "/list-pricing-plans-associated-with-pricing-rule" :code
 200)

(smithy/sdk/operation:define-operation list-pricing-rules :shape-name
                                       "ListPricingRules" :input
                                       list-pricing-rules-input :output
                                       list-pricing-rules-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-pricing-rules" :code 200)

(smithy/sdk/operation:define-operation
 list-pricing-rules-associated-to-pricing-plan :shape-name
 "ListPricingRulesAssociatedToPricingPlan" :input
 list-pricing-rules-associated-to-pricing-plan-input :output
 list-pricing-rules-associated-to-pricing-plan-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri "/list-pricing-rules-associated-to-pricing-plan" :code 200)

(smithy/sdk/operation:define-operation
 list-resources-associated-to-custom-line-item :shape-name
 "ListResourcesAssociatedToCustomLineItem" :input
 list-resources-associated-to-custom-line-item-input :output
 list-resources-associated-to-custom-line-item-output :errors
 (access-denied-exception internal-server-exception
  resource-not-found-exception throttling-exception validation-exception)
 :method "POST" :uri "/list-resources-associated-to-custom-line-item" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{ResourceArn}"
                                       :code 204)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-billing-group :shape-name
                                       "UpdateBillingGroup" :input
                                       update-billing-group-input :output
                                       update-billing-group-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/update-billing-group" :code 200)

(smithy/sdk/operation:define-operation update-custom-line-item :shape-name
                                       "UpdateCustomLineItem" :input
                                       update-custom-line-item-input :output
                                       update-custom-line-item-output :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/update-custom-line-item" :code 200)

(smithy/sdk/operation:define-operation update-pricing-plan :shape-name
                                       "UpdatePricingPlan" :input
                                       update-pricing-plan-input :output
                                       update-pricing-plan-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/update-pricing-plan" :code 200)

(smithy/sdk/operation:define-operation update-pricing-rule :shape-name
                                       "UpdatePricingRule" :input
                                       update-pricing-rule-input :output
                                       update-pricing-rule-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/update-pricing-rule" :code 200)
