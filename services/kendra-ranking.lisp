(uiop/package:define-package #:pira/kendra-ranking (:use)
                             (:export #:awskendra-reranking-frontend-service
                              #:amazon-resource-name #:body-tokens-list
                              #:capacity-units-configuration
                              #:client-token-name
                              #:create-rescore-execution-plan
                              #:delete-rescore-execution-plan
                              #:describe-rescore-execution-plan #:description
                              #:document #:document-body #:document-id
                              #:document-list #:document-title #:error-message
                              #:float #:group-id #:list-rescore-execution-plans
                              #:list-tags-for-resource
                              #:max-results-integer-for-list-rescore-execution-plans-request
                              #:next-token #:rescore #:rescore-capacity-unit
                              #:rescore-execution-plan-arn
                              #:rescore-execution-plan-id
                              #:rescore-execution-plan-name
                              #:rescore-execution-plan-status
                              #:rescore-execution-plan-summary
                              #:rescore-execution-plan-summary-list
                              #:rescore-id #:rescore-result-item
                              #:rescore-result-item-list #:search-query #:tag
                              #:tag-key #:tag-key-list #:tag-list
                              #:tag-resource #:tag-value #:timestamp
                              #:title-tokens-list #:tokens #:untag-resource
                              #:update-rescore-execution-plan))
(common-lisp:in-package #:pira/kendra-ranking)

(smithy/sdk/service:define-service awskendra-reranking-frontend-service
                                   :shape-name
                                   "AWSKendraRerankingFrontendService" :version
                                   "2022-10-19" :title
                                   "Amazon Kendra Intelligent Ranking" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Kendra Ranking")
                                      ("arnNamespace" . "kendra-ranking")
                                      ("cloudFormationName" . "KendraRanking")
                                      ("cloudTrailEventSource"
                                       . "kendraranking.amazonaws.com")
                                      ("endpointPrefix" . "kendra-ranking"))
                                     ("aws.auth#sigv4"
                                      ("name" . "kendra-ranking"))
                                     ("aws.protocols#awsJson1_0")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type amazon-resource-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list body-tokens-list :member tokens)

(smithy/sdk/shapes:define-structure capacity-units-configuration
                                    common-lisp:nil
                                    ((rescore-capacity-units :target-type
                                      rescore-capacity-unit :required
                                      common-lisp:t :member-name
                                      "RescoreCapacityUnits"))
                                    (:shape-name "CapacityUnitsConfiguration"))

(smithy/sdk/shapes:define-type client-token-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-input create-rescore-execution-plan-request
                                common-lisp:nil
                                ((name :target-type rescore-execution-plan-name
                                  :required common-lisp:t :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (capacity-units :target-type
                                  capacity-units-configuration :member-name
                                  "CapacityUnits")
                                 (tags :target-type tag-list :member-name
                                  "Tags")
                                 (client-token :target-type client-token-name
                                  :member-name "ClientToken"))
                                (:shape-name
                                 "CreateRescoreExecutionPlanRequest"))

(smithy/sdk/shapes:define-output create-rescore-execution-plan-response
                                 common-lisp:nil
                                 ((id :target-type rescore-execution-plan-id
                                   :required common-lisp:t :member-name "Id")
                                  (arn :target-type rescore-execution-plan-arn
                                   :required common-lisp:t :member-name "Arn"))
                                 (:shape-name
                                  "CreateRescoreExecutionPlanResponse"))

(smithy/sdk/shapes:define-input delete-rescore-execution-plan-request
                                common-lisp:nil
                                ((id :target-type rescore-execution-plan-id
                                  :required common-lisp:t :member-name "Id"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteRescoreExecutionPlanRequest"))

(smithy/sdk/shapes:define-input describe-rescore-execution-plan-request
                                common-lisp:nil
                                ((id :target-type rescore-execution-plan-id
                                  :required common-lisp:t :member-name "Id"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DescribeRescoreExecutionPlanRequest"))

(smithy/sdk/shapes:define-output describe-rescore-execution-plan-response
                                 common-lisp:nil
                                 ((id :target-type rescore-execution-plan-id
                                   :member-name "Id")
                                  (arn :target-type rescore-execution-plan-arn
                                   :member-name "Arn")
                                  (name :target-type
                                   rescore-execution-plan-name :member-name
                                   "Name")
                                  (description :target-type description
                                   :member-name "Description")
                                  (capacity-units :target-type
                                   capacity-units-configuration :member-name
                                   "CapacityUnits")
                                  (created-at :target-type timestamp
                                   :member-name "CreatedAt")
                                  (updated-at :target-type timestamp
                                   :member-name "UpdatedAt")
                                  (status :target-type
                                   rescore-execution-plan-status :member-name
                                   "Status")
                                  (error-message :target-type error-message
                                   :member-name "ErrorMessage"))
                                 (:shape-name
                                  "DescribeRescoreExecutionPlanResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure document common-lisp:nil
                                    ((id :target-type document-id :required
                                      common-lisp:t :member-name "Id")
                                     (group-id :target-type group-id
                                      :member-name "GroupId")
                                     (title :target-type document-title
                                      :member-name "Title")
                                     (body :target-type document-body
                                      :member-name "Body")
                                     (tokenized-title :target-type
                                      title-tokens-list :member-name
                                      "TokenizedTitle")
                                     (tokenized-body :target-type
                                      body-tokens-list :member-name
                                      "TokenizedBody")
                                     (original-score :target-type float
                                      :required common-lisp:t :member-name
                                      "OriginalScore"))
                                    (:shape-name "Document"))

(smithy/sdk/shapes:define-type document-body smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type document-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list document-list :member document)

(smithy/sdk/shapes:define-type document-title smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type float smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-type group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-input list-rescore-execution-plans-request
                                common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "NextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type
                                  max-results-integer-for-list-rescore-execution-plans-request
                                  :member-name "MaxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListRescoreExecutionPlansRequest"))

(smithy/sdk/shapes:define-output list-rescore-execution-plans-response
                                 common-lisp:nil
                                 ((summary-items :target-type
                                   rescore-execution-plan-summary-list
                                   :member-name "SummaryItems")
                                  (next-token :target-type next-token
                                   :member-name "NextToken"))
                                 (:shape-name
                                  "ListRescoreExecutionPlansResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN"))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-list :member-name
                                   "Tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type
 max-results-integer-for-list-rescore-execution-plans-request
 smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rescore-capacity-unit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type rescore-execution-plan-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rescore-execution-plan-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rescore-execution-plan-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum rescore-execution-plan-status
    common-lisp:nil
  (:creating "CREATING")
  (:updating "UPDATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure rescore-execution-plan-summary
                                    common-lisp:nil
                                    ((name :target-type
                                      rescore-execution-plan-name :member-name
                                      "Name")
                                     (id :target-type rescore-execution-plan-id
                                      :member-name "Id")
                                     (created-at :target-type timestamp
                                      :member-name "CreatedAt")
                                     (updated-at :target-type timestamp
                                      :member-name "UpdatedAt")
                                     (status :target-type
                                      rescore-execution-plan-status
                                      :member-name "Status"))
                                    (:shape-name "RescoreExecutionPlanSummary"))

(smithy/sdk/shapes:define-list rescore-execution-plan-summary-list :member
                               rescore-execution-plan-summary)

(smithy/sdk/shapes:define-type rescore-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input rescore-request common-lisp:nil
                                ((rescore-execution-plan-id :target-type
                                  rescore-execution-plan-id :required
                                  common-lisp:t :member-name
                                  "RescoreExecutionPlanId" :http-label
                                  common-lisp:t)
                                 (search-query :target-type search-query
                                  :required common-lisp:t :member-name
                                  "SearchQuery")
                                 (documents :target-type document-list
                                  :required common-lisp:t :member-name
                                  "Documents"))
                                (:shape-name "RescoreRequest"))

(smithy/sdk/shapes:define-output rescore-result common-lisp:nil
                                 ((rescore-id :target-type rescore-id
                                   :member-name "RescoreId")
                                  (result-items :target-type
                                   rescore-result-item-list :member-name
                                   "ResultItems"))
                                 (:shape-name "RescoreResult"))

(smithy/sdk/shapes:define-structure rescore-result-item common-lisp:nil
                                    ((document-id :target-type document-id
                                      :member-name "DocumentId")
                                     (score :target-type float :member-name
                                      "Score"))
                                    (:shape-name "RescoreResultItem"))

(smithy/sdk/shapes:define-list rescore-result-item-list :member
                               rescore-result-item)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error resource-unavailable-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ResourceUnavailableException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type search-query smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

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
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tags :target-type tag-list :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-list title-tokens-list :member tokens)

(smithy/sdk/shapes:define-type tokens smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type
                                  amazon-resource-name :required common-lisp:t
                                  :member-name "ResourceARN")
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-rescore-execution-plan-request
                                common-lisp:nil
                                ((id :target-type rescore-execution-plan-id
                                  :required common-lisp:t :member-name "Id"
                                  :http-label common-lisp:t)
                                 (name :target-type rescore-execution-plan-name
                                  :member-name "Name")
                                 (description :target-type description
                                  :member-name "Description")
                                 (capacity-units :target-type
                                  capacity-units-configuration :member-name
                                  "CapacityUnits"))
                                (:shape-name
                                 "UpdateRescoreExecutionPlanRequest"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "Message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/operation:define-operation create-rescore-execution-plan
                                       :shape-name "CreateRescoreExecutionPlan"
                                       :input
                                       create-rescore-execution-plan-request
                                       :output
                                       create-rescore-execution-plan-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/rescore-execution-plans" :code 200)

(smithy/sdk/operation:define-operation delete-rescore-execution-plan
                                       :shape-name "DeleteRescoreExecutionPlan"
                                       :input
                                       delete-rescore-execution-plan-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/rescore-execution-plans/{Id}" :code
                                       200)

(smithy/sdk/operation:define-operation describe-rescore-execution-plan
                                       :shape-name
                                       "DescribeRescoreExecutionPlan" :input
                                       describe-rescore-execution-plan-request
                                       :output
                                       describe-rescore-execution-plan-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/rescore-execution-plans/{Id}" :code
                                       200)

(smithy/sdk/operation:define-operation list-rescore-execution-plans :shape-name
                                       "ListRescoreExecutionPlans" :input
                                       list-rescore-execution-plans-request
                                       :output
                                       list-rescore-execution-plans-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/rescore-execution-plans" :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation rescore :shape-name "Rescore" :input
                                       rescore-request :output rescore-result
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/rescore-execution-plans/{RescoreExecutionPlanId}/rescore"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-unavailable-exception
                                        throttling-exception
                                        validation-exception))

(smithy/sdk/operation:define-operation update-rescore-execution-plan
                                       :shape-name "UpdateRescoreExecutionPlan"
                                       :input
                                       update-rescore-execution-plan-request
                                       :output common-lisp:null :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/rescore-execution-plans/{Id}" :code
                                       200)
