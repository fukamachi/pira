(uiop/package:define-package #:pira/tests/protocols/aws/apigateway
                             (:use #:pira/tests/shared-types)
                             (:export #:api-key-source-type
                              #:backplane-control-service #:boolean
                              #:endpoint-configuration #:endpoint-type
                              #:get-rest-apis #:get-rest-apis-request
                              #:list-of-endpoint-type #:list-of-rest-api
                              #:list-of-string #:map-of-string-to-string
                              #:nullable-integer #:rest-api #:rest-apis
                              #:string #:timestamp))
(common-lisp:in-package #:pira/tests/protocols/aws/apigateway)

(smithy/sdk/service:define-service backplane-control-service :shape-name
                                   "BackplaneControlService" :version
                                   "2015-07-09" :title "Amazon API Gateway"
                                   :operations '(get-rest-apis) :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "API Gateway")
                                      ("arnNamespace" . "apigateway")
                                      ("cloudFormationName" . "ApiGateway")
                                      ("cloudTrailEventSource"
                                       . "apigateway.amazonaws.com")
                                      ("endpointPrefix" . "apigateway"))
                                     ("aws.auth#sigv4" ("name" . "apigateway"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-enum api-key-source-type
    common-lisp:nil
  (:header "HEADER")
  (:authorizer "AUTHORIZER"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure endpoint-configuration common-lisp:nil
                                    ((types :target-type list-of-endpoint-type
                                      :member-name "types")
                                     (vpc-endpoint-ids :target-type
                                      list-of-string :member-name
                                      "vpcEndpointIds"))
                                    (:shape-name "EndpointConfiguration"))

(smithy/sdk/shapes:define-enum endpoint-type
    common-lisp:nil
  (:regional "REGIONAL")
  (:edge "EDGE")
  (:private "PRIVATE"))

(smithy/sdk/shapes:define-input get-rest-apis-request common-lisp:nil
                                ((position :target-type string :member-name
                                  "position" :http-query "position")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit"))
                                (:shape-name "GetRestApisRequest"))

(smithy/sdk/shapes:define-list list-of-endpoint-type :member endpoint-type)

(smithy/sdk/shapes:define-list list-of-rest-api :member rest-api)

(smithy/sdk/shapes:define-list list-of-string :member string)

(smithy/sdk/shapes:define-map map-of-string-to-string :key string :value string)

(smithy/sdk/shapes:define-type nullable-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure rest-api common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (name :target-type string :member-name
                                      "name")
                                     (description :target-type string
                                      :member-name "description")
                                     (created-date :target-type timestamp
                                      :member-name "createdDate")
                                     (version :target-type string :member-name
                                      "version")
                                     (warnings :target-type list-of-string
                                      :member-name "warnings")
                                     (binary-media-types :target-type
                                      list-of-string :member-name
                                      "binaryMediaTypes")
                                     (minimum-compression-size :target-type
                                      nullable-integer :member-name
                                      "minimumCompressionSize")
                                     (api-key-source :target-type
                                      api-key-source-type :member-name
                                      "apiKeySource")
                                     (endpoint-configuration :target-type
                                      endpoint-configuration :member-name
                                      "endpointConfiguration")
                                     (policy :target-type string :member-name
                                      "policy")
                                     (tags :target-type map-of-string-to-string
                                      :member-name "tags")
                                     (disable-execute-api-endpoint :target-type
                                      boolean :member-name
                                      "disableExecuteApiEndpoint"))
                                    (:shape-name "RestApi"))

(smithy/sdk/shapes:define-structure rest-apis common-lisp:nil
                                    ((items :target-type list-of-rest-api
                                      :member-name "items" :json-name "item")
                                     (position :target-type string :member-name
                                      "position"))
                                    (:shape-name "RestApis"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((retry-after-seconds :target-type string
                                  :member-name "retryAfterSeconds" :http-header
                                  "Retry-After")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/operation:define-operation get-rest-apis :shape-name "GetRestApis"
                                       :input get-rest-apis-request :output
                                       rest-apis :errors
                                       (bad-request-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/restapis" :code 200
                                       :request-tests
                                       ((:id "ApiGatewayAccept" :protocol
                                         "aws.protocols#restJson1" :method
                                         "GET" :uri "/restapis" :headers
                                         (("Accept" . "application/json"))
                                         :body "" :documentation
                                         "API Gateway requires that this Accept header is set on all requests.")))

(pira/tests/runner:define-service-tests)
