(uiop/package:define-package #:pira/billing (:use)
                             (:export #:awsbilling #:account-id
                              #:active-time-range #:billing-view-arn
                              #:billing-view-arn-list
                              #:billing-view-description #:billing-view-element
                              #:billing-view-list #:billing-view-list-element
                              #:billing-view-name
                              #:billing-view-source-views-list
                              #:billing-view-type #:billing-view-type-list
                              #:billing-views-max-results #:client-token
                              #:create-billing-view #:delete-billing-view
                              #:dimension #:dimension-values #:error-message
                              #:expression #:field-name #:get-billing-view
                              #:get-resource-policy #:list-billing-views
                              #:list-source-views-for-billing-view
                              #:list-tags-for-resource #:page-token
                              #:policy-document #:quota-code #:resource-arn
                              #:resource-id #:resource-tag #:resource-tag-key
                              #:resource-tag-key-list #:resource-tag-list
                              #:resource-tag-value #:resource-type
                              #:service-code #:tag-key #:tag-resource
                              #:tag-values #:untag-resource
                              #:update-billing-view
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:value #:values))
(common-lisp:in-package #:pira/billing)

(smithy/sdk/service:define-service awsbilling :shape-name "AWSBilling" :version
                                   "2023-09-07" :title "AWS Billing" :traits
                                   '(("aws.api#service" ("sdkId" . "Billing")
                                      ("endpointPrefix" . "billing")
                                      ("arnNamespace" . "billing")
                                      ("cloudTrailEventSource"
                                       . "billing.amazonaws.com"))
                                     ("aws.auth#sigv4" ("name" . "billing"))
                                     ("aws.endpoints#dualStackOnlyEndpoints")
                                     ("aws.endpoints#standardPartitionalEndpoints"
                                      ("endpointPatternType"
                                       . "service_region_dnsSuffix"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure active-time-range common-lisp:nil
                                    ((active-after-inclusive :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "activeAfterInclusive")
                                     (active-before-inclusive :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "activeBeforeInclusive"))
                                    (:shape-name "ActiveTimeRange"))

(smithy/sdk/shapes:define-type billing-view-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list billing-view-arn-list :member billing-view-arn)

(smithy/sdk/shapes:define-type billing-view-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure billing-view-element common-lisp:nil
                                    ((arn :target-type billing-view-arn
                                      :member-name "arn")
                                     (name :target-type billing-view-name
                                      :member-name "name")
                                     (description :target-type
                                      billing-view-description :member-name
                                      "description")
                                     (billing-view-type :target-type
                                      billing-view-type :member-name
                                      "billingViewType")
                                     (owner-account-id :target-type account-id
                                      :member-name "ownerAccountId")
                                     (data-filter-expression :target-type
                                      expression :member-name
                                      "dataFilterExpression")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedAt"))
                                    (:shape-name "BillingViewElement"))

(smithy/sdk/shapes:define-list billing-view-list :member
                               billing-view-list-element)

(smithy/sdk/shapes:define-structure billing-view-list-element common-lisp:nil
                                    ((arn :target-type billing-view-arn
                                      :member-name "arn")
                                     (name :target-type billing-view-name
                                      :member-name "name")
                                     (description :target-type
                                      billing-view-description :member-name
                                      "description")
                                     (owner-account-id :target-type account-id
                                      :member-name "ownerAccountId")
                                     (billing-view-type :target-type
                                      billing-view-type :member-name
                                      "billingViewType"))
                                    (:shape-name "BillingViewListElement"))

(smithy/sdk/shapes:define-type billing-view-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list billing-view-source-views-list :member
                               billing-view-arn)

(smithy/sdk/shapes:define-enum billing-view-type
    common-lisp:nil
  (:primary "PRIMARY")
  (:billing-group "BILLING_GROUP")
  (:custom "CUSTOM"))

(smithy/sdk/shapes:define-list billing-view-type-list :member billing-view-type)

(smithy/sdk/shapes:define-type billing-views-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "resourceId")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-billing-view-request common-lisp:nil
                                ((name :target-type billing-view-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type
                                  billing-view-description :member-name
                                  "description")
                                 (source-views :target-type
                                  billing-view-source-views-list :required
                                  common-lisp:t :member-name "sourceViews")
                                 (data-filter-expression :target-type
                                  expression :member-name
                                  "dataFilterExpression")
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-header
                                  "X-Amzn-Client-Token")
                                 (resource-tags :target-type resource-tag-list
                                  :member-name "resourceTags"))
                                (:shape-name "CreateBillingViewRequest"))

(smithy/sdk/shapes:define-output create-billing-view-response common-lisp:nil
                                 ((arn :target-type billing-view-arn :required
                                   common-lisp:t :member-name "arn")
                                  (created-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "createdAt"))
                                 (:shape-name "CreateBillingViewResponse"))

(smithy/sdk/shapes:define-input delete-billing-view-request common-lisp:nil
                                ((arn :target-type billing-view-arn :required
                                  common-lisp:t :member-name "arn"))
                                (:shape-name "DeleteBillingViewRequest"))

(smithy/sdk/shapes:define-output delete-billing-view-response common-lisp:nil
                                 ((arn :target-type billing-view-arn :required
                                   common-lisp:t :member-name "arn"))
                                 (:shape-name "DeleteBillingViewResponse"))

(smithy/sdk/shapes:define-enum dimension
    common-lisp:nil
  (:linked-account "LINKED_ACCOUNT"))

(smithy/sdk/shapes:define-structure dimension-values common-lisp:nil
                                    ((key :target-type dimension :required
                                      common-lisp:t :member-name "key")
                                     (values :target-type values :required
                                      common-lisp:t :member-name "values"))
                                    (:shape-name "DimensionValues"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure expression common-lisp:nil
                                    ((dimensions :target-type dimension-values
                                      :member-name "dimensions")
                                     (tags :target-type tag-values :member-name
                                      "tags"))
                                    (:shape-name "Expression"))

(smithy/sdk/shapes:define-type field-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-billing-view-request common-lisp:nil
                                ((arn :target-type billing-view-arn :required
                                  common-lisp:t :member-name "arn"))
                                (:shape-name "GetBillingViewRequest"))

(smithy/sdk/shapes:define-output get-billing-view-response common-lisp:nil
                                 ((billing-view :target-type
                                   billing-view-element :required common-lisp:t
                                   :member-name "billingView"))
                                 (:shape-name "GetBillingViewResponse"))

(smithy/sdk/shapes:define-input get-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn"))
                                (:shape-name "GetResourcePolicyRequest"))

(smithy/sdk/shapes:define-output get-resource-policy-response common-lisp:nil
                                 ((resource-arn :target-type resource-arn
                                   :required common-lisp:t :member-name
                                   "resourceArn")
                                  (policy :target-type policy-document
                                   :member-name "policy"))
                                 (:shape-name "GetResourcePolicyResponse"))

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-billing-views-request common-lisp:nil
                                ((active-time-range :target-type
                                  active-time-range :member-name
                                  "activeTimeRange")
                                 (arns :target-type billing-view-arn-list
                                  :member-name "arns")
                                 (billing-view-types :target-type
                                  billing-view-type-list :member-name
                                  "billingViewTypes")
                                 (owner-account-id :target-type account-id
                                  :member-name "ownerAccountId")
                                 (max-results :target-type
                                  billing-views-max-results :member-name
                                  "maxResults")
                                 (next-token :target-type page-token
                                  :member-name "nextToken"))
                                (:shape-name "ListBillingViewsRequest"))

(smithy/sdk/shapes:define-output list-billing-views-response common-lisp:nil
                                 ((billing-views :target-type billing-view-list
                                   :required common-lisp:t :member-name
                                   "billingViews")
                                  (next-token :target-type page-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListBillingViewsResponse"))

(smithy/sdk/shapes:define-input list-source-views-for-billing-view-request
                                common-lisp:nil
                                ((arn :target-type billing-view-arn :required
                                  common-lisp:t :member-name "arn")
                                 (max-results :target-type
                                  billing-views-max-results :member-name
                                  "maxResults")
                                 (next-token :target-type page-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "ListSourceViewsForBillingViewRequest"))

(smithy/sdk/shapes:define-output list-source-views-for-billing-view-response
                                 common-lisp:nil
                                 ((source-views :target-type
                                   billing-view-source-views-list :required
                                   common-lisp:t :member-name "sourceViews")
                                  (next-token :target-type page-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListSourceViewsForBillingViewResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((resource-tags :target-type resource-tag-list
                                   :member-name "resourceTags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type page-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type policy-document smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type quota-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "resourceId")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure resource-tag common-lisp:nil
                                    ((key :target-type resource-tag-key
                                      :required common-lisp:t :member-name
                                      "key")
                                     (value :target-type resource-tag-value
                                      :member-name "value"))
                                    (:shape-name "ResourceTag"))

(smithy/sdk/shapes:define-type resource-tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-tag-key-list :member resource-tag-key)

(smithy/sdk/shapes:define-list resource-tag-list :member resource-tag)

(smithy/sdk/shapes:define-type resource-tag-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type service-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (resource-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "resourceId")
                                 (resource-type :target-type resource-type
                                  :required common-lisp:t :member-name
                                  "resourceType")
                                 (service-code :target-type service-code
                                  :required common-lisp:t :member-name
                                  "serviceCode")
                                 (quota-code :target-type quota-code :required
                                  common-lisp:t :member-name "quotaCode"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn")
                                 (resource-tags :target-type resource-tag-list
                                  :required common-lisp:t :member-name
                                  "resourceTags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-structure tag-values common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "key")
                                     (values :target-type values :required
                                      common-lisp:t :member-name "values"))
                                    (:shape-name "TagValues"))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn")
                                 (resource-tag-keys :target-type
                                  resource-tag-key-list :required common-lisp:t
                                  :member-name "resourceTagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-billing-view-request common-lisp:nil
                                ((arn :target-type billing-view-arn :required
                                  common-lisp:t :member-name "arn")
                                 (name :target-type billing-view-name
                                  :member-name "name")
                                 (description :target-type
                                  billing-view-description :member-name
                                  "description")
                                 (data-filter-expression :target-type
                                  expression :member-name
                                  "dataFilterExpression"))
                                (:shape-name "UpdateBillingViewRequest"))

(smithy/sdk/shapes:define-output update-billing-view-response common-lisp:nil
                                 ((arn :target-type billing-view-arn :required
                                   common-lisp:t :member-name "arn")
                                  (updated-at :target-type
                                   smithy/sdk/smithy-types:timestamp
                                   :member-name "updatedAt"))
                                 (:shape-name "UpdateBillingViewResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type field-name :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type error-message
                                      :required common-lisp:t :member-name
                                      "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:unknown-operation "unknownOperation")
  (:cannot-parse "cannotParse")
  (:field-validation-failed "fieldValidationFailed")
  (:other "other"))

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list values :member value)

(smithy/sdk/operation:define-operation create-billing-view :shape-name
                                       "CreateBillingView" :input
                                       create-billing-view-request :output
                                       create-billing-view-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation delete-billing-view :shape-name
                                       "DeleteBillingView" :input
                                       delete-billing-view-request :output
                                       delete-billing-view-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-billing-view :shape-name
                                       "GetBillingView" :input
                                       get-billing-view-request :output
                                       get-billing-view-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation get-resource-policy :shape-name
                                       "GetResourcePolicy" :input
                                       get-resource-policy-request :output
                                       get-resource-policy-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-billing-views :shape-name
                                       "ListBillingViews" :input
                                       list-billing-views-request :output
                                       list-billing-views-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/" :code 200)

(smithy/sdk/operation:define-operation list-source-views-for-billing-view
                                       :shape-name
                                       "ListSourceViewsForBillingView" :input
                                       list-source-views-for-billing-view-request
                                       :output
                                       list-source-views-for-billing-view-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-billing-view :shape-name
                                       "UpdateBillingView" :input
                                       update-billing-view-request :output
                                       update-billing-view-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception))
