(uiop/package:define-package #:pira/api-gateway (:use)
                             (:export #:access-association-source-type
                              #:access-log-settings #:account #:api-key
                              #:api-key-ids #:api-key-source-type #:api-keys
                              #:api-keys-format #:api-stage #:authorizer
                              #:authorizer-type #:authorizers
                              #:backplane-control-service
                              #:bad-request-exception #:base-path-mapping
                              #:base-path-mappings #:blob #:boolean
                              #:cache-cluster-size #:cache-cluster-status
                              #:canary-settings #:client-certificate
                              #:client-certificates #:conflict-exception
                              #:connection-type #:content-handling-strategy
                              #:create-api-key #:create-api-key-request
                              #:create-authorizer #:create-authorizer-request
                              #:create-base-path-mapping
                              #:create-base-path-mapping-request
                              #:create-deployment #:create-deployment-request
                              #:create-documentation-part
                              #:create-documentation-part-request
                              #:create-documentation-version
                              #:create-documentation-version-request
                              #:create-domain-name
                              #:create-domain-name-access-association
                              #:create-domain-name-access-association-request
                              #:create-domain-name-request #:create-model
                              #:create-model-request #:create-request-validator
                              #:create-request-validator-request
                              #:create-resource #:create-resource-request
                              #:create-rest-api #:create-rest-api-request
                              #:create-stage #:create-stage-request
                              #:create-usage-plan #:create-usage-plan-key
                              #:create-usage-plan-key-request
                              #:create-usage-plan-request #:create-vpc-link
                              #:create-vpc-link-request #:delete-api-key
                              #:delete-api-key-request #:delete-authorizer
                              #:delete-authorizer-request
                              #:delete-base-path-mapping
                              #:delete-base-path-mapping-request
                              #:delete-client-certificate
                              #:delete-client-certificate-request
                              #:delete-deployment #:delete-deployment-request
                              #:delete-documentation-part
                              #:delete-documentation-part-request
                              #:delete-documentation-version
                              #:delete-documentation-version-request
                              #:delete-domain-name
                              #:delete-domain-name-access-association
                              #:delete-domain-name-access-association-request
                              #:delete-domain-name-request
                              #:delete-gateway-response
                              #:delete-gateway-response-request
                              #:delete-integration #:delete-integration-request
                              #:delete-integration-response
                              #:delete-integration-response-request
                              #:delete-method #:delete-method-request
                              #:delete-method-response
                              #:delete-method-response-request #:delete-model
                              #:delete-model-request #:delete-request-validator
                              #:delete-request-validator-request
                              #:delete-resource #:delete-resource-request
                              #:delete-rest-api #:delete-rest-api-request
                              #:delete-stage #:delete-stage-request
                              #:delete-usage-plan #:delete-usage-plan-key
                              #:delete-usage-plan-key-request
                              #:delete-usage-plan-request #:delete-vpc-link
                              #:delete-vpc-link-request #:deployment
                              #:deployment-canary-settings #:deployments
                              #:documentation-part #:documentation-part-ids
                              #:documentation-part-location
                              #:documentation-part-location-status-code
                              #:documentation-part-type #:documentation-parts
                              #:documentation-version #:documentation-versions
                              #:domain-name #:domain-name-access-association
                              #:domain-name-access-associations
                              #:domain-name-status #:domain-names #:double
                              #:endpoint-configuration #:endpoint-type
                              #:export-response #:flush-stage-authorizers-cache
                              #:flush-stage-authorizers-cache-request
                              #:flush-stage-cache #:flush-stage-cache-request
                              #:gateway-response #:gateway-response-type
                              #:gateway-responses #:generate-client-certificate
                              #:generate-client-certificate-request
                              #:get-account #:get-account-request #:get-api-key
                              #:get-api-key-request #:get-api-keys
                              #:get-api-keys-request #:get-authorizer
                              #:get-authorizer-request #:get-authorizers
                              #:get-authorizers-request #:get-base-path-mapping
                              #:get-base-path-mapping-request
                              #:get-base-path-mappings
                              #:get-base-path-mappings-request
                              #:get-client-certificate
                              #:get-client-certificate-request
                              #:get-client-certificates
                              #:get-client-certificates-request
                              #:get-deployment #:get-deployment-request
                              #:get-deployments #:get-deployments-request
                              #:get-documentation-part
                              #:get-documentation-part-request
                              #:get-documentation-parts
                              #:get-documentation-parts-request
                              #:get-documentation-version
                              #:get-documentation-version-request
                              #:get-documentation-versions
                              #:get-documentation-versions-request
                              #:get-domain-name
                              #:get-domain-name-access-associations
                              #:get-domain-name-access-associations-request
                              #:get-domain-name-request #:get-domain-names
                              #:get-domain-names-request #:get-export
                              #:get-export-request #:get-gateway-response
                              #:get-gateway-response-request
                              #:get-gateway-responses
                              #:get-gateway-responses-request #:get-integration
                              #:get-integration-request
                              #:get-integration-response
                              #:get-integration-response-request #:get-method
                              #:get-method-request #:get-method-response
                              #:get-method-response-request #:get-model
                              #:get-model-request #:get-model-template
                              #:get-model-template-request #:get-models
                              #:get-models-request #:get-request-validator
                              #:get-request-validator-request
                              #:get-request-validators
                              #:get-request-validators-request #:get-resource
                              #:get-resource-request #:get-resources
                              #:get-resources-request #:get-rest-api
                              #:get-rest-api-request #:get-rest-apis
                              #:get-rest-apis-request #:get-sdk
                              #:get-sdk-request #:get-sdk-type
                              #:get-sdk-type-request #:get-sdk-types
                              #:get-sdk-types-request #:get-stage
                              #:get-stage-request #:get-stages
                              #:get-stages-request #:get-tags
                              #:get-tags-request #:get-usage #:get-usage-plan
                              #:get-usage-plan-key #:get-usage-plan-key-request
                              #:get-usage-plan-keys
                              #:get-usage-plan-keys-request
                              #:get-usage-plan-request #:get-usage-plans
                              #:get-usage-plans-request #:get-usage-request
                              #:get-vpc-link #:get-vpc-link-request
                              #:get-vpc-links #:get-vpc-links-request
                              #:import-api-keys #:import-api-keys-request
                              #:import-documentation-parts
                              #:import-documentation-parts-request
                              #:import-rest-api #:import-rest-api-request
                              #:integer #:integration #:integration-response
                              #:integration-type #:ip-address-type
                              #:limit-exceeded-exception #:list-of-arns
                              #:list-of-api-key #:list-of-api-stage
                              #:list-of-authorizer #:list-of-base-path-mapping
                              #:list-of-client-certificate #:list-of-deployment
                              #:list-of-documentation-part
                              #:list-of-documentation-version
                              #:list-of-domain-name
                              #:list-of-domain-name-access-association
                              #:list-of-endpoint-type
                              #:list-of-gateway-response #:list-of-long
                              #:list-of-model #:list-of-patch-operation
                              #:list-of-request-validator #:list-of-resource
                              #:list-of-rest-api
                              #:list-of-sdk-configuration-property
                              #:list-of-sdk-type #:list-of-stage
                              #:list-of-stage-keys #:list-of-string
                              #:list-of-usage #:list-of-usage-plan
                              #:list-of-usage-plan-key #:list-of-vpc-link
                              #:location-status-type #:long
                              #:map-of-api-stage-throttle-settings
                              #:map-of-integration-response #:map-of-key-usages
                              #:map-of-method #:map-of-method-response
                              #:map-of-method-settings #:map-of-method-snapshot
                              #:map-of-string-to-boolean
                              #:map-of-string-to-list #:map-of-string-to-string
                              #:method #:method-response #:method-setting
                              #:method-snapshot #:model #:models
                              #:mutual-tls-authentication
                              #:mutual-tls-authentication-input
                              #:not-found-exception #:nullable-boolean
                              #:nullable-integer #:op #:patch-operation
                              #:path-to-map-of-method-snapshot #:provider-arn
                              #:put-gateway-response
                              #:put-gateway-response-request #:put-integration
                              #:put-integration-request
                              #:put-integration-response
                              #:put-integration-response-request #:put-method
                              #:put-method-request #:put-method-response
                              #:put-method-response-request #:put-mode
                              #:put-rest-api #:put-rest-api-request
                              #:quota-period-type #:quota-settings
                              #:reject-domain-name-access-association
                              #:reject-domain-name-access-association-request
                              #:request-validator #:request-validators
                              #:resource #:resource-owner #:resources
                              #:rest-api #:rest-apis #:routing-mode
                              #:sdk-configuration-property #:sdk-response
                              #:sdk-type #:sdk-types #:security-policy
                              #:service-unavailable-exception #:stage
                              #:stage-key #:stages #:status-code #:string
                              #:tag-resource #:tag-resource-request #:tags
                              #:template #:test-invoke-authorizer
                              #:test-invoke-authorizer-request
                              #:test-invoke-authorizer-response
                              #:test-invoke-method #:test-invoke-method-request
                              #:test-invoke-method-response #:throttle-settings
                              #:timestamp #:tls-config
                              #:too-many-requests-exception
                              #:unauthorized-cache-control-header-strategy
                              #:unauthorized-exception #:untag-resource
                              #:untag-resource-request #:update-account
                              #:update-account-request #:update-api-key
                              #:update-api-key-request #:update-authorizer
                              #:update-authorizer-request
                              #:update-base-path-mapping
                              #:update-base-path-mapping-request
                              #:update-client-certificate
                              #:update-client-certificate-request
                              #:update-deployment #:update-deployment-request
                              #:update-documentation-part
                              #:update-documentation-part-request
                              #:update-documentation-version
                              #:update-documentation-version-request
                              #:update-domain-name #:update-domain-name-request
                              #:update-gateway-response
                              #:update-gateway-response-request
                              #:update-integration #:update-integration-request
                              #:update-integration-response
                              #:update-integration-response-request
                              #:update-method #:update-method-request
                              #:update-method-response
                              #:update-method-response-request #:update-model
                              #:update-model-request #:update-request-validator
                              #:update-request-validator-request
                              #:update-resource #:update-resource-request
                              #:update-rest-api #:update-rest-api-request
                              #:update-stage #:update-stage-request
                              #:update-usage #:update-usage-plan
                              #:update-usage-plan-request
                              #:update-usage-request #:update-vpc-link
                              #:update-vpc-link-request #:usage #:usage-plan
                              #:usage-plan-key #:usage-plan-keys #:usage-plans
                              #:vpc-link #:vpc-link-status #:vpc-links))
(common-lisp:in-package #:pira/api-gateway)

(smithy/sdk/service:define-service backplane-control-service :shape-name
                                   "BackplaneControlService" :version
                                   "2015-07-09" :title "Amazon API Gateway"
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "API Gateway")
                                      ("arnNamespace" . "apigateway")
                                      ("cloudFormationName" . "ApiGateway")
                                      ("cloudTrailEventSource"
                                       . "apigateway.amazonaws.com")
                                      ("docId" . "apigateway-2015-07-09")
                                      ("endpointPrefix" . "apigateway"))
                                     ("aws.auth#sigv4" ("name" . "apigateway"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-enum access-association-source-type
    common-lisp:nil
  (:vpce "VPCE"))

(smithy/sdk/shapes:define-structure access-log-settings common-lisp:nil
                                    ((format :target-type string :member-name
                                      "format")
                                     (destination-arn :target-type string
                                      :member-name "destinationArn"))
                                    (:shape-name "AccessLogSettings"))

(smithy/sdk/shapes:define-structure account common-lisp:nil
                                    ((cloudwatch-role-arn :target-type string
                                      :member-name "cloudwatchRoleArn")
                                     (throttle-settings :target-type
                                      throttle-settings :member-name
                                      "throttleSettings")
                                     (features :target-type list-of-string
                                      :member-name "features")
                                     (api-key-version :target-type string
                                      :member-name "apiKeyVersion"))
                                    (:shape-name "Account"))

(smithy/sdk/shapes:define-structure api-key common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (value :target-type string :member-name
                                      "value")
                                     (name :target-type string :member-name
                                      "name")
                                     (customer-id :target-type string
                                      :member-name "customerId")
                                     (description :target-type string
                                      :member-name "description")
                                     (enabled :target-type boolean :member-name
                                      "enabled")
                                     (created-date :target-type timestamp
                                      :member-name "createdDate")
                                     (last-updated-date :target-type timestamp
                                      :member-name "lastUpdatedDate")
                                     (stage-keys :target-type list-of-string
                                      :member-name "stageKeys")
                                     (tags :target-type map-of-string-to-string
                                      :member-name "tags"))
                                    (:shape-name "ApiKey"))

(smithy/sdk/shapes:define-structure api-key-ids common-lisp:nil
                                    ((ids :target-type list-of-string
                                      :member-name "ids")
                                     (warnings :target-type list-of-string
                                      :member-name "warnings"))
                                    (:shape-name "ApiKeyIds"))

(smithy/sdk/shapes:define-enum api-key-source-type
    common-lisp:nil
  (:header "HEADER")
  (:authorizer "AUTHORIZER"))

(smithy/sdk/shapes:define-structure api-keys common-lisp:nil
                                    ((warnings :target-type list-of-string
                                      :member-name "warnings")
                                     (items :target-type list-of-api-key
                                      :member-name "items" :json-name "item")
                                     (position :target-type string :member-name
                                      "position" :http-query "position"))
                                    (:shape-name "ApiKeys"))

(smithy/sdk/shapes:define-enum api-keys-format
    common-lisp:nil
  (:csv "csv"))

(smithy/sdk/shapes:define-structure api-stage common-lisp:nil
                                    ((api-id :target-type string :member-name
                                      "apiId")
                                     (stage :target-type string :member-name
                                      "stage")
                                     (throttle :target-type
                                      map-of-api-stage-throttle-settings
                                      :member-name "throttle"))
                                    (:shape-name "ApiStage"))

(smithy/sdk/shapes:define-structure authorizer common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (name :target-type string :member-name
                                      "name")
                                     (type :target-type authorizer-type
                                      :member-name "type")
                                     (provider-arns :target-type list-of-arns
                                      :member-name "providerARNs")
                                     (auth-type :target-type string
                                      :member-name "authType")
                                     (authorizer-uri :target-type string
                                      :member-name "authorizerUri")
                                     (authorizer-credentials :target-type
                                      string :member-name
                                      "authorizerCredentials")
                                     (identity-source :target-type string
                                      :member-name "identitySource")
                                     (identity-validation-expression
                                      :target-type string :member-name
                                      "identityValidationExpression")
                                     (authorizer-result-ttl-in-seconds
                                      :target-type nullable-integer
                                      :member-name
                                      "authorizerResultTtlInSeconds"))
                                    (:shape-name "Authorizer"))

(smithy/sdk/shapes:define-enum authorizer-type
    common-lisp:nil
  (:token "TOKEN")
  (:request "REQUEST")
  (:cognito-user-pools "COGNITO_USER_POOLS"))

(smithy/sdk/shapes:define-structure authorizers common-lisp:nil
                                    ((items :target-type list-of-authorizer
                                      :member-name "items" :json-name "item")
                                     (position :target-type string :member-name
                                      "position" :http-query "position"))
                                    (:shape-name "Authorizers"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure base-path-mapping common-lisp:nil
                                    ((base-path :target-type string
                                      :member-name "basePath")
                                     (rest-api-id :target-type string
                                      :member-name "restApiId")
                                     (stage :target-type string :member-name
                                      "stage"))
                                    (:shape-name "BasePathMapping"))

(smithy/sdk/shapes:define-structure base-path-mappings common-lisp:nil
                                    ((items :target-type
                                      list-of-base-path-mapping :member-name
                                      "items" :json-name "item")
                                     (position :target-type string :member-name
                                      "position" :http-query "position"))
                                    (:shape-name "BasePathMappings"))

(smithy/sdk/shapes:define-type blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum cache-cluster-size
    common-lisp:nil
  (:size-0-point-5-gb "0.5")
  (:size-1-point-6-gb "1.6")
  (:size-6-point-1-gb "6.1")
  (:size-13-point-5-gb "13.5")
  (:size-28-point-4-gb "28.4")
  (:size-58-point-2-gb "58.2")
  (:size-118-gb "118")
  (:size-237-gb "237"))

(smithy/sdk/shapes:define-enum cache-cluster-status
    common-lisp:nil
  (:create-in-progress "CREATE_IN_PROGRESS")
  (:available "AVAILABLE")
  (:delete-in-progress "DELETE_IN_PROGRESS")
  (:not-available "NOT_AVAILABLE")
  (:flush-in-progress "FLUSH_IN_PROGRESS"))

(smithy/sdk/shapes:define-structure canary-settings common-lisp:nil
                                    ((percent-traffic :target-type double
                                      :member-name "percentTraffic")
                                     (deployment-id :target-type string
                                      :member-name "deploymentId")
                                     (stage-variable-overrides :target-type
                                      map-of-string-to-string :member-name
                                      "stageVariableOverrides")
                                     (use-stage-cache :target-type boolean
                                      :member-name "useStageCache"))
                                    (:shape-name "CanarySettings"))

(smithy/sdk/shapes:define-structure client-certificate common-lisp:nil
                                    ((client-certificate-id :target-type string
                                      :member-name "clientCertificateId")
                                     (description :target-type string
                                      :member-name "description")
                                     (pem-encoded-certificate :target-type
                                      string :member-name
                                      "pemEncodedCertificate")
                                     (created-date :target-type timestamp
                                      :member-name "createdDate")
                                     (expiration-date :target-type timestamp
                                      :member-name "expirationDate")
                                     (tags :target-type map-of-string-to-string
                                      :member-name "tags"))
                                    (:shape-name "ClientCertificate"))

(smithy/sdk/shapes:define-structure client-certificates common-lisp:nil
                                    ((items :target-type
                                      list-of-client-certificate :member-name
                                      "items" :json-name "item")
                                     (position :target-type string :member-name
                                      "position" :http-query "position"))
                                    (:shape-name "ClientCertificates"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum connection-type
    common-lisp:nil
  (:internet "INTERNET")
  (:vpc-link "VPC_LINK"))

(smithy/sdk/shapes:define-enum content-handling-strategy
    common-lisp:nil
  (:convert-to-binary "CONVERT_TO_BINARY")
  (:convert-to-text "CONVERT_TO_TEXT"))

(smithy/sdk/shapes:define-input create-api-key-request common-lisp:nil
                                ((name :target-type string :member-name "name")
                                 (description :target-type string :member-name
                                  "description")
                                 (enabled :target-type boolean :member-name
                                  "enabled")
                                 (generate-distinct-id :target-type boolean
                                  :member-name "generateDistinctId")
                                 (value :target-type string :member-name
                                  "value")
                                 (stage-keys :target-type list-of-stage-keys
                                  :member-name "stageKeys")
                                 (customer-id :target-type string :member-name
                                  "customerId")
                                 (tags :target-type map-of-string-to-string
                                  :member-name "tags"))
                                (:shape-name "CreateApiKeyRequest"))

(smithy/sdk/shapes:define-input create-authorizer-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (name :target-type string :required
                                  common-lisp:t :member-name "name")
                                 (type :target-type authorizer-type :required
                                  common-lisp:t :member-name "type")
                                 (provider-arns :target-type list-of-arns
                                  :member-name "providerARNs")
                                 (auth-type :target-type string :member-name
                                  "authType")
                                 (authorizer-uri :target-type string
                                  :member-name "authorizerUri")
                                 (authorizer-credentials :target-type string
                                  :member-name "authorizerCredentials")
                                 (identity-source :target-type string
                                  :member-name "identitySource")
                                 (identity-validation-expression :target-type
                                  string :member-name
                                  "identityValidationExpression")
                                 (authorizer-result-ttl-in-seconds :target-type
                                  nullable-integer :member-name
                                  "authorizerResultTtlInSeconds"))
                                (:shape-name "CreateAuthorizerRequest"))

(smithy/sdk/shapes:define-input create-base-path-mapping-request
                                common-lisp:nil
                                ((domain-name :target-type string :required
                                  common-lisp:t :member-name "domainName"
                                  :http-label common-lisp:t)
                                 (domain-name-id :target-type string
                                  :member-name "domainNameId" :http-query
                                  "domainNameId")
                                 (base-path :target-type string :member-name
                                  "basePath")
                                 (rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId")
                                 (stage :target-type string :member-name
                                  "stage"))
                                (:shape-name "CreateBasePathMappingRequest"))

(smithy/sdk/shapes:define-input create-deployment-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (stage-name :target-type string :member-name
                                  "stageName")
                                 (stage-description :target-type string
                                  :member-name "stageDescription")
                                 (description :target-type string :member-name
                                  "description")
                                 (cache-cluster-enabled :target-type
                                  nullable-boolean :member-name
                                  "cacheClusterEnabled")
                                 (cache-cluster-size :target-type
                                  cache-cluster-size :member-name
                                  "cacheClusterSize")
                                 (variables :target-type
                                  map-of-string-to-string :member-name
                                  "variables")
                                 (canary-settings :target-type
                                  deployment-canary-settings :member-name
                                  "canarySettings")
                                 (tracing-enabled :target-type nullable-boolean
                                  :member-name "tracingEnabled"))
                                (:shape-name "CreateDeploymentRequest"))

(smithy/sdk/shapes:define-input create-documentation-part-request
                                common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (location :target-type
                                  documentation-part-location :required
                                  common-lisp:t :member-name "location")
                                 (properties :target-type string :required
                                  common-lisp:t :member-name "properties"))
                                (:shape-name "CreateDocumentationPartRequest"))

(smithy/sdk/shapes:define-input create-documentation-version-request
                                common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (documentation-version :target-type string
                                  :required common-lisp:t :member-name
                                  "documentationVersion")
                                 (stage-name :target-type string :member-name
                                  "stageName")
                                 (description :target-type string :member-name
                                  "description"))
                                (:shape-name
                                 "CreateDocumentationVersionRequest"))

(smithy/sdk/shapes:define-input create-domain-name-access-association-request
                                common-lisp:nil
                                ((domain-name-arn :target-type string :required
                                  common-lisp:t :member-name "domainNameArn")
                                 (access-association-source-type :target-type
                                  access-association-source-type :required
                                  common-lisp:t :member-name
                                  "accessAssociationSourceType")
                                 (access-association-source :target-type string
                                  :required common-lisp:t :member-name
                                  "accessAssociationSource")
                                 (tags :target-type map-of-string-to-string
                                  :member-name "tags"))
                                (:shape-name
                                 "CreateDomainNameAccessAssociationRequest"))

(smithy/sdk/shapes:define-input create-domain-name-request common-lisp:nil
                                ((domain-name :target-type string :required
                                  common-lisp:t :member-name "domainName")
                                 (certificate-name :target-type string
                                  :member-name "certificateName")
                                 (certificate-body :target-type string
                                  :member-name "certificateBody")
                                 (certificate-private-key :target-type string
                                  :member-name "certificatePrivateKey")
                                 (certificate-chain :target-type string
                                  :member-name "certificateChain")
                                 (certificate-arn :target-type string
                                  :member-name "certificateArn")
                                 (regional-certificate-name :target-type string
                                  :member-name "regionalCertificateName")
                                 (regional-certificate-arn :target-type string
                                  :member-name "regionalCertificateArn")
                                 (endpoint-configuration :target-type
                                  endpoint-configuration :member-name
                                  "endpointConfiguration")
                                 (tags :target-type map-of-string-to-string
                                  :member-name "tags")
                                 (security-policy :target-type security-policy
                                  :member-name "securityPolicy")
                                 (mutual-tls-authentication :target-type
                                  mutual-tls-authentication-input :member-name
                                  "mutualTlsAuthentication")
                                 (ownership-verification-certificate-arn
                                  :target-type string :member-name
                                  "ownershipVerificationCertificateArn")
                                 (policy :target-type string :member-name
                                  "policy")
                                 (routing-mode :target-type routing-mode
                                  :member-name "routingMode"))
                                (:shape-name "CreateDomainNameRequest"))

(smithy/sdk/shapes:define-input create-model-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (name :target-type string :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type string :member-name
                                  "description")
                                 (schema :target-type string :member-name
                                  "schema")
                                 (content-type :target-type string :required
                                  common-lisp:t :member-name "contentType"))
                                (:shape-name "CreateModelRequest"))

(smithy/sdk/shapes:define-input create-request-validator-request
                                common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (name :target-type string :member-name "name")
                                 (validate-request-body :target-type boolean
                                  :member-name "validateRequestBody")
                                 (validate-request-parameters :target-type
                                  boolean :member-name
                                  "validateRequestParameters"))
                                (:shape-name "CreateRequestValidatorRequest"))

(smithy/sdk/shapes:define-input create-resource-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (parent-id :target-type string :required
                                  common-lisp:t :member-name "parentId"
                                  :http-label common-lisp:t)
                                 (path-part :target-type string :required
                                  common-lisp:t :member-name "pathPart"))
                                (:shape-name "CreateResourceRequest"))

(smithy/sdk/shapes:define-input create-rest-api-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type string :member-name
                                  "description")
                                 (version :target-type string :member-name
                                  "version")
                                 (clone-from :target-type string :member-name
                                  "cloneFrom")
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
                                (:shape-name "CreateRestApiRequest"))

(smithy/sdk/shapes:define-input create-stage-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (stage-name :target-type string :required
                                  common-lisp:t :member-name "stageName")
                                 (deployment-id :target-type string :required
                                  common-lisp:t :member-name "deploymentId")
                                 (description :target-type string :member-name
                                  "description")
                                 (cache-cluster-enabled :target-type boolean
                                  :member-name "cacheClusterEnabled")
                                 (cache-cluster-size :target-type
                                  cache-cluster-size :member-name
                                  "cacheClusterSize")
                                 (variables :target-type
                                  map-of-string-to-string :member-name
                                  "variables")
                                 (documentation-version :target-type string
                                  :member-name "documentationVersion")
                                 (canary-settings :target-type canary-settings
                                  :member-name "canarySettings")
                                 (tracing-enabled :target-type boolean
                                  :member-name "tracingEnabled")
                                 (tags :target-type map-of-string-to-string
                                  :member-name "tags"))
                                (:shape-name "CreateStageRequest"))

(smithy/sdk/shapes:define-input create-usage-plan-key-request common-lisp:nil
                                ((usage-plan-id :target-type string :required
                                  common-lisp:t :member-name "usagePlanId"
                                  :http-label common-lisp:t)
                                 (key-id :target-type string :required
                                  common-lisp:t :member-name "keyId")
                                 (key-type :target-type string :required
                                  common-lisp:t :member-name "keyType"))
                                (:shape-name "CreateUsagePlanKeyRequest"))

(smithy/sdk/shapes:define-input create-usage-plan-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type string :member-name
                                  "description")
                                 (api-stages :target-type list-of-api-stage
                                  :member-name "apiStages")
                                 (throttle :target-type throttle-settings
                                  :member-name "throttle")
                                 (quota :target-type quota-settings
                                  :member-name "quota")
                                 (tags :target-type map-of-string-to-string
                                  :member-name "tags"))
                                (:shape-name "CreateUsagePlanRequest"))

(smithy/sdk/shapes:define-input create-vpc-link-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type string :member-name
                                  "description")
                                 (target-arns :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "targetArns")
                                 (tags :target-type map-of-string-to-string
                                  :member-name "tags"))
                                (:shape-name "CreateVpcLinkRequest"))

(smithy/sdk/shapes:define-input delete-api-key-request common-lisp:nil
                                ((api-key :target-type string :required
                                  common-lisp:t :member-name "apiKey"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteApiKeyRequest"))

(smithy/sdk/shapes:define-input delete-authorizer-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (authorizer-id :target-type string :required
                                  common-lisp:t :member-name "authorizerId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteAuthorizerRequest"))

(smithy/sdk/shapes:define-input delete-base-path-mapping-request
                                common-lisp:nil
                                ((domain-name :target-type string :required
                                  common-lisp:t :member-name "domainName"
                                  :http-label common-lisp:t)
                                 (domain-name-id :target-type string
                                  :member-name "domainNameId" :http-query
                                  "domainNameId")
                                 (base-path :target-type string :required
                                  common-lisp:t :member-name "basePath"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteBasePathMappingRequest"))

(smithy/sdk/shapes:define-input delete-client-certificate-request
                                common-lisp:nil
                                ((client-certificate-id :target-type string
                                  :required common-lisp:t :member-name
                                  "clientCertificateId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteClientCertificateRequest"))

(smithy/sdk/shapes:define-input delete-deployment-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (deployment-id :target-type string :required
                                  common-lisp:t :member-name "deploymentId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteDeploymentRequest"))

(smithy/sdk/shapes:define-input delete-documentation-part-request
                                common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (documentation-part-id :target-type string
                                  :required common-lisp:t :member-name
                                  "documentationPartId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteDocumentationPartRequest"))

(smithy/sdk/shapes:define-input delete-documentation-version-request
                                common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (documentation-version :target-type string
                                  :required common-lisp:t :member-name
                                  "documentationVersion" :http-label
                                  common-lisp:t))
                                (:shape-name
                                 "DeleteDocumentationVersionRequest"))

(smithy/sdk/shapes:define-input delete-domain-name-access-association-request
                                common-lisp:nil
                                ((domain-name-access-association-arn
                                  :target-type string :required common-lisp:t
                                  :member-name "domainNameAccessAssociationArn"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteDomainNameAccessAssociationRequest"))

(smithy/sdk/shapes:define-input delete-domain-name-request common-lisp:nil
                                ((domain-name :target-type string :required
                                  common-lisp:t :member-name "domainName"
                                  :http-label common-lisp:t)
                                 (domain-name-id :target-type string
                                  :member-name "domainNameId" :http-query
                                  "domainNameId"))
                                (:shape-name "DeleteDomainNameRequest"))

(smithy/sdk/shapes:define-input delete-gateway-response-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (response-type :target-type
                                  gateway-response-type :required common-lisp:t
                                  :member-name "responseType" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteGatewayResponseRequest"))

(smithy/sdk/shapes:define-input delete-integration-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId"
                                  :http-label common-lisp:t)
                                 (http-method :target-type string :required
                                  common-lisp:t :member-name "httpMethod"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteIntegrationRequest"))

(smithy/sdk/shapes:define-input delete-integration-response-request
                                common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId"
                                  :http-label common-lisp:t)
                                 (http-method :target-type string :required
                                  common-lisp:t :member-name "httpMethod"
                                  :http-label common-lisp:t)
                                 (status-code :target-type status-code
                                  :required common-lisp:t :member-name
                                  "statusCode" :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteIntegrationResponseRequest"))

(smithy/sdk/shapes:define-input delete-method-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId"
                                  :http-label common-lisp:t)
                                 (http-method :target-type string :required
                                  common-lisp:t :member-name "httpMethod"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteMethodRequest"))

(smithy/sdk/shapes:define-input delete-method-response-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId"
                                  :http-label common-lisp:t)
                                 (http-method :target-type string :required
                                  common-lisp:t :member-name "httpMethod"
                                  :http-label common-lisp:t)
                                 (status-code :target-type status-code
                                  :required common-lisp:t :member-name
                                  "statusCode" :http-label common-lisp:t))
                                (:shape-name "DeleteMethodResponseRequest"))

(smithy/sdk/shapes:define-input delete-model-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (model-name :target-type string :required
                                  common-lisp:t :member-name "modelName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteModelRequest"))

(smithy/sdk/shapes:define-input delete-request-validator-request
                                common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (request-validator-id :target-type string
                                  :required common-lisp:t :member-name
                                  "requestValidatorId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteRequestValidatorRequest"))

(smithy/sdk/shapes:define-input delete-resource-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteResourceRequest"))

(smithy/sdk/shapes:define-input delete-rest-api-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteRestApiRequest"))

(smithy/sdk/shapes:define-input delete-stage-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (stage-name :target-type string :required
                                  common-lisp:t :member-name "stageName"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteStageRequest"))

(smithy/sdk/shapes:define-input delete-usage-plan-key-request common-lisp:nil
                                ((usage-plan-id :target-type string :required
                                  common-lisp:t :member-name "usagePlanId"
                                  :http-label common-lisp:t)
                                 (key-id :target-type string :required
                                  common-lisp:t :member-name "keyId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteUsagePlanKeyRequest"))

(smithy/sdk/shapes:define-input delete-usage-plan-request common-lisp:nil
                                ((usage-plan-id :target-type string :required
                                  common-lisp:t :member-name "usagePlanId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteUsagePlanRequest"))

(smithy/sdk/shapes:define-input delete-vpc-link-request common-lisp:nil
                                ((vpc-link-id :target-type string :required
                                  common-lisp:t :member-name "vpcLinkId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteVpcLinkRequest"))

(smithy/sdk/shapes:define-structure deployment common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (description :target-type string
                                      :member-name "description")
                                     (created-date :target-type timestamp
                                      :member-name "createdDate")
                                     (api-summary :target-type
                                      path-to-map-of-method-snapshot
                                      :member-name "apiSummary"))
                                    (:shape-name "Deployment"))

(smithy/sdk/shapes:define-structure deployment-canary-settings common-lisp:nil
                                    ((percent-traffic :target-type double
                                      :member-name "percentTraffic")
                                     (stage-variable-overrides :target-type
                                      map-of-string-to-string :member-name
                                      "stageVariableOverrides")
                                     (use-stage-cache :target-type boolean
                                      :member-name "useStageCache"))
                                    (:shape-name "DeploymentCanarySettings"))

(smithy/sdk/shapes:define-structure deployments common-lisp:nil
                                    ((items :target-type list-of-deployment
                                      :member-name "items" :json-name "item")
                                     (position :target-type string :member-name
                                      "position" :http-query "position"))
                                    (:shape-name "Deployments"))

(smithy/sdk/shapes:define-structure documentation-part common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (location :target-type
                                      documentation-part-location :member-name
                                      "location")
                                     (properties :target-type string
                                      :member-name "properties"))
                                    (:shape-name "DocumentationPart"))

(smithy/sdk/shapes:define-structure documentation-part-ids common-lisp:nil
                                    ((ids :target-type list-of-string
                                      :member-name "ids")
                                     (warnings :target-type list-of-string
                                      :member-name "warnings"))
                                    (:shape-name "DocumentationPartIds"))

(smithy/sdk/shapes:define-structure documentation-part-location common-lisp:nil
                                    ((type :target-type documentation-part-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (path :target-type string :member-name
                                      "path")
                                     (method :target-type string :member-name
                                      "method")
                                     (status-code :target-type
                                      documentation-part-location-status-code
                                      :member-name "statusCode")
                                     (name :target-type string :member-name
                                      "name"))
                                    (:shape-name "DocumentationPartLocation"))

(smithy/sdk/shapes:define-type documentation-part-location-status-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum documentation-part-type
    common-lisp:nil
  (:api "API")
  (:authorizer "AUTHORIZER")
  (:model "MODEL")
  (:resource "RESOURCE")
  (:method "METHOD")
  (:path-parameter "PATH_PARAMETER")
  (:query-parameter "QUERY_PARAMETER")
  (:request-header "REQUEST_HEADER")
  (:request-body "REQUEST_BODY")
  (:response "RESPONSE")
  (:response-header "RESPONSE_HEADER")
  (:response-body "RESPONSE_BODY"))

(smithy/sdk/shapes:define-structure documentation-parts common-lisp:nil
                                    ((items :target-type
                                      list-of-documentation-part :member-name
                                      "items" :json-name "item")
                                     (position :target-type string :member-name
                                      "position" :http-query "position"))
                                    (:shape-name "DocumentationParts"))

(smithy/sdk/shapes:define-structure documentation-version common-lisp:nil
                                    ((version :target-type string :member-name
                                      "version")
                                     (created-date :target-type timestamp
                                      :member-name "createdDate")
                                     (description :target-type string
                                      :member-name "description"))
                                    (:shape-name "DocumentationVersion"))

(smithy/sdk/shapes:define-structure documentation-versions common-lisp:nil
                                    ((items :target-type
                                      list-of-documentation-version
                                      :member-name "items" :json-name "item")
                                     (position :target-type string :member-name
                                      "position" :http-query "position"))
                                    (:shape-name "DocumentationVersions"))

(smithy/sdk/shapes:define-structure domain-name common-lisp:nil
                                    ((domain-name :target-type string
                                      :member-name "domainName")
                                     (domain-name-id :target-type string
                                      :member-name "domainNameId")
                                     (domain-name-arn :target-type string
                                      :member-name "domainNameArn")
                                     (certificate-name :target-type string
                                      :member-name "certificateName")
                                     (certificate-arn :target-type string
                                      :member-name "certificateArn")
                                     (certificate-upload-date :target-type
                                      timestamp :member-name
                                      "certificateUploadDate")
                                     (regional-domain-name :target-type string
                                      :member-name "regionalDomainName")
                                     (regional-hosted-zone-id :target-type
                                      string :member-name
                                      "regionalHostedZoneId")
                                     (regional-certificate-name :target-type
                                      string :member-name
                                      "regionalCertificateName")
                                     (regional-certificate-arn :target-type
                                      string :member-name
                                      "regionalCertificateArn")
                                     (distribution-domain-name :target-type
                                      string :member-name
                                      "distributionDomainName")
                                     (distribution-hosted-zone-id :target-type
                                      string :member-name
                                      "distributionHostedZoneId")
                                     (endpoint-configuration :target-type
                                      endpoint-configuration :member-name
                                      "endpointConfiguration")
                                     (domain-name-status :target-type
                                      domain-name-status :member-name
                                      "domainNameStatus")
                                     (domain-name-status-message :target-type
                                      string :member-name
                                      "domainNameStatusMessage")
                                     (security-policy :target-type
                                      security-policy :member-name
                                      "securityPolicy")
                                     (tags :target-type map-of-string-to-string
                                      :member-name "tags")
                                     (mutual-tls-authentication :target-type
                                      mutual-tls-authentication :member-name
                                      "mutualTlsAuthentication")
                                     (ownership-verification-certificate-arn
                                      :target-type string :member-name
                                      "ownershipVerificationCertificateArn")
                                     (management-policy :target-type string
                                      :member-name "managementPolicy")
                                     (policy :target-type string :member-name
                                      "policy")
                                     (routing-mode :target-type routing-mode
                                      :member-name "routingMode"))
                                    (:shape-name "DomainName"))

(smithy/sdk/shapes:define-structure domain-name-access-association
                                    common-lisp:nil
                                    ((domain-name-access-association-arn
                                      :target-type string :member-name
                                      "domainNameAccessAssociationArn")
                                     (domain-name-arn :target-type string
                                      :member-name "domainNameArn")
                                     (access-association-source-type
                                      :target-type
                                      access-association-source-type
                                      :member-name
                                      "accessAssociationSourceType")
                                     (access-association-source :target-type
                                      string :member-name
                                      "accessAssociationSource")
                                     (tags :target-type map-of-string-to-string
                                      :member-name "tags"))
                                    (:shape-name "DomainNameAccessAssociation"))

(smithy/sdk/shapes:define-structure domain-name-access-associations
                                    common-lisp:nil
                                    ((items :target-type
                                      list-of-domain-name-access-association
                                      :member-name "items" :json-name "item")
                                     (position :target-type string :member-name
                                      "position" :http-query "position"))
                                    (:shape-name
                                     "DomainNameAccessAssociations"))

(smithy/sdk/shapes:define-enum domain-name-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:updating "UPDATING")
  (:pending "PENDING")
  (:pending-certificate-reimport "PENDING_CERTIFICATE_REIMPORT")
  (:pending-ownership-verification "PENDING_OWNERSHIP_VERIFICATION"))

(smithy/sdk/shapes:define-structure domain-names common-lisp:nil
                                    ((items :target-type list-of-domain-name
                                      :member-name "items" :json-name "item")
                                     (position :target-type string :member-name
                                      "position" :http-query "position"))
                                    (:shape-name "DomainNames"))

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-structure endpoint-configuration common-lisp:nil
                                    ((types :target-type list-of-endpoint-type
                                      :member-name "types")
                                     (ip-address-type :target-type
                                      ip-address-type :member-name
                                      "ipAddressType")
                                     (vpc-endpoint-ids :target-type
                                      list-of-string :member-name
                                      "vpcEndpointIds"))
                                    (:shape-name "EndpointConfiguration"))

(smithy/sdk/shapes:define-enum endpoint-type
    common-lisp:nil
  (:regional "REGIONAL")
  (:edge "EDGE")
  (:private "PRIVATE"))

(smithy/sdk/shapes:define-output export-response common-lisp:nil
                                 ((content-type :target-type string
                                   :member-name "contentType" :http-header
                                   "Content-Type")
                                  (content-disposition :target-type string
                                   :member-name "contentDisposition"
                                   :http-header "Content-Disposition")
                                  (body :target-type blob :member-name "body"
                                   :http-payload common-lisp:t))
                                 (:shape-name "ExportResponse"))

(smithy/sdk/shapes:define-input flush-stage-authorizers-cache-request
                                common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (stage-name :target-type string :required
                                  common-lisp:t :member-name "stageName"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "FlushStageAuthorizersCacheRequest"))

(smithy/sdk/shapes:define-input flush-stage-cache-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (stage-name :target-type string :required
                                  common-lisp:t :member-name "stageName"
                                  :http-label common-lisp:t))
                                (:shape-name "FlushStageCacheRequest"))

(smithy/sdk/shapes:define-structure gateway-response common-lisp:nil
                                    ((response-type :target-type
                                      gateway-response-type :member-name
                                      "responseType")
                                     (status-code :target-type status-code
                                      :member-name "statusCode")
                                     (response-parameters :target-type
                                      map-of-string-to-string :member-name
                                      "responseParameters")
                                     (response-templates :target-type
                                      map-of-string-to-string :member-name
                                      "responseTemplates")
                                     (default-response :target-type boolean
                                      :member-name "defaultResponse"))
                                    (:shape-name "GatewayResponse"))

(smithy/sdk/shapes:define-enum gateway-response-type
    common-lisp:nil
  (:default-4xx "DEFAULT_4XX")
  (:default-5xx "DEFAULT_5XX")
  (:resource-not-found "RESOURCE_NOT_FOUND")
  (:unauthorized "UNAUTHORIZED")
  (:invalid-api-key "INVALID_API_KEY")
  (:access-denied "ACCESS_DENIED")
  (:authorizer-failure "AUTHORIZER_FAILURE")
  (:authorizer-configuration-error "AUTHORIZER_CONFIGURATION_ERROR")
  (:invalid-signature "INVALID_SIGNATURE")
  (:expired-token "EXPIRED_TOKEN")
  (:missing-authentication-token "MISSING_AUTHENTICATION_TOKEN")
  (:integration-failure "INTEGRATION_FAILURE")
  (:integration-timeout "INTEGRATION_TIMEOUT")
  (:api-configuration-error "API_CONFIGURATION_ERROR")
  (:unsupported-media-type "UNSUPPORTED_MEDIA_TYPE")
  (:bad-request-parameters "BAD_REQUEST_PARAMETERS")
  (:bad-request-body "BAD_REQUEST_BODY")
  (:request-too-large "REQUEST_TOO_LARGE")
  (:throttled "THROTTLED")
  (:quota-exceeded "QUOTA_EXCEEDED")
  (:waf-filtered "WAF_FILTERED"))

(smithy/sdk/shapes:define-structure gateway-responses common-lisp:nil
                                    ((items :target-type
                                      list-of-gateway-response :member-name
                                      "items" :json-name "item")
                                     (position :target-type string :member-name
                                      "position" :http-query "position"))
                                    (:shape-name "GatewayResponses"))

(smithy/sdk/shapes:define-input generate-client-certificate-request
                                common-lisp:nil
                                ((description :target-type string :member-name
                                  "description")
                                 (tags :target-type map-of-string-to-string
                                  :member-name "tags"))
                                (:shape-name
                                 "GenerateClientCertificateRequest"))

(smithy/sdk/shapes:define-input get-account-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetAccountRequest"))

(smithy/sdk/shapes:define-input get-api-key-request common-lisp:nil
                                ((api-key :target-type string :required
                                  common-lisp:t :member-name "apiKey"
                                  :http-label common-lisp:t)
                                 (include-value :target-type nullable-boolean
                                  :member-name "includeValue" :http-query
                                  "includeValue"))
                                (:shape-name "GetApiKeyRequest"))

(smithy/sdk/shapes:define-input get-api-keys-request common-lisp:nil
                                ((position :target-type string :member-name
                                  "position" :http-query "position")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit")
                                 (name-query :target-type string :member-name
                                  "nameQuery" :http-query "name")
                                 (customer-id :target-type string :member-name
                                  "customerId" :http-query "customerId")
                                 (include-values :target-type nullable-boolean
                                  :member-name "includeValues" :http-query
                                  "includeValues"))
                                (:shape-name "GetApiKeysRequest"))

(smithy/sdk/shapes:define-input get-authorizer-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (authorizer-id :target-type string :required
                                  common-lisp:t :member-name "authorizerId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetAuthorizerRequest"))

(smithy/sdk/shapes:define-input get-authorizers-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (position :target-type string :member-name
                                  "position" :http-query "position")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit"))
                                (:shape-name "GetAuthorizersRequest"))

(smithy/sdk/shapes:define-input get-base-path-mapping-request common-lisp:nil
                                ((domain-name :target-type string :required
                                  common-lisp:t :member-name "domainName"
                                  :http-label common-lisp:t)
                                 (domain-name-id :target-type string
                                  :member-name "domainNameId" :http-query
                                  "domainNameId")
                                 (base-path :target-type string :required
                                  common-lisp:t :member-name "basePath"
                                  :http-label common-lisp:t))
                                (:shape-name "GetBasePathMappingRequest"))

(smithy/sdk/shapes:define-input get-base-path-mappings-request common-lisp:nil
                                ((domain-name :target-type string :required
                                  common-lisp:t :member-name "domainName"
                                  :http-label common-lisp:t)
                                 (domain-name-id :target-type string
                                  :member-name "domainNameId" :http-query
                                  "domainNameId")
                                 (position :target-type string :member-name
                                  "position" :http-query "position")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit"))
                                (:shape-name "GetBasePathMappingsRequest"))

(smithy/sdk/shapes:define-input get-client-certificate-request common-lisp:nil
                                ((client-certificate-id :target-type string
                                  :required common-lisp:t :member-name
                                  "clientCertificateId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetClientCertificateRequest"))

(smithy/sdk/shapes:define-input get-client-certificates-request common-lisp:nil
                                ((position :target-type string :member-name
                                  "position" :http-query "position")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit"))
                                (:shape-name "GetClientCertificatesRequest"))

(smithy/sdk/shapes:define-input get-deployment-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (deployment-id :target-type string :required
                                  common-lisp:t :member-name "deploymentId"
                                  :http-label common-lisp:t)
                                 (embed :target-type list-of-string
                                  :member-name "embed" :http-query "embed"))
                                (:shape-name "GetDeploymentRequest"))

(smithy/sdk/shapes:define-input get-deployments-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (position :target-type string :member-name
                                  "position" :http-query "position")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit"))
                                (:shape-name "GetDeploymentsRequest"))

(smithy/sdk/shapes:define-input get-documentation-part-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (documentation-part-id :target-type string
                                  :required common-lisp:t :member-name
                                  "documentationPartId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetDocumentationPartRequest"))

(smithy/sdk/shapes:define-input get-documentation-parts-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (type :target-type documentation-part-type
                                  :member-name "type" :http-query "type")
                                 (name-query :target-type string :member-name
                                  "nameQuery" :http-query "name")
                                 (path :target-type string :member-name "path"
                                  :http-query "path")
                                 (position :target-type string :member-name
                                  "position" :http-query "position")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit")
                                 (location-status :target-type
                                  location-status-type :member-name
                                  "locationStatus" :http-query
                                  "locationStatus"))
                                (:shape-name "GetDocumentationPartsRequest"))

(smithy/sdk/shapes:define-input get-documentation-version-request
                                common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (documentation-version :target-type string
                                  :required common-lisp:t :member-name
                                  "documentationVersion" :http-label
                                  common-lisp:t))
                                (:shape-name "GetDocumentationVersionRequest"))

(smithy/sdk/shapes:define-input get-documentation-versions-request
                                common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (position :target-type string :member-name
                                  "position" :http-query "position")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit"))
                                (:shape-name "GetDocumentationVersionsRequest"))

(smithy/sdk/shapes:define-input get-domain-name-access-associations-request
                                common-lisp:nil
                                ((position :target-type string :member-name
                                  "position" :http-query "position")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit")
                                 (resource-owner :target-type resource-owner
                                  :member-name "resourceOwner" :http-query
                                  "resourceOwner"))
                                (:shape-name
                                 "GetDomainNameAccessAssociationsRequest"))

(smithy/sdk/shapes:define-input get-domain-name-request common-lisp:nil
                                ((domain-name :target-type string :required
                                  common-lisp:t :member-name "domainName"
                                  :http-label common-lisp:t)
                                 (domain-name-id :target-type string
                                  :member-name "domainNameId" :http-query
                                  "domainNameId"))
                                (:shape-name "GetDomainNameRequest"))

(smithy/sdk/shapes:define-input get-domain-names-request common-lisp:nil
                                ((position :target-type string :member-name
                                  "position" :http-query "position")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit")
                                 (resource-owner :target-type resource-owner
                                  :member-name "resourceOwner" :http-query
                                  "resourceOwner"))
                                (:shape-name "GetDomainNamesRequest"))

(smithy/sdk/shapes:define-input get-export-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (stage-name :target-type string :required
                                  common-lisp:t :member-name "stageName"
                                  :http-label common-lisp:t)
                                 (export-type :target-type string :required
                                  common-lisp:t :member-name "exportType"
                                  :http-label common-lisp:t)
                                 (parameters :target-type
                                  map-of-string-to-string :member-name
                                  "parameters" :http-query-params
                                  common-lisp:t)
                                 (accepts :target-type string :member-name
                                  "accepts" :http-header "Accept"))
                                (:shape-name "GetExportRequest"))

(smithy/sdk/shapes:define-input get-gateway-response-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (response-type :target-type
                                  gateway-response-type :required common-lisp:t
                                  :member-name "responseType" :http-label
                                  common-lisp:t))
                                (:shape-name "GetGatewayResponseRequest"))

(smithy/sdk/shapes:define-input get-gateway-responses-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (position :target-type string :member-name
                                  "position" :http-query "position")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit"))
                                (:shape-name "GetGatewayResponsesRequest"))

(smithy/sdk/shapes:define-input get-integration-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId"
                                  :http-label common-lisp:t)
                                 (http-method :target-type string :required
                                  common-lisp:t :member-name "httpMethod"
                                  :http-label common-lisp:t))
                                (:shape-name "GetIntegrationRequest"))

(smithy/sdk/shapes:define-input get-integration-response-request
                                common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId"
                                  :http-label common-lisp:t)
                                 (http-method :target-type string :required
                                  common-lisp:t :member-name "httpMethod"
                                  :http-label common-lisp:t)
                                 (status-code :target-type status-code
                                  :required common-lisp:t :member-name
                                  "statusCode" :http-label common-lisp:t))
                                (:shape-name "GetIntegrationResponseRequest"))

(smithy/sdk/shapes:define-input get-method-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId"
                                  :http-label common-lisp:t)
                                 (http-method :target-type string :required
                                  common-lisp:t :member-name "httpMethod"
                                  :http-label common-lisp:t))
                                (:shape-name "GetMethodRequest"))

(smithy/sdk/shapes:define-input get-method-response-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId"
                                  :http-label common-lisp:t)
                                 (http-method :target-type string :required
                                  common-lisp:t :member-name "httpMethod"
                                  :http-label common-lisp:t)
                                 (status-code :target-type status-code
                                  :required common-lisp:t :member-name
                                  "statusCode" :http-label common-lisp:t))
                                (:shape-name "GetMethodResponseRequest"))

(smithy/sdk/shapes:define-input get-model-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (model-name :target-type string :required
                                  common-lisp:t :member-name "modelName"
                                  :http-label common-lisp:t)
                                 (flatten :target-type boolean :member-name
                                  "flatten" :http-query "flatten"))
                                (:shape-name "GetModelRequest"))

(smithy/sdk/shapes:define-input get-model-template-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (model-name :target-type string :required
                                  common-lisp:t :member-name "modelName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetModelTemplateRequest"))

(smithy/sdk/shapes:define-input get-models-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (position :target-type string :member-name
                                  "position" :http-query "position")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit"))
                                (:shape-name "GetModelsRequest"))

(smithy/sdk/shapes:define-input get-request-validator-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (request-validator-id :target-type string
                                  :required common-lisp:t :member-name
                                  "requestValidatorId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetRequestValidatorRequest"))

(smithy/sdk/shapes:define-input get-request-validators-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (position :target-type string :member-name
                                  "position" :http-query "position")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit"))
                                (:shape-name "GetRequestValidatorsRequest"))

(smithy/sdk/shapes:define-input get-resource-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId"
                                  :http-label common-lisp:t)
                                 (embed :target-type list-of-string
                                  :member-name "embed" :http-query "embed"))
                                (:shape-name "GetResourceRequest"))

(smithy/sdk/shapes:define-input get-resources-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (position :target-type string :member-name
                                  "position" :http-query "position")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit")
                                 (embed :target-type list-of-string
                                  :member-name "embed" :http-query "embed"))
                                (:shape-name "GetResourcesRequest"))

(smithy/sdk/shapes:define-input get-rest-api-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetRestApiRequest"))

(smithy/sdk/shapes:define-input get-rest-apis-request common-lisp:nil
                                ((position :target-type string :member-name
                                  "position" :http-query "position")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit"))
                                (:shape-name "GetRestApisRequest"))

(smithy/sdk/shapes:define-input get-sdk-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (stage-name :target-type string :required
                                  common-lisp:t :member-name "stageName"
                                  :http-label common-lisp:t)
                                 (sdk-type :target-type string :required
                                  common-lisp:t :member-name "sdkType"
                                  :http-label common-lisp:t)
                                 (parameters :target-type
                                  map-of-string-to-string :member-name
                                  "parameters" :http-query-params
                                  common-lisp:t))
                                (:shape-name "GetSdkRequest"))

(smithy/sdk/shapes:define-input get-sdk-type-request common-lisp:nil
                                ((id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "GetSdkTypeRequest"))

(smithy/sdk/shapes:define-input get-sdk-types-request common-lisp:nil
                                ((position :target-type string :member-name
                                  "position" :http-query "position")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit"))
                                (:shape-name "GetSdkTypesRequest"))

(smithy/sdk/shapes:define-input get-stage-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (stage-name :target-type string :required
                                  common-lisp:t :member-name "stageName"
                                  :http-label common-lisp:t))
                                (:shape-name "GetStageRequest"))

(smithy/sdk/shapes:define-input get-stages-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (deployment-id :target-type string
                                  :member-name "deploymentId" :http-query
                                  "deploymentId"))
                                (:shape-name "GetStagesRequest"))

(smithy/sdk/shapes:define-input get-tags-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (position :target-type string :member-name
                                  "position" :http-query "position")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit"))
                                (:shape-name "GetTagsRequest"))

(smithy/sdk/shapes:define-input get-usage-plan-key-request common-lisp:nil
                                ((usage-plan-id :target-type string :required
                                  common-lisp:t :member-name "usagePlanId"
                                  :http-label common-lisp:t)
                                 (key-id :target-type string :required
                                  common-lisp:t :member-name "keyId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetUsagePlanKeyRequest"))

(smithy/sdk/shapes:define-input get-usage-plan-keys-request common-lisp:nil
                                ((usage-plan-id :target-type string :required
                                  common-lisp:t :member-name "usagePlanId"
                                  :http-label common-lisp:t)
                                 (position :target-type string :member-name
                                  "position" :http-query "position")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit")
                                 (name-query :target-type string :member-name
                                  "nameQuery" :http-query "name"))
                                (:shape-name "GetUsagePlanKeysRequest"))

(smithy/sdk/shapes:define-input get-usage-plan-request common-lisp:nil
                                ((usage-plan-id :target-type string :required
                                  common-lisp:t :member-name "usagePlanId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetUsagePlanRequest"))

(smithy/sdk/shapes:define-input get-usage-plans-request common-lisp:nil
                                ((position :target-type string :member-name
                                  "position" :http-query "position")
                                 (key-id :target-type string :member-name
                                  "keyId" :http-query "keyId")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit"))
                                (:shape-name "GetUsagePlansRequest"))

(smithy/sdk/shapes:define-input get-usage-request common-lisp:nil
                                ((usage-plan-id :target-type string :required
                                  common-lisp:t :member-name "usagePlanId"
                                  :http-label common-lisp:t)
                                 (key-id :target-type string :member-name
                                  "keyId" :http-query "keyId")
                                 (start-date :target-type string :required
                                  common-lisp:t :member-name "startDate"
                                  :http-query "startDate")
                                 (end-date :target-type string :required
                                  common-lisp:t :member-name "endDate"
                                  :http-query "endDate")
                                 (position :target-type string :member-name
                                  "position" :http-query "position")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit"))
                                (:shape-name "GetUsageRequest"))

(smithy/sdk/shapes:define-input get-vpc-link-request common-lisp:nil
                                ((vpc-link-id :target-type string :required
                                  common-lisp:t :member-name "vpcLinkId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetVpcLinkRequest"))

(smithy/sdk/shapes:define-input get-vpc-links-request common-lisp:nil
                                ((position :target-type string :member-name
                                  "position" :http-query "position")
                                 (limit :target-type nullable-integer
                                  :member-name "limit" :http-query "limit"))
                                (:shape-name "GetVpcLinksRequest"))

(smithy/sdk/shapes:define-input import-api-keys-request common-lisp:nil
                                ((body :target-type blob :required
                                  common-lisp:t :member-name "body"
                                  :http-payload common-lisp:t)
                                 (format :target-type api-keys-format :required
                                  common-lisp:t :member-name "format"
                                  :http-query "format")
                                 (fail-on-warnings :target-type boolean
                                  :member-name "failOnWarnings" :http-query
                                  "failonwarnings"))
                                (:shape-name "ImportApiKeysRequest"))

(smithy/sdk/shapes:define-input import-documentation-parts-request
                                common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (mode :target-type put-mode :member-name
                                  "mode" :http-query "mode")
                                 (fail-on-warnings :target-type boolean
                                  :member-name "failOnWarnings" :http-query
                                  "failonwarnings")
                                 (body :target-type blob :required
                                  common-lisp:t :member-name "body"
                                  :http-payload common-lisp:t))
                                (:shape-name "ImportDocumentationPartsRequest"))

(smithy/sdk/shapes:define-input import-rest-api-request common-lisp:nil
                                ((fail-on-warnings :target-type boolean
                                  :member-name "failOnWarnings" :http-query
                                  "failonwarnings")
                                 (parameters :target-type
                                  map-of-string-to-string :member-name
                                  "parameters" :http-query-params
                                  common-lisp:t)
                                 (body :target-type blob :required
                                  common-lisp:t :member-name "body"
                                  :http-payload common-lisp:t))
                                (:shape-name "ImportRestApiRequest"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure integration common-lisp:nil
                                    ((type :target-type integration-type
                                      :member-name "type")
                                     (http-method :target-type string
                                      :member-name "httpMethod")
                                     (uri :target-type string :member-name
                                      "uri")
                                     (connection-type :target-type
                                      connection-type :member-name
                                      "connectionType")
                                     (connection-id :target-type string
                                      :member-name "connectionId")
                                     (credentials :target-type string
                                      :member-name "credentials")
                                     (request-parameters :target-type
                                      map-of-string-to-string :member-name
                                      "requestParameters")
                                     (request-templates :target-type
                                      map-of-string-to-string :member-name
                                      "requestTemplates")
                                     (passthrough-behavior :target-type string
                                      :member-name "passthroughBehavior")
                                     (content-handling :target-type
                                      content-handling-strategy :member-name
                                      "contentHandling")
                                     (timeout-in-millis :target-type integer
                                      :member-name "timeoutInMillis")
                                     (cache-namespace :target-type string
                                      :member-name "cacheNamespace")
                                     (cache-key-parameters :target-type
                                      list-of-string :member-name
                                      "cacheKeyParameters")
                                     (integration-responses :target-type
                                      map-of-integration-response :member-name
                                      "integrationResponses")
                                     (tls-config :target-type tls-config
                                      :member-name "tlsConfig"))
                                    (:shape-name "Integration"))

(smithy/sdk/shapes:define-structure integration-response common-lisp:nil
                                    ((status-code :target-type status-code
                                      :member-name "statusCode")
                                     (selection-pattern :target-type string
                                      :member-name "selectionPattern")
                                     (response-parameters :target-type
                                      map-of-string-to-string :member-name
                                      "responseParameters")
                                     (response-templates :target-type
                                      map-of-string-to-string :member-name
                                      "responseTemplates")
                                     (content-handling :target-type
                                      content-handling-strategy :member-name
                                      "contentHandling"))
                                    (:shape-name "IntegrationResponse"))

(smithy/sdk/shapes:define-enum integration-type
    common-lisp:nil
  (:http "HTTP")
  (:aws "AWS")
  (:mock "MOCK")
  (:http-proxy "HTTP_PROXY")
  (:aws-proxy "AWS_PROXY"))

(smithy/sdk/shapes:define-enum ip-address-type
    common-lisp:nil
  (:ipv4 "ipv4")
  (:dualstack "dualstack"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((retry-after-seconds :target-type string
                                  :member-name "retryAfterSeconds" :http-header
                                  "Retry-After")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 429))

(smithy/sdk/shapes:define-list list-of-arns :member provider-arn)

(smithy/sdk/shapes:define-list list-of-api-key :member api-key)

(smithy/sdk/shapes:define-list list-of-api-stage :member api-stage)

(smithy/sdk/shapes:define-list list-of-authorizer :member authorizer)

(smithy/sdk/shapes:define-list list-of-base-path-mapping :member
                               base-path-mapping)

(smithy/sdk/shapes:define-list list-of-client-certificate :member
                               client-certificate)

(smithy/sdk/shapes:define-list list-of-deployment :member deployment)

(smithy/sdk/shapes:define-list list-of-documentation-part :member
                               documentation-part)

(smithy/sdk/shapes:define-list list-of-documentation-version :member
                               documentation-version)

(smithy/sdk/shapes:define-list list-of-domain-name :member domain-name)

(smithy/sdk/shapes:define-list list-of-domain-name-access-association :member
                               domain-name-access-association)

(smithy/sdk/shapes:define-list list-of-endpoint-type :member endpoint-type)

(smithy/sdk/shapes:define-list list-of-gateway-response :member
                               gateway-response)

(smithy/sdk/shapes:define-list list-of-long :member long)

(smithy/sdk/shapes:define-list list-of-model :member model)

(smithy/sdk/shapes:define-list list-of-patch-operation :member patch-operation)

(smithy/sdk/shapes:define-list list-of-request-validator :member
                               request-validator)

(smithy/sdk/shapes:define-list list-of-resource :member resource)

(smithy/sdk/shapes:define-list list-of-rest-api :member rest-api)

(smithy/sdk/shapes:define-list list-of-sdk-configuration-property :member
                               sdk-configuration-property)

(smithy/sdk/shapes:define-list list-of-sdk-type :member sdk-type)

(smithy/sdk/shapes:define-list list-of-stage :member stage)

(smithy/sdk/shapes:define-list list-of-stage-keys :member stage-key)

(smithy/sdk/shapes:define-list list-of-string :member string)

(smithy/sdk/shapes:define-list list-of-usage :member list-of-long)

(smithy/sdk/shapes:define-list list-of-usage-plan :member usage-plan)

(smithy/sdk/shapes:define-list list-of-usage-plan-key :member usage-plan-key)

(smithy/sdk/shapes:define-list list-of-vpc-link :member vpc-link)

(smithy/sdk/shapes:define-enum location-status-type
    common-lisp:nil
  (:documented "DOCUMENTED")
  (:undocumented "UNDOCUMENTED"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-map map-of-api-stage-throttle-settings :key string
                              :value throttle-settings)

(smithy/sdk/shapes:define-map map-of-integration-response :key string :value
                              integration-response)

(smithy/sdk/shapes:define-map map-of-key-usages :key string :value
                              list-of-usage)

(smithy/sdk/shapes:define-map map-of-method :key string :value method)

(smithy/sdk/shapes:define-map map-of-method-response :key string :value
                              method-response)

(smithy/sdk/shapes:define-map map-of-method-settings :key string :value
                              method-setting)

(smithy/sdk/shapes:define-map map-of-method-snapshot :key string :value
                              method-snapshot)

(smithy/sdk/shapes:define-map map-of-string-to-boolean :key string :value
                              nullable-boolean)

(smithy/sdk/shapes:define-map map-of-string-to-list :key string :value
                              list-of-string)

(smithy/sdk/shapes:define-map map-of-string-to-string :key string :value string)

(smithy/sdk/shapes:define-structure method common-lisp:nil
                                    ((http-method :target-type string
                                      :member-name "httpMethod")
                                     (authorization-type :target-type string
                                      :member-name "authorizationType")
                                     (authorizer-id :target-type string
                                      :member-name "authorizerId")
                                     (api-key-required :target-type
                                      nullable-boolean :member-name
                                      "apiKeyRequired")
                                     (request-validator-id :target-type string
                                      :member-name "requestValidatorId")
                                     (operation-name :target-type string
                                      :member-name "operationName")
                                     (request-parameters :target-type
                                      map-of-string-to-boolean :member-name
                                      "requestParameters")
                                     (request-models :target-type
                                      map-of-string-to-string :member-name
                                      "requestModels")
                                     (method-responses :target-type
                                      map-of-method-response :member-name
                                      "methodResponses")
                                     (method-integration :target-type
                                      integration :member-name
                                      "methodIntegration")
                                     (authorization-scopes :target-type
                                      list-of-string :member-name
                                      "authorizationScopes"))
                                    (:shape-name "Method"))

(smithy/sdk/shapes:define-structure method-response common-lisp:nil
                                    ((status-code :target-type status-code
                                      :member-name "statusCode")
                                     (response-parameters :target-type
                                      map-of-string-to-boolean :member-name
                                      "responseParameters")
                                     (response-models :target-type
                                      map-of-string-to-string :member-name
                                      "responseModels"))
                                    (:shape-name "MethodResponse"))

(smithy/sdk/shapes:define-structure method-setting common-lisp:nil
                                    ((metrics-enabled :target-type boolean
                                      :member-name "metricsEnabled")
                                     (logging-level :target-type string
                                      :member-name "loggingLevel")
                                     (data-trace-enabled :target-type boolean
                                      :member-name "dataTraceEnabled")
                                     (throttling-burst-limit :target-type
                                      integer :member-name
                                      "throttlingBurstLimit")
                                     (throttling-rate-limit :target-type double
                                      :member-name "throttlingRateLimit")
                                     (caching-enabled :target-type boolean
                                      :member-name "cachingEnabled")
                                     (cache-ttl-in-seconds :target-type integer
                                      :member-name "cacheTtlInSeconds")
                                     (cache-data-encrypted :target-type boolean
                                      :member-name "cacheDataEncrypted")
                                     (require-authorization-for-cache-control
                                      :target-type boolean :member-name
                                      "requireAuthorizationForCacheControl")
                                     (unauthorized-cache-control-header-strategy
                                      :target-type
                                      unauthorized-cache-control-header-strategy
                                      :member-name
                                      "unauthorizedCacheControlHeaderStrategy"))
                                    (:shape-name "MethodSetting"))

(smithy/sdk/shapes:define-structure method-snapshot common-lisp:nil
                                    ((authorization-type :target-type string
                                      :member-name "authorizationType")
                                     (api-key-required :target-type boolean
                                      :member-name "apiKeyRequired"))
                                    (:shape-name "MethodSnapshot"))

(smithy/sdk/shapes:define-structure model common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (name :target-type string :member-name
                                      "name")
                                     (description :target-type string
                                      :member-name "description")
                                     (schema :target-type string :member-name
                                      "schema")
                                     (content-type :target-type string
                                      :member-name "contentType"))
                                    (:shape-name "Model"))

(smithy/sdk/shapes:define-structure models common-lisp:nil
                                    ((items :target-type list-of-model
                                      :member-name "items" :json-name "item")
                                     (position :target-type string :member-name
                                      "position" :http-query "position"))
                                    (:shape-name "Models"))

(smithy/sdk/shapes:define-structure mutual-tls-authentication common-lisp:nil
                                    ((truststore-uri :target-type string
                                      :member-name "truststoreUri")
                                     (truststore-version :target-type string
                                      :member-name "truststoreVersion")
                                     (truststore-warnings :target-type
                                      list-of-string :member-name
                                      "truststoreWarnings"))
                                    (:shape-name "MutualTlsAuthentication"))

(smithy/sdk/shapes:define-structure mutual-tls-authentication-input
                                    common-lisp:nil
                                    ((truststore-uri :target-type string
                                      :member-name "truststoreUri")
                                     (truststore-version :target-type string
                                      :member-name "truststoreVersion"))
                                    (:shape-name
                                     "MutualTlsAuthenticationInput"))

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type nullable-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type nullable-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum op
    common-lisp:nil
  (:add "add")
  (:remove "remove")
  (:replace "replace")
  (:move "move")
  (:copy "copy")
  (:test "test"))

(smithy/sdk/shapes:define-structure patch-operation common-lisp:nil
                                    ((op :target-type op :member-name "op")
                                     (path :target-type string :member-name
                                      "path")
                                     (value :target-type string :member-name
                                      "value")
                                     (from :target-type string :member-name
                                      "from"))
                                    (:shape-name "PatchOperation"))

(smithy/sdk/shapes:define-map path-to-map-of-method-snapshot :key string :value
                              map-of-method-snapshot)

(smithy/sdk/shapes:define-type provider-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input put-gateway-response-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (response-type :target-type
                                  gateway-response-type :required common-lisp:t
                                  :member-name "responseType" :http-label
                                  common-lisp:t)
                                 (status-code :target-type status-code
                                  :member-name "statusCode")
                                 (response-parameters :target-type
                                  map-of-string-to-string :member-name
                                  "responseParameters")
                                 (response-templates :target-type
                                  map-of-string-to-string :member-name
                                  "responseTemplates"))
                                (:shape-name "PutGatewayResponseRequest"))

(smithy/sdk/shapes:define-input put-integration-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId"
                                  :http-label common-lisp:t)
                                 (http-method :target-type string :required
                                  common-lisp:t :member-name "httpMethod"
                                  :http-label common-lisp:t :json-name
                                  "requestHttpMethod")
                                 (type :target-type integration-type :required
                                  common-lisp:t :member-name "type")
                                 (integration-http-method :target-type string
                                  :member-name "integrationHttpMethod"
                                  :json-name "httpMethod")
                                 (uri :target-type string :member-name "uri")
                                 (connection-type :target-type connection-type
                                  :member-name "connectionType")
                                 (connection-id :target-type string
                                  :member-name "connectionId")
                                 (credentials :target-type string :member-name
                                  "credentials")
                                 (request-parameters :target-type
                                  map-of-string-to-string :member-name
                                  "requestParameters")
                                 (request-templates :target-type
                                  map-of-string-to-string :member-name
                                  "requestTemplates")
                                 (passthrough-behavior :target-type string
                                  :member-name "passthroughBehavior")
                                 (cache-namespace :target-type string
                                  :member-name "cacheNamespace")
                                 (cache-key-parameters :target-type
                                  list-of-string :member-name
                                  "cacheKeyParameters")
                                 (content-handling :target-type
                                  content-handling-strategy :member-name
                                  "contentHandling")
                                 (timeout-in-millis :target-type
                                  nullable-integer :member-name
                                  "timeoutInMillis")
                                 (tls-config :target-type tls-config
                                  :member-name "tlsConfig"))
                                (:shape-name "PutIntegrationRequest"))

(smithy/sdk/shapes:define-input put-integration-response-request
                                common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId"
                                  :http-label common-lisp:t)
                                 (http-method :target-type string :required
                                  common-lisp:t :member-name "httpMethod"
                                  :http-label common-lisp:t)
                                 (status-code :target-type status-code
                                  :required common-lisp:t :member-name
                                  "statusCode" :http-label common-lisp:t)
                                 (selection-pattern :target-type string
                                  :member-name "selectionPattern")
                                 (response-parameters :target-type
                                  map-of-string-to-string :member-name
                                  "responseParameters")
                                 (response-templates :target-type
                                  map-of-string-to-string :member-name
                                  "responseTemplates")
                                 (content-handling :target-type
                                  content-handling-strategy :member-name
                                  "contentHandling"))
                                (:shape-name "PutIntegrationResponseRequest"))

(smithy/sdk/shapes:define-input put-method-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId"
                                  :http-label common-lisp:t)
                                 (http-method :target-type string :required
                                  common-lisp:t :member-name "httpMethod"
                                  :http-label common-lisp:t)
                                 (authorization-type :target-type string
                                  :required common-lisp:t :member-name
                                  "authorizationType")
                                 (authorizer-id :target-type string
                                  :member-name "authorizerId")
                                 (api-key-required :target-type boolean
                                  :member-name "apiKeyRequired")
                                 (operation-name :target-type string
                                  :member-name "operationName")
                                 (request-parameters :target-type
                                  map-of-string-to-boolean :member-name
                                  "requestParameters")
                                 (request-models :target-type
                                  map-of-string-to-string :member-name
                                  "requestModels")
                                 (request-validator-id :target-type string
                                  :member-name "requestValidatorId")
                                 (authorization-scopes :target-type
                                  list-of-string :member-name
                                  "authorizationScopes"))
                                (:shape-name "PutMethodRequest"))

(smithy/sdk/shapes:define-input put-method-response-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId"
                                  :http-label common-lisp:t)
                                 (http-method :target-type string :required
                                  common-lisp:t :member-name "httpMethod"
                                  :http-label common-lisp:t)
                                 (status-code :target-type status-code
                                  :required common-lisp:t :member-name
                                  "statusCode" :http-label common-lisp:t)
                                 (response-parameters :target-type
                                  map-of-string-to-boolean :member-name
                                  "responseParameters")
                                 (response-models :target-type
                                  map-of-string-to-string :member-name
                                  "responseModels"))
                                (:shape-name "PutMethodResponseRequest"))

(smithy/sdk/shapes:define-enum put-mode
    common-lisp:nil
  (:merge "merge")
  (:overwrite "overwrite"))

(smithy/sdk/shapes:define-input put-rest-api-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (mode :target-type put-mode :member-name
                                  "mode" :http-query "mode")
                                 (fail-on-warnings :target-type boolean
                                  :member-name "failOnWarnings" :http-query
                                  "failonwarnings")
                                 (parameters :target-type
                                  map-of-string-to-string :member-name
                                  "parameters" :http-query-params
                                  common-lisp:t)
                                 (body :target-type blob :required
                                  common-lisp:t :member-name "body"
                                  :http-payload common-lisp:t))
                                (:shape-name "PutRestApiRequest"))

(smithy/sdk/shapes:define-enum quota-period-type
    common-lisp:nil
  (:day "DAY")
  (:week "WEEK")
  (:month "MONTH"))

(smithy/sdk/shapes:define-structure quota-settings common-lisp:nil
                                    ((limit :target-type integer :member-name
                                      "limit")
                                     (offset :target-type integer :member-name
                                      "offset")
                                     (period :target-type quota-period-type
                                      :member-name "period"))
                                    (:shape-name "QuotaSettings"))

(smithy/sdk/shapes:define-input reject-domain-name-access-association-request
                                common-lisp:nil
                                ((domain-name-access-association-arn
                                  :target-type string :required common-lisp:t
                                  :member-name "domainNameAccessAssociationArn"
                                  :http-query "domainNameAccessAssociationArn")
                                 (domain-name-arn :target-type string :required
                                  common-lisp:t :member-name "domainNameArn"
                                  :http-query "domainNameArn"))
                                (:shape-name
                                 "RejectDomainNameAccessAssociationRequest"))

(smithy/sdk/shapes:define-structure request-validator common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (name :target-type string :member-name
                                      "name")
                                     (validate-request-body :target-type
                                      boolean :member-name
                                      "validateRequestBody")
                                     (validate-request-parameters :target-type
                                      boolean :member-name
                                      "validateRequestParameters"))
                                    (:shape-name "RequestValidator"))

(smithy/sdk/shapes:define-structure request-validators common-lisp:nil
                                    ((items :target-type
                                      list-of-request-validator :member-name
                                      "items" :json-name "item")
                                     (position :target-type string :member-name
                                      "position" :http-query "position"))
                                    (:shape-name "RequestValidators"))

(smithy/sdk/shapes:define-structure resource common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (parent-id :target-type string
                                      :member-name "parentId")
                                     (path-part :target-type string
                                      :member-name "pathPart")
                                     (path :target-type string :member-name
                                      "path")
                                     (resource-methods :target-type
                                      map-of-method :member-name
                                      "resourceMethods"))
                                    (:shape-name "Resource"))

(smithy/sdk/shapes:define-enum resource-owner
    common-lisp:nil
  (:self "SELF")
  (:other-accounts "OTHER_ACCOUNTS"))

(smithy/sdk/shapes:define-structure resources common-lisp:nil
                                    ((items :target-type list-of-resource
                                      :member-name "items" :json-name "item")
                                     (position :target-type string :member-name
                                      "position" :http-query "position"))
                                    (:shape-name "Resources"))

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
                                      "disableExecuteApiEndpoint")
                                     (root-resource-id :target-type string
                                      :member-name "rootResourceId"))
                                    (:shape-name "RestApi"))

(smithy/sdk/shapes:define-structure rest-apis common-lisp:nil
                                    ((items :target-type list-of-rest-api
                                      :member-name "items" :json-name "item")
                                     (position :target-type string :member-name
                                      "position" :http-query "position"))
                                    (:shape-name "RestApis"))

(smithy/sdk/shapes:define-enum routing-mode
    common-lisp:nil
  (:base-path-mapping-only "BASE_PATH_MAPPING_ONLY")
  (:routing-rule-only "ROUTING_RULE_ONLY")
  (:routing-rule-then-base-path-mapping "ROUTING_RULE_THEN_BASE_PATH_MAPPING"))

(smithy/sdk/shapes:define-structure sdk-configuration-property common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (friendly-name :target-type string
                                      :member-name "friendlyName")
                                     (description :target-type string
                                      :member-name "description")
                                     (required :target-type boolean
                                      :member-name "required")
                                     (default-value :target-type string
                                      :member-name "defaultValue"))
                                    (:shape-name "SdkConfigurationProperty"))

(smithy/sdk/shapes:define-output sdk-response common-lisp:nil
                                 ((content-type :target-type string
                                   :member-name "contentType" :http-header
                                   "Content-Type")
                                  (content-disposition :target-type string
                                   :member-name "contentDisposition"
                                   :http-header "Content-Disposition")
                                  (body :target-type blob :member-name "body"
                                   :http-payload common-lisp:t))
                                 (:shape-name "SdkResponse"))

(smithy/sdk/shapes:define-structure sdk-type common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (friendly-name :target-type string
                                      :member-name "friendlyName")
                                     (description :target-type string
                                      :member-name "description")
                                     (configuration-properties :target-type
                                      list-of-sdk-configuration-property
                                      :member-name "configurationProperties"))
                                    (:shape-name "SdkType"))

(smithy/sdk/shapes:define-structure sdk-types common-lisp:nil
                                    ((items :target-type list-of-sdk-type
                                      :member-name "items" :json-name "item"))
                                    (:shape-name "SdkTypes"))

(smithy/sdk/shapes:define-enum security-policy
    common-lisp:nil
  (:tls-1-0 "TLS_1_0")
  (:tls-1-2 "TLS_1_2"))

(smithy/sdk/shapes:define-error service-unavailable-exception common-lisp:nil
                                ((retry-after-seconds :target-type string
                                  :member-name "retryAfterSeconds" :http-header
                                  "Retry-After")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "ServiceUnavailableException")
                                (:error-code 503))

(smithy/sdk/shapes:define-structure stage common-lisp:nil
                                    ((deployment-id :target-type string
                                      :member-name "deploymentId")
                                     (client-certificate-id :target-type string
                                      :member-name "clientCertificateId")
                                     (stage-name :target-type string
                                      :member-name "stageName")
                                     (description :target-type string
                                      :member-name "description")
                                     (cache-cluster-enabled :target-type
                                      boolean :member-name
                                      "cacheClusterEnabled")
                                     (cache-cluster-size :target-type
                                      cache-cluster-size :member-name
                                      "cacheClusterSize")
                                     (cache-cluster-status :target-type
                                      cache-cluster-status :member-name
                                      "cacheClusterStatus")
                                     (method-settings :target-type
                                      map-of-method-settings :member-name
                                      "methodSettings")
                                     (variables :target-type
                                      map-of-string-to-string :member-name
                                      "variables")
                                     (documentation-version :target-type string
                                      :member-name "documentationVersion")
                                     (access-log-settings :target-type
                                      access-log-settings :member-name
                                      "accessLogSettings")
                                     (canary-settings :target-type
                                      canary-settings :member-name
                                      "canarySettings")
                                     (tracing-enabled :target-type boolean
                                      :member-name "tracingEnabled")
                                     (web-acl-arn :target-type string
                                      :member-name "webAclArn")
                                     (tags :target-type map-of-string-to-string
                                      :member-name "tags")
                                     (created-date :target-type timestamp
                                      :member-name "createdDate")
                                     (last-updated-date :target-type timestamp
                                      :member-name "lastUpdatedDate"))
                                    (:shape-name "Stage"))

(smithy/sdk/shapes:define-structure stage-key common-lisp:nil
                                    ((rest-api-id :target-type string
                                      :member-name "restApiId")
                                     (stage-name :target-type string
                                      :member-name "stageName"))
                                    (:shape-name "StageKey"))

(smithy/sdk/shapes:define-structure stages common-lisp:nil
                                    ((item :target-type list-of-stage
                                      :member-name "item"))
                                    (:shape-name "Stages"))

(smithy/sdk/shapes:define-type status-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type map-of-string-to-string
                                  :required common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-structure tags common-lisp:nil
                                    ((tags :target-type map-of-string-to-string
                                      :member-name "tags"))
                                    (:shape-name "Tags"))

(smithy/sdk/shapes:define-structure template common-lisp:nil
                                    ((value :target-type string :member-name
                                      "value"))
                                    (:shape-name "Template"))

(smithy/sdk/shapes:define-input test-invoke-authorizer-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (authorizer-id :target-type string :required
                                  common-lisp:t :member-name "authorizerId"
                                  :http-label common-lisp:t)
                                 (headers :target-type map-of-string-to-string
                                  :member-name "headers")
                                 (multi-value-headers :target-type
                                  map-of-string-to-list :member-name
                                  "multiValueHeaders")
                                 (path-with-query-string :target-type string
                                  :member-name "pathWithQueryString")
                                 (body :target-type string :member-name "body")
                                 (stage-variables :target-type
                                  map-of-string-to-string :member-name
                                  "stageVariables")
                                 (additional-context :target-type
                                  map-of-string-to-string :member-name
                                  "additionalContext"))
                                (:shape-name "TestInvokeAuthorizerRequest"))

(smithy/sdk/shapes:define-output test-invoke-authorizer-response
                                 common-lisp:nil
                                 ((client-status :target-type integer
                                   :member-name "clientStatus")
                                  (log :target-type string :member-name "log")
                                  (latency :target-type long :member-name
                                   "latency")
                                  (principal-id :target-type string
                                   :member-name "principalId")
                                  (policy :target-type string :member-name
                                   "policy")
                                  (authorization :target-type
                                   map-of-string-to-list :member-name
                                   "authorization")
                                  (claims :target-type map-of-string-to-string
                                   :member-name "claims"))
                                 (:shape-name "TestInvokeAuthorizerResponse"))

(smithy/sdk/shapes:define-input test-invoke-method-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId"
                                  :http-label common-lisp:t)
                                 (http-method :target-type string :required
                                  common-lisp:t :member-name "httpMethod"
                                  :http-label common-lisp:t)
                                 (path-with-query-string :target-type string
                                  :member-name "pathWithQueryString")
                                 (body :target-type string :member-name "body")
                                 (headers :target-type map-of-string-to-string
                                  :member-name "headers")
                                 (multi-value-headers :target-type
                                  map-of-string-to-list :member-name
                                  "multiValueHeaders")
                                 (client-certificate-id :target-type string
                                  :member-name "clientCertificateId")
                                 (stage-variables :target-type
                                  map-of-string-to-string :member-name
                                  "stageVariables"))
                                (:shape-name "TestInvokeMethodRequest"))

(smithy/sdk/shapes:define-output test-invoke-method-response common-lisp:nil
                                 ((status :target-type integer :member-name
                                   "status")
                                  (body :target-type string :member-name
                                   "body")
                                  (headers :target-type map-of-string-to-string
                                   :member-name "headers")
                                  (multi-value-headers :target-type
                                   map-of-string-to-list :member-name
                                   "multiValueHeaders")
                                  (log :target-type string :member-name "log")
                                  (latency :target-type long :member-name
                                   "latency"))
                                 (:shape-name "TestInvokeMethodResponse"))

(smithy/sdk/shapes:define-structure throttle-settings common-lisp:nil
                                    ((burst-limit :target-type integer
                                      :member-name "burstLimit")
                                     (rate-limit :target-type double
                                      :member-name "rateLimit"))
                                    (:shape-name "ThrottleSettings"))

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure tls-config common-lisp:nil
                                    ((insecure-skip-verification :target-type
                                      boolean :member-name
                                      "insecureSkipVerification"))
                                    (:shape-name "TlsConfig"))

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((retry-after-seconds :target-type string
                                  :member-name "retryAfterSeconds" :http-header
                                  "Retry-After")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-enum unauthorized-cache-control-header-strategy
    common-lisp:nil
  (:fail-with-403 "FAIL_WITH_403")
  (:succeed-with-response-header "SUCCEED_WITH_RESPONSE_HEADER")
  (:succeed-without-response-header "SUCCEED_WITHOUT_RESPONSE_HEADER"))

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type string :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type list-of-string
                                  :required common-lisp:t :member-name
                                  "tagKeys" :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-account-request common-lisp:nil
                                ((patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name "UpdateAccountRequest"))

(smithy/sdk/shapes:define-input update-api-key-request common-lisp:nil
                                ((api-key :target-type string :required
                                  common-lisp:t :member-name "apiKey"
                                  :http-label common-lisp:t)
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name "UpdateApiKeyRequest"))

(smithy/sdk/shapes:define-input update-authorizer-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (authorizer-id :target-type string :required
                                  common-lisp:t :member-name "authorizerId"
                                  :http-label common-lisp:t)
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name "UpdateAuthorizerRequest"))

(smithy/sdk/shapes:define-input update-base-path-mapping-request
                                common-lisp:nil
                                ((domain-name :target-type string :required
                                  common-lisp:t :member-name "domainName"
                                  :http-label common-lisp:t)
                                 (domain-name-id :target-type string
                                  :member-name "domainNameId" :http-query
                                  "domainNameId")
                                 (base-path :target-type string :required
                                  common-lisp:t :member-name "basePath"
                                  :http-label common-lisp:t)
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name "UpdateBasePathMappingRequest"))

(smithy/sdk/shapes:define-input update-client-certificate-request
                                common-lisp:nil
                                ((client-certificate-id :target-type string
                                  :required common-lisp:t :member-name
                                  "clientCertificateId" :http-label
                                  common-lisp:t)
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name "UpdateClientCertificateRequest"))

(smithy/sdk/shapes:define-input update-deployment-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (deployment-id :target-type string :required
                                  common-lisp:t :member-name "deploymentId"
                                  :http-label common-lisp:t)
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name "UpdateDeploymentRequest"))

(smithy/sdk/shapes:define-input update-documentation-part-request
                                common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (documentation-part-id :target-type string
                                  :required common-lisp:t :member-name
                                  "documentationPartId" :http-label
                                  common-lisp:t)
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name "UpdateDocumentationPartRequest"))

(smithy/sdk/shapes:define-input update-documentation-version-request
                                common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (documentation-version :target-type string
                                  :required common-lisp:t :member-name
                                  "documentationVersion" :http-label
                                  common-lisp:t)
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name
                                 "UpdateDocumentationVersionRequest"))

(smithy/sdk/shapes:define-input update-domain-name-request common-lisp:nil
                                ((domain-name :target-type string :required
                                  common-lisp:t :member-name "domainName"
                                  :http-label common-lisp:t)
                                 (domain-name-id :target-type string
                                  :member-name "domainNameId" :http-query
                                  "domainNameId")
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name "UpdateDomainNameRequest"))

(smithy/sdk/shapes:define-input update-gateway-response-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (response-type :target-type
                                  gateway-response-type :required common-lisp:t
                                  :member-name "responseType" :http-label
                                  common-lisp:t)
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name "UpdateGatewayResponseRequest"))

(smithy/sdk/shapes:define-input update-integration-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId"
                                  :http-label common-lisp:t)
                                 (http-method :target-type string :required
                                  common-lisp:t :member-name "httpMethod"
                                  :http-label common-lisp:t)
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name "UpdateIntegrationRequest"))

(smithy/sdk/shapes:define-input update-integration-response-request
                                common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId"
                                  :http-label common-lisp:t)
                                 (http-method :target-type string :required
                                  common-lisp:t :member-name "httpMethod"
                                  :http-label common-lisp:t)
                                 (status-code :target-type status-code
                                  :required common-lisp:t :member-name
                                  "statusCode" :http-label common-lisp:t)
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name
                                 "UpdateIntegrationResponseRequest"))

(smithy/sdk/shapes:define-input update-method-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId"
                                  :http-label common-lisp:t)
                                 (http-method :target-type string :required
                                  common-lisp:t :member-name "httpMethod"
                                  :http-label common-lisp:t)
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name "UpdateMethodRequest"))

(smithy/sdk/shapes:define-input update-method-response-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId"
                                  :http-label common-lisp:t)
                                 (http-method :target-type string :required
                                  common-lisp:t :member-name "httpMethod"
                                  :http-label common-lisp:t)
                                 (status-code :target-type status-code
                                  :required common-lisp:t :member-name
                                  "statusCode" :http-label common-lisp:t)
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name "UpdateMethodResponseRequest"))

(smithy/sdk/shapes:define-input update-model-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (model-name :target-type string :required
                                  common-lisp:t :member-name "modelName"
                                  :http-label common-lisp:t)
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name "UpdateModelRequest"))

(smithy/sdk/shapes:define-input update-request-validator-request
                                common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (request-validator-id :target-type string
                                  :required common-lisp:t :member-name
                                  "requestValidatorId" :http-label
                                  common-lisp:t)
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name "UpdateRequestValidatorRequest"))

(smithy/sdk/shapes:define-input update-resource-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (resource-id :target-type string :required
                                  common-lisp:t :member-name "resourceId"
                                  :http-label common-lisp:t)
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name "UpdateResourceRequest"))

(smithy/sdk/shapes:define-input update-rest-api-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name "UpdateRestApiRequest"))

(smithy/sdk/shapes:define-input update-stage-request common-lisp:nil
                                ((rest-api-id :target-type string :required
                                  common-lisp:t :member-name "restApiId"
                                  :http-label common-lisp:t)
                                 (stage-name :target-type string :required
                                  common-lisp:t :member-name "stageName"
                                  :http-label common-lisp:t)
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name "UpdateStageRequest"))

(smithy/sdk/shapes:define-input update-usage-plan-request common-lisp:nil
                                ((usage-plan-id :target-type string :required
                                  common-lisp:t :member-name "usagePlanId"
                                  :http-label common-lisp:t)
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name "UpdateUsagePlanRequest"))

(smithy/sdk/shapes:define-input update-usage-request common-lisp:nil
                                ((usage-plan-id :target-type string :required
                                  common-lisp:t :member-name "usagePlanId"
                                  :http-label common-lisp:t)
                                 (key-id :target-type string :required
                                  common-lisp:t :member-name "keyId"
                                  :http-label common-lisp:t)
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name "UpdateUsageRequest"))

(smithy/sdk/shapes:define-input update-vpc-link-request common-lisp:nil
                                ((vpc-link-id :target-type string :required
                                  common-lisp:t :member-name "vpcLinkId"
                                  :http-label common-lisp:t)
                                 (patch-operations :target-type
                                  list-of-patch-operation :member-name
                                  "patchOperations"))
                                (:shape-name "UpdateVpcLinkRequest"))

(smithy/sdk/shapes:define-structure usage common-lisp:nil
                                    ((usage-plan-id :target-type string
                                      :member-name "usagePlanId")
                                     (start-date :target-type string
                                      :member-name "startDate")
                                     (end-date :target-type string :member-name
                                      "endDate")
                                     (items :target-type map-of-key-usages
                                      :member-name "items" :json-name "values")
                                     (position :target-type string :member-name
                                      "position" :http-query "position"))
                                    (:shape-name "Usage"))

(smithy/sdk/shapes:define-structure usage-plan common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (name :target-type string :member-name
                                      "name")
                                     (description :target-type string
                                      :member-name "description")
                                     (api-stages :target-type list-of-api-stage
                                      :member-name "apiStages")
                                     (throttle :target-type throttle-settings
                                      :member-name "throttle")
                                     (quota :target-type quota-settings
                                      :member-name "quota")
                                     (product-code :target-type string
                                      :member-name "productCode")
                                     (tags :target-type map-of-string-to-string
                                      :member-name "tags"))
                                    (:shape-name "UsagePlan"))

(smithy/sdk/shapes:define-structure usage-plan-key common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (type :target-type string :member-name
                                      "type")
                                     (value :target-type string :member-name
                                      "value")
                                     (name :target-type string :member-name
                                      "name"))
                                    (:shape-name "UsagePlanKey"))

(smithy/sdk/shapes:define-structure usage-plan-keys common-lisp:nil
                                    ((items :target-type list-of-usage-plan-key
                                      :member-name "items" :json-name "item")
                                     (position :target-type string :member-name
                                      "position" :http-query "position"))
                                    (:shape-name "UsagePlanKeys"))

(smithy/sdk/shapes:define-structure usage-plans common-lisp:nil
                                    ((items :target-type list-of-usage-plan
                                      :member-name "items" :json-name "item")
                                     (position :target-type string :member-name
                                      "position" :http-query "position"))
                                    (:shape-name "UsagePlans"))

(smithy/sdk/shapes:define-structure vpc-link common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (name :target-type string :member-name
                                      "name")
                                     (description :target-type string
                                      :member-name "description")
                                     (target-arns :target-type list-of-string
                                      :member-name "targetArns")
                                     (status :target-type vpc-link-status
                                      :member-name "status")
                                     (status-message :target-type string
                                      :member-name "statusMessage")
                                     (tags :target-type map-of-string-to-string
                                      :member-name "tags"))
                                    (:shape-name "VpcLink"))

(smithy/sdk/shapes:define-enum vpc-link-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:pending "PENDING")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure vpc-links common-lisp:nil
                                    ((items :target-type list-of-vpc-link
                                      :member-name "items" :json-name "item")
                                     (position :target-type string :member-name
                                      "position" :http-query "position"))
                                    (:shape-name "VpcLinks"))

(smithy/sdk/operation:define-operation create-api-key :shape-name
                                       "CreateApiKey" :input
                                       create-api-key-request :output api-key
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/apikeys" :code 201)

(smithy/sdk/operation:define-operation create-authorizer :shape-name
                                       "CreateAuthorizer" :input
                                       create-authorizer-request :output
                                       authorizer :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/restapis/{restApiId}/authorizers"
                                       :code 201)

(smithy/sdk/operation:define-operation create-base-path-mapping :shape-name
                                       "CreateBasePathMapping" :input
                                       create-base-path-mapping-request :output
                                       base-path-mapping :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/domainnames/{domainName}/basepathmappings"
                                       :code 201)

(smithy/sdk/operation:define-operation create-deployment :shape-name
                                       "CreateDeployment" :input
                                       create-deployment-request :output
                                       deployment :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/restapis/{restApiId}/deployments"
                                       :code 201)

(smithy/sdk/operation:define-operation create-documentation-part :shape-name
                                       "CreateDocumentationPart" :input
                                       create-documentation-part-request
                                       :output documentation-part :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/restapis/{restApiId}/documentation/parts"
                                       :code 201)

(smithy/sdk/operation:define-operation create-documentation-version :shape-name
                                       "CreateDocumentationVersion" :input
                                       create-documentation-version-request
                                       :output documentation-version :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/restapis/{restApiId}/documentation/versions"
                                       :code 201)

(smithy/sdk/operation:define-operation create-domain-name :shape-name
                                       "CreateDomainName" :input
                                       create-domain-name-request :output
                                       domain-name :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/domainnames" :code
                                       201)

(smithy/sdk/operation:define-operation create-domain-name-access-association
                                       :shape-name
                                       "CreateDomainNameAccessAssociation"
                                       :input
                                       create-domain-name-access-association-request
                                       :output domain-name-access-association
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/domainnameaccessassociations" :code
                                       201)

(smithy/sdk/operation:define-operation create-model :shape-name "CreateModel"
                                       :input create-model-request :output
                                       model :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/restapis/{restApiId}/models" :code 201)

(smithy/sdk/operation:define-operation create-request-validator :shape-name
                                       "CreateRequestValidator" :input
                                       create-request-validator-request :output
                                       request-validator :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/restapis/{restApiId}/requestvalidators"
                                       :code 201)

(smithy/sdk/operation:define-operation create-resource :shape-name
                                       "CreateResource" :input
                                       create-resource-request :output resource
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/restapis/{restApiId}/resources/{parentId}"
                                       :code 201)

(smithy/sdk/operation:define-operation create-rest-api :shape-name
                                       "CreateRestApi" :input
                                       create-rest-api-request :output rest-api
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/restapis" :code
                                       201)

(smithy/sdk/operation:define-operation create-stage :shape-name "CreateStage"
                                       :input create-stage-request :output
                                       stage :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/restapis/{restApiId}/stages" :code 201)

(smithy/sdk/operation:define-operation create-usage-plan :shape-name
                                       "CreateUsagePlan" :input
                                       create-usage-plan-request :output
                                       usage-plan :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/usageplans" :code
                                       201)

(smithy/sdk/operation:define-operation create-usage-plan-key :shape-name
                                       "CreateUsagePlanKey" :input
                                       create-usage-plan-key-request :output
                                       usage-plan-key :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/usageplans/{usagePlanId}/keys" :code
                                       201)

(smithy/sdk/operation:define-operation create-vpc-link :shape-name
                                       "CreateVpcLink" :input
                                       create-vpc-link-request :output vpc-link
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/vpclinks" :code
                                       202)

(smithy/sdk/operation:define-operation delete-api-key :shape-name
                                       "DeleteApiKey" :input
                                       delete-api-key-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/apikeys/{apiKey}" :code 202)

(smithy/sdk/operation:define-operation delete-authorizer :shape-name
                                       "DeleteAuthorizer" :input
                                       delete-authorizer-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/restapis/{restApiId}/authorizers/{authorizerId}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-base-path-mapping :shape-name
                                       "DeleteBasePathMapping" :input
                                       delete-base-path-mapping-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/domainnames/{domainName}/basepathmappings/{basePath}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-client-certificate :shape-name
                                       "DeleteClientCertificate" :input
                                       delete-client-certificate-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/clientcertificates/{clientCertificateId}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-deployment :shape-name
                                       "DeleteDeployment" :input
                                       delete-deployment-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/restapis/{restApiId}/deployments/{deploymentId}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-documentation-part :shape-name
                                       "DeleteDocumentationPart" :input
                                       delete-documentation-part-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/restapis/{restApiId}/documentation/parts/{documentationPartId}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-documentation-version :shape-name
                                       "DeleteDocumentationVersion" :input
                                       delete-documentation-version-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/restapis/{restApiId}/documentation/versions/{documentationVersion}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-domain-name :shape-name
                                       "DeleteDomainName" :input
                                       delete-domain-name-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/domainnames/{domainName}" :code 202)

(smithy/sdk/operation:define-operation delete-domain-name-access-association
                                       :shape-name
                                       "DeleteDomainNameAccessAssociation"
                                       :input
                                       delete-domain-name-access-association-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/domainnameaccessassociations/{domainNameAccessAssociationArn}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-gateway-response :shape-name
                                       "DeleteGatewayResponse" :input
                                       delete-gateway-response-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/restapis/{restApiId}/gatewayresponses/{responseType}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-integration :shape-name
                                       "DeleteIntegration" :input
                                       delete-integration-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-integration-response :shape-name
                                       "DeleteIntegrationResponse" :input
                                       delete-integration-response-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-method :shape-name "DeleteMethod"
                                       :input delete-method-request :output
                                       common-lisp:null :errors
                                       (conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-method-response :shape-name
                                       "DeleteMethodResponse" :input
                                       delete-method-response-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/responses/{statusCode}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-model :shape-name "DeleteModel"
                                       :input delete-model-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/restapis/{restApiId}/models/{modelName}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-request-validator :shape-name
                                       "DeleteRequestValidator" :input
                                       delete-request-validator-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/restapis/{restApiId}/requestvalidators/{requestValidatorId}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-resource :shape-name
                                       "DeleteResource" :input
                                       delete-resource-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/restapis/{restApiId}/resources/{resourceId}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-rest-api :shape-name
                                       "DeleteRestApi" :input
                                       delete-rest-api-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/restapis/{restApiId}" :code 202)

(smithy/sdk/operation:define-operation delete-stage :shape-name "DeleteStage"
                                       :input delete-stage-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/restapis/{restApiId}/stages/{stageName}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-usage-plan :shape-name
                                       "DeleteUsagePlan" :input
                                       delete-usage-plan-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/usageplans/{usagePlanId}" :code 202)

(smithy/sdk/operation:define-operation delete-usage-plan-key :shape-name
                                       "DeleteUsagePlanKey" :input
                                       delete-usage-plan-key-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/usageplans/{usagePlanId}/keys/{keyId}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-vpc-link :shape-name
                                       "DeleteVpcLink" :input
                                       delete-vpc-link-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/vpclinks/{vpcLinkId}" :code 202)

(smithy/sdk/operation:define-operation flush-stage-authorizers-cache
                                       :shape-name "FlushStageAuthorizersCache"
                                       :input
                                       flush-stage-authorizers-cache-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/restapis/{restApiId}/stages/{stageName}/cache/authorizers"
                                       :code 202)

(smithy/sdk/operation:define-operation flush-stage-cache :shape-name
                                       "FlushStageCache" :input
                                       flush-stage-cache-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/restapis/{restApiId}/stages/{stageName}/cache/data"
                                       :code 202)

(smithy/sdk/operation:define-operation generate-client-certificate :shape-name
                                       "GenerateClientCertificate" :input
                                       generate-client-certificate-request
                                       :output client-certificate :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/clientcertificates" :code 201)

(smithy/sdk/operation:define-operation get-account :shape-name "GetAccount"
                                       :input get-account-request :output
                                       account :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/account" :code 200)

(smithy/sdk/operation:define-operation get-api-key :shape-name "GetApiKey"
                                       :input get-api-key-request :output
                                       api-key :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/apikeys/{apiKey}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-api-keys :shape-name "GetApiKeys"
                                       :input get-api-keys-request :output
                                       api-keys :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/apikeys" :code 200)

(smithy/sdk/operation:define-operation get-authorizer :shape-name
                                       "GetAuthorizer" :input
                                       get-authorizer-request :output
                                       authorizer :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/authorizers/{authorizerId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-authorizers :shape-name
                                       "GetAuthorizers" :input
                                       get-authorizers-request :output
                                       authorizers :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/authorizers"
                                       :code 200)

(smithy/sdk/operation:define-operation get-base-path-mapping :shape-name
                                       "GetBasePathMapping" :input
                                       get-base-path-mapping-request :output
                                       base-path-mapping :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/domainnames/{domainName}/basepathmappings/{basePath}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-base-path-mappings :shape-name
                                       "GetBasePathMappings" :input
                                       get-base-path-mappings-request :output
                                       base-path-mappings :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/domainnames/{domainName}/basepathmappings"
                                       :code 200)

(smithy/sdk/operation:define-operation get-client-certificate :shape-name
                                       "GetClientCertificate" :input
                                       get-client-certificate-request :output
                                       client-certificate :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/clientcertificates/{clientCertificateId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-client-certificates :shape-name
                                       "GetClientCertificates" :input
                                       get-client-certificates-request :output
                                       client-certificates :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/clientcertificates"
                                       :code 200)

(smithy/sdk/operation:define-operation get-deployment :shape-name
                                       "GetDeployment" :input
                                       get-deployment-request :output
                                       deployment :errors
                                       (bad-request-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/deployments/{deploymentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-deployments :shape-name
                                       "GetDeployments" :input
                                       get-deployments-request :output
                                       deployments :errors
                                       (bad-request-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/deployments"
                                       :code 200)

(smithy/sdk/operation:define-operation get-documentation-part :shape-name
                                       "GetDocumentationPart" :input
                                       get-documentation-part-request :output
                                       documentation-part :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/documentation/parts/{documentationPartId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-documentation-parts :shape-name
                                       "GetDocumentationParts" :input
                                       get-documentation-parts-request :output
                                       documentation-parts :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/documentation/parts"
                                       :code 200)

(smithy/sdk/operation:define-operation get-documentation-version :shape-name
                                       "GetDocumentationVersion" :input
                                       get-documentation-version-request
                                       :output documentation-version :errors
                                       (not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/documentation/versions/{documentationVersion}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-documentation-versions :shape-name
                                       "GetDocumentationVersions" :input
                                       get-documentation-versions-request
                                       :output documentation-versions :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/documentation/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation get-domain-name :shape-name
                                       "GetDomainName" :input
                                       get-domain-name-request :output
                                       domain-name :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/domainnames/{domainName}" :code 200)

(smithy/sdk/operation:define-operation get-domain-name-access-associations
                                       :shape-name
                                       "GetDomainNameAccessAssociations" :input
                                       get-domain-name-access-associations-request
                                       :output domain-name-access-associations
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/domainnameaccessassociations" :code
                                       200)

(smithy/sdk/operation:define-operation get-domain-names :shape-name
                                       "GetDomainNames" :input
                                       get-domain-names-request :output
                                       domain-names :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/domainnames" :code
                                       200)

(smithy/sdk/operation:define-operation get-export :shape-name "GetExport"
                                       :input get-export-request :output
                                       export-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/stages/{stageName}/exports/{exportType}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-gateway-response :shape-name
                                       "GetGatewayResponse" :input
                                       get-gateway-response-request :output
                                       gateway-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/gatewayresponses/{responseType}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-gateway-responses :shape-name
                                       "GetGatewayResponses" :input
                                       get-gateway-responses-request :output
                                       gateway-responses :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/gatewayresponses"
                                       :code 200)

(smithy/sdk/operation:define-operation get-integration :shape-name
                                       "GetIntegration" :input
                                       get-integration-request :output
                                       integration :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration"
                                       :code 200)

(smithy/sdk/operation:define-operation get-integration-response :shape-name
                                       "GetIntegrationResponse" :input
                                       get-integration-response-request :output
                                       integration-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-method :shape-name "GetMethod"
                                       :input get-method-request :output method
                                       :errors
                                       (not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-method-response :shape-name
                                       "GetMethodResponse" :input
                                       get-method-response-request :output
                                       method-response :errors
                                       (not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/responses/{statusCode}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-model :shape-name "GetModel" :input
                                       get-model-request :output model :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/models/{modelName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-model-template :shape-name
                                       "GetModelTemplate" :input
                                       get-model-template-request :output
                                       template :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/models/{modelName}/default_template"
                                       :code 200)

(smithy/sdk/operation:define-operation get-models :shape-name "GetModels"
                                       :input get-models-request :output models
                                       :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/models" :code 200)

(smithy/sdk/operation:define-operation get-request-validator :shape-name
                                       "GetRequestValidator" :input
                                       get-request-validator-request :output
                                       request-validator :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/requestvalidators/{requestValidatorId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-request-validators :shape-name
                                       "GetRequestValidators" :input
                                       get-request-validators-request :output
                                       request-validators :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/requestvalidators"
                                       :code 200)

(smithy/sdk/operation:define-operation get-resource :shape-name "GetResource"
                                       :input get-resource-request :output
                                       resource :errors
                                       (not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/resources/{resourceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-resources :shape-name "GetResources"
                                       :input get-resources-request :output
                                       resources :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/resources" :code
                                       200)

(smithy/sdk/operation:define-operation get-rest-api :shape-name "GetRestApi"
                                       :input get-rest-api-request :output
                                       rest-api :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}" :code 200)

(smithy/sdk/operation:define-operation get-rest-apis :shape-name "GetRestApis"
                                       :input get-rest-apis-request :output
                                       rest-apis :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/restapis" :code 200)

(smithy/sdk/operation:define-operation get-sdk :shape-name "GetSdk" :input
                                       get-sdk-request :output sdk-response
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/stages/{stageName}/sdks/{sdkType}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-sdk-type :shape-name "GetSdkType"
                                       :input get-sdk-type-request :output
                                       sdk-type :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/sdktypes/{id}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-sdk-types :shape-name "GetSdkTypes"
                                       :input get-sdk-types-request :output
                                       sdk-types :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/sdktypes" :code 200)

(smithy/sdk/operation:define-operation get-stage :shape-name "GetStage" :input
                                       get-stage-request :output stage :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/stages/{stageName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-stages :shape-name "GetStages"
                                       :input get-stages-request :output stages
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/restapis/{restApiId}/stages" :code 200)

(smithy/sdk/operation:define-operation get-tags :shape-name "GetTags" :input
                                       get-tags-request :output tags :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-usage :shape-name "GetUsage" :input
                                       get-usage-request :output usage :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/usageplans/{usagePlanId}/usage" :code
                                       200)

(smithy/sdk/operation:define-operation get-usage-plan :shape-name
                                       "GetUsagePlan" :input
                                       get-usage-plan-request :output
                                       usage-plan :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/usageplans/{usagePlanId}" :code 200)

(smithy/sdk/operation:define-operation get-usage-plan-key :shape-name
                                       "GetUsagePlanKey" :input
                                       get-usage-plan-key-request :output
                                       usage-plan-key :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/usageplans/{usagePlanId}/keys/{keyId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-usage-plan-keys :shape-name
                                       "GetUsagePlanKeys" :input
                                       get-usage-plan-keys-request :output
                                       usage-plan-keys :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/usageplans/{usagePlanId}/keys" :code
                                       200)

(smithy/sdk/operation:define-operation get-usage-plans :shape-name
                                       "GetUsagePlans" :input
                                       get-usage-plans-request :output
                                       usage-plans :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/usageplans" :code
                                       200)

(smithy/sdk/operation:define-operation get-vpc-link :shape-name "GetVpcLink"
                                       :input get-vpc-link-request :output
                                       vpc-link :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/vpclinks/{vpcLinkId}" :code 200)

(smithy/sdk/operation:define-operation get-vpc-links :shape-name "GetVpcLinks"
                                       :input get-vpc-links-request :output
                                       vpc-links :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/vpclinks" :code 200)

(smithy/sdk/operation:define-operation import-api-keys :shape-name
                                       "ImportApiKeys" :input
                                       import-api-keys-request :output
                                       api-key-ids :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/apikeys?mode=import" :code 201)

(smithy/sdk/operation:define-operation import-documentation-parts :shape-name
                                       "ImportDocumentationParts" :input
                                       import-documentation-parts-request
                                       :output documentation-part-ids :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/restapis/{restApiId}/documentation/parts"
                                       :code 200)

(smithy/sdk/operation:define-operation import-rest-api :shape-name
                                       "ImportRestApi" :input
                                       import-rest-api-request :output rest-api
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/restapis?mode=import" :code 201)

(smithy/sdk/operation:define-operation put-gateway-response :shape-name
                                       "PutGatewayResponse" :input
                                       put-gateway-response-request :output
                                       gateway-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/restapis/{restApiId}/gatewayresponses/{responseType}"
                                       :code 201)

(smithy/sdk/operation:define-operation put-integration :shape-name
                                       "PutIntegration" :input
                                       put-integration-request :output
                                       integration :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration"
                                       :code 201)

(smithy/sdk/operation:define-operation put-integration-response :shape-name
                                       "PutIntegrationResponse" :input
                                       put-integration-response-request :output
                                       integration-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}"
                                       :code 201)

(smithy/sdk/operation:define-operation put-method :shape-name "PutMethod"
                                       :input put-method-request :output method
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}"
                                       :code 201)

(smithy/sdk/operation:define-operation put-method-response :shape-name
                                       "PutMethodResponse" :input
                                       put-method-response-request :output
                                       method-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/responses/{statusCode}"
                                       :code 201)

(smithy/sdk/operation:define-operation put-rest-api :shape-name "PutRestApi"
                                       :input put-rest-api-request :output
                                       rest-api :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/restapis/{restApiId}" :code 200)

(smithy/sdk/operation:define-operation reject-domain-name-access-association
                                       :shape-name
                                       "RejectDomainNameAccessAssociation"
                                       :input
                                       reject-domain-name-access-association-request
                                       :output common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/rejectdomainnameaccessassociations"
                                       :code 202)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri "/tags/{resourceArn}"
                                       :code 204)

(smithy/sdk/operation:define-operation test-invoke-authorizer :shape-name
                                       "TestInvokeAuthorizer" :input
                                       test-invoke-authorizer-request :output
                                       test-invoke-authorizer-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/restapis/{restApiId}/authorizers/{authorizerId}"
                                       :code 200)

(smithy/sdk/operation:define-operation test-invoke-method :shape-name
                                       "TestInvokeMethod" :input
                                       test-invoke-method-request :output
                                       test-invoke-method-response :errors
                                       (bad-request-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}"
                                       :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 204)

(smithy/sdk/operation:define-operation update-account :shape-name
                                       "UpdateAccount" :input
                                       update-account-request :output account
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri "/account" :code
                                       200)

(smithy/sdk/operation:define-operation update-api-key :shape-name
                                       "UpdateApiKey" :input
                                       update-api-key-request :output api-key
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri "/apikeys/{apiKey}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-authorizer :shape-name
                                       "UpdateAuthorizer" :input
                                       update-authorizer-request :output
                                       authorizer :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/restapis/{restApiId}/authorizers/{authorizerId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-base-path-mapping :shape-name
                                       "UpdateBasePathMapping" :input
                                       update-base-path-mapping-request :output
                                       base-path-mapping :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/domainnames/{domainName}/basepathmappings/{basePath}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-client-certificate :shape-name
                                       "UpdateClientCertificate" :input
                                       update-client-certificate-request
                                       :output client-certificate :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/clientcertificates/{clientCertificateId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-deployment :shape-name
                                       "UpdateDeployment" :input
                                       update-deployment-request :output
                                       deployment :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        service-unavailable-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/restapis/{restApiId}/deployments/{deploymentId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-documentation-part :shape-name
                                       "UpdateDocumentationPart" :input
                                       update-documentation-part-request
                                       :output documentation-part :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/restapis/{restApiId}/documentation/parts/{documentationPartId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-documentation-version :shape-name
                                       "UpdateDocumentationVersion" :input
                                       update-documentation-version-request
                                       :output documentation-version :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/restapis/{restApiId}/documentation/versions/{documentationVersion}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-domain-name :shape-name
                                       "UpdateDomainName" :input
                                       update-domain-name-request :output
                                       domain-name :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/domainnames/{domainName}" :code 200)

(smithy/sdk/operation:define-operation update-gateway-response :shape-name
                                       "UpdateGatewayResponse" :input
                                       update-gateway-response-request :output
                                       gateway-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/restapis/{restApiId}/gatewayresponses/{responseType}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-integration :shape-name
                                       "UpdateIntegration" :input
                                       update-integration-request :output
                                       integration :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration"
                                       :code 200)

(smithy/sdk/operation:define-operation update-integration-response :shape-name
                                       "UpdateIntegrationResponse" :input
                                       update-integration-response-request
                                       :output integration-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/integration/responses/{statusCode}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-method :shape-name "UpdateMethod"
                                       :input update-method-request :output
                                       method :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-method-response :shape-name
                                       "UpdateMethodResponse" :input
                                       update-method-response-request :output
                                       method-response :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/restapis/{restApiId}/resources/{resourceId}/methods/{httpMethod}/responses/{statusCode}"
                                       :code 201)

(smithy/sdk/operation:define-operation update-model :shape-name "UpdateModel"
                                       :input update-model-request :output
                                       model :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/restapis/{restApiId}/models/{modelName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-request-validator :shape-name
                                       "UpdateRequestValidator" :input
                                       update-request-validator-request :output
                                       request-validator :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/restapis/{restApiId}/requestvalidators/{requestValidatorId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-resource :shape-name
                                       "UpdateResource" :input
                                       update-resource-request :output resource
                                       :errors
                                       (bad-request-exception
                                        conflict-exception not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/restapis/{restApiId}/resources/{resourceId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-rest-api :shape-name
                                       "UpdateRestApi" :input
                                       update-rest-api-request :output rest-api
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/restapis/{restApiId}" :code 200)

(smithy/sdk/operation:define-operation update-stage :shape-name "UpdateStage"
                                       :input update-stage-request :output
                                       stage :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/restapis/{restApiId}/stages/{stageName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-usage :shape-name "UpdateUsage"
                                       :input update-usage-request :output
                                       usage :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/usageplans/{usagePlanId}/keys/{keyId}/usage"
                                       :code 200)

(smithy/sdk/operation:define-operation update-usage-plan :shape-name
                                       "UpdateUsagePlan" :input
                                       update-usage-plan-request :output
                                       usage-plan :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/usageplans/{usagePlanId}" :code 200)

(smithy/sdk/operation:define-operation update-vpc-link :shape-name
                                       "UpdateVpcLink" :input
                                       update-vpc-link-request :output vpc-link
                                       :errors
                                       (bad-request-exception
                                        conflict-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        too-many-requests-exception
                                        unauthorized-exception)
                                       :method "PATCH" :uri
                                       "/vpclinks/{vpcLinkId}" :code 200)
