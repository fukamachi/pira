(uiop/package:define-package #:pira/marketplace-catalog (:use)
                             (:export #:arn #:awsmpseymour
                              #:access-denied-exception
                              #:ami-product-entity-id-filter
                              #:ami-product-entity-id-filter-value-list
                              #:ami-product-entity-id-string
                              #:ami-product-filters
                              #:ami-product-last-modified-date-filter
                              #:ami-product-last-modified-date-filter-date-range
                              #:ami-product-sort #:ami-product-sort-by
                              #:ami-product-summary #:ami-product-title-filter
                              #:ami-product-title-filter-value-list
                              #:ami-product-title-string
                              #:ami-product-visibility-filter
                              #:ami-product-visibility-filter-value-list
                              #:ami-product-visibility-string
                              #:batch-describe-entities
                              #:batch-describe-entities-request
                              #:batch-describe-entities-response
                              #:batch-describe-error-code-string
                              #:batch-describe-error-detail
                              #:batch-describe-error-message-content
                              #:cancel-change-set #:cancel-change-set-request
                              #:cancel-change-set-response #:catalog #:change
                              #:change-name #:change-set-description
                              #:change-set-name #:change-set-summary-list
                              #:change-set-summary-list-item #:change-status
                              #:change-summary #:change-type
                              #:client-request-token
                              #:container-product-entity-id-filter
                              #:container-product-entity-id-filter-value-list
                              #:container-product-entity-id-string
                              #:container-product-filters
                              #:container-product-last-modified-date-filter
                              #:container-product-last-modified-date-filter-date-range
                              #:container-product-sort
                              #:container-product-sort-by
                              #:container-product-summary
                              #:container-product-title-filter
                              #:container-product-title-filter-value-list
                              #:container-product-title-string
                              #:container-product-visibility-filter
                              #:container-product-visibility-filter-value-list
                              #:container-product-visibility-string
                              #:data-product-entity-id-filter
                              #:data-product-entity-id-filter-value-list
                              #:data-product-entity-id-string
                              #:data-product-filters
                              #:data-product-last-modified-date-filter
                              #:data-product-last-modified-date-filter-date-range
                              #:data-product-sort #:data-product-sort-by
                              #:data-product-summary
                              #:data-product-title-filter
                              #:data-product-title-filter-value-list
                              #:data-product-title-string
                              #:data-product-visibility-filter
                              #:data-product-visibility-filter-value-list
                              #:data-product-visibility-string
                              #:date-time-iso8601 #:delete-resource-policy
                              #:delete-resource-policy-request
                              #:delete-resource-policy-response
                              #:describe-change-set
                              #:describe-change-set-request
                              #:describe-change-set-response #:describe-entity
                              #:describe-entity-request
                              #:describe-entity-response #:entity
                              #:entity-detail #:entity-details #:entity-id
                              #:entity-name-string #:entity-request
                              #:entity-request-list #:entity-summary
                              #:entity-summary-list #:entity-type
                              #:entity-type-filters #:entity-type-sort
                              #:error-code-string #:error-detail
                              #:error-detail-list #:errors
                              #:exception-message-content #:failure-code
                              #:filter #:filter-list #:filter-name
                              #:filter-value-content #:get-resource-policy
                              #:get-resource-policy-request
                              #:get-resource-policy-response #:identifier
                              #:intent #:internal-service-exception #:json
                              #:json-document-type #:list-change-sets
                              #:list-change-sets-max-result-integer
                              #:list-change-sets-request
                              #:list-change-sets-response #:list-entities
                              #:list-entities-max-result-integer
                              #:list-entities-request #:list-entities-response
                              #:list-tags-for-resource
                              #:list-tags-for-resource-request
                              #:list-tags-for-resource-response
                              #:machine-learning-product-entity-id-filter
                              #:machine-learning-product-entity-id-filter-value-list
                              #:machine-learning-product-entity-id-string
                              #:machine-learning-product-filters
                              #:machine-learning-product-last-modified-date-filter
                              #:machine-learning-product-last-modified-date-filter-date-range
                              #:machine-learning-product-sort
                              #:machine-learning-product-sort-by
                              #:machine-learning-product-summary
                              #:machine-learning-product-title-filter
                              #:machine-learning-product-title-filter-value-list
                              #:machine-learning-product-title-string
                              #:machine-learning-product-visibility-filter
                              #:machine-learning-product-visibility-filter-value-list
                              #:machine-learning-product-visibility-string
                              #:next-token #:offer-availability-end-date-filter
                              #:offer-availability-end-date-filter-date-range
                              #:offer-buyer-accounts-filter
                              #:offer-buyer-accounts-filter-wildcard
                              #:offer-buyer-accounts-list
                              #:offer-buyer-accounts-string
                              #:offer-entity-id-filter
                              #:offer-entity-id-filter-value-list
                              #:offer-entity-id-string #:offer-filters
                              #:offer-last-modified-date-filter
                              #:offer-last-modified-date-filter-date-range
                              #:offer-name-filter
                              #:offer-name-filter-value-list
                              #:offer-name-string #:offer-product-id-filter
                              #:offer-product-id-filter-value-list
                              #:offer-product-id-string
                              #:offer-release-date-filter
                              #:offer-release-date-filter-date-range
                              #:offer-resale-authorization-id-filter
                              #:offer-resale-authorization-id-filter-value-list
                              #:offer-resale-authorization-id-string
                              #:offer-sort #:offer-sort-by #:offer-state-filter
                              #:offer-state-filter-value-list
                              #:offer-state-string #:offer-summary
                              #:offer-targeting-filter
                              #:offer-targeting-filter-value-list
                              #:offer-targeting-list #:offer-targeting-string
                              #:ownership-type #:put-resource-policy
                              #:put-resource-policy-request
                              #:put-resource-policy-response
                              #:requested-change-list
                              #:resale-authorization-availability-end-date-filter
                              #:resale-authorization-availability-end-date-filter-date-range
                              #:resale-authorization-availability-end-date-filter-value-list
                              #:resale-authorization-created-date-filter
                              #:resale-authorization-created-date-filter-date-range
                              #:resale-authorization-created-date-filter-value-list
                              #:resale-authorization-entity-id-filter
                              #:resale-authorization-entity-id-filter-value-list
                              #:resale-authorization-entity-id-string
                              #:resale-authorization-filters
                              #:resale-authorization-last-modified-date-filter
                              #:resale-authorization-last-modified-date-filter-date-range
                              #:resale-authorization-manufacturer-account-id-filter
                              #:resale-authorization-manufacturer-account-id-filter-value-list
                              #:resale-authorization-manufacturer-account-id-filter-wildcard
                              #:resale-authorization-manufacturer-account-id-string
                              #:resale-authorization-manufacturer-legal-name-filter
                              #:resale-authorization-manufacturer-legal-name-filter-value-list
                              #:resale-authorization-manufacturer-legal-name-filter-wildcard
                              #:resale-authorization-manufacturer-legal-name-string
                              #:resale-authorization-name-filter
                              #:resale-authorization-name-filter-value-list
                              #:resale-authorization-name-filter-wildcard
                              #:resale-authorization-name-string
                              #:resale-authorization-offer-extended-status-filter
                              #:resale-authorization-offer-extended-status-filter-value-list
                              #:resale-authorization-offer-extended-status-string
                              #:resale-authorization-product-id-filter
                              #:resale-authorization-product-id-filter-value-list
                              #:resale-authorization-product-id-filter-wildcard
                              #:resale-authorization-product-id-string
                              #:resale-authorization-product-name-filter
                              #:resale-authorization-product-name-filter-value-list
                              #:resale-authorization-product-name-filter-wildcard
                              #:resale-authorization-product-name-string
                              #:resale-authorization-reseller-account-idfilter
                              #:resale-authorization-reseller-account-idfilter-value-list
                              #:resale-authorization-reseller-account-idfilter-wildcard
                              #:resale-authorization-reseller-account-idstring
                              #:resale-authorization-reseller-legal-name-filter
                              #:resale-authorization-reseller-legal-name-filter-value-list
                              #:resale-authorization-reseller-legal-name-filter-wildcard
                              #:resale-authorization-reseller-legal-name-string
                              #:resale-authorization-sort
                              #:resale-authorization-sort-by
                              #:resale-authorization-status-filter
                              #:resale-authorization-status-filter-value-list
                              #:resale-authorization-status-string
                              #:resale-authorization-summary #:resource-arn
                              #:resource-id #:resource-id-list
                              #:resource-in-use-exception
                              #:resource-not-found-exception
                              #:resource-not-supported-exception
                              #:resource-policy-json
                              #:saa-sproduct-entity-id-filter
                              #:saa-sproduct-entity-id-filter-value-list
                              #:saa-sproduct-entity-id-string
                              #:saa-sproduct-filters
                              #:saa-sproduct-last-modified-date-filter
                              #:saa-sproduct-last-modified-date-filter-date-range
                              #:saa-sproduct-sort #:saa-sproduct-sort-by
                              #:saa-sproduct-summary
                              #:saa-sproduct-title-filter
                              #:saa-sproduct-title-filter-value-list
                              #:saa-sproduct-title-string
                              #:saa-sproduct-visibility-filter
                              #:saa-sproduct-visibility-filter-value-list
                              #:saa-sproduct-visibility-string
                              #:service-quota-exceeded-exception #:sort
                              #:sort-by #:sort-order #:start-change-set
                              #:start-change-set-request
                              #:start-change-set-response #:tag #:tag-key
                              #:tag-key-list #:tag-list #:tag-resource
                              #:tag-resource-request #:tag-resource-response
                              #:tag-value #:throttling-exception
                              #:untag-resource #:untag-resource-request
                              #:untag-resource-response #:validation-exception
                              #:value-list #:visibility-value))
(common-lisp:in-package #:pira/marketplace-catalog)

(smithy/sdk/service:define-service awsmpseymour :shape-name "AWSMPSeymour"
                                   :version "2018-09-17" :title
                                   "AWS Marketplace Catalog Service" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Marketplace Catalog")
                                      ("arnNamespace" . "aws-marketplace")
                                      ("cloudFormationName"
                                       . "MarketplaceCatalog")
                                      ("cloudTrailEventSource"
                                       . "marketplacecatalog.amazonaws.com")
                                      ("endpointPrefix"
                                       . "catalog.marketplace"))
                                     ("aws.auth#sigv4"
                                      ("name" . "aws-marketplace"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type
                                  exception-message-content :member-name
                                  "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure ami-product-entity-id-filter
                                    common-lisp:nil
                                    ((value-list :target-type
                                      ami-product-entity-id-filter-value-list
                                      :member-name "ValueList"))
                                    (:shape-name "AmiProductEntityIdFilter"))

(smithy/sdk/shapes:define-list ami-product-entity-id-filter-value-list :member
                               ami-product-entity-id-string)

(smithy/sdk/shapes:define-type ami-product-entity-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ami-product-filters common-lisp:nil
                                    ((entity-id :target-type
                                      ami-product-entity-id-filter :member-name
                                      "EntityId")
                                     (last-modified-date :target-type
                                      ami-product-last-modified-date-filter
                                      :member-name "LastModifiedDate")
                                     (product-title :target-type
                                      ami-product-title-filter :member-name
                                      "ProductTitle")
                                     (visibility :target-type
                                      ami-product-visibility-filter
                                      :member-name "Visibility"))
                                    (:shape-name "AmiProductFilters"))

(smithy/sdk/shapes:define-structure ami-product-last-modified-date-filter
                                    common-lisp:nil
                                    ((date-range :target-type
                                      ami-product-last-modified-date-filter-date-range
                                      :member-name "DateRange"))
                                    (:shape-name
                                     "AmiProductLastModifiedDateFilter"))

(smithy/sdk/shapes:define-structure
 ami-product-last-modified-date-filter-date-range common-lisp:nil
 ((after-value :target-type date-time-iso8601 :member-name "AfterValue")
  (before-value :target-type date-time-iso8601 :member-name "BeforeValue"))
 (:shape-name "AmiProductLastModifiedDateFilterDateRange"))

(smithy/sdk/shapes:define-structure ami-product-sort common-lisp:nil
                                    ((sort-by :target-type ami-product-sort-by
                                      :member-name "SortBy")
                                     (sort-order :target-type sort-order
                                      :member-name "SortOrder"))
                                    (:shape-name "AmiProductSort"))

(smithy/sdk/shapes:define-enum ami-product-sort-by
    common-lisp:nil
  (:entity-id "EntityId")
  (:last-modified-date "LastModifiedDate")
  (:product-title "ProductTitle")
  (:visibility "Visibility"))

(smithy/sdk/shapes:define-structure ami-product-summary common-lisp:nil
                                    ((product-title :target-type
                                      ami-product-title-string :member-name
                                      "ProductTitle")
                                     (visibility :target-type
                                      ami-product-visibility-string
                                      :member-name "Visibility"))
                                    (:shape-name "AmiProductSummary"))

(smithy/sdk/shapes:define-structure ami-product-title-filter common-lisp:nil
                                    ((value-list :target-type
                                      ami-product-title-filter-value-list
                                      :member-name "ValueList")
                                     (wild-card-value :target-type
                                      ami-product-title-string :member-name
                                      "WildCardValue"))
                                    (:shape-name "AmiProductTitleFilter"))

(smithy/sdk/shapes:define-list ami-product-title-filter-value-list :member
                               ami-product-title-string)

(smithy/sdk/shapes:define-type ami-product-title-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure ami-product-visibility-filter
                                    common-lisp:nil
                                    ((value-list :target-type
                                      ami-product-visibility-filter-value-list
                                      :member-name "ValueList"))
                                    (:shape-name "AmiProductVisibilityFilter"))

(smithy/sdk/shapes:define-list ami-product-visibility-filter-value-list :member
                               ami-product-visibility-string)

(smithy/sdk/shapes:define-enum ami-product-visibility-string
    common-lisp:nil
  (:limited "Limited")
  (:public "Public")
  (:restricted "Restricted")
  (:draft "Draft"))

(smithy/sdk/shapes:define-input batch-describe-entities-request common-lisp:nil
                                ((entity-request-list :target-type
                                  entity-request-list :required common-lisp:t
                                  :member-name "EntityRequestList"))
                                (:shape-name "BatchDescribeEntitiesRequest"))

(smithy/sdk/shapes:define-output batch-describe-entities-response
                                 common-lisp:nil
                                 ((entity-details :target-type entity-details
                                   :member-name "EntityDetails")
                                  (errors :target-type errors :member-name
                                   "Errors"))
                                 (:shape-name "BatchDescribeEntitiesResponse"))

(smithy/sdk/shapes:define-type batch-describe-error-code-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure batch-describe-error-detail common-lisp:nil
                                    ((error-code :target-type
                                      batch-describe-error-code-string
                                      :member-name "ErrorCode")
                                     (error-message :target-type
                                      batch-describe-error-message-content
                                      :member-name "ErrorMessage"))
                                    (:shape-name "BatchDescribeErrorDetail"))

(smithy/sdk/shapes:define-type batch-describe-error-message-content
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input cancel-change-set-request common-lisp:nil
                                ((catalog :target-type catalog :required
                                  common-lisp:t :member-name "Catalog"
                                  :http-query "catalog")
                                 (change-set-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ChangeSetId" :http-query "changeSetId"))
                                (:shape-name "CancelChangeSetRequest"))

(smithy/sdk/shapes:define-output cancel-change-set-response common-lisp:nil
                                 ((change-set-id :target-type resource-id
                                   :member-name "ChangeSetId")
                                  (change-set-arn :target-type arn :member-name
                                   "ChangeSetArn"))
                                 (:shape-name "CancelChangeSetResponse"))

(smithy/sdk/shapes:define-type catalog smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure change common-lisp:nil
                                    ((change-type :target-type change-type
                                      :required common-lisp:t :member-name
                                      "ChangeType")
                                     (entity :target-type entity :required
                                      common-lisp:t :member-name "Entity")
                                     (entity-tags :target-type tag-list
                                      :member-name "EntityTags")
                                     (details :target-type json :member-name
                                      "Details")
                                     (details-document :target-type
                                      json-document-type :member-name
                                      "DetailsDocument")
                                     (change-name :target-type change-name
                                      :member-name "ChangeName"))
                                    (:shape-name "Change"))

(smithy/sdk/shapes:define-type change-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list change-set-description :member change-summary)

(smithy/sdk/shapes:define-type change-set-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list change-set-summary-list :member
                               change-set-summary-list-item)

(smithy/sdk/shapes:define-structure change-set-summary-list-item
                                    common-lisp:nil
                                    ((change-set-id :target-type resource-id
                                      :member-name "ChangeSetId")
                                     (change-set-arn :target-type arn
                                      :member-name "ChangeSetArn")
                                     (change-set-name :target-type
                                      change-set-name :member-name
                                      "ChangeSetName")
                                     (start-time :target-type date-time-iso8601
                                      :member-name "StartTime")
                                     (end-time :target-type date-time-iso8601
                                      :member-name "EndTime")
                                     (status :target-type change-status
                                      :member-name "Status")
                                     (entity-id-list :target-type
                                      resource-id-list :member-name
                                      "EntityIdList")
                                     (failure-code :target-type failure-code
                                      :member-name "FailureCode"))
                                    (:shape-name "ChangeSetSummaryListItem"))

(smithy/sdk/shapes:define-enum change-status
    common-lisp:nil
  (:preparing "PREPARING")
  (:applying "APPLYING")
  (:succeeded "SUCCEEDED")
  (:cancelled "CANCELLED")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure change-summary common-lisp:nil
                                    ((change-type :target-type change-type
                                      :member-name "ChangeType")
                                     (entity :target-type entity :member-name
                                      "Entity")
                                     (details :target-type json :member-name
                                      "Details")
                                     (details-document :target-type
                                      json-document-type :member-name
                                      "DetailsDocument")
                                     (error-detail-list :target-type
                                      error-detail-list :member-name
                                      "ErrorDetailList")
                                     (change-name :target-type change-name
                                      :member-name "ChangeName"))
                                    (:shape-name "ChangeSummary"))

(smithy/sdk/shapes:define-type change-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-request-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure container-product-entity-id-filter
                                    common-lisp:nil
                                    ((value-list :target-type
                                      container-product-entity-id-filter-value-list
                                      :member-name "ValueList"))
                                    (:shape-name
                                     "ContainerProductEntityIdFilter"))

(smithy/sdk/shapes:define-list container-product-entity-id-filter-value-list
                               :member container-product-entity-id-string)

(smithy/sdk/shapes:define-type container-product-entity-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure container-product-filters common-lisp:nil
                                    ((entity-id :target-type
                                      container-product-entity-id-filter
                                      :member-name "EntityId")
                                     (last-modified-date :target-type
                                      container-product-last-modified-date-filter
                                      :member-name "LastModifiedDate")
                                     (product-title :target-type
                                      container-product-title-filter
                                      :member-name "ProductTitle")
                                     (visibility :target-type
                                      container-product-visibility-filter
                                      :member-name "Visibility"))
                                    (:shape-name "ContainerProductFilters"))

(smithy/sdk/shapes:define-structure container-product-last-modified-date-filter
                                    common-lisp:nil
                                    ((date-range :target-type
                                      container-product-last-modified-date-filter-date-range
                                      :member-name "DateRange"))
                                    (:shape-name
                                     "ContainerProductLastModifiedDateFilter"))

(smithy/sdk/shapes:define-structure
 container-product-last-modified-date-filter-date-range common-lisp:nil
 ((after-value :target-type date-time-iso8601 :member-name "AfterValue")
  (before-value :target-type date-time-iso8601 :member-name "BeforeValue"))
 (:shape-name "ContainerProductLastModifiedDateFilterDateRange"))

(smithy/sdk/shapes:define-structure container-product-sort common-lisp:nil
                                    ((sort-by :target-type
                                      container-product-sort-by :member-name
                                      "SortBy")
                                     (sort-order :target-type sort-order
                                      :member-name "SortOrder"))
                                    (:shape-name "ContainerProductSort"))

(smithy/sdk/shapes:define-enum container-product-sort-by
    common-lisp:nil
  (:entity-id "EntityId")
  (:last-modified-date "LastModifiedDate")
  (:product-title "ProductTitle")
  (:visibility "Visibility"))

(smithy/sdk/shapes:define-structure container-product-summary common-lisp:nil
                                    ((product-title :target-type
                                      container-product-title-string
                                      :member-name "ProductTitle")
                                     (visibility :target-type
                                      container-product-visibility-string
                                      :member-name "Visibility"))
                                    (:shape-name "ContainerProductSummary"))

(smithy/sdk/shapes:define-structure container-product-title-filter
                                    common-lisp:nil
                                    ((value-list :target-type
                                      container-product-title-filter-value-list
                                      :member-name "ValueList")
                                     (wild-card-value :target-type
                                      container-product-title-string
                                      :member-name "WildCardValue"))
                                    (:shape-name "ContainerProductTitleFilter"))

(smithy/sdk/shapes:define-list container-product-title-filter-value-list
                               :member container-product-title-string)

(smithy/sdk/shapes:define-type container-product-title-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure container-product-visibility-filter
                                    common-lisp:nil
                                    ((value-list :target-type
                                      container-product-visibility-filter-value-list
                                      :member-name "ValueList"))
                                    (:shape-name
                                     "ContainerProductVisibilityFilter"))

(smithy/sdk/shapes:define-list container-product-visibility-filter-value-list
                               :member container-product-visibility-string)

(smithy/sdk/shapes:define-enum container-product-visibility-string
    common-lisp:nil
  (:limited "Limited")
  (:public "Public")
  (:restricted "Restricted")
  (:draft "Draft"))

(smithy/sdk/shapes:define-structure data-product-entity-id-filter
                                    common-lisp:nil
                                    ((value-list :target-type
                                      data-product-entity-id-filter-value-list
                                      :member-name "ValueList"))
                                    (:shape-name "DataProductEntityIdFilter"))

(smithy/sdk/shapes:define-list data-product-entity-id-filter-value-list :member
                               data-product-entity-id-string)

(smithy/sdk/shapes:define-type data-product-entity-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-product-filters common-lisp:nil
                                    ((entity-id :target-type
                                      data-product-entity-id-filter
                                      :member-name "EntityId")
                                     (product-title :target-type
                                      data-product-title-filter :member-name
                                      "ProductTitle")
                                     (visibility :target-type
                                      data-product-visibility-filter
                                      :member-name "Visibility")
                                     (last-modified-date :target-type
                                      data-product-last-modified-date-filter
                                      :member-name "LastModifiedDate"))
                                    (:shape-name "DataProductFilters"))

(smithy/sdk/shapes:define-structure data-product-last-modified-date-filter
                                    common-lisp:nil
                                    ((date-range :target-type
                                      data-product-last-modified-date-filter-date-range
                                      :member-name "DateRange"))
                                    (:shape-name
                                     "DataProductLastModifiedDateFilter"))

(smithy/sdk/shapes:define-structure
 data-product-last-modified-date-filter-date-range common-lisp:nil
 ((after-value :target-type date-time-iso8601 :member-name "AfterValue")
  (before-value :target-type date-time-iso8601 :member-name "BeforeValue"))
 (:shape-name "DataProductLastModifiedDateFilterDateRange"))

(smithy/sdk/shapes:define-structure data-product-sort common-lisp:nil
                                    ((sort-by :target-type data-product-sort-by
                                      :member-name "SortBy")
                                     (sort-order :target-type sort-order
                                      :member-name "SortOrder"))
                                    (:shape-name "DataProductSort"))

(smithy/sdk/shapes:define-enum data-product-sort-by
    common-lisp:nil
  (:entity-id "EntityId")
  (:product-title "ProductTitle")
  (:visibility "Visibility")
  (:last-modified-date "LastModifiedDate"))

(smithy/sdk/shapes:define-structure data-product-summary common-lisp:nil
                                    ((product-title :target-type
                                      data-product-title-string :member-name
                                      "ProductTitle")
                                     (visibility :target-type
                                      data-product-visibility-string
                                      :member-name "Visibility"))
                                    (:shape-name "DataProductSummary"))

(smithy/sdk/shapes:define-structure data-product-title-filter common-lisp:nil
                                    ((value-list :target-type
                                      data-product-title-filter-value-list
                                      :member-name "ValueList")
                                     (wild-card-value :target-type
                                      data-product-title-string :member-name
                                      "WildCardValue"))
                                    (:shape-name "DataProductTitleFilter"))

(smithy/sdk/shapes:define-list data-product-title-filter-value-list :member
                               data-product-title-string)

(smithy/sdk/shapes:define-type data-product-title-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure data-product-visibility-filter
                                    common-lisp:nil
                                    ((value-list :target-type
                                      data-product-visibility-filter-value-list
                                      :member-name "ValueList"))
                                    (:shape-name "DataProductVisibilityFilter"))

(smithy/sdk/shapes:define-list data-product-visibility-filter-value-list
                               :member data-product-visibility-string)

(smithy/sdk/shapes:define-enum data-product-visibility-string
    common-lisp:nil
  (:limited "Limited")
  (:public "Public")
  (:restricted "Restricted")
  (:unavailable "Unavailable")
  (:draft "Draft"))

(smithy/sdk/shapes:define-type date-time-iso8601 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-query "resourceArn"))
                                (:shape-name "DeleteResourcePolicyRequest"))

(smithy/sdk/shapes:define-output delete-resource-policy-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteResourcePolicyResponse"))

(smithy/sdk/shapes:define-input describe-change-set-request common-lisp:nil
                                ((catalog :target-type catalog :required
                                  common-lisp:t :member-name "Catalog"
                                  :http-query "catalog")
                                 (change-set-id :target-type resource-id
                                  :required common-lisp:t :member-name
                                  "ChangeSetId" :http-query "changeSetId"))
                                (:shape-name "DescribeChangeSetRequest"))

(smithy/sdk/shapes:define-output describe-change-set-response common-lisp:nil
                                 ((change-set-id :target-type resource-id
                                   :member-name "ChangeSetId")
                                  (change-set-arn :target-type arn :member-name
                                   "ChangeSetArn")
                                  (change-set-name :target-type change-set-name
                                   :member-name "ChangeSetName")
                                  (intent :target-type intent :member-name
                                   "Intent")
                                  (start-time :target-type date-time-iso8601
                                   :member-name "StartTime")
                                  (end-time :target-type date-time-iso8601
                                   :member-name "EndTime")
                                  (status :target-type change-status
                                   :member-name "Status")
                                  (failure-code :target-type failure-code
                                   :member-name "FailureCode")
                                  (failure-description :target-type
                                   exception-message-content :member-name
                                   "FailureDescription")
                                  (change-set :target-type
                                   change-set-description :member-name
                                   "ChangeSet"))
                                 (:shape-name "DescribeChangeSetResponse"))

(smithy/sdk/shapes:define-input describe-entity-request common-lisp:nil
                                ((catalog :target-type catalog :required
                                  common-lisp:t :member-name "Catalog"
                                  :http-query "catalog")
                                 (entity-id :target-type resource-id :required
                                  common-lisp:t :member-name "EntityId"
                                  :http-query "entityId"))
                                (:shape-name "DescribeEntityRequest"))

(smithy/sdk/shapes:define-output describe-entity-response common-lisp:nil
                                 ((entity-type :target-type entity-type
                                   :member-name "EntityType")
                                  (entity-identifier :target-type identifier
                                   :member-name "EntityIdentifier")
                                  (entity-arn :target-type arn :member-name
                                   "EntityArn")
                                  (last-modified-date :target-type
                                   date-time-iso8601 :member-name
                                   "LastModifiedDate")
                                  (details :target-type json :member-name
                                   "Details")
                                  (details-document :target-type
                                   json-document-type :member-name
                                   "DetailsDocument"))
                                 (:shape-name "DescribeEntityResponse"))

(smithy/sdk/shapes:define-structure entity common-lisp:nil
                                    ((type :target-type entity-type :required
                                      common-lisp:t :member-name "Type")
                                     (identifier :target-type identifier
                                      :member-name "Identifier"))
                                    (:shape-name "Entity"))

(smithy/sdk/shapes:define-structure entity-detail common-lisp:nil
                                    ((entity-type :target-type entity-type
                                      :member-name "EntityType")
                                     (entity-arn :target-type arn :member-name
                                      "EntityArn")
                                     (entity-identifier :target-type identifier
                                      :member-name "EntityIdentifier")
                                     (last-modified-date :target-type
                                      date-time-iso8601 :member-name
                                      "LastModifiedDate")
                                     (details-document :target-type
                                      json-document-type :member-name
                                      "DetailsDocument"))
                                    (:shape-name "EntityDetail"))

(smithy/sdk/shapes:define-map entity-details :key entity-id :value
                              entity-detail)

(smithy/sdk/shapes:define-type entity-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-name-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure entity-request common-lisp:nil
                                    ((catalog :target-type catalog :required
                                      common-lisp:t :member-name "Catalog")
                                     (entity-id :target-type entity-id
                                      :required common-lisp:t :member-name
                                      "EntityId"))
                                    (:shape-name "EntityRequest"))

(smithy/sdk/shapes:define-list entity-request-list :member entity-request)

(smithy/sdk/shapes:define-structure entity-summary common-lisp:nil
                                    ((name :target-type entity-name-string
                                      :member-name "Name")
                                     (entity-type :target-type entity-type
                                      :member-name "EntityType")
                                     (entity-id :target-type resource-id
                                      :member-name "EntityId")
                                     (entity-arn :target-type arn :member-name
                                      "EntityArn")
                                     (last-modified-date :target-type
                                      date-time-iso8601 :member-name
                                      "LastModifiedDate")
                                     (visibility :target-type visibility-value
                                      :member-name "Visibility")
                                     (ami-product-summary :target-type
                                      ami-product-summary :member-name
                                      "AmiProductSummary")
                                     (container-product-summary :target-type
                                      container-product-summary :member-name
                                      "ContainerProductSummary")
                                     (data-product-summary :target-type
                                      data-product-summary :member-name
                                      "DataProductSummary")
                                     (saa-sproduct-summary :target-type
                                      saa-sproduct-summary :member-name
                                      "SaaSProductSummary")
                                     (offer-summary :target-type offer-summary
                                      :member-name "OfferSummary")
                                     (resale-authorization-summary :target-type
                                      resale-authorization-summary :member-name
                                      "ResaleAuthorizationSummary")
                                     (machine-learning-product-summary
                                      :target-type
                                      machine-learning-product-summary
                                      :member-name
                                      "MachineLearningProductSummary"))
                                    (:shape-name "EntitySummary"))

(smithy/sdk/shapes:define-list entity-summary-list :member entity-summary)

(smithy/sdk/shapes:define-type entity-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union entity-type-filters common-lisp:nil
                                ((data-product-filters :target-type
                                  data-product-filters :member-name
                                  "DataProductFilters")
                                 (saa-sproduct-filters :target-type
                                  saa-sproduct-filters :member-name
                                  "SaaSProductFilters")
                                 (ami-product-filters :target-type
                                  ami-product-filters :member-name
                                  "AmiProductFilters")
                                 (offer-filters :target-type offer-filters
                                  :member-name "OfferFilters")
                                 (container-product-filters :target-type
                                  container-product-filters :member-name
                                  "ContainerProductFilters")
                                 (resale-authorization-filters :target-type
                                  resale-authorization-filters :member-name
                                  "ResaleAuthorizationFilters")
                                 (machine-learning-product-filters :target-type
                                  machine-learning-product-filters :member-name
                                  "MachineLearningProductFilters"))
                                (:shape-name "EntityTypeFilters"))

(smithy/sdk/shapes:define-union entity-type-sort common-lisp:nil
                                ((data-product-sort :target-type
                                  data-product-sort :member-name
                                  "DataProductSort")
                                 (saa-sproduct-sort :target-type
                                  saa-sproduct-sort :member-name
                                  "SaaSProductSort")
                                 (ami-product-sort :target-type
                                  ami-product-sort :member-name
                                  "AmiProductSort")
                                 (offer-sort :target-type offer-sort
                                  :member-name "OfferSort")
                                 (container-product-sort :target-type
                                  container-product-sort :member-name
                                  "ContainerProductSort")
                                 (resale-authorization-sort :target-type
                                  resale-authorization-sort :member-name
                                  "ResaleAuthorizationSort")
                                 (machine-learning-product-sort :target-type
                                  machine-learning-product-sort :member-name
                                  "MachineLearningProductSort"))
                                (:shape-name "EntityTypeSort"))

(smithy/sdk/shapes:define-type error-code-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure error-detail common-lisp:nil
                                    ((error-code :target-type error-code-string
                                      :member-name "ErrorCode")
                                     (error-message :target-type
                                      exception-message-content :member-name
                                      "ErrorMessage"))
                                    (:shape-name "ErrorDetail"))

(smithy/sdk/shapes:define-list error-detail-list :member error-detail)

(smithy/sdk/shapes:define-map errors :key entity-id :value
                              batch-describe-error-detail)

(smithy/sdk/shapes:define-type exception-message-content
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum failure-code
    common-lisp:nil
  (:client-error "CLIENT_ERROR")
  (:server-fault "SERVER_FAULT"))

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((name :target-type filter-name
                                      :member-name "Name")
                                     (value-list :target-type value-list
                                      :member-name "ValueList"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-list filter-list :member filter)

(smithy/sdk/shapes:define-type filter-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-value-content
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn" :http-query "resourceArn"))
                                (:shape-name "GetResourcePolicyRequest"))

(smithy/sdk/shapes:define-output get-resource-policy-response common-lisp:nil
                                 ((policy :target-type resource-policy-json
                                   :member-name "Policy"))
                                 (:shape-name "GetResourcePolicyResponse"))

(smithy/sdk/shapes:define-type identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum intent
    common-lisp:nil
  (:validate "VALIDATE")
  (:apply "APPLY"))

(smithy/sdk/shapes:define-error internal-service-exception common-lisp:nil
                                ((message :target-type
                                  exception-message-content :member-name
                                  "Message"))
                                (:shape-name "InternalServiceException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type json smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type json-document-type
                               smithy/sdk/smithy-types:document)

(smithy/sdk/shapes:define-type list-change-sets-max-result-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-change-sets-request common-lisp:nil
                                ((catalog :target-type catalog :required
                                  common-lisp:t :member-name "Catalog")
                                 (filter-list :target-type filter-list
                                  :member-name "FilterList")
                                 (sort :target-type sort :member-name "Sort")
                                 (max-results :target-type
                                  list-change-sets-max-result-integer
                                  :member-name "MaxResults")
                                 (next-token :target-type next-token
                                  :member-name "NextToken"))
                                (:shape-name "ListChangeSetsRequest"))

(smithy/sdk/shapes:define-output list-change-sets-response common-lisp:nil
                                 ((change-set-summary-list :target-type
                                   change-set-summary-list :member-name
                                   "ChangeSetSummaryList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListChangeSetsResponse"))

(smithy/sdk/shapes:define-type list-entities-max-result-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-entities-request common-lisp:nil
                                ((catalog :target-type catalog :required
                                  common-lisp:t :member-name "Catalog")
                                 (entity-type :target-type entity-type
                                  :required common-lisp:t :member-name
                                  "EntityType")
                                 (filter-list :target-type filter-list
                                  :member-name "FilterList")
                                 (sort :target-type sort :member-name "Sort")
                                 (next-token :target-type next-token
                                  :member-name "NextToken")
                                 (max-results :target-type
                                  list-entities-max-result-integer :member-name
                                  "MaxResults")
                                 (ownership-type :target-type ownership-type
                                  :member-name "OwnershipType")
                                 (entity-type-filters :target-type
                                  entity-type-filters :member-name
                                  "EntityTypeFilters")
                                 (entity-type-sort :target-type
                                  entity-type-sort :member-name
                                  "EntityTypeSort"))
                                (:shape-name "ListEntitiesRequest"))

(smithy/sdk/shapes:define-output list-entities-response common-lisp:nil
                                 ((entity-summary-list :target-type
                                   entity-summary-list :member-name
                                   "EntitySummaryList")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name "ListEntitiesResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((resource-arn :target-type resource-arn
                                   :member-name "ResourceArn")
                                  (tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-structure machine-learning-product-entity-id-filter
                                    common-lisp:nil
                                    ((value-list :target-type
                                      machine-learning-product-entity-id-filter-value-list
                                      :member-name "ValueList"))
                                    (:shape-name
                                     "MachineLearningProductEntityIdFilter"))

(smithy/sdk/shapes:define-list
 machine-learning-product-entity-id-filter-value-list :member
 machine-learning-product-entity-id-string)

(smithy/sdk/shapes:define-type machine-learning-product-entity-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure machine-learning-product-filters
                                    common-lisp:nil
                                    ((entity-id :target-type
                                      machine-learning-product-entity-id-filter
                                      :member-name "EntityId")
                                     (last-modified-date :target-type
                                      machine-learning-product-last-modified-date-filter
                                      :member-name "LastModifiedDate")
                                     (product-title :target-type
                                      machine-learning-product-title-filter
                                      :member-name "ProductTitle")
                                     (visibility :target-type
                                      machine-learning-product-visibility-filter
                                      :member-name "Visibility"))
                                    (:shape-name
                                     "MachineLearningProductFilters"))

(smithy/sdk/shapes:define-structure
 machine-learning-product-last-modified-date-filter common-lisp:nil
 ((date-range :target-type
   machine-learning-product-last-modified-date-filter-date-range :member-name
   "DateRange"))
 (:shape-name "MachineLearningProductLastModifiedDateFilter"))

(smithy/sdk/shapes:define-structure
 machine-learning-product-last-modified-date-filter-date-range common-lisp:nil
 ((after-value :target-type date-time-iso8601 :member-name "AfterValue")
  (before-value :target-type date-time-iso8601 :member-name "BeforeValue"))
 (:shape-name "MachineLearningProductLastModifiedDateFilterDateRange"))

(smithy/sdk/shapes:define-structure machine-learning-product-sort
                                    common-lisp:nil
                                    ((sort-by :target-type
                                      machine-learning-product-sort-by
                                      :member-name "SortBy")
                                     (sort-order :target-type sort-order
                                      :member-name "SortOrder"))
                                    (:shape-name "MachineLearningProductSort"))

(smithy/sdk/shapes:define-enum machine-learning-product-sort-by
    common-lisp:nil
  (:entity-id "EntityId")
  (:last-modified-date "LastModifiedDate")
  (:product-title "ProductTitle")
  (:visibility "Visibility"))

(smithy/sdk/shapes:define-structure machine-learning-product-summary
                                    common-lisp:nil
                                    ((product-title :target-type
                                      machine-learning-product-title-string
                                      :member-name "ProductTitle")
                                     (visibility :target-type
                                      machine-learning-product-visibility-string
                                      :member-name "Visibility"))
                                    (:shape-name
                                     "MachineLearningProductSummary"))

(smithy/sdk/shapes:define-structure machine-learning-product-title-filter
                                    common-lisp:nil
                                    ((value-list :target-type
                                      machine-learning-product-title-filter-value-list
                                      :member-name "ValueList")
                                     (wild-card-value :target-type
                                      machine-learning-product-title-string
                                      :member-name "WildCardValue"))
                                    (:shape-name
                                     "MachineLearningProductTitleFilter"))

(smithy/sdk/shapes:define-list machine-learning-product-title-filter-value-list
                               :member machine-learning-product-title-string)

(smithy/sdk/shapes:define-type machine-learning-product-title-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure machine-learning-product-visibility-filter
                                    common-lisp:nil
                                    ((value-list :target-type
                                      machine-learning-product-visibility-filter-value-list
                                      :member-name "ValueList"))
                                    (:shape-name
                                     "MachineLearningProductVisibilityFilter"))

(smithy/sdk/shapes:define-list
 machine-learning-product-visibility-filter-value-list :member
 machine-learning-product-visibility-string)

(smithy/sdk/shapes:define-enum machine-learning-product-visibility-string
    common-lisp:nil
  (:limited "Limited")
  (:public "Public")
  (:restricted "Restricted")
  (:draft "Draft"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure offer-availability-end-date-filter
                                    common-lisp:nil
                                    ((date-range :target-type
                                      offer-availability-end-date-filter-date-range
                                      :member-name "DateRange"))
                                    (:shape-name
                                     "OfferAvailabilityEndDateFilter"))

(smithy/sdk/shapes:define-structure
 offer-availability-end-date-filter-date-range common-lisp:nil
 ((after-value :target-type date-time-iso8601 :member-name "AfterValue")
  (before-value :target-type date-time-iso8601 :member-name "BeforeValue"))
 (:shape-name "OfferAvailabilityEndDateFilterDateRange"))

(smithy/sdk/shapes:define-structure offer-buyer-accounts-filter common-lisp:nil
                                    ((wild-card-value :target-type
                                      offer-buyer-accounts-filter-wildcard
                                      :member-name "WildCardValue"))
                                    (:shape-name "OfferBuyerAccountsFilter"))

(smithy/sdk/shapes:define-type offer-buyer-accounts-filter-wildcard
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list offer-buyer-accounts-list :member
                               offer-buyer-accounts-string)

(smithy/sdk/shapes:define-type offer-buyer-accounts-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure offer-entity-id-filter common-lisp:nil
                                    ((value-list :target-type
                                      offer-entity-id-filter-value-list
                                      :member-name "ValueList"))
                                    (:shape-name "OfferEntityIdFilter"))

(smithy/sdk/shapes:define-list offer-entity-id-filter-value-list :member
                               offer-entity-id-string)

(smithy/sdk/shapes:define-type offer-entity-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure offer-filters common-lisp:nil
                                    ((entity-id :target-type
                                      offer-entity-id-filter :member-name
                                      "EntityId")
                                     (name :target-type offer-name-filter
                                      :member-name "Name")
                                     (product-id :target-type
                                      offer-product-id-filter :member-name
                                      "ProductId")
                                     (resale-authorization-id :target-type
                                      offer-resale-authorization-id-filter
                                      :member-name "ResaleAuthorizationId")
                                     (release-date :target-type
                                      offer-release-date-filter :member-name
                                      "ReleaseDate")
                                     (availability-end-date :target-type
                                      offer-availability-end-date-filter
                                      :member-name "AvailabilityEndDate")
                                     (buyer-accounts :target-type
                                      offer-buyer-accounts-filter :member-name
                                      "BuyerAccounts")
                                     (state :target-type offer-state-filter
                                      :member-name "State")
                                     (targeting :target-type
                                      offer-targeting-filter :member-name
                                      "Targeting")
                                     (last-modified-date :target-type
                                      offer-last-modified-date-filter
                                      :member-name "LastModifiedDate"))
                                    (:shape-name "OfferFilters"))

(smithy/sdk/shapes:define-structure offer-last-modified-date-filter
                                    common-lisp:nil
                                    ((date-range :target-type
                                      offer-last-modified-date-filter-date-range
                                      :member-name "DateRange"))
                                    (:shape-name "OfferLastModifiedDateFilter"))

(smithy/sdk/shapes:define-structure offer-last-modified-date-filter-date-range
                                    common-lisp:nil
                                    ((after-value :target-type
                                      date-time-iso8601 :member-name
                                      "AfterValue")
                                     (before-value :target-type
                                      date-time-iso8601 :member-name
                                      "BeforeValue"))
                                    (:shape-name
                                     "OfferLastModifiedDateFilterDateRange"))

(smithy/sdk/shapes:define-structure offer-name-filter common-lisp:nil
                                    ((value-list :target-type
                                      offer-name-filter-value-list :member-name
                                      "ValueList")
                                     (wild-card-value :target-type
                                      offer-name-string :member-name
                                      "WildCardValue"))
                                    (:shape-name "OfferNameFilter"))

(smithy/sdk/shapes:define-list offer-name-filter-value-list :member
                               offer-name-string)

(smithy/sdk/shapes:define-type offer-name-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure offer-product-id-filter common-lisp:nil
                                    ((value-list :target-type
                                      offer-product-id-filter-value-list
                                      :member-name "ValueList"))
                                    (:shape-name "OfferProductIdFilter"))

(smithy/sdk/shapes:define-list offer-product-id-filter-value-list :member
                               offer-product-id-string)

(smithy/sdk/shapes:define-type offer-product-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure offer-release-date-filter common-lisp:nil
                                    ((date-range :target-type
                                      offer-release-date-filter-date-range
                                      :member-name "DateRange"))
                                    (:shape-name "OfferReleaseDateFilter"))

(smithy/sdk/shapes:define-structure offer-release-date-filter-date-range
                                    common-lisp:nil
                                    ((after-value :target-type
                                      date-time-iso8601 :member-name
                                      "AfterValue")
                                     (before-value :target-type
                                      date-time-iso8601 :member-name
                                      "BeforeValue"))
                                    (:shape-name
                                     "OfferReleaseDateFilterDateRange"))

(smithy/sdk/shapes:define-structure offer-resale-authorization-id-filter
                                    common-lisp:nil
                                    ((value-list :target-type
                                      offer-resale-authorization-id-filter-value-list
                                      :member-name "ValueList"))
                                    (:shape-name
                                     "OfferResaleAuthorizationIdFilter"))

(smithy/sdk/shapes:define-list offer-resale-authorization-id-filter-value-list
                               :member offer-resale-authorization-id-string)

(smithy/sdk/shapes:define-type offer-resale-authorization-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure offer-sort common-lisp:nil
                                    ((sort-by :target-type offer-sort-by
                                      :member-name "SortBy")
                                     (sort-order :target-type sort-order
                                      :member-name "SortOrder"))
                                    (:shape-name "OfferSort"))

(smithy/sdk/shapes:define-enum offer-sort-by
    common-lisp:nil
  (:entity-id "EntityId")
  (:name "Name")
  (:product-id "ProductId")
  (:resale-authorization-id "ResaleAuthorizationId")
  (:release-date "ReleaseDate")
  (:availability-end-date "AvailabilityEndDate")
  (:buyer-accounts "BuyerAccounts")
  (:state "State")
  (:targeting "Targeting")
  (:last-modified-date "LastModifiedDate"))

(smithy/sdk/shapes:define-structure offer-state-filter common-lisp:nil
                                    ((value-list :target-type
                                      offer-state-filter-value-list
                                      :member-name "ValueList"))
                                    (:shape-name "OfferStateFilter"))

(smithy/sdk/shapes:define-list offer-state-filter-value-list :member
                               offer-state-string)

(smithy/sdk/shapes:define-enum offer-state-string
    common-lisp:nil
  (:draft "Draft")
  (:released "Released"))

(smithy/sdk/shapes:define-structure offer-summary common-lisp:nil
                                    ((name :target-type offer-name-string
                                      :member-name "Name")
                                     (product-id :target-type
                                      offer-product-id-string :member-name
                                      "ProductId")
                                     (resale-authorization-id :target-type
                                      offer-resale-authorization-id-string
                                      :member-name "ResaleAuthorizationId")
                                     (release-date :target-type
                                      date-time-iso8601 :member-name
                                      "ReleaseDate")
                                     (availability-end-date :target-type
                                      date-time-iso8601 :member-name
                                      "AvailabilityEndDate")
                                     (buyer-accounts :target-type
                                      offer-buyer-accounts-list :member-name
                                      "BuyerAccounts")
                                     (state :target-type offer-state-string
                                      :member-name "State")
                                     (targeting :target-type
                                      offer-targeting-list :member-name
                                      "Targeting"))
                                    (:shape-name "OfferSummary"))

(smithy/sdk/shapes:define-structure offer-targeting-filter common-lisp:nil
                                    ((value-list :target-type
                                      offer-targeting-filter-value-list
                                      :member-name "ValueList"))
                                    (:shape-name "OfferTargetingFilter"))

(smithy/sdk/shapes:define-list offer-targeting-filter-value-list :member
                               offer-targeting-string)

(smithy/sdk/shapes:define-list offer-targeting-list :member
                               offer-targeting-string)

(smithy/sdk/shapes:define-enum offer-targeting-string
    common-lisp:nil
  (:buyer-accounts "BuyerAccounts")
  (:participating-programs "ParticipatingPrograms")
  (:country-codes "CountryCodes")
  (:none "None"))

(smithy/sdk/shapes:define-enum ownership-type
    common-lisp:nil
  (:self "SELF")
  (:shared "SHARED"))

(smithy/sdk/shapes:define-input put-resource-policy-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (policy :target-type resource-policy-json
                                  :required common-lisp:t :member-name
                                  "Policy"))
                                (:shape-name "PutResourcePolicyRequest"))

(smithy/sdk/shapes:define-output put-resource-policy-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "PutResourcePolicyResponse"))

(smithy/sdk/shapes:define-list requested-change-list :member change)

(smithy/sdk/shapes:define-structure
 resale-authorization-availability-end-date-filter common-lisp:nil
 ((date-range :target-type
   resale-authorization-availability-end-date-filter-date-range :member-name
   "DateRange")
  (value-list :target-type
   resale-authorization-availability-end-date-filter-value-list :member-name
   "ValueList"))
 (:shape-name "ResaleAuthorizationAvailabilityEndDateFilter"))

(smithy/sdk/shapes:define-structure
 resale-authorization-availability-end-date-filter-date-range common-lisp:nil
 ((after-value :target-type date-time-iso8601 :member-name "AfterValue")
  (before-value :target-type date-time-iso8601 :member-name "BeforeValue"))
 (:shape-name "ResaleAuthorizationAvailabilityEndDateFilterDateRange"))

(smithy/sdk/shapes:define-list
 resale-authorization-availability-end-date-filter-value-list :member
 date-time-iso8601)

(smithy/sdk/shapes:define-structure resale-authorization-created-date-filter
                                    common-lisp:nil
                                    ((date-range :target-type
                                      resale-authorization-created-date-filter-date-range
                                      :member-name "DateRange")
                                     (value-list :target-type
                                      resale-authorization-created-date-filter-value-list
                                      :member-name "ValueList"))
                                    (:shape-name
                                     "ResaleAuthorizationCreatedDateFilter"))

(smithy/sdk/shapes:define-structure
 resale-authorization-created-date-filter-date-range common-lisp:nil
 ((after-value :target-type date-time-iso8601 :member-name "AfterValue")
  (before-value :target-type date-time-iso8601 :member-name "BeforeValue"))
 (:shape-name "ResaleAuthorizationCreatedDateFilterDateRange"))

(smithy/sdk/shapes:define-list
 resale-authorization-created-date-filter-value-list :member date-time-iso8601)

(smithy/sdk/shapes:define-structure resale-authorization-entity-id-filter
                                    common-lisp:nil
                                    ((value-list :target-type
                                      resale-authorization-entity-id-filter-value-list
                                      :member-name "ValueList"))
                                    (:shape-name
                                     "ResaleAuthorizationEntityIdFilter"))

(smithy/sdk/shapes:define-list resale-authorization-entity-id-filter-value-list
                               :member resale-authorization-entity-id-string)

(smithy/sdk/shapes:define-type resale-authorization-entity-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resale-authorization-filters
                                    common-lisp:nil
                                    ((entity-id :target-type
                                      resale-authorization-entity-id-filter
                                      :member-name "EntityId")
                                     (name :target-type
                                      resale-authorization-name-filter
                                      :member-name "Name")
                                     (product-id :target-type
                                      resale-authorization-product-id-filter
                                      :member-name "ProductId")
                                     (created-date :target-type
                                      resale-authorization-created-date-filter
                                      :member-name "CreatedDate")
                                     (availability-end-date :target-type
                                      resale-authorization-availability-end-date-filter
                                      :member-name "AvailabilityEndDate")
                                     (manufacturer-account-id :target-type
                                      resale-authorization-manufacturer-account-id-filter
                                      :member-name "ManufacturerAccountId")
                                     (product-name :target-type
                                      resale-authorization-product-name-filter
                                      :member-name "ProductName")
                                     (manufacturer-legal-name :target-type
                                      resale-authorization-manufacturer-legal-name-filter
                                      :member-name "ManufacturerLegalName")
                                     (reseller-account-id :target-type
                                      resale-authorization-reseller-account-idfilter
                                      :member-name "ResellerAccountID")
                                     (reseller-legal-name :target-type
                                      resale-authorization-reseller-legal-name-filter
                                      :member-name "ResellerLegalName")
                                     (status :target-type
                                      resale-authorization-status-filter
                                      :member-name "Status")
                                     (offer-extended-status :target-type
                                      resale-authorization-offer-extended-status-filter
                                      :member-name "OfferExtendedStatus")
                                     (last-modified-date :target-type
                                      resale-authorization-last-modified-date-filter
                                      :member-name "LastModifiedDate"))
                                    (:shape-name "ResaleAuthorizationFilters"))

(smithy/sdk/shapes:define-structure
 resale-authorization-last-modified-date-filter common-lisp:nil
 ((date-range :target-type
   resale-authorization-last-modified-date-filter-date-range :member-name
   "DateRange"))
 (:shape-name "ResaleAuthorizationLastModifiedDateFilter"))

(smithy/sdk/shapes:define-structure
 resale-authorization-last-modified-date-filter-date-range common-lisp:nil
 ((after-value :target-type date-time-iso8601 :member-name "AfterValue")
  (before-value :target-type date-time-iso8601 :member-name "BeforeValue"))
 (:shape-name "ResaleAuthorizationLastModifiedDateFilterDateRange"))

(smithy/sdk/shapes:define-structure
 resale-authorization-manufacturer-account-id-filter common-lisp:nil
 ((value-list :target-type
   resale-authorization-manufacturer-account-id-filter-value-list :member-name
   "ValueList")
  (wild-card-value :target-type
   resale-authorization-manufacturer-account-id-filter-wildcard :member-name
   "WildCardValue"))
 (:shape-name "ResaleAuthorizationManufacturerAccountIdFilter"))

(smithy/sdk/shapes:define-list
 resale-authorization-manufacturer-account-id-filter-value-list :member
 resale-authorization-manufacturer-account-id-string)

(smithy/sdk/shapes:define-type
 resale-authorization-manufacturer-account-id-filter-wildcard
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 resale-authorization-manufacturer-account-id-string
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 resale-authorization-manufacturer-legal-name-filter common-lisp:nil
 ((value-list :target-type
   resale-authorization-manufacturer-legal-name-filter-value-list :member-name
   "ValueList")
  (wild-card-value :target-type
   resale-authorization-manufacturer-legal-name-filter-wildcard :member-name
   "WildCardValue"))
 (:shape-name "ResaleAuthorizationManufacturerLegalNameFilter"))

(smithy/sdk/shapes:define-list
 resale-authorization-manufacturer-legal-name-filter-value-list :member
 resale-authorization-manufacturer-legal-name-string)

(smithy/sdk/shapes:define-type
 resale-authorization-manufacturer-legal-name-filter-wildcard
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type
 resale-authorization-manufacturer-legal-name-string
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resale-authorization-name-filter
                                    common-lisp:nil
                                    ((value-list :target-type
                                      resale-authorization-name-filter-value-list
                                      :member-name "ValueList")
                                     (wild-card-value :target-type
                                      resale-authorization-name-filter-wildcard
                                      :member-name "WildCardValue"))
                                    (:shape-name
                                     "ResaleAuthorizationNameFilter"))

(smithy/sdk/shapes:define-list resale-authorization-name-filter-value-list
                               :member resale-authorization-name-string)

(smithy/sdk/shapes:define-type resale-authorization-name-filter-wildcard
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resale-authorization-name-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 resale-authorization-offer-extended-status-filter common-lisp:nil
 ((value-list :target-type
   resale-authorization-offer-extended-status-filter-value-list :member-name
   "ValueList"))
 (:shape-name "ResaleAuthorizationOfferExtendedStatusFilter"))

(smithy/sdk/shapes:define-list
 resale-authorization-offer-extended-status-filter-value-list :member
 resale-authorization-offer-extended-status-string)

(smithy/sdk/shapes:define-type
 resale-authorization-offer-extended-status-string
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resale-authorization-product-id-filter
                                    common-lisp:nil
                                    ((value-list :target-type
                                      resale-authorization-product-id-filter-value-list
                                      :member-name "ValueList")
                                     (wild-card-value :target-type
                                      resale-authorization-product-id-filter-wildcard
                                      :member-name "WildCardValue"))
                                    (:shape-name
                                     "ResaleAuthorizationProductIdFilter"))

(smithy/sdk/shapes:define-list
 resale-authorization-product-id-filter-value-list :member
 resale-authorization-product-id-string)

(smithy/sdk/shapes:define-type resale-authorization-product-id-filter-wildcard
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resale-authorization-product-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resale-authorization-product-name-filter
                                    common-lisp:nil
                                    ((value-list :target-type
                                      resale-authorization-product-name-filter-value-list
                                      :member-name "ValueList")
                                     (wild-card-value :target-type
                                      resale-authorization-product-name-filter-wildcard
                                      :member-name "WildCardValue"))
                                    (:shape-name
                                     "ResaleAuthorizationProductNameFilter"))

(smithy/sdk/shapes:define-list
 resale-authorization-product-name-filter-value-list :member
 resale-authorization-product-name-string)

(smithy/sdk/shapes:define-type
 resale-authorization-product-name-filter-wildcard
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resale-authorization-product-name-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 resale-authorization-reseller-account-idfilter common-lisp:nil
 ((value-list :target-type
   resale-authorization-reseller-account-idfilter-value-list :member-name
   "ValueList")
  (wild-card-value :target-type
   resale-authorization-reseller-account-idfilter-wildcard :member-name
   "WildCardValue"))
 (:shape-name "ResaleAuthorizationResellerAccountIDFilter"))

(smithy/sdk/shapes:define-list
 resale-authorization-reseller-account-idfilter-value-list :member
 resale-authorization-reseller-account-idstring)

(smithy/sdk/shapes:define-type
 resale-authorization-reseller-account-idfilter-wildcard
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resale-authorization-reseller-account-idstring
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure
 resale-authorization-reseller-legal-name-filter common-lisp:nil
 ((value-list :target-type
   resale-authorization-reseller-legal-name-filter-value-list :member-name
   "ValueList")
  (wild-card-value :target-type
   resale-authorization-reseller-legal-name-filter-wildcard :member-name
   "WildCardValue"))
 (:shape-name "ResaleAuthorizationResellerLegalNameFilter"))

(smithy/sdk/shapes:define-list
 resale-authorization-reseller-legal-name-filter-value-list :member
 resale-authorization-reseller-legal-name-string)

(smithy/sdk/shapes:define-type
 resale-authorization-reseller-legal-name-filter-wildcard
 smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resale-authorization-reseller-legal-name-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure resale-authorization-sort common-lisp:nil
                                    ((sort-by :target-type
                                      resale-authorization-sort-by :member-name
                                      "SortBy")
                                     (sort-order :target-type sort-order
                                      :member-name "SortOrder"))
                                    (:shape-name "ResaleAuthorizationSort"))

(smithy/sdk/shapes:define-enum resale-authorization-sort-by
    common-lisp:nil
  (:entity-id "EntityId")
  (:name "Name")
  (:product-id "ProductId")
  (:product-name "ProductName")
  (:manufacturer-account-id "ManufacturerAccountId")
  (:manufacturer-legal-name "ManufacturerLegalName")
  (:reseller-account-id "ResellerAccountID")
  (:reseller-legal-name "ResellerLegalName")
  (:status "Status")
  (:offer-extended-status "OfferExtendedStatus")
  (:created-date "CreatedDate")
  (:availability-end-date "AvailabilityEndDate")
  (:last-modified-date "LastModifiedDate"))

(smithy/sdk/shapes:define-structure resale-authorization-status-filter
                                    common-lisp:nil
                                    ((value-list :target-type
                                      resale-authorization-status-filter-value-list
                                      :member-name "ValueList"))
                                    (:shape-name
                                     "ResaleAuthorizationStatusFilter"))

(smithy/sdk/shapes:define-list resale-authorization-status-filter-value-list
                               :member resale-authorization-status-string)

(smithy/sdk/shapes:define-enum resale-authorization-status-string
    common-lisp:nil
  (:draft "Draft")
  (:active "Active")
  (:restricted "Restricted"))

(smithy/sdk/shapes:define-structure resale-authorization-summary
                                    common-lisp:nil
                                    ((name :target-type
                                      resale-authorization-name-string
                                      :member-name "Name")
                                     (product-id :target-type
                                      resale-authorization-product-id-string
                                      :member-name "ProductId")
                                     (product-name :target-type
                                      resale-authorization-product-name-string
                                      :member-name "ProductName")
                                     (manufacturer-account-id :target-type
                                      resale-authorization-manufacturer-account-id-string
                                      :member-name "ManufacturerAccountId")
                                     (manufacturer-legal-name :target-type
                                      resale-authorization-manufacturer-legal-name-string
                                      :member-name "ManufacturerLegalName")
                                     (reseller-account-id :target-type
                                      resale-authorization-reseller-account-idstring
                                      :member-name "ResellerAccountID")
                                     (reseller-legal-name :target-type
                                      resale-authorization-reseller-legal-name-string
                                      :member-name "ResellerLegalName")
                                     (status :target-type
                                      resale-authorization-status-string
                                      :member-name "Status")
                                     (offer-extended-status :target-type
                                      resale-authorization-offer-extended-status-string
                                      :member-name "OfferExtendedStatus")
                                     (created-date :target-type
                                      date-time-iso8601 :member-name
                                      "CreatedDate")
                                     (availability-end-date :target-type
                                      date-time-iso8601 :member-name
                                      "AvailabilityEndDate"))
                                    (:shape-name "ResaleAuthorizationSummary"))

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-id-list :member resource-id)

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type
                                  exception-message-content :member-name
                                  "Message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 423))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type
                                  exception-message-content :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error resource-not-supported-exception
                                common-lisp:nil
                                ((message :target-type
                                  exception-message-content :member-name
                                  "Message"))
                                (:shape-name "ResourceNotSupportedException")
                                (:error-code 415))

(smithy/sdk/shapes:define-type resource-policy-json
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure saa-sproduct-entity-id-filter
                                    common-lisp:nil
                                    ((value-list :target-type
                                      saa-sproduct-entity-id-filter-value-list
                                      :member-name "ValueList"))
                                    (:shape-name "SaaSProductEntityIdFilter"))

(smithy/sdk/shapes:define-list saa-sproduct-entity-id-filter-value-list :member
                               saa-sproduct-entity-id-string)

(smithy/sdk/shapes:define-type saa-sproduct-entity-id-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure saa-sproduct-filters common-lisp:nil
                                    ((entity-id :target-type
                                      saa-sproduct-entity-id-filter
                                      :member-name "EntityId")
                                     (product-title :target-type
                                      saa-sproduct-title-filter :member-name
                                      "ProductTitle")
                                     (visibility :target-type
                                      saa-sproduct-visibility-filter
                                      :member-name "Visibility")
                                     (last-modified-date :target-type
                                      saa-sproduct-last-modified-date-filter
                                      :member-name "LastModifiedDate"))
                                    (:shape-name "SaaSProductFilters"))

(smithy/sdk/shapes:define-structure saa-sproduct-last-modified-date-filter
                                    common-lisp:nil
                                    ((date-range :target-type
                                      saa-sproduct-last-modified-date-filter-date-range
                                      :member-name "DateRange"))
                                    (:shape-name
                                     "SaaSProductLastModifiedDateFilter"))

(smithy/sdk/shapes:define-structure
 saa-sproduct-last-modified-date-filter-date-range common-lisp:nil
 ((after-value :target-type date-time-iso8601 :member-name "AfterValue")
  (before-value :target-type date-time-iso8601 :member-name "BeforeValue"))
 (:shape-name "SaaSProductLastModifiedDateFilterDateRange"))

(smithy/sdk/shapes:define-structure saa-sproduct-sort common-lisp:nil
                                    ((sort-by :target-type saa-sproduct-sort-by
                                      :member-name "SortBy")
                                     (sort-order :target-type sort-order
                                      :member-name "SortOrder"))
                                    (:shape-name "SaaSProductSort"))

(smithy/sdk/shapes:define-enum saa-sproduct-sort-by
    common-lisp:nil
  (:entity-id "EntityId")
  (:product-title "ProductTitle")
  (:visibility "Visibility")
  (:last-modified-date "LastModifiedDate"))

(smithy/sdk/shapes:define-structure saa-sproduct-summary common-lisp:nil
                                    ((product-title :target-type
                                      saa-sproduct-title-string :member-name
                                      "ProductTitle")
                                     (visibility :target-type
                                      saa-sproduct-visibility-string
                                      :member-name "Visibility"))
                                    (:shape-name "SaaSProductSummary"))

(smithy/sdk/shapes:define-structure saa-sproduct-title-filter common-lisp:nil
                                    ((value-list :target-type
                                      saa-sproduct-title-filter-value-list
                                      :member-name "ValueList")
                                     (wild-card-value :target-type
                                      saa-sproduct-title-string :member-name
                                      "WildCardValue"))
                                    (:shape-name "SaaSProductTitleFilter"))

(smithy/sdk/shapes:define-list saa-sproduct-title-filter-value-list :member
                               saa-sproduct-title-string)

(smithy/sdk/shapes:define-type saa-sproduct-title-string
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure saa-sproduct-visibility-filter
                                    common-lisp:nil
                                    ((value-list :target-type
                                      saa-sproduct-visibility-filter-value-list
                                      :member-name "ValueList"))
                                    (:shape-name "SaaSProductVisibilityFilter"))

(smithy/sdk/shapes:define-list saa-sproduct-visibility-filter-value-list
                               :member saa-sproduct-visibility-string)

(smithy/sdk/shapes:define-enum saa-sproduct-visibility-string
    common-lisp:nil
  (:limited "Limited")
  (:public "Public")
  (:restricted "Restricted")
  (:draft "Draft"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  exception-message-content :member-name
                                  "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure sort common-lisp:nil
                                    ((sort-by :target-type sort-by :member-name
                                      "SortBy")
                                     (sort-order :target-type sort-order
                                      :member-name "SortOrder"))
                                    (:shape-name "Sort"))

(smithy/sdk/shapes:define-type sort-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum sort-order
    common-lisp:nil
  (:ascending "ASCENDING")
  (:descending "DESCENDING"))

(smithy/sdk/shapes:define-input start-change-set-request common-lisp:nil
                                ((catalog :target-type catalog :required
                                  common-lisp:t :member-name "Catalog")
                                 (change-set :target-type requested-change-list
                                  :required common-lisp:t :member-name
                                  "ChangeSet")
                                 (change-set-name :target-type change-set-name
                                  :member-name "ChangeSetName")
                                 (client-request-token :target-type
                                  client-request-token :member-name
                                  "ClientRequestToken")
                                 (change-set-tags :target-type tag-list
                                  :member-name "ChangeSetTags")
                                 (intent :target-type intent :member-name
                                  "Intent"))
                                (:shape-name "StartChangeSetRequest"))

(smithy/sdk/shapes:define-output start-change-set-response common-lisp:nil
                                 ((change-set-id :target-type resource-id
                                   :member-name "ChangeSetId")
                                  (change-set-arn :target-type arn :member-name
                                   "ChangeSetArn"))
                                 (:shape-name "StartChangeSetResponse"))

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type
                                  exception-message-content :member-name
                                  "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "ResourceArn")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  exception-message-content :member-name
                                  "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 422))

(smithy/sdk/shapes:define-list value-list :member filter-value-content)

(smithy/sdk/shapes:define-type visibility-value smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation batch-describe-entities :shape-name
                                       "BatchDescribeEntities" :input
                                       batch-describe-entities-request :output
                                       batch-describe-entities-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/BatchDescribeEntities" :code 200)

(smithy/sdk/operation:define-operation cancel-change-set :shape-name
                                       "CancelChangeSet" :input
                                       cancel-change-set-request :output
                                       cancel-change-set-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PATCH" :uri "/CancelChangeSet"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-resource-policy :shape-name
                                       "DeleteResourcePolicy" :input
                                       delete-resource-policy-request :output
                                       delete-resource-policy-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/DeleteResourcePolicy" :code 200)

(smithy/sdk/operation:define-operation describe-change-set :shape-name
                                       "DescribeChangeSet" :input
                                       describe-change-set-request :output
                                       describe-change-set-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/DescribeChangeSet"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-entity :shape-name
                                       "DescribeEntity" :input
                                       describe-entity-request :output
                                       describe-entity-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        resource-not-supported-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/DescribeEntity"
                                       :code 200)

(smithy/sdk/operation:define-operation get-resource-policy :shape-name
                                       "GetResourcePolicy" :input
                                       get-resource-policy-request :output
                                       get-resource-policy-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/GetResourcePolicy"
                                       :code 200)

(smithy/sdk/operation:define-operation list-change-sets :shape-name
                                       "ListChangeSets" :input
                                       list-change-sets-request :output
                                       list-change-sets-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListChangeSets"
                                       :code 200)

(smithy/sdk/operation:define-operation list-entities :shape-name "ListEntities"
                                       :input list-entities-request :output
                                       list-entities-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/ListEntities"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/ListTagsForResource" :code 200)

(smithy/sdk/operation:define-operation put-resource-policy :shape-name
                                       "PutResourcePolicy" :input
                                       put-resource-policy-request :output
                                       put-resource-policy-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/PutResourcePolicy"
                                       :code 200)

(smithy/sdk/operation:define-operation start-change-set :shape-name
                                       "StartChangeSet" :input
                                       start-change-set-request :output
                                       start-change-set-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/StartChangeSet"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/TagResource" :code
                                       200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-service-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/UntagResource"
                                       :code 200)
