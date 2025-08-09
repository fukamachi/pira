(uiop/package:define-package #:pira/appsync (:use)
                             (:export #:awsdeepdish-control-plane-service
                              #:additional-authentication-provider
                              #:additional-authentication-providers #:api
                              #:api-association #:api-cache #:api-cache-status
                              #:api-cache-type #:api-caching-behavior #:api-key
                              #:api-keys #:api-name #:apis #:app-sync-runtime
                              #:associate-api #:associate-merged-graphql-api
                              #:associate-source-graphql-api
                              #:association-status #:auth-mode #:auth-modes
                              #:auth-provider #:auth-providers
                              #:authentication-type #:authorization-config
                              #:authorization-type #:aws-iam-config
                              #:bad-request-detail #:bad-request-reason #:blob
                              #:boolean #:boolean-value
                              #:cache-health-metrics-config #:caching-config
                              #:caching-keys #:certificate-arn
                              #:channel-namespace #:channel-namespaces #:code
                              #:code-error #:code-error-column
                              #:code-error-line #:code-error-location
                              #:code-error-span #:code-errors #:cognito-config
                              #:cognito-user-pool-config
                              #:conflict-detection-type #:conflict-handler-type
                              #:context #:create-api #:create-api-cache
                              #:create-api-key #:create-channel-namespace
                              #:create-data-source #:create-domain-name
                              #:create-function #:create-graphql-api
                              #:create-resolver #:create-type #:data-source
                              #:data-source-introspection-model
                              #:data-source-introspection-model-field
                              #:data-source-introspection-model-field-type
                              #:data-source-introspection-model-field-type-values
                              #:data-source-introspection-model-fields
                              #:data-source-introspection-model-index
                              #:data-source-introspection-model-index-fields
                              #:data-source-introspection-model-indexes
                              #:data-source-introspection-models
                              #:data-source-introspection-result
                              #:data-source-introspection-status
                              #:data-source-level-metrics-behavior
                              #:data-source-level-metrics-config
                              #:data-source-type #:data-sources #:date
                              #:default-action #:delete-api #:delete-api-cache
                              #:delete-api-key #:delete-channel-namespace
                              #:delete-data-source #:delete-domain-name
                              #:delete-function #:delete-graphql-api
                              #:delete-resolver #:delete-type
                              #:delta-sync-config #:description
                              #:disassociate-api
                              #:disassociate-merged-graphql-api
                              #:disassociate-source-graphql-api #:domain-name
                              #:domain-name-config #:domain-name-configs
                              #:dynamodb-data-source-config
                              #:elasticsearch-data-source-config
                              #:enhanced-metrics-config
                              #:environment-variable-key
                              #:environment-variable-map
                              #:environment-variable-value #:error-detail
                              #:error-message #:evaluate-code
                              #:evaluate-code-error-detail
                              #:evaluate-mapping-template #:evaluation-result
                              #:event-bridge-data-source-config #:event-config
                              #:event-log-config #:event-log-level
                              #:field-log-level #:flush-api-cache
                              #:function-configuration #:functions
                              #:functions-ids #:get-api #:get-api-association
                              #:get-api-cache #:get-channel-namespace
                              #:get-data-source #:get-data-source-introspection
                              #:get-domain-name #:get-function
                              #:get-graphql-api
                              #:get-graphql-api-environment-variables
                              #:get-introspection-schema #:get-resolver
                              #:get-schema-creation-status
                              #:get-source-api-association #:get-type
                              #:graph-qlapi-introspection-config
                              #:graph-qlapi-type #:graph-qlapi-visibility
                              #:graphql-api #:graphql-apis #:handler-behavior
                              #:handler-config #:handler-configs
                              #:http-data-source-config #:integration
                              #:invoke-type #:lambda-authorizer-config
                              #:lambda-config #:lambda-conflict-handler-config
                              #:lambda-data-source-config #:list-api-keys
                              #:list-apis #:list-channel-namespaces
                              #:list-data-sources #:list-domain-names
                              #:list-functions #:list-graphql-apis
                              #:list-resolvers #:list-resolvers-by-function
                              #:list-source-api-associations
                              #:list-tags-for-resource #:list-types
                              #:list-types-by-association #:log-config #:logs
                              #:long #:map-of-string-to-string
                              #:mapping-template #:max-batch-size #:max-results
                              #:merge-type #:namespace #:open-idconnect-config
                              #:open-search-service-data-source-config
                              #:operation-level-metrics-config #:out-errors
                              #:output-type #:owner-contact #:ownership
                              #:pagination-token #:pipeline-config
                              #:put-graphql-api-environment-variables
                              #:query-depth-limit #:rds-data-api-config
                              #:rds-data-api-config-database-name
                              #:rds-data-api-config-resource-arn
                              #:rds-data-api-config-secret-arn
                              #:rds-http-endpoint-config
                              #:relational-database-data-source-config
                              #:relational-database-source-type #:resolver
                              #:resolver-count-limit #:resolver-kind
                              #:resolver-level-metrics-behavior
                              #:resolver-level-metrics-config #:resolvers
                              #:resource-arn #:resource-name #:runtime-name
                              #:schema-status #:source-api-association
                              #:source-api-association-config
                              #:source-api-association-status
                              #:source-api-association-summary
                              #:source-api-association-summary-list
                              #:start-data-source-introspection
                              #:start-schema-creation #:start-schema-merge
                              #:stash #:string #:sync-config #:ttl #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:template #:timestamp #:type
                              #:type-definition-format #:type-list
                              #:untag-resource #:update-api #:update-api-cache
                              #:update-api-key #:update-channel-namespace
                              #:update-data-source #:update-domain-name
                              #:update-function #:update-graphql-api
                              #:update-resolver #:update-source-api-association
                              #:update-type #:user-pool-config))
(common-lisp:in-package #:pira/appsync)

(smithy/sdk/service:define-service awsdeepdish-control-plane-service
                                   :shape-name "AWSDeepdishControlPlaneService"
                                   :version "2017-07-25" :title "AWS AppSync"
                                   :xml-namespace
                                   '(:uri "http://appsync.amazonaws.com"
                                     :prefix common-lisp:nil)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "AppSync")
                                      ("arnNamespace" . "appsync")
                                      ("cloudFormationName" . "AppSync")
                                      ("cloudTrailEventSource"
                                       . "appsync.amazonaws.com")
                                      ("endpointPrefix" . "appsync"))
                                     ("aws.auth#sigv4" ("name" . "appsync"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure additional-authentication-provider
                                    common-lisp:nil
                                    ((authentication-type :target-type
                                      authentication-type :member-name
                                      "authenticationType")
                                     (open-idconnect-config :target-type
                                      open-idconnect-config :member-name
                                      "openIDConnectConfig")
                                     (user-pool-config :target-type
                                      cognito-user-pool-config :member-name
                                      "userPoolConfig")
                                     (lambda-authorizer-config :target-type
                                      lambda-authorizer-config :member-name
                                      "lambdaAuthorizerConfig"))
                                    (:shape-name
                                     "AdditionalAuthenticationProvider"))

(smithy/sdk/shapes:define-list additional-authentication-providers :member
                               additional-authentication-provider)

(smithy/sdk/shapes:define-structure api common-lisp:nil
                                    ((api-id :target-type string :member-name
                                      "apiId")
                                     (name :target-type api-name :member-name
                                      "name")
                                     (owner-contact :target-type owner-contact
                                      :member-name "ownerContact")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (dns :target-type map-of-string-to-string
                                      :member-name "dns")
                                     (api-arn :target-type string :member-name
                                      "apiArn")
                                     (created :target-type timestamp
                                      :member-name "created")
                                     (xray-enabled :target-type boolean
                                      :member-name "xrayEnabled")
                                     (waf-web-acl-arn :target-type string
                                      :member-name "wafWebAclArn")
                                     (event-config :target-type event-config
                                      :member-name "eventConfig"))
                                    (:shape-name "Api"))

(smithy/sdk/shapes:define-structure api-association common-lisp:nil
                                    ((domain-name :target-type domain-name
                                      :member-name "domainName")
                                     (api-id :target-type string :member-name
                                      "apiId")
                                     (association-status :target-type
                                      association-status :member-name
                                      "associationStatus")
                                     (deployment-detail :target-type string
                                      :member-name "deploymentDetail"))
                                    (:shape-name "ApiAssociation"))

(smithy/sdk/shapes:define-structure api-cache common-lisp:nil
                                    ((ttl :target-type long :member-name "ttl")
                                     (api-caching-behavior :target-type
                                      api-caching-behavior :member-name
                                      "apiCachingBehavior")
                                     (transit-encryption-enabled :target-type
                                      boolean :member-name
                                      "transitEncryptionEnabled")
                                     (at-rest-encryption-enabled :target-type
                                      boolean :member-name
                                      "atRestEncryptionEnabled")
                                     (type :target-type api-cache-type
                                      :member-name "type")
                                     (status :target-type api-cache-status
                                      :member-name "status")
                                     (health-metrics-config :target-type
                                      cache-health-metrics-config :member-name
                                      "healthMetricsConfig"))
                                    (:shape-name "ApiCache"))

(smithy/sdk/shapes:define-enum api-cache-status
    common-lisp:nil
  (:available "AVAILABLE")
  (:creating "CREATING")
  (:deleting "DELETING")
  (:modifying "MODIFYING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum api-cache-type
    common-lisp:nil
  (:t2-small "T2_SMALL")
  (:t2-medium "T2_MEDIUM")
  (:r4-large "R4_LARGE")
  (:r4-xlarge "R4_XLARGE")
  (:r4-2xlarge "R4_2XLARGE")
  (:r4-4xlarge "R4_4XLARGE")
  (:r4-8xlarge "R4_8XLARGE")
  (:small "SMALL")
  (:medium "MEDIUM")
  (:large "LARGE")
  (:xlarge "XLARGE")
  (:large-2x "LARGE_2X")
  (:large-4x "LARGE_4X")
  (:large-8x "LARGE_8X")
  (:large-12x "LARGE_12X"))

(smithy/sdk/shapes:define-enum api-caching-behavior
    common-lisp:nil
  (:full-request-caching "FULL_REQUEST_CACHING")
  (:per-resolver-caching "PER_RESOLVER_CACHING")
  (:operation-level-caching "OPERATION_LEVEL_CACHING"))

(smithy/sdk/shapes:define-structure api-key common-lisp:nil
                                    ((id :target-type string :member-name "id")
                                     (description :target-type string
                                      :member-name "description")
                                     (expires :target-type long :member-name
                                      "expires")
                                     (deletes :target-type long :member-name
                                      "deletes"))
                                    (:shape-name "ApiKey"))

(smithy/sdk/shapes:define-error api-key-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ApiKeyLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error api-key-validity-out-of-bounds-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name
                                 "ApiKeyValidityOutOfBoundsException")
                                (:error-code 400))

(smithy/sdk/shapes:define-list api-keys :member api-key)

(smithy/sdk/shapes:define-error api-limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ApiLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type api-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list apis :member api)

(smithy/sdk/shapes:define-structure app-sync-runtime common-lisp:nil
                                    ((name :target-type runtime-name :required
                                      common-lisp:t :member-name "name")
                                     (runtime-version :target-type string
                                      :required common-lisp:t :member-name
                                      "runtimeVersion"))
                                    (:shape-name "AppSyncRuntime"))

(smithy/sdk/shapes:define-input associate-api-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "domainName" :http-label common-lisp:t)
                                 (api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"))
                                (:shape-name "AssociateApiRequest"))

(smithy/sdk/shapes:define-output associate-api-response common-lisp:nil
                                 ((api-association :target-type api-association
                                   :member-name "apiAssociation"))
                                 (:shape-name "AssociateApiResponse"))

(smithy/sdk/shapes:define-input associate-merged-graphql-api-request
                                common-lisp:nil
                                ((source-api-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "sourceApiIdentifier" :http-label
                                  common-lisp:t)
                                 (merged-api-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "mergedApiIdentifier")
                                 (description :target-type string :member-name
                                  "description")
                                 (source-api-association-config :target-type
                                  source-api-association-config :member-name
                                  "sourceApiAssociationConfig"))
                                (:shape-name
                                 "AssociateMergedGraphqlApiRequest"))

(smithy/sdk/shapes:define-output associate-merged-graphql-api-response
                                 common-lisp:nil
                                 ((source-api-association :target-type
                                   source-api-association :member-name
                                   "sourceApiAssociation"))
                                 (:shape-name
                                  "AssociateMergedGraphqlApiResponse"))

(smithy/sdk/shapes:define-input associate-source-graphql-api-request
                                common-lisp:nil
                                ((merged-api-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "mergedApiIdentifier" :http-label
                                  common-lisp:t)
                                 (source-api-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "sourceApiIdentifier")
                                 (description :target-type string :member-name
                                  "description")
                                 (source-api-association-config :target-type
                                  source-api-association-config :member-name
                                  "sourceApiAssociationConfig"))
                                (:shape-name
                                 "AssociateSourceGraphqlApiRequest"))

(smithy/sdk/shapes:define-output associate-source-graphql-api-response
                                 common-lisp:nil
                                 ((source-api-association :target-type
                                   source-api-association :member-name
                                   "sourceApiAssociation"))
                                 (:shape-name
                                  "AssociateSourceGraphqlApiResponse"))

(smithy/sdk/shapes:define-enum association-status
    common-lisp:nil
  (:processing "PROCESSING")
  (:failed "FAILED")
  (:success "SUCCESS"))

(smithy/sdk/shapes:define-structure auth-mode common-lisp:nil
                                    ((auth-type :target-type
                                      authentication-type :required
                                      common-lisp:t :member-name "authType"))
                                    (:shape-name "AuthMode"))

(smithy/sdk/shapes:define-list auth-modes :member auth-mode)

(smithy/sdk/shapes:define-structure auth-provider common-lisp:nil
                                    ((auth-type :target-type
                                      authentication-type :required
                                      common-lisp:t :member-name "authType")
                                     (cognito-config :target-type
                                      cognito-config :member-name
                                      "cognitoConfig")
                                     (open-idconnect-config :target-type
                                      open-idconnect-config :member-name
                                      "openIDConnectConfig")
                                     (lambda-authorizer-config :target-type
                                      lambda-authorizer-config :member-name
                                      "lambdaAuthorizerConfig"))
                                    (:shape-name "AuthProvider"))

(smithy/sdk/shapes:define-list auth-providers :member auth-provider)

(smithy/sdk/shapes:define-enum authentication-type
    common-lisp:nil
  (:api-key "API_KEY")
  (:aws-iam "AWS_IAM")
  (:amazon-cognito-user-pools "AMAZON_COGNITO_USER_POOLS")
  (:openid-connect "OPENID_CONNECT")
  (:aws-lambda "AWS_LAMBDA"))

(smithy/sdk/shapes:define-structure authorization-config common-lisp:nil
                                    ((authorization-type :target-type
                                      authorization-type :required
                                      common-lisp:t :member-name
                                      "authorizationType")
                                     (aws-iam-config :target-type
                                      aws-iam-config :member-name
                                      "awsIamConfig"))
                                    (:shape-name "AuthorizationConfig"))

(smithy/sdk/shapes:define-enum authorization-type
    common-lisp:nil
  (:aws-iam "AWS_IAM"))

(smithy/sdk/shapes:define-structure aws-iam-config common-lisp:nil
                                    ((signing-region :target-type string
                                      :member-name "signingRegion")
                                     (signing-service-name :target-type string
                                      :member-name "signingServiceName"))
                                    (:shape-name "AwsIamConfig"))

(smithy/sdk/shapes:define-structure bad-request-detail common-lisp:nil
                                    ((code-errors :target-type code-errors
                                      :member-name "codeErrors"))
                                    (:shape-name "BadRequestDetail"))

(smithy/sdk/shapes:define-error bad-request-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message")
                                 (reason :target-type bad-request-reason
                                  :member-name "reason")
                                 (detail :target-type bad-request-detail
                                  :member-name "detail"))
                                (:shape-name "BadRequestException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum bad-request-reason
    common-lisp:nil
  (:code-error "CODE_ERROR"))

(smithy/sdk/shapes:define-type blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type boolean-value smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum cache-health-metrics-config
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-structure caching-config common-lisp:nil
                                    ((ttl :target-type long :required
                                      common-lisp:t :member-name "ttl")
                                     (caching-keys :target-type caching-keys
                                      :member-name "cachingKeys"))
                                    (:shape-name "CachingConfig"))

(smithy/sdk/shapes:define-list caching-keys :member string)

(smithy/sdk/shapes:define-type certificate-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure channel-namespace common-lisp:nil
                                    ((api-id :target-type string :member-name
                                      "apiId")
                                     (name :target-type namespace :member-name
                                      "name")
                                     (subscribe-auth-modes :target-type
                                      auth-modes :member-name
                                      "subscribeAuthModes")
                                     (publish-auth-modes :target-type
                                      auth-modes :member-name
                                      "publishAuthModes")
                                     (code-handlers :target-type code
                                      :member-name "codeHandlers")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (channel-namespace-arn :target-type string
                                      :member-name "channelNamespaceArn")
                                     (created :target-type timestamp
                                      :member-name "created")
                                     (last-modified :target-type timestamp
                                      :member-name "lastModified")
                                     (handler-configs :target-type
                                      handler-configs :member-name
                                      "handlerConfigs"))
                                    (:shape-name "ChannelNamespace"))

(smithy/sdk/shapes:define-list channel-namespaces :member channel-namespace)

(smithy/sdk/shapes:define-type code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure code-error common-lisp:nil
                                    ((error-type :target-type string
                                      :member-name "errorType")
                                     (value :target-type string :member-name
                                      "value")
                                     (location :target-type code-error-location
                                      :member-name "location"))
                                    (:shape-name "CodeError"))

(smithy/sdk/shapes:define-type code-error-column
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type code-error-line smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure code-error-location common-lisp:nil
                                    ((line :target-type code-error-line
                                      :member-name "line")
                                     (column :target-type code-error-column
                                      :member-name "column")
                                     (span :target-type code-error-span
                                      :member-name "span"))
                                    (:shape-name "CodeErrorLocation"))

(smithy/sdk/shapes:define-type code-error-span smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list code-errors :member code-error)

(smithy/sdk/shapes:define-structure cognito-config common-lisp:nil
                                    ((user-pool-id :target-type string
                                      :required common-lisp:t :member-name
                                      "userPoolId")
                                     (aws-region :target-type string :required
                                      common-lisp:t :member-name "awsRegion")
                                     (app-id-client-regex :target-type string
                                      :member-name "appIdClientRegex"))
                                    (:shape-name "CognitoConfig"))

(smithy/sdk/shapes:define-structure cognito-user-pool-config common-lisp:nil
                                    ((user-pool-id :target-type string
                                      :required common-lisp:t :member-name
                                      "userPoolId")
                                     (aws-region :target-type string :required
                                      common-lisp:t :member-name "awsRegion")
                                     (app-id-client-regex :target-type string
                                      :member-name "appIdClientRegex"))
                                    (:shape-name "CognitoUserPoolConfig"))

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum conflict-detection-type
    common-lisp:nil
  (:version "VERSION")
  (:none "NONE"))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum conflict-handler-type
    common-lisp:nil
  (:optimistic-concurrency "OPTIMISTIC_CONCURRENCY")
  (:lambda "LAMBDA")
  (:automerge "AUTOMERGE")
  (:none "NONE"))

(smithy/sdk/shapes:define-type context smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-api-cache-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (ttl :target-type long :required common-lisp:t
                                  :member-name "ttl")
                                 (transit-encryption-enabled :target-type
                                  boolean :member-name
                                  "transitEncryptionEnabled")
                                 (at-rest-encryption-enabled :target-type
                                  boolean :member-name
                                  "atRestEncryptionEnabled")
                                 (api-caching-behavior :target-type
                                  api-caching-behavior :required common-lisp:t
                                  :member-name "apiCachingBehavior")
                                 (type :target-type api-cache-type :required
                                  common-lisp:t :member-name "type")
                                 (health-metrics-config :target-type
                                  cache-health-metrics-config :member-name
                                  "healthMetricsConfig"))
                                (:shape-name "CreateApiCacheRequest"))

(smithy/sdk/shapes:define-output create-api-cache-response common-lisp:nil
                                 ((api-cache :target-type api-cache
                                   :member-name "apiCache"))
                                 (:shape-name "CreateApiCacheResponse"))

(smithy/sdk/shapes:define-input create-api-key-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (description :target-type string :member-name
                                  "description")
                                 (expires :target-type long :member-name
                                  "expires"))
                                (:shape-name "CreateApiKeyRequest"))

(smithy/sdk/shapes:define-output create-api-key-response common-lisp:nil
                                 ((api-key :target-type api-key :member-name
                                   "apiKey"))
                                 (:shape-name "CreateApiKeyResponse"))

(smithy/sdk/shapes:define-input create-api-request common-lisp:nil
                                ((name :target-type api-name :required
                                  common-lisp:t :member-name "name")
                                 (owner-contact :target-type string
                                  :member-name "ownerContact")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (event-config :target-type event-config
                                  :member-name "eventConfig"))
                                (:shape-name "CreateApiRequest"))

(smithy/sdk/shapes:define-output create-api-response common-lisp:nil
                                 ((api :target-type api :member-name "api"))
                                 (:shape-name "CreateApiResponse"))

(smithy/sdk/shapes:define-input create-channel-namespace-request
                                common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (name :target-type namespace :required
                                  common-lisp:t :member-name "name")
                                 (subscribe-auth-modes :target-type auth-modes
                                  :member-name "subscribeAuthModes")
                                 (publish-auth-modes :target-type auth-modes
                                  :member-name "publishAuthModes")
                                 (code-handlers :target-type code :member-name
                                  "codeHandlers")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (handler-configs :target-type handler-configs
                                  :member-name "handlerConfigs"))
                                (:shape-name "CreateChannelNamespaceRequest"))

(smithy/sdk/shapes:define-output create-channel-namespace-response
                                 common-lisp:nil
                                 ((channel-namespace :target-type
                                   channel-namespace :member-name
                                   "channelNamespace"))
                                 (:shape-name "CreateChannelNamespaceResponse"))

(smithy/sdk/shapes:define-input create-data-source-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (name :target-type resource-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type string :member-name
                                  "description")
                                 (type :target-type data-source-type :required
                                  common-lisp:t :member-name "type")
                                 (service-role-arn :target-type string
                                  :member-name "serviceRoleArn")
                                 (dynamodb-config :target-type
                                  dynamodb-data-source-config :member-name
                                  "dynamodbConfig")
                                 (lambda-config :target-type
                                  lambda-data-source-config :member-name
                                  "lambdaConfig")
                                 (elasticsearch-config :target-type
                                  elasticsearch-data-source-config :member-name
                                  "elasticsearchConfig")
                                 (open-search-service-config :target-type
                                  open-search-service-data-source-config
                                  :member-name "openSearchServiceConfig")
                                 (http-config :target-type
                                  http-data-source-config :member-name
                                  "httpConfig")
                                 (relational-database-config :target-type
                                  relational-database-data-source-config
                                  :member-name "relationalDatabaseConfig")
                                 (event-bridge-config :target-type
                                  event-bridge-data-source-config :member-name
                                  "eventBridgeConfig")
                                 (metrics-config :target-type
                                  data-source-level-metrics-config :member-name
                                  "metricsConfig"))
                                (:shape-name "CreateDataSourceRequest"))

(smithy/sdk/shapes:define-output create-data-source-response common-lisp:nil
                                 ((data-source :target-type data-source
                                   :member-name "dataSource"))
                                 (:shape-name "CreateDataSourceResponse"))

(smithy/sdk/shapes:define-input create-domain-name-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "domainName")
                                 (certificate-arn :target-type certificate-arn
                                  :required common-lisp:t :member-name
                                  "certificateArn")
                                 (description :target-type description
                                  :member-name "description")
                                 (tags :target-type tag-map :member-name
                                  "tags"))
                                (:shape-name "CreateDomainNameRequest"))

(smithy/sdk/shapes:define-output create-domain-name-response common-lisp:nil
                                 ((domain-name-config :target-type
                                   domain-name-config :member-name
                                   "domainNameConfig"))
                                 (:shape-name "CreateDomainNameResponse"))

(smithy/sdk/shapes:define-input create-function-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (name :target-type resource-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type string :member-name
                                  "description")
                                 (data-source-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "dataSourceName")
                                 (request-mapping-template :target-type
                                  mapping-template :member-name
                                  "requestMappingTemplate")
                                 (response-mapping-template :target-type
                                  mapping-template :member-name
                                  "responseMappingTemplate")
                                 (function-version :target-type string
                                  :member-name "functionVersion")
                                 (sync-config :target-type sync-config
                                  :member-name "syncConfig")
                                 (max-batch-size :target-type max-batch-size
                                  :member-name "maxBatchSize")
                                 (runtime :target-type app-sync-runtime
                                  :member-name "runtime")
                                 (code :target-type code :member-name "code"))
                                (:shape-name "CreateFunctionRequest"))

(smithy/sdk/shapes:define-output create-function-response common-lisp:nil
                                 ((function-configuration :target-type
                                   function-configuration :member-name
                                   "functionConfiguration"))
                                 (:shape-name "CreateFunctionResponse"))

(smithy/sdk/shapes:define-input create-graphql-api-request common-lisp:nil
                                ((name :target-type string :required
                                  common-lisp:t :member-name "name")
                                 (log-config :target-type log-config
                                  :member-name "logConfig")
                                 (authentication-type :target-type
                                  authentication-type :required common-lisp:t
                                  :member-name "authenticationType")
                                 (user-pool-config :target-type
                                  user-pool-config :member-name
                                  "userPoolConfig")
                                 (open-idconnect-config :target-type
                                  open-idconnect-config :member-name
                                  "openIDConnectConfig")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (additional-authentication-providers
                                  :target-type
                                  additional-authentication-providers
                                  :member-name
                                  "additionalAuthenticationProviders")
                                 (xray-enabled :target-type boolean
                                  :member-name "xrayEnabled")
                                 (lambda-authorizer-config :target-type
                                  lambda-authorizer-config :member-name
                                  "lambdaAuthorizerConfig")
                                 (api-type :target-type graph-qlapi-type
                                  :member-name "apiType")
                                 (merged-api-execution-role-arn :target-type
                                  string :member-name
                                  "mergedApiExecutionRoleArn")
                                 (visibility :target-type
                                  graph-qlapi-visibility :member-name
                                  "visibility")
                                 (owner-contact :target-type string
                                  :member-name "ownerContact")
                                 (introspection-config :target-type
                                  graph-qlapi-introspection-config :member-name
                                  "introspectionConfig")
                                 (query-depth-limit :target-type
                                  query-depth-limit :member-name
                                  "queryDepthLimit")
                                 (resolver-count-limit :target-type
                                  resolver-count-limit :member-name
                                  "resolverCountLimit")
                                 (enhanced-metrics-config :target-type
                                  enhanced-metrics-config :member-name
                                  "enhancedMetricsConfig"))
                                (:shape-name "CreateGraphqlApiRequest"))

(smithy/sdk/shapes:define-output create-graphql-api-response common-lisp:nil
                                 ((graphql-api :target-type graphql-api
                                   :member-name "graphqlApi"))
                                 (:shape-name "CreateGraphqlApiResponse"))

(smithy/sdk/shapes:define-input create-resolver-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (type-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "typeName" :http-label common-lisp:t)
                                 (field-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "fieldName")
                                 (data-source-name :target-type resource-name
                                  :member-name "dataSourceName")
                                 (request-mapping-template :target-type
                                  mapping-template :member-name
                                  "requestMappingTemplate")
                                 (response-mapping-template :target-type
                                  mapping-template :member-name
                                  "responseMappingTemplate")
                                 (kind :target-type resolver-kind :member-name
                                  "kind")
                                 (pipeline-config :target-type pipeline-config
                                  :member-name "pipelineConfig")
                                 (sync-config :target-type sync-config
                                  :member-name "syncConfig")
                                 (caching-config :target-type caching-config
                                  :member-name "cachingConfig")
                                 (max-batch-size :target-type max-batch-size
                                  :member-name "maxBatchSize")
                                 (runtime :target-type app-sync-runtime
                                  :member-name "runtime")
                                 (code :target-type code :member-name "code")
                                 (metrics-config :target-type
                                  resolver-level-metrics-config :member-name
                                  "metricsConfig"))
                                (:shape-name "CreateResolverRequest"))

(smithy/sdk/shapes:define-output create-resolver-response common-lisp:nil
                                 ((resolver :target-type resolver :member-name
                                   "resolver"))
                                 (:shape-name "CreateResolverResponse"))

(smithy/sdk/shapes:define-input create-type-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (definition :target-type string :required
                                  common-lisp:t :member-name "definition")
                                 (format :target-type type-definition-format
                                  :required common-lisp:t :member-name
                                  "format"))
                                (:shape-name "CreateTypeRequest"))

(smithy/sdk/shapes:define-output create-type-response common-lisp:nil
                                 ((type :target-type type :member-name "type"))
                                 (:shape-name "CreateTypeResponse"))

(smithy/sdk/shapes:define-structure data-source common-lisp:nil
                                    ((data-source-arn :target-type string
                                      :member-name "dataSourceArn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (description :target-type string
                                      :member-name "description")
                                     (type :target-type data-source-type
                                      :member-name "type")
                                     (service-role-arn :target-type string
                                      :member-name "serviceRoleArn")
                                     (dynamodb-config :target-type
                                      dynamodb-data-source-config :member-name
                                      "dynamodbConfig")
                                     (lambda-config :target-type
                                      lambda-data-source-config :member-name
                                      "lambdaConfig")
                                     (elasticsearch-config :target-type
                                      elasticsearch-data-source-config
                                      :member-name "elasticsearchConfig")
                                     (open-search-service-config :target-type
                                      open-search-service-data-source-config
                                      :member-name "openSearchServiceConfig")
                                     (http-config :target-type
                                      http-data-source-config :member-name
                                      "httpConfig")
                                     (relational-database-config :target-type
                                      relational-database-data-source-config
                                      :member-name "relationalDatabaseConfig")
                                     (event-bridge-config :target-type
                                      event-bridge-data-source-config
                                      :member-name "eventBridgeConfig")
                                     (metrics-config :target-type
                                      data-source-level-metrics-config
                                      :member-name "metricsConfig"))
                                    (:shape-name "DataSource"))

(smithy/sdk/shapes:define-structure data-source-introspection-model
                                    common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (fields :target-type
                                      data-source-introspection-model-fields
                                      :member-name "fields")
                                     (primary-key :target-type
                                      data-source-introspection-model-index
                                      :member-name "primaryKey")
                                     (indexes :target-type
                                      data-source-introspection-model-indexes
                                      :member-name "indexes")
                                     (sdl :target-type string :member-name
                                      "sdl"))
                                    (:shape-name
                                     "DataSourceIntrospectionModel"))

(smithy/sdk/shapes:define-structure data-source-introspection-model-field
                                    common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (type :target-type
                                      data-source-introspection-model-field-type
                                      :member-name "type")
                                     (length :target-type long :member-name
                                      "length"))
                                    (:shape-name
                                     "DataSourceIntrospectionModelField"))

(smithy/sdk/shapes:define-structure data-source-introspection-model-field-type
                                    common-lisp:nil
                                    ((kind :target-type string :member-name
                                      "kind")
                                     (name :target-type string :member-name
                                      "name")
                                     (type :target-type
                                      data-source-introspection-model-field-type
                                      :member-name "type")
                                     (values :target-type
                                      data-source-introspection-model-field-type-values
                                      :member-name "values"))
                                    (:shape-name
                                     "DataSourceIntrospectionModelFieldType"))

(smithy/sdk/shapes:define-list
 data-source-introspection-model-field-type-values :member string)

(smithy/sdk/shapes:define-list data-source-introspection-model-fields :member
                               data-source-introspection-model-field)

(smithy/sdk/shapes:define-structure data-source-introspection-model-index
                                    common-lisp:nil
                                    ((name :target-type string :member-name
                                      "name")
                                     (fields :target-type
                                      data-source-introspection-model-index-fields
                                      :member-name "fields"))
                                    (:shape-name
                                     "DataSourceIntrospectionModelIndex"))

(smithy/sdk/shapes:define-list data-source-introspection-model-index-fields
                               :member string)

(smithy/sdk/shapes:define-list data-source-introspection-model-indexes :member
                               data-source-introspection-model-index)

(smithy/sdk/shapes:define-list data-source-introspection-models :member
                               data-source-introspection-model)

(smithy/sdk/shapes:define-structure data-source-introspection-result
                                    common-lisp:nil
                                    ((models :target-type
                                      data-source-introspection-models
                                      :member-name "models")
                                     (next-token :target-type pagination-token
                                      :member-name "nextToken"))
                                    (:shape-name
                                     "DataSourceIntrospectionResult"))

(smithy/sdk/shapes:define-enum data-source-introspection-status
    common-lisp:nil
  (:processing "PROCESSING")
  (:failed "FAILED")
  (:success "SUCCESS"))

(smithy/sdk/shapes:define-enum data-source-level-metrics-behavior
    common-lisp:nil
  (:full-request-data-source-metrics "FULL_REQUEST_DATA_SOURCE_METRICS")
  (:per-data-source-metrics "PER_DATA_SOURCE_METRICS"))

(smithy/sdk/shapes:define-enum data-source-level-metrics-config
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum data-source-type
    common-lisp:nil
  (:aws-lambda "AWS_LAMBDA")
  (:amazon-dynamodb "AMAZON_DYNAMODB")
  (:amazon-elasticsearch "AMAZON_ELASTICSEARCH")
  (:none "NONE")
  (:http "HTTP")
  (:relational-database "RELATIONAL_DATABASE")
  (:amazon-opensearch-service "AMAZON_OPENSEARCH_SERVICE")
  (:amazon-eventbridge "AMAZON_EVENTBRIDGE")
  (:amazon-bedrock-runtime "AMAZON_BEDROCK_RUNTIME"))

(smithy/sdk/shapes:define-list data-sources :member data-source)

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-enum default-action
    common-lisp:nil
  (:allow "ALLOW")
  (:deny "DENY"))

(smithy/sdk/shapes:define-input delete-api-cache-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteApiCacheRequest"))

(smithy/sdk/shapes:define-output delete-api-cache-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteApiCacheResponse"))

(smithy/sdk/shapes:define-input delete-api-key-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteApiKeyRequest"))

(smithy/sdk/shapes:define-output delete-api-key-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteApiKeyResponse"))

(smithy/sdk/shapes:define-input delete-api-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteApiRequest"))

(smithy/sdk/shapes:define-output delete-api-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteApiResponse"))

(smithy/sdk/shapes:define-input delete-channel-namespace-request
                                common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (name :target-type namespace :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteChannelNamespaceRequest"))

(smithy/sdk/shapes:define-output delete-channel-namespace-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteChannelNamespaceResponse"))

(smithy/sdk/shapes:define-input delete-data-source-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (name :target-type resource-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteDataSourceRequest"))

(smithy/sdk/shapes:define-output delete-data-source-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDataSourceResponse"))

(smithy/sdk/shapes:define-input delete-domain-name-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "domainName" :http-label common-lisp:t))
                                (:shape-name "DeleteDomainNameRequest"))

(smithy/sdk/shapes:define-output delete-domain-name-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteDomainNameResponse"))

(smithy/sdk/shapes:define-input delete-function-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (function-id :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "functionId" :http-label common-lisp:t))
                                (:shape-name "DeleteFunctionRequest"))

(smithy/sdk/shapes:define-output delete-function-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteFunctionResponse"))

(smithy/sdk/shapes:define-input delete-graphql-api-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteGraphqlApiRequest"))

(smithy/sdk/shapes:define-output delete-graphql-api-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteGraphqlApiResponse"))

(smithy/sdk/shapes:define-input delete-resolver-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (type-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "typeName" :http-label common-lisp:t)
                                 (field-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "fieldName" :http-label common-lisp:t))
                                (:shape-name "DeleteResolverRequest"))

(smithy/sdk/shapes:define-output delete-resolver-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteResolverResponse"))

(smithy/sdk/shapes:define-input delete-type-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (type-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "typeName" :http-label common-lisp:t))
                                (:shape-name "DeleteTypeRequest"))

(smithy/sdk/shapes:define-output delete-type-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteTypeResponse"))

(smithy/sdk/shapes:define-structure delta-sync-config common-lisp:nil
                                    ((base-table-ttl :target-type long
                                      :member-name "baseTableTTL")
                                     (delta-sync-table-name :target-type string
                                      :member-name "deltaSyncTableName")
                                     (delta-sync-table-ttl :target-type long
                                      :member-name "deltaSyncTableTTL"))
                                    (:shape-name "DeltaSyncConfig"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input disassociate-api-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "domainName" :http-label common-lisp:t))
                                (:shape-name "DisassociateApiRequest"))

(smithy/sdk/shapes:define-output disassociate-api-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DisassociateApiResponse"))

(smithy/sdk/shapes:define-input disassociate-merged-graphql-api-request
                                common-lisp:nil
                                ((source-api-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "sourceApiIdentifier" :http-label
                                  common-lisp:t)
                                 (association-id :target-type string :required
                                  common-lisp:t :member-name "associationId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DisassociateMergedGraphqlApiRequest"))

(smithy/sdk/shapes:define-output disassociate-merged-graphql-api-response
                                 common-lisp:nil
                                 ((source-api-association-status :target-type
                                   source-api-association-status :member-name
                                   "sourceApiAssociationStatus"))
                                 (:shape-name
                                  "DisassociateMergedGraphqlApiResponse"))

(smithy/sdk/shapes:define-input disassociate-source-graphql-api-request
                                common-lisp:nil
                                ((merged-api-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "mergedApiIdentifier" :http-label
                                  common-lisp:t)
                                 (association-id :target-type string :required
                                  common-lisp:t :member-name "associationId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "DisassociateSourceGraphqlApiRequest"))

(smithy/sdk/shapes:define-output disassociate-source-graphql-api-response
                                 common-lisp:nil
                                 ((source-api-association-status :target-type
                                   source-api-association-status :member-name
                                   "sourceApiAssociationStatus"))
                                 (:shape-name
                                  "DisassociateSourceGraphqlApiResponse"))

(smithy/sdk/shapes:define-type domain-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure domain-name-config common-lisp:nil
                                    ((domain-name :target-type domain-name
                                      :member-name "domainName")
                                     (description :target-type description
                                      :member-name "description")
                                     (certificate-arn :target-type
                                      certificate-arn :member-name
                                      "certificateArn")
                                     (appsync-domain-name :target-type string
                                      :member-name "appsyncDomainName")
                                     (hosted-zone-id :target-type string
                                      :member-name "hostedZoneId")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (domain-name-arn :target-type string
                                      :member-name "domainNameArn"))
                                    (:shape-name "DomainNameConfig"))

(smithy/sdk/shapes:define-list domain-name-configs :member domain-name-config)

(smithy/sdk/shapes:define-structure dynamodb-data-source-config common-lisp:nil
                                    ((table-name :target-type string :required
                                      common-lisp:t :member-name "tableName")
                                     (aws-region :target-type string :required
                                      common-lisp:t :member-name "awsRegion")
                                     (use-caller-credentials :target-type
                                      boolean :member-name
                                      "useCallerCredentials")
                                     (delta-sync-config :target-type
                                      delta-sync-config :member-name
                                      "deltaSyncConfig")
                                     (versioned :target-type boolean
                                      :member-name "versioned"))
                                    (:shape-name "DynamodbDataSourceConfig"))

(smithy/sdk/shapes:define-structure elasticsearch-data-source-config
                                    common-lisp:nil
                                    ((endpoint :target-type string :required
                                      common-lisp:t :member-name "endpoint")
                                     (aws-region :target-type string :required
                                      common-lisp:t :member-name "awsRegion"))
                                    (:shape-name
                                     "ElasticsearchDataSourceConfig"))

(smithy/sdk/shapes:define-structure enhanced-metrics-config common-lisp:nil
                                    ((resolver-level-metrics-behavior
                                      :target-type
                                      resolver-level-metrics-behavior :required
                                      common-lisp:t :member-name
                                      "resolverLevelMetricsBehavior")
                                     (data-source-level-metrics-behavior
                                      :target-type
                                      data-source-level-metrics-behavior
                                      :required common-lisp:t :member-name
                                      "dataSourceLevelMetricsBehavior")
                                     (operation-level-metrics-config
                                      :target-type
                                      operation-level-metrics-config :required
                                      common-lisp:t :member-name
                                      "operationLevelMetricsConfig"))
                                    (:shape-name "EnhancedMetricsConfig"))

(smithy/sdk/shapes:define-type environment-variable-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map environment-variable-map :key
                              environment-variable-key :value
                              environment-variable-value)

(smithy/sdk/shapes:define-type environment-variable-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure error-detail common-lisp:nil
                                    ((message :target-type error-message
                                      :member-name "message"))
                                    (:shape-name "ErrorDetail"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure evaluate-code-error-detail common-lisp:nil
                                    ((message :target-type error-message
                                      :member-name "message")
                                     (code-errors :target-type code-errors
                                      :member-name "codeErrors"))
                                    (:shape-name "EvaluateCodeErrorDetail"))

(smithy/sdk/shapes:define-input evaluate-code-request common-lisp:nil
                                ((runtime :target-type app-sync-runtime
                                  :required common-lisp:t :member-name
                                  "runtime")
                                 (code :target-type code :required
                                  common-lisp:t :member-name "code")
                                 (context :target-type context :required
                                  common-lisp:t :member-name "context")
                                 (function :target-type string :member-name
                                  "function"))
                                (:shape-name "EvaluateCodeRequest"))

(smithy/sdk/shapes:define-output evaluate-code-response common-lisp:nil
                                 ((evaluation-result :target-type
                                   evaluation-result :member-name
                                   "evaluationResult")
                                  (error :target-type
                                   evaluate-code-error-detail :member-name
                                   "error")
                                  (logs :target-type logs :member-name "logs")
                                  (stash :target-type stash :member-name
                                   "stash")
                                  (out-errors :target-type out-errors
                                   :member-name "outErrors"))
                                 (:shape-name "EvaluateCodeResponse"))

(smithy/sdk/shapes:define-input evaluate-mapping-template-request
                                common-lisp:nil
                                ((template :target-type template :required
                                  common-lisp:t :member-name "template")
                                 (context :target-type context :required
                                  common-lisp:t :member-name "context"))
                                (:shape-name "EvaluateMappingTemplateRequest"))

(smithy/sdk/shapes:define-output evaluate-mapping-template-response
                                 common-lisp:nil
                                 ((evaluation-result :target-type
                                   evaluation-result :member-name
                                   "evaluationResult")
                                  (error :target-type error-detail :member-name
                                   "error")
                                  (logs :target-type logs :member-name "logs")
                                  (stash :target-type stash :member-name
                                   "stash")
                                  (out-errors :target-type out-errors
                                   :member-name "outErrors"))
                                 (:shape-name
                                  "EvaluateMappingTemplateResponse"))

(smithy/sdk/shapes:define-type evaluation-result smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event-bridge-data-source-config
                                    common-lisp:nil
                                    ((event-bus-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "eventBusArn"))
                                    (:shape-name "EventBridgeDataSourceConfig"))

(smithy/sdk/shapes:define-structure event-config common-lisp:nil
                                    ((auth-providers :target-type
                                      auth-providers :required common-lisp:t
                                      :member-name "authProviders")
                                     (connection-auth-modes :target-type
                                      auth-modes :required common-lisp:t
                                      :member-name "connectionAuthModes")
                                     (default-publish-auth-modes :target-type
                                      auth-modes :required common-lisp:t
                                      :member-name "defaultPublishAuthModes")
                                     (default-subscribe-auth-modes :target-type
                                      auth-modes :required common-lisp:t
                                      :member-name "defaultSubscribeAuthModes")
                                     (log-config :target-type event-log-config
                                      :member-name "logConfig"))
                                    (:shape-name "EventConfig"))

(smithy/sdk/shapes:define-structure event-log-config common-lisp:nil
                                    ((log-level :target-type event-log-level
                                      :required common-lisp:t :member-name
                                      "logLevel")
                                     (cloud-watch-logs-role-arn :target-type
                                      string :required common-lisp:t
                                      :member-name "cloudWatchLogsRoleArn"))
                                    (:shape-name "EventLogConfig"))

(smithy/sdk/shapes:define-enum event-log-level
    common-lisp:nil
  (:none "NONE")
  (:error "ERROR")
  (:all "ALL")
  (:info "INFO")
  (:debug "DEBUG"))

(smithy/sdk/shapes:define-enum field-log-level
    common-lisp:nil
  (:none "NONE")
  (:error "ERROR")
  (:all "ALL")
  (:info "INFO")
  (:debug "DEBUG"))

(smithy/sdk/shapes:define-input flush-api-cache-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t))
                                (:shape-name "FlushApiCacheRequest"))

(smithy/sdk/shapes:define-output flush-api-cache-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "FlushApiCacheResponse"))

(smithy/sdk/shapes:define-structure function-configuration common-lisp:nil
                                    ((function-id :target-type string
                                      :member-name "functionId")
                                     (function-arn :target-type string
                                      :member-name "functionArn")
                                     (name :target-type resource-name
                                      :member-name "name")
                                     (description :target-type string
                                      :member-name "description")
                                     (data-source-name :target-type
                                      resource-name :member-name
                                      "dataSourceName")
                                     (request-mapping-template :target-type
                                      mapping-template :member-name
                                      "requestMappingTemplate")
                                     (response-mapping-template :target-type
                                      mapping-template :member-name
                                      "responseMappingTemplate")
                                     (function-version :target-type string
                                      :member-name "functionVersion")
                                     (sync-config :target-type sync-config
                                      :member-name "syncConfig")
                                     (max-batch-size :target-type
                                      max-batch-size :member-name
                                      "maxBatchSize")
                                     (runtime :target-type app-sync-runtime
                                      :member-name "runtime")
                                     (code :target-type code :member-name
                                      "code"))
                                    (:shape-name "FunctionConfiguration"))

(smithy/sdk/shapes:define-list functions :member function-configuration)

(smithy/sdk/shapes:define-list functions-ids :member string)

(smithy/sdk/shapes:define-input get-api-association-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "domainName" :http-label common-lisp:t))
                                (:shape-name "GetApiAssociationRequest"))

(smithy/sdk/shapes:define-output get-api-association-response common-lisp:nil
                                 ((api-association :target-type api-association
                                   :member-name "apiAssociation"))
                                 (:shape-name "GetApiAssociationResponse"))

(smithy/sdk/shapes:define-input get-api-cache-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetApiCacheRequest"))

(smithy/sdk/shapes:define-output get-api-cache-response common-lisp:nil
                                 ((api-cache :target-type api-cache
                                   :member-name "apiCache"))
                                 (:shape-name "GetApiCacheResponse"))

(smithy/sdk/shapes:define-input get-api-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetApiRequest"))

(smithy/sdk/shapes:define-output get-api-response common-lisp:nil
                                 ((api :target-type api :member-name "api"))
                                 (:shape-name "GetApiResponse"))

(smithy/sdk/shapes:define-input get-channel-namespace-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (name :target-type namespace :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetChannelNamespaceRequest"))

(smithy/sdk/shapes:define-output get-channel-namespace-response common-lisp:nil
                                 ((channel-namespace :target-type
                                   channel-namespace :member-name
                                   "channelNamespace"))
                                 (:shape-name "GetChannelNamespaceResponse"))

(smithy/sdk/shapes:define-input get-data-source-introspection-request
                                common-lisp:nil
                                ((introspection-id :target-type string
                                  :required common-lisp:t :member-name
                                  "introspectionId" :http-label common-lisp:t)
                                 (include-models-sdl :target-type boolean
                                  :member-name "includeModelsSDL" :http-query
                                  "includeModelsSDL")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "GetDataSourceIntrospectionRequest"))

(smithy/sdk/shapes:define-output get-data-source-introspection-response
                                 common-lisp:nil
                                 ((introspection-id :target-type string
                                   :member-name "introspectionId")
                                  (introspection-status :target-type
                                   data-source-introspection-status
                                   :member-name "introspectionStatus")
                                  (introspection-status-detail :target-type
                                   string :member-name
                                   "introspectionStatusDetail")
                                  (introspection-result :target-type
                                   data-source-introspection-result
                                   :member-name "introspectionResult"))
                                 (:shape-name
                                  "GetDataSourceIntrospectionResponse"))

(smithy/sdk/shapes:define-input get-data-source-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (name :target-type resource-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetDataSourceRequest"))

(smithy/sdk/shapes:define-output get-data-source-response common-lisp:nil
                                 ((data-source :target-type data-source
                                   :member-name "dataSource"))
                                 (:shape-name "GetDataSourceResponse"))

(smithy/sdk/shapes:define-input get-domain-name-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "domainName" :http-label common-lisp:t))
                                (:shape-name "GetDomainNameRequest"))

(smithy/sdk/shapes:define-output get-domain-name-response common-lisp:nil
                                 ((domain-name-config :target-type
                                   domain-name-config :member-name
                                   "domainNameConfig"))
                                 (:shape-name "GetDomainNameResponse"))

(smithy/sdk/shapes:define-input get-function-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (function-id :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "functionId" :http-label common-lisp:t))
                                (:shape-name "GetFunctionRequest"))

(smithy/sdk/shapes:define-output get-function-response common-lisp:nil
                                 ((function-configuration :target-type
                                   function-configuration :member-name
                                   "functionConfiguration"))
                                 (:shape-name "GetFunctionResponse"))

(smithy/sdk/shapes:define-input get-graphql-api-environment-variables-request
                                common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetGraphqlApiEnvironmentVariablesRequest"))

(smithy/sdk/shapes:define-output get-graphql-api-environment-variables-response
                                 common-lisp:nil
                                 ((environment-variables :target-type
                                   environment-variable-map :member-name
                                   "environmentVariables"))
                                 (:shape-name
                                  "GetGraphqlApiEnvironmentVariablesResponse"))

(smithy/sdk/shapes:define-input get-graphql-api-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetGraphqlApiRequest"))

(smithy/sdk/shapes:define-output get-graphql-api-response common-lisp:nil
                                 ((graphql-api :target-type graphql-api
                                   :member-name "graphqlApi"))
                                 (:shape-name "GetGraphqlApiResponse"))

(smithy/sdk/shapes:define-input get-introspection-schema-request
                                common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (format :target-type output-type :required
                                  common-lisp:t :member-name "format"
                                  :http-query "format")
                                 (include-directives :target-type boolean-value
                                  :member-name "includeDirectives" :http-query
                                  "includeDirectives"))
                                (:shape-name "GetIntrospectionSchemaRequest"))

(smithy/sdk/shapes:define-output get-introspection-schema-response
                                 common-lisp:nil
                                 ((schema :target-type blob :member-name
                                   "schema" :http-payload common-lisp:t))
                                 (:shape-name "GetIntrospectionSchemaResponse"))

(smithy/sdk/shapes:define-input get-resolver-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (type-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "typeName" :http-label common-lisp:t)
                                 (field-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "fieldName" :http-label common-lisp:t))
                                (:shape-name "GetResolverRequest"))

(smithy/sdk/shapes:define-output get-resolver-response common-lisp:nil
                                 ((resolver :target-type resolver :member-name
                                   "resolver"))
                                 (:shape-name "GetResolverResponse"))

(smithy/sdk/shapes:define-input get-schema-creation-status-request
                                common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSchemaCreationStatusRequest"))

(smithy/sdk/shapes:define-output get-schema-creation-status-response
                                 common-lisp:nil
                                 ((status :target-type schema-status
                                   :member-name "status")
                                  (details :target-type string :member-name
                                   "details"))
                                 (:shape-name
                                  "GetSchemaCreationStatusResponse"))

(smithy/sdk/shapes:define-input get-source-api-association-request
                                common-lisp:nil
                                ((merged-api-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "mergedApiIdentifier" :http-label
                                  common-lisp:t)
                                 (association-id :target-type string :required
                                  common-lisp:t :member-name "associationId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetSourceApiAssociationRequest"))

(smithy/sdk/shapes:define-output get-source-api-association-response
                                 common-lisp:nil
                                 ((source-api-association :target-type
                                   source-api-association :member-name
                                   "sourceApiAssociation"))
                                 (:shape-name
                                  "GetSourceApiAssociationResponse"))

(smithy/sdk/shapes:define-input get-type-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (type-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "typeName" :http-label common-lisp:t)
                                 (format :target-type type-definition-format
                                  :required common-lisp:t :member-name "format"
                                  :http-query "format"))
                                (:shape-name "GetTypeRequest"))

(smithy/sdk/shapes:define-output get-type-response common-lisp:nil
                                 ((type :target-type type :member-name "type"))
                                 (:shape-name "GetTypeResponse"))

(smithy/sdk/shapes:define-enum graph-qlapi-introspection-config
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-enum graph-qlapi-type
    common-lisp:nil
  (:graphql "GRAPHQL")
  (:merged "MERGED"))

(smithy/sdk/shapes:define-enum graph-qlapi-visibility
    common-lisp:nil
  (:global "GLOBAL")
  (:private "PRIVATE"))

(smithy/sdk/shapes:define-error graph-qlschema-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "GraphQLSchemaException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure graphql-api common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (api-id :target-type string :member-name
                                      "apiId")
                                     (authentication-type :target-type
                                      authentication-type :member-name
                                      "authenticationType")
                                     (log-config :target-type log-config
                                      :member-name "logConfig")
                                     (user-pool-config :target-type
                                      user-pool-config :member-name
                                      "userPoolConfig")
                                     (open-idconnect-config :target-type
                                      open-idconnect-config :member-name
                                      "openIDConnectConfig")
                                     (arn :target-type string :member-name
                                      "arn")
                                     (uris :target-type map-of-string-to-string
                                      :member-name "uris")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (additional-authentication-providers
                                      :target-type
                                      additional-authentication-providers
                                      :member-name
                                      "additionalAuthenticationProviders")
                                     (xray-enabled :target-type boolean
                                      :member-name "xrayEnabled")
                                     (waf-web-acl-arn :target-type string
                                      :member-name "wafWebAclArn")
                                     (lambda-authorizer-config :target-type
                                      lambda-authorizer-config :member-name
                                      "lambdaAuthorizerConfig")
                                     (dns :target-type map-of-string-to-string
                                      :member-name "dns")
                                     (visibility :target-type
                                      graph-qlapi-visibility :member-name
                                      "visibility")
                                     (api-type :target-type graph-qlapi-type
                                      :member-name "apiType")
                                     (merged-api-execution-role-arn
                                      :target-type string :member-name
                                      "mergedApiExecutionRoleArn")
                                     (owner :target-type string :member-name
                                      "owner")
                                     (owner-contact :target-type string
                                      :member-name "ownerContact")
                                     (introspection-config :target-type
                                      graph-qlapi-introspection-config
                                      :member-name "introspectionConfig")
                                     (query-depth-limit :target-type
                                      query-depth-limit :member-name
                                      "queryDepthLimit")
                                     (resolver-count-limit :target-type
                                      resolver-count-limit :member-name
                                      "resolverCountLimit")
                                     (enhanced-metrics-config :target-type
                                      enhanced-metrics-config :member-name
                                      "enhancedMetricsConfig"))
                                    (:shape-name "GraphqlApi"))

(smithy/sdk/shapes:define-list graphql-apis :member graphql-api)

(smithy/sdk/shapes:define-enum handler-behavior
    common-lisp:nil
  (:code "CODE")
  (:direct "DIRECT"))

(smithy/sdk/shapes:define-structure handler-config common-lisp:nil
                                    ((behavior :target-type handler-behavior
                                      :required common-lisp:t :member-name
                                      "behavior")
                                     (integration :target-type integration
                                      :required common-lisp:t :member-name
                                      "integration"))
                                    (:shape-name "HandlerConfig"))

(smithy/sdk/shapes:define-structure handler-configs common-lisp:nil
                                    ((on-publish :target-type handler-config
                                      :member-name "onPublish")
                                     (on-subscribe :target-type handler-config
                                      :member-name "onSubscribe"))
                                    (:shape-name "HandlerConfigs"))

(smithy/sdk/shapes:define-structure http-data-source-config common-lisp:nil
                                    ((endpoint :target-type string :member-name
                                      "endpoint")
                                     (authorization-config :target-type
                                      authorization-config :member-name
                                      "authorizationConfig"))
                                    (:shape-name "HttpDataSourceConfig"))

(smithy/sdk/shapes:define-structure integration common-lisp:nil
                                    ((data-source-name :target-type string
                                      :required common-lisp:t :member-name
                                      "dataSourceName")
                                     (lambda-config :target-type lambda-config
                                      :member-name "lambdaConfig"))
                                    (:shape-name "Integration"))

(smithy/sdk/shapes:define-error internal-failure-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "InternalFailureException")
                                (:error-code 500))

(smithy/sdk/shapes:define-enum invoke-type
    common-lisp:nil
  (:request-response "REQUEST_RESPONSE")
  (:event "EVENT"))

(smithy/sdk/shapes:define-structure lambda-authorizer-config common-lisp:nil
                                    ((authorizer-result-ttl-in-seconds
                                      :target-type ttl :member-name
                                      "authorizerResultTtlInSeconds")
                                     (authorizer-uri :target-type string
                                      :required common-lisp:t :member-name
                                      "authorizerUri")
                                     (identity-validation-expression
                                      :target-type string :member-name
                                      "identityValidationExpression"))
                                    (:shape-name "LambdaAuthorizerConfig"))

(smithy/sdk/shapes:define-structure lambda-config common-lisp:nil
                                    ((invoke-type :target-type invoke-type
                                      :member-name "invokeType"))
                                    (:shape-name "LambdaConfig"))

(smithy/sdk/shapes:define-structure lambda-conflict-handler-config
                                    common-lisp:nil
                                    ((lambda-conflict-handler-arn :target-type
                                      string :member-name
                                      "lambdaConflictHandlerArn"))
                                    (:shape-name "LambdaConflictHandlerConfig"))

(smithy/sdk/shapes:define-structure lambda-data-source-config common-lisp:nil
                                    ((lambda-function-arn :target-type string
                                      :required common-lisp:t :member-name
                                      "lambdaFunctionArn"))
                                    (:shape-name "LambdaDataSourceConfig"))

(smithy/sdk/shapes:define-error limit-exceeded-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "LimitExceededException")
                                (:error-code 429))

(smithy/sdk/shapes:define-input list-api-keys-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListApiKeysRequest"))

(smithy/sdk/shapes:define-output list-api-keys-response common-lisp:nil
                                 ((api-keys :target-type api-keys :member-name
                                   "apiKeys")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListApiKeysResponse"))

(smithy/sdk/shapes:define-input list-apis-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListApisRequest"))

(smithy/sdk/shapes:define-output list-apis-response common-lisp:nil
                                 ((apis :target-type apis :member-name "apis")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListApisResponse"))

(smithy/sdk/shapes:define-input list-channel-namespaces-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListChannelNamespacesRequest"))

(smithy/sdk/shapes:define-output list-channel-namespaces-response
                                 common-lisp:nil
                                 ((channel-namespaces :target-type
                                   channel-namespaces :member-name
                                   "channelNamespaces")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListChannelNamespacesResponse"))

(smithy/sdk/shapes:define-input list-data-sources-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDataSourcesRequest"))

(smithy/sdk/shapes:define-output list-data-sources-response common-lisp:nil
                                 ((data-sources :target-type data-sources
                                   :member-name "dataSources")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDataSourcesResponse"))

(smithy/sdk/shapes:define-input list-domain-names-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListDomainNamesRequest"))

(smithy/sdk/shapes:define-output list-domain-names-response common-lisp:nil
                                 ((domain-name-configs :target-type
                                   domain-name-configs :member-name
                                   "domainNameConfigs")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListDomainNamesResponse"))

(smithy/sdk/shapes:define-input list-functions-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListFunctionsRequest"))

(smithy/sdk/shapes:define-output list-functions-response common-lisp:nil
                                 ((functions :target-type functions
                                   :member-name "functions")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListFunctionsResponse"))

(smithy/sdk/shapes:define-input list-graphql-apis-request common-lisp:nil
                                ((next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (api-type :target-type graph-qlapi-type
                                  :member-name "apiType" :http-query "apiType")
                                 (owner :target-type ownership :member-name
                                  "owner" :http-query "owner"))
                                (:shape-name "ListGraphqlApisRequest"))

(smithy/sdk/shapes:define-output list-graphql-apis-response common-lisp:nil
                                 ((graphql-apis :target-type graphql-apis
                                   :member-name "graphqlApis")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListGraphqlApisResponse"))

(smithy/sdk/shapes:define-input list-resolvers-by-function-request
                                common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (function-id :target-type string :required
                                  common-lisp:t :member-name "functionId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListResolversByFunctionRequest"))

(smithy/sdk/shapes:define-output list-resolvers-by-function-response
                                 common-lisp:nil
                                 ((resolvers :target-type resolvers
                                   :member-name "resolvers")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListResolversByFunctionResponse"))

(smithy/sdk/shapes:define-input list-resolvers-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (type-name :target-type string :required
                                  common-lisp:t :member-name "typeName"
                                  :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListResolversRequest"))

(smithy/sdk/shapes:define-output list-resolvers-response common-lisp:nil
                                 ((resolvers :target-type resolvers
                                   :member-name "resolvers")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListResolversResponse"))

(smithy/sdk/shapes:define-input list-source-api-associations-request
                                common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name
                                 "ListSourceApiAssociationsRequest"))

(smithy/sdk/shapes:define-output list-source-api-associations-response
                                 common-lisp:nil
                                 ((source-api-association-summaries
                                   :target-type
                                   source-api-association-summary-list
                                   :member-name
                                   "sourceApiAssociationSummaries")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListSourceApiAssociationsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-input list-types-by-association-request
                                common-lisp:nil
                                ((merged-api-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "mergedApiIdentifier" :http-label
                                  common-lisp:t)
                                 (association-id :target-type string :required
                                  common-lisp:t :member-name "associationId"
                                  :http-label common-lisp:t)
                                 (format :target-type type-definition-format
                                  :required common-lisp:t :member-name "format"
                                  :http-query "format")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListTypesByAssociationRequest"))

(smithy/sdk/shapes:define-output list-types-by-association-response
                                 common-lisp:nil
                                 ((types :target-type type-list :member-name
                                   "types")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTypesByAssociationResponse"))

(smithy/sdk/shapes:define-input list-types-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (format :target-type type-definition-format
                                  :required common-lisp:t :member-name "format"
                                  :http-query "format")
                                 (next-token :target-type pagination-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults"))
                                (:shape-name "ListTypesRequest"))

(smithy/sdk/shapes:define-output list-types-response common-lisp:nil
                                 ((types :target-type type-list :member-name
                                   "types")
                                  (next-token :target-type pagination-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListTypesResponse"))

(smithy/sdk/shapes:define-structure log-config common-lisp:nil
                                    ((field-log-level :target-type
                                      field-log-level :required common-lisp:t
                                      :member-name "fieldLogLevel")
                                     (cloud-watch-logs-role-arn :target-type
                                      string :required common-lisp:t
                                      :member-name "cloudWatchLogsRoleArn")
                                     (exclude-verbose-content :target-type
                                      boolean :member-name
                                      "excludeVerboseContent"))
                                    (:shape-name "LogConfig"))

(smithy/sdk/shapes:define-list logs :member string)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-map map-of-string-to-string :key string :value string)

(smithy/sdk/shapes:define-type mapping-template smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-batch-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum merge-type
    common-lisp:nil
  (:manual-merge "MANUAL_MERGE")
  (:auto-merge "AUTO_MERGE"))

(smithy/sdk/shapes:define-type namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error not-found-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "NotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-structure open-idconnect-config common-lisp:nil
                                    ((issuer :target-type string :required
                                      common-lisp:t :member-name "issuer")
                                     (client-id :target-type string
                                      :member-name "clientId")
                                     (iat-ttl :target-type long :member-name
                                      "iatTTL")
                                     (auth-ttl :target-type long :member-name
                                      "authTTL"))
                                    (:shape-name "OpenIDConnectConfig"))

(smithy/sdk/shapes:define-structure open-search-service-data-source-config
                                    common-lisp:nil
                                    ((endpoint :target-type string :required
                                      common-lisp:t :member-name "endpoint")
                                     (aws-region :target-type string :required
                                      common-lisp:t :member-name "awsRegion"))
                                    (:shape-name
                                     "OpenSearchServiceDataSourceConfig"))

(smithy/sdk/shapes:define-enum operation-level-metrics-config
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-type out-errors smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum output-type
    common-lisp:nil
  (:sdl "SDL")
  (:json "JSON"))

(smithy/sdk/shapes:define-type owner-contact smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum ownership
    common-lisp:nil
  (:current-account "CURRENT_ACCOUNT")
  (:other-accounts "OTHER_ACCOUNTS"))

(smithy/sdk/shapes:define-type pagination-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure pipeline-config common-lisp:nil
                                    ((functions :target-type functions-ids
                                      :member-name "functions"))
                                    (:shape-name "PipelineConfig"))

(smithy/sdk/shapes:define-input put-graphql-api-environment-variables-request
                                common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (environment-variables :target-type
                                  environment-variable-map :required
                                  common-lisp:t :member-name
                                  "environmentVariables"))
                                (:shape-name
                                 "PutGraphqlApiEnvironmentVariablesRequest"))

(smithy/sdk/shapes:define-output put-graphql-api-environment-variables-response
                                 common-lisp:nil
                                 ((environment-variables :target-type
                                   environment-variable-map :member-name
                                   "environmentVariables"))
                                 (:shape-name
                                  "PutGraphqlApiEnvironmentVariablesResponse"))

(smithy/sdk/shapes:define-type query-depth-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure rds-data-api-config common-lisp:nil
                                    ((resource-arn :target-type
                                      rds-data-api-config-resource-arn
                                      :required common-lisp:t :member-name
                                      "resourceArn")
                                     (secret-arn :target-type
                                      rds-data-api-config-secret-arn :required
                                      common-lisp:t :member-name "secretArn")
                                     (database-name :target-type
                                      rds-data-api-config-database-name
                                      :required common-lisp:t :member-name
                                      "databaseName"))
                                    (:shape-name "RdsDataApiConfig"))

(smithy/sdk/shapes:define-type rds-data-api-config-database-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rds-data-api-config-resource-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type rds-data-api-config-secret-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure rds-http-endpoint-config common-lisp:nil
                                    ((aws-region :target-type string
                                      :member-name "awsRegion")
                                     (db-cluster-identifier :target-type string
                                      :member-name "dbClusterIdentifier")
                                     (database-name :target-type string
                                      :member-name "databaseName")
                                     (schema :target-type string :member-name
                                      "schema")
                                     (aws-secret-store-arn :target-type string
                                      :member-name "awsSecretStoreArn"))
                                    (:shape-name "RdsHttpEndpointConfig"))

(smithy/sdk/shapes:define-structure relational-database-data-source-config
                                    common-lisp:nil
                                    ((relational-database-source-type
                                      :target-type
                                      relational-database-source-type
                                      :member-name
                                      "relationalDatabaseSourceType")
                                     (rds-http-endpoint-config :target-type
                                      rds-http-endpoint-config :member-name
                                      "rdsHttpEndpointConfig"))
                                    (:shape-name
                                     "RelationalDatabaseDataSourceConfig"))

(smithy/sdk/shapes:define-enum relational-database-source-type
    common-lisp:nil
  (:rds-http-endpoint "RDS_HTTP_ENDPOINT"))

(smithy/sdk/shapes:define-structure resolver common-lisp:nil
                                    ((type-name :target-type resource-name
                                      :member-name "typeName")
                                     (field-name :target-type resource-name
                                      :member-name "fieldName")
                                     (data-source-name :target-type
                                      resource-name :member-name
                                      "dataSourceName")
                                     (resolver-arn :target-type string
                                      :member-name "resolverArn")
                                     (request-mapping-template :target-type
                                      mapping-template :member-name
                                      "requestMappingTemplate")
                                     (response-mapping-template :target-type
                                      mapping-template :member-name
                                      "responseMappingTemplate")
                                     (kind :target-type resolver-kind
                                      :member-name "kind")
                                     (pipeline-config :target-type
                                      pipeline-config :member-name
                                      "pipelineConfig")
                                     (sync-config :target-type sync-config
                                      :member-name "syncConfig")
                                     (caching-config :target-type
                                      caching-config :member-name
                                      "cachingConfig")
                                     (max-batch-size :target-type
                                      max-batch-size :member-name
                                      "maxBatchSize")
                                     (runtime :target-type app-sync-runtime
                                      :member-name "runtime")
                                     (code :target-type code :member-name
                                      "code")
                                     (metrics-config :target-type
                                      resolver-level-metrics-config
                                      :member-name "metricsConfig"))
                                    (:shape-name "Resolver"))

(smithy/sdk/shapes:define-type resolver-count-limit
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-enum resolver-kind
    common-lisp:nil
  (:unit "UNIT")
  (:pipeline "PIPELINE"))

(smithy/sdk/shapes:define-enum resolver-level-metrics-behavior
    common-lisp:nil
  (:full-request-resolver-metrics "FULL_REQUEST_RESOLVER_METRICS")
  (:per-resolver-metrics "PER_RESOLVER_METRICS"))

(smithy/sdk/shapes:define-enum resolver-level-metrics-config
    common-lisp:nil
  (:enabled "ENABLED")
  (:disabled "DISABLED"))

(smithy/sdk/shapes:define-list resolvers :member resolver)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type resource-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum runtime-name
    common-lisp:nil
  (:appsync-js "APPSYNC_JS"))

(smithy/sdk/shapes:define-enum schema-status
    common-lisp:nil
  (:processing "PROCESSING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:failed "FAILED")
  (:success "SUCCESS")
  (:not-applicable "NOT_APPLICABLE"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-structure source-api-association common-lisp:nil
                                    ((association-id :target-type string
                                      :member-name "associationId")
                                     (association-arn :target-type string
                                      :member-name "associationArn")
                                     (source-api-id :target-type string
                                      :member-name "sourceApiId")
                                     (source-api-arn :target-type string
                                      :member-name "sourceApiArn")
                                     (merged-api-arn :target-type string
                                      :member-name "mergedApiArn")
                                     (merged-api-id :target-type string
                                      :member-name "mergedApiId")
                                     (description :target-type string
                                      :member-name "description")
                                     (source-api-association-config
                                      :target-type
                                      source-api-association-config
                                      :member-name
                                      "sourceApiAssociationConfig")
                                     (source-api-association-status
                                      :target-type
                                      source-api-association-status
                                      :member-name
                                      "sourceApiAssociationStatus")
                                     (source-api-association-status-detail
                                      :target-type string :member-name
                                      "sourceApiAssociationStatusDetail")
                                     (last-successful-merge-date :target-type
                                      date :member-name
                                      "lastSuccessfulMergeDate"))
                                    (:shape-name "SourceApiAssociation"))

(smithy/sdk/shapes:define-structure source-api-association-config
                                    common-lisp:nil
                                    ((merge-type :target-type merge-type
                                      :member-name "mergeType"))
                                    (:shape-name "SourceApiAssociationConfig"))

(smithy/sdk/shapes:define-enum source-api-association-status
    common-lisp:nil
  (:merge-scheduled "MERGE_SCHEDULED")
  (:merge-failed "MERGE_FAILED")
  (:merge-success "MERGE_SUCCESS")
  (:merge-in-progress "MERGE_IN_PROGRESS")
  (:auto-merge-schedule-failed "AUTO_MERGE_SCHEDULE_FAILED")
  (:deletion-scheduled "DELETION_SCHEDULED")
  (:deletion-in-progress "DELETION_IN_PROGRESS")
  (:deletion-failed "DELETION_FAILED"))

(smithy/sdk/shapes:define-structure source-api-association-summary
                                    common-lisp:nil
                                    ((association-id :target-type string
                                      :member-name "associationId")
                                     (association-arn :target-type string
                                      :member-name "associationArn")
                                     (source-api-id :target-type string
                                      :member-name "sourceApiId")
                                     (source-api-arn :target-type string
                                      :member-name "sourceApiArn")
                                     (merged-api-id :target-type string
                                      :member-name "mergedApiId")
                                     (merged-api-arn :target-type string
                                      :member-name "mergedApiArn")
                                     (description :target-type string
                                      :member-name "description"))
                                    (:shape-name "SourceApiAssociationSummary"))

(smithy/sdk/shapes:define-list source-api-association-summary-list :member
                               source-api-association-summary)

(smithy/sdk/shapes:define-input start-data-source-introspection-request
                                common-lisp:nil
                                ((rds-data-api-config :target-type
                                  rds-data-api-config :member-name
                                  "rdsDataApiConfig"))
                                (:shape-name
                                 "StartDataSourceIntrospectionRequest"))

(smithy/sdk/shapes:define-output start-data-source-introspection-response
                                 common-lisp:nil
                                 ((introspection-id :target-type string
                                   :member-name "introspectionId")
                                  (introspection-status :target-type
                                   data-source-introspection-status
                                   :member-name "introspectionStatus")
                                  (introspection-status-detail :target-type
                                   string :member-name
                                   "introspectionStatusDetail"))
                                 (:shape-name
                                  "StartDataSourceIntrospectionResponse"))

(smithy/sdk/shapes:define-input start-schema-creation-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (definition :target-type blob :required
                                  common-lisp:t :member-name "definition"))
                                (:shape-name "StartSchemaCreationRequest"))

(smithy/sdk/shapes:define-output start-schema-creation-response common-lisp:nil
                                 ((status :target-type schema-status
                                   :member-name "status"))
                                 (:shape-name "StartSchemaCreationResponse"))

(smithy/sdk/shapes:define-input start-schema-merge-request common-lisp:nil
                                ((association-id :target-type string :required
                                  common-lisp:t :member-name "associationId"
                                  :http-label common-lisp:t)
                                 (merged-api-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "mergedApiIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "StartSchemaMergeRequest"))

(smithy/sdk/shapes:define-output start-schema-merge-response common-lisp:nil
                                 ((source-api-association-status :target-type
                                   source-api-association-status :member-name
                                   "sourceApiAssociationStatus"))
                                 (:shape-name "StartSchemaMergeResponse"))

(smithy/sdk/shapes:define-type stash smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure sync-config common-lisp:nil
                                    ((conflict-handler :target-type
                                      conflict-handler-type :member-name
                                      "conflictHandler")
                                     (conflict-detection :target-type
                                      conflict-detection-type :member-name
                                      "conflictDetection")
                                     (lambda-conflict-handler-config
                                      :target-type
                                      lambda-conflict-handler-config
                                      :member-name
                                      "lambdaConflictHandlerConfig"))
                                    (:shape-name "SyncConfig"))

(smithy/sdk/shapes:define-type ttl smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type template smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure type common-lisp:nil
                                    ((name :target-type resource-name
                                      :member-name "name")
                                     (description :target-type string
                                      :member-name "description")
                                     (arn :target-type string :member-name
                                      "arn")
                                     (definition :target-type string
                                      :member-name "definition")
                                     (format :target-type
                                      type-definition-format :member-name
                                      "format"))
                                    (:shape-name "Type"))

(smithy/sdk/shapes:define-enum type-definition-format
    common-lisp:nil
  (:sdl "SDL")
  (:json "JSON"))

(smithy/sdk/shapes:define-list type-list :member type)

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type string :member-name
                                  "message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type resource-arn
                                  :required common-lisp:t :member-name
                                  "resourceArn" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-api-cache-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (ttl :target-type long :required common-lisp:t
                                  :member-name "ttl")
                                 (api-caching-behavior :target-type
                                  api-caching-behavior :required common-lisp:t
                                  :member-name "apiCachingBehavior")
                                 (type :target-type api-cache-type :required
                                  common-lisp:t :member-name "type")
                                 (health-metrics-config :target-type
                                  cache-health-metrics-config :member-name
                                  "healthMetricsConfig"))
                                (:shape-name "UpdateApiCacheRequest"))

(smithy/sdk/shapes:define-output update-api-cache-response common-lisp:nil
                                 ((api-cache :target-type api-cache
                                   :member-name "apiCache"))
                                 (:shape-name "UpdateApiCacheResponse"))

(smithy/sdk/shapes:define-input update-api-key-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (id :target-type string :required
                                  common-lisp:t :member-name "id" :http-label
                                  common-lisp:t)
                                 (description :target-type string :member-name
                                  "description")
                                 (expires :target-type long :member-name
                                  "expires"))
                                (:shape-name "UpdateApiKeyRequest"))

(smithy/sdk/shapes:define-output update-api-key-response common-lisp:nil
                                 ((api-key :target-type api-key :member-name
                                   "apiKey"))
                                 (:shape-name "UpdateApiKeyResponse"))

(smithy/sdk/shapes:define-input update-api-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (name :target-type api-name :required
                                  common-lisp:t :member-name "name")
                                 (owner-contact :target-type string
                                  :member-name "ownerContact")
                                 (event-config :target-type event-config
                                  :member-name "eventConfig"))
                                (:shape-name "UpdateApiRequest"))

(smithy/sdk/shapes:define-output update-api-response common-lisp:nil
                                 ((api :target-type api :member-name "api"))
                                 (:shape-name "UpdateApiResponse"))

(smithy/sdk/shapes:define-input update-channel-namespace-request
                                common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (name :target-type namespace :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (subscribe-auth-modes :target-type auth-modes
                                  :member-name "subscribeAuthModes")
                                 (publish-auth-modes :target-type auth-modes
                                  :member-name "publishAuthModes")
                                 (code-handlers :target-type code :member-name
                                  "codeHandlers")
                                 (handler-configs :target-type handler-configs
                                  :member-name "handlerConfigs"))
                                (:shape-name "UpdateChannelNamespaceRequest"))

(smithy/sdk/shapes:define-output update-channel-namespace-response
                                 common-lisp:nil
                                 ((channel-namespace :target-type
                                   channel-namespace :member-name
                                   "channelNamespace"))
                                 (:shape-name "UpdateChannelNamespaceResponse"))

(smithy/sdk/shapes:define-input update-data-source-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (name :target-type resource-name :required
                                  common-lisp:t :member-name "name" :http-label
                                  common-lisp:t)
                                 (description :target-type string :member-name
                                  "description")
                                 (type :target-type data-source-type :required
                                  common-lisp:t :member-name "type")
                                 (service-role-arn :target-type string
                                  :member-name "serviceRoleArn")
                                 (dynamodb-config :target-type
                                  dynamodb-data-source-config :member-name
                                  "dynamodbConfig")
                                 (lambda-config :target-type
                                  lambda-data-source-config :member-name
                                  "lambdaConfig")
                                 (elasticsearch-config :target-type
                                  elasticsearch-data-source-config :member-name
                                  "elasticsearchConfig")
                                 (open-search-service-config :target-type
                                  open-search-service-data-source-config
                                  :member-name "openSearchServiceConfig")
                                 (http-config :target-type
                                  http-data-source-config :member-name
                                  "httpConfig")
                                 (relational-database-config :target-type
                                  relational-database-data-source-config
                                  :member-name "relationalDatabaseConfig")
                                 (event-bridge-config :target-type
                                  event-bridge-data-source-config :member-name
                                  "eventBridgeConfig")
                                 (metrics-config :target-type
                                  data-source-level-metrics-config :member-name
                                  "metricsConfig"))
                                (:shape-name "UpdateDataSourceRequest"))

(smithy/sdk/shapes:define-output update-data-source-response common-lisp:nil
                                 ((data-source :target-type data-source
                                   :member-name "dataSource"))
                                 (:shape-name "UpdateDataSourceResponse"))

(smithy/sdk/shapes:define-input update-domain-name-request common-lisp:nil
                                ((domain-name :target-type domain-name
                                  :required common-lisp:t :member-name
                                  "domainName" :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "description"))
                                (:shape-name "UpdateDomainNameRequest"))

(smithy/sdk/shapes:define-output update-domain-name-response common-lisp:nil
                                 ((domain-name-config :target-type
                                   domain-name-config :member-name
                                   "domainNameConfig"))
                                 (:shape-name "UpdateDomainNameResponse"))

(smithy/sdk/shapes:define-input update-function-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (name :target-type resource-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type string :member-name
                                  "description")
                                 (function-id :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "functionId" :http-label common-lisp:t)
                                 (data-source-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "dataSourceName")
                                 (request-mapping-template :target-type
                                  mapping-template :member-name
                                  "requestMappingTemplate")
                                 (response-mapping-template :target-type
                                  mapping-template :member-name
                                  "responseMappingTemplate")
                                 (function-version :target-type string
                                  :member-name "functionVersion")
                                 (sync-config :target-type sync-config
                                  :member-name "syncConfig")
                                 (max-batch-size :target-type max-batch-size
                                  :member-name "maxBatchSize")
                                 (runtime :target-type app-sync-runtime
                                  :member-name "runtime")
                                 (code :target-type code :member-name "code"))
                                (:shape-name "UpdateFunctionRequest"))

(smithy/sdk/shapes:define-output update-function-response common-lisp:nil
                                 ((function-configuration :target-type
                                   function-configuration :member-name
                                   "functionConfiguration"))
                                 (:shape-name "UpdateFunctionResponse"))

(smithy/sdk/shapes:define-input update-graphql-api-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (name :target-type string :required
                                  common-lisp:t :member-name "name")
                                 (log-config :target-type log-config
                                  :member-name "logConfig")
                                 (authentication-type :target-type
                                  authentication-type :required common-lisp:t
                                  :member-name "authenticationType")
                                 (user-pool-config :target-type
                                  user-pool-config :member-name
                                  "userPoolConfig")
                                 (open-idconnect-config :target-type
                                  open-idconnect-config :member-name
                                  "openIDConnectConfig")
                                 (additional-authentication-providers
                                  :target-type
                                  additional-authentication-providers
                                  :member-name
                                  "additionalAuthenticationProviders")
                                 (xray-enabled :target-type boolean
                                  :member-name "xrayEnabled")
                                 (lambda-authorizer-config :target-type
                                  lambda-authorizer-config :member-name
                                  "lambdaAuthorizerConfig")
                                 (merged-api-execution-role-arn :target-type
                                  string :member-name
                                  "mergedApiExecutionRoleArn")
                                 (owner-contact :target-type string
                                  :member-name "ownerContact")
                                 (introspection-config :target-type
                                  graph-qlapi-introspection-config :member-name
                                  "introspectionConfig")
                                 (query-depth-limit :target-type
                                  query-depth-limit :member-name
                                  "queryDepthLimit")
                                 (resolver-count-limit :target-type
                                  resolver-count-limit :member-name
                                  "resolverCountLimit")
                                 (enhanced-metrics-config :target-type
                                  enhanced-metrics-config :member-name
                                  "enhancedMetricsConfig"))
                                (:shape-name "UpdateGraphqlApiRequest"))

(smithy/sdk/shapes:define-output update-graphql-api-response common-lisp:nil
                                 ((graphql-api :target-type graphql-api
                                   :member-name "graphqlApi"))
                                 (:shape-name "UpdateGraphqlApiResponse"))

(smithy/sdk/shapes:define-input update-resolver-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (type-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "typeName" :http-label common-lisp:t)
                                 (field-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "fieldName" :http-label common-lisp:t)
                                 (data-source-name :target-type resource-name
                                  :member-name "dataSourceName")
                                 (request-mapping-template :target-type
                                  mapping-template :member-name
                                  "requestMappingTemplate")
                                 (response-mapping-template :target-type
                                  mapping-template :member-name
                                  "responseMappingTemplate")
                                 (kind :target-type resolver-kind :member-name
                                  "kind")
                                 (pipeline-config :target-type pipeline-config
                                  :member-name "pipelineConfig")
                                 (sync-config :target-type sync-config
                                  :member-name "syncConfig")
                                 (caching-config :target-type caching-config
                                  :member-name "cachingConfig")
                                 (max-batch-size :target-type max-batch-size
                                  :member-name "maxBatchSize")
                                 (runtime :target-type app-sync-runtime
                                  :member-name "runtime")
                                 (code :target-type code :member-name "code")
                                 (metrics-config :target-type
                                  resolver-level-metrics-config :member-name
                                  "metricsConfig"))
                                (:shape-name "UpdateResolverRequest"))

(smithy/sdk/shapes:define-output update-resolver-response common-lisp:nil
                                 ((resolver :target-type resolver :member-name
                                   "resolver"))
                                 (:shape-name "UpdateResolverResponse"))

(smithy/sdk/shapes:define-input update-source-api-association-request
                                common-lisp:nil
                                ((association-id :target-type string :required
                                  common-lisp:t :member-name "associationId"
                                  :http-label common-lisp:t)
                                 (merged-api-identifier :target-type string
                                  :required common-lisp:t :member-name
                                  "mergedApiIdentifier" :http-label
                                  common-lisp:t)
                                 (description :target-type string :member-name
                                  "description")
                                 (source-api-association-config :target-type
                                  source-api-association-config :member-name
                                  "sourceApiAssociationConfig"))
                                (:shape-name
                                 "UpdateSourceApiAssociationRequest"))

(smithy/sdk/shapes:define-output update-source-api-association-response
                                 common-lisp:nil
                                 ((source-api-association :target-type
                                   source-api-association :member-name
                                   "sourceApiAssociation"))
                                 (:shape-name
                                  "UpdateSourceApiAssociationResponse"))

(smithy/sdk/shapes:define-input update-type-request common-lisp:nil
                                ((api-id :target-type string :required
                                  common-lisp:t :member-name "apiId"
                                  :http-label common-lisp:t)
                                 (type-name :target-type resource-name
                                  :required common-lisp:t :member-name
                                  "typeName" :http-label common-lisp:t)
                                 (definition :target-type string :member-name
                                  "definition")
                                 (format :target-type type-definition-format
                                  :required common-lisp:t :member-name
                                  "format"))
                                (:shape-name "UpdateTypeRequest"))

(smithy/sdk/shapes:define-output update-type-response common-lisp:nil
                                 ((type :target-type type :member-name "type"))
                                 (:shape-name "UpdateTypeResponse"))

(smithy/sdk/shapes:define-structure user-pool-config common-lisp:nil
                                    ((user-pool-id :target-type string
                                      :required common-lisp:t :member-name
                                      "userPoolId")
                                     (aws-region :target-type string :required
                                      common-lisp:t :member-name "awsRegion")
                                     (default-action :target-type
                                      default-action :required common-lisp:t
                                      :member-name "defaultAction")
                                     (app-id-client-regex :target-type string
                                      :member-name "appIdClientRegex"))
                                    (:shape-name "UserPoolConfig"))

(smithy/sdk/operation:define-operation associate-api :shape-name "AssociateApi"
                                       :input associate-api-request :output
                                       associate-api-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-failure-exception
                                        not-found-exception)
                                       :method "POST" :uri
                                       "/v1/domainnames/{domainName}/apiassociation"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-merged-graphql-api :shape-name
                                       "AssociateMergedGraphqlApi" :input
                                       associate-merged-graphql-api-request
                                       :output
                                       associate-merged-graphql-api-response
                                       :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/sourceApis/{sourceApiIdentifier}/mergedApiAssociations"
                                       :code 200)

(smithy/sdk/operation:define-operation associate-source-graphql-api :shape-name
                                       "AssociateSourceGraphqlApi" :input
                                       associate-source-graphql-api-request
                                       :output
                                       associate-source-graphql-api-response
                                       :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations"
                                       :code 200)

(smithy/sdk/operation:define-operation create-api :shape-name "CreateApi"
                                       :input create-api-request :output
                                       create-api-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        service-quota-exceeded-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/v2/apis" :code 200)

(smithy/sdk/operation:define-operation create-api-cache :shape-name
                                       "CreateApiCache" :input
                                       create-api-cache-request :output
                                       create-api-cache-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/apis/{apiId}/ApiCaches" :code 200)

(smithy/sdk/operation:define-operation create-api-key :shape-name
                                       "CreateApiKey" :input
                                       create-api-key-request :output
                                       create-api-key-response :errors
                                       (api-key-limit-exceeded-exception
                                        api-key-validity-out-of-bounds-exception
                                        bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/apis/{apiId}/apikeys" :code 200)

(smithy/sdk/operation:define-operation create-channel-namespace :shape-name
                                       "CreateChannelNamespace" :input
                                       create-channel-namespace-request :output
                                       create-channel-namespace-response
                                       :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        conflict-exception
                                        internal-failure-exception
                                        not-found-exception
                                        service-quota-exceeded-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v2/apis/{apiId}/channelNamespaces"
                                       :code 200)

(smithy/sdk/operation:define-operation create-data-source :shape-name
                                       "CreateDataSource" :input
                                       create-data-source-request :output
                                       create-data-source-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/apis/{apiId}/datasources" :code 200)

(smithy/sdk/operation:define-operation create-domain-name :shape-name
                                       "CreateDomainName" :input
                                       create-domain-name-request :output
                                       create-domain-name-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-failure-exception)
                                       :method "POST" :uri "/v1/domainnames"
                                       :code 200)

(smithy/sdk/operation:define-operation create-function :shape-name
                                       "CreateFunction" :input
                                       create-function-request :output
                                       create-function-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/apis/{apiId}/functions" :code 200)

(smithy/sdk/operation:define-operation create-graphql-api :shape-name
                                       "CreateGraphqlApi" :input
                                       create-graphql-api-request :output
                                       create-graphql-api-response :errors
                                       (api-limit-exceeded-exception
                                        bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/v1/apis" :code 200)

(smithy/sdk/operation:define-operation create-resolver :shape-name
                                       "CreateResolver" :input
                                       create-resolver-request :output
                                       create-resolver-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/apis/{apiId}/types/{typeName}/resolvers"
                                       :code 200)

(smithy/sdk/operation:define-operation create-type :shape-name "CreateType"
                                       :input create-type-request :output
                                       create-type-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/apis/{apiId}/types" :code 200)

(smithy/sdk/operation:define-operation delete-api :shape-name "DeleteApi"
                                       :input delete-api-request :output
                                       delete-api-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri "/v2/apis/{apiId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-api-cache :shape-name
                                       "DeleteApiCache" :input
                                       delete-api-cache-request :output
                                       delete-api-cache-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/v1/apis/{apiId}/ApiCaches" :code 200)

(smithy/sdk/operation:define-operation delete-api-key :shape-name
                                       "DeleteApiKey" :input
                                       delete-api-key-request :output
                                       delete-api-key-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/v1/apis/{apiId}/apikeys/{id}" :code
                                       200)

(smithy/sdk/operation:define-operation delete-channel-namespace :shape-name
                                       "DeleteChannelNamespace" :input
                                       delete-channel-namespace-request :output
                                       delete-channel-namespace-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/v2/apis/{apiId}/channelNamespaces/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-data-source :shape-name
                                       "DeleteDataSource" :input
                                       delete-data-source-request :output
                                       delete-data-source-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/v1/apis/{apiId}/datasources/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-domain-name :shape-name
                                       "DeleteDomainName" :input
                                       delete-domain-name-request :output
                                       delete-domain-name-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/v1/domainnames/{domainName}" :code 200)

(smithy/sdk/operation:define-operation delete-function :shape-name
                                       "DeleteFunction" :input
                                       delete-function-request :output
                                       delete-function-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/v1/apis/{apiId}/functions/{functionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-graphql-api :shape-name
                                       "DeleteGraphqlApi" :input
                                       delete-graphql-api-request :output
                                       delete-graphql-api-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri "/v1/apis/{apiId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-resolver :shape-name
                                       "DeleteResolver" :input
                                       delete-resolver-request :output
                                       delete-resolver-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-type :shape-name "DeleteType"
                                       :input delete-type-request :output
                                       delete-type-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/v1/apis/{apiId}/types/{typeName}"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-api :shape-name
                                       "DisassociateApi" :input
                                       disassociate-api-request :output
                                       disassociate-api-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception)
                                       :method "DELETE" :uri
                                       "/v1/domainnames/{domainName}/apiassociation"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-merged-graphql-api
                                       :shape-name
                                       "DisassociateMergedGraphqlApi" :input
                                       disassociate-merged-graphql-api-request
                                       :output
                                       disassociate-merged-graphql-api-response
                                       :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/v1/sourceApis/{sourceApiIdentifier}/mergedApiAssociations/{associationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation disassociate-source-graphql-api
                                       :shape-name
                                       "DisassociateSourceGraphqlApi" :input
                                       disassociate-source-graphql-api-request
                                       :output
                                       disassociate-source-graphql-api-response
                                       :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation evaluate-code :shape-name "EvaluateCode"
                                       :input evaluate-code-request :output
                                       evaluate-code-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-failure-exception)
                                       :method "POST" :uri
                                       "/v1/dataplane-evaluatecode" :code 200)

(smithy/sdk/operation:define-operation evaluate-mapping-template :shape-name
                                       "EvaluateMappingTemplate" :input
                                       evaluate-mapping-template-request
                                       :output
                                       evaluate-mapping-template-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-failure-exception)
                                       :method "POST" :uri
                                       "/v1/dataplane-evaluatetemplate" :code
                                       200)

(smithy/sdk/operation:define-operation flush-api-cache :shape-name
                                       "FlushApiCache" :input
                                       flush-api-cache-request :output
                                       flush-api-cache-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/v1/apis/{apiId}/FlushCache" :code 200)

(smithy/sdk/operation:define-operation get-api :shape-name "GetApi" :input
                                       get-api-request :output get-api-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/v2/apis/{apiId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-api-association :shape-name
                                       "GetApiAssociation" :input
                                       get-api-association-request :output
                                       get-api-association-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-failure-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/v1/domainnames/{domainName}/apiassociation"
                                       :code 200)

(smithy/sdk/operation:define-operation get-api-cache :shape-name "GetApiCache"
                                       :input get-api-cache-request :output
                                       get-api-cache-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/apis/{apiId}/ApiCaches" :code 200)

(smithy/sdk/operation:define-operation get-channel-namespace :shape-name
                                       "GetChannelNamespace" :input
                                       get-channel-namespace-request :output
                                       get-channel-namespace-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v2/apis/{apiId}/channelNamespaces/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-source :shape-name
                                       "GetDataSource" :input
                                       get-data-source-request :output
                                       get-data-source-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/apis/{apiId}/datasources/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-data-source-introspection
                                       :shape-name "GetDataSourceIntrospection"
                                       :input
                                       get-data-source-introspection-request
                                       :output
                                       get-data-source-introspection-response
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/v1/datasources/introspections/{introspectionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-domain-name :shape-name
                                       "GetDomainName" :input
                                       get-domain-name-request :output
                                       get-domain-name-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-failure-exception
                                        not-found-exception)
                                       :method "GET" :uri
                                       "/v1/domainnames/{domainName}" :code 200)

(smithy/sdk/operation:define-operation get-function :shape-name "GetFunction"
                                       :input get-function-request :output
                                       get-function-response :errors
                                       (concurrent-modification-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/apis/{apiId}/functions/{functionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-graphql-api :shape-name
                                       "GetGraphqlApi" :input
                                       get-graphql-api-request :output
                                       get-graphql-api-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/v1/apis/{apiId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-graphql-api-environment-variables
                                       :shape-name
                                       "GetGraphqlApiEnvironmentVariables"
                                       :input
                                       get-graphql-api-environment-variables-request
                                       :output
                                       get-graphql-api-environment-variables-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/apis/{apiId}/environmentVariables"
                                       :code 200)

(smithy/sdk/operation:define-operation get-introspection-schema :shape-name
                                       "GetIntrospectionSchema" :input
                                       get-introspection-schema-request :output
                                       get-introspection-schema-response
                                       :errors
                                       (graph-qlschema-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/apis/{apiId}/schema" :code 200)

(smithy/sdk/operation:define-operation get-resolver :shape-name "GetResolver"
                                       :input get-resolver-request :output
                                       get-resolver-response :errors
                                       (concurrent-modification-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-schema-creation-status :shape-name
                                       "GetSchemaCreationStatus" :input
                                       get-schema-creation-status-request
                                       :output
                                       get-schema-creation-status-response
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/apis/{apiId}/schemacreation" :code
                                       200)

(smithy/sdk/operation:define-operation get-source-api-association :shape-name
                                       "GetSourceApiAssociation" :input
                                       get-source-api-association-request
                                       :output
                                       get-source-api-association-response
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-type :shape-name "GetType" :input
                                       get-type-request :output
                                       get-type-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/apis/{apiId}/types/{typeName}"
                                       :code 200)

(smithy/sdk/operation:define-operation list-api-keys :shape-name "ListApiKeys"
                                       :input list-api-keys-request :output
                                       list-api-keys-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/apis/{apiId}/apikeys" :code 200)

(smithy/sdk/operation:define-operation list-apis :shape-name "ListApis" :input
                                       list-apis-request :output
                                       list-apis-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/v2/apis" :code 200)

(smithy/sdk/operation:define-operation list-channel-namespaces :shape-name
                                       "ListChannelNamespaces" :input
                                       list-channel-namespaces-request :output
                                       list-channel-namespaces-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v2/apis/{apiId}/channelNamespaces"
                                       :code 200)

(smithy/sdk/operation:define-operation list-data-sources :shape-name
                                       "ListDataSources" :input
                                       list-data-sources-request :output
                                       list-data-sources-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/apis/{apiId}/datasources" :code 200)

(smithy/sdk/operation:define-operation list-domain-names :shape-name
                                       "ListDomainNames" :input
                                       list-domain-names-request :output
                                       list-domain-names-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-failure-exception)
                                       :method "GET" :uri "/v1/domainnames"
                                       :code 200)

(smithy/sdk/operation:define-operation list-functions :shape-name
                                       "ListFunctions" :input
                                       list-functions-request :output
                                       list-functions-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/apis/{apiId}/functions" :code 200)

(smithy/sdk/operation:define-operation list-graphql-apis :shape-name
                                       "ListGraphqlApis" :input
                                       list-graphql-apis-request :output
                                       list-graphql-apis-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        unauthorized-exception)
                                       :method "GET" :uri "/v1/apis" :code 200)

(smithy/sdk/operation:define-operation list-resolvers :shape-name
                                       "ListResolvers" :input
                                       list-resolvers-request :output
                                       list-resolvers-response :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/apis/{apiId}/types/{typeName}/resolvers"
                                       :code 200)

(smithy/sdk/operation:define-operation list-resolvers-by-function :shape-name
                                       "ListResolversByFunction" :input
                                       list-resolvers-by-function-request
                                       :output
                                       list-resolvers-by-function-response
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/apis/{apiId}/functions/{functionId}/resolvers"
                                       :code 200)

(smithy/sdk/operation:define-operation list-source-api-associations :shape-name
                                       "ListSourceApiAssociations" :input
                                       list-source-api-associations-request
                                       :output
                                       list-source-api-associations-response
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/apis/{apiId}/sourceApiAssociations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation list-types :shape-name "ListTypes"
                                       :input list-types-request :output
                                       list-types-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/apis/{apiId}/types" :code 200)

(smithy/sdk/operation:define-operation list-types-by-association :shape-name
                                       "ListTypesByAssociation" :input
                                       list-types-by-association-request
                                       :output
                                       list-types-by-association-response
                                       :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "GET" :uri
                                       "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}/types"
                                       :code 200)

(smithy/sdk/operation:define-operation put-graphql-api-environment-variables
                                       :shape-name
                                       "PutGraphqlApiEnvironmentVariables"
                                       :input
                                       put-graphql-api-environment-variables-request
                                       :output
                                       put-graphql-api-environment-variables-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "PUT" :uri
                                       "/v1/apis/{apiId}/environmentVariables"
                                       :code 200)

(smithy/sdk/operation:define-operation start-data-source-introspection
                                       :shape-name
                                       "StartDataSourceIntrospection" :input
                                       start-data-source-introspection-request
                                       :output
                                       start-data-source-introspection-response
                                       :errors
                                       (bad-request-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/datasources/introspections" :code
                                       200)

(smithy/sdk/operation:define-operation start-schema-creation :shape-name
                                       "StartSchemaCreation" :input
                                       start-schema-creation-request :output
                                       start-schema-creation-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/apis/{apiId}/schemacreation" :code
                                       200)

(smithy/sdk/operation:define-operation start-schema-merge :shape-name
                                       "StartSchemaMerge" :input
                                       start-schema-merge-request :output
                                       start-schema-merge-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}/merge"
                                       :code 200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "DELETE" :uri
                                       "/v1/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-api :shape-name "UpdateApi"
                                       :input update-api-request :output
                                       update-api-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/v2/apis/{apiId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-api-cache :shape-name
                                       "UpdateApiCache" :input
                                       update-api-cache-request :output
                                       update-api-cache-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/apis/{apiId}/ApiCaches/update"
                                       :code 200)

(smithy/sdk/operation:define-operation update-api-key :shape-name
                                       "UpdateApiKey" :input
                                       update-api-key-request :output
                                       update-api-key-response :errors
                                       (api-key-validity-out-of-bounds-exception
                                        bad-request-exception
                                        internal-failure-exception
                                        limit-exceeded-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/apis/{apiId}/apikeys/{id}" :code
                                       200)

(smithy/sdk/operation:define-operation update-channel-namespace :shape-name
                                       "UpdateChannelNamespace" :input
                                       update-channel-namespace-request :output
                                       update-channel-namespace-response
                                       :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v2/apis/{apiId}/channelNamespaces/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-data-source :shape-name
                                       "UpdateDataSource" :input
                                       update-data-source-request :output
                                       update-data-source-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/apis/{apiId}/datasources/{name}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-domain-name :shape-name
                                       "UpdateDomainName" :input
                                       update-domain-name-request :output
                                       update-domain-name-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception)
                                       :method "POST" :uri
                                       "/v1/domainnames/{domainName}" :code 200)

(smithy/sdk/operation:define-operation update-function :shape-name
                                       "UpdateFunction" :input
                                       update-function-request :output
                                       update-function-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/apis/{apiId}/functions/{functionId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-graphql-api :shape-name
                                       "UpdateGraphqlApi" :input
                                       update-graphql-api-request :output
                                       update-graphql-api-response :errors
                                       (access-denied-exception
                                        bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri "/v1/apis/{apiId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-resolver :shape-name
                                       "UpdateResolver" :input
                                       update-resolver-request :output
                                       update-resolver-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/apis/{apiId}/types/{typeName}/resolvers/{fieldName}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-source-api-association
                                       :shape-name "UpdateSourceApiAssociation"
                                       :input
                                       update-source-api-association-request
                                       :output
                                       update-source-api-association-response
                                       :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/mergedApis/{mergedApiIdentifier}/sourceApiAssociations/{associationId}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-type :shape-name "UpdateType"
                                       :input update-type-request :output
                                       update-type-response :errors
                                       (bad-request-exception
                                        concurrent-modification-exception
                                        internal-failure-exception
                                        not-found-exception
                                        unauthorized-exception)
                                       :method "POST" :uri
                                       "/v1/apis/{apiId}/types/{typeName}"
                                       :code 200)
