(uiop/package:define-package #:pira/apigatewaymanagementapi (:use)
                             (:export #:api-gateway-management-api #:data
                              #:delete-connection #:delete-connection-request
                              #:forbidden-exception #:get-connection
                              #:get-connection-request
                              #:get-connection-response #:gone-exception
                              #:identity #:limit-exceeded-exception
                              #:payload-too-large-exception
                              #:post-to-connection #:post-to-connection-request
                              #:string #:timestamp-iso8601))
(common-lisp:in-package #:pira/apigatewaymanagementapi)

(smithy/sdk/service:define-service api-gateway-management-api :shape-name
                                   "ApiGatewayManagementApi" :version
                                   "2018-11-29" :title
                                   "AmazonApiGatewayManagementApi" :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "ApiGatewayManagementApi")
                                      ("arnNamespace" . "apigateway")
                                      ("cloudFormationName"
                                       . "ApiGatewayManagementApi")
                                      ("cloudTrailEventSource"
                                       . "apigatewaymanagementapi.amazonaws.com")
                                      ("endpointPrefix" . "execute-api"))
                                     ("aws.auth#sigv4"
                                      ("name" . "execute-api"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type data smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-input delete-connection-request common-lisp:nil
                                ((connection-id :target-type string :required
                                  common-lisp:t :member-name "ConnectionId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteConnectionRequest"))

(smithy/sdk/shapes:define-error forbidden-exception common-lisp:nil
                                common-lisp:nil
                                (:shape-name "ForbiddenException")
                                (:error-code 403))

(smithy/sdk/shapes:define-input get-connection-request common-lisp:nil
                                ((connection-id :target-type string :required
                                  common-lisp:t :member-name "ConnectionId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetConnectionRequest"))

(smithy/sdk/shapes:define-output get-connection-response common-lisp:nil
                                 ((connected-at :target-type timestamp-iso8601
                                   :member-name "ConnectedAt" :json-name
                                   "connectedAt")
                                  (identity :target-type identity :member-name
                                   "Identity" :json-name "identity")
                                  (last-active-at :target-type
                                   timestamp-iso8601 :member-name
                                   "LastActiveAt" :json-name "lastActiveAt"))
                                 (:shape-name "GetConnectionResponse"))

(smithy/sdk/shapes:define-error gone-exception common-lisp:nil common-lisp:nil
                                (:shape-name "GoneException") (:error-code 410))

(smithy/sdk/shapes:define-structure identity common-lisp:nil
                                    ((source-ip :target-type string :required
                                      common-lisp:t :member-name "SourceIp"
                                      :json-name "sourceIp")
                                     (user-agent :target-type string :required
                                      common-lisp:t :member-name "UserAgent"
                                      :json-name "userAgent"))
                                    (:shape-name "Identity"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                common-lisp:nil
                                (:shape-name "LimitExceededException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error payload-too-large-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "PayloadTooLargeException")
                                (:error-code 413))

(smithy/sdk/shapes:define-input post-to-connection-request common-lisp:nil
                                ((data :target-type data :required
                                  common-lisp:t :member-name "Data"
                                  :http-payload common-lisp:t)
                                 (connection-id :target-type string :required
                                  common-lisp:t :member-name "ConnectionId"
                                  :http-label common-lisp:t))
                                (:shape-name "PostToConnectionRequest"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp-iso8601
                               smithy/sdk/smithy-types:timestamp)

(smithy/sdk/operation:define-operation delete-connection :shape-name
                                       "DeleteConnection" :input
                                       delete-connection-request :output
                                       common-lisp:null :errors
                                       (forbidden-exception gone-exception
                                        limit-exceeded-exception)
                                       :method "DELETE" :uri
                                       "/@connections/{ConnectionId}" :code 204)

(smithy/sdk/operation:define-operation get-connection :shape-name
                                       "GetConnection" :input
                                       get-connection-request :output
                                       get-connection-response :errors
                                       (forbidden-exception gone-exception
                                        limit-exceeded-exception)
                                       :method "GET" :uri
                                       "/@connections/{ConnectionId}" :code 200)

(smithy/sdk/operation:define-operation post-to-connection :shape-name
                                       "PostToConnection" :input
                                       post-to-connection-request :output
                                       common-lisp:null :errors
                                       (forbidden-exception gone-exception
                                        limit-exceeded-exception
                                        payload-too-large-exception)
                                       :method "POST" :uri
                                       "/@connections/{ConnectionId}" :code 200)
