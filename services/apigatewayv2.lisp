(uiop/package:define-package #:pira/apigatewayv2 (:use)
                             (:export #:access-denied-exception
                              #:access-log-settings #:api #:api-gateway-v2
                              #:api-mapping #:arn #:authorization-scopes
                              #:authorization-type #:authorizer
                              #:authorizer-type #:bad-request-exception
                              #:conflict-exception #:connection-type
                              #:content-handling-strategy #:cors
                              #:cors-header-list #:cors-method-list
                              #:cors-origin-list #:create-api
                              #:create-api-mapping #:create-authorizer
                              #:create-deployment #:create-domain-name
                              #:create-integration
                              #:create-integration-response #:create-model
                              #:create-route #:create-route-response
                              #:create-routing-rule #:create-stage
                              #:create-vpc-link #:delete-access-log-settings
                              #:delete-api #:delete-api-mapping
                              #:delete-authorizer #:delete-cors-configuration
                              #:delete-deployment #:delete-domain-name
                              #:delete-integration
                              #:delete-integration-response #:delete-model
                              #:delete-route #:delete-route-request-parameter
                              #:delete-route-response #:delete-route-settings
                              #:delete-routing-rule #:delete-stage
                              #:delete-vpc-link #:deployment
                              #:deployment-status #:domain-name
                              #:domain-name-configuration
                              #:domain-name-configurations #:domain-name-status
                              #:endpoint-type #:export-api #:exported-api
                              #:get-api #:get-api-mapping #:get-api-mappings
                              #:get-apis #:get-authorizer #:get-authorizers
                              #:get-deployment #:get-deployments
                              #:get-domain-name #:get-domain-names
                              #:get-integration #:get-integration-response
                              #:get-integration-responses #:get-integrations
                              #:get-model #:get-model-template #:get-models
                              #:get-route #:get-route-response
                              #:get-route-responses #:get-routes
                              #:get-routing-rule #:get-stage #:get-stages
                              #:get-tags #:get-vpc-link #:get-vpc-links #:id
                              #:identity-source-list #:import-api
                              #:integer-with-length-between0and3600
                              #:integer-with-length-between50and30000
                              #:integer-with-length-between-minus1and86400
                              #:integration #:integration-parameters
                              #:integration-response #:integration-type
                              #:ip-address-type #:jwtconfiguration
                              #:list-routing-rules #:logging-level
                              #:max-results #:model #:mutual-tls-authentication
                              #:mutual-tls-authentication-input #:next-token
                              #:not-found-exception #:parameter-constraints
                              #:passthrough-behavior #:protocol-type
                              #:put-routing-rule #:reimport-api
                              #:reset-authorizers-cache #:response-parameters
                              #:route #:route-models #:route-parameters
                              #:route-response #:route-settings
                              #:route-settings-map #:routing-mode
                              #:routing-rule #:routing-rule-action
                              #:routing-rule-action-invoke-api
                              #:routing-rule-condition
                              #:routing-rule-match-base-paths
                              #:routing-rule-match-header-value
                              #:routing-rule-match-headers
                              #:routing-rule-priority #:security-group-id-list
                              #:security-policy #:selection-expression
                              #:selection-key #:stage #:stage-variables-map
                              #:string-with-length-between0and1024
                              #:string-with-length-between0and2048
                              #:string-with-length-between0and32k
                              #:string-with-length-between1and1024
                              #:string-with-length-between1and128
                              #:string-with-length-between1and1600
                              #:string-with-length-between1and256
                              #:string-with-length-between1and512
                              #:string-with-length-between1and64
                              #:subnet-id-list #:tag-resource #:tags
                              #:template-map #:tls-config #:tls-config-input
                              #:too-many-requests-exception #:untag-resource
                              #:update-api #:update-api-mapping
                              #:update-authorizer #:update-deployment
                              #:update-domain-name #:update-integration
                              #:update-integration-response #:update-model
                              #:update-route #:update-route-response
                              #:update-stage #:update-vpc-link
                              #:uri-with-length-between1and2048 #:vpc-link
                              #:vpc-link-status #:vpc-link-version #:boolean
                              #:double #:integer #:list-of-api
                              #:list-of-api-mapping #:list-of-authorizer
                              #:list-of-deployment #:list-of-domain-name
                              #:list-of-integration
                              #:list-of-integration-response #:list-of-model
                              #:list-of-route #:list-of-route-response
                              #:list-of-routing-rule
                              #:list-of-routing-rule-action
                              #:list-of-routing-rule-condition
                              #:list-of-routing-rule-match-header-value
                              #:list-of-selection-key #:list-of-stage
                              #:list-of-vpc-link #:list-of-string #:string
                              #:timestamp-iso8601 #:apigatewayv2-error))
(common-lisp:in-package #:pira/apigatewayv2)

(common-lisp:define-condition apigatewayv2-error
    (pira/error:aws-error)
    common-lisp:nil)

(smithy/sdk/service:define-service api-gateway-v2 :shape-name "ApiGatewayV2"
                                   :version "2018-11-29" :title
                                   "AmazonApiGatewayV2" :operations
                                   '(create-api create-api-mapping
                                     create-authorizer create-deployment
                                     create-domain-name create-integration
                                     create-integration-response create-model
                                     create-route create-route-response
                                     create-routing-rule create-stage
                                     create-vpc-link delete-access-log-settings
                                     delete-api delete-api-mapping
                                     delete-authorizer
                                     delete-cors-configuration
                                     delete-deployment delete-domain-name
                                     delete-integration
                                     delete-integration-response delete-model
                                     delete-route
                                     delete-route-request-parameter
                                     delete-route-response
                                     delete-route-settings delete-routing-rule
                                     delete-stage delete-vpc-link export-api
                                     get-api get-api-mapping get-api-mappings
                                     get-apis get-authorizer get-authorizers
                                     get-deployment get-deployments
                                     get-domain-name get-domain-names
                                     get-integration get-integration-response
                                     get-integration-responses get-integrations
                                     get-model get-models get-model-template
                                     get-route get-route-response
                                     get-route-responses get-routes
                                     get-routing-rule get-stage get-stages
                                     get-tags get-vpc-link get-vpc-links
                                     import-api list-routing-rules
                                     put-routing-rule reimport-api
                                     reset-authorizers-cache tag-resource
                                     untag-resource update-api
                                     update-api-mapping update-authorizer
                                     update-deployment update-domain-name
                                     update-integration
                                     update-integration-response update-model
                                     update-route update-route-response
                                     update-stage update-vpc-link)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "ApiGatewayV2")
                                      ("arnNamespace" . "apigateway")
                                      ("cloudFormationName" . "ApiGatewayV2")
                                      ("cloudTrailEventSource"
                                       . "apigatewayv2.amazonaws.com")
                                      ("endpointPrefix" . "apigateway"))
                                     ("aws.auth#sigv4" ("name" . "apigateway"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403)
                                (:base-class apigatewayv2-error))

(smithy/sdk/shapes:define-structure access-log-settings common-lisp:nil
                                    ((destination-arn :target-type arn
                                      :member-name "DestinationArn" :json-name
                                      "destinationArn")
                                     (format :target-type
                                      string-with-length-between1and1024
                                      :member-name "Format" :json-name
                                      "format"))
                                    (:shape-name "AccessLogSettings"))

(smithy/sdk/shapes:define-structure api common-lisp:nil
                                    ((api-endpoint :target-type string
                                      :member-name "ApiEndpoint" :json-name
                                      "apiEndpoint")
                                     (api-gateway-managed :target-type boolean
                                      :member-name "ApiGatewayManaged"
                                      :json-name "apiGatewayManaged")
                                     (api-id :target-type id :member-name
                                      "ApiId" :json-name "apiId")
                                     (api-key-selection-expression :target-type
                                      selection-expression :member-name
                                      "ApiKeySelectionExpression" :json-name
                                      "apiKeySelectionExpression")
                                     (cors-configuration :target-type cors
                                      :member-name "CorsConfiguration"
                                      :json-name "corsConfiguration")
                                     (created-date :target-type
                                      timestamp-iso8601 :member-name
                                      "CreatedDate" :json-name "createdDate")
                                     (description :target-type
                                      string-with-length-between0and1024
                                      :member-name "Description" :json-name
                                      "description")
                                     (disable-schema-validation :target-type
                                      boolean :member-name
                                      "DisableSchemaValidation" :json-name
                                      "disableSchemaValidation")
                                     (disable-execute-api-endpoint :target-type
                                      boolean :member-name
                                      "DisableExecuteApiEndpoint" :json-name
                                      "disableExecuteApiEndpoint")
                                     (import-info :target-type list-of-string
                                      :member-name "ImportInfo" :json-name
                                      "importInfo")
                                     (ip-address-type :target-type
                                      ip-address-type :member-name
                                      "IpAddressType" :json-name
                                      "ipAddressType")
                                     (name :target-type
                                      string-with-length-between1and128
                                      :required common-lisp:t :member-name
                                      "Name" :json-name "name")
                                     (protocol-type :target-type protocol-type
                                      :required common-lisp:t :member-name
                                      "ProtocolType" :json-name "protocolType")
                                     (route-selection-expression :target-type
                                      selection-expression :required
                                      common-lisp:t :member-name
                                      "RouteSelectionExpression" :json-name
                                      "routeSelectionExpression")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags")
                                     (version :target-type
                                      string-with-length-between1and64
                                      :member-name "Version" :json-name
                                      "version")
                                     (warnings :target-type list-of-string
                                      :member-name "Warnings" :json-name
                                      "warnings"))
                                    (:shape-name "Api"))

(smithy/sdk/shapes:define-structure api-mapping common-lisp:nil
                                    ((api-id :target-type id :required
                                      common-lisp:t :member-name "ApiId"
                                      :json-name "apiId")
                                     (api-mapping-id :target-type id
                                      :member-name "ApiMappingId" :json-name
                                      "apiMappingId")
                                     (api-mapping-key :target-type
                                      selection-key :member-name
                                      "ApiMappingKey" :json-name
                                      "apiMappingKey")
                                     (stage :target-type
                                      string-with-length-between1and128
                                      :required common-lisp:t :member-name
                                      "Stage" :json-name "stage"))
                                    (:shape-name "ApiMapping"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list authorization-scopes :member
                               string-with-length-between1and64)

(smithy/sdk/shapes:define-enum authorization-type
    common-lisp:nil
  (:none "NONE")
  (:aws-iam "AWS_IAM")
  (:custom "CUSTOM")
  (:jwt "JWT"))

(smithy/sdk/shapes:define-structure authorizer common-lisp:nil
                                    ((authorizer-credentials-arn :target-type
                                      arn :member-name
                                      "AuthorizerCredentialsArn" :json-name
                                      "authorizerCredentialsArn")
                                     (authorizer-id :target-type id
                                      :member-name "AuthorizerId" :json-name
                                      "authorizerId")
                                     (authorizer-payload-format-version
                                      :target-type
                                      string-with-length-between1and64
                                      :member-name
                                      "AuthorizerPayloadFormatVersion"
                                      :json-name
                                      "authorizerPayloadFormatVersion")
                                     (authorizer-result-ttl-in-seconds
                                      :target-type
                                      integer-with-length-between0and3600
                                      :member-name
                                      "AuthorizerResultTtlInSeconds" :json-name
                                      "authorizerResultTtlInSeconds")
                                     (authorizer-type :target-type
                                      authorizer-type :member-name
                                      "AuthorizerType" :json-name
                                      "authorizerType")
                                     (authorizer-uri :target-type
                                      uri-with-length-between1and2048
                                      :member-name "AuthorizerUri" :json-name
                                      "authorizerUri")
                                     (enable-simple-responses :target-type
                                      boolean :member-name
                                      "EnableSimpleResponses" :json-name
                                      "enableSimpleResponses")
                                     (identity-source :target-type
                                      identity-source-list :member-name
                                      "IdentitySource" :json-name
                                      "identitySource")
                                     (identity-validation-expression
                                      :target-type
                                      string-with-length-between0and1024
                                      :member-name
                                      "IdentityValidationExpression" :json-name
                                      "identityValidationExpression")
                                     (jwt-configuration :target-type
                                      jwtconfiguration :member-name
                                      "JwtConfiguration" :json-name
                                      "jwtConfiguration")
                                     (name :target-type
                                      string-with-length-between1and128
                                      :required common-lisp:t :member-name
                                      "Name" :json-name "name"))
                                    (:shape-name "Authorizer"))

(smithy/sdk/shapes:define-enum authorizer-type
    common-lisp:nil
  (:request "REQUEST")
  (:jwt "JWT"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400)
                                (:base-class apigatewayv2-error))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409)
                                (:base-class apigatewayv2-error))

(smithy/sdk/shapes:define-enum connection-type
    common-lisp:nil
  (:internet "INTERNET")
  (:vpc-link "VPC_LINK"))

(smithy/sdk/shapes:define-enum content-handling-strategy
    common-lisp:nil
  (:convert-to-binary "CONVERT_TO_BINARY")
  (:convert-to-text "CONVERT_TO_TEXT"))

(smithy/sdk/shapes:define-structure cors common-lisp:nil
                                    ((allow-credentials :target-type boolean
                                      :member-name "AllowCredentials"
                                      :json-name "allowCredentials")
                                     (allow-headers :target-type
                                      cors-header-list :member-name
                                      "AllowHeaders" :json-name "allowHeaders")
                                     (allow-methods :target-type
                                      cors-method-list :member-name
                                      "AllowMethods" :json-name "allowMethods")
                                     (allow-origins :target-type
                                      cors-origin-list :member-name
                                      "AllowOrigins" :json-name "allowOrigins")
                                     (expose-headers :target-type
                                      cors-header-list :member-name
                                      "ExposeHeaders" :json-name
                                      "exposeHeaders")
                                     (max-age :target-type
                                      integer-with-length-between-minus1and86400
                                      :member-name "MaxAge" :json-name
                                      "maxAge"))
                                    (:shape-name "Cors"))

(smithy/sdk/shapes:define-list cors-header-list :member string)

(smithy/sdk/shapes:define-list cors-method-list :member
                               string-with-length-between1and64)

(smithy/sdk/shapes:define-list cors-origin-list :member string)

(smithy/sdk/shapes:define-input create-api-mapping-request common-lisp:nil
                                ((api-id :target-type id :required
                                  common-lisp:t :member-name "ApiId" :json-name
                                  "apiId")
                                 (api-mapping-key :target-type selection-key
                                  :member-name "ApiMappingKey" :json-name
                                  "apiMappingKey")
                                 (domain-name :target-type string :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (stage :target-type
                                  string-with-length-between1and128 :required
                                  common-lisp:t :member-name "Stage" :json-name
                                  "stage"))
                                (:shape-name "CreateApiMappingRequest"))

(smithy/sdk/shapes:define-output create-api-mapping-response common-lisp:nil
                                 ((api-id :target-type id :member-name "ApiId"
                                   :json-name "apiId")
                                  (api-mapping-id :target-type id :member-name
                                   "ApiMappingId" :json-name "apiMappingId")
                                  (api-mapping-key :target-type selection-key
                                   :member-name "ApiMappingKey" :json-name
                                   "apiMappingKey")
                                  (stage :target-type
                                   string-with-length-between1and128
                                   :member-name "Stage" :json-name "stage"))
                                 (:shape-name "CreateApiMappingResponse"))

(smithy/sdk/shapes:define-input create-api-request common-lisp:nil
                                ((api-key-selection-expression :target-type
                                  selection-expression :member-name
                                  "ApiKeySelectionExpression" :json-name
                                  "apiKeySelectionExpression")
                                 (cors-configuration :target-type cors
                                  :member-name "CorsConfiguration" :json-name
                                  "corsConfiguration")
                                 (credentials-arn :target-type arn :member-name
                                  "CredentialsArn" :json-name "credentialsArn")
                                 (description :target-type
                                  string-with-length-between0and1024
                                  :member-name "Description" :json-name
                                  "description")
                                 (disable-schema-validation :target-type
                                  boolean :member-name
                                  "DisableSchemaValidation" :json-name
                                  "disableSchemaValidation")
                                 (disable-execute-api-endpoint :target-type
                                  boolean :member-name
                                  "DisableExecuteApiEndpoint" :json-name
                                  "disableExecuteApiEndpoint")
                                 (ip-address-type :target-type ip-address-type
                                  :member-name "IpAddressType" :json-name
                                  "ipAddressType")
                                 (name :target-type
                                  string-with-length-between1and128 :required
                                  common-lisp:t :member-name "Name" :json-name
                                  "name")
                                 (protocol-type :target-type protocol-type
                                  :required common-lisp:t :member-name
                                  "ProtocolType" :json-name "protocolType")
                                 (route-key :target-type selection-key
                                  :member-name "RouteKey" :json-name
                                  "routeKey")
                                 (route-selection-expression :target-type
                                  selection-expression :member-name
                                  "RouteSelectionExpression" :json-name
                                  "routeSelectionExpression")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags")
                                 (target :target-type
                                  uri-with-length-between1and2048 :member-name
                                  "Target" :json-name "target")
                                 (version :target-type
                                  string-with-length-between1and64 :member-name
                                  "Version" :json-name "version"))
                                (:shape-name "CreateApiRequest"))

(smithy/sdk/shapes:define-output create-api-response common-lisp:nil
                                 ((api-endpoint :target-type string
                                   :member-name "ApiEndpoint" :json-name
                                   "apiEndpoint")
                                  (api-gateway-managed :target-type boolean
                                   :member-name "ApiGatewayManaged" :json-name
                                   "apiGatewayManaged")
                                  (api-id :target-type id :member-name "ApiId"
                                   :json-name "apiId")
                                  (api-key-selection-expression :target-type
                                   selection-expression :member-name
                                   "ApiKeySelectionExpression" :json-name
                                   "apiKeySelectionExpression")
                                  (cors-configuration :target-type cors
                                   :member-name "CorsConfiguration" :json-name
                                   "corsConfiguration")
                                  (created-date :target-type timestamp-iso8601
                                   :member-name "CreatedDate" :json-name
                                   "createdDate")
                                  (description :target-type
                                   string-with-length-between0and1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (disable-schema-validation :target-type
                                   boolean :member-name
                                   "DisableSchemaValidation" :json-name
                                   "disableSchemaValidation")
                                  (disable-execute-api-endpoint :target-type
                                   boolean :member-name
                                   "DisableExecuteApiEndpoint" :json-name
                                   "disableExecuteApiEndpoint")
                                  (import-info :target-type list-of-string
                                   :member-name "ImportInfo" :json-name
                                   "importInfo")
                                  (ip-address-type :target-type ip-address-type
                                   :member-name "IpAddressType" :json-name
                                   "ipAddressType")
                                  (name :target-type
                                   string-with-length-between1and128
                                   :member-name "Name" :json-name "name")
                                  (protocol-type :target-type protocol-type
                                   :member-name "ProtocolType" :json-name
                                   "protocolType")
                                  (route-selection-expression :target-type
                                   selection-expression :member-name
                                   "RouteSelectionExpression" :json-name
                                   "routeSelectionExpression")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (version :target-type
                                   string-with-length-between1and64
                                   :member-name "Version" :json-name "version")
                                  (warnings :target-type list-of-string
                                   :member-name "Warnings" :json-name
                                   "warnings"))
                                 (:shape-name "CreateApiResponse"))

(smithy/sdk/shapes:define-input create-authorizer-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (authorizer-credentials-arn :target-type arn
                                  :member-name "AuthorizerCredentialsArn"
                                  :json-name "authorizerCredentialsArn")
                                 (authorizer-payload-format-version
                                  :target-type string-with-length-between1and64
                                  :member-name "AuthorizerPayloadFormatVersion"
                                  :json-name "authorizerPayloadFormatVersion")
                                 (authorizer-result-ttl-in-seconds :target-type
                                  integer-with-length-between0and3600
                                  :member-name "AuthorizerResultTtlInSeconds"
                                  :json-name "authorizerResultTtlInSeconds")
                                 (authorizer-type :target-type authorizer-type
                                  :required common-lisp:t :member-name
                                  "AuthorizerType" :json-name "authorizerType")
                                 (authorizer-uri :target-type
                                  uri-with-length-between1and2048 :member-name
                                  "AuthorizerUri" :json-name "authorizerUri")
                                 (enable-simple-responses :target-type boolean
                                  :member-name "EnableSimpleResponses"
                                  :json-name "enableSimpleResponses")
                                 (identity-source :target-type
                                  identity-source-list :required common-lisp:t
                                  :member-name "IdentitySource" :json-name
                                  "identitySource")
                                 (identity-validation-expression :target-type
                                  string-with-length-between0and1024
                                  :member-name "IdentityValidationExpression"
                                  :json-name "identityValidationExpression")
                                 (jwt-configuration :target-type
                                  jwtconfiguration :member-name
                                  "JwtConfiguration" :json-name
                                  "jwtConfiguration")
                                 (name :target-type
                                  string-with-length-between1and128 :required
                                  common-lisp:t :member-name "Name" :json-name
                                  "name"))
                                (:shape-name "CreateAuthorizerRequest"))

(smithy/sdk/shapes:define-output create-authorizer-response common-lisp:nil
                                 ((authorizer-credentials-arn :target-type arn
                                   :member-name "AuthorizerCredentialsArn"
                                   :json-name "authorizerCredentialsArn")
                                  (authorizer-id :target-type id :member-name
                                   "AuthorizerId" :json-name "authorizerId")
                                  (authorizer-payload-format-version
                                   :target-type
                                   string-with-length-between1and64
                                   :member-name
                                   "AuthorizerPayloadFormatVersion" :json-name
                                   "authorizerPayloadFormatVersion")
                                  (authorizer-result-ttl-in-seconds
                                   :target-type
                                   integer-with-length-between0and3600
                                   :member-name "AuthorizerResultTtlInSeconds"
                                   :json-name "authorizerResultTtlInSeconds")
                                  (authorizer-type :target-type authorizer-type
                                   :member-name "AuthorizerType" :json-name
                                   "authorizerType")
                                  (authorizer-uri :target-type
                                   uri-with-length-between1and2048 :member-name
                                   "AuthorizerUri" :json-name "authorizerUri")
                                  (enable-simple-responses :target-type boolean
                                   :member-name "EnableSimpleResponses"
                                   :json-name "enableSimpleResponses")
                                  (identity-source :target-type
                                   identity-source-list :member-name
                                   "IdentitySource" :json-name
                                   "identitySource")
                                  (identity-validation-expression :target-type
                                   string-with-length-between0and1024
                                   :member-name "IdentityValidationExpression"
                                   :json-name "identityValidationExpression")
                                  (jwt-configuration :target-type
                                   jwtconfiguration :member-name
                                   "JwtConfiguration" :json-name
                                   "jwtConfiguration")
                                  (name :target-type
                                   string-with-length-between1and128
                                   :member-name "Name" :json-name "name"))
                                 (:shape-name "CreateAuthorizerResponse"))

(smithy/sdk/shapes:define-input create-deployment-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (description :target-type
                                  string-with-length-between0and1024
                                  :member-name "Description" :json-name
                                  "description")
                                 (stage-name :target-type
                                  string-with-length-between1and128
                                  :member-name "StageName" :json-name
                                  "stageName"))
                                (:shape-name "CreateDeploymentRequest"))

(smithy/sdk/shapes:define-output create-deployment-response common-lisp:nil
                                 ((auto-deployed :target-type boolean
                                   :member-name "AutoDeployed" :json-name
                                   "autoDeployed")
                                  (created-date :target-type timestamp-iso8601
                                   :member-name "CreatedDate" :json-name
                                   "createdDate")
                                  (deployment-id :target-type id :member-name
                                   "DeploymentId" :json-name "deploymentId")
                                  (deployment-status :target-type
                                   deployment-status :member-name
                                   "DeploymentStatus" :json-name
                                   "deploymentStatus")
                                  (deployment-status-message :target-type
                                   string :member-name
                                   "DeploymentStatusMessage" :json-name
                                   "deploymentStatusMessage")
                                  (description :target-type
                                   string-with-length-between0and1024
                                   :member-name "Description" :json-name
                                   "description"))
                                 (:shape-name "CreateDeploymentResponse"))

(smithy/sdk/shapes:define-input create-domain-name-request common-lisp:nil
                                ((domain-name :target-type
                                  string-with-length-between1and512 :required
                                  common-lisp:t :member-name "DomainName"
                                  :json-name "domainName")
                                 (domain-name-configurations :target-type
                                  domain-name-configurations :member-name
                                  "DomainNameConfigurations" :json-name
                                  "domainNameConfigurations")
                                 (mutual-tls-authentication :target-type
                                  mutual-tls-authentication-input :member-name
                                  "MutualTlsAuthentication" :json-name
                                  "mutualTlsAuthentication")
                                 (routing-mode :target-type routing-mode
                                  :member-name "RoutingMode" :json-name
                                  "routingMode")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreateDomainNameRequest"))

(smithy/sdk/shapes:define-output create-domain-name-response common-lisp:nil
                                 ((api-mapping-selection-expression
                                   :target-type selection-expression
                                   :member-name "ApiMappingSelectionExpression"
                                   :json-name "apiMappingSelectionExpression")
                                  (domain-name :target-type
                                   string-with-length-between1and512
                                   :member-name "DomainName" :json-name
                                   "domainName")
                                  (domain-name-arn :target-type arn
                                   :member-name "DomainNameArn" :json-name
                                   "domainNameArn")
                                  (domain-name-configurations :target-type
                                   domain-name-configurations :member-name
                                   "DomainNameConfigurations" :json-name
                                   "domainNameConfigurations")
                                  (mutual-tls-authentication :target-type
                                   mutual-tls-authentication :member-name
                                   "MutualTlsAuthentication" :json-name
                                   "mutualTlsAuthentication")
                                  (routing-mode :target-type routing-mode
                                   :member-name "RoutingMode" :json-name
                                   "routingMode")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "CreateDomainNameResponse"))

(smithy/sdk/shapes:define-input create-integration-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (connection-id :target-type
                                  string-with-length-between1and1024
                                  :member-name "ConnectionId" :json-name
                                  "connectionId")
                                 (connection-type :target-type connection-type
                                  :member-name "ConnectionType" :json-name
                                  "connectionType")
                                 (content-handling-strategy :target-type
                                  content-handling-strategy :member-name
                                  "ContentHandlingStrategy" :json-name
                                  "contentHandlingStrategy")
                                 (credentials-arn :target-type arn :member-name
                                  "CredentialsArn" :json-name "credentialsArn")
                                 (description :target-type
                                  string-with-length-between0and1024
                                  :member-name "Description" :json-name
                                  "description")
                                 (integration-method :target-type
                                  string-with-length-between1and64 :member-name
                                  "IntegrationMethod" :json-name
                                  "integrationMethod")
                                 (integration-subtype :target-type
                                  string-with-length-between1and128
                                  :member-name "IntegrationSubtype" :json-name
                                  "integrationSubtype")
                                 (integration-type :target-type
                                  integration-type :required common-lisp:t
                                  :member-name "IntegrationType" :json-name
                                  "integrationType")
                                 (integration-uri :target-type
                                  uri-with-length-between1and2048 :member-name
                                  "IntegrationUri" :json-name "integrationUri")
                                 (passthrough-behavior :target-type
                                  passthrough-behavior :member-name
                                  "PassthroughBehavior" :json-name
                                  "passthroughBehavior")
                                 (payload-format-version :target-type
                                  string-with-length-between1and64 :member-name
                                  "PayloadFormatVersion" :json-name
                                  "payloadFormatVersion")
                                 (request-parameters :target-type
                                  integration-parameters :member-name
                                  "RequestParameters" :json-name
                                  "requestParameters")
                                 (request-templates :target-type template-map
                                  :member-name "RequestTemplates" :json-name
                                  "requestTemplates")
                                 (response-parameters :target-type
                                  response-parameters :member-name
                                  "ResponseParameters" :json-name
                                  "responseParameters")
                                 (template-selection-expression :target-type
                                  selection-expression :member-name
                                  "TemplateSelectionExpression" :json-name
                                  "templateSelectionExpression")
                                 (timeout-in-millis :target-type
                                  integer-with-length-between50and30000
                                  :member-name "TimeoutInMillis" :json-name
                                  "timeoutInMillis")
                                 (tls-config :target-type tls-config-input
                                  :member-name "TlsConfig" :json-name
                                  "tlsConfig"))
                                (:shape-name "CreateIntegrationRequest"))

(smithy/sdk/shapes:define-input create-integration-response-request
                                common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (content-handling-strategy :target-type
                                  content-handling-strategy :member-name
                                  "ContentHandlingStrategy" :json-name
                                  "contentHandlingStrategy")
                                 (integration-id :target-type string :required
                                  common-lisp:t :member-name "IntegrationId"
                                  :http-label common-lisp:t)
                                 (integration-response-key :target-type
                                  selection-key :required common-lisp:t
                                  :member-name "IntegrationResponseKey"
                                  :json-name "integrationResponseKey")
                                 (response-parameters :target-type
                                  integration-parameters :member-name
                                  "ResponseParameters" :json-name
                                  "responseParameters")
                                 (response-templates :target-type template-map
                                  :member-name "ResponseTemplates" :json-name
                                  "responseTemplates")
                                 (template-selection-expression :target-type
                                  selection-expression :member-name
                                  "TemplateSelectionExpression" :json-name
                                  "templateSelectionExpression"))
                                (:shape-name
                                 "CreateIntegrationResponseRequest"))

(smithy/sdk/shapes:define-output create-integration-response-response
                                 common-lisp:nil
                                 ((content-handling-strategy :target-type
                                   content-handling-strategy :member-name
                                   "ContentHandlingStrategy" :json-name
                                   "contentHandlingStrategy")
                                  (integration-response-id :target-type id
                                   :member-name "IntegrationResponseId"
                                   :json-name "integrationResponseId")
                                  (integration-response-key :target-type
                                   selection-key :member-name
                                   "IntegrationResponseKey" :json-name
                                   "integrationResponseKey")
                                  (response-parameters :target-type
                                   integration-parameters :member-name
                                   "ResponseParameters" :json-name
                                   "responseParameters")
                                  (response-templates :target-type template-map
                                   :member-name "ResponseTemplates" :json-name
                                   "responseTemplates")
                                  (template-selection-expression :target-type
                                   selection-expression :member-name
                                   "TemplateSelectionExpression" :json-name
                                   "templateSelectionExpression"))
                                 (:shape-name
                                  "CreateIntegrationResponseResponse"))

(smithy/sdk/shapes:define-output create-integration-result common-lisp:nil
                                 ((api-gateway-managed :target-type boolean
                                   :member-name "ApiGatewayManaged" :json-name
                                   "apiGatewayManaged")
                                  (connection-id :target-type
                                   string-with-length-between1and1024
                                   :member-name "ConnectionId" :json-name
                                   "connectionId")
                                  (connection-type :target-type connection-type
                                   :member-name "ConnectionType" :json-name
                                   "connectionType")
                                  (content-handling-strategy :target-type
                                   content-handling-strategy :member-name
                                   "ContentHandlingStrategy" :json-name
                                   "contentHandlingStrategy")
                                  (credentials-arn :target-type arn
                                   :member-name "CredentialsArn" :json-name
                                   "credentialsArn")
                                  (description :target-type
                                   string-with-length-between0and1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (integration-id :target-type id :member-name
                                   "IntegrationId" :json-name "integrationId")
                                  (integration-method :target-type
                                   string-with-length-between1and64
                                   :member-name "IntegrationMethod" :json-name
                                   "integrationMethod")
                                  (integration-response-selection-expression
                                   :target-type selection-expression
                                   :member-name
                                   "IntegrationResponseSelectionExpression"
                                   :json-name
                                   "integrationResponseSelectionExpression")
                                  (integration-subtype :target-type
                                   string-with-length-between1and128
                                   :member-name "IntegrationSubtype" :json-name
                                   "integrationSubtype")
                                  (integration-type :target-type
                                   integration-type :member-name
                                   "IntegrationType" :json-name
                                   "integrationType")
                                  (integration-uri :target-type
                                   uri-with-length-between1and2048 :member-name
                                   "IntegrationUri" :json-name
                                   "integrationUri")
                                  (passthrough-behavior :target-type
                                   passthrough-behavior :member-name
                                   "PassthroughBehavior" :json-name
                                   "passthroughBehavior")
                                  (payload-format-version :target-type
                                   string-with-length-between1and64
                                   :member-name "PayloadFormatVersion"
                                   :json-name "payloadFormatVersion")
                                  (request-parameters :target-type
                                   integration-parameters :member-name
                                   "RequestParameters" :json-name
                                   "requestParameters")
                                  (request-templates :target-type template-map
                                   :member-name "RequestTemplates" :json-name
                                   "requestTemplates")
                                  (response-parameters :target-type
                                   response-parameters :member-name
                                   "ResponseParameters" :json-name
                                   "responseParameters")
                                  (template-selection-expression :target-type
                                   selection-expression :member-name
                                   "TemplateSelectionExpression" :json-name
                                   "templateSelectionExpression")
                                  (timeout-in-millis :target-type
                                   integer-with-length-between50and30000
                                   :member-name "TimeoutInMillis" :json-name
                                   "timeoutInMillis")
                                  (tls-config :target-type tls-config
                                   :member-name "TlsConfig" :json-name
                                   "tlsConfig"))
                                 (:shape-name "CreateIntegrationResult"))

(smithy/sdk/shapes:define-input create-model-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (content-type :target-type
                                  string-with-length-between1and256
                                  :member-name "ContentType" :json-name
                                  "contentType")
                                 (description :target-type
                                  string-with-length-between0and1024
                                  :member-name "Description" :json-name
                                  "description")
                                 (name :target-type
                                  string-with-length-between1and128 :required
                                  common-lisp:t :member-name "Name" :json-name
                                  "name")
                                 (schema :target-type
                                  string-with-length-between0and32k :required
                                  common-lisp:t :member-name "Schema"
                                  :json-name "schema"))
                                (:shape-name "CreateModelRequest"))

(smithy/sdk/shapes:define-output create-model-response common-lisp:nil
                                 ((content-type :target-type
                                   string-with-length-between1and256
                                   :member-name "ContentType" :json-name
                                   "contentType")
                                  (description :target-type
                                   string-with-length-between0and1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (model-id :target-type id :member-name
                                   "ModelId" :json-name "modelId")
                                  (name :target-type
                                   string-with-length-between1and128
                                   :member-name "Name" :json-name "name")
                                  (schema :target-type
                                   string-with-length-between0and32k
                                   :member-name "Schema" :json-name "schema"))
                                 (:shape-name "CreateModelResponse"))

(smithy/sdk/shapes:define-input create-route-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (api-key-required :target-type boolean
                                  :member-name "ApiKeyRequired" :json-name
                                  "apiKeyRequired")
                                 (authorization-scopes :target-type
                                  authorization-scopes :member-name
                                  "AuthorizationScopes" :json-name
                                  "authorizationScopes")
                                 (authorization-type :target-type
                                  authorization-type :member-name
                                  "AuthorizationType" :json-name
                                  "authorizationType")
                                 (authorizer-id :target-type id :member-name
                                  "AuthorizerId" :json-name "authorizerId")
                                 (model-selection-expression :target-type
                                  selection-expression :member-name
                                  "ModelSelectionExpression" :json-name
                                  "modelSelectionExpression")
                                 (operation-name :target-type
                                  string-with-length-between1and64 :member-name
                                  "OperationName" :json-name "operationName")
                                 (request-models :target-type route-models
                                  :member-name "RequestModels" :json-name
                                  "requestModels")
                                 (request-parameters :target-type
                                  route-parameters :member-name
                                  "RequestParameters" :json-name
                                  "requestParameters")
                                 (route-key :target-type selection-key
                                  :required common-lisp:t :member-name
                                  "RouteKey" :json-name "routeKey")
                                 (route-response-selection-expression
                                  :target-type selection-expression
                                  :member-name
                                  "RouteResponseSelectionExpression" :json-name
                                  "routeResponseSelectionExpression")
                                 (target :target-type
                                  string-with-length-between1and128
                                  :member-name "Target" :json-name "target"))
                                (:shape-name "CreateRouteRequest"))

(smithy/sdk/shapes:define-input create-route-response-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (model-selection-expression :target-type
                                  selection-expression :member-name
                                  "ModelSelectionExpression" :json-name
                                  "modelSelectionExpression")
                                 (response-models :target-type route-models
                                  :member-name "ResponseModels" :json-name
                                  "responseModels")
                                 (response-parameters :target-type
                                  route-parameters :member-name
                                  "ResponseParameters" :json-name
                                  "responseParameters")
                                 (route-id :target-type string :required
                                  common-lisp:t :member-name "RouteId"
                                  :http-label common-lisp:t)
                                 (route-response-key :target-type selection-key
                                  :required common-lisp:t :member-name
                                  "RouteResponseKey" :json-name
                                  "routeResponseKey"))
                                (:shape-name "CreateRouteResponseRequest"))

(smithy/sdk/shapes:define-output create-route-response-response common-lisp:nil
                                 ((model-selection-expression :target-type
                                   selection-expression :member-name
                                   "ModelSelectionExpression" :json-name
                                   "modelSelectionExpression")
                                  (response-models :target-type route-models
                                   :member-name "ResponseModels" :json-name
                                   "responseModels")
                                  (response-parameters :target-type
                                   route-parameters :member-name
                                   "ResponseParameters" :json-name
                                   "responseParameters")
                                  (route-response-id :target-type id
                                   :member-name "RouteResponseId" :json-name
                                   "routeResponseId")
                                  (route-response-key :target-type
                                   selection-key :member-name
                                   "RouteResponseKey" :json-name
                                   "routeResponseKey"))
                                 (:shape-name "CreateRouteResponseResponse"))

(smithy/sdk/shapes:define-output create-route-result common-lisp:nil
                                 ((api-gateway-managed :target-type boolean
                                   :member-name "ApiGatewayManaged" :json-name
                                   "apiGatewayManaged")
                                  (api-key-required :target-type boolean
                                   :member-name "ApiKeyRequired" :json-name
                                   "apiKeyRequired")
                                  (authorization-scopes :target-type
                                   authorization-scopes :member-name
                                   "AuthorizationScopes" :json-name
                                   "authorizationScopes")
                                  (authorization-type :target-type
                                   authorization-type :member-name
                                   "AuthorizationType" :json-name
                                   "authorizationType")
                                  (authorizer-id :target-type id :member-name
                                   "AuthorizerId" :json-name "authorizerId")
                                  (model-selection-expression :target-type
                                   selection-expression :member-name
                                   "ModelSelectionExpression" :json-name
                                   "modelSelectionExpression")
                                  (operation-name :target-type
                                   string-with-length-between1and64
                                   :member-name "OperationName" :json-name
                                   "operationName")
                                  (request-models :target-type route-models
                                   :member-name "RequestModels" :json-name
                                   "requestModels")
                                  (request-parameters :target-type
                                   route-parameters :member-name
                                   "RequestParameters" :json-name
                                   "requestParameters")
                                  (route-id :target-type id :member-name
                                   "RouteId" :json-name "routeId")
                                  (route-key :target-type selection-key
                                   :member-name "RouteKey" :json-name
                                   "routeKey")
                                  (route-response-selection-expression
                                   :target-type selection-expression
                                   :member-name
                                   "RouteResponseSelectionExpression"
                                   :json-name
                                   "routeResponseSelectionExpression")
                                  (target :target-type
                                   string-with-length-between1and128
                                   :member-name "Target" :json-name "target"))
                                 (:shape-name "CreateRouteResult"))

(smithy/sdk/shapes:define-input create-routing-rule-request common-lisp:nil
                                ((actions :target-type
                                  list-of-routing-rule-action :required
                                  common-lisp:t :member-name "Actions"
                                  :json-name "actions")
                                 (conditions :target-type
                                  list-of-routing-rule-condition :required
                                  common-lisp:t :member-name "Conditions"
                                  :json-name "conditions")
                                 (domain-name :target-type string :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (domain-name-id :target-type string
                                  :member-name "DomainNameId" :http-query
                                  "domainNameId")
                                 (priority :target-type routing-rule-priority
                                  :required common-lisp:t :member-name
                                  "Priority" :json-name "priority"))
                                (:shape-name "CreateRoutingRuleRequest"))

(smithy/sdk/shapes:define-output create-routing-rule-response common-lisp:nil
                                 ((actions :target-type
                                   list-of-routing-rule-action :member-name
                                   "Actions" :json-name "actions")
                                  (conditions :target-type
                                   list-of-routing-rule-condition :member-name
                                   "Conditions" :json-name "conditions")
                                  (priority :target-type routing-rule-priority
                                   :member-name "Priority" :json-name
                                   "priority")
                                  (routing-rule-arn :target-type arn
                                   :member-name "RoutingRuleArn" :json-name
                                   "routingRuleArn")
                                  (routing-rule-id :target-type id :member-name
                                   "RoutingRuleId" :json-name "routingRuleId"))
                                 (:shape-name "CreateRoutingRuleResponse"))

(smithy/sdk/shapes:define-input create-stage-request common-lisp:nil
                                ((access-log-settings :target-type
                                  access-log-settings :member-name
                                  "AccessLogSettings" :json-name
                                  "accessLogSettings")
                                 (api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (auto-deploy :target-type boolean :member-name
                                  "AutoDeploy" :json-name "autoDeploy")
                                 (client-certificate-id :target-type id
                                  :member-name "ClientCertificateId" :json-name
                                  "clientCertificateId")
                                 (default-route-settings :target-type
                                  route-settings :member-name
                                  "DefaultRouteSettings" :json-name
                                  "defaultRouteSettings")
                                 (deployment-id :target-type id :member-name
                                  "DeploymentId" :json-name "deploymentId")
                                 (description :target-type
                                  string-with-length-between0and1024
                                  :member-name "Description" :json-name
                                  "description")
                                 (route-settings :target-type
                                  route-settings-map :member-name
                                  "RouteSettings" :json-name "routeSettings")
                                 (stage-name :target-type
                                  string-with-length-between1and128 :required
                                  common-lisp:t :member-name "StageName"
                                  :json-name "stageName")
                                 (stage-variables :target-type
                                  stage-variables-map :member-name
                                  "StageVariables" :json-name "stageVariables")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreateStageRequest"))

(smithy/sdk/shapes:define-output create-stage-response common-lisp:nil
                                 ((access-log-settings :target-type
                                   access-log-settings :member-name
                                   "AccessLogSettings" :json-name
                                   "accessLogSettings")
                                  (api-gateway-managed :target-type boolean
                                   :member-name "ApiGatewayManaged" :json-name
                                   "apiGatewayManaged")
                                  (auto-deploy :target-type boolean
                                   :member-name "AutoDeploy" :json-name
                                   "autoDeploy")
                                  (client-certificate-id :target-type id
                                   :member-name "ClientCertificateId"
                                   :json-name "clientCertificateId")
                                  (created-date :target-type timestamp-iso8601
                                   :member-name "CreatedDate" :json-name
                                   "createdDate")
                                  (default-route-settings :target-type
                                   route-settings :member-name
                                   "DefaultRouteSettings" :json-name
                                   "defaultRouteSettings")
                                  (deployment-id :target-type id :member-name
                                   "DeploymentId" :json-name "deploymentId")
                                  (description :target-type
                                   string-with-length-between0and1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (last-deployment-status-message :target-type
                                   string :member-name
                                   "LastDeploymentStatusMessage" :json-name
                                   "lastDeploymentStatusMessage")
                                  (last-updated-date :target-type
                                   timestamp-iso8601 :member-name
                                   "LastUpdatedDate" :json-name
                                   "lastUpdatedDate")
                                  (route-settings :target-type
                                   route-settings-map :member-name
                                   "RouteSettings" :json-name "routeSettings")
                                  (stage-name :target-type
                                   string-with-length-between1and128
                                   :member-name "StageName" :json-name
                                   "stageName")
                                  (stage-variables :target-type
                                   stage-variables-map :member-name
                                   "StageVariables" :json-name
                                   "stageVariables")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "CreateStageResponse"))

(smithy/sdk/shapes:define-input create-vpc-link-request common-lisp:nil
                                ((name :target-type
                                  string-with-length-between1and128 :required
                                  common-lisp:t :member-name "Name" :json-name
                                  "name")
                                 (security-group-ids :target-type
                                  security-group-id-list :member-name
                                  "SecurityGroupIds" :json-name
                                  "securityGroupIds")
                                 (subnet-ids :target-type subnet-id-list
                                  :required common-lisp:t :member-name
                                  "SubnetIds" :json-name "subnetIds")
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "CreateVpcLinkRequest"))

(smithy/sdk/shapes:define-output create-vpc-link-response common-lisp:nil
                                 ((created-date :target-type timestamp-iso8601
                                   :member-name "CreatedDate" :json-name
                                   "createdDate")
                                  (name :target-type
                                   string-with-length-between1and128
                                   :member-name "Name" :json-name "name")
                                  (security-group-ids :target-type
                                   security-group-id-list :member-name
                                   "SecurityGroupIds" :json-name
                                   "securityGroupIds")
                                  (subnet-ids :target-type subnet-id-list
                                   :member-name "SubnetIds" :json-name
                                   "subnetIds")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (vpc-link-id :target-type id :member-name
                                   "VpcLinkId" :json-name "vpcLinkId")
                                  (vpc-link-status :target-type vpc-link-status
                                   :member-name "VpcLinkStatus" :json-name
                                   "vpcLinkStatus")
                                  (vpc-link-status-message :target-type
                                   string-with-length-between0and1024
                                   :member-name "VpcLinkStatusMessage"
                                   :json-name "vpcLinkStatusMessage")
                                  (vpc-link-version :target-type
                                   vpc-link-version :member-name
                                   "VpcLinkVersion" :json-name
                                   "vpcLinkVersion"))
                                 (:shape-name "CreateVpcLinkResponse"))

(smithy/sdk/shapes:define-input delete-access-log-settings-request
                                common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (stage-name :target-type string :required
                                  common-lisp:t :member-name "StageName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteAccessLogSettingsRequest"))

(smithy/sdk/shapes:define-input delete-api-mapping-request common-lisp:nil
                                ((api-mapping-id :target-type string :required
                                  common-lisp:t :member-name "ApiMappingId"
                                  :http-label common-lisp:t)
                                 (domain-name :target-type string :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteApiMappingRequest"))

(smithy/sdk/shapes:define-input delete-api-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteApiRequest"))

(smithy/sdk/shapes:define-input delete-authorizer-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (authorizer-id :target-type string :required
                                  common-lisp:t :member-name "AuthorizerId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteAuthorizerRequest"))

(smithy/sdk/shapes:define-input delete-cors-configuration-request
                                common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteCorsConfigurationRequest"))

(smithy/sdk/shapes:define-input delete-deployment-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (deployment-id :target-type string :required
                                  common-lisp:t :member-name "DeploymentId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteDeploymentRequest"))

(smithy/sdk/shapes:define-input delete-domain-name-request common-lisp:nil
                                ((domain-name :target-type string :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteDomainNameRequest"))

(smithy/sdk/shapes:define-input delete-integration-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (integration-id :target-type string :required
                                  common-lisp:t :member-name "IntegrationId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteIntegrationRequest"))

(smithy/sdk/shapes:define-input delete-integration-response-request
                                common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (integration-id :target-type string :required
                                  common-lisp:t :member-name "IntegrationId"
                                  :http-label common-lisp:t)
                                 (integration-response-id :target-type string
                                  :required common-lisp:t :member-name
                                  "IntegrationResponseId" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteIntegrationResponseRequest"))

(smithy/sdk/shapes:define-input delete-model-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (model-id :target-type string :required
                                  common-lisp:t :member-name "ModelId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteModelRequest"))

(smithy/sdk/shapes:define-input delete-route-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (route-id :target-type string :required
                                  common-lisp:t :member-name "RouteId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteRouteRequest"))

(smithy/sdk/shapes:define-input delete-route-request-parameter-request
                                common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (request-parameter-key :target-type string
                                  :required common-lisp:t :member-name
                                  "RequestParameterKey" :http-label
                                  common-lisp:t)
                                 (route-id :target-type string :required
                                  common-lisp:t :member-name "RouteId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteRouteRequestParameterRequest"))

(smithy/sdk/shapes:define-input delete-route-response-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (route-id :target-type string :required
                                  common-lisp:t :member-name "RouteId"
                                  :http-label common-lisp:t)
                                 (route-response-id :target-type string
                                  :required common-lisp:t :member-name
                                  "RouteResponseId" :http-label common-lisp:t))
                                (:shape-name "DeleteRouteResponseRequest"))

(smithy/sdk/shapes:define-input delete-route-settings-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (route-key :target-type string :required
                                  common-lisp:t :member-name "RouteKey"
                                  :http-label common-lisp:t)
                                 (stage-name :target-type string :required
                                  common-lisp:t :member-name "StageName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteRouteSettingsRequest"))

(smithy/sdk/shapes:define-input delete-routing-rule-request common-lisp:nil
                                ((domain-name :target-type string :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (domain-name-id :target-type string
                                  :member-name "DomainNameId" :http-query
                                  "domainNameId")
                                 (routing-rule-id :target-type string :required
                                  common-lisp:t :member-name "RoutingRuleId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteRoutingRuleRequest"))

(smithy/sdk/shapes:define-input delete-stage-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (stage-name :target-type string :required
                                  common-lisp:t :member-name "StageName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteStageRequest"))

(smithy/sdk/shapes:define-input delete-vpc-link-request common-lisp:nil
                                ((vpc-link-id :target-type string :required
                                  common-lisp:t :member-name "VpcLinkId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteVpcLinkRequest"))

(smithy/sdk/shapes:define-output delete-vpc-link-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteVpcLinkResponse"))

(smithy/sdk/shapes:define-structure deployment common-lisp:nil
                                    ((auto-deployed :target-type boolean
                                      :member-name "AutoDeployed" :json-name
                                      "autoDeployed")
                                     (created-date :target-type
                                      timestamp-iso8601 :member-name
                                      "CreatedDate" :json-name "createdDate")
                                     (deployment-id :target-type id
                                      :member-name "DeploymentId" :json-name
                                      "deploymentId")
                                     (deployment-status :target-type
                                      deployment-status :member-name
                                      "DeploymentStatus" :json-name
                                      "deploymentStatus")
                                     (deployment-status-message :target-type
                                      string :member-name
                                      "DeploymentStatusMessage" :json-name
                                      "deploymentStatusMessage")
                                     (description :target-type
                                      string-with-length-between0and1024
                                      :member-name "Description" :json-name
                                      "description"))
                                    (:shape-name "Deployment"))

(smithy/sdk/shapes:define-enum deployment-status
    common-lisp:nil
  (:pending "PENDING")
  (:failed "FAILED")
  (:deployed "DEPLOYED"))

(smithy/sdk/shapes:define-structure domain-name common-lisp:nil
                                    ((api-mapping-selection-expression
                                      :target-type selection-expression
                                      :member-name
                                      "ApiMappingSelectionExpression"
                                      :json-name
                                      "apiMappingSelectionExpression")
                                     (domain-name :target-type
                                      string-with-length-between1and512
                                      :required common-lisp:t :member-name
                                      "DomainName" :json-name "domainName")
                                     (domain-name-arn :target-type arn
                                      :member-name "DomainNameArn" :json-name
                                      "domainNameArn")
                                     (domain-name-configurations :target-type
                                      domain-name-configurations :member-name
                                      "DomainNameConfigurations" :json-name
                                      "domainNameConfigurations")
                                     (mutual-tls-authentication :target-type
                                      mutual-tls-authentication :member-name
                                      "MutualTlsAuthentication" :json-name
                                      "mutualTlsAuthentication")
                                     (routing-mode :target-type routing-mode
                                      :member-name "RoutingMode" :json-name
                                      "routingMode")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name "DomainName"))

(smithy/sdk/shapes:define-structure domain-name-configuration common-lisp:nil
                                    ((api-gateway-domain-name :target-type
                                      string :member-name
                                      "ApiGatewayDomainName" :json-name
                                      "apiGatewayDomainName")
                                     (certificate-arn :target-type arn
                                      :member-name "CertificateArn" :json-name
                                      "certificateArn")
                                     (certificate-name :target-type
                                      string-with-length-between1and128
                                      :member-name "CertificateName" :json-name
                                      "certificateName")
                                     (certificate-upload-date :target-type
                                      timestamp-iso8601 :member-name
                                      "CertificateUploadDate" :json-name
                                      "certificateUploadDate")
                                     (domain-name-status :target-type
                                      domain-name-status :member-name
                                      "DomainNameStatus" :json-name
                                      "domainNameStatus")
                                     (domain-name-status-message :target-type
                                      string :member-name
                                      "DomainNameStatusMessage" :json-name
                                      "domainNameStatusMessage")
                                     (endpoint-type :target-type endpoint-type
                                      :member-name "EndpointType" :json-name
                                      "endpointType")
                                     (hosted-zone-id :target-type string
                                      :member-name "HostedZoneId" :json-name
                                      "hostedZoneId")
                                     (ip-address-type :target-type
                                      ip-address-type :member-name
                                      "IpAddressType" :json-name
                                      "ipAddressType")
                                     (security-policy :target-type
                                      security-policy :member-name
                                      "SecurityPolicy" :json-name
                                      "securityPolicy")
                                     (ownership-verification-certificate-arn
                                      :target-type arn :member-name
                                      "OwnershipVerificationCertificateArn"
                                      :json-name
                                      "ownershipVerificationCertificateArn"))
                                    (:shape-name "DomainNameConfiguration"))

(smithy/sdk/shapes:define-list domain-name-configurations :member
                               domain-name-configuration)

(smithy/sdk/shapes:define-enum domain-name-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:updating "UPDATING")
  (:pending-certificate-reimport "PENDING_CERTIFICATE_REIMPORT")
  (:pending-ownership-verification "PENDING_OWNERSHIP_VERIFICATION"))

(smithy/sdk/shapes:define-enum endpoint-type
    common-lisp:nil
  (:regional "REGIONAL")
  (:edge "EDGE"))

(smithy/sdk/shapes:define-input export-api-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (export-version :target-type string
                                  :member-name "ExportVersion" :http-query
                                  "exportVersion")
                                 (include-extensions :target-type boolean
                                  :member-name "IncludeExtensions" :http-query
                                  "includeExtensions")
                                 (output-type :target-type string :required
                                  common-lisp:t :member-name "OutputType"
                                  :http-query "outputType")
                                 (specification :target-type string :required
                                  common-lisp:t :member-name "Specification"
                                  :http-label common-lisp:t)
                                 (stage-name :target-type string :member-name
                                  "StageName" :http-query "stageName"))
                                (:shape-name "ExportApiRequest"))

(smithy/sdk/shapes:define-output export-api-response common-lisp:nil
                                 ((body :target-type exported-api :member-name
                                   "body" :http-payload common-lisp:t))
                                 (:shape-name "ExportApiResponse"))

(smithy/sdk/shapes:define-type exported-api smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-input get-api-mapping-request common-lisp:nil
                                ((api-mapping-id :target-type string :required
                                  common-lisp:t :member-name "ApiMappingId"
                                  :http-label common-lisp:t)
                                 (domain-name :target-type string :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetApiMappingRequest"))

(smithy/sdk/shapes:define-output get-api-mapping-response common-lisp:nil
                                 ((api-id :target-type id :member-name "ApiId"
                                   :json-name "apiId")
                                  (api-mapping-id :target-type id :member-name
                                   "ApiMappingId" :json-name "apiMappingId")
                                  (api-mapping-key :target-type selection-key
                                   :member-name "ApiMappingKey" :json-name
                                   "apiMappingKey")
                                  (stage :target-type
                                   string-with-length-between1and128
                                   :member-name "Stage" :json-name "stage"))
                                 (:shape-name "GetApiMappingResponse"))

(smithy/sdk/shapes:define-input get-api-mappings-request common-lisp:nil
                                ((domain-name :target-type string :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (max-results :target-type string :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "GetApiMappingsRequest"))

(smithy/sdk/shapes:define-output get-api-mappings-response common-lisp:nil
                                 ((items :target-type list-of-api-mapping
                                   :member-name "Items" :json-name "items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken" :json-name
                                   "nextToken"))
                                 (:shape-name "GetApiMappingsResponse"))

(smithy/sdk/shapes:define-input get-api-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetApiRequest"))

(smithy/sdk/shapes:define-output get-api-response common-lisp:nil
                                 ((api-endpoint :target-type string
                                   :member-name "ApiEndpoint" :json-name
                                   "apiEndpoint")
                                  (api-gateway-managed :target-type boolean
                                   :member-name "ApiGatewayManaged" :json-name
                                   "apiGatewayManaged")
                                  (api-id :target-type id :member-name "ApiId"
                                   :json-name "apiId")
                                  (api-key-selection-expression :target-type
                                   selection-expression :member-name
                                   "ApiKeySelectionExpression" :json-name
                                   "apiKeySelectionExpression")
                                  (cors-configuration :target-type cors
                                   :member-name "CorsConfiguration" :json-name
                                   "corsConfiguration")
                                  (created-date :target-type timestamp-iso8601
                                   :member-name "CreatedDate" :json-name
                                   "createdDate")
                                  (description :target-type
                                   string-with-length-between0and1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (disable-schema-validation :target-type
                                   boolean :member-name
                                   "DisableSchemaValidation" :json-name
                                   "disableSchemaValidation")
                                  (disable-execute-api-endpoint :target-type
                                   boolean :member-name
                                   "DisableExecuteApiEndpoint" :json-name
                                   "disableExecuteApiEndpoint")
                                  (import-info :target-type list-of-string
                                   :member-name "ImportInfo" :json-name
                                   "importInfo")
                                  (ip-address-type :target-type ip-address-type
                                   :member-name "IpAddressType" :json-name
                                   "ipAddressType")
                                  (name :target-type
                                   string-with-length-between1and128
                                   :member-name "Name" :json-name "name")
                                  (protocol-type :target-type protocol-type
                                   :member-name "ProtocolType" :json-name
                                   "protocolType")
                                  (route-selection-expression :target-type
                                   selection-expression :member-name
                                   "RouteSelectionExpression" :json-name
                                   "routeSelectionExpression")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (version :target-type
                                   string-with-length-between1and64
                                   :member-name "Version" :json-name "version")
                                  (warnings :target-type list-of-string
                                   :member-name "Warnings" :json-name
                                   "warnings"))
                                 (:shape-name "GetApiResponse"))

(smithy/sdk/shapes:define-input get-apis-request common-lisp:nil
                                ((max-results :target-type string :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "GetApisRequest"))

(smithy/sdk/shapes:define-output get-apis-response common-lisp:nil
                                 ((items :target-type list-of-api :member-name
                                   "Items" :json-name "items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken" :json-name
                                   "nextToken"))
                                 (:shape-name "GetApisResponse"))

(smithy/sdk/shapes:define-input get-authorizer-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (authorizer-id :target-type string :required
                                  common-lisp:t :member-name "AuthorizerId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetAuthorizerRequest"))

(smithy/sdk/shapes:define-output get-authorizer-response common-lisp:nil
                                 ((authorizer-credentials-arn :target-type arn
                                   :member-name "AuthorizerCredentialsArn"
                                   :json-name "authorizerCredentialsArn")
                                  (authorizer-id :target-type id :member-name
                                   "AuthorizerId" :json-name "authorizerId")
                                  (authorizer-payload-format-version
                                   :target-type
                                   string-with-length-between1and64
                                   :member-name
                                   "AuthorizerPayloadFormatVersion" :json-name
                                   "authorizerPayloadFormatVersion")
                                  (authorizer-result-ttl-in-seconds
                                   :target-type
                                   integer-with-length-between0and3600
                                   :member-name "AuthorizerResultTtlInSeconds"
                                   :json-name "authorizerResultTtlInSeconds")
                                  (authorizer-type :target-type authorizer-type
                                   :member-name "AuthorizerType" :json-name
                                   "authorizerType")
                                  (authorizer-uri :target-type
                                   uri-with-length-between1and2048 :member-name
                                   "AuthorizerUri" :json-name "authorizerUri")
                                  (enable-simple-responses :target-type boolean
                                   :member-name "EnableSimpleResponses"
                                   :json-name "enableSimpleResponses")
                                  (identity-source :target-type
                                   identity-source-list :member-name
                                   "IdentitySource" :json-name
                                   "identitySource")
                                  (identity-validation-expression :target-type
                                   string-with-length-between0and1024
                                   :member-name "IdentityValidationExpression"
                                   :json-name "identityValidationExpression")
                                  (jwt-configuration :target-type
                                   jwtconfiguration :member-name
                                   "JwtConfiguration" :json-name
                                   "jwtConfiguration")
                                  (name :target-type
                                   string-with-length-between1and128
                                   :member-name "Name" :json-name "name"))
                                 (:shape-name "GetAuthorizerResponse"))

(smithy/sdk/shapes:define-input get-authorizers-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type string :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "GetAuthorizersRequest"))

(smithy/sdk/shapes:define-output get-authorizers-response common-lisp:nil
                                 ((items :target-type list-of-authorizer
                                   :member-name "Items" :json-name "items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken" :json-name
                                   "nextToken"))
                                 (:shape-name "GetAuthorizersResponse"))

(smithy/sdk/shapes:define-input get-deployment-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (deployment-id :target-type string :required
                                  common-lisp:t :member-name "DeploymentId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDeploymentRequest"))

(smithy/sdk/shapes:define-output get-deployment-response common-lisp:nil
                                 ((auto-deployed :target-type boolean
                                   :member-name "AutoDeployed" :json-name
                                   "autoDeployed")
                                  (created-date :target-type timestamp-iso8601
                                   :member-name "CreatedDate" :json-name
                                   "createdDate")
                                  (deployment-id :target-type id :member-name
                                   "DeploymentId" :json-name "deploymentId")
                                  (deployment-status :target-type
                                   deployment-status :member-name
                                   "DeploymentStatus" :json-name
                                   "deploymentStatus")
                                  (deployment-status-message :target-type
                                   string :member-name
                                   "DeploymentStatusMessage" :json-name
                                   "deploymentStatusMessage")
                                  (description :target-type
                                   string-with-length-between0and1024
                                   :member-name "Description" :json-name
                                   "description"))
                                 (:shape-name "GetDeploymentResponse"))

(smithy/sdk/shapes:define-input get-deployments-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type string :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "GetDeploymentsRequest"))

(smithy/sdk/shapes:define-output get-deployments-response common-lisp:nil
                                 ((items :target-type list-of-deployment
                                   :member-name "Items" :json-name "items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken" :json-name
                                   "nextToken"))
                                 (:shape-name "GetDeploymentsResponse"))

(smithy/sdk/shapes:define-input get-domain-name-request common-lisp:nil
                                ((domain-name :target-type string :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetDomainNameRequest"))

(smithy/sdk/shapes:define-output get-domain-name-response common-lisp:nil
                                 ((api-mapping-selection-expression
                                   :target-type selection-expression
                                   :member-name "ApiMappingSelectionExpression"
                                   :json-name "apiMappingSelectionExpression")
                                  (domain-name :target-type
                                   string-with-length-between1and512
                                   :member-name "DomainName" :json-name
                                   "domainName")
                                  (domain-name-arn :target-type arn
                                   :member-name "DomainNameArn" :json-name
                                   "domainNameArn")
                                  (domain-name-configurations :target-type
                                   domain-name-configurations :member-name
                                   "DomainNameConfigurations" :json-name
                                   "domainNameConfigurations")
                                  (mutual-tls-authentication :target-type
                                   mutual-tls-authentication :member-name
                                   "MutualTlsAuthentication" :json-name
                                   "mutualTlsAuthentication")
                                  (routing-mode :target-type routing-mode
                                   :member-name "RoutingMode" :json-name
                                   "routingMode")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "GetDomainNameResponse"))

(smithy/sdk/shapes:define-input get-domain-names-request common-lisp:nil
                                ((max-results :target-type string :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "GetDomainNamesRequest"))

(smithy/sdk/shapes:define-output get-domain-names-response common-lisp:nil
                                 ((items :target-type list-of-domain-name
                                   :member-name "Items" :json-name "items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken" :json-name
                                   "nextToken"))
                                 (:shape-name "GetDomainNamesResponse"))

(smithy/sdk/shapes:define-input get-integration-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (integration-id :target-type string :required
                                  common-lisp:t :member-name "IntegrationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetIntegrationRequest"))

(smithy/sdk/shapes:define-input get-integration-response-request
                                common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (integration-id :target-type string :required
                                  common-lisp:t :member-name "IntegrationId"
                                  :http-label common-lisp:t)
                                 (integration-response-id :target-type string
                                  :required common-lisp:t :member-name
                                  "IntegrationResponseId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetIntegrationResponseRequest"))

(smithy/sdk/shapes:define-output get-integration-response-response
                                 common-lisp:nil
                                 ((content-handling-strategy :target-type
                                   content-handling-strategy :member-name
                                   "ContentHandlingStrategy" :json-name
                                   "contentHandlingStrategy")
                                  (integration-response-id :target-type id
                                   :member-name "IntegrationResponseId"
                                   :json-name "integrationResponseId")
                                  (integration-response-key :target-type
                                   selection-key :member-name
                                   "IntegrationResponseKey" :json-name
                                   "integrationResponseKey")
                                  (response-parameters :target-type
                                   integration-parameters :member-name
                                   "ResponseParameters" :json-name
                                   "responseParameters")
                                  (response-templates :target-type template-map
                                   :member-name "ResponseTemplates" :json-name
                                   "responseTemplates")
                                  (template-selection-expression :target-type
                                   selection-expression :member-name
                                   "TemplateSelectionExpression" :json-name
                                   "templateSelectionExpression"))
                                 (:shape-name "GetIntegrationResponseResponse"))

(smithy/sdk/shapes:define-input get-integration-responses-request
                                common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (integration-id :target-type string :required
                                  common-lisp:t :member-name "IntegrationId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type string :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "GetIntegrationResponsesRequest"))

(smithy/sdk/shapes:define-output get-integration-responses-response
                                 common-lisp:nil
                                 ((items :target-type
                                   list-of-integration-response :member-name
                                   "Items" :json-name "items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken" :json-name
                                   "nextToken"))
                                 (:shape-name
                                  "GetIntegrationResponsesResponse"))

(smithy/sdk/shapes:define-output get-integration-result common-lisp:nil
                                 ((api-gateway-managed :target-type boolean
                                   :member-name "ApiGatewayManaged" :json-name
                                   "apiGatewayManaged")
                                  (connection-id :target-type
                                   string-with-length-between1and1024
                                   :member-name "ConnectionId" :json-name
                                   "connectionId")
                                  (connection-type :target-type connection-type
                                   :member-name "ConnectionType" :json-name
                                   "connectionType")
                                  (content-handling-strategy :target-type
                                   content-handling-strategy :member-name
                                   "ContentHandlingStrategy" :json-name
                                   "contentHandlingStrategy")
                                  (credentials-arn :target-type arn
                                   :member-name "CredentialsArn" :json-name
                                   "credentialsArn")
                                  (description :target-type
                                   string-with-length-between0and1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (integration-id :target-type id :member-name
                                   "IntegrationId" :json-name "integrationId")
                                  (integration-method :target-type
                                   string-with-length-between1and64
                                   :member-name "IntegrationMethod" :json-name
                                   "integrationMethod")
                                  (integration-response-selection-expression
                                   :target-type selection-expression
                                   :member-name
                                   "IntegrationResponseSelectionExpression"
                                   :json-name
                                   "integrationResponseSelectionExpression")
                                  (integration-subtype :target-type
                                   string-with-length-between1and128
                                   :member-name "IntegrationSubtype" :json-name
                                   "integrationSubtype")
                                  (integration-type :target-type
                                   integration-type :member-name
                                   "IntegrationType" :json-name
                                   "integrationType")
                                  (integration-uri :target-type
                                   uri-with-length-between1and2048 :member-name
                                   "IntegrationUri" :json-name
                                   "integrationUri")
                                  (passthrough-behavior :target-type
                                   passthrough-behavior :member-name
                                   "PassthroughBehavior" :json-name
                                   "passthroughBehavior")
                                  (payload-format-version :target-type
                                   string-with-length-between1and64
                                   :member-name "PayloadFormatVersion"
                                   :json-name "payloadFormatVersion")
                                  (request-parameters :target-type
                                   integration-parameters :member-name
                                   "RequestParameters" :json-name
                                   "requestParameters")
                                  (request-templates :target-type template-map
                                   :member-name "RequestTemplates" :json-name
                                   "requestTemplates")
                                  (response-parameters :target-type
                                   response-parameters :member-name
                                   "ResponseParameters" :json-name
                                   "responseParameters")
                                  (template-selection-expression :target-type
                                   selection-expression :member-name
                                   "TemplateSelectionExpression" :json-name
                                   "templateSelectionExpression")
                                  (timeout-in-millis :target-type
                                   integer-with-length-between50and30000
                                   :member-name "TimeoutInMillis" :json-name
                                   "timeoutInMillis")
                                  (tls-config :target-type tls-config
                                   :member-name "TlsConfig" :json-name
                                   "tlsConfig"))
                                 (:shape-name "GetIntegrationResult"))

(smithy/sdk/shapes:define-input get-integrations-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type string :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "GetIntegrationsRequest"))

(smithy/sdk/shapes:define-output get-integrations-response common-lisp:nil
                                 ((items :target-type list-of-integration
                                   :member-name "Items" :json-name "items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken" :json-name
                                   "nextToken"))
                                 (:shape-name "GetIntegrationsResponse"))

(smithy/sdk/shapes:define-input get-model-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (model-id :target-type string :required
                                  common-lisp:t :member-name "ModelId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetModelRequest"))

(smithy/sdk/shapes:define-output get-model-response common-lisp:nil
                                 ((content-type :target-type
                                   string-with-length-between1and256
                                   :member-name "ContentType" :json-name
                                   "contentType")
                                  (description :target-type
                                   string-with-length-between0and1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (model-id :target-type id :member-name
                                   "ModelId" :json-name "modelId")
                                  (name :target-type
                                   string-with-length-between1and128
                                   :member-name "Name" :json-name "name")
                                  (schema :target-type
                                   string-with-length-between0and32k
                                   :member-name "Schema" :json-name "schema"))
                                 (:shape-name "GetModelResponse"))

(smithy/sdk/shapes:define-input get-model-template-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (model-id :target-type string :required
                                  common-lisp:t :member-name "ModelId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetModelTemplateRequest"))

(smithy/sdk/shapes:define-output get-model-template-response common-lisp:nil
                                 ((value :target-type string :member-name
                                   "Value" :json-name "value"))
                                 (:shape-name "GetModelTemplateResponse"))

(smithy/sdk/shapes:define-input get-models-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type string :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "GetModelsRequest"))

(smithy/sdk/shapes:define-output get-models-response common-lisp:nil
                                 ((items :target-type list-of-model
                                   :member-name "Items" :json-name "items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken" :json-name
                                   "nextToken"))
                                 (:shape-name "GetModelsResponse"))

(smithy/sdk/shapes:define-input get-route-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (route-id :target-type string :required
                                  common-lisp:t :member-name "RouteId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetRouteRequest"))

(smithy/sdk/shapes:define-input get-route-response-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (route-id :target-type string :required
                                  common-lisp:t :member-name "RouteId"
                                  :http-label common-lisp:t)
                                 (route-response-id :target-type string
                                  :required common-lisp:t :member-name
                                  "RouteResponseId" :http-label common-lisp:t))
                                (:shape-name "GetRouteResponseRequest"))

(smithy/sdk/shapes:define-output get-route-response-response common-lisp:nil
                                 ((model-selection-expression :target-type
                                   selection-expression :member-name
                                   "ModelSelectionExpression" :json-name
                                   "modelSelectionExpression")
                                  (response-models :target-type route-models
                                   :member-name "ResponseModels" :json-name
                                   "responseModels")
                                  (response-parameters :target-type
                                   route-parameters :member-name
                                   "ResponseParameters" :json-name
                                   "responseParameters")
                                  (route-response-id :target-type id
                                   :member-name "RouteResponseId" :json-name
                                   "routeResponseId")
                                  (route-response-key :target-type
                                   selection-key :member-name
                                   "RouteResponseKey" :json-name
                                   "routeResponseKey"))
                                 (:shape-name "GetRouteResponseResponse"))

(smithy/sdk/shapes:define-input get-route-responses-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type string :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken")
                                 (route-id :target-type string :required
                                  common-lisp:t :member-name "RouteId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetRouteResponsesRequest"))

(smithy/sdk/shapes:define-output get-route-responses-response common-lisp:nil
                                 ((items :target-type list-of-route-response
                                   :member-name "Items" :json-name "items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken" :json-name
                                   "nextToken"))
                                 (:shape-name "GetRouteResponsesResponse"))

(smithy/sdk/shapes:define-output get-route-result common-lisp:nil
                                 ((api-gateway-managed :target-type boolean
                                   :member-name "ApiGatewayManaged" :json-name
                                   "apiGatewayManaged")
                                  (api-key-required :target-type boolean
                                   :member-name "ApiKeyRequired" :json-name
                                   "apiKeyRequired")
                                  (authorization-scopes :target-type
                                   authorization-scopes :member-name
                                   "AuthorizationScopes" :json-name
                                   "authorizationScopes")
                                  (authorization-type :target-type
                                   authorization-type :member-name
                                   "AuthorizationType" :json-name
                                   "authorizationType")
                                  (authorizer-id :target-type id :member-name
                                   "AuthorizerId" :json-name "authorizerId")
                                  (model-selection-expression :target-type
                                   selection-expression :member-name
                                   "ModelSelectionExpression" :json-name
                                   "modelSelectionExpression")
                                  (operation-name :target-type
                                   string-with-length-between1and64
                                   :member-name "OperationName" :json-name
                                   "operationName")
                                  (request-models :target-type route-models
                                   :member-name "RequestModels" :json-name
                                   "requestModels")
                                  (request-parameters :target-type
                                   route-parameters :member-name
                                   "RequestParameters" :json-name
                                   "requestParameters")
                                  (route-id :target-type id :member-name
                                   "RouteId" :json-name "routeId")
                                  (route-key :target-type selection-key
                                   :member-name "RouteKey" :json-name
                                   "routeKey")
                                  (route-response-selection-expression
                                   :target-type selection-expression
                                   :member-name
                                   "RouteResponseSelectionExpression"
                                   :json-name
                                   "routeResponseSelectionExpression")
                                  (target :target-type
                                   string-with-length-between1and128
                                   :member-name "Target" :json-name "target"))
                                 (:shape-name "GetRouteResult"))

(smithy/sdk/shapes:define-input get-routes-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type string :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "GetRoutesRequest"))

(smithy/sdk/shapes:define-output get-routes-response common-lisp:nil
                                 ((items :target-type list-of-route
                                   :member-name "Items" :json-name "items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken" :json-name
                                   "nextToken"))
                                 (:shape-name "GetRoutesResponse"))

(smithy/sdk/shapes:define-input get-routing-rule-request common-lisp:nil
                                ((domain-name :target-type string :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (domain-name-id :target-type string
                                  :member-name "DomainNameId" :http-query
                                  "domainNameId")
                                 (routing-rule-id :target-type string :required
                                  common-lisp:t :member-name "RoutingRuleId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetRoutingRuleRequest"))

(smithy/sdk/shapes:define-output get-routing-rule-response common-lisp:nil
                                 ((actions :target-type
                                   list-of-routing-rule-action :member-name
                                   "Actions" :json-name "actions")
                                  (conditions :target-type
                                   list-of-routing-rule-condition :member-name
                                   "Conditions" :json-name "conditions")
                                  (priority :target-type routing-rule-priority
                                   :member-name "Priority" :json-name
                                   "priority")
                                  (routing-rule-arn :target-type arn
                                   :member-name "RoutingRuleArn" :json-name
                                   "routingRuleArn")
                                  (routing-rule-id :target-type id :member-name
                                   "RoutingRuleId" :json-name "routingRuleId"))
                                 (:shape-name "GetRoutingRuleResponse"))

(smithy/sdk/shapes:define-input get-stage-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (stage-name :target-type string :required
                                  common-lisp:t :member-name "StageName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetStageRequest"))

(smithy/sdk/shapes:define-output get-stage-response common-lisp:nil
                                 ((access-log-settings :target-type
                                   access-log-settings :member-name
                                   "AccessLogSettings" :json-name
                                   "accessLogSettings")
                                  (api-gateway-managed :target-type boolean
                                   :member-name "ApiGatewayManaged" :json-name
                                   "apiGatewayManaged")
                                  (auto-deploy :target-type boolean
                                   :member-name "AutoDeploy" :json-name
                                   "autoDeploy")
                                  (client-certificate-id :target-type id
                                   :member-name "ClientCertificateId"
                                   :json-name "clientCertificateId")
                                  (created-date :target-type timestamp-iso8601
                                   :member-name "CreatedDate" :json-name
                                   "createdDate")
                                  (default-route-settings :target-type
                                   route-settings :member-name
                                   "DefaultRouteSettings" :json-name
                                   "defaultRouteSettings")
                                  (deployment-id :target-type id :member-name
                                   "DeploymentId" :json-name "deploymentId")
                                  (description :target-type
                                   string-with-length-between0and1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (last-deployment-status-message :target-type
                                   string :member-name
                                   "LastDeploymentStatusMessage" :json-name
                                   "lastDeploymentStatusMessage")
                                  (last-updated-date :target-type
                                   timestamp-iso8601 :member-name
                                   "LastUpdatedDate" :json-name
                                   "lastUpdatedDate")
                                  (route-settings :target-type
                                   route-settings-map :member-name
                                   "RouteSettings" :json-name "routeSettings")
                                  (stage-name :target-type
                                   string-with-length-between1and128
                                   :member-name "StageName" :json-name
                                   "stageName")
                                  (stage-variables :target-type
                                   stage-variables-map :member-name
                                   "StageVariables" :json-name
                                   "stageVariables")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "GetStageResponse"))

(smithy/sdk/shapes:define-input get-stages-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (max-results :target-type string :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "GetStagesRequest"))

(smithy/sdk/shapes:define-output get-stages-response common-lisp:nil
                                 ((items :target-type list-of-stage
                                   :member-name "Items" :json-name "items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken" :json-name
                                   "nextToken"))
                                 (:shape-name "GetStagesResponse"))

(smithy/sdk/shapes:define-input get-tags-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "GetTagsRequest"))

(smithy/sdk/shapes:define-output get-tags-response common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "GetTagsResponse"))

(smithy/sdk/shapes:define-input get-vpc-link-request common-lisp:nil
                                ((vpc-link-id :target-type string :required
                                  common-lisp:t :member-name "VpcLinkId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetVpcLinkRequest"))

(smithy/sdk/shapes:define-output get-vpc-link-response common-lisp:nil
                                 ((created-date :target-type timestamp-iso8601
                                   :member-name "CreatedDate" :json-name
                                   "createdDate")
                                  (name :target-type
                                   string-with-length-between1and128
                                   :member-name "Name" :json-name "name")
                                  (security-group-ids :target-type
                                   security-group-id-list :member-name
                                   "SecurityGroupIds" :json-name
                                   "securityGroupIds")
                                  (subnet-ids :target-type subnet-id-list
                                   :member-name "SubnetIds" :json-name
                                   "subnetIds")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (vpc-link-id :target-type id :member-name
                                   "VpcLinkId" :json-name "vpcLinkId")
                                  (vpc-link-status :target-type vpc-link-status
                                   :member-name "VpcLinkStatus" :json-name
                                   "vpcLinkStatus")
                                  (vpc-link-status-message :target-type
                                   string-with-length-between0and1024
                                   :member-name "VpcLinkStatusMessage"
                                   :json-name "vpcLinkStatusMessage")
                                  (vpc-link-version :target-type
                                   vpc-link-version :member-name
                                   "VpcLinkVersion" :json-name
                                   "vpcLinkVersion"))
                                 (:shape-name "GetVpcLinkResponse"))

(smithy/sdk/shapes:define-input get-vpc-links-request common-lisp:nil
                                ((max-results :target-type string :member-name
                                  "MaxResults" :http-query "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "GetVpcLinksRequest"))

(smithy/sdk/shapes:define-output get-vpc-links-response common-lisp:nil
                                 ((items :target-type list-of-vpc-link
                                   :member-name "Items" :json-name "items")
                                  (next-token :target-type next-token
                                   :member-name "NextToken" :json-name
                                   "nextToken"))
                                 (:shape-name "GetVpcLinksResponse"))

(smithy/sdk/shapes:define-type id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list identity-source-list :member string)

(smithy/sdk/shapes:define-input import-api-request common-lisp:nil
                                ((basepath :target-type string :member-name
                                  "Basepath" :http-query "basepath")
                                 (body :target-type string :required
                                  common-lisp:t :member-name "Body" :json-name
                                  "body")
                                 (fail-on-warnings :target-type boolean
                                  :member-name "FailOnWarnings" :http-query
                                  "failOnWarnings"))
                                (:shape-name "ImportApiRequest"))

(smithy/sdk/shapes:define-output import-api-response common-lisp:nil
                                 ((api-endpoint :target-type string
                                   :member-name "ApiEndpoint" :json-name
                                   "apiEndpoint")
                                  (api-gateway-managed :target-type boolean
                                   :member-name "ApiGatewayManaged" :json-name
                                   "apiGatewayManaged")
                                  (api-id :target-type id :member-name "ApiId"
                                   :json-name "apiId")
                                  (api-key-selection-expression :target-type
                                   selection-expression :member-name
                                   "ApiKeySelectionExpression" :json-name
                                   "apiKeySelectionExpression")
                                  (cors-configuration :target-type cors
                                   :member-name "CorsConfiguration" :json-name
                                   "corsConfiguration")
                                  (created-date :target-type timestamp-iso8601
                                   :member-name "CreatedDate" :json-name
                                   "createdDate")
                                  (description :target-type
                                   string-with-length-between0and1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (disable-schema-validation :target-type
                                   boolean :member-name
                                   "DisableSchemaValidation" :json-name
                                   "disableSchemaValidation")
                                  (disable-execute-api-endpoint :target-type
                                   boolean :member-name
                                   "DisableExecuteApiEndpoint" :json-name
                                   "disableExecuteApiEndpoint")
                                  (import-info :target-type list-of-string
                                   :member-name "ImportInfo" :json-name
                                   "importInfo")
                                  (ip-address-type :target-type ip-address-type
                                   :member-name "IpAddressType" :json-name
                                   "ipAddressType")
                                  (name :target-type
                                   string-with-length-between1and128
                                   :member-name "Name" :json-name "name")
                                  (protocol-type :target-type protocol-type
                                   :member-name "ProtocolType" :json-name
                                   "protocolType")
                                  (route-selection-expression :target-type
                                   selection-expression :member-name
                                   "RouteSelectionExpression" :json-name
                                   "routeSelectionExpression")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (version :target-type
                                   string-with-length-between1and64
                                   :member-name "Version" :json-name "version")
                                  (warnings :target-type list-of-string
                                   :member-name "Warnings" :json-name
                                   "warnings"))
                                 (:shape-name "ImportApiResponse"))

(smithy/sdk/shapes:define-type integer-with-length-between0and3600
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-with-length-between50and30000
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type integer-with-length-between-minus1and86400
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure integration common-lisp:nil
                                    ((api-gateway-managed :target-type boolean
                                      :member-name "ApiGatewayManaged"
                                      :json-name "apiGatewayManaged")
                                     (connection-id :target-type
                                      string-with-length-between1and1024
                                      :member-name "ConnectionId" :json-name
                                      "connectionId")
                                     (connection-type :target-type
                                      connection-type :member-name
                                      "ConnectionType" :json-name
                                      "connectionType")
                                     (content-handling-strategy :target-type
                                      content-handling-strategy :member-name
                                      "ContentHandlingStrategy" :json-name
                                      "contentHandlingStrategy")
                                     (credentials-arn :target-type arn
                                      :member-name "CredentialsArn" :json-name
                                      "credentialsArn")
                                     (description :target-type
                                      string-with-length-between0and1024
                                      :member-name "Description" :json-name
                                      "description")
                                     (integration-id :target-type id
                                      :member-name "IntegrationId" :json-name
                                      "integrationId")
                                     (integration-method :target-type
                                      string-with-length-between1and64
                                      :member-name "IntegrationMethod"
                                      :json-name "integrationMethod")
                                     (integration-response-selection-expression
                                      :target-type selection-expression
                                      :member-name
                                      "IntegrationResponseSelectionExpression"
                                      :json-name
                                      "integrationResponseSelectionExpression")
                                     (integration-subtype :target-type
                                      string-with-length-between1and128
                                      :member-name "IntegrationSubtype"
                                      :json-name "integrationSubtype")
                                     (integration-type :target-type
                                      integration-type :member-name
                                      "IntegrationType" :json-name
                                      "integrationType")
                                     (integration-uri :target-type
                                      uri-with-length-between1and2048
                                      :member-name "IntegrationUri" :json-name
                                      "integrationUri")
                                     (passthrough-behavior :target-type
                                      passthrough-behavior :member-name
                                      "PassthroughBehavior" :json-name
                                      "passthroughBehavior")
                                     (payload-format-version :target-type
                                      string-with-length-between1and64
                                      :member-name "PayloadFormatVersion"
                                      :json-name "payloadFormatVersion")
                                     (request-parameters :target-type
                                      integration-parameters :member-name
                                      "RequestParameters" :json-name
                                      "requestParameters")
                                     (request-templates :target-type
                                      template-map :member-name
                                      "RequestTemplates" :json-name
                                      "requestTemplates")
                                     (response-parameters :target-type
                                      response-parameters :member-name
                                      "ResponseParameters" :json-name
                                      "responseParameters")
                                     (template-selection-expression
                                      :target-type selection-expression
                                      :member-name
                                      "TemplateSelectionExpression" :json-name
                                      "templateSelectionExpression")
                                     (timeout-in-millis :target-type
                                      integer-with-length-between50and30000
                                      :member-name "TimeoutInMillis" :json-name
                                      "timeoutInMillis")
                                     (tls-config :target-type tls-config
                                      :member-name "TlsConfig" :json-name
                                      "tlsConfig"))
                                    (:shape-name "Integration"))

(smithy/sdk/shapes:define-map integration-parameters :key string :value
                              string-with-length-between1and512)

(smithy/sdk/shapes:define-structure integration-response common-lisp:nil
                                    ((content-handling-strategy :target-type
                                      content-handling-strategy :member-name
                                      "ContentHandlingStrategy" :json-name
                                      "contentHandlingStrategy")
                                     (integration-response-id :target-type id
                                      :member-name "IntegrationResponseId"
                                      :json-name "integrationResponseId")
                                     (integration-response-key :target-type
                                      selection-key :required common-lisp:t
                                      :member-name "IntegrationResponseKey"
                                      :json-name "integrationResponseKey")
                                     (response-parameters :target-type
                                      integration-parameters :member-name
                                      "ResponseParameters" :json-name
                                      "responseParameters")
                                     (response-templates :target-type
                                      template-map :member-name
                                      "ResponseTemplates" :json-name
                                      "responseTemplates")
                                     (template-selection-expression
                                      :target-type selection-expression
                                      :member-name
                                      "TemplateSelectionExpression" :json-name
                                      "templateSelectionExpression"))
                                    (:shape-name "IntegrationResponse"))

(smithy/sdk/shapes:define-enum integration-type
    common-lisp:nil
  (:aws "AWS")
  (:http "HTTP")
  (:mock "MOCK")
  (:http-proxy "HTTP_PROXY")
  (:aws-proxy "AWS_PROXY"))

(smithy/sdk/shapes:define-enum ip-address-type
    common-lisp:nil
  (:ipv4 "ipv4")
  (:dualstack "dualstack"))

(smithy/sdk/shapes:define-structure jwtconfiguration common-lisp:nil
                                    ((audience :target-type list-of-string
                                      :member-name "Audience" :json-name
                                      "audience")
                                     (issuer :target-type
                                      uri-with-length-between1and2048
                                      :member-name "Issuer" :json-name
                                      "issuer"))
                                    (:shape-name "JWTConfiguration"))

(smithy/sdk/shapes:define-input list-routing-rules-request common-lisp:nil
                                ((domain-name :target-type string :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (domain-name-id :target-type string
                                  :member-name "DomainNameId" :http-query
                                  "domainNameId")
                                 (max-results :target-type max-results
                                  :member-name "MaxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type string :member-name
                                  "NextToken" :http-query "nextToken"))
                                (:shape-name "ListRoutingRulesRequest"))

(smithy/sdk/shapes:define-output list-routing-rules-response common-lisp:nil
                                 ((next-token :target-type next-token
                                   :member-name "NextToken" :json-name
                                   "nextToken")
                                  (routing-rules :target-type
                                   list-of-routing-rule :member-name
                                   "RoutingRules" :json-name "routingRules"))
                                 (:shape-name "ListRoutingRulesResponse"))

(smithy/sdk/shapes:define-enum logging-level
    common-lisp:nil
  (:error "ERROR")
  (:info "INFO")
  (:off "OFF"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure model common-lisp:nil
                                    ((content-type :target-type
                                      string-with-length-between1and256
                                      :member-name "ContentType" :json-name
                                      "contentType")
                                     (description :target-type
                                      string-with-length-between0and1024
                                      :member-name "Description" :json-name
                                      "description")
                                     (model-id :target-type id :member-name
                                      "ModelId" :json-name "modelId")
                                     (name :target-type
                                      string-with-length-between1and128
                                      :required common-lisp:t :member-name
                                      "Name" :json-name "name")
                                     (schema :target-type
                                      string-with-length-between0and32k
                                      :member-name "Schema" :json-name
                                      "schema"))
                                    (:shape-name "Model"))

(smithy/sdk/shapes:define-structure mutual-tls-authentication common-lisp:nil
                                    ((truststore-uri :target-type
                                      uri-with-length-between1and2048
                                      :member-name "TruststoreUri" :json-name
                                      "truststoreUri")
                                     (truststore-version :target-type
                                      string-with-length-between1and64
                                      :member-name "TruststoreVersion"
                                      :json-name "truststoreVersion")
                                     (truststore-warnings :target-type
                                      list-of-string :member-name
                                      "TruststoreWarnings" :json-name
                                      "truststoreWarnings"))
                                    (:shape-name "MutualTlsAuthentication"))

(smithy/sdk/shapes:define-structure mutual-tls-authentication-input
                                    common-lisp:nil
                                    ((truststore-uri :target-type
                                      uri-with-length-between1and2048
                                      :member-name "TruststoreUri" :json-name
                                      "truststoreUri")
                                     (truststore-version :target-type
                                      string-with-length-between1and64
                                      :member-name "TruststoreVersion"
                                      :json-name "truststoreVersion"))
                                    (:shape-name
                                     "MutualTlsAuthenticationInput"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "Message" :json-name "message")
                                 (resource-type :target-type string
                                  :member-name "ResourceType" :json-name
                                  "resourceType"))
                                (:shape-name "NotFoundException")
                                (:error-code 404)
                                (:base-class apigatewayv2-error))

(smithy/sdk/shapes:define-structure parameter-constraints common-lisp:nil
                                    ((required :target-type boolean
                                      :member-name "Required" :json-name
                                      "required"))
                                    (:shape-name "ParameterConstraints"))

(smithy/sdk/shapes:define-enum passthrough-behavior
    common-lisp:nil
  (:when-no-match "WHEN_NO_MATCH")
  (:never "NEVER")
  (:when-no-templates "WHEN_NO_TEMPLATES"))

(smithy/sdk/shapes:define-enum protocol-type
    common-lisp:nil
  (:websocket "WEBSOCKET")
  (:http "HTTP"))

(smithy/sdk/shapes:define-input put-routing-rule-request common-lisp:nil
                                ((actions :target-type
                                  list-of-routing-rule-action :required
                                  common-lisp:t :member-name "Actions"
                                  :json-name "actions")
                                 (conditions :target-type
                                  list-of-routing-rule-condition :required
                                  common-lisp:t :member-name "Conditions"
                                  :json-name "conditions")
                                 (domain-name :target-type string :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (domain-name-id :target-type string
                                  :member-name "DomainNameId" :http-query
                                  "domainNameId")
                                 (priority :target-type routing-rule-priority
                                  :required common-lisp:t :member-name
                                  "Priority" :json-name "priority")
                                 (routing-rule-id :target-type string :required
                                  common-lisp:t :member-name "RoutingRuleId"
                                  :http-label common-lisp:t))
                                (:shape-name "PutRoutingRuleRequest"))

(smithy/sdk/shapes:define-output put-routing-rule-response common-lisp:nil
                                 ((actions :target-type
                                   list-of-routing-rule-action :member-name
                                   "Actions" :json-name "actions")
                                  (conditions :target-type
                                   list-of-routing-rule-condition :member-name
                                   "Conditions" :json-name "conditions")
                                  (priority :target-type routing-rule-priority
                                   :member-name "Priority" :json-name
                                   "priority")
                                  (routing-rule-arn :target-type arn
                                   :member-name "RoutingRuleArn" :json-name
                                   "routingRuleArn")
                                  (routing-rule-id :target-type id :member-name
                                   "RoutingRuleId" :json-name "routingRuleId"))
                                 (:shape-name "PutRoutingRuleResponse"))

(smithy/sdk/shapes:define-input reimport-api-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (basepath :target-type string :member-name
                                  "Basepath" :http-query "basepath")
                                 (body :target-type string :required
                                  common-lisp:t :member-name "Body" :json-name
                                  "body")
                                 (fail-on-warnings :target-type boolean
                                  :member-name "FailOnWarnings" :http-query
                                  "failOnWarnings"))
                                (:shape-name "ReimportApiRequest"))

(smithy/sdk/shapes:define-output reimport-api-response common-lisp:nil
                                 ((api-endpoint :target-type string
                                   :member-name "ApiEndpoint" :json-name
                                   "apiEndpoint")
                                  (api-gateway-managed :target-type boolean
                                   :member-name "ApiGatewayManaged" :json-name
                                   "apiGatewayManaged")
                                  (api-id :target-type id :member-name "ApiId"
                                   :json-name "apiId")
                                  (api-key-selection-expression :target-type
                                   selection-expression :member-name
                                   "ApiKeySelectionExpression" :json-name
                                   "apiKeySelectionExpression")
                                  (cors-configuration :target-type cors
                                   :member-name "CorsConfiguration" :json-name
                                   "corsConfiguration")
                                  (created-date :target-type timestamp-iso8601
                                   :member-name "CreatedDate" :json-name
                                   "createdDate")
                                  (description :target-type
                                   string-with-length-between0and1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (disable-schema-validation :target-type
                                   boolean :member-name
                                   "DisableSchemaValidation" :json-name
                                   "disableSchemaValidation")
                                  (disable-execute-api-endpoint :target-type
                                   boolean :member-name
                                   "DisableExecuteApiEndpoint" :json-name
                                   "disableExecuteApiEndpoint")
                                  (import-info :target-type list-of-string
                                   :member-name "ImportInfo" :json-name
                                   "importInfo")
                                  (ip-address-type :target-type ip-address-type
                                   :member-name "IpAddressType" :json-name
                                   "ipAddressType")
                                  (name :target-type
                                   string-with-length-between1and128
                                   :member-name "Name" :json-name "name")
                                  (protocol-type :target-type protocol-type
                                   :member-name "ProtocolType" :json-name
                                   "protocolType")
                                  (route-selection-expression :target-type
                                   selection-expression :member-name
                                   "RouteSelectionExpression" :json-name
                                   "routeSelectionExpression")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (version :target-type
                                   string-with-length-between1and64
                                   :member-name "Version" :json-name "version")
                                  (warnings :target-type list-of-string
                                   :member-name "Warnings" :json-name
                                   "warnings"))
                                 (:shape-name "ReimportApiResponse"))

(smithy/sdk/shapes:define-input reset-authorizers-cache-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (stage-name :target-type string :required
                                  common-lisp:t :member-name "StageName"
                                  :http-label common-lisp:t))
                                (:shape-name "ResetAuthorizersCacheRequest"))

(smithy/sdk/shapes:define-map response-parameters :key string :value
                              integration-parameters)

(smithy/sdk/shapes:define-structure route common-lisp:nil
                                    ((api-gateway-managed :target-type boolean
                                      :member-name "ApiGatewayManaged"
                                      :json-name "apiGatewayManaged")
                                     (api-key-required :target-type boolean
                                      :member-name "ApiKeyRequired" :json-name
                                      "apiKeyRequired")
                                     (authorization-scopes :target-type
                                      authorization-scopes :member-name
                                      "AuthorizationScopes" :json-name
                                      "authorizationScopes")
                                     (authorization-type :target-type
                                      authorization-type :member-name
                                      "AuthorizationType" :json-name
                                      "authorizationType")
                                     (authorizer-id :target-type id
                                      :member-name "AuthorizerId" :json-name
                                      "authorizerId")
                                     (model-selection-expression :target-type
                                      selection-expression :member-name
                                      "ModelSelectionExpression" :json-name
                                      "modelSelectionExpression")
                                     (operation-name :target-type
                                      string-with-length-between1and64
                                      :member-name "OperationName" :json-name
                                      "operationName")
                                     (request-models :target-type route-models
                                      :member-name "RequestModels" :json-name
                                      "requestModels")
                                     (request-parameters :target-type
                                      route-parameters :member-name
                                      "RequestParameters" :json-name
                                      "requestParameters")
                                     (route-id :target-type id :member-name
                                      "RouteId" :json-name "routeId")
                                     (route-key :target-type selection-key
                                      :required common-lisp:t :member-name
                                      "RouteKey" :json-name "routeKey")
                                     (route-response-selection-expression
                                      :target-type selection-expression
                                      :member-name
                                      "RouteResponseSelectionExpression"
                                      :json-name
                                      "routeResponseSelectionExpression")
                                     (target :target-type
                                      string-with-length-between1and128
                                      :member-name "Target" :json-name
                                      "target"))
                                    (:shape-name "Route"))

(smithy/sdk/shapes:define-map route-models :key string :value
                              string-with-length-between1and128)

(smithy/sdk/shapes:define-map route-parameters :key string :value
                              parameter-constraints)

(smithy/sdk/shapes:define-structure route-response common-lisp:nil
                                    ((model-selection-expression :target-type
                                      selection-expression :member-name
                                      "ModelSelectionExpression" :json-name
                                      "modelSelectionExpression")
                                     (response-models :target-type route-models
                                      :member-name "ResponseModels" :json-name
                                      "responseModels")
                                     (response-parameters :target-type
                                      route-parameters :member-name
                                      "ResponseParameters" :json-name
                                      "responseParameters")
                                     (route-response-id :target-type id
                                      :member-name "RouteResponseId" :json-name
                                      "routeResponseId")
                                     (route-response-key :target-type
                                      selection-key :required common-lisp:t
                                      :member-name "RouteResponseKey"
                                      :json-name "routeResponseKey"))
                                    (:shape-name "RouteResponse"))

(smithy/sdk/shapes:define-structure route-settings common-lisp:nil
                                    ((data-trace-enabled :target-type boolean
                                      :member-name "DataTraceEnabled"
                                      :json-name "dataTraceEnabled")
                                     (detailed-metrics-enabled :target-type
                                      boolean :member-name
                                      "DetailedMetricsEnabled" :json-name
                                      "detailedMetricsEnabled")
                                     (logging-level :target-type logging-level
                                      :member-name "LoggingLevel" :json-name
                                      "loggingLevel")
                                     (throttling-burst-limit :target-type
                                      integer :member-name
                                      "ThrottlingBurstLimit" :json-name
                                      "throttlingBurstLimit")
                                     (throttling-rate-limit :target-type double
                                      :member-name "ThrottlingRateLimit"
                                      :json-name "throttlingRateLimit"))
                                    (:shape-name "RouteSettings"))

(smithy/sdk/shapes:define-map route-settings-map :key string :value
                              route-settings)

(smithy/sdk/shapes:define-enum routing-mode
    common-lisp:nil
  (:api-mapping-only "API_MAPPING_ONLY")
  (:routing-rule-only "ROUTING_RULE_ONLY")
  (:routing-rule-then-api-mapping "ROUTING_RULE_THEN_API_MAPPING"))

(smithy/sdk/shapes:define-structure routing-rule common-lisp:nil
                                    ((actions :target-type
                                      list-of-routing-rule-action :member-name
                                      "Actions" :json-name "actions")
                                     (conditions :target-type
                                      list-of-routing-rule-condition
                                      :member-name "Conditions" :json-name
                                      "conditions")
                                     (priority :target-type
                                      routing-rule-priority :member-name
                                      "Priority" :json-name "priority")
                                     (routing-rule-arn :target-type arn
                                      :member-name "RoutingRuleArn" :json-name
                                      "routingRuleArn")
                                     (routing-rule-id :target-type id
                                      :member-name "RoutingRuleId" :json-name
                                      "routingRuleId"))
                                    (:shape-name "RoutingRule"))

(smithy/sdk/shapes:define-structure routing-rule-action common-lisp:nil
                                    ((invoke-api :target-type
                                      routing-rule-action-invoke-api :required
                                      common-lisp:t :member-name "InvokeApi"
                                      :json-name "invokeApi"))
                                    (:shape-name "RoutingRuleAction"))

(smithy/sdk/shapes:define-structure routing-rule-action-invoke-api
                                    common-lisp:nil
                                    ((api-id :target-type id :required
                                      common-lisp:t :member-name "ApiId"
                                      :json-name "apiId")
                                     (stage :target-type
                                      string-with-length-between1and128
                                      :required common-lisp:t :member-name
                                      "Stage" :json-name "stage")
                                     (strip-base-path :target-type boolean
                                      :member-name "StripBasePath" :json-name
                                      "stripBasePath"))
                                    (:shape-name "RoutingRuleActionInvokeApi"))

(smithy/sdk/shapes:define-structure routing-rule-condition common-lisp:nil
                                    ((match-base-paths :target-type
                                      routing-rule-match-base-paths
                                      :member-name "MatchBasePaths" :json-name
                                      "matchBasePaths")
                                     (match-headers :target-type
                                      routing-rule-match-headers :member-name
                                      "MatchHeaders" :json-name
                                      "matchHeaders"))
                                    (:shape-name "RoutingRuleCondition"))

(smithy/sdk/shapes:define-structure routing-rule-match-base-paths
                                    common-lisp:nil
                                    ((any-of :target-type list-of-selection-key
                                      :required common-lisp:t :member-name
                                      "AnyOf" :json-name "anyOf"))
                                    (:shape-name "RoutingRuleMatchBasePaths"))

(smithy/sdk/shapes:define-structure routing-rule-match-header-value
                                    common-lisp:nil
                                    ((header :target-type selection-key
                                      :required common-lisp:t :member-name
                                      "Header" :json-name "header")
                                     (value-glob :target-type
                                      selection-expression :required
                                      common-lisp:t :member-name "ValueGlob"
                                      :json-name "valueGlob"))
                                    (:shape-name "RoutingRuleMatchHeaderValue"))

(smithy/sdk/shapes:define-structure routing-rule-match-headers common-lisp:nil
                                    ((any-of :target-type
                                      list-of-routing-rule-match-header-value
                                      :required common-lisp:t :member-name
                                      "AnyOf" :json-name "anyOf"))
                                    (:shape-name "RoutingRuleMatchHeaders"))

(smithy/sdk/shapes:define-type routing-rule-priority
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list security-group-id-list :member string)

(smithy/sdk/shapes:define-enum security-policy
    common-lisp:nil
  (:tls-1-0 "TLS_1_0")
  (:tls-1-2 "TLS_1_2"))

(smithy/sdk/shapes:define-type selection-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type selection-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure stage common-lisp:nil
                                    ((access-log-settings :target-type
                                      access-log-settings :member-name
                                      "AccessLogSettings" :json-name
                                      "accessLogSettings")
                                     (api-gateway-managed :target-type boolean
                                      :member-name "ApiGatewayManaged"
                                      :json-name "apiGatewayManaged")
                                     (auto-deploy :target-type boolean
                                      :member-name "AutoDeploy" :json-name
                                      "autoDeploy")
                                     (client-certificate-id :target-type id
                                      :member-name "ClientCertificateId"
                                      :json-name "clientCertificateId")
                                     (created-date :target-type
                                      timestamp-iso8601 :member-name
                                      "CreatedDate" :json-name "createdDate")
                                     (default-route-settings :target-type
                                      route-settings :member-name
                                      "DefaultRouteSettings" :json-name
                                      "defaultRouteSettings")
                                     (deployment-id :target-type id
                                      :member-name "DeploymentId" :json-name
                                      "deploymentId")
                                     (description :target-type
                                      string-with-length-between0and1024
                                      :member-name "Description" :json-name
                                      "description")
                                     (last-deployment-status-message
                                      :target-type string :member-name
                                      "LastDeploymentStatusMessage" :json-name
                                      "lastDeploymentStatusMessage")
                                     (last-updated-date :target-type
                                      timestamp-iso8601 :member-name
                                      "LastUpdatedDate" :json-name
                                      "lastUpdatedDate")
                                     (route-settings :target-type
                                      route-settings-map :member-name
                                      "RouteSettings" :json-name
                                      "routeSettings")
                                     (stage-name :target-type
                                      string-with-length-between1and128
                                      :required common-lisp:t :member-name
                                      "StageName" :json-name "stageName")
                                     (stage-variables :target-type
                                      stage-variables-map :member-name
                                      "StageVariables" :json-name
                                      "stageVariables")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags"))
                                    (:shape-name "Stage"))

(smithy/sdk/shapes:define-map stage-variables-map :key string :value
                              string-with-length-between0and2048)

(smithy/sdk/shapes:define-type string-with-length-between0and1024
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-with-length-between0and2048
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-with-length-between0and32k
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-with-length-between1and1024
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-with-length-between1and128
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-with-length-between1and1600
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-with-length-between1and256
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-with-length-between1and512
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string-with-length-between1and64
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-id-list :member string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tags :member-name "Tags"
                                  :json-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-map tags :key string :value
                              string-with-length-between1and1600)

(smithy/sdk/shapes:define-map template-map :key string :value
                              string-with-length-between0and32k)

(smithy/sdk/shapes:define-structure tls-config common-lisp:nil
                                    ((server-name-to-verify :target-type
                                      string-with-length-between1and512
                                      :member-name "ServerNameToVerify"
                                      :json-name "serverNameToVerify"))
                                    (:shape-name "TlsConfig"))

(smithy/sdk/shapes:define-structure tls-config-input common-lisp:nil
                                    ((server-name-to-verify :target-type
                                      string-with-length-between1and512
                                      :member-name "ServerNameToVerify"
                                      :json-name "serverNameToVerify"))
                                    (:shape-name "TlsConfigInput"))

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((limit-type :target-type string :member-name
                                  "LimitType" :json-name "limitType")
                                 (message :target-type string :member-name
                                  "Message" :json-name "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429)
                                (:base-class apigatewayv2-error))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "ResourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "TagKeys" :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-api-mapping-request common-lisp:nil
                                ((api-id :target-type id :required
                                  common-lisp:t :member-name "ApiId" :json-name
                                  "apiId")
                                 (api-mapping-id :target-type string :required
                                  common-lisp:t :member-name "ApiMappingId"
                                  :http-label common-lisp:t)
                                 (api-mapping-key :target-type selection-key
                                  :member-name "ApiMappingKey" :json-name
                                  "apiMappingKey")
                                 (domain-name :target-type string :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (stage :target-type
                                  string-with-length-between1and128
                                  :member-name "Stage" :json-name "stage"))
                                (:shape-name "UpdateApiMappingRequest"))

(smithy/sdk/shapes:define-output update-api-mapping-response common-lisp:nil
                                 ((api-id :target-type id :member-name "ApiId"
                                   :json-name "apiId")
                                  (api-mapping-id :target-type id :member-name
                                   "ApiMappingId" :json-name "apiMappingId")
                                  (api-mapping-key :target-type selection-key
                                   :member-name "ApiMappingKey" :json-name
                                   "apiMappingKey")
                                  (stage :target-type
                                   string-with-length-between1and128
                                   :member-name "Stage" :json-name "stage"))
                                 (:shape-name "UpdateApiMappingResponse"))

(smithy/sdk/shapes:define-input update-api-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (api-key-selection-expression :target-type
                                  selection-expression :member-name
                                  "ApiKeySelectionExpression" :json-name
                                  "apiKeySelectionExpression")
                                 (cors-configuration :target-type cors
                                  :member-name "CorsConfiguration" :json-name
                                  "corsConfiguration")
                                 (credentials-arn :target-type arn :member-name
                                  "CredentialsArn" :json-name "credentialsArn")
                                 (description :target-type
                                  string-with-length-between0and1024
                                  :member-name "Description" :json-name
                                  "description")
                                 (disable-schema-validation :target-type
                                  boolean :member-name
                                  "DisableSchemaValidation" :json-name
                                  "disableSchemaValidation")
                                 (disable-execute-api-endpoint :target-type
                                  boolean :member-name
                                  "DisableExecuteApiEndpoint" :json-name
                                  "disableExecuteApiEndpoint")
                                 (ip-address-type :target-type ip-address-type
                                  :member-name "IpAddressType" :json-name
                                  "ipAddressType")
                                 (name :target-type
                                  string-with-length-between1and128
                                  :member-name "Name" :json-name "name")
                                 (route-key :target-type selection-key
                                  :member-name "RouteKey" :json-name
                                  "routeKey")
                                 (route-selection-expression :target-type
                                  selection-expression :member-name
                                  "RouteSelectionExpression" :json-name
                                  "routeSelectionExpression")
                                 (target :target-type
                                  uri-with-length-between1and2048 :member-name
                                  "Target" :json-name "target")
                                 (version :target-type
                                  string-with-length-between1and64 :member-name
                                  "Version" :json-name "version"))
                                (:shape-name "UpdateApiRequest"))

(smithy/sdk/shapes:define-output update-api-response common-lisp:nil
                                 ((api-endpoint :target-type string
                                   :member-name "ApiEndpoint" :json-name
                                   "apiEndpoint")
                                  (api-gateway-managed :target-type boolean
                                   :member-name "ApiGatewayManaged" :json-name
                                   "apiGatewayManaged")
                                  (api-id :target-type id :member-name "ApiId"
                                   :json-name "apiId")
                                  (api-key-selection-expression :target-type
                                   selection-expression :member-name
                                   "ApiKeySelectionExpression" :json-name
                                   "apiKeySelectionExpression")
                                  (cors-configuration :target-type cors
                                   :member-name "CorsConfiguration" :json-name
                                   "corsConfiguration")
                                  (created-date :target-type timestamp-iso8601
                                   :member-name "CreatedDate" :json-name
                                   "createdDate")
                                  (description :target-type
                                   string-with-length-between0and1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (disable-schema-validation :target-type
                                   boolean :member-name
                                   "DisableSchemaValidation" :json-name
                                   "disableSchemaValidation")
                                  (disable-execute-api-endpoint :target-type
                                   boolean :member-name
                                   "DisableExecuteApiEndpoint" :json-name
                                   "disableExecuteApiEndpoint")
                                  (import-info :target-type list-of-string
                                   :member-name "ImportInfo" :json-name
                                   "importInfo")
                                  (ip-address-type :target-type ip-address-type
                                   :member-name "IpAddressType" :json-name
                                   "ipAddressType")
                                  (name :target-type
                                   string-with-length-between1and128
                                   :member-name "Name" :json-name "name")
                                  (protocol-type :target-type protocol-type
                                   :member-name "ProtocolType" :json-name
                                   "protocolType")
                                  (route-selection-expression :target-type
                                   selection-expression :member-name
                                   "RouteSelectionExpression" :json-name
                                   "routeSelectionExpression")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (version :target-type
                                   string-with-length-between1and64
                                   :member-name "Version" :json-name "version")
                                  (warnings :target-type list-of-string
                                   :member-name "Warnings" :json-name
                                   "warnings"))
                                 (:shape-name "UpdateApiResponse"))

(smithy/sdk/shapes:define-input update-authorizer-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (authorizer-credentials-arn :target-type arn
                                  :member-name "AuthorizerCredentialsArn"
                                  :json-name "authorizerCredentialsArn")
                                 (authorizer-id :target-type string :required
                                  common-lisp:t :member-name "AuthorizerId"
                                  :http-label common-lisp:t)
                                 (authorizer-payload-format-version
                                  :target-type string-with-length-between1and64
                                  :member-name "AuthorizerPayloadFormatVersion"
                                  :json-name "authorizerPayloadFormatVersion")
                                 (authorizer-result-ttl-in-seconds :target-type
                                  integer-with-length-between0and3600
                                  :member-name "AuthorizerResultTtlInSeconds"
                                  :json-name "authorizerResultTtlInSeconds")
                                 (authorizer-type :target-type authorizer-type
                                  :member-name "AuthorizerType" :json-name
                                  "authorizerType")
                                 (authorizer-uri :target-type
                                  uri-with-length-between1and2048 :member-name
                                  "AuthorizerUri" :json-name "authorizerUri")
                                 (enable-simple-responses :target-type boolean
                                  :member-name "EnableSimpleResponses"
                                  :json-name "enableSimpleResponses")
                                 (identity-source :target-type
                                  identity-source-list :member-name
                                  "IdentitySource" :json-name "identitySource")
                                 (identity-validation-expression :target-type
                                  string-with-length-between0and1024
                                  :member-name "IdentityValidationExpression"
                                  :json-name "identityValidationExpression")
                                 (jwt-configuration :target-type
                                  jwtconfiguration :member-name
                                  "JwtConfiguration" :json-name
                                  "jwtConfiguration")
                                 (name :target-type
                                  string-with-length-between1and128
                                  :member-name "Name" :json-name "name"))
                                (:shape-name "UpdateAuthorizerRequest"))

(smithy/sdk/shapes:define-output update-authorizer-response common-lisp:nil
                                 ((authorizer-credentials-arn :target-type arn
                                   :member-name "AuthorizerCredentialsArn"
                                   :json-name "authorizerCredentialsArn")
                                  (authorizer-id :target-type id :member-name
                                   "AuthorizerId" :json-name "authorizerId")
                                  (authorizer-payload-format-version
                                   :target-type
                                   string-with-length-between1and64
                                   :member-name
                                   "AuthorizerPayloadFormatVersion" :json-name
                                   "authorizerPayloadFormatVersion")
                                  (authorizer-result-ttl-in-seconds
                                   :target-type
                                   integer-with-length-between0and3600
                                   :member-name "AuthorizerResultTtlInSeconds"
                                   :json-name "authorizerResultTtlInSeconds")
                                  (authorizer-type :target-type authorizer-type
                                   :member-name "AuthorizerType" :json-name
                                   "authorizerType")
                                  (authorizer-uri :target-type
                                   uri-with-length-between1and2048 :member-name
                                   "AuthorizerUri" :json-name "authorizerUri")
                                  (enable-simple-responses :target-type boolean
                                   :member-name "EnableSimpleResponses"
                                   :json-name "enableSimpleResponses")
                                  (identity-source :target-type
                                   identity-source-list :member-name
                                   "IdentitySource" :json-name
                                   "identitySource")
                                  (identity-validation-expression :target-type
                                   string-with-length-between0and1024
                                   :member-name "IdentityValidationExpression"
                                   :json-name "identityValidationExpression")
                                  (jwt-configuration :target-type
                                   jwtconfiguration :member-name
                                   "JwtConfiguration" :json-name
                                   "jwtConfiguration")
                                  (name :target-type
                                   string-with-length-between1and128
                                   :member-name "Name" :json-name "name"))
                                 (:shape-name "UpdateAuthorizerResponse"))

(smithy/sdk/shapes:define-input update-deployment-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (deployment-id :target-type string :required
                                  common-lisp:t :member-name "DeploymentId"
                                  :http-label common-lisp:t)
                                 (description :target-type
                                  string-with-length-between0and1024
                                  :member-name "Description" :json-name
                                  "description"))
                                (:shape-name "UpdateDeploymentRequest"))

(smithy/sdk/shapes:define-output update-deployment-response common-lisp:nil
                                 ((auto-deployed :target-type boolean
                                   :member-name "AutoDeployed" :json-name
                                   "autoDeployed")
                                  (created-date :target-type timestamp-iso8601
                                   :member-name "CreatedDate" :json-name
                                   "createdDate")
                                  (deployment-id :target-type id :member-name
                                   "DeploymentId" :json-name "deploymentId")
                                  (deployment-status :target-type
                                   deployment-status :member-name
                                   "DeploymentStatus" :json-name
                                   "deploymentStatus")
                                  (deployment-status-message :target-type
                                   string :member-name
                                   "DeploymentStatusMessage" :json-name
                                   "deploymentStatusMessage")
                                  (description :target-type
                                   string-with-length-between0and1024
                                   :member-name "Description" :json-name
                                   "description"))
                                 (:shape-name "UpdateDeploymentResponse"))

(smithy/sdk/shapes:define-input update-domain-name-request common-lisp:nil
                                ((domain-name :target-type string :required
                                  common-lisp:t :member-name "DomainName"
                                  :http-label common-lisp:t)
                                 (domain-name-configurations :target-type
                                  domain-name-configurations :member-name
                                  "DomainNameConfigurations" :json-name
                                  "domainNameConfigurations")
                                 (mutual-tls-authentication :target-type
                                  mutual-tls-authentication-input :member-name
                                  "MutualTlsAuthentication" :json-name
                                  "mutualTlsAuthentication")
                                 (routing-mode :target-type routing-mode
                                  :member-name "RoutingMode" :json-name
                                  "routingMode"))
                                (:shape-name "UpdateDomainNameRequest"))

(smithy/sdk/shapes:define-output update-domain-name-response common-lisp:nil
                                 ((api-mapping-selection-expression
                                   :target-type selection-expression
                                   :member-name "ApiMappingSelectionExpression"
                                   :json-name "apiMappingSelectionExpression")
                                  (domain-name :target-type
                                   string-with-length-between1and512
                                   :member-name "DomainName" :json-name
                                   "domainName")
                                  (domain-name-arn :target-type arn
                                   :member-name "DomainNameArn" :json-name
                                   "domainNameArn")
                                  (domain-name-configurations :target-type
                                   domain-name-configurations :member-name
                                   "DomainNameConfigurations" :json-name
                                   "domainNameConfigurations")
                                  (mutual-tls-authentication :target-type
                                   mutual-tls-authentication :member-name
                                   "MutualTlsAuthentication" :json-name
                                   "mutualTlsAuthentication")
                                  (routing-mode :target-type routing-mode
                                   :member-name "RoutingMode" :json-name
                                   "routingMode")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "UpdateDomainNameResponse"))

(smithy/sdk/shapes:define-input update-integration-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (connection-id :target-type
                                  string-with-length-between1and1024
                                  :member-name "ConnectionId" :json-name
                                  "connectionId")
                                 (connection-type :target-type connection-type
                                  :member-name "ConnectionType" :json-name
                                  "connectionType")
                                 (content-handling-strategy :target-type
                                  content-handling-strategy :member-name
                                  "ContentHandlingStrategy" :json-name
                                  "contentHandlingStrategy")
                                 (credentials-arn :target-type arn :member-name
                                  "CredentialsArn" :json-name "credentialsArn")
                                 (description :target-type
                                  string-with-length-between0and1024
                                  :member-name "Description" :json-name
                                  "description")
                                 (integration-id :target-type string :required
                                  common-lisp:t :member-name "IntegrationId"
                                  :http-label common-lisp:t)
                                 (integration-method :target-type
                                  string-with-length-between1and64 :member-name
                                  "IntegrationMethod" :json-name
                                  "integrationMethod")
                                 (integration-subtype :target-type
                                  string-with-length-between1and128
                                  :member-name "IntegrationSubtype" :json-name
                                  "integrationSubtype")
                                 (integration-type :target-type
                                  integration-type :member-name
                                  "IntegrationType" :json-name
                                  "integrationType")
                                 (integration-uri :target-type
                                  uri-with-length-between1and2048 :member-name
                                  "IntegrationUri" :json-name "integrationUri")
                                 (passthrough-behavior :target-type
                                  passthrough-behavior :member-name
                                  "PassthroughBehavior" :json-name
                                  "passthroughBehavior")
                                 (payload-format-version :target-type
                                  string-with-length-between1and64 :member-name
                                  "PayloadFormatVersion" :json-name
                                  "payloadFormatVersion")
                                 (request-parameters :target-type
                                  integration-parameters :member-name
                                  "RequestParameters" :json-name
                                  "requestParameters")
                                 (request-templates :target-type template-map
                                  :member-name "RequestTemplates" :json-name
                                  "requestTemplates")
                                 (response-parameters :target-type
                                  response-parameters :member-name
                                  "ResponseParameters" :json-name
                                  "responseParameters")
                                 (template-selection-expression :target-type
                                  selection-expression :member-name
                                  "TemplateSelectionExpression" :json-name
                                  "templateSelectionExpression")
                                 (timeout-in-millis :target-type
                                  integer-with-length-between50and30000
                                  :member-name "TimeoutInMillis" :json-name
                                  "timeoutInMillis")
                                 (tls-config :target-type tls-config-input
                                  :member-name "TlsConfig" :json-name
                                  "tlsConfig"))
                                (:shape-name "UpdateIntegrationRequest"))

(smithy/sdk/shapes:define-input update-integration-response-request
                                common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (content-handling-strategy :target-type
                                  content-handling-strategy :member-name
                                  "ContentHandlingStrategy" :json-name
                                  "contentHandlingStrategy")
                                 (integration-id :target-type string :required
                                  common-lisp:t :member-name "IntegrationId"
                                  :http-label common-lisp:t)
                                 (integration-response-id :target-type string
                                  :required common-lisp:t :member-name
                                  "IntegrationResponseId" :http-label
                                  common-lisp:t)
                                 (integration-response-key :target-type
                                  selection-key :member-name
                                  "IntegrationResponseKey" :json-name
                                  "integrationResponseKey")
                                 (response-parameters :target-type
                                  integration-parameters :member-name
                                  "ResponseParameters" :json-name
                                  "responseParameters")
                                 (response-templates :target-type template-map
                                  :member-name "ResponseTemplates" :json-name
                                  "responseTemplates")
                                 (template-selection-expression :target-type
                                  selection-expression :member-name
                                  "TemplateSelectionExpression" :json-name
                                  "templateSelectionExpression"))
                                (:shape-name
                                 "UpdateIntegrationResponseRequest"))

(smithy/sdk/shapes:define-output update-integration-response-response
                                 common-lisp:nil
                                 ((content-handling-strategy :target-type
                                   content-handling-strategy :member-name
                                   "ContentHandlingStrategy" :json-name
                                   "contentHandlingStrategy")
                                  (integration-response-id :target-type id
                                   :member-name "IntegrationResponseId"
                                   :json-name "integrationResponseId")
                                  (integration-response-key :target-type
                                   selection-key :member-name
                                   "IntegrationResponseKey" :json-name
                                   "integrationResponseKey")
                                  (response-parameters :target-type
                                   integration-parameters :member-name
                                   "ResponseParameters" :json-name
                                   "responseParameters")
                                  (response-templates :target-type template-map
                                   :member-name "ResponseTemplates" :json-name
                                   "responseTemplates")
                                  (template-selection-expression :target-type
                                   selection-expression :member-name
                                   "TemplateSelectionExpression" :json-name
                                   "templateSelectionExpression"))
                                 (:shape-name
                                  "UpdateIntegrationResponseResponse"))

(smithy/sdk/shapes:define-output update-integration-result common-lisp:nil
                                 ((api-gateway-managed :target-type boolean
                                   :member-name "ApiGatewayManaged" :json-name
                                   "apiGatewayManaged")
                                  (connection-id :target-type
                                   string-with-length-between1and1024
                                   :member-name "ConnectionId" :json-name
                                   "connectionId")
                                  (connection-type :target-type connection-type
                                   :member-name "ConnectionType" :json-name
                                   "connectionType")
                                  (content-handling-strategy :target-type
                                   content-handling-strategy :member-name
                                   "ContentHandlingStrategy" :json-name
                                   "contentHandlingStrategy")
                                  (credentials-arn :target-type arn
                                   :member-name "CredentialsArn" :json-name
                                   "credentialsArn")
                                  (description :target-type
                                   string-with-length-between0and1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (integration-id :target-type id :member-name
                                   "IntegrationId" :json-name "integrationId")
                                  (integration-method :target-type
                                   string-with-length-between1and64
                                   :member-name "IntegrationMethod" :json-name
                                   "integrationMethod")
                                  (integration-response-selection-expression
                                   :target-type selection-expression
                                   :member-name
                                   "IntegrationResponseSelectionExpression"
                                   :json-name
                                   "integrationResponseSelectionExpression")
                                  (integration-subtype :target-type
                                   string-with-length-between1and128
                                   :member-name "IntegrationSubtype" :json-name
                                   "integrationSubtype")
                                  (integration-type :target-type
                                   integration-type :member-name
                                   "IntegrationType" :json-name
                                   "integrationType")
                                  (integration-uri :target-type
                                   uri-with-length-between1and2048 :member-name
                                   "IntegrationUri" :json-name
                                   "integrationUri")
                                  (passthrough-behavior :target-type
                                   passthrough-behavior :member-name
                                   "PassthroughBehavior" :json-name
                                   "passthroughBehavior")
                                  (payload-format-version :target-type
                                   string-with-length-between1and64
                                   :member-name "PayloadFormatVersion"
                                   :json-name "payloadFormatVersion")
                                  (request-parameters :target-type
                                   integration-parameters :member-name
                                   "RequestParameters" :json-name
                                   "requestParameters")
                                  (request-templates :target-type template-map
                                   :member-name "RequestTemplates" :json-name
                                   "requestTemplates")
                                  (response-parameters :target-type
                                   response-parameters :member-name
                                   "ResponseParameters" :json-name
                                   "responseParameters")
                                  (template-selection-expression :target-type
                                   selection-expression :member-name
                                   "TemplateSelectionExpression" :json-name
                                   "templateSelectionExpression")
                                  (timeout-in-millis :target-type
                                   integer-with-length-between50and30000
                                   :member-name "TimeoutInMillis" :json-name
                                   "timeoutInMillis")
                                  (tls-config :target-type tls-config
                                   :member-name "TlsConfig" :json-name
                                   "tlsConfig"))
                                 (:shape-name "UpdateIntegrationResult"))

(smithy/sdk/shapes:define-input update-model-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (content-type :target-type
                                  string-with-length-between1and256
                                  :member-name "ContentType" :json-name
                                  "contentType")
                                 (description :target-type
                                  string-with-length-between0and1024
                                  :member-name "Description" :json-name
                                  "description")
                                 (model-id :target-type string :required
                                  common-lisp:t :member-name "ModelId"
                                  :http-label common-lisp:t)
                                 (name :target-type
                                  string-with-length-between1and128
                                  :member-name "Name" :json-name "name")
                                 (schema :target-type
                                  string-with-length-between0and32k
                                  :member-name "Schema" :json-name "schema"))
                                (:shape-name "UpdateModelRequest"))

(smithy/sdk/shapes:define-output update-model-response common-lisp:nil
                                 ((content-type :target-type
                                   string-with-length-between1and256
                                   :member-name "ContentType" :json-name
                                   "contentType")
                                  (description :target-type
                                   string-with-length-between0and1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (model-id :target-type id :member-name
                                   "ModelId" :json-name "modelId")
                                  (name :target-type
                                   string-with-length-between1and128
                                   :member-name "Name" :json-name "name")
                                  (schema :target-type
                                   string-with-length-between0and32k
                                   :member-name "Schema" :json-name "schema"))
                                 (:shape-name "UpdateModelResponse"))

(smithy/sdk/shapes:define-input update-route-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (api-key-required :target-type boolean
                                  :member-name "ApiKeyRequired" :json-name
                                  "apiKeyRequired")
                                 (authorization-scopes :target-type
                                  authorization-scopes :member-name
                                  "AuthorizationScopes" :json-name
                                  "authorizationScopes")
                                 (authorization-type :target-type
                                  authorization-type :member-name
                                  "AuthorizationType" :json-name
                                  "authorizationType")
                                 (authorizer-id :target-type id :member-name
                                  "AuthorizerId" :json-name "authorizerId")
                                 (model-selection-expression :target-type
                                  selection-expression :member-name
                                  "ModelSelectionExpression" :json-name
                                  "modelSelectionExpression")
                                 (operation-name :target-type
                                  string-with-length-between1and64 :member-name
                                  "OperationName" :json-name "operationName")
                                 (request-models :target-type route-models
                                  :member-name "RequestModels" :json-name
                                  "requestModels")
                                 (request-parameters :target-type
                                  route-parameters :member-name
                                  "RequestParameters" :json-name
                                  "requestParameters")
                                 (route-id :target-type string :required
                                  common-lisp:t :member-name "RouteId"
                                  :http-label common-lisp:t)
                                 (route-key :target-type selection-key
                                  :member-name "RouteKey" :json-name
                                  "routeKey")
                                 (route-response-selection-expression
                                  :target-type selection-expression
                                  :member-name
                                  "RouteResponseSelectionExpression" :json-name
                                  "routeResponseSelectionExpression")
                                 (target :target-type
                                  string-with-length-between1and128
                                  :member-name "Target" :json-name "target"))
                                (:shape-name "UpdateRouteRequest"))

(smithy/sdk/shapes:define-input update-route-response-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (model-selection-expression :target-type
                                  selection-expression :member-name
                                  "ModelSelectionExpression" :json-name
                                  "modelSelectionExpression")
                                 (response-models :target-type route-models
                                  :member-name "ResponseModels" :json-name
                                  "responseModels")
                                 (response-parameters :target-type
                                  route-parameters :member-name
                                  "ResponseParameters" :json-name
                                  "responseParameters")
                                 (route-id :target-type string :required
                                  common-lisp:t :member-name "RouteId"
                                  :http-label common-lisp:t)
                                 (route-response-id :target-type string
                                  :required common-lisp:t :member-name
                                  "RouteResponseId" :http-label common-lisp:t)
                                 (route-response-key :target-type selection-key
                                  :member-name "RouteResponseKey" :json-name
                                  "routeResponseKey"))
                                (:shape-name "UpdateRouteResponseRequest"))

(smithy/sdk/shapes:define-output update-route-response-response common-lisp:nil
                                 ((model-selection-expression :target-type
                                   selection-expression :member-name
                                   "ModelSelectionExpression" :json-name
                                   "modelSelectionExpression")
                                  (response-models :target-type route-models
                                   :member-name "ResponseModels" :json-name
                                   "responseModels")
                                  (response-parameters :target-type
                                   route-parameters :member-name
                                   "ResponseParameters" :json-name
                                   "responseParameters")
                                  (route-response-id :target-type id
                                   :member-name "RouteResponseId" :json-name
                                   "routeResponseId")
                                  (route-response-key :target-type
                                   selection-key :member-name
                                   "RouteResponseKey" :json-name
                                   "routeResponseKey"))
                                 (:shape-name "UpdateRouteResponseResponse"))

(smithy/sdk/shapes:define-output update-route-result common-lisp:nil
                                 ((api-gateway-managed :target-type boolean
                                   :member-name "ApiGatewayManaged" :json-name
                                   "apiGatewayManaged")
                                  (api-key-required :target-type boolean
                                   :member-name "ApiKeyRequired" :json-name
                                   "apiKeyRequired")
                                  (authorization-scopes :target-type
                                   authorization-scopes :member-name
                                   "AuthorizationScopes" :json-name
                                   "authorizationScopes")
                                  (authorization-type :target-type
                                   authorization-type :member-name
                                   "AuthorizationType" :json-name
                                   "authorizationType")
                                  (authorizer-id :target-type id :member-name
                                   "AuthorizerId" :json-name "authorizerId")
                                  (model-selection-expression :target-type
                                   selection-expression :member-name
                                   "ModelSelectionExpression" :json-name
                                   "modelSelectionExpression")
                                  (operation-name :target-type
                                   string-with-length-between1and64
                                   :member-name "OperationName" :json-name
                                   "operationName")
                                  (request-models :target-type route-models
                                   :member-name "RequestModels" :json-name
                                   "requestModels")
                                  (request-parameters :target-type
                                   route-parameters :member-name
                                   "RequestParameters" :json-name
                                   "requestParameters")
                                  (route-id :target-type id :member-name
                                   "RouteId" :json-name "routeId")
                                  (route-key :target-type selection-key
                                   :member-name "RouteKey" :json-name
                                   "routeKey")
                                  (route-response-selection-expression
                                   :target-type selection-expression
                                   :member-name
                                   "RouteResponseSelectionExpression"
                                   :json-name
                                   "routeResponseSelectionExpression")
                                  (target :target-type
                                   string-with-length-between1and128
                                   :member-name "Target" :json-name "target"))
                                 (:shape-name "UpdateRouteResult"))

(smithy/sdk/shapes:define-input update-stage-request common-lisp:nil
                                ((access-log-settings :target-type
                                  access-log-settings :member-name
                                  "AccessLogSettings" :json-name
                                  "accessLogSettings")
                                 (api-id :target-type string :required
                                  common-lisp:t :member-name "ApiId"
                                  :http-label common-lisp:t)
                                 (auto-deploy :target-type boolean :member-name
                                  "AutoDeploy" :json-name "autoDeploy")
                                 (client-certificate-id :target-type id
                                  :member-name "ClientCertificateId" :json-name
                                  "clientCertificateId")
                                 (default-route-settings :target-type
                                  route-settings :member-name
                                  "DefaultRouteSettings" :json-name
                                  "defaultRouteSettings")
                                 (deployment-id :target-type id :member-name
                                  "DeploymentId" :json-name "deploymentId")
                                 (description :target-type
                                  string-with-length-between0and1024
                                  :member-name "Description" :json-name
                                  "description")
                                 (route-settings :target-type
                                  route-settings-map :member-name
                                  "RouteSettings" :json-name "routeSettings")
                                 (stage-name :target-type string :required
                                  common-lisp:t :member-name "StageName"
                                  :http-label common-lisp:t)
                                 (stage-variables :target-type
                                  stage-variables-map :member-name
                                  "StageVariables" :json-name
                                  "stageVariables"))
                                (:shape-name "UpdateStageRequest"))

(smithy/sdk/shapes:define-output update-stage-response common-lisp:nil
                                 ((access-log-settings :target-type
                                   access-log-settings :member-name
                                   "AccessLogSettings" :json-name
                                   "accessLogSettings")
                                  (api-gateway-managed :target-type boolean
                                   :member-name "ApiGatewayManaged" :json-name
                                   "apiGatewayManaged")
                                  (auto-deploy :target-type boolean
                                   :member-name "AutoDeploy" :json-name
                                   "autoDeploy")
                                  (client-certificate-id :target-type id
                                   :member-name "ClientCertificateId"
                                   :json-name "clientCertificateId")
                                  (created-date :target-type timestamp-iso8601
                                   :member-name "CreatedDate" :json-name
                                   "createdDate")
                                  (default-route-settings :target-type
                                   route-settings :member-name
                                   "DefaultRouteSettings" :json-name
                                   "defaultRouteSettings")
                                  (deployment-id :target-type id :member-name
                                   "DeploymentId" :json-name "deploymentId")
                                  (description :target-type
                                   string-with-length-between0and1024
                                   :member-name "Description" :json-name
                                   "description")
                                  (last-deployment-status-message :target-type
                                   string :member-name
                                   "LastDeploymentStatusMessage" :json-name
                                   "lastDeploymentStatusMessage")
                                  (last-updated-date :target-type
                                   timestamp-iso8601 :member-name
                                   "LastUpdatedDate" :json-name
                                   "lastUpdatedDate")
                                  (route-settings :target-type
                                   route-settings-map :member-name
                                   "RouteSettings" :json-name "routeSettings")
                                  (stage-name :target-type
                                   string-with-length-between1and128
                                   :member-name "StageName" :json-name
                                   "stageName")
                                  (stage-variables :target-type
                                   stage-variables-map :member-name
                                   "StageVariables" :json-name
                                   "stageVariables")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags"))
                                 (:shape-name "UpdateStageResponse"))

(smithy/sdk/shapes:define-input update-vpc-link-request common-lisp:nil
                                ((name :target-type
                                  string-with-length-between1and128
                                  :member-name "Name" :json-name "name")
                                 (vpc-link-id :target-type string :required
                                  common-lisp:t :member-name "VpcLinkId"
                                  :http-label common-lisp:t))
                                (:shape-name "UpdateVpcLinkRequest"))

(smithy/sdk/shapes:define-output update-vpc-link-response common-lisp:nil
                                 ((created-date :target-type timestamp-iso8601
                                   :member-name "CreatedDate" :json-name
                                   "createdDate")
                                  (name :target-type
                                   string-with-length-between1and128
                                   :member-name "Name" :json-name "name")
                                  (security-group-ids :target-type
                                   security-group-id-list :member-name
                                   "SecurityGroupIds" :json-name
                                   "securityGroupIds")
                                  (subnet-ids :target-type subnet-id-list
                                   :member-name "SubnetIds" :json-name
                                   "subnetIds")
                                  (tags :target-type tags :member-name "Tags"
                                   :json-name "tags")
                                  (vpc-link-id :target-type id :member-name
                                   "VpcLinkId" :json-name "vpcLinkId")
                                  (vpc-link-status :target-type vpc-link-status
                                   :member-name "VpcLinkStatus" :json-name
                                   "vpcLinkStatus")
                                  (vpc-link-status-message :target-type
                                   string-with-length-between0and1024
                                   :member-name "VpcLinkStatusMessage"
                                   :json-name "vpcLinkStatusMessage")
                                  (vpc-link-version :target-type
                                   vpc-link-version :member-name
                                   "VpcLinkVersion" :json-name
                                   "vpcLinkVersion"))
                                 (:shape-name "UpdateVpcLinkResponse"))

(smithy/sdk/shapes:define-type uri-with-length-between1and2048
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vpc-link common-lisp:nil
                                    ((created-date :target-type
                                      timestamp-iso8601 :member-name
                                      "CreatedDate" :json-name "createdDate")
                                     (name :target-type
                                      string-with-length-between1and128
                                      :required common-lisp:t :member-name
                                      "Name" :json-name "name")
                                     (security-group-ids :target-type
                                      security-group-id-list :required
                                      common-lisp:t :member-name
                                      "SecurityGroupIds" :json-name
                                      "securityGroupIds")
                                     (subnet-ids :target-type subnet-id-list
                                      :required common-lisp:t :member-name
                                      "SubnetIds" :json-name "subnetIds")
                                     (tags :target-type tags :member-name
                                      "Tags" :json-name "tags")
                                     (vpc-link-id :target-type id :required
                                      common-lisp:t :member-name "VpcLinkId"
                                      :json-name "vpcLinkId")
                                     (vpc-link-status :target-type
                                      vpc-link-status :member-name
                                      "VpcLinkStatus" :json-name
                                      "vpcLinkStatus")
                                     (vpc-link-status-message :target-type
                                      string-with-length-between0and1024
                                      :member-name "VpcLinkStatusMessage"
                                      :json-name "vpcLinkStatusMessage")
                                     (vpc-link-version :target-type
                                      vpc-link-version :member-name
                                      "VpcLinkVersion" :json-name
                                      "vpcLinkVersion"))
                                    (:shape-name "VpcLink"))

(smithy/sdk/shapes:define-enum vpc-link-status
    common-lisp:nil
  (:pending "PENDING")
  (:available "AVAILABLE")
  (:deleting "DELETING")
  (:failed "FAILED")
  (:inactive "INACTIVE"))

(smithy/sdk/shapes:define-enum vpc-link-version
    common-lisp:nil
  (:v2 "V2"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list list-of-api :member api)

(smithy/sdk/shapes:define-list list-of-api-mapping :member api-mapping)

(smithy/sdk/shapes:define-list list-of-authorizer :member authorizer)

(smithy/sdk/shapes:define-list list-of-deployment :member deployment)

(smithy/sdk/shapes:define-list list-of-domain-name :member domain-name)

(smithy/sdk/shapes:define-list list-of-integration :member integration)

(smithy/sdk/shapes:define-list list-of-integration-response :member
                               integration-response)

(smithy/sdk/shapes:define-list list-of-model :member model)

(smithy/sdk/shapes:define-list list-of-route :member route)

(smithy/sdk/shapes:define-list list-of-route-response :member route-response)

(smithy/sdk/shapes:define-list list-of-routing-rule :member routing-rule)

(smithy/sdk/shapes:define-list list-of-routing-rule-action :member
                               routing-rule-action)

(smithy/sdk/shapes:define-list list-of-routing-rule-condition :member
                               routing-rule-condition)

(smithy/sdk/shapes:define-list list-of-routing-rule-match-header-value :member
                               routing-rule-match-header-value)

(smithy/sdk/shapes:define-list list-of-selection-key :member selection-key)

(smithy/sdk/shapes:define-list list-of-stage :member stage)

(smithy/sdk/shapes:define-list list-of-vpc-link :member vpc-link)

(smithy/sdk/shapes:define-list list-of-string :member string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp-iso8601
                               smithy/sdk/smithy-types:timestamp
                               :timestamp-format "date-time")

(smithy/sdk/operation:define-operation create-api :shape-name "CreateApi"
                                       :input create-api-request :output
                                       create-api-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/v2/apis" :code 201)

(smithy/sdk/operation:define-operation create-api-mapping :shape-name
                                       "CreateApiMapping" :input
                                       create-api-mapping-request :output
                                       create-api-mapping-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/domainnames/{DomainName}/apimappings"
                                       :code 201)

(smithy/sdk/operation:define-operation create-authorizer :shape-name
                                       "CreateAuthorizer" :input
                                       create-authorizer-request :output
                                       create-authorizer-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/apis/{ApiId}/authorizers" :code 201)

(smithy/sdk/operation:define-operation create-deployment :shape-name
                                       "CreateDeployment" :input
                                       create-deployment-request :output
                                       create-deployment-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/apis/{ApiId}/deployments" :code 201)

(smithy/sdk/operation:define-operation create-domain-name :shape-name
                                       "CreateDomainName" :input
                                       create-domain-name-request :output
                                       create-domain-name-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/v2/domainnames"
                                       :code 201)

(smithy/sdk/operation:define-operation create-integration :shape-name
                                       "CreateIntegration" :input
                                       create-integration-request :output
                                       create-integration-result :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/apis/{ApiId}/integrations" :code
                                       201)

(smithy/sdk/operation:define-operation create-integration-response :shape-name
                                       "CreateIntegrationResponse" :input
                                       create-integration-response-request
                                       :output
                                       create-integration-response-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses"
                                       :code 201)

(smithy/sdk/operation:define-operation create-model :shape-name "CreateModel"
                                       :input create-model-request :output
                                       create-model-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/apis/{ApiId}/models" :code 201)

(smithy/sdk/operation:define-operation create-route :shape-name "CreateRoute"
                                       :input create-route-request :output
                                       create-route-result :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/apis/{ApiId}/routes" :code 201)

(smithy/sdk/operation:define-operation create-route-response :shape-name
                                       "CreateRouteResponse" :input
                                       create-route-response-request :output
                                       create-route-response-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses"
                                       :code 201)

(smithy/sdk/operation:define-operation create-routing-rule :shape-name
                                       "CreateRoutingRule" :input
                                       create-routing-rule-request :output
                                       create-routing-rule-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/domainnames/{DomainName}/routingrules"
                                       :code 201)

(smithy/sdk/operation:define-operation create-stage :shape-name "CreateStage"
                                       :input create-stage-request :output
                                       create-stage-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/apis/{ApiId}/stages" :code 201)

(smithy/sdk/operation:define-operation create-vpc-link :shape-name
                                       "CreateVpcLink" :input
                                       create-vpc-link-request :output
                                       create-vpc-link-response :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri "/v2/vpclinks" :code
                                       201)

(smithy/sdk/operation:define-operation delete-access-log-settings :shape-name
                                       "DeleteAccessLogSettings" :input
                                       delete-access-log-settings-request
                                       :output common-lisp:null :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/apis/{ApiId}/stages/{StageName}/accesslogsettings"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-api :shape-name "DeleteApi"
                                       :input delete-api-request :output
                                       common-lisp:null :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri "/v2/apis/{ApiId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-api-mapping :shape-name
                                       "DeleteApiMapping" :input
                                       delete-api-mapping-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/domainnames/{DomainName}/apimappings/{ApiMappingId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-authorizer :shape-name
                                       "DeleteAuthorizer" :input
                                       delete-authorizer-request :output
                                       common-lisp:null :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/apis/{ApiId}/authorizers/{AuthorizerId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-cors-configuration :shape-name
                                       "DeleteCorsConfiguration" :input
                                       delete-cors-configuration-request
                                       :output common-lisp:null :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/apis/{ApiId}/cors" :code 204)

(smithy/sdk/operation:define-operation delete-deployment :shape-name
                                       "DeleteDeployment" :input
                                       delete-deployment-request :output
                                       common-lisp:null :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/apis/{ApiId}/deployments/{DeploymentId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-domain-name :shape-name
                                       "DeleteDomainName" :input
                                       delete-domain-name-request :output
                                       common-lisp:null :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/domainnames/{DomainName}" :code 204)

(smithy/sdk/operation:define-operation delete-integration :shape-name
                                       "DeleteIntegration" :input
                                       delete-integration-request :output
                                       common-lisp:null :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/apis/{ApiId}/integrations/{IntegrationId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-integration-response :shape-name
                                       "DeleteIntegrationResponse" :input
                                       delete-integration-response-request
                                       :output common-lisp:null :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses/{IntegrationResponseId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-model :shape-name "DeleteModel"
                                       :input delete-model-request :output
                                       common-lisp:null :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/apis/{ApiId}/models/{ModelId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-route :shape-name "DeleteRoute"
                                       :input delete-route-request :output
                                       common-lisp:null :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/apis/{ApiId}/routes/{RouteId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-route-request-parameter
                                       :shape-name
                                       "DeleteRouteRequestParameter" :input
                                       delete-route-request-parameter-request
                                       :output common-lisp:null :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/apis/{ApiId}/routes/{RouteId}/requestparameters/{RequestParameterKey}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-route-response :shape-name
                                       "DeleteRouteResponse" :input
                                       delete-route-response-request :output
                                       common-lisp:null :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses/{RouteResponseId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-route-settings :shape-name
                                       "DeleteRouteSettings" :input
                                       delete-route-settings-request :output
                                       common-lisp:null :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/apis/{ApiId}/stages/{StageName}/routesettings/{RouteKey}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-routing-rule :shape-name
                                       "DeleteRoutingRule" :input
                                       delete-routing-rule-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/domainnames/{DomainName}/routingrules/{RoutingRuleId}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-stage :shape-name "DeleteStage"
                                       :input delete-stage-request :output
                                       common-lisp:null :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/apis/{ApiId}/stages/{StageName}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-vpc-link :shape-name
                                       "DeleteVpcLink" :input
                                       delete-vpc-link-request :output
                                       delete-vpc-link-response :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/vpclinks/{VpcLinkId}" :code 202)

(smithy/sdk/operation:define-operation export-api :shape-name "ExportApi"
                                       :input export-api-request :output
                                       export-api-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/apis/{ApiId}/exports/{Specification}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-api :shape-name "GetApi" :input
                                       get-api-request :output get-api-response
                                       :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v2/apis/{ApiId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-api-mapping :shape-name
                                       "GetApiMapping" :input
                                       get-api-mapping-request :output
                                       get-api-mapping-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/domainnames/{DomainName}/apimappings/{ApiMappingId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-api-mappings :shape-name
                                       "GetApiMappings" :input
                                       get-api-mappings-request :output
                                       get-api-mappings-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/domainnames/{DomainName}/apimappings"
                                       :code 200)

(smithy/sdk/operation:define-operation get-apis :shape-name "GetApis" :input
                                       get-apis-request :output
                                       get-apis-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v2/apis" :code 200)

(smithy/sdk/operation:define-operation get-authorizer :shape-name
                                       "GetAuthorizer" :input
                                       get-authorizer-request :output
                                       get-authorizer-response :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/apis/{ApiId}/authorizers/{AuthorizerId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-authorizers :shape-name
                                       "GetAuthorizers" :input
                                       get-authorizers-request :output
                                       get-authorizers-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/apis/{ApiId}/authorizers" :code 200)

(smithy/sdk/operation:define-operation get-deployment :shape-name
                                       "GetDeployment" :input
                                       get-deployment-request :output
                                       get-deployment-response :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/apis/{ApiId}/deployments/{DeploymentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-deployments :shape-name
                                       "GetDeployments" :input
                                       get-deployments-request :output
                                       get-deployments-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/apis/{ApiId}/deployments" :code 200)

(smithy/sdk/operation:define-operation get-domain-name :shape-name
                                       "GetDomainName" :input
                                       get-domain-name-request :output
                                       get-domain-name-response :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/domainnames/{DomainName}" :code 200)

(smithy/sdk/operation:define-operation get-domain-names :shape-name
                                       "GetDomainNames" :input
                                       get-domain-names-request :output
                                       get-domain-names-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v2/domainnames"
                                       :code 200)

(smithy/sdk/operation:define-operation get-integration :shape-name
                                       "GetIntegration" :input
                                       get-integration-request :output
                                       get-integration-result :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/apis/{ApiId}/integrations/{IntegrationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-integration-response :shape-name
                                       "GetIntegrationResponse" :input
                                       get-integration-response-request :output
                                       get-integration-response-response
                                       :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses/{IntegrationResponseId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-integration-responses :shape-name
                                       "GetIntegrationResponses" :input
                                       get-integration-responses-request
                                       :output
                                       get-integration-responses-response
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses"
                                       :code 200)

(smithy/sdk/operation:define-operation get-integrations :shape-name
                                       "GetIntegrations" :input
                                       get-integrations-request :output
                                       get-integrations-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/apis/{ApiId}/integrations" :code
                                       200)

(smithy/sdk/operation:define-operation get-model :shape-name "GetModel" :input
                                       get-model-request :output
                                       get-model-response :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/apis/{ApiId}/models/{ModelId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-model-template :shape-name
                                       "GetModelTemplate" :input
                                       get-model-template-request :output
                                       get-model-template-response :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/apis/{ApiId}/models/{ModelId}/template"
                                       :code 200)

(smithy/sdk/operation:define-operation get-models :shape-name "GetModels"
                                       :input get-models-request :output
                                       get-models-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/apis/{ApiId}/models" :code 200)

(smithy/sdk/operation:define-operation get-route :shape-name "GetRoute" :input
                                       get-route-request :output
                                       get-route-result :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/apis/{ApiId}/routes/{RouteId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-route-response :shape-name
                                       "GetRouteResponse" :input
                                       get-route-response-request :output
                                       get-route-response-response :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses/{RouteResponseId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-route-responses :shape-name
                                       "GetRouteResponses" :input
                                       get-route-responses-request :output
                                       get-route-responses-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses"
                                       :code 200)

(smithy/sdk/operation:define-operation get-routes :shape-name "GetRoutes"
                                       :input get-routes-request :output
                                       get-routes-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/apis/{ApiId}/routes" :code 200)

(smithy/sdk/operation:define-operation get-routing-rule :shape-name
                                       "GetRoutingRule" :input
                                       get-routing-rule-request :output
                                       get-routing-rule-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/domainnames/{DomainName}/routingrules/{RoutingRuleId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-stage :shape-name "GetStage" :input
                                       get-stage-request :output
                                       get-stage-response :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/apis/{ApiId}/stages/{StageName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-stages :shape-name "GetStages"
                                       :input get-stages-request :output
                                       get-stages-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/apis/{ApiId}/stages" :code 200)

(smithy/sdk/operation:define-operation get-tags :shape-name "GetTags" :input
                                       get-tags-request :output
                                       get-tags-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/tags/{ResourceArn}" :code 200)

(smithy/sdk/operation:define-operation get-vpc-link :shape-name "GetVpcLink"
                                       :input get-vpc-link-request :output
                                       get-vpc-link-response :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/vpclinks/{VpcLinkId}" :code 200)

(smithy/sdk/operation:define-operation get-vpc-links :shape-name "GetVpcLinks"
                                       :input get-vpc-links-request :output
                                       get-vpc-links-response :errors
                                       (bad-request-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/v2/vpclinks" :code
                                       200)

(smithy/sdk/operation:define-operation import-api :shape-name "ImportApi"
                                       :input import-api-request :output
                                       import-api-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri "/v2/apis" :code 201)

(smithy/sdk/operation:define-operation list-routing-rules :shape-name
                                       "ListRoutingRules" :input
                                       list-routing-rules-request :output
                                       list-routing-rules-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/v2/domainnames/{DomainName}/routingrules"
                                       :code 200)

(smithy/sdk/operation:define-operation put-routing-rule :shape-name
                                       "PutRoutingRule" :input
                                       put-routing-rule-request :output
                                       put-routing-rule-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/v2/domainnames/{DomainName}/routingrules/{RoutingRuleId}"
                                       :code 200)

(smithy/sdk/operation:define-operation reimport-api :shape-name "ReimportApi"
                                       :input reimport-api-request :output
                                       reimport-api-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri "/v2/apis/{ApiId}"
                                       :code 201)

(smithy/sdk/operation:define-operation reset-authorizers-cache :shape-name
                                       "ResetAuthorizersCache" :input
                                       reset-authorizers-cache-request :output
                                       common-lisp:null :errors
                                       (not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/apis/{ApiId}/stages/{StageName}/cache/authorizers"
                                       :code 204)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/v2/tags/{ResourceArn}" :code 201)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/v2/tags/{ResourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-api :shape-name "UpdateApi"
                                       :input update-api-request :output
                                       update-api-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "PATCH" :uri "/v2/apis/{ApiId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-api-mapping :shape-name
                                       "UpdateApiMapping" :input
                                       update-api-mapping-request :output
                                       update-api-mapping-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "PATCH" :uri
                                       "/v2/domainnames/{DomainName}/apimappings/{ApiMappingId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-authorizer :shape-name
                                       "UpdateAuthorizer" :input
                                       update-authorizer-request :output
                                       update-authorizer-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "PATCH" :uri
                                       "/v2/apis/{ApiId}/authorizers/{AuthorizerId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-deployment :shape-name
                                       "UpdateDeployment" :input
                                       update-deployment-request :output
                                       update-deployment-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "PATCH" :uri
                                       "/v2/apis/{ApiId}/deployments/{DeploymentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-domain-name :shape-name
                                       "UpdateDomainName" :input
                                       update-domain-name-request :output
                                       update-domain-name-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "PATCH" :uri
                                       "/v2/domainnames/{DomainName}" :code 200)

(smithy/sdk/operation:define-operation update-integration :shape-name
                                       "UpdateIntegration" :input
                                       update-integration-request :output
                                       update-integration-result :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "PATCH" :uri
                                       "/v2/apis/{ApiId}/integrations/{IntegrationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-integration-response :shape-name
                                       "UpdateIntegrationResponse" :input
                                       update-integration-response-request
                                       :output
                                       update-integration-response-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "PATCH" :uri
                                       "/v2/apis/{ApiId}/integrations/{IntegrationId}/integrationresponses/{IntegrationResponseId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-model :shape-name "UpdateModel"
                                       :input update-model-request :output
                                       update-model-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "PATCH" :uri
                                       "/v2/apis/{ApiId}/models/{ModelId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-route :shape-name "UpdateRoute"
                                       :input update-route-request :output
                                       update-route-result :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "PATCH" :uri
                                       "/v2/apis/{ApiId}/routes/{RouteId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-route-response :shape-name
                                       "UpdateRouteResponse" :input
                                       update-route-response-request :output
                                       update-route-response-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "PATCH" :uri
                                       "/v2/apis/{ApiId}/routes/{RouteId}/routeresponses/{RouteResponseId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-stage :shape-name "UpdateStage"
                                       :input update-stage-request :output
                                       update-stage-response :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception)
                                       :method "PATCH" :uri
                                       "/v2/apis/{ApiId}/stages/{StageName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-vpc-link :shape-name
                                       "UpdateVpcLink" :input
                                       update-vpc-link-request :output
                                       update-vpc-link-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception)
                                       :method "PATCH" :uri
                                       "/v2/vpclinks/{VpcLinkId}" :code 200)
