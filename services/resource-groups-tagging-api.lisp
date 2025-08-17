(uiop/package:define-package #:pira/resource-groups-tagging-api (:use)
                             (:export #:amazon-resource-type
                              #:compliance-details #:compliance-status
                              #:describe-report-creation #:error-code
                              #:error-message #:exception-message
                              #:exclude-compliant-resources
                              #:failed-resources-map #:failure-info
                              #:get-compliance-summary #:get-resources
                              #:get-tag-keys #:get-tag-values #:group-by
                              #:group-by-attribute #:include-compliance-details
                              #:last-updated
                              #:max-results-get-compliance-summary
                              #:non-compliant-resources #:pagination-token
                              #:region #:region-filter-list #:resource-arn
                              #:resource-arnlist-for-get
                              #:resource-arnlist-for-tag-untag
                              #:resource-groups-tagging-api-20170126
                              #:resource-tag-mapping
                              #:resource-tag-mapping-list
                              #:resource-type-filter-list #:resources-per-page
                              #:s3bucket #:s3location #:start-date
                              #:start-report-creation #:status #:status-code
                              #:summary #:summary-list #:tag #:tag-filter
                              #:tag-filter-list #:tag-key #:tag-key-filter-list
                              #:tag-key-list #:tag-key-list-for-untag
                              #:tag-list #:tag-map #:tag-resources #:tag-value
                              #:tag-value-list #:tag-values-output-list
                              #:tags-per-page #:target-id
                              #:target-id-filter-list #:target-id-type
                              #:untag-resources))
(common-lisp:in-package #:pira/resource-groups-tagging-api)

(smithy/sdk/service:define-service resource-groups-tagging-api-20170126
                                   :shape-name
                                   "ResourceGroupsTaggingAPI_20170126" :version
                                   "2017-01-26" :title
                                   "AWS Resource Groups Tagging API"
                                   :operations
                                   '(describe-report-creation
                                     get-compliance-summary get-resources
                                     get-tag-keys get-tag-values
                                     start-report-creation tag-resources
                                     untag-resources)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Resource Groups Tagging API")
                                      ("arnNamespace" . "tagging")
                                      ("cloudFormationName"
                                       . "ResourceGroupsTaggingAPI")
                                      ("cloudTrailEventSource"
                                       . "resourcegroupstaggingapi.amazonaws.com")
                                      ("docId"
                                       . "resourcegroupstaggingapi-2017-01-26")
                                      ("endpointPrefix" . "tagging"))
                                     ("aws.auth#sigv4" ("name" . "tagging"))
                                     ("aws.protocols#awsJson1_1")))

(smithy/sdk/shapes:define-type amazon-resource-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure compliance-details common-lisp:nil
                                    ((noncompliant-keys :target-type
                                      tag-key-list :member-name
                                      "NoncompliantKeys")
                                     (keys-with-noncompliant-values
                                      :target-type tag-key-list :member-name
                                      "KeysWithNoncompliantValues")
                                     (compliance-status :target-type
                                      compliance-status :member-name
                                      "ComplianceStatus"))
                                    (:shape-name "ComplianceDetails"))

(smithy/sdk/shapes:define-type compliance-status
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error constraint-violation-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ConstraintViolationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input describe-report-creation-input common-lisp:nil
                                common-lisp:nil
                                (:shape-name "DescribeReportCreationInput"))

(smithy/sdk/shapes:define-output describe-report-creation-output
                                 common-lisp:nil
                                 ((status :target-type status :member-name
                                   "Status")
                                  (s3location :target-type s3location
                                   :member-name "S3Location")
                                  (start-date :target-type start-date
                                   :member-name "StartDate")
                                  (error-message :target-type error-message
                                   :member-name "ErrorMessage"))
                                 (:shape-name "DescribeReportCreationOutput"))

(smithy/sdk/shapes:define-enum error-code
    common-lisp:nil
  (:internal-service-exception "InternalServiceException")
  (:invalid-parameter-exception "InvalidParameterException"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exception-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type exclude-compliant-resources
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-map failed-resources-map :key resource-arn :value
                              failure-info)

(smithy/sdk/shapes:define-structure failure-info common-lisp:nil
                                    ((status-code :target-type status-code
                                      :member-name "StatusCode")
                                     (error-code :target-type error-code
                                      :member-name "ErrorCode")
                                     (error-message :target-type error-message
                                      :member-name "ErrorMessage"))
                                    (:shape-name "FailureInfo"))

(smithy/sdk/shapes:define-input get-compliance-summary-input common-lisp:nil
                                ((target-id-filters :target-type
                                  target-id-filter-list :member-name
                                  "TargetIdFilters")
                                 (region-filters :target-type
                                  region-filter-list :member-name
                                  "RegionFilters")
                                 (resource-type-filters :target-type
                                  resource-type-filter-list :member-name
                                  "ResourceTypeFilters")
                                 (tag-key-filters :target-type
                                  tag-key-filter-list :member-name
                                  "TagKeyFilters")
                                 (group-by :target-type group-by :member-name
                                  "GroupBy")
                                 (max-results :target-type
                                  max-results-get-compliance-summary
                                  :member-name "MaxResults")
                                 (pagination-token :target-type
                                  pagination-token :member-name
                                  "PaginationToken"))
                                (:shape-name "GetComplianceSummaryInput"))

(smithy/sdk/shapes:define-output get-compliance-summary-output common-lisp:nil
                                 ((summary-list :target-type summary-list
                                   :member-name "SummaryList")
                                  (pagination-token :target-type
                                   pagination-token :member-name
                                   "PaginationToken"))
                                 (:shape-name "GetComplianceSummaryOutput"))

(smithy/sdk/shapes:define-input get-resources-input common-lisp:nil
                                ((pagination-token :target-type
                                  pagination-token :member-name
                                  "PaginationToken")
                                 (tag-filters :target-type tag-filter-list
                                  :member-name "TagFilters")
                                 (resources-per-page :target-type
                                  resources-per-page :member-name
                                  "ResourcesPerPage")
                                 (tags-per-page :target-type tags-per-page
                                  :member-name "TagsPerPage")
                                 (resource-type-filters :target-type
                                  resource-type-filter-list :member-name
                                  "ResourceTypeFilters")
                                 (include-compliance-details :target-type
                                  include-compliance-details :member-name
                                  "IncludeComplianceDetails")
                                 (exclude-compliant-resources :target-type
                                  exclude-compliant-resources :member-name
                                  "ExcludeCompliantResources")
                                 (resource-arnlist :target-type
                                  resource-arnlist-for-get :member-name
                                  "ResourceARNList"))
                                (:shape-name "GetResourcesInput"))

(smithy/sdk/shapes:define-output get-resources-output common-lisp:nil
                                 ((pagination-token :target-type
                                   pagination-token :member-name
                                   "PaginationToken")
                                  (resource-tag-mapping-list :target-type
                                   resource-tag-mapping-list :member-name
                                   "ResourceTagMappingList"))
                                 (:shape-name "GetResourcesOutput"))

(smithy/sdk/shapes:define-input get-tag-keys-input common-lisp:nil
                                ((pagination-token :target-type
                                  pagination-token :member-name
                                  "PaginationToken"))
                                (:shape-name "GetTagKeysInput"))

(smithy/sdk/shapes:define-output get-tag-keys-output common-lisp:nil
                                 ((pagination-token :target-type
                                   pagination-token :member-name
                                   "PaginationToken")
                                  (tag-keys :target-type tag-key-list
                                   :member-name "TagKeys"))
                                 (:shape-name "GetTagKeysOutput"))

(smithy/sdk/shapes:define-input get-tag-values-input common-lisp:nil
                                ((pagination-token :target-type
                                  pagination-token :member-name
                                  "PaginationToken")
                                 (key :target-type tag-key :required
                                  common-lisp:t :member-name "Key"))
                                (:shape-name "GetTagValuesInput"))

(smithy/sdk/shapes:define-output get-tag-values-output common-lisp:nil
                                 ((pagination-token :target-type
                                   pagination-token :member-name
                                   "PaginationToken")
                                  (tag-values :target-type
                                   tag-values-output-list :member-name
                                   "TagValues"))
                                 (:shape-name "GetTagValuesOutput"))

(smithy/sdk/shapes:define-list group-by :member group-by-attribute)

(smithy/sdk/shapes:define-enum group-by-attribute
    common-lisp:nil
  (:target-id "TARGET_ID")
  (:region "REGION")
  (:resource-type "RESOURCE_TYPE"))

(smithy/sdk/shapes:define-type include-compliance-details
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-error internal-service-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InternalServiceException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-parameter-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "InvalidParameterException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type last-updated smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-results-get-compliance-summary
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type non-compliant-resources
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error pagination-token-expired-exception
                                common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "PaginationTokenExpiredException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list region-filter-list :member region)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list resource-arnlist-for-get :member resource-arn)

(smithy/sdk/shapes:define-list resource-arnlist-for-tag-untag :member
                               resource-arn)

(smithy/sdk/shapes:define-structure resource-tag-mapping common-lisp:nil
                                    ((resource-arn :target-type resource-arn
                                      :member-name "ResourceARN")
                                     (tags :target-type tag-list :member-name
                                      "Tags")
                                     (compliance-details :target-type
                                      compliance-details :member-name
                                      "ComplianceDetails"))
                                    (:shape-name "ResourceTagMapping"))

(smithy/sdk/shapes:define-list resource-tag-mapping-list :member
                               resource-tag-mapping)

(smithy/sdk/shapes:define-list resource-type-filter-list :member
                               amazon-resource-type)

(smithy/sdk/shapes:define-type resources-per-page
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3location smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type start-date smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-report-creation-input common-lisp:nil
                                ((s3bucket :target-type s3bucket :required
                                  common-lisp:t :member-name "S3Bucket"))
                                (:shape-name "StartReportCreationInput"))

(smithy/sdk/shapes:define-output start-report-creation-output common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "StartReportCreationOutput"))

(smithy/sdk/shapes:define-type status smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type status-code smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure summary common-lisp:nil
                                    ((last-updated :target-type last-updated
                                      :member-name "LastUpdated")
                                     (target-id :target-type target-id
                                      :member-name "TargetId")
                                     (target-id-type :target-type
                                      target-id-type :member-name
                                      "TargetIdType")
                                     (region :target-type region :member-name
                                      "Region")
                                     (resource-type :target-type
                                      amazon-resource-type :member-name
                                      "ResourceType")
                                     (non-compliant-resources :target-type
                                      non-compliant-resources :member-name
                                      "NonCompliantResources"))
                                    (:shape-name "Summary"))

(smithy/sdk/shapes:define-list summary-list :member summary)

(smithy/sdk/shapes:define-structure tag common-lisp:nil
                                    ((key :target-type tag-key :required
                                      common-lisp:t :member-name "Key")
                                     (value :target-type tag-value :required
                                      common-lisp:t :member-name "Value"))
                                    (:shape-name "Tag"))

(smithy/sdk/shapes:define-structure tag-filter common-lisp:nil
                                    ((key :target-type tag-key :member-name
                                      "Key")
                                     (values :target-type tag-value-list
                                      :member-name "Values"))
                                    (:shape-name "TagFilter"))

(smithy/sdk/shapes:define-list tag-filter-list :member tag-filter)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-filter-list :member tag-key)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-list tag-key-list-for-untag :member tag-key)

(smithy/sdk/shapes:define-list tag-list :member tag)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resources-input common-lisp:nil
                                ((resource-arnlist :target-type
                                  resource-arnlist-for-tag-untag :required
                                  common-lisp:t :member-name "ResourceARNList")
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourcesInput"))

(smithy/sdk/shapes:define-output tag-resources-output common-lisp:nil
                                 ((failed-resources-map :target-type
                                   failed-resources-map :member-name
                                   "FailedResourcesMap"))
                                 (:shape-name "TagResourcesOutput"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-value-list :member tag-value)

(smithy/sdk/shapes:define-list tag-values-output-list :member tag-value)

(smithy/sdk/shapes:define-type tags-per-page smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type target-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list target-id-filter-list :member target-id)

(smithy/sdk/shapes:define-enum target-id-type
    common-lisp:nil
  (:account "ACCOUNT")
  (:ou "OU")
  (:root "ROOT"))

(smithy/sdk/shapes:define-error throttled-exception common-lisp:nil
                                ((message :target-type exception-message
                                  :member-name "Message"))
                                (:shape-name "ThrottledException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resources-input common-lisp:nil
                                ((resource-arnlist :target-type
                                  resource-arnlist-for-tag-untag :required
                                  common-lisp:t :member-name "ResourceARNList")
                                 (tag-keys :target-type tag-key-list-for-untag
                                  :required common-lisp:t :member-name
                                  "TagKeys"))
                                (:shape-name "UntagResourcesInput"))

(smithy/sdk/shapes:define-output untag-resources-output common-lisp:nil
                                 ((failed-resources-map :target-type
                                   failed-resources-map :member-name
                                   "FailedResourcesMap"))
                                 (:shape-name "UntagResourcesOutput"))

(smithy/sdk/operation:define-operation describe-report-creation :shape-name
                                       "DescribeReportCreation" :input
                                       describe-report-creation-input :output
                                       describe-report-creation-output :errors
                                       (constraint-violation-exception
                                        internal-service-exception
                                        invalid-parameter-exception
                                        throttled-exception))

(smithy/sdk/operation:define-operation get-compliance-summary :shape-name
                                       "GetComplianceSummary" :input
                                       get-compliance-summary-input :output
                                       get-compliance-summary-output :errors
                                       (constraint-violation-exception
                                        internal-service-exception
                                        invalid-parameter-exception
                                        throttled-exception))

(smithy/sdk/operation:define-operation get-resources :shape-name "GetResources"
                                       :input get-resources-input :output
                                       get-resources-output :errors
                                       (internal-service-exception
                                        invalid-parameter-exception
                                        pagination-token-expired-exception
                                        throttled-exception))

(smithy/sdk/operation:define-operation get-tag-keys :shape-name "GetTagKeys"
                                       :input get-tag-keys-input :output
                                       get-tag-keys-output :errors
                                       (internal-service-exception
                                        invalid-parameter-exception
                                        pagination-token-expired-exception
                                        throttled-exception))

(smithy/sdk/operation:define-operation get-tag-values :shape-name
                                       "GetTagValues" :input
                                       get-tag-values-input :output
                                       get-tag-values-output :errors
                                       (internal-service-exception
                                        invalid-parameter-exception
                                        pagination-token-expired-exception
                                        throttled-exception))

(smithy/sdk/operation:define-operation start-report-creation :shape-name
                                       "StartReportCreation" :input
                                       start-report-creation-input :output
                                       start-report-creation-output :errors
                                       (concurrent-modification-exception
                                        constraint-violation-exception
                                        internal-service-exception
                                        invalid-parameter-exception
                                        throttled-exception))

(smithy/sdk/operation:define-operation tag-resources :shape-name "TagResources"
                                       :input tag-resources-input :output
                                       tag-resources-output :errors
                                       (internal-service-exception
                                        invalid-parameter-exception
                                        throttled-exception))

(smithy/sdk/operation:define-operation untag-resources :shape-name
                                       "UntagResources" :input
                                       untag-resources-input :output
                                       untag-resources-output :errors
                                       (internal-service-exception
                                        invalid-parameter-exception
                                        throttled-exception))
