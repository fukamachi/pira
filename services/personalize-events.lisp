(uiop/package:define-package #:pira/personalize-events (:use)
                             (:export #:action #:action-id #:action-impression
                              #:action-interaction #:action-interactions-list
                              #:action-list #:amazon-personalize-events #:arn
                              #:date #:error-message #:event
                              #:event-attribution-source #:event-list
                              #:float-type #:impression
                              #:invalid-input-exception #:item #:item-id
                              #:item-list #:metric-attribution
                              #:put-action-interactions #:put-actions
                              #:put-events #:put-items #:put-users
                              #:recommendation-id #:resource-in-use-exception
                              #:resource-not-found-exception #:string-type
                              #:synthesized-json-action-interaction-properties
                              #:synthesized-json-action-properties
                              #:synthesized-json-event-properties-json
                              #:synthesized-json-item-properties
                              #:synthesized-json-user-properties #:user
                              #:user-id #:user-list #:personalize-events-error))
(common-lisp:in-package #:pira/personalize-events)

(common-lisp:define-condition personalize-events-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service amazon-personalize-events :shape-name
                                   "AmazonPersonalizeEvents" :version
                                   "2018-03-22" :title
                                   "Amazon Personalize Events" :operations
                                   '(put-action-interactions put-actions
                                     put-events put-items put-users)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Personalize Events")
                                      ("arnNamespace" . "personalize")
                                      ("cloudFormationName"
                                       . "PersonalizeEvents")
                                      ("cloudTrailEventSource"
                                       . "personalizeevents.amazonaws.com")
                                      ("endpointPrefix"
                                       . "personalize-events"))
                                     ("aws.auth#sigv4"
                                      ("name" . "personalize"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure action common-lisp:nil
                                    ((action-id :target-type string-type
                                      :required common-lisp:t :member-name
                                      "actionId")
                                     (properties :target-type
                                      synthesized-json-action-properties
                                      :member-name "properties"))
                                    (:shape-name "Action"))

(smithy/sdk/shapes:define-type action-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list action-impression :member action-id)

(smithy/sdk/shapes:define-structure action-interaction common-lisp:nil
                                    ((action-id :target-type action-id
                                      :required common-lisp:t :member-name
                                      "actionId")
                                     (user-id :target-type user-id :member-name
                                      "userId")
                                     (session-id :target-type string-type
                                      :required common-lisp:t :member-name
                                      "sessionId")
                                     (timestamp :target-type date :required
                                      common-lisp:t :member-name "timestamp")
                                     (event-type :target-type string-type
                                      :required common-lisp:t :member-name
                                      "eventType")
                                     (event-id :target-type string-type
                                      :member-name "eventId")
                                     (recommendation-id :target-type
                                      recommendation-id :member-name
                                      "recommendationId")
                                     (impression :target-type action-impression
                                      :member-name "impression")
                                     (properties :target-type
                                      synthesized-json-action-interaction-properties
                                      :member-name "properties"))
                                    (:shape-name "ActionInteraction"))

(smithy/sdk/shapes:define-list action-interactions-list :member
                               action-interaction)

(smithy/sdk/shapes:define-list action-list :member action)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event common-lisp:nil
                                    ((event-id :target-type string-type
                                      :member-name "eventId")
                                     (event-type :target-type string-type
                                      :required common-lisp:t :member-name
                                      "eventType")
                                     (event-value :target-type float-type
                                      :member-name "eventValue")
                                     (item-id :target-type item-id :member-name
                                      "itemId")
                                     (properties :target-type
                                      synthesized-json-event-properties-json
                                      :member-name "properties")
                                     (sent-at :target-type date :required
                                      common-lisp:t :member-name "sentAt")
                                     (recommendation-id :target-type
                                      recommendation-id :member-name
                                      "recommendationId")
                                     (impression :target-type impression
                                      :member-name "impression")
                                     (metric-attribution :target-type
                                      metric-attribution :member-name
                                      "metricAttribution"))
                                    (:shape-name "Event"))

(smithy/sdk/shapes:define-type event-attribution-source
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list event-list :member event)

(smithy/sdk/shapes:define-type float-type smithy/sdk/smithy-types:float)

(smithy/sdk/shapes:define-list impression :member item-id)

(smithy/sdk/shapes:define-error invalid-input-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidInputException")
                                (:error-code 400)
                                (:base-class personalize-events-error))

(smithy/sdk/shapes:define-structure item common-lisp:nil
                                    ((item-id :target-type string-type
                                      :required common-lisp:t :member-name
                                      "itemId")
                                     (properties :target-type
                                      synthesized-json-item-properties
                                      :member-name "properties"))
                                    (:shape-name "Item"))

(smithy/sdk/shapes:define-type item-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list item-list :member item)

(smithy/sdk/shapes:define-structure metric-attribution common-lisp:nil
                                    ((event-attribution-source :target-type
                                      event-attribution-source :required
                                      common-lisp:t :member-name
                                      "eventAttributionSource"))
                                    (:shape-name "MetricAttribution"))

(smithy/sdk/shapes:define-input put-action-interactions-request common-lisp:nil
                                ((tracking-id :target-type string-type
                                  :required common-lisp:t :member-name
                                  "trackingId")
                                 (action-interactions :target-type
                                  action-interactions-list :required
                                  common-lisp:t :member-name
                                  "actionInteractions"))
                                (:shape-name "PutActionInteractionsRequest"))

(smithy/sdk/shapes:define-input put-actions-request common-lisp:nil
                                ((dataset-arn :target-type arn :required
                                  common-lisp:t :member-name "datasetArn")
                                 (actions :target-type action-list :required
                                  common-lisp:t :member-name "actions"))
                                (:shape-name "PutActionsRequest"))

(smithy/sdk/shapes:define-input put-events-request common-lisp:nil
                                ((tracking-id :target-type string-type
                                  :required common-lisp:t :member-name
                                  "trackingId")
                                 (user-id :target-type user-id :member-name
                                  "userId")
                                 (session-id :target-type string-type :required
                                  common-lisp:t :member-name "sessionId")
                                 (event-list :target-type event-list :required
                                  common-lisp:t :member-name "eventList"))
                                (:shape-name "PutEventsRequest"))

(smithy/sdk/shapes:define-input put-items-request common-lisp:nil
                                ((dataset-arn :target-type arn :required
                                  common-lisp:t :member-name "datasetArn")
                                 (items :target-type item-list :required
                                  common-lisp:t :member-name "items"))
                                (:shape-name "PutItemsRequest"))

(smithy/sdk/shapes:define-input put-users-request common-lisp:nil
                                ((dataset-arn :target-type arn :required
                                  common-lisp:t :member-name "datasetArn")
                                 (users :target-type user-list :required
                                  common-lisp:t :member-name "users"))
                                (:shape-name "PutUsersRequest"))

(smithy/sdk/shapes:define-type recommendation-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 409)
                                (:base-class personalize-events-error))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404)
                                (:base-class personalize-events-error))

(smithy/sdk/shapes:define-type string-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type synthesized-json-action-interaction-properties
                               smithy/sdk/smithy-types:string :media-type
                               "application/json")

(smithy/sdk/shapes:define-type synthesized-json-action-properties
                               smithy/sdk/smithy-types:string :media-type
                               "application/json")

(smithy/sdk/shapes:define-type synthesized-json-event-properties-json
                               smithy/sdk/smithy-types:string :media-type
                               "application/json")

(smithy/sdk/shapes:define-type synthesized-json-item-properties
                               smithy/sdk/smithy-types:string :media-type
                               "application/json")

(smithy/sdk/shapes:define-type synthesized-json-user-properties
                               smithy/sdk/smithy-types:string :media-type
                               "application/json")

(smithy/sdk/shapes:define-structure user common-lisp:nil
                                    ((user-id :target-type string-type
                                      :required common-lisp:t :member-name
                                      "userId")
                                     (properties :target-type
                                      synthesized-json-user-properties
                                      :member-name "properties"))
                                    (:shape-name "User"))

(smithy/sdk/shapes:define-type user-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list user-list :member user)

(smithy/sdk/operation:define-operation put-action-interactions :shape-name
                                       "PutActionInteractions" :input
                                       put-action-interactions-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/action-interactions" :code 200)

(smithy/sdk/operation:define-operation put-actions :shape-name "PutActions"
                                       :input put-actions-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/actions" :code 200)

(smithy/sdk/operation:define-operation put-events :shape-name "PutEvents"
                                       :input put-events-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception) :method "POST"
                                       :uri "/events" :code 200)

(smithy/sdk/operation:define-operation put-items :shape-name "PutItems" :input
                                       put-items-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/items" :code 200)

(smithy/sdk/operation:define-operation put-users :shape-name "PutUsers" :input
                                       put-users-request :output
                                       common-lisp:null :errors
                                       (invalid-input-exception
                                        resource-in-use-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/users" :code 200)
