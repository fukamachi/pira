(uiop/package:define-package #:pira/personalize-runtime (:use)
                             (:export #:action-id #:action-list
                              #:amazon-personalize-runtime #:arn
                              #:attribute-name #:attribute-value #:column-name
                              #:column-names-list #:column-value #:context
                              #:dataset-type #:error-message
                              #:filter-attribute-name #:filter-attribute-value
                              #:filter-values #:get-action-recommendations
                              #:get-action-recommendations-request
                              #:get-action-recommendations-response
                              #:get-personalized-ranking
                              #:get-personalized-ranking-request
                              #:get-personalized-ranking-response
                              #:get-recommendations
                              #:get-recommendations-request
                              #:get-recommendations-response #:input-list
                              #:invalid-input-exception #:item-id #:item-list
                              #:metadata #:metadata-columns #:name
                              #:num-results #:percent-promoted-items
                              #:predicted-action #:predicted-item #:promotion
                              #:promotion-list #:reason #:reason-list
                              #:recommendation-id
                              #:resource-not-found-exception #:score #:user-id))
(common-lisp:in-package #:pira/personalize-runtime)

(smithy/sdk/service:define-service amazon-personalize-runtime :shape-name
                                   "AmazonPersonalizeRuntime" :version
                                   "2018-05-22" :title
                                   "Amazon Personalize Runtime" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Personalize Runtime")
                                      ("arnNamespace" . "personalize")
                                      ("cloudFormationName"
                                       . "PersonalizeRuntime")
                                      ("cloudTrailEventSource"
                                       . "personalizeruntime.amazonaws.com")
                                      ("endpointPrefix"
                                       . "personalize-runtime"))
                                     ("aws.auth#sigv4"
                                      ("name" . "personalize"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type action-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list action-list :member predicted-action)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type attribute-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type column-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list column-names-list :member column-name)

(smithy/sdk/shapes:define-type column-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map context :key attribute-name :value
                              attribute-value)

(smithy/sdk/shapes:define-type dataset-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-attribute-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-attribute-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map filter-values :key filter-attribute-name :value
                              filter-attribute-value)

(smithy/sdk/shapes:define-input get-action-recommendations-request
                                common-lisp:nil
                                ((campaign-arn :target-type arn :member-name
                                  "campaignArn")
                                 (user-id :target-type user-id :member-name
                                  "userId")
                                 (num-results :target-type num-results
                                  :member-name "numResults")
                                 (filter-arn :target-type arn :member-name
                                  "filterArn")
                                 (filter-values :target-type filter-values
                                  :member-name "filterValues"))
                                (:shape-name "GetActionRecommendationsRequest"))

(smithy/sdk/shapes:define-output get-action-recommendations-response
                                 common-lisp:nil
                                 ((action-list :target-type action-list
                                   :member-name "actionList")
                                  (recommendation-id :target-type
                                   recommendation-id :member-name
                                   "recommendationId"))
                                 (:shape-name
                                  "GetActionRecommendationsResponse"))

(smithy/sdk/shapes:define-input get-personalized-ranking-request
                                common-lisp:nil
                                ((campaign-arn :target-type arn :required
                                  common-lisp:t :member-name "campaignArn")
                                 (input-list :target-type input-list :required
                                  common-lisp:t :member-name "inputList")
                                 (user-id :target-type user-id :required
                                  common-lisp:t :member-name "userId")
                                 (context :target-type context :member-name
                                  "context")
                                 (filter-arn :target-type arn :member-name
                                  "filterArn")
                                 (filter-values :target-type filter-values
                                  :member-name "filterValues")
                                 (metadata-columns :target-type
                                  metadata-columns :member-name
                                  "metadataColumns"))
                                (:shape-name "GetPersonalizedRankingRequest"))

(smithy/sdk/shapes:define-output get-personalized-ranking-response
                                 common-lisp:nil
                                 ((personalized-ranking :target-type item-list
                                   :member-name "personalizedRanking")
                                  (recommendation-id :target-type
                                   recommendation-id :member-name
                                   "recommendationId"))
                                 (:shape-name "GetPersonalizedRankingResponse"))

(smithy/sdk/shapes:define-input get-recommendations-request common-lisp:nil
                                ((campaign-arn :target-type arn :member-name
                                  "campaignArn")
                                 (item-id :target-type item-id :member-name
                                  "itemId")
                                 (user-id :target-type user-id :member-name
                                  "userId")
                                 (num-results :target-type num-results
                                  :member-name "numResults")
                                 (context :target-type context :member-name
                                  "context")
                                 (filter-arn :target-type arn :member-name
                                  "filterArn")
                                 (filter-values :target-type filter-values
                                  :member-name "filterValues")
                                 (recommender-arn :target-type arn :member-name
                                  "recommenderArn")
                                 (promotions :target-type promotion-list
                                  :member-name "promotions")
                                 (metadata-columns :target-type
                                  metadata-columns :member-name
                                  "metadataColumns"))
                                (:shape-name "GetRecommendationsRequest"))

(smithy/sdk/shapes:define-output get-recommendations-response common-lisp:nil
                                 ((item-list :target-type item-list
                                   :member-name "itemList")
                                  (recommendation-id :target-type
                                   recommendation-id :member-name
                                   "recommendationId"))
                                 (:shape-name "GetRecommendationsResponse"))

(smithy/sdk/shapes:define-list input-list :member item-id)

(smithy/sdk/shapes:define-error invalid-input-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidInputException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type item-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list item-list :member predicted-item)

(smithy/sdk/shapes:define-map metadata :key column-name :value column-value)

(smithy/sdk/shapes:define-map metadata-columns :key dataset-type :value
                              column-names-list)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type num-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type percent-promoted-items
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure predicted-action common-lisp:nil
                                    ((action-id :target-type action-id
                                      :member-name "actionId")
                                     (score :target-type score :member-name
                                      "score"))
                                    (:shape-name "PredictedAction"))

(smithy/sdk/shapes:define-structure predicted-item common-lisp:nil
                                    ((item-id :target-type item-id :member-name
                                      "itemId")
                                     (score :target-type score :member-name
                                      "score")
                                     (promotion-name :target-type name
                                      :member-name "promotionName")
                                     (metadata :target-type metadata
                                      :member-name "metadata")
                                     (reason :target-type reason-list
                                      :member-name "reason"))
                                    (:shape-name "PredictedItem"))

(smithy/sdk/shapes:define-structure promotion common-lisp:nil
                                    ((name :target-type name :member-name
                                      "name")
                                     (percent-promoted-items :target-type
                                      percent-promoted-items :member-name
                                      "percentPromotedItems")
                                     (filter-arn :target-type arn :member-name
                                      "filterArn")
                                     (filter-values :target-type filter-values
                                      :member-name "filterValues"))
                                    (:shape-name "Promotion"))

(smithy/sdk/shapes:define-list promotion-list :member promotion)

(smithy/sdk/shapes:define-type reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list reason-list :member reason)

(smithy/sdk/shapes:define-type recommendation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type score smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type user-id smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation get-action-recommendations :shape-name
                                       "GetActionRecommendations" :input
                                       get-action-recommendations-request
                                       :output
                                       get-action-recommendations-response
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/action-recommendations" :code 200)

(smithy/sdk/operation:define-operation get-personalized-ranking :shape-name
                                       "GetPersonalizedRanking" :input
                                       get-personalized-ranking-request :output
                                       get-personalized-ranking-response
                                       :errors
                                       (invalid-input-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/personalize-ranking" :code 200)

(smithy/sdk/operation:define-operation get-recommendations :shape-name
                                       "GetRecommendations" :input
                                       get-recommendations-request :output
                                       get-recommendations-response :errors
                                       (invalid-input-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/recommendations"
                                       :code 200)
