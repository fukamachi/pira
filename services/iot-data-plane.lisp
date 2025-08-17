(uiop/package:define-package #:pira/iot-data-plane (:use)
                             (:export #:content-type #:correlation-data
                              #:delete-thing-shadow #:get-retained-message
                              #:get-thing-shadow #:iot-moonraker-service
                              #:json-document #:list-named-shadows-for-thing
                              #:list-retained-messages #:max-results
                              #:message-expiry #:named-shadow-list #:next-token
                              #:page-size #:payload #:payload-format-indicator
                              #:payload-size #:publish #:qos #:response-topic
                              #:retain #:retained-message-list
                              #:retained-message-summary #:shadow-name
                              #:synthesized-json-user-properties #:thing-name
                              #:timestamp #:topic #:update-thing-shadow
                              #:user-properties-blob #:error-message))
(common-lisp:in-package #:pira/iot-data-plane)

(smithy/sdk/service:define-service iot-moonraker-service :shape-name
                                   "IotMoonrakerService" :version "2015-05-28"
                                   :title "AWS IoT Data Plane" :operations
                                   '(delete-thing-shadow get-retained-message
                                     get-thing-shadow
                                     list-named-shadows-for-thing
                                     list-retained-messages publish
                                     update-thing-shadow)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "IoT Data Plane")
                                      ("arnNamespace" . "iotdata")
                                      ("cloudFormationName" . "IoTDataPlane")
                                      ("cloudTrailEventSource"
                                       . "iotdataplane.amazonaws.com")
                                      ("docId" . "iot-data-2015-05-28")
                                      ("endpointPrefix" . "data-ats.iot"))
                                     ("aws.auth#sigv4" ("name" . "iotdata"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-type content-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type correlation-data smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-thing-shadow-request common-lisp:nil
                                ((thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t)
                                 (shadow-name :target-type shadow-name
                                  :member-name "shadowName" :http-query
                                  "name"))
                                (:shape-name "DeleteThingShadowRequest"))

(smithy/sdk/shapes:define-output delete-thing-shadow-response common-lisp:nil
                                 ((payload :target-type json-document :required
                                   common-lisp:t :member-name "payload"
                                   :http-payload common-lisp:t))
                                 (:shape-name "DeleteThingShadowResponse"))

(smithy/sdk/shapes:define-input get-retained-message-request common-lisp:nil
                                ((topic :target-type topic :required
                                  common-lisp:t :member-name "topic"
                                  :http-label common-lisp:t))
                                (:shape-name "GetRetainedMessageRequest"))

(smithy/sdk/shapes:define-output get-retained-message-response common-lisp:nil
                                 ((topic :target-type topic :member-name
                                   "topic")
                                  (payload :target-type payload :member-name
                                   "payload")
                                  (qos :target-type qos :member-name "qos")
                                  (last-modified-time :target-type timestamp
                                   :member-name "lastModifiedTime")
                                  (user-properties :target-type
                                   user-properties-blob :member-name
                                   "userProperties"))
                                 (:shape-name "GetRetainedMessageResponse"))

(smithy/sdk/shapes:define-input get-thing-shadow-request common-lisp:nil
                                ((thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t)
                                 (shadow-name :target-type shadow-name
                                  :member-name "shadowName" :http-query
                                  "name"))
                                (:shape-name "GetThingShadowRequest"))

(smithy/sdk/shapes:define-output get-thing-shadow-response common-lisp:nil
                                 ((payload :target-type json-document
                                   :member-name "payload" :http-payload
                                   common-lisp:t))
                                 (:shape-name "GetThingShadowResponse"))

(smithy/sdk/shapes:define-error internal-failure-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalFailureException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error invalid-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InvalidRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type json-document smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-input list-named-shadows-for-thing-request
                                common-lisp:nil
                                ((thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t)
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (page-size :target-type page-size :member-name
                                  "pageSize" :http-query "pageSize"))
                                (:shape-name "ListNamedShadowsForThingRequest"))

(smithy/sdk/shapes:define-output list-named-shadows-for-thing-response
                                 common-lisp:nil
                                 ((results :target-type named-shadow-list
                                   :member-name "results")
                                  (next-token :target-type next-token
                                   :member-name "nextToken")
                                  (timestamp :target-type timestamp
                                   :member-name "timestamp"))
                                 (:shape-name
                                  "ListNamedShadowsForThingResponse"))

(smithy/sdk/shapes:define-input list-retained-messages-request common-lisp:nil
                                ((next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListRetainedMessagesRequest"))

(smithy/sdk/shapes:define-output list-retained-messages-response
                                 common-lisp:nil
                                 ((retained-topics :target-type
                                   retained-message-list :member-name
                                   "retainedTopics")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListRetainedMessagesResponse"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type message-expiry smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-error method-not-allowed-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "MethodNotAllowedException")
                                (:error-code 405))

(smithy/sdk/shapes:define-list named-shadow-list :member shadow-name)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type page-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type payload smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-enum payload-format-indicator
    common-lisp:nil
  (:unspecified-bytes "UNSPECIFIED_BYTES")
  (:utf8-data "UTF8_DATA"))

(smithy/sdk/shapes:define-type payload-size smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-input publish-request common-lisp:nil
                                ((topic :target-type topic :required
                                  common-lisp:t :member-name "topic"
                                  :http-label common-lisp:t)
                                 (qos :target-type qos :member-name "qos"
                                  :http-query "qos")
                                 (retain :target-type retain :member-name
                                  "retain" :http-query "retain")
                                 (payload :target-type payload :member-name
                                  "payload" :http-payload common-lisp:t)
                                 (user-properties :target-type
                                  synthesized-json-user-properties :member-name
                                  "userProperties" :http-header
                                  "x-amz-mqtt5-user-properties")
                                 (payload-format-indicator :target-type
                                  payload-format-indicator :member-name
                                  "payloadFormatIndicator" :http-header
                                  "x-amz-mqtt5-payload-format-indicator")
                                 (content-type :target-type content-type
                                  :member-name "contentType" :http-query
                                  "contentType")
                                 (response-topic :target-type response-topic
                                  :member-name "responseTopic" :http-query
                                  "responseTopic")
                                 (correlation-data :target-type
                                  correlation-data :member-name
                                  "correlationData" :http-header
                                  "x-amz-mqtt5-correlation-data")
                                 (message-expiry :target-type message-expiry
                                  :member-name "messageExpiry" :http-query
                                  "messageExpiry"))
                                (:shape-name "PublishRequest"))

(smithy/sdk/shapes:define-type qos smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error request-entity-too-large-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "RequestEntityTooLargeException")
                                (:error-code 413))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type response-topic smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type retain smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list retained-message-list :member
                               retained-message-summary)

(smithy/sdk/shapes:define-structure retained-message-summary common-lisp:nil
                                    ((topic :target-type topic :member-name
                                      "topic")
                                     (payload-size :target-type payload-size
                                      :member-name "payloadSize")
                                     (qos :target-type qos :member-name "qos")
                                     (last-modified-time :target-type timestamp
                                      :member-name "lastModifiedTime"))
                                    (:shape-name "RetainedMessageSummary"))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-type shadow-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type synthesized-json-user-properties
                               smithy/sdk/smithy-types:string :media-type
                               "application/json")

(smithy/sdk/shapes:define-type thing-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type topic smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-error unsupported-document-encoding-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "UnsupportedDocumentEncodingException")
                                (:error-code 415))

(smithy/sdk/shapes:define-input update-thing-shadow-request common-lisp:nil
                                ((thing-name :target-type thing-name :required
                                  common-lisp:t :member-name "thingName"
                                  :http-label common-lisp:t)
                                 (shadow-name :target-type shadow-name
                                  :member-name "shadowName" :http-query "name")
                                 (payload :target-type json-document :required
                                  common-lisp:t :member-name "payload"
                                  :http-payload common-lisp:t))
                                (:shape-name "UpdateThingShadowRequest"))

(smithy/sdk/shapes:define-output update-thing-shadow-response common-lisp:nil
                                 ((payload :target-type json-document
                                   :member-name "payload" :http-payload
                                   common-lisp:t))
                                 (:shape-name "UpdateThingShadowResponse"))

(smithy/sdk/shapes:define-type user-properties-blob
                               smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation delete-thing-shadow :shape-name
                                       "DeleteThingShadow" :input
                                       delete-thing-shadow-request :output
                                       delete-thing-shadow-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        method-not-allowed-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        unsupported-document-encoding-exception)
                                       :method "DELETE" :uri
                                       "/things/{thingName}/shadow" :code 200)

(smithy/sdk/operation:define-operation get-retained-message :shape-name
                                       "GetRetainedMessage" :input
                                       get-retained-message-request :output
                                       get-retained-message-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        method-not-allowed-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/retainedMessage/{topic}" :code 200)

(smithy/sdk/operation:define-operation get-thing-shadow :shape-name
                                       "GetThingShadow" :input
                                       get-thing-shadow-request :output
                                       get-thing-shadow-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        method-not-allowed-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        unsupported-document-encoding-exception)
                                       :method "GET" :uri
                                       "/things/{thingName}/shadow" :code 200)

(smithy/sdk/operation:define-operation list-named-shadows-for-thing :shape-name
                                       "ListNamedShadowsForThing" :input
                                       list-named-shadows-for-thing-request
                                       :output
                                       list-named-shadows-for-thing-response
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        method-not-allowed-exception
                                        resource-not-found-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/api/things/shadow/ListNamedShadowsForThing/{thingName}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-retained-messages :shape-name
                                       "ListRetainedMessages" :input
                                       list-retained-messages-request :output
                                       list-retained-messages-response :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        method-not-allowed-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/retainedMessage"
                                       :code 200)

(smithy/sdk/operation:define-operation publish :shape-name "Publish" :input
                                       publish-request :output common-lisp:null
                                       :errors
                                       (internal-failure-exception
                                        invalid-request-exception
                                        method-not-allowed-exception
                                        throttling-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/topics/{topic}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-thing-shadow :shape-name
                                       "UpdateThingShadow" :input
                                       update-thing-shadow-request :output
                                       update-thing-shadow-response :errors
                                       (conflict-exception
                                        internal-failure-exception
                                        invalid-request-exception
                                        method-not-allowed-exception
                                        request-entity-too-large-exception
                                        service-unavailable-exception
                                        throttling-exception
                                        unauthorized-exception
                                        unsupported-document-encoding-exception)
                                       :method "POST" :uri
                                       "/things/{thingName}/shadow" :code 200)
