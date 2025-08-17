(uiop/package:define-package #:pira/bedrock-agentcore-control (:use)
                             (:export #:agent #:agent-artifact #:agent-endpoint
                              #:agent-endpoint-description
                              #:agent-endpoint-resource #:agent-endpoint-status
                              #:agent-endpoints #:agent-resource
                              #:agent-runtime-arn #:agent-runtime-endpoint-arn
                              #:agent-runtime-endpoint-id #:agent-runtime-id
                              #:agent-runtime-name #:agent-runtime-version
                              #:agent-status #:agents #:allowed-audience
                              #:allowed-audience-list #:allowed-client
                              #:allowed-clients-list
                              #:amazon-bedrock-agent-core-control
                              #:api-key-credential-location
                              #:api-key-credential-parameter-name
                              #:api-key-credential-prefix
                              #:api-key-credential-provider
                              #:api-key-credential-provider-arn
                              #:api-key-credential-provider-arn-type
                              #:api-key-credential-provider-item
                              #:api-key-credential-providers #:api-key-type
                              #:api-schema-configuration #:arn
                              #:authorization-endpoint-type
                              #:authorizer-configuration #:authorizer-type
                              #:aws-account-id #:browser-arn #:browser-id
                              #:browser-network-configuration
                              #:browser-network-mode #:browser-resource
                              #:browser-status #:browser-summaries
                              #:browser-summary #:client-id-type
                              #:client-secret-type #:client-token
                              #:code-interpreter-arn #:code-interpreter-id
                              #:code-interpreter-network-configuration
                              #:code-interpreter-network-mode
                              #:code-interpreter-resource
                              #:code-interpreter-status
                              #:code-interpreter-summaries
                              #:code-interpreter-summary
                              #:consolidation-configuration
                              #:container-configuration #:create-agent-runtime
                              #:create-agent-runtime-endpoint
                              #:create-api-key-credential-provider
                              #:create-browser #:create-code-interpreter
                              #:create-gateway #:create-gateway-target
                              #:create-memory
                              #:create-oauth2credential-provider
                              #:create-workload-identity #:credential-provider
                              #:credential-provider-arn-type
                              #:credential-provider-configuration
                              #:credential-provider-configurations
                              #:credential-provider-name
                              #:credential-provider-type
                              #:credential-provider-vendor-type
                              #:custom-configuration-input
                              #:custom-consolidation-configuration
                              #:custom-consolidation-configuration-input
                              #:custom-extraction-configuration
                              #:custom-extraction-configuration-input
                              #:custom-jwtauthorizer-configuration
                              #:custom-memory-strategy-input
                              #:custom-oauth2provider-config-input
                              #:custom-oauth2provider-config-output
                              #:date-timestamp #:delete-agent-runtime
                              #:delete-agent-runtime-endpoint
                              #:delete-api-key-credential-provider
                              #:delete-browser #:delete-code-interpreter
                              #:delete-gateway #:delete-gateway-target
                              #:delete-memory #:delete-memory-strategies-list
                              #:delete-memory-strategy-input
                              #:delete-oauth2credential-provider
                              #:delete-workload-identity #:description
                              #:discovery-url #:discovery-url-type
                              #:endpoint-name #:environment-variable-key
                              #:environment-variable-value
                              #:environment-variables-map #:exception-level
                              #:extraction-configuration
                              #:gateway-api-key-credential-provider
                              #:gateway-arn #:gateway-description #:gateway-id
                              #:gateway-identifier #:gateway-max-results
                              #:gateway-name #:gateway-next-token
                              #:gateway-protocol-configuration
                              #:gateway-protocol-type #:gateway-resource
                              #:gateway-status #:gateway-summaries
                              #:gateway-summary #:gateway-target-resource
                              #:gateway-url #:get-agent-runtime
                              #:get-agent-runtime-endpoint
                              #:get-api-key-credential-provider #:get-browser
                              #:get-code-interpreter #:get-gateway
                              #:get-gateway-target #:get-memory
                              #:get-oauth2credential-provider #:get-token-vault
                              #:get-workload-identity
                              #:github-oauth2provider-config-input
                              #:github-oauth2provider-config-output
                              #:google-oauth2provider-config-input
                              #:google-oauth2provider-config-output
                              #:inline-payload #:issuer-url-type #:key-type
                              #:kms-configuration #:kms-key-arn
                              #:lambda-function-arn
                              #:list-agent-runtime-endpoints
                              #:list-agent-runtime-versions
                              #:list-agent-runtimes
                              #:list-api-key-credential-providers
                              #:list-browsers #:list-code-interpreters
                              #:list-gateway-targets #:list-gateways
                              #:list-memories #:list-oauth2credential-providers
                              #:list-workload-identities
                              #:mcpgateway-configuration #:max-results
                              #:mcp-instructions
                              #:mcp-lambda-target-configuration
                              #:mcp-supported-versions
                              #:mcp-target-configuration #:mcp-version #:memory
                              #:memory-arn #:memory-id #:memory-resource
                              #:memory-status #:memory-strategy
                              #:memory-strategy-id #:memory-strategy-input
                              #:memory-strategy-input-list
                              #:memory-strategy-list #:memory-strategy-status
                              #:memory-strategy-type #:memory-summary
                              #:memory-summary-list
                              #:microsoft-oauth2provider-config-input
                              #:microsoft-oauth2provider-config-output
                              #:modify-consolidation-configuration
                              #:modify-extraction-configuration
                              #:modify-memory-strategies
                              #:modify-memory-strategies-list
                              #:modify-memory-strategy-input
                              #:modify-strategy-configuration #:name
                              #:namespace #:namespaces-list
                              #:network-configuration #:network-mode
                              #:next-token #:non-blank-string
                              #:non-empty-string #:oauth-credential-provider
                              #:oauth-credential-provider-arn
                              #:oauth-custom-parameters
                              #:oauth-custom-parameters-key
                              #:oauth-custom-parameters-value #:oauth-scope
                              #:oauth-scopes
                              #:oauth2authorization-server-metadata
                              #:oauth2credential-provider
                              #:oauth2credential-provider-item
                              #:oauth2credential-providers #:oauth2discovery
                              #:oauth2provider-config-input
                              #:oauth2provider-config-output #:override-type
                              #:prompt #:protocol-configuration
                              #:recording-config #:required-properties
                              #:resource-oauth2return-url-list-type
                              #:resource-oauth2return-url-type #:resource-type
                              #:response-list-type #:response-type #:role-arn
                              #:runtime-container-uri #:s3bucket-uri
                              #:s3configuration #:s3location
                              #:salesforce-oauth2provider-config-input
                              #:salesforce-oauth2provider-config-output
                              #:sandbox-name #:schema-definition
                              #:schema-properties #:schema-type #:search-type
                              #:secret #:secret-arn
                              #:semantic-consolidation-override
                              #:semantic-extraction-override
                              #:semantic-memory-strategy-input
                              #:semantic-override-configuration-input
                              #:semantic-override-consolidation-configuration-input
                              #:semantic-override-extraction-configuration-input
                              #:server-protocol #:set-token-vault-cmk
                              #:slack-oauth2provider-config-input
                              #:slack-oauth2provider-config-output
                              #:status-reason #:status-reasons
                              #:strategy-configuration
                              #:summary-consolidation-override
                              #:summary-memory-strategy-input
                              #:summary-override-configuration-input
                              #:summary-override-consolidation-configuration-input
                              #:target-configuration #:target-description
                              #:target-id #:target-max-results #:target-name
                              #:target-next-token #:target-status
                              #:target-summaries #:target-summary
                              #:token-endpoint-type #:token-vault-id-type
                              #:tool-definition #:tool-definitions
                              #:tool-schema #:update-agent-runtime
                              #:update-agent-runtime-endpoint
                              #:update-api-key-credential-provider
                              #:update-gateway #:update-gateway-target
                              #:update-memory
                              #:update-oauth2credential-provider
                              #:update-workload-identity
                              #:user-preference-consolidation-override
                              #:user-preference-extraction-override
                              #:user-preference-memory-strategy-input
                              #:user-preference-override-configuration-input
                              #:user-preference-override-consolidation-configuration-input
                              #:user-preference-override-extraction-configuration-input
                              #:validation-exception-field
                              #:validation-exception-field-list
                              #:validation-exception-reason #:workload-identity
                              #:workload-identity-arn
                              #:workload-identity-arn-type
                              #:workload-identity-details
                              #:workload-identity-list
                              #:workload-identity-name-type
                              #:workload-identity-type))
(common-lisp:in-package #:pira/bedrock-agentcore-control)

(smithy/sdk/service:define-service amazon-bedrock-agent-core-control
                                   :shape-name "AmazonBedrockAgentCoreControl"
                                   :version "2023-06-05" :title
                                   "Amazon Bedrock Agent Core Control Plane Fronting Layer"
                                   :operations
                                   '(get-token-vault set-token-vault-cmk)
                                   :traits
                                   '(("aws.api#service"
                                      ("sdkId" . "Bedrock AgentCore Control")
                                      ("arnNamespace" . "bedrock-agentcore")
                                      ("endpointPrefix"
                                       . "bedrock-agentcore-control")
                                      ("cloudTrailEventSource"
                                       . "bedrock-agentcore.amazonaws.com"))
                                     ("aws.auth#sigv4"
                                      ("name" . "bedrock-agentcore"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-structure agent common-lisp:nil
                                    ((agent-runtime-arn :target-type
                                      agent-runtime-arn :required common-lisp:t
                                      :member-name "agentRuntimeArn")
                                     (agent-runtime-id :target-type
                                      agent-runtime-id :required common-lisp:t
                                      :member-name "agentRuntimeId")
                                     (agent-runtime-version :target-type
                                      agent-runtime-version :required
                                      common-lisp:t :member-name
                                      "agentRuntimeVersion")
                                     (agent-runtime-name :target-type
                                      agent-runtime-name :required
                                      common-lisp:t :member-name
                                      "agentRuntimeName")
                                     (description :target-type description
                                      :required common-lisp:t :member-name
                                      "description")
                                     (last-updated-at :target-type
                                      date-timestamp :required common-lisp:t
                                      :member-name "lastUpdatedAt")
                                     (status :target-type agent-status
                                      :required common-lisp:t :member-name
                                      "status"))
                                    (:shape-name "Agent"))

(smithy/sdk/shapes:define-union agent-artifact common-lisp:nil
                                ((container-configuration :target-type
                                  container-configuration :member-name
                                  "containerConfiguration"))
                                (:shape-name "AgentArtifact"))

(smithy/sdk/shapes:define-structure agent-endpoint common-lisp:nil
                                    ((name :target-type endpoint-name :required
                                      common-lisp:t :member-name "name")
                                     (live-version :target-type
                                      agent-runtime-version :member-name
                                      "liveVersion")
                                     (target-version :target-type
                                      agent-runtime-version :member-name
                                      "targetVersion")
                                     (agent-runtime-endpoint-arn :target-type
                                      agent-runtime-endpoint-arn :required
                                      common-lisp:t :member-name
                                      "agentRuntimeEndpointArn")
                                     (agent-runtime-arn :target-type
                                      agent-runtime-arn :required common-lisp:t
                                      :member-name "agentRuntimeArn")
                                     (status :target-type agent-endpoint-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (id :target-type agent-runtime-endpoint-id
                                      :required common-lisp:t :member-name
                                      "id")
                                     (description :target-type
                                      agent-endpoint-description :member-name
                                      "description")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-updated-at :target-type
                                      date-timestamp :required common-lisp:t
                                      :member-name "lastUpdatedAt"))
                                    (:shape-name "AgentEndpoint"))

(smithy/sdk/shapes:define-type agent-endpoint-description
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum agent-endpoint-status
    common-lisp:nil
  (:creating "CREATING")
  (:create-failed "CREATE_FAILED")
  (:updating "UPDATING")
  (:update-failed "UPDATE_FAILED")
  (:ready "READY")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-list agent-endpoints :member agent-endpoint)

common-lisp:nil

(smithy/sdk/shapes:define-type agent-runtime-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type agent-runtime-endpoint-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type agent-runtime-endpoint-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type agent-runtime-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type agent-runtime-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type agent-runtime-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum agent-status
    common-lisp:nil
  (:creating "CREATING")
  (:create-failed "CREATE_FAILED")
  (:updating "UPDATING")
  (:update-failed "UPDATE_FAILED")
  (:ready "READY")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-list agents :member agent)

(smithy/sdk/shapes:define-type allowed-audience smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list allowed-audience-list :member allowed-audience)

(smithy/sdk/shapes:define-type allowed-client smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list allowed-clients-list :member allowed-client)

(smithy/sdk/shapes:define-enum api-key-credential-location
    common-lisp:nil
  (:header "HEADER")
  (:query-parameter "QUERY_PARAMETER"))

(smithy/sdk/shapes:define-type api-key-credential-parameter-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type api-key-credential-prefix
                               smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-type api-key-credential-provider-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type api-key-credential-provider-arn-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure api-key-credential-provider-item
                                    common-lisp:nil
                                    ((name :target-type
                                      credential-provider-name :required
                                      common-lisp:t :member-name "name")
                                     (credential-provider-arn :target-type
                                      api-key-credential-provider-arn-type
                                      :required common-lisp:t :member-name
                                      "credentialProviderArn")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime")
                                     (last-updated-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedTime"))
                                    (:shape-name
                                     "ApiKeyCredentialProviderItem"))

(smithy/sdk/shapes:define-list api-key-credential-providers :member
                               api-key-credential-provider-item)

(smithy/sdk/shapes:define-type api-key-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union api-schema-configuration common-lisp:nil
                                ((s3 :target-type s3configuration :member-name
                                  "s3")
                                 (inline-payload :target-type inline-payload
                                  :member-name "inlinePayload"))
                                (:shape-name "ApiSchemaConfiguration"))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type authorization-endpoint-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union authorizer-configuration common-lisp:nil
                                ((custom-jwtauthorizer :target-type
                                  custom-jwtauthorizer-configuration
                                  :member-name "customJWTAuthorizer"))
                                (:shape-name "AuthorizerConfiguration"))

(smithy/sdk/shapes:define-enum authorizer-type
    common-lisp:nil
  (:custom-jwt "CUSTOM_JWT"))

(smithy/sdk/shapes:define-type aws-account-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type browser-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type browser-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure browser-network-configuration
                                    common-lisp:nil
                                    ((network-mode :target-type
                                      browser-network-mode :required
                                      common-lisp:t :member-name
                                      "networkMode"))
                                    (:shape-name "BrowserNetworkConfiguration"))

(smithy/sdk/shapes:define-enum browser-network-mode
    common-lisp:nil
  (:public "PUBLIC"))

common-lisp:nil

(smithy/sdk/shapes:define-enum browser-status
    common-lisp:nil
  (:creating "CREATING")
  (:create-failed "CREATE_FAILED")
  (:ready "READY")
  (:deleting "DELETING")
  (:delete-failed "DELETE_FAILED")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-list browser-summaries :member browser-summary)

(smithy/sdk/shapes:define-structure browser-summary common-lisp:nil
                                    ((browser-id :target-type browser-id
                                      :required common-lisp:t :member-name
                                      "browserId")
                                     (browser-arn :target-type browser-arn
                                      :required common-lisp:t :member-name
                                      "browserArn")
                                     (name :target-type sandbox-name
                                      :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (status :target-type browser-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-updated-at :target-type
                                      date-timestamp :member-name
                                      "lastUpdatedAt"))
                                    (:shape-name "BrowserSummary"))

(smithy/sdk/shapes:define-type client-id-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-secret-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type code-interpreter-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type code-interpreter-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure code-interpreter-network-configuration
                                    common-lisp:nil
                                    ((network-mode :target-type
                                      code-interpreter-network-mode :required
                                      common-lisp:t :member-name
                                      "networkMode"))
                                    (:shape-name
                                     "CodeInterpreterNetworkConfiguration"))

(smithy/sdk/shapes:define-enum code-interpreter-network-mode
    common-lisp:nil
  (:public "PUBLIC")
  (:sandbox "SANDBOX"))

common-lisp:nil

(smithy/sdk/shapes:define-enum code-interpreter-status
    common-lisp:nil
  (:creating "CREATING")
  (:create-failed "CREATE_FAILED")
  (:ready "READY")
  (:deleting "DELETING")
  (:delete-failed "DELETE_FAILED")
  (:deleted "DELETED"))

(smithy/sdk/shapes:define-list code-interpreter-summaries :member
                               code-interpreter-summary)

(smithy/sdk/shapes:define-structure code-interpreter-summary common-lisp:nil
                                    ((code-interpreter-id :target-type
                                      code-interpreter-id :required
                                      common-lisp:t :member-name
                                      "codeInterpreterId")
                                     (code-interpreter-arn :target-type
                                      code-interpreter-arn :required
                                      common-lisp:t :member-name
                                      "codeInterpreterArn")
                                     (name :target-type sandbox-name
                                      :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (status :target-type
                                      code-interpreter-status :required
                                      common-lisp:t :member-name "status")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (last-updated-at :target-type
                                      date-timestamp :member-name
                                      "lastUpdatedAt"))
                                    (:shape-name "CodeInterpreterSummary"))

(smithy/sdk/shapes:define-error concurrent-modification-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "ConcurrentModificationException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-union consolidation-configuration common-lisp:nil
                                ((custom-consolidation-configuration
                                  :target-type
                                  custom-consolidation-configuration
                                  :member-name
                                  "customConsolidationConfiguration"))
                                (:shape-name "ConsolidationConfiguration"))

(smithy/sdk/shapes:define-structure container-configuration common-lisp:nil
                                    ((container-uri :target-type
                                      runtime-container-uri :required
                                      common-lisp:t :member-name
                                      "containerUri"))
                                    (:shape-name "ContainerConfiguration"))

(smithy/sdk/shapes:define-input create-agent-runtime-endpoint-request
                                common-lisp:nil
                                ((agent-runtime-id :target-type
                                  agent-runtime-id :required common-lisp:t
                                  :member-name "agentRuntimeId" :http-label
                                  common-lisp:t)
                                 (name :target-type endpoint-name :required
                                  common-lisp:t :member-name "name")
                                 (agent-runtime-version :target-type
                                  agent-runtime-version :member-name
                                  "agentRuntimeVersion")
                                 (description :target-type
                                  agent-endpoint-description :member-name
                                  "description")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name
                                 "CreateAgentRuntimeEndpointRequest"))

(smithy/sdk/shapes:define-output create-agent-runtime-endpoint-response
                                 common-lisp:nil
                                 ((target-version :target-type
                                   agent-runtime-version :required
                                   common-lisp:t :member-name "targetVersion")
                                  (agent-runtime-endpoint-arn :target-type
                                   agent-runtime-endpoint-arn :required
                                   common-lisp:t :member-name
                                   "agentRuntimeEndpointArn")
                                  (agent-runtime-arn :target-type
                                   agent-runtime-arn :required common-lisp:t
                                   :member-name "agentRuntimeArn")
                                  (status :target-type agent-endpoint-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt"))
                                 (:shape-name
                                  "CreateAgentRuntimeEndpointResponse"))

(smithy/sdk/shapes:define-input create-agent-runtime-request common-lisp:nil
                                ((agent-runtime-name :target-type
                                  agent-runtime-name :required common-lisp:t
                                  :member-name "agentRuntimeName")
                                 (description :target-type description
                                  :member-name "description")
                                 (agent-runtime-artifact :target-type
                                  agent-artifact :required common-lisp:t
                                  :member-name "agentRuntimeArtifact")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (network-configuration :target-type
                                  network-configuration :required common-lisp:t
                                  :member-name "networkConfiguration")
                                 (protocol-configuration :target-type
                                  protocol-configuration :member-name
                                  "protocolConfiguration")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (environment-variables :target-type
                                  environment-variables-map :member-name
                                  "environmentVariables")
                                 (authorizer-configuration :target-type
                                  authorizer-configuration :member-name
                                  "authorizerConfiguration"))
                                (:shape-name "CreateAgentRuntimeRequest"))

(smithy/sdk/shapes:define-output create-agent-runtime-response common-lisp:nil
                                 ((agent-runtime-arn :target-type
                                   agent-runtime-arn :required common-lisp:t
                                   :member-name "agentRuntimeArn")
                                  (workload-identity-details :target-type
                                   workload-identity-details :member-name
                                   "workloadIdentityDetails")
                                  (agent-runtime-id :target-type
                                   agent-runtime-id :required common-lisp:t
                                   :member-name "agentRuntimeId")
                                  (agent-runtime-version :target-type
                                   agent-runtime-version :required
                                   common-lisp:t :member-name
                                   "agentRuntimeVersion")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (status :target-type agent-status :required
                                   common-lisp:t :member-name "status"))
                                 (:shape-name "CreateAgentRuntimeResponse"))

(smithy/sdk/shapes:define-input create-api-key-credential-provider-request
                                common-lisp:nil
                                ((name :target-type credential-provider-name
                                  :required common-lisp:t :member-name "name")
                                 (api-key :target-type api-key-type :required
                                  common-lisp:t :member-name "apiKey"))
                                (:shape-name
                                 "CreateApiKeyCredentialProviderRequest"))

(smithy/sdk/shapes:define-output create-api-key-credential-provider-response
                                 common-lisp:nil
                                 ((api-key-secret-arn :target-type secret
                                   :required common-lisp:t :member-name
                                   "apiKeySecretArn")
                                  (name :target-type credential-provider-name
                                   :required common-lisp:t :member-name "name")
                                  (credential-provider-arn :target-type
                                   api-key-credential-provider-arn-type
                                   :required common-lisp:t :member-name
                                   "credentialProviderArn"))
                                 (:shape-name
                                  "CreateApiKeyCredentialProviderResponse"))

(smithy/sdk/shapes:define-input create-browser-request common-lisp:nil
                                ((name :target-type sandbox-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (execution-role-arn :target-type role-arn
                                  :member-name "executionRoleArn")
                                 (network-configuration :target-type
                                  browser-network-configuration :required
                                  common-lisp:t :member-name
                                  "networkConfiguration")
                                 (recording :target-type recording-config
                                  :member-name "recording")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateBrowserRequest"))

(smithy/sdk/shapes:define-output create-browser-response common-lisp:nil
                                 ((browser-id :target-type browser-id :required
                                   common-lisp:t :member-name "browserId")
                                  (browser-arn :target-type browser-arn
                                   :required common-lisp:t :member-name
                                   "browserArn")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (status :target-type browser-status :required
                                   common-lisp:t :member-name "status"))
                                 (:shape-name "CreateBrowserResponse"))

(smithy/sdk/shapes:define-input create-code-interpreter-request common-lisp:nil
                                ((name :target-type sandbox-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (execution-role-arn :target-type role-arn
                                  :member-name "executionRoleArn")
                                 (network-configuration :target-type
                                  code-interpreter-network-configuration
                                  :required common-lisp:t :member-name
                                  "networkConfiguration")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateCodeInterpreterRequest"))

(smithy/sdk/shapes:define-output create-code-interpreter-response
                                 common-lisp:nil
                                 ((code-interpreter-id :target-type
                                   code-interpreter-id :required common-lisp:t
                                   :member-name "codeInterpreterId")
                                  (code-interpreter-arn :target-type
                                   code-interpreter-arn :required common-lisp:t
                                   :member-name "codeInterpreterArn")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (status :target-type code-interpreter-status
                                   :required common-lisp:t :member-name
                                   "status"))
                                 (:shape-name "CreateCodeInterpreterResponse"))

(smithy/sdk/shapes:define-input create-gateway-request common-lisp:nil
                                ((name :target-type gateway-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type gateway-description
                                  :member-name "description")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (protocol-type :target-type
                                  gateway-protocol-type :required common-lisp:t
                                  :member-name "protocolType")
                                 (protocol-configuration :target-type
                                  gateway-protocol-configuration :member-name
                                  "protocolConfiguration")
                                 (authorizer-type :target-type authorizer-type
                                  :required common-lisp:t :member-name
                                  "authorizerType")
                                 (authorizer-configuration :target-type
                                  authorizer-configuration :required
                                  common-lisp:t :member-name
                                  "authorizerConfiguration")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "kmsKeyArn")
                                 (exception-level :target-type exception-level
                                  :member-name "exceptionLevel"))
                                (:shape-name "CreateGatewayRequest"))

(smithy/sdk/shapes:define-output create-gateway-response common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :required common-lisp:t :member-name
                                   "gatewayArn")
                                  (gateway-id :target-type gateway-id :required
                                   common-lisp:t :member-name "gatewayId")
                                  (gateway-url :target-type gateway-url
                                   :member-name "gatewayUrl")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "updatedAt")
                                  (status :target-type gateway-status :required
                                   common-lisp:t :member-name "status")
                                  (status-reasons :target-type status-reasons
                                   :member-name "statusReasons")
                                  (name :target-type gateway-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type gateway-description
                                   :member-name "description")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (protocol-type :target-type
                                   gateway-protocol-type :required
                                   common-lisp:t :member-name "protocolType")
                                  (protocol-configuration :target-type
                                   gateway-protocol-configuration :member-name
                                   "protocolConfiguration")
                                  (authorizer-type :target-type authorizer-type
                                   :required common-lisp:t :member-name
                                   "authorizerType")
                                  (authorizer-configuration :target-type
                                   authorizer-configuration :member-name
                                   "authorizerConfiguration")
                                  (kms-key-arn :target-type kms-key-arn
                                   :member-name "kmsKeyArn")
                                  (workload-identity-details :target-type
                                   workload-identity-details :member-name
                                   "workloadIdentityDetails")
                                  (exception-level :target-type exception-level
                                   :member-name "exceptionLevel"))
                                 (:shape-name "CreateGatewayResponse"))

(smithy/sdk/shapes:define-input create-gateway-target-request common-lisp:nil
                                ((gateway-identifier :target-type
                                  gateway-identifier :required common-lisp:t
                                  :member-name "gatewayIdentifier" :http-label
                                  common-lisp:t)
                                 (name :target-type target-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type target-description
                                  :member-name "description")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (target-configuration :target-type
                                  target-configuration :required common-lisp:t
                                  :member-name "targetConfiguration")
                                 (credential-provider-configurations
                                  :target-type
                                  credential-provider-configurations :required
                                  common-lisp:t :member-name
                                  "credentialProviderConfigurations"))
                                (:shape-name "CreateGatewayTargetRequest"))

(smithy/sdk/shapes:define-output create-gateway-target-response common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :required common-lisp:t :member-name
                                   "gatewayArn")
                                  (target-id :target-type target-id :required
                                   common-lisp:t :member-name "targetId")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "updatedAt")
                                  (status :target-type target-status :required
                                   common-lisp:t :member-name "status")
                                  (status-reasons :target-type status-reasons
                                   :member-name "statusReasons")
                                  (name :target-type target-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type target-description
                                   :member-name "description")
                                  (target-configuration :target-type
                                   target-configuration :required common-lisp:t
                                   :member-name "targetConfiguration")
                                  (credential-provider-configurations
                                   :target-type
                                   credential-provider-configurations :required
                                   common-lisp:t :member-name
                                   "credentialProviderConfigurations"))
                                 (:shape-name "CreateGatewayTargetResponse"))

(smithy/sdk/shapes:define-input create-memory-input common-lisp:nil
                                ((client-token :target-type non-empty-string
                                  :member-name "clientToken")
                                 (name :target-type name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type description
                                  :member-name "description")
                                 (encryption-key-arn :target-type arn
                                  :member-name "encryptionKeyArn")
                                 (memory-execution-role-arn :target-type arn
                                  :member-name "memoryExecutionRoleArn")
                                 (event-expiry-duration :target-type
                                  smithy/sdk/smithy-types:integer :required
                                  common-lisp:t :member-name
                                  "eventExpiryDuration")
                                 (memory-strategies :target-type
                                  memory-strategy-input-list :member-name
                                  "memoryStrategies"))
                                (:shape-name "CreateMemoryInput"))

(smithy/sdk/shapes:define-output create-memory-output common-lisp:nil
                                 ((memory :target-type memory :member-name
                                   "memory"))
                                 (:shape-name "CreateMemoryOutput"))

(smithy/sdk/shapes:define-input create-oauth2credential-provider-request
                                common-lisp:nil
                                ((name :target-type credential-provider-name
                                  :required common-lisp:t :member-name "name")
                                 (credential-provider-vendor :target-type
                                  credential-provider-vendor-type :required
                                  common-lisp:t :member-name
                                  "credentialProviderVendor")
                                 (oauth2provider-config-input :target-type
                                  oauth2provider-config-input :required
                                  common-lisp:t :member-name
                                  "oauth2ProviderConfigInput"))
                                (:shape-name
                                 "CreateOauth2CredentialProviderRequest"))

(smithy/sdk/shapes:define-output create-oauth2credential-provider-response
                                 common-lisp:nil
                                 ((client-secret-arn :target-type secret
                                   :required common-lisp:t :member-name
                                   "clientSecretArn")
                                  (name :target-type credential-provider-name
                                   :required common-lisp:t :member-name "name")
                                  (credential-provider-arn :target-type
                                   credential-provider-arn-type :required
                                   common-lisp:t :member-name
                                   "credentialProviderArn"))
                                 (:shape-name
                                  "CreateOauth2CredentialProviderResponse"))

(smithy/sdk/shapes:define-input create-workload-identity-request
                                common-lisp:nil
                                ((name :target-type workload-identity-name-type
                                  :required common-lisp:t :member-name "name")
                                 (allowed-resource-oauth2return-urls
                                  :target-type
                                  resource-oauth2return-url-list-type
                                  :member-name
                                  "allowedResourceOauth2ReturnUrls"))
                                (:shape-name "CreateWorkloadIdentityRequest"))

(smithy/sdk/shapes:define-output create-workload-identity-response
                                 common-lisp:nil
                                 ((name :target-type
                                   workload-identity-name-type :required
                                   common-lisp:t :member-name "name")
                                  (workload-identity-arn :target-type
                                   workload-identity-arn-type :required
                                   common-lisp:t :member-name
                                   "workloadIdentityArn")
                                  (allowed-resource-oauth2return-urls
                                   :target-type
                                   resource-oauth2return-url-list-type
                                   :member-name
                                   "allowedResourceOauth2ReturnUrls"))
                                 (:shape-name "CreateWorkloadIdentityResponse"))

(smithy/sdk/shapes:define-union credential-provider common-lisp:nil
                                ((oauth-credential-provider :target-type
                                  oauth-credential-provider :member-name
                                  "oauthCredentialProvider")
                                 (api-key-credential-provider :target-type
                                  gateway-api-key-credential-provider
                                  :member-name "apiKeyCredentialProvider"))
                                (:shape-name "CredentialProvider"))

(smithy/sdk/shapes:define-type credential-provider-arn-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure credential-provider-configuration
                                    common-lisp:nil
                                    ((credential-provider-type :target-type
                                      credential-provider-type :required
                                      common-lisp:t :member-name
                                      "credentialProviderType")
                                     (credential-provider :target-type
                                      credential-provider :member-name
                                      "credentialProvider"))
                                    (:shape-name
                                     "CredentialProviderConfiguration"))

(smithy/sdk/shapes:define-list credential-provider-configurations :member
                               credential-provider-configuration)

(smithy/sdk/shapes:define-type credential-provider-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum credential-provider-type
    common-lisp:nil
  (:gateway-iam-role "GATEWAY_IAM_ROLE")
  (:oauth "OAUTH")
  (:api-key "API_KEY"))

(smithy/sdk/shapes:define-enum credential-provider-vendor-type
    common-lisp:nil
  (:google-oauth2 "GoogleOauth2")
  (:github-oauth2 "GithubOauth2")
  (:slack-oauth2 "SlackOauth2")
  (:salesforce-oauth2 "SalesforceOauth2")
  (:microsoft-oauth2 "MicrosoftOauth2")
  (:custom-oauth2 "CustomOauth2"))

(smithy/sdk/shapes:define-union custom-configuration-input common-lisp:nil
                                ((semantic-override :target-type
                                  semantic-override-configuration-input
                                  :member-name "semanticOverride")
                                 (summary-override :target-type
                                  summary-override-configuration-input
                                  :member-name "summaryOverride")
                                 (user-preference-override :target-type
                                  user-preference-override-configuration-input
                                  :member-name "userPreferenceOverride"))
                                (:shape-name "CustomConfigurationInput"))

(smithy/sdk/shapes:define-union custom-consolidation-configuration
                                common-lisp:nil
                                ((semantic-consolidation-override :target-type
                                  semantic-consolidation-override :member-name
                                  "semanticConsolidationOverride")
                                 (summary-consolidation-override :target-type
                                  summary-consolidation-override :member-name
                                  "summaryConsolidationOverride")
                                 (user-preference-consolidation-override
                                  :target-type
                                  user-preference-consolidation-override
                                  :member-name
                                  "userPreferenceConsolidationOverride"))
                                (:shape-name
                                 "CustomConsolidationConfiguration"))

(smithy/sdk/shapes:define-union custom-consolidation-configuration-input
                                common-lisp:nil
                                ((semantic-consolidation-override :target-type
                                  semantic-override-consolidation-configuration-input
                                  :member-name "semanticConsolidationOverride")
                                 (summary-consolidation-override :target-type
                                  summary-override-consolidation-configuration-input
                                  :member-name "summaryConsolidationOverride")
                                 (user-preference-consolidation-override
                                  :target-type
                                  user-preference-override-consolidation-configuration-input
                                  :member-name
                                  "userPreferenceConsolidationOverride"))
                                (:shape-name
                                 "CustomConsolidationConfigurationInput"))

(smithy/sdk/shapes:define-union custom-extraction-configuration common-lisp:nil
                                ((semantic-extraction-override :target-type
                                  semantic-extraction-override :member-name
                                  "semanticExtractionOverride")
                                 (user-preference-extraction-override
                                  :target-type
                                  user-preference-extraction-override
                                  :member-name
                                  "userPreferenceExtractionOverride"))
                                (:shape-name "CustomExtractionConfiguration"))

(smithy/sdk/shapes:define-union custom-extraction-configuration-input
                                common-lisp:nil
                                ((semantic-extraction-override :target-type
                                  semantic-override-extraction-configuration-input
                                  :member-name "semanticExtractionOverride")
                                 (user-preference-extraction-override
                                  :target-type
                                  user-preference-override-extraction-configuration-input
                                  :member-name
                                  "userPreferenceExtractionOverride"))
                                (:shape-name
                                 "CustomExtractionConfigurationInput"))

(smithy/sdk/shapes:define-structure custom-jwtauthorizer-configuration
                                    common-lisp:nil
                                    ((discovery-url :target-type discovery-url
                                      :required common-lisp:t :member-name
                                      "discoveryUrl")
                                     (allowed-audience :target-type
                                      allowed-audience-list :member-name
                                      "allowedAudience")
                                     (allowed-clients :target-type
                                      allowed-clients-list :member-name
                                      "allowedClients"))
                                    (:shape-name
                                     "CustomJWTAuthorizerConfiguration"))

(smithy/sdk/shapes:define-structure custom-memory-strategy-input
                                    common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (namespaces :target-type namespaces-list
                                      :member-name "namespaces")
                                     (configuration :target-type
                                      custom-configuration-input :member-name
                                      "configuration"))
                                    (:shape-name "CustomMemoryStrategyInput"))

(smithy/sdk/shapes:define-structure custom-oauth2provider-config-input
                                    common-lisp:nil
                                    ((oauth-discovery :target-type
                                      oauth2discovery :required common-lisp:t
                                      :member-name "oauthDiscovery")
                                     (client-id :target-type client-id-type
                                      :required common-lisp:t :member-name
                                      "clientId")
                                     (client-secret :target-type
                                      client-secret-type :required
                                      common-lisp:t :member-name
                                      "clientSecret"))
                                    (:shape-name
                                     "CustomOauth2ProviderConfigInput"))

(smithy/sdk/shapes:define-structure custom-oauth2provider-config-output
                                    common-lisp:nil
                                    ((oauth-discovery :target-type
                                      oauth2discovery :required common-lisp:t
                                      :member-name "oauthDiscovery"))
                                    (:shape-name
                                     "CustomOauth2ProviderConfigOutput"))

(smithy/sdk/shapes:define-type date-timestamp smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-error decryption-failure common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "DecryptionFailure")
                                (:error-code 400))

(smithy/sdk/shapes:define-input delete-agent-runtime-endpoint-request
                                common-lisp:nil
                                ((agent-runtime-id :target-type
                                  agent-runtime-id :required common-lisp:t
                                  :member-name "agentRuntimeId" :http-label
                                  common-lisp:t)
                                 (endpoint-name :target-type endpoint-name
                                  :required common-lisp:t :member-name
                                  "endpointName" :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name
                                 "DeleteAgentRuntimeEndpointRequest"))

(smithy/sdk/shapes:define-output delete-agent-runtime-endpoint-response
                                 common-lisp:nil
                                 ((status :target-type agent-endpoint-status
                                   :required common-lisp:t :member-name
                                   "status"))
                                 (:shape-name
                                  "DeleteAgentRuntimeEndpointResponse"))

(smithy/sdk/shapes:define-input delete-agent-runtime-request common-lisp:nil
                                ((agent-runtime-id :target-type
                                  agent-runtime-id :required common-lisp:t
                                  :member-name "agentRuntimeId" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteAgentRuntimeRequest"))

(smithy/sdk/shapes:define-output delete-agent-runtime-response common-lisp:nil
                                 ((status :target-type agent-status :required
                                   common-lisp:t :member-name "status"))
                                 (:shape-name "DeleteAgentRuntimeResponse"))

(smithy/sdk/shapes:define-input delete-api-key-credential-provider-request
                                common-lisp:nil
                                ((name :target-type credential-provider-name
                                  :required common-lisp:t :member-name "name"))
                                (:shape-name
                                 "DeleteApiKeyCredentialProviderRequest"))

(smithy/sdk/shapes:define-output delete-api-key-credential-provider-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteApiKeyCredentialProviderResponse"))

(smithy/sdk/shapes:define-input delete-browser-request common-lisp:nil
                                ((browser-id :target-type browser-id :required
                                  common-lisp:t :member-name "browserId"
                                  :http-label common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeleteBrowserRequest"))

(smithy/sdk/shapes:define-output delete-browser-response common-lisp:nil
                                 ((browser-id :target-type browser-id :required
                                   common-lisp:t :member-name "browserId")
                                  (status :target-type browser-status :required
                                   common-lisp:t :member-name "status")
                                  (last-updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "lastUpdatedAt"))
                                 (:shape-name "DeleteBrowserResponse"))

(smithy/sdk/shapes:define-input delete-code-interpreter-request common-lisp:nil
                                ((code-interpreter-id :target-type
                                  code-interpreter-id :required common-lisp:t
                                  :member-name "codeInterpreterId" :http-label
                                  common-lisp:t)
                                 (client-token :target-type client-token
                                  :member-name "clientToken" :http-query
                                  "clientToken"))
                                (:shape-name "DeleteCodeInterpreterRequest"))

(smithy/sdk/shapes:define-output delete-code-interpreter-response
                                 common-lisp:nil
                                 ((code-interpreter-id :target-type
                                   code-interpreter-id :required common-lisp:t
                                   :member-name "codeInterpreterId")
                                  (status :target-type code-interpreter-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (last-updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "lastUpdatedAt"))
                                 (:shape-name "DeleteCodeInterpreterResponse"))

(smithy/sdk/shapes:define-input delete-gateway-request common-lisp:nil
                                ((gateway-identifier :target-type
                                  gateway-identifier :required common-lisp:t
                                  :member-name "gatewayIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteGatewayRequest"))

(smithy/sdk/shapes:define-output delete-gateway-response common-lisp:nil
                                 ((gateway-id :target-type gateway-id :required
                                   common-lisp:t :member-name "gatewayId")
                                  (status :target-type gateway-status :required
                                   common-lisp:t :member-name "status")
                                  (status-reasons :target-type status-reasons
                                   :member-name "statusReasons"))
                                 (:shape-name "DeleteGatewayResponse"))

(smithy/sdk/shapes:define-input delete-gateway-target-request common-lisp:nil
                                ((gateway-identifier :target-type
                                  gateway-identifier :required common-lisp:t
                                  :member-name "gatewayIdentifier" :http-label
                                  common-lisp:t)
                                 (target-id :target-type target-id :required
                                  common-lisp:t :member-name "targetId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteGatewayTargetRequest"))

(smithy/sdk/shapes:define-output delete-gateway-target-response common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :required common-lisp:t :member-name
                                   "gatewayArn")
                                  (target-id :target-type target-id :required
                                   common-lisp:t :member-name "targetId")
                                  (status :target-type target-status :required
                                   common-lisp:t :member-name "status")
                                  (status-reasons :target-type status-reasons
                                   :member-name "statusReasons"))
                                 (:shape-name "DeleteGatewayTargetResponse"))

(smithy/sdk/shapes:define-input delete-memory-input common-lisp:nil
                                ((client-token :target-type non-empty-string
                                  :member-name "clientToken" :http-query
                                  "clientToken")
                                 (memory-id :target-type memory-id :required
                                  common-lisp:t :member-name "memoryId"
                                  :http-label common-lisp:t))
                                (:shape-name "DeleteMemoryInput"))

(smithy/sdk/shapes:define-output delete-memory-output common-lisp:nil
                                 ((memory-id :target-type memory-id :required
                                   common-lisp:t :member-name "memoryId")
                                  (status :target-type memory-status
                                   :member-name "status"))
                                 (:shape-name "DeleteMemoryOutput"))

(smithy/sdk/shapes:define-list delete-memory-strategies-list :member
                               delete-memory-strategy-input)

(smithy/sdk/shapes:define-structure delete-memory-strategy-input
                                    common-lisp:nil
                                    ((memory-strategy-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "memoryStrategyId"))
                                    (:shape-name "DeleteMemoryStrategyInput"))

(smithy/sdk/shapes:define-input delete-oauth2credential-provider-request
                                common-lisp:nil
                                ((name :target-type credential-provider-name
                                  :required common-lisp:t :member-name "name"))
                                (:shape-name
                                 "DeleteOauth2CredentialProviderRequest"))

(smithy/sdk/shapes:define-output delete-oauth2credential-provider-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteOauth2CredentialProviderResponse"))

(smithy/sdk/shapes:define-input delete-workload-identity-request
                                common-lisp:nil
                                ((name :target-type workload-identity-name-type
                                  :required common-lisp:t :member-name "name"))
                                (:shape-name "DeleteWorkloadIdentityRequest"))

(smithy/sdk/shapes:define-output delete-workload-identity-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteWorkloadIdentityResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type discovery-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type discovery-url-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error encryption-failure common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message"))
                                (:shape-name "EncryptionFailure")
                                (:error-code 400))

(smithy/sdk/shapes:define-type endpoint-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-variable-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-variable-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map environment-variables-map :key
                              environment-variable-key :value
                              environment-variable-value)

(smithy/sdk/shapes:define-enum exception-level
    common-lisp:nil
  (:debug "DEBUG"))

(smithy/sdk/shapes:define-union extraction-configuration common-lisp:nil
                                ((custom-extraction-configuration :target-type
                                  custom-extraction-configuration :member-name
                                  "customExtractionConfiguration"))
                                (:shape-name "ExtractionConfiguration"))

(smithy/sdk/shapes:define-structure gateway-api-key-credential-provider
                                    common-lisp:nil
                                    ((provider-arn :target-type
                                      api-key-credential-provider-arn :required
                                      common-lisp:t :member-name "providerArn")
                                     (credential-parameter-name :target-type
                                      api-key-credential-parameter-name
                                      :member-name "credentialParameterName")
                                     (credential-prefix :target-type
                                      api-key-credential-prefix :member-name
                                      "credentialPrefix")
                                     (credential-location :target-type
                                      api-key-credential-location :member-name
                                      "credentialLocation"))
                                    (:shape-name
                                     "GatewayApiKeyCredentialProvider"))

(smithy/sdk/shapes:define-type gateway-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type gateway-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type gateway-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type gateway-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type gateway-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type gateway-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type gateway-next-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union gateway-protocol-configuration common-lisp:nil
                                ((mcp :target-type mcpgateway-configuration
                                  :member-name "mcp"))
                                (:shape-name "GatewayProtocolConfiguration"))

(smithy/sdk/shapes:define-enum gateway-protocol-type
    common-lisp:nil
  (:mcp "MCP"))

common-lisp:nil

(smithy/sdk/shapes:define-enum gateway-status
    common-lisp:nil
  (:creating "CREATING")
  (:updating "UPDATING")
  (:update-unsuccessful "UPDATE_UNSUCCESSFUL")
  (:deleting "DELETING")
  (:ready "READY")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list gateway-summaries :member gateway-summary)

(smithy/sdk/shapes:define-structure gateway-summary common-lisp:nil
                                    ((gateway-id :target-type gateway-id
                                      :required common-lisp:t :member-name
                                      "gatewayId")
                                     (name :target-type gateway-name :required
                                      common-lisp:t :member-name "name")
                                     (status :target-type gateway-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (description :target-type
                                      gateway-description :member-name
                                      "description")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (authorizer-type :target-type
                                      authorizer-type :required common-lisp:t
                                      :member-name "authorizerType")
                                     (protocol-type :target-type
                                      gateway-protocol-type :required
                                      common-lisp:t :member-name
                                      "protocolType"))
                                    (:shape-name "GatewaySummary"))

common-lisp:nil

(smithy/sdk/shapes:define-type gateway-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input get-agent-runtime-endpoint-request
                                common-lisp:nil
                                ((agent-runtime-id :target-type
                                  agent-runtime-id :required common-lisp:t
                                  :member-name "agentRuntimeId" :http-label
                                  common-lisp:t)
                                 (endpoint-name :target-type endpoint-name
                                  :required common-lisp:t :member-name
                                  "endpointName" :http-label common-lisp:t))
                                (:shape-name "GetAgentRuntimeEndpointRequest"))

(smithy/sdk/shapes:define-output get-agent-runtime-endpoint-response
                                 common-lisp:nil
                                 ((live-version :target-type
                                   agent-runtime-version :member-name
                                   "liveVersion")
                                  (target-version :target-type
                                   agent-runtime-version :member-name
                                   "targetVersion")
                                  (agent-runtime-endpoint-arn :target-type
                                   agent-runtime-endpoint-arn :required
                                   common-lisp:t :member-name
                                   "agentRuntimeEndpointArn")
                                  (agent-runtime-arn :target-type
                                   agent-runtime-arn :required common-lisp:t
                                   :member-name "agentRuntimeArn")
                                  (description :target-type
                                   agent-endpoint-description :member-name
                                   "description")
                                  (status :target-type agent-endpoint-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (last-updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "lastUpdatedAt")
                                  (failure-reason :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "failureReason")
                                  (name :target-type endpoint-name :required
                                   common-lisp:t :member-name "name")
                                  (id :target-type agent-runtime-endpoint-id
                                   :required common-lisp:t :member-name "id"))
                                 (:shape-name
                                  "GetAgentRuntimeEndpointResponse"))

(smithy/sdk/shapes:define-input get-agent-runtime-request common-lisp:nil
                                ((agent-runtime-id :target-type
                                  agent-runtime-id :required common-lisp:t
                                  :member-name "agentRuntimeId" :http-label
                                  common-lisp:t)
                                 (agent-runtime-version :target-type
                                  agent-runtime-version :member-name
                                  "agentRuntimeVersion" :http-query "version"))
                                (:shape-name "GetAgentRuntimeRequest"))

(smithy/sdk/shapes:define-output get-agent-runtime-response common-lisp:nil
                                 ((agent-runtime-arn :target-type
                                   agent-runtime-arn :required common-lisp:t
                                   :member-name "agentRuntimeArn")
                                  (workload-identity-details :target-type
                                   workload-identity-details :member-name
                                   "workloadIdentityDetails")
                                  (agent-runtime-name :target-type
                                   agent-runtime-name :required common-lisp:t
                                   :member-name "agentRuntimeName")
                                  (description :target-type description
                                   :member-name "description")
                                  (agent-runtime-id :target-type
                                   agent-runtime-id :required common-lisp:t
                                   :member-name "agentRuntimeId")
                                  (agent-runtime-version :target-type
                                   agent-runtime-version :required
                                   common-lisp:t :member-name
                                   "agentRuntimeVersion")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (last-updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "lastUpdatedAt")
                                  (role-arn :target-type role-arn :required
                                   common-lisp:t :member-name "roleArn")
                                  (agent-runtime-artifact :target-type
                                   agent-artifact :member-name
                                   "agentRuntimeArtifact")
                                  (network-configuration :target-type
                                   network-configuration :required
                                   common-lisp:t :member-name
                                   "networkConfiguration")
                                  (protocol-configuration :target-type
                                   protocol-configuration :member-name
                                   "protocolConfiguration")
                                  (environment-variables :target-type
                                   environment-variables-map :member-name
                                   "environmentVariables")
                                  (authorizer-configuration :target-type
                                   authorizer-configuration :member-name
                                   "authorizerConfiguration")
                                  (status :target-type agent-status :required
                                   common-lisp:t :member-name "status"))
                                 (:shape-name "GetAgentRuntimeResponse"))

(smithy/sdk/shapes:define-input get-api-key-credential-provider-request
                                common-lisp:nil
                                ((name :target-type credential-provider-name
                                  :required common-lisp:t :member-name "name"))
                                (:shape-name
                                 "GetApiKeyCredentialProviderRequest"))

(smithy/sdk/shapes:define-output get-api-key-credential-provider-response
                                 common-lisp:nil
                                 ((api-key-secret-arn :target-type secret
                                   :required common-lisp:t :member-name
                                   "apiKeySecretArn")
                                  (name :target-type credential-provider-name
                                   :required common-lisp:t :member-name "name")
                                  (credential-provider-arn :target-type
                                   api-key-credential-provider-arn-type
                                   :required common-lisp:t :member-name
                                   "credentialProviderArn")
                                  (created-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createdTime")
                                  (last-updated-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "lastUpdatedTime"))
                                 (:shape-name
                                  "GetApiKeyCredentialProviderResponse"))

(smithy/sdk/shapes:define-input get-browser-request common-lisp:nil
                                ((browser-id :target-type browser-id :required
                                  common-lisp:t :member-name "browserId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetBrowserRequest"))

(smithy/sdk/shapes:define-output get-browser-response common-lisp:nil
                                 ((browser-id :target-type browser-id :required
                                   common-lisp:t :member-name "browserId")
                                  (browser-arn :target-type browser-arn
                                   :required common-lisp:t :member-name
                                   "browserArn")
                                  (name :target-type sandbox-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (execution-role-arn :target-type role-arn
                                   :member-name "executionRoleArn")
                                  (network-configuration :target-type
                                   browser-network-configuration :required
                                   common-lisp:t :member-name
                                   "networkConfiguration")
                                  (recording :target-type recording-config
                                   :member-name "recording")
                                  (status :target-type browser-status :required
                                   common-lisp:t :member-name "status")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (last-updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "lastUpdatedAt"))
                                 (:shape-name "GetBrowserResponse"))

(smithy/sdk/shapes:define-input get-code-interpreter-request common-lisp:nil
                                ((code-interpreter-id :target-type
                                  code-interpreter-id :required common-lisp:t
                                  :member-name "codeInterpreterId" :http-label
                                  common-lisp:t))
                                (:shape-name "GetCodeInterpreterRequest"))

(smithy/sdk/shapes:define-output get-code-interpreter-response common-lisp:nil
                                 ((code-interpreter-id :target-type
                                   code-interpreter-id :required common-lisp:t
                                   :member-name "codeInterpreterId")
                                  (code-interpreter-arn :target-type
                                   code-interpreter-arn :required common-lisp:t
                                   :member-name "codeInterpreterArn")
                                  (name :target-type sandbox-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type description
                                   :member-name "description")
                                  (execution-role-arn :target-type role-arn
                                   :member-name "executionRoleArn")
                                  (network-configuration :target-type
                                   code-interpreter-network-configuration
                                   :required common-lisp:t :member-name
                                   "networkConfiguration")
                                  (status :target-type code-interpreter-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (last-updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "lastUpdatedAt"))
                                 (:shape-name "GetCodeInterpreterResponse"))

(smithy/sdk/shapes:define-input get-gateway-request common-lisp:nil
                                ((gateway-identifier :target-type
                                  gateway-identifier :required common-lisp:t
                                  :member-name "gatewayIdentifier" :http-label
                                  common-lisp:t))
                                (:shape-name "GetGatewayRequest"))

(smithy/sdk/shapes:define-output get-gateway-response common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :required common-lisp:t :member-name
                                   "gatewayArn")
                                  (gateway-id :target-type gateway-id :required
                                   common-lisp:t :member-name "gatewayId")
                                  (gateway-url :target-type gateway-url
                                   :member-name "gatewayUrl")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "updatedAt")
                                  (status :target-type gateway-status :required
                                   common-lisp:t :member-name "status")
                                  (status-reasons :target-type status-reasons
                                   :member-name "statusReasons")
                                  (name :target-type gateway-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type gateway-description
                                   :member-name "description")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (protocol-type :target-type
                                   gateway-protocol-type :required
                                   common-lisp:t :member-name "protocolType")
                                  (protocol-configuration :target-type
                                   gateway-protocol-configuration :member-name
                                   "protocolConfiguration")
                                  (authorizer-type :target-type authorizer-type
                                   :required common-lisp:t :member-name
                                   "authorizerType")
                                  (authorizer-configuration :target-type
                                   authorizer-configuration :member-name
                                   "authorizerConfiguration")
                                  (kms-key-arn :target-type kms-key-arn
                                   :member-name "kmsKeyArn")
                                  (workload-identity-details :target-type
                                   workload-identity-details :member-name
                                   "workloadIdentityDetails")
                                  (exception-level :target-type exception-level
                                   :member-name "exceptionLevel"))
                                 (:shape-name "GetGatewayResponse"))

(smithy/sdk/shapes:define-input get-gateway-target-request common-lisp:nil
                                ((gateway-identifier :target-type
                                  gateway-identifier :required common-lisp:t
                                  :member-name "gatewayIdentifier" :http-label
                                  common-lisp:t)
                                 (target-id :target-type target-id :required
                                  common-lisp:t :member-name "targetId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetGatewayTargetRequest"))

(smithy/sdk/shapes:define-output get-gateway-target-response common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :required common-lisp:t :member-name
                                   "gatewayArn")
                                  (target-id :target-type target-id :required
                                   common-lisp:t :member-name "targetId")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "updatedAt")
                                  (status :target-type target-status :required
                                   common-lisp:t :member-name "status")
                                  (status-reasons :target-type status-reasons
                                   :member-name "statusReasons")
                                  (name :target-type target-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type target-description
                                   :member-name "description")
                                  (target-configuration :target-type
                                   target-configuration :required common-lisp:t
                                   :member-name "targetConfiguration")
                                  (credential-provider-configurations
                                   :target-type
                                   credential-provider-configurations :required
                                   common-lisp:t :member-name
                                   "credentialProviderConfigurations"))
                                 (:shape-name "GetGatewayTargetResponse"))

(smithy/sdk/shapes:define-input get-memory-input common-lisp:nil
                                ((memory-id :target-type memory-id :required
                                  common-lisp:t :member-name "memoryId"
                                  :http-label common-lisp:t))
                                (:shape-name "GetMemoryInput"))

(smithy/sdk/shapes:define-output get-memory-output common-lisp:nil
                                 ((memory :target-type memory :required
                                   common-lisp:t :member-name "memory"))
                                 (:shape-name "GetMemoryOutput"))

(smithy/sdk/shapes:define-input get-oauth2credential-provider-request
                                common-lisp:nil
                                ((name :target-type credential-provider-name
                                  :required common-lisp:t :member-name "name"))
                                (:shape-name
                                 "GetOauth2CredentialProviderRequest"))

(smithy/sdk/shapes:define-output get-oauth2credential-provider-response
                                 common-lisp:nil
                                 ((client-secret-arn :target-type secret
                                   :required common-lisp:t :member-name
                                   "clientSecretArn")
                                  (name :target-type credential-provider-name
                                   :required common-lisp:t :member-name "name")
                                  (credential-provider-arn :target-type
                                   credential-provider-arn-type :required
                                   common-lisp:t :member-name
                                   "credentialProviderArn")
                                  (credential-provider-vendor :target-type
                                   credential-provider-vendor-type :required
                                   common-lisp:t :member-name
                                   "credentialProviderVendor")
                                  (oauth2provider-config-output :target-type
                                   oauth2provider-config-output :required
                                   common-lisp:t :member-name
                                   "oauth2ProviderConfigOutput")
                                  (created-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createdTime")
                                  (last-updated-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "lastUpdatedTime"))
                                 (:shape-name
                                  "GetOauth2CredentialProviderResponse"))

(smithy/sdk/shapes:define-input get-token-vault-request common-lisp:nil
                                ((token-vault-id :target-type
                                  token-vault-id-type :member-name
                                  "tokenVaultId"))
                                (:shape-name "GetTokenVaultRequest"))

(smithy/sdk/shapes:define-output get-token-vault-response common-lisp:nil
                                 ((token-vault-id :target-type
                                   token-vault-id-type :required common-lisp:t
                                   :member-name "tokenVaultId")
                                  (kms-configuration :target-type
                                   kms-configuration :required common-lisp:t
                                   :member-name "kmsConfiguration")
                                  (last-modified-date :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "lastModifiedDate"))
                                 (:shape-name "GetTokenVaultResponse"))

(smithy/sdk/shapes:define-input get-workload-identity-request common-lisp:nil
                                ((name :target-type workload-identity-name-type
                                  :required common-lisp:t :member-name "name"))
                                (:shape-name "GetWorkloadIdentityRequest"))

(smithy/sdk/shapes:define-output get-workload-identity-response common-lisp:nil
                                 ((name :target-type
                                   workload-identity-name-type :required
                                   common-lisp:t :member-name "name")
                                  (workload-identity-arn :target-type
                                   workload-identity-arn-type :required
                                   common-lisp:t :member-name
                                   "workloadIdentityArn")
                                  (allowed-resource-oauth2return-urls
                                   :target-type
                                   resource-oauth2return-url-list-type
                                   :member-name
                                   "allowedResourceOauth2ReturnUrls")
                                  (created-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createdTime")
                                  (last-updated-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "lastUpdatedTime"))
                                 (:shape-name "GetWorkloadIdentityResponse"))

(smithy/sdk/shapes:define-structure github-oauth2provider-config-input
                                    common-lisp:nil
                                    ((client-id :target-type client-id-type
                                      :required common-lisp:t :member-name
                                      "clientId")
                                     (client-secret :target-type
                                      client-secret-type :required
                                      common-lisp:t :member-name
                                      "clientSecret"))
                                    (:shape-name
                                     "GithubOauth2ProviderConfigInput"))

(smithy/sdk/shapes:define-structure github-oauth2provider-config-output
                                    common-lisp:nil
                                    ((oauth-discovery :target-type
                                      oauth2discovery :required common-lisp:t
                                      :member-name "oauthDiscovery"))
                                    (:shape-name
                                     "GithubOauth2ProviderConfigOutput"))

(smithy/sdk/shapes:define-structure google-oauth2provider-config-input
                                    common-lisp:nil
                                    ((client-id :target-type client-id-type
                                      :required common-lisp:t :member-name
                                      "clientId")
                                     (client-secret :target-type
                                      client-secret-type :required
                                      common-lisp:t :member-name
                                      "clientSecret"))
                                    (:shape-name
                                     "GoogleOauth2ProviderConfigInput"))

(smithy/sdk/shapes:define-structure google-oauth2provider-config-output
                                    common-lisp:nil
                                    ((oauth-discovery :target-type
                                      oauth2discovery :required common-lisp:t
                                      :member-name "oauthDiscovery"))
                                    (:shape-name
                                     "GoogleOauth2ProviderConfigOutput"))

(smithy/sdk/shapes:define-type inline-payload smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type issuer-url-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum key-type
    common-lisp:nil
  (:customer-managed-key "CustomerManagedKey")
  (:service-managed-key "ServiceManagedKey"))

(smithy/sdk/shapes:define-structure kms-configuration common-lisp:nil
                                    ((key-type :target-type key-type :required
                                      common-lisp:t :member-name "keyType")
                                     (kms-key-arn :target-type kms-key-arn
                                      :member-name "kmsKeyArn"))
                                    (:shape-name "KmsConfiguration"))

(smithy/sdk/shapes:define-type kms-key-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type lambda-function-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-agent-runtime-endpoints-request
                                common-lisp:nil
                                ((agent-runtime-id :target-type
                                  agent-runtime-id :required common-lisp:t
                                  :member-name "agentRuntimeId" :http-label
                                  common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name
                                 "ListAgentRuntimeEndpointsRequest"))

(smithy/sdk/shapes:define-output list-agent-runtime-endpoints-response
                                 common-lisp:nil
                                 ((runtime-endpoints :target-type
                                   agent-endpoints :required common-lisp:t
                                   :member-name "runtimeEndpoints")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListAgentRuntimeEndpointsResponse"))

(smithy/sdk/shapes:define-input list-agent-runtime-versions-request
                                common-lisp:nil
                                ((agent-runtime-id :target-type
                                  agent-runtime-id :required common-lisp:t
                                  :member-name "agentRuntimeId" :http-label
                                  common-lisp:t)
                                 (max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListAgentRuntimeVersionsRequest"))

(smithy/sdk/shapes:define-output list-agent-runtime-versions-response
                                 common-lisp:nil
                                 ((agent-runtimes :target-type agents :required
                                   common-lisp:t :member-name "agentRuntimes")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "ListAgentRuntimeVersionsResponse"))

(smithy/sdk/shapes:define-input list-agent-runtimes-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListAgentRuntimesRequest"))

(smithy/sdk/shapes:define-output list-agent-runtimes-response common-lisp:nil
                                 ((agent-runtimes :target-type agents :required
                                   common-lisp:t :member-name "agentRuntimes")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListAgentRuntimesResponse"))

(smithy/sdk/shapes:define-input list-api-key-credential-providers-request
                                common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type max-results
                                  :member-name "maxResults"))
                                (:shape-name
                                 "ListApiKeyCredentialProvidersRequest"))

(smithy/sdk/shapes:define-output list-api-key-credential-providers-response
                                 common-lisp:nil
                                 ((credential-providers :target-type
                                   api-key-credential-providers :required
                                   common-lisp:t :member-name
                                   "credentialProviders")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListApiKeyCredentialProvidersResponse"))

(smithy/sdk/shapes:define-input list-browsers-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (type :target-type resource-type :member-name
                                  "type" :http-query "type"))
                                (:shape-name "ListBrowsersRequest"))

(smithy/sdk/shapes:define-output list-browsers-response common-lisp:nil
                                 ((browser-summaries :target-type
                                   browser-summaries :required common-lisp:t
                                   :member-name "browserSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListBrowsersResponse"))

(smithy/sdk/shapes:define-input list-code-interpreters-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken")
                                 (type :target-type resource-type :member-name
                                  "type" :http-query "type"))
                                (:shape-name "ListCodeInterpretersRequest"))

(smithy/sdk/shapes:define-output list-code-interpreters-response
                                 common-lisp:nil
                                 ((code-interpreter-summaries :target-type
                                   code-interpreter-summaries :required
                                   common-lisp:t :member-name
                                   "codeInterpreterSummaries")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListCodeInterpretersResponse"))

(smithy/sdk/shapes:define-input list-gateway-targets-request common-lisp:nil
                                ((gateway-identifier :target-type
                                  gateway-identifier :required common-lisp:t
                                  :member-name "gatewayIdentifier" :http-label
                                  common-lisp:t)
                                 (max-results :target-type target-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type target-next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListGatewayTargetsRequest"))

(smithy/sdk/shapes:define-output list-gateway-targets-response common-lisp:nil
                                 ((items :target-type target-summaries
                                   :required common-lisp:t :member-name
                                   "items")
                                  (next-token :target-type target-next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListGatewayTargetsResponse"))

(smithy/sdk/shapes:define-input list-gateways-request common-lisp:nil
                                ((max-results :target-type gateway-max-results
                                  :member-name "maxResults" :http-query
                                  "maxResults")
                                 (next-token :target-type gateway-next-token
                                  :member-name "nextToken" :http-query
                                  "nextToken"))
                                (:shape-name "ListGatewaysRequest"))

(smithy/sdk/shapes:define-output list-gateways-response common-lisp:nil
                                 ((items :target-type gateway-summaries
                                   :required common-lisp:t :member-name
                                   "items")
                                  (next-token :target-type gateway-next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListGatewaysResponse"))

(smithy/sdk/shapes:define-input list-memories-input common-lisp:nil
                                ((max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults")
                                 (next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken"))
                                (:shape-name "ListMemoriesInput"))

(smithy/sdk/shapes:define-output list-memories-output common-lisp:nil
                                 ((memories :target-type memory-summary-list
                                   :required common-lisp:t :member-name
                                   "memories")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListMemoriesOutput"))

(smithy/sdk/shapes:define-input list-oauth2credential-providers-request
                                common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults"))
                                (:shape-name
                                 "ListOauth2CredentialProvidersRequest"))

(smithy/sdk/shapes:define-output list-oauth2credential-providers-response
                                 common-lisp:nil
                                 ((credential-providers :target-type
                                   oauth2credential-providers :required
                                   common-lisp:t :member-name
                                   "credentialProviders")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name
                                  "ListOauth2CredentialProvidersResponse"))

(smithy/sdk/shapes:define-input list-workload-identities-request
                                common-lisp:nil
                                ((next-token :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "nextToken")
                                 (max-results :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "maxResults"))
                                (:shape-name "ListWorkloadIdentitiesRequest"))

(smithy/sdk/shapes:define-output list-workload-identities-response
                                 common-lisp:nil
                                 ((workload-identities :target-type
                                   workload-identity-list :required
                                   common-lisp:t :member-name
                                   "workloadIdentities")
                                  (next-token :target-type
                                   smithy/sdk/smithy-types:string :member-name
                                   "nextToken"))
                                 (:shape-name "ListWorkloadIdentitiesResponse"))

(smithy/sdk/shapes:define-structure mcpgateway-configuration common-lisp:nil
                                    ((supported-versions :target-type
                                      mcp-supported-versions :member-name
                                      "supportedVersions")
                                     (instructions :target-type
                                      mcp-instructions :member-name
                                      "instructions")
                                     (search-type :target-type search-type
                                      :member-name "searchType"))
                                    (:shape-name "MCPGatewayConfiguration"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type mcp-instructions smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure mcp-lambda-target-configuration
                                    common-lisp:nil
                                    ((lambda-arn :target-type
                                      lambda-function-arn :required
                                      common-lisp:t :member-name "lambdaArn")
                                     (tool-schema :target-type tool-schema
                                      :required common-lisp:t :member-name
                                      "toolSchema"))
                                    (:shape-name
                                     "McpLambdaTargetConfiguration"))

(smithy/sdk/shapes:define-list mcp-supported-versions :member mcp-version)

(smithy/sdk/shapes:define-union mcp-target-configuration common-lisp:nil
                                ((open-api-schema :target-type
                                  api-schema-configuration :member-name
                                  "openApiSchema")
                                 (smithy-model :target-type
                                  api-schema-configuration :member-name
                                  "smithyModel")
                                 (lambda :target-type
                                  mcp-lambda-target-configuration :member-name
                                  "lambda"))
                                (:shape-name "McpTargetConfiguration"))

(smithy/sdk/shapes:define-type mcp-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure memory common-lisp:nil
                                    ((arn :target-type memory-arn :required
                                      common-lisp:t :member-name "arn")
                                     (id :target-type memory-id :required
                                      common-lisp:t :member-name "id")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (encryption-key-arn :target-type arn
                                      :member-name "encryptionKeyArn")
                                     (memory-execution-role-arn :target-type
                                      arn :member-name
                                      "memoryExecutionRoleArn")
                                     (event-expiry-duration :target-type
                                      smithy/sdk/smithy-types:integer :required
                                      common-lisp:t :member-name
                                      "eventExpiryDuration")
                                     (status :target-type memory-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (failure-reason :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "failureReason")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt")
                                     (strategies :target-type
                                      memory-strategy-list :member-name
                                      "strategies"))
                                    (:shape-name "Memory"))

(smithy/sdk/shapes:define-type memory-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type memory-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-enum memory-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:failed "FAILED")
  (:deleting "DELETING"))

(smithy/sdk/shapes:define-structure memory-strategy common-lisp:nil
                                    ((strategy-id :target-type
                                      memory-strategy-id :required
                                      common-lisp:t :member-name "strategyId")
                                     (name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (configuration :target-type
                                      strategy-configuration :member-name
                                      "configuration")
                                     (type :target-type memory-strategy-type
                                      :required common-lisp:t :member-name
                                      "type")
                                     (namespaces :target-type namespaces-list
                                      :required common-lisp:t :member-name
                                      "namespaces")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "createdAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :member-name "updatedAt")
                                     (status :target-type
                                      memory-strategy-status :member-name
                                      "status"))
                                    (:shape-name "MemoryStrategy"))

(smithy/sdk/shapes:define-type memory-strategy-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-union memory-strategy-input common-lisp:nil
                                ((semantic-memory-strategy :target-type
                                  semantic-memory-strategy-input :member-name
                                  "semanticMemoryStrategy")
                                 (summary-memory-strategy :target-type
                                  summary-memory-strategy-input :member-name
                                  "summaryMemoryStrategy")
                                 (user-preference-memory-strategy :target-type
                                  user-preference-memory-strategy-input
                                  :member-name "userPreferenceMemoryStrategy")
                                 (custom-memory-strategy :target-type
                                  custom-memory-strategy-input :member-name
                                  "customMemoryStrategy"))
                                (:shape-name "MemoryStrategyInput"))

(smithy/sdk/shapes:define-list memory-strategy-input-list :member
                               memory-strategy-input)

(smithy/sdk/shapes:define-list memory-strategy-list :member memory-strategy)

(smithy/sdk/shapes:define-enum memory-strategy-status
    common-lisp:nil
  (:creating "CREATING")
  (:active "ACTIVE")
  (:deleting "DELETING")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-enum memory-strategy-type
    common-lisp:nil
  (:semantic "SEMANTIC")
  (:summarization "SUMMARIZATION")
  (:user-preference "USER_PREFERENCE")
  (:custom "CUSTOM"))

(smithy/sdk/shapes:define-structure memory-summary common-lisp:nil
                                    ((arn :target-type memory-arn :member-name
                                      "arn")
                                     (id :target-type memory-id :member-name
                                      "id")
                                     (status :target-type memory-status
                                      :member-name "status")
                                     (created-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt"))
                                    (:shape-name "MemorySummary"))

(smithy/sdk/shapes:define-list memory-summary-list :member memory-summary)

(smithy/sdk/shapes:define-structure microsoft-oauth2provider-config-input
                                    common-lisp:nil
                                    ((client-id :target-type client-id-type
                                      :required common-lisp:t :member-name
                                      "clientId")
                                     (client-secret :target-type
                                      client-secret-type :required
                                      common-lisp:t :member-name
                                      "clientSecret"))
                                    (:shape-name
                                     "MicrosoftOauth2ProviderConfigInput"))

(smithy/sdk/shapes:define-structure microsoft-oauth2provider-config-output
                                    common-lisp:nil
                                    ((oauth-discovery :target-type
                                      oauth2discovery :required common-lisp:t
                                      :member-name "oauthDiscovery"))
                                    (:shape-name
                                     "MicrosoftOauth2ProviderConfigOutput"))

(smithy/sdk/shapes:define-union modify-consolidation-configuration
                                common-lisp:nil
                                ((custom-consolidation-configuration
                                  :target-type
                                  custom-consolidation-configuration-input
                                  :member-name
                                  "customConsolidationConfiguration"))
                                (:shape-name
                                 "ModifyConsolidationConfiguration"))

(smithy/sdk/shapes:define-union modify-extraction-configuration common-lisp:nil
                                ((custom-extraction-configuration :target-type
                                  custom-extraction-configuration-input
                                  :member-name
                                  "customExtractionConfiguration"))
                                (:shape-name "ModifyExtractionConfiguration"))

(smithy/sdk/shapes:define-structure modify-memory-strategies common-lisp:nil
                                    ((add-memory-strategies :target-type
                                      memory-strategy-input-list :member-name
                                      "addMemoryStrategies")
                                     (modify-memory-strategies :target-type
                                      modify-memory-strategies-list
                                      :member-name "modifyMemoryStrategies")
                                     (delete-memory-strategies :target-type
                                      delete-memory-strategies-list
                                      :member-name "deleteMemoryStrategies"))
                                    (:shape-name "ModifyMemoryStrategies"))

(smithy/sdk/shapes:define-list modify-memory-strategies-list :member
                               modify-memory-strategy-input)

(smithy/sdk/shapes:define-structure modify-memory-strategy-input
                                    common-lisp:nil
                                    ((memory-strategy-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name
                                      "memoryStrategyId")
                                     (description :target-type description
                                      :member-name "description")
                                     (namespaces :target-type namespaces-list
                                      :member-name "namespaces")
                                     (configuration :target-type
                                      modify-strategy-configuration
                                      :member-name "configuration"))
                                    (:shape-name "ModifyMemoryStrategyInput"))

(smithy/sdk/shapes:define-structure modify-strategy-configuration
                                    common-lisp:nil
                                    ((extraction :target-type
                                      modify-extraction-configuration
                                      :member-name "extraction")
                                     (consolidation :target-type
                                      modify-consolidation-configuration
                                      :member-name "consolidation"))
                                    (:shape-name "ModifyStrategyConfiguration"))

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type namespace smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list namespaces-list :member namespace)

(smithy/sdk/shapes:define-structure network-configuration common-lisp:nil
                                    ((network-mode :target-type network-mode
                                      :required common-lisp:t :member-name
                                      "networkMode"))
                                    (:shape-name "NetworkConfiguration"))

(smithy/sdk/shapes:define-enum network-mode
    common-lisp:nil
  (:public "PUBLIC"))

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-blank-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-empty-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure oauth-credential-provider common-lisp:nil
                                    ((provider-arn :target-type
                                      oauth-credential-provider-arn :required
                                      common-lisp:t :member-name "providerArn")
                                     (scopes :target-type oauth-scopes
                                      :required common-lisp:t :member-name
                                      "scopes")
                                     (custom-parameters :target-type
                                      oauth-custom-parameters :member-name
                                      "customParameters"))
                                    (:shape-name "OAuthCredentialProvider"))

(smithy/sdk/shapes:define-type oauth-credential-provider-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map oauth-custom-parameters :key
                              oauth-custom-parameters-key :value
                              oauth-custom-parameters-value)

(smithy/sdk/shapes:define-type oauth-custom-parameters-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type oauth-custom-parameters-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type oauth-scope smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list oauth-scopes :member oauth-scope)

(smithy/sdk/shapes:define-structure oauth2authorization-server-metadata
                                    common-lisp:nil
                                    ((issuer :target-type issuer-url-type
                                      :required common-lisp:t :member-name
                                      "issuer")
                                     (authorization-endpoint :target-type
                                      authorization-endpoint-type :required
                                      common-lisp:t :member-name
                                      "authorizationEndpoint")
                                     (token-endpoint :target-type
                                      token-endpoint-type :required
                                      common-lisp:t :member-name
                                      "tokenEndpoint")
                                     (response-types :target-type
                                      response-list-type :member-name
                                      "responseTypes"))
                                    (:shape-name
                                     "Oauth2AuthorizationServerMetadata"))

common-lisp:nil

(smithy/sdk/shapes:define-structure oauth2credential-provider-item
                                    common-lisp:nil
                                    ((name :target-type
                                      credential-provider-name :required
                                      common-lisp:t :member-name "name")
                                     (credential-provider-vendor :target-type
                                      credential-provider-vendor-type :required
                                      common-lisp:t :member-name
                                      "credentialProviderVendor")
                                     (credential-provider-arn :target-type
                                      credential-provider-arn-type :required
                                      common-lisp:t :member-name
                                      "credentialProviderArn")
                                     (created-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "createdTime")
                                     (last-updated-time :target-type
                                      smithy/sdk/smithy-types:timestamp
                                      :required common-lisp:t :member-name
                                      "lastUpdatedTime"))
                                    (:shape-name
                                     "Oauth2CredentialProviderItem"))

(smithy/sdk/shapes:define-list oauth2credential-providers :member
                               oauth2credential-provider-item)

(smithy/sdk/shapes:define-union oauth2discovery common-lisp:nil
                                ((discovery-url :target-type discovery-url-type
                                  :member-name "discoveryUrl")
                                 (authorization-server-metadata :target-type
                                  oauth2authorization-server-metadata
                                  :member-name "authorizationServerMetadata"))
                                (:shape-name "Oauth2Discovery"))

(smithy/sdk/shapes:define-union oauth2provider-config-input common-lisp:nil
                                ((custom-oauth2provider-config :target-type
                                  custom-oauth2provider-config-input
                                  :member-name "customOauth2ProviderConfig")
                                 (google-oauth2provider-config :target-type
                                  google-oauth2provider-config-input
                                  :member-name "googleOauth2ProviderConfig")
                                 (github-oauth2provider-config :target-type
                                  github-oauth2provider-config-input
                                  :member-name "githubOauth2ProviderConfig")
                                 (slack-oauth2provider-config :target-type
                                  slack-oauth2provider-config-input
                                  :member-name "slackOauth2ProviderConfig")
                                 (salesforce-oauth2provider-config :target-type
                                  salesforce-oauth2provider-config-input
                                  :member-name
                                  "salesforceOauth2ProviderConfig")
                                 (microsoft-oauth2provider-config :target-type
                                  microsoft-oauth2provider-config-input
                                  :member-name
                                  "microsoftOauth2ProviderConfig"))
                                (:shape-name "Oauth2ProviderConfigInput"))

(smithy/sdk/shapes:define-union oauth2provider-config-output common-lisp:nil
                                ((custom-oauth2provider-config :target-type
                                  custom-oauth2provider-config-output
                                  :member-name "customOauth2ProviderConfig")
                                 (google-oauth2provider-config :target-type
                                  google-oauth2provider-config-output
                                  :member-name "googleOauth2ProviderConfig")
                                 (github-oauth2provider-config :target-type
                                  github-oauth2provider-config-output
                                  :member-name "githubOauth2ProviderConfig")
                                 (slack-oauth2provider-config :target-type
                                  slack-oauth2provider-config-output
                                  :member-name "slackOauth2ProviderConfig")
                                 (salesforce-oauth2provider-config :target-type
                                  salesforce-oauth2provider-config-output
                                  :member-name
                                  "salesforceOauth2ProviderConfig")
                                 (microsoft-oauth2provider-config :target-type
                                  microsoft-oauth2provider-config-output
                                  :member-name
                                  "microsoftOauth2ProviderConfig"))
                                (:shape-name "Oauth2ProviderConfigOutput"))

(smithy/sdk/shapes:define-enum override-type
    common-lisp:nil
  (:semantic-override "SEMANTIC_OVERRIDE")
  (:summary-override "SUMMARY_OVERRIDE")
  (:user-preference-override "USER_PREFERENCE_OVERRIDE"))

(smithy/sdk/shapes:define-type prompt smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure protocol-configuration common-lisp:nil
                                    ((server-protocol :target-type
                                      server-protocol :required common-lisp:t
                                      :member-name "serverProtocol"))
                                    (:shape-name "ProtocolConfiguration"))

(smithy/sdk/shapes:define-structure recording-config common-lisp:nil
                                    ((enabled :target-type
                                      smithy/sdk/smithy-types:boolean
                                      :member-name "enabled")
                                     (s3location :target-type s3location
                                      :member-name "s3Location"))
                                    (:shape-name "RecordingConfig"))

(smithy/sdk/shapes:define-list required-properties :member
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-limit-exceeded-exception
                                common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ResourceLimitExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-list resource-oauth2return-url-list-type :member
                               resource-oauth2return-url-type)

(smithy/sdk/shapes:define-type resource-oauth2return-url-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum resource-type
    common-lisp:nil
  (:system "SYSTEM")
  (:custom "CUSTOM"))

(smithy/sdk/shapes:define-list response-list-type :member response-type)

(smithy/sdk/shapes:define-type response-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type runtime-container-uri
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3bucket-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure s3configuration common-lisp:nil
                                    ((uri :target-type s3bucket-uri
                                      :member-name "uri")
                                     (bucket-owner-account-id :target-type
                                      aws-account-id :member-name
                                      "bucketOwnerAccountId"))
                                    (:shape-name "S3Configuration"))

(smithy/sdk/shapes:define-structure s3location common-lisp:nil
                                    ((bucket :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "bucket")
                                     (prefix :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "prefix"))
                                    (:shape-name "S3Location"))

(smithy/sdk/shapes:define-structure salesforce-oauth2provider-config-input
                                    common-lisp:nil
                                    ((client-id :target-type client-id-type
                                      :required common-lisp:t :member-name
                                      "clientId")
                                     (client-secret :target-type
                                      client-secret-type :required
                                      common-lisp:t :member-name
                                      "clientSecret"))
                                    (:shape-name
                                     "SalesforceOauth2ProviderConfigInput"))

(smithy/sdk/shapes:define-structure salesforce-oauth2provider-config-output
                                    common-lisp:nil
                                    ((oauth-discovery :target-type
                                      oauth2discovery :required common-lisp:t
                                      :member-name "oauthDiscovery"))
                                    (:shape-name
                                     "SalesforceOauth2ProviderConfigOutput"))

(smithy/sdk/shapes:define-type sandbox-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure schema-definition common-lisp:nil
                                    ((type :target-type schema-type :required
                                      common-lisp:t :member-name "type")
                                     (properties :target-type schema-properties
                                      :member-name "properties")
                                     (required :target-type required-properties
                                      :member-name "required")
                                     (items :target-type schema-definition
                                      :member-name "items")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string
                                      :member-name "description"))
                                    (:shape-name "SchemaDefinition"))

(smithy/sdk/shapes:define-map schema-properties :key
                              smithy/sdk/smithy-types:string :value
                              schema-definition)

(smithy/sdk/shapes:define-enum schema-type
    common-lisp:nil
  (:string "string")
  (:number "number")
  (:object "object")
  (:array "array")
  (:boolean "boolean")
  (:integer "integer"))

(smithy/sdk/shapes:define-enum search-type
    common-lisp:nil
  (:semantic "SEMANTIC"))

(smithy/sdk/shapes:define-structure secret common-lisp:nil
                                    ((secret-arn :target-type secret-arn
                                      :required common-lisp:t :member-name
                                      "secretArn"))
                                    (:shape-name "Secret"))

(smithy/sdk/shapes:define-type secret-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure semantic-consolidation-override
                                    common-lisp:nil
                                    ((append-to-prompt :target-type prompt
                                      :required common-lisp:t :member-name
                                      "appendToPrompt")
                                     (model-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "modelId"))
                                    (:shape-name
                                     "SemanticConsolidationOverride"))

(smithy/sdk/shapes:define-structure semantic-extraction-override
                                    common-lisp:nil
                                    ((append-to-prompt :target-type prompt
                                      :required common-lisp:t :member-name
                                      "appendToPrompt")
                                     (model-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "modelId"))
                                    (:shape-name "SemanticExtractionOverride"))

(smithy/sdk/shapes:define-structure semantic-memory-strategy-input
                                    common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (namespaces :target-type namespaces-list
                                      :member-name "namespaces"))
                                    (:shape-name "SemanticMemoryStrategyInput"))

(smithy/sdk/shapes:define-structure semantic-override-configuration-input
                                    common-lisp:nil
                                    ((extraction :target-type
                                      semantic-override-extraction-configuration-input
                                      :member-name "extraction")
                                     (consolidation :target-type
                                      semantic-override-consolidation-configuration-input
                                      :member-name "consolidation"))
                                    (:shape-name
                                     "SemanticOverrideConfigurationInput"))

(smithy/sdk/shapes:define-structure
 semantic-override-consolidation-configuration-input common-lisp:nil
 ((append-to-prompt :target-type prompt :required common-lisp:t :member-name
   "appendToPrompt")
  (model-id :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "modelId"))
 (:shape-name "SemanticOverrideConsolidationConfigurationInput"))

(smithy/sdk/shapes:define-structure
 semantic-override-extraction-configuration-input common-lisp:nil
 ((append-to-prompt :target-type prompt :required common-lisp:t :member-name
   "appendToPrompt")
  (model-id :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "modelId"))
 (:shape-name "SemanticOverrideExtractionConfigurationInput"))

(smithy/sdk/shapes:define-enum server-protocol
    common-lisp:nil
  (:mcp "MCP")
  (:http "HTTP"))

(smithy/sdk/shapes:define-error service-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ServiceException")
                                (:error-code 500))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-input set-token-vault-cmkrequest common-lisp:nil
                                ((token-vault-id :target-type
                                  token-vault-id-type :member-name
                                  "tokenVaultId")
                                 (kms-configuration :target-type
                                  kms-configuration :required common-lisp:t
                                  :member-name "kmsConfiguration"))
                                (:shape-name "SetTokenVaultCMKRequest"))

(smithy/sdk/shapes:define-output set-token-vault-cmkresponse common-lisp:nil
                                 ((token-vault-id :target-type
                                   token-vault-id-type :required common-lisp:t
                                   :member-name "tokenVaultId")
                                  (kms-configuration :target-type
                                   kms-configuration :required common-lisp:t
                                   :member-name "kmsConfiguration")
                                  (last-modified-date :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "lastModifiedDate"))
                                 (:shape-name "SetTokenVaultCMKResponse"))

(smithy/sdk/shapes:define-structure slack-oauth2provider-config-input
                                    common-lisp:nil
                                    ((client-id :target-type client-id-type
                                      :required common-lisp:t :member-name
                                      "clientId")
                                     (client-secret :target-type
                                      client-secret-type :required
                                      common-lisp:t :member-name
                                      "clientSecret"))
                                    (:shape-name
                                     "SlackOauth2ProviderConfigInput"))

(smithy/sdk/shapes:define-structure slack-oauth2provider-config-output
                                    common-lisp:nil
                                    ((oauth-discovery :target-type
                                      oauth2discovery :required common-lisp:t
                                      :member-name "oauthDiscovery"))
                                    (:shape-name
                                     "SlackOauth2ProviderConfigOutput"))

(smithy/sdk/shapes:define-type status-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list status-reasons :member status-reason)

(smithy/sdk/shapes:define-structure strategy-configuration common-lisp:nil
                                    ((type :target-type override-type
                                      :member-name "type")
                                     (extraction :target-type
                                      extraction-configuration :member-name
                                      "extraction")
                                     (consolidation :target-type
                                      consolidation-configuration :member-name
                                      "consolidation"))
                                    (:shape-name "StrategyConfiguration"))

(smithy/sdk/shapes:define-structure summary-consolidation-override
                                    common-lisp:nil
                                    ((append-to-prompt :target-type prompt
                                      :required common-lisp:t :member-name
                                      "appendToPrompt")
                                     (model-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "modelId"))
                                    (:shape-name
                                     "SummaryConsolidationOverride"))

(smithy/sdk/shapes:define-structure summary-memory-strategy-input
                                    common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (namespaces :target-type namespaces-list
                                      :member-name "namespaces"))
                                    (:shape-name "SummaryMemoryStrategyInput"))

(smithy/sdk/shapes:define-structure summary-override-configuration-input
                                    common-lisp:nil
                                    ((consolidation :target-type
                                      summary-override-consolidation-configuration-input
                                      :member-name "consolidation"))
                                    (:shape-name
                                     "SummaryOverrideConfigurationInput"))

(smithy/sdk/shapes:define-structure
 summary-override-consolidation-configuration-input common-lisp:nil
 ((append-to-prompt :target-type prompt :required common-lisp:t :member-name
   "appendToPrompt")
  (model-id :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "modelId"))
 (:shape-name "SummaryOverrideConsolidationConfigurationInput"))

(smithy/sdk/shapes:define-union target-configuration common-lisp:nil
                                ((mcp :target-type mcp-target-configuration
                                  :member-name "mcp"))
                                (:shape-name "TargetConfiguration"))

(smithy/sdk/shapes:define-type target-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type target-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type target-next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum target-status
    common-lisp:nil
  (:creating "CREATING")
  (:updating "UPDATING")
  (:update-unsuccessful "UPDATE_UNSUCCESSFUL")
  (:deleting "DELETING")
  (:ready "READY")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-list target-summaries :member target-summary)

(smithy/sdk/shapes:define-structure target-summary common-lisp:nil
                                    ((target-id :target-type target-id
                                      :required common-lisp:t :member-name
                                      "targetId")
                                     (name :target-type target-name :required
                                      common-lisp:t :member-name "name")
                                     (status :target-type target-status
                                      :required common-lisp:t :member-name
                                      "status")
                                     (description :target-type
                                      target-description :member-name
                                      "description")
                                     (created-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "createdAt")
                                     (updated-at :target-type date-timestamp
                                      :required common-lisp:t :member-name
                                      "updatedAt"))
                                    (:shape-name "TargetSummary"))

(smithy/sdk/shapes:define-error throttled-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :member-name
                                  "message"))
                                (:shape-name "ThrottledException")
                                (:error-code 429))

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type token-endpoint-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token-vault-id-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure tool-definition common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "description")
                                     (input-schema :target-type
                                      schema-definition :required common-lisp:t
                                      :member-name "inputSchema")
                                     (output-schema :target-type
                                      schema-definition :member-name
                                      "outputSchema"))
                                    (:shape-name "ToolDefinition"))

(smithy/sdk/shapes:define-list tool-definitions :member tool-definition)

(smithy/sdk/shapes:define-union tool-schema common-lisp:nil
                                ((s3 :target-type s3configuration :member-name
                                  "s3")
                                 (inline-payload :target-type tool-definitions
                                  :member-name "inlinePayload"))
                                (:shape-name "ToolSchema"))

(smithy/sdk/shapes:define-error unauthorized-exception common-lisp:nil
                                ((message :target-type non-blank-string
                                  :member-name "message"))
                                (:shape-name "UnauthorizedException")
                                (:error-code 401))

(smithy/sdk/shapes:define-input update-agent-runtime-endpoint-request
                                common-lisp:nil
                                ((agent-runtime-id :target-type
                                  agent-runtime-id :required common-lisp:t
                                  :member-name "agentRuntimeId" :http-label
                                  common-lisp:t)
                                 (endpoint-name :target-type endpoint-name
                                  :required common-lisp:t :member-name
                                  "endpointName" :http-label common-lisp:t)
                                 (agent-runtime-version :target-type
                                  agent-runtime-version :member-name
                                  "agentRuntimeVersion")
                                 (description :target-type
                                  agent-endpoint-description :member-name
                                  "description")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name
                                 "UpdateAgentRuntimeEndpointRequest"))

(smithy/sdk/shapes:define-output update-agent-runtime-endpoint-response
                                 common-lisp:nil
                                 ((live-version :target-type
                                   agent-runtime-version :member-name
                                   "liveVersion")
                                  (target-version :target-type
                                   agent-runtime-version :member-name
                                   "targetVersion")
                                  (agent-runtime-endpoint-arn :target-type
                                   agent-runtime-endpoint-arn :required
                                   common-lisp:t :member-name
                                   "agentRuntimeEndpointArn")
                                  (agent-runtime-arn :target-type
                                   agent-runtime-arn :required common-lisp:t
                                   :member-name "agentRuntimeArn")
                                  (status :target-type agent-endpoint-status
                                   :required common-lisp:t :member-name
                                   "status")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (last-updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "lastUpdatedAt"))
                                 (:shape-name
                                  "UpdateAgentRuntimeEndpointResponse"))

(smithy/sdk/shapes:define-input update-agent-runtime-request common-lisp:nil
                                ((agent-runtime-id :target-type
                                  agent-runtime-id :required common-lisp:t
                                  :member-name "agentRuntimeId" :http-label
                                  common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (agent-runtime-artifact :target-type
                                  agent-artifact :required common-lisp:t
                                  :member-name "agentRuntimeArtifact")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (network-configuration :target-type
                                  network-configuration :required common-lisp:t
                                  :member-name "networkConfiguration")
                                 (protocol-configuration :target-type
                                  protocol-configuration :member-name
                                  "protocolConfiguration")
                                 (client-token :target-type client-token
                                  :member-name "clientToken")
                                 (environment-variables :target-type
                                  environment-variables-map :member-name
                                  "environmentVariables")
                                 (authorizer-configuration :target-type
                                  authorizer-configuration :member-name
                                  "authorizerConfiguration"))
                                (:shape-name "UpdateAgentRuntimeRequest"))

(smithy/sdk/shapes:define-output update-agent-runtime-response common-lisp:nil
                                 ((agent-runtime-arn :target-type
                                   agent-runtime-arn :required common-lisp:t
                                   :member-name "agentRuntimeArn")
                                  (agent-runtime-id :target-type
                                   agent-runtime-id :required common-lisp:t
                                   :member-name "agentRuntimeId")
                                  (workload-identity-details :target-type
                                   workload-identity-details :member-name
                                   "workloadIdentityDetails")
                                  (agent-runtime-version :target-type
                                   agent-runtime-version :required
                                   common-lisp:t :member-name
                                   "agentRuntimeVersion")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (last-updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "lastUpdatedAt")
                                  (status :target-type agent-status :required
                                   common-lisp:t :member-name "status"))
                                 (:shape-name "UpdateAgentRuntimeResponse"))

(smithy/sdk/shapes:define-input update-api-key-credential-provider-request
                                common-lisp:nil
                                ((name :target-type credential-provider-name
                                  :required common-lisp:t :member-name "name")
                                 (api-key :target-type api-key-type :required
                                  common-lisp:t :member-name "apiKey"))
                                (:shape-name
                                 "UpdateApiKeyCredentialProviderRequest"))

(smithy/sdk/shapes:define-output update-api-key-credential-provider-response
                                 common-lisp:nil
                                 ((api-key-secret-arn :target-type secret
                                   :required common-lisp:t :member-name
                                   "apiKeySecretArn")
                                  (name :target-type credential-provider-name
                                   :required common-lisp:t :member-name "name")
                                  (credential-provider-arn :target-type
                                   api-key-credential-provider-arn-type
                                   :required common-lisp:t :member-name
                                   "credentialProviderArn")
                                  (created-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createdTime")
                                  (last-updated-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "lastUpdatedTime"))
                                 (:shape-name
                                  "UpdateApiKeyCredentialProviderResponse"))

(smithy/sdk/shapes:define-input update-gateway-request common-lisp:nil
                                ((gateway-identifier :target-type
                                  gateway-identifier :required common-lisp:t
                                  :member-name "gatewayIdentifier" :http-label
                                  common-lisp:t)
                                 (name :target-type gateway-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type gateway-description
                                  :member-name "description")
                                 (role-arn :target-type role-arn :required
                                  common-lisp:t :member-name "roleArn")
                                 (protocol-type :target-type
                                  gateway-protocol-type :required common-lisp:t
                                  :member-name "protocolType")
                                 (protocol-configuration :target-type
                                  gateway-protocol-configuration :member-name
                                  "protocolConfiguration")
                                 (authorizer-type :target-type authorizer-type
                                  :required common-lisp:t :member-name
                                  "authorizerType")
                                 (authorizer-configuration :target-type
                                  authorizer-configuration :required
                                  common-lisp:t :member-name
                                  "authorizerConfiguration")
                                 (kms-key-arn :target-type kms-key-arn
                                  :member-name "kmsKeyArn")
                                 (exception-level :target-type exception-level
                                  :member-name "exceptionLevel"))
                                (:shape-name "UpdateGatewayRequest"))

(smithy/sdk/shapes:define-output update-gateway-response common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :required common-lisp:t :member-name
                                   "gatewayArn")
                                  (gateway-id :target-type gateway-id :required
                                   common-lisp:t :member-name "gatewayId")
                                  (gateway-url :target-type gateway-url
                                   :member-name "gatewayUrl")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "updatedAt")
                                  (status :target-type gateway-status :required
                                   common-lisp:t :member-name "status")
                                  (status-reasons :target-type status-reasons
                                   :member-name "statusReasons")
                                  (name :target-type gateway-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type gateway-description
                                   :member-name "description")
                                  (role-arn :target-type role-arn :member-name
                                   "roleArn")
                                  (protocol-type :target-type
                                   gateway-protocol-type :required
                                   common-lisp:t :member-name "protocolType")
                                  (protocol-configuration :target-type
                                   gateway-protocol-configuration :member-name
                                   "protocolConfiguration")
                                  (authorizer-type :target-type authorizer-type
                                   :required common-lisp:t :member-name
                                   "authorizerType")
                                  (authorizer-configuration :target-type
                                   authorizer-configuration :member-name
                                   "authorizerConfiguration")
                                  (kms-key-arn :target-type kms-key-arn
                                   :member-name "kmsKeyArn")
                                  (workload-identity-details :target-type
                                   workload-identity-details :member-name
                                   "workloadIdentityDetails")
                                  (exception-level :target-type exception-level
                                   :member-name "exceptionLevel"))
                                 (:shape-name "UpdateGatewayResponse"))

(smithy/sdk/shapes:define-input update-gateway-target-request common-lisp:nil
                                ((gateway-identifier :target-type
                                  gateway-identifier :required common-lisp:t
                                  :member-name "gatewayIdentifier" :http-label
                                  common-lisp:t)
                                 (target-id :target-type target-id :required
                                  common-lisp:t :member-name "targetId"
                                  :http-label common-lisp:t)
                                 (name :target-type target-name :required
                                  common-lisp:t :member-name "name")
                                 (description :target-type target-description
                                  :member-name "description")
                                 (target-configuration :target-type
                                  target-configuration :required common-lisp:t
                                  :member-name "targetConfiguration")
                                 (credential-provider-configurations
                                  :target-type
                                  credential-provider-configurations :required
                                  common-lisp:t :member-name
                                  "credentialProviderConfigurations"))
                                (:shape-name "UpdateGatewayTargetRequest"))

(smithy/sdk/shapes:define-output update-gateway-target-response common-lisp:nil
                                 ((gateway-arn :target-type gateway-arn
                                   :required common-lisp:t :member-name
                                   "gatewayArn")
                                  (target-id :target-type target-id :required
                                   common-lisp:t :member-name "targetId")
                                  (created-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "createdAt")
                                  (updated-at :target-type date-timestamp
                                   :required common-lisp:t :member-name
                                   "updatedAt")
                                  (status :target-type target-status :required
                                   common-lisp:t :member-name "status")
                                  (status-reasons :target-type status-reasons
                                   :member-name "statusReasons")
                                  (name :target-type target-name :required
                                   common-lisp:t :member-name "name")
                                  (description :target-type target-description
                                   :member-name "description")
                                  (target-configuration :target-type
                                   target-configuration :required common-lisp:t
                                   :member-name "targetConfiguration")
                                  (credential-provider-configurations
                                   :target-type
                                   credential-provider-configurations :required
                                   common-lisp:t :member-name
                                   "credentialProviderConfigurations"))
                                 (:shape-name "UpdateGatewayTargetResponse"))

(smithy/sdk/shapes:define-input update-memory-input common-lisp:nil
                                ((client-token :target-type non-empty-string
                                  :member-name "clientToken")
                                 (memory-id :target-type memory-id :required
                                  common-lisp:t :member-name "memoryId"
                                  :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "description")
                                 (event-expiry-duration :target-type
                                  smithy/sdk/smithy-types:integer :member-name
                                  "eventExpiryDuration")
                                 (memory-execution-role-arn :target-type arn
                                  :member-name "memoryExecutionRoleArn")
                                 (memory-strategies :target-type
                                  modify-memory-strategies :member-name
                                  "memoryStrategies"))
                                (:shape-name "UpdateMemoryInput"))

(smithy/sdk/shapes:define-output update-memory-output common-lisp:nil
                                 ((memory :target-type memory :member-name
                                   "memory"))
                                 (:shape-name "UpdateMemoryOutput"))

(smithy/sdk/shapes:define-input update-oauth2credential-provider-request
                                common-lisp:nil
                                ((name :target-type credential-provider-name
                                  :required common-lisp:t :member-name "name")
                                 (credential-provider-vendor :target-type
                                  credential-provider-vendor-type :required
                                  common-lisp:t :member-name
                                  "credentialProviderVendor")
                                 (oauth2provider-config-input :target-type
                                  oauth2provider-config-input :required
                                  common-lisp:t :member-name
                                  "oauth2ProviderConfigInput"))
                                (:shape-name
                                 "UpdateOauth2CredentialProviderRequest"))

(smithy/sdk/shapes:define-output update-oauth2credential-provider-response
                                 common-lisp:nil
                                 ((client-secret-arn :target-type secret
                                   :required common-lisp:t :member-name
                                   "clientSecretArn")
                                  (name :target-type credential-provider-name
                                   :required common-lisp:t :member-name "name")
                                  (credential-provider-vendor :target-type
                                   credential-provider-vendor-type :required
                                   common-lisp:t :member-name
                                   "credentialProviderVendor")
                                  (credential-provider-arn :target-type
                                   credential-provider-arn-type :required
                                   common-lisp:t :member-name
                                   "credentialProviderArn")
                                  (oauth2provider-config-output :target-type
                                   oauth2provider-config-output :required
                                   common-lisp:t :member-name
                                   "oauth2ProviderConfigOutput")
                                  (created-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createdTime")
                                  (last-updated-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "lastUpdatedTime"))
                                 (:shape-name
                                  "UpdateOauth2CredentialProviderResponse"))

(smithy/sdk/shapes:define-input update-workload-identity-request
                                common-lisp:nil
                                ((name :target-type workload-identity-name-type
                                  :required common-lisp:t :member-name "name")
                                 (allowed-resource-oauth2return-urls
                                  :target-type
                                  resource-oauth2return-url-list-type
                                  :member-name
                                  "allowedResourceOauth2ReturnUrls"))
                                (:shape-name "UpdateWorkloadIdentityRequest"))

(smithy/sdk/shapes:define-output update-workload-identity-response
                                 common-lisp:nil
                                 ((name :target-type
                                   workload-identity-name-type :required
                                   common-lisp:t :member-name "name")
                                  (workload-identity-arn :target-type
                                   workload-identity-arn-type :required
                                   common-lisp:t :member-name
                                   "workloadIdentityArn")
                                  (allowed-resource-oauth2return-urls
                                   :target-type
                                   resource-oauth2return-url-list-type
                                   :member-name
                                   "allowedResourceOauth2ReturnUrls")
                                  (created-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name "createdTime")
                                  (last-updated-time :target-type
                                   smithy/sdk/smithy-types:timestamp :required
                                   common-lisp:t :member-name
                                   "lastUpdatedTime"))
                                 (:shape-name "UpdateWorkloadIdentityResponse"))

(smithy/sdk/shapes:define-structure user-preference-consolidation-override
                                    common-lisp:nil
                                    ((append-to-prompt :target-type prompt
                                      :required common-lisp:t :member-name
                                      "appendToPrompt")
                                     (model-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "modelId"))
                                    (:shape-name
                                     "UserPreferenceConsolidationOverride"))

(smithy/sdk/shapes:define-structure user-preference-extraction-override
                                    common-lisp:nil
                                    ((append-to-prompt :target-type prompt
                                      :required common-lisp:t :member-name
                                      "appendToPrompt")
                                     (model-id :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "modelId"))
                                    (:shape-name
                                     "UserPreferenceExtractionOverride"))

(smithy/sdk/shapes:define-structure user-preference-memory-strategy-input
                                    common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (description :target-type description
                                      :member-name "description")
                                     (namespaces :target-type namespaces-list
                                      :member-name "namespaces"))
                                    (:shape-name
                                     "UserPreferenceMemoryStrategyInput"))

(smithy/sdk/shapes:define-structure
 user-preference-override-configuration-input common-lisp:nil
 ((extraction :target-type
   user-preference-override-extraction-configuration-input :member-name
   "extraction")
  (consolidation :target-type
   user-preference-override-consolidation-configuration-input :member-name
   "consolidation"))
 (:shape-name "UserPreferenceOverrideConfigurationInput"))

(smithy/sdk/shapes:define-structure
 user-preference-override-consolidation-configuration-input common-lisp:nil
 ((append-to-prompt :target-type prompt :required common-lisp:t :member-name
   "appendToPrompt")
  (model-id :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "modelId"))
 (:shape-name "UserPreferenceOverrideConsolidationConfigurationInput"))

(smithy/sdk/shapes:define-structure
 user-preference-override-extraction-configuration-input common-lisp:nil
 ((append-to-prompt :target-type prompt :required common-lisp:t :member-name
   "appendToPrompt")
  (model-id :target-type smithy/sdk/smithy-types:string :required common-lisp:t
   :member-name "modelId"))
 (:shape-name "UserPreferenceOverrideExtractionConfigurationInput"))

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type
                                  smithy/sdk/smithy-types:string :required
                                  common-lisp:t :member-name "message")
                                 (reason :target-type
                                  validation-exception-reason :required
                                  common-lisp:t :member-name "reason")
                                 (field-list :target-type
                                  validation-exception-field-list :member-name
                                  "fieldList"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-structure validation-exception-field common-lisp:nil
                                    ((name :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "name")
                                     (message :target-type
                                      smithy/sdk/smithy-types:string :required
                                      common-lisp:t :member-name "message"))
                                    (:shape-name "ValidationExceptionField"))

(smithy/sdk/shapes:define-list validation-exception-field-list :member
                               validation-exception-field)

(smithy/sdk/shapes:define-enum validation-exception-reason
    common-lisp:nil
  (:cannot-parse "CannotParse")
  (:field-validation-failed "FieldValidationFailed")
  (:idempotent-parameter-mismatch-exception
   "IdempotentParameterMismatchException")
  (:root-event-in-other-session "EventInOtherSession")
  (:resource-conflict "ResourceConflict"))

common-lisp:nil

(smithy/sdk/shapes:define-type workload-identity-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workload-identity-arn-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workload-identity-details common-lisp:nil
                                    ((workload-identity-arn :target-type
                                      workload-identity-arn :required
                                      common-lisp:t :member-name
                                      "workloadIdentityArn"))
                                    (:shape-name "WorkloadIdentityDetails"))

(smithy/sdk/shapes:define-list workload-identity-list :member
                               workload-identity-type)

(smithy/sdk/shapes:define-type workload-identity-name-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure workload-identity-type common-lisp:nil
                                    ((name :target-type
                                      workload-identity-name-type :required
                                      common-lisp:t :member-name "name")
                                     (workload-identity-arn :target-type
                                      workload-identity-arn-type :required
                                      common-lisp:t :member-name
                                      "workloadIdentityArn"))
                                    (:shape-name "WorkloadIdentityType"))

(smithy/sdk/operation:define-operation create-agent-runtime :shape-name
                                       "CreateAgentRuntime" :input
                                       create-agent-runtime-request :output
                                       create-agent-runtime-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/runtimes/" :code
                                       201)

(smithy/sdk/operation:define-operation create-agent-runtime-endpoint
                                       :shape-name "CreateAgentRuntimeEndpoint"
                                       :input
                                       create-agent-runtime-endpoint-request
                                       :output
                                       create-agent-runtime-endpoint-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/runtimes/{agentRuntimeId}/runtime-endpoints/"
                                       :code 200)

(smithy/sdk/operation:define-operation create-api-key-credential-provider
                                       :shape-name
                                       "CreateApiKeyCredentialProvider" :input
                                       create-api-key-credential-provider-request
                                       :output
                                       create-api-key-credential-provider-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception decryption-failure
                                        encryption-failure
                                        internal-server-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/CreateApiKeyCredentialProvider")

(smithy/sdk/operation:define-operation create-browser :shape-name
                                       "CreateBrowser" :input
                                       create-browser-request :output
                                       create-browser-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/browsers" :code 201)

(smithy/sdk/operation:define-operation create-code-interpreter :shape-name
                                       "CreateCodeInterpreter" :input
                                       create-code-interpreter-request :output
                                       create-code-interpreter-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri "/code-interpreters"
                                       :code 201)

(smithy/sdk/operation:define-operation create-gateway :shape-name
                                       "CreateGateway" :input
                                       create-gateway-request :output
                                       create-gateway-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/gateways/" :code
                                       202)

(smithy/sdk/operation:define-operation create-gateway-target :shape-name
                                       "CreateGatewayTarget" :input
                                       create-gateway-target-request :output
                                       create-gateway-target-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/gateways/{gatewayIdentifier}/targets/"
                                       :code 202)

(smithy/sdk/operation:define-operation create-memory :shape-name "CreateMemory"
                                       :input create-memory-input :output
                                       create-memory-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        throttled-exception
                                        validation-exception)
                                       :method "POST" :uri "/memories/create")

(smithy/sdk/operation:define-operation create-oauth2credential-provider
                                       :shape-name
                                       "CreateOauth2CredentialProvider" :input
                                       create-oauth2credential-provider-request
                                       :output
                                       create-oauth2credential-provider-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception decryption-failure
                                        encryption-failure
                                        internal-server-exception
                                        resource-limit-exceeded-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/CreateOauth2CredentialProvider")

(smithy/sdk/operation:define-operation create-workload-identity :shape-name
                                       "CreateWorkloadIdentity" :input
                                       create-workload-identity-request :output
                                       create-workload-identity-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/CreateWorkloadIdentity")

(smithy/sdk/operation:define-operation delete-agent-runtime :shape-name
                                       "DeleteAgentRuntime" :input
                                       delete-agent-runtime-request :output
                                       delete-agent-runtime-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/runtimes/{agentRuntimeId}/" :code 200)

(smithy/sdk/operation:define-operation delete-agent-runtime-endpoint
                                       :shape-name "DeleteAgentRuntimeEndpoint"
                                       :input
                                       delete-agent-runtime-endpoint-request
                                       :output
                                       delete-agent-runtime-endpoint-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception)
                                       :method "DELETE" :uri
                                       "/runtimes/{agentRuntimeId}/runtime-endpoints/{endpointName}/"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-api-key-credential-provider
                                       :shape-name
                                       "DeleteApiKeyCredentialProvider" :input
                                       delete-api-key-credential-provider-request
                                       :output
                                       delete-api-key-credential-provider-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/DeleteApiKeyCredentialProvider")

(smithy/sdk/operation:define-operation delete-browser :shape-name
                                       "DeleteBrowser" :input
                                       delete-browser-request :output
                                       delete-browser-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/browsers/{browserId}" :code 200)

(smithy/sdk/operation:define-operation delete-code-interpreter :shape-name
                                       "DeleteCodeInterpreter" :input
                                       delete-code-interpreter-request :output
                                       delete-code-interpreter-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/code-interpreters/{codeInterpreterId}"
                                       :code 200)

(smithy/sdk/operation:define-operation delete-gateway :shape-name
                                       "DeleteGateway" :input
                                       delete-gateway-request :output
                                       delete-gateway-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/gateways/{gatewayIdentifier}/" :code
                                       202)

(smithy/sdk/operation:define-operation delete-gateway-target :shape-name
                                       "DeleteGatewayTarget" :input
                                       delete-gateway-target-request :output
                                       delete-gateway-target-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/gateways/{gatewayIdentifier}/targets/{targetId}/"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-memory :shape-name "DeleteMemory"
                                       :input delete-memory-input :output
                                       delete-memory-output :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        service-exception throttled-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/memories/{memoryId}/delete")

(smithy/sdk/operation:define-operation delete-oauth2credential-provider
                                       :shape-name
                                       "DeleteOauth2CredentialProvider" :input
                                       delete-oauth2credential-provider-request
                                       :output
                                       delete-oauth2credential-provider-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/DeleteOauth2CredentialProvider")

(smithy/sdk/operation:define-operation delete-workload-identity :shape-name
                                       "DeleteWorkloadIdentity" :input
                                       delete-workload-identity-request :output
                                       delete-workload-identity-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/DeleteWorkloadIdentity")

(smithy/sdk/operation:define-operation get-agent-runtime :shape-name
                                       "GetAgentRuntime" :input
                                       get-agent-runtime-request :output
                                       get-agent-runtime-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/runtimes/{agentRuntimeId}/" :code 200)

(smithy/sdk/operation:define-operation get-agent-runtime-endpoint :shape-name
                                       "GetAgentRuntimeEndpoint" :input
                                       get-agent-runtime-endpoint-request
                                       :output
                                       get-agent-runtime-endpoint-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/runtimes/{agentRuntimeId}/runtime-endpoints/{endpointName}/"
                                       :code 200)

(smithy/sdk/operation:define-operation get-api-key-credential-provider
                                       :shape-name
                                       "GetApiKeyCredentialProvider" :input
                                       get-api-key-credential-provider-request
                                       :output
                                       get-api-key-credential-provider-response
                                       :errors
                                       (access-denied-exception
                                        decryption-failure
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/GetApiKeyCredentialProvider")

(smithy/sdk/operation:define-operation get-browser :shape-name "GetBrowser"
                                       :input get-browser-request :output
                                       get-browser-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/browsers/{browserId}" :code 200)

(smithy/sdk/operation:define-operation get-code-interpreter :shape-name
                                       "GetCodeInterpreter" :input
                                       get-code-interpreter-request :output
                                       get-code-interpreter-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception)
                                       :method "GET" :uri
                                       "/code-interpreters/{codeInterpreterId}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-gateway :shape-name "GetGateway"
                                       :input get-gateway-request :output
                                       get-gateway-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/gateways/{gatewayIdentifier}/" :code
                                       200)

(smithy/sdk/operation:define-operation get-gateway-target :shape-name
                                       "GetGatewayTarget" :input
                                       get-gateway-target-request :output
                                       get-gateway-target-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/gateways/{gatewayIdentifier}/targets/{targetId}/"
                                       :code 200)

(smithy/sdk/operation:define-operation get-memory :shape-name "GetMemory"
                                       :input get-memory-input :output
                                       get-memory-output :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        service-exception throttled-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/memories/{memoryId}/details")

(smithy/sdk/operation:define-operation get-oauth2credential-provider
                                       :shape-name
                                       "GetOauth2CredentialProvider" :input
                                       get-oauth2credential-provider-request
                                       :output
                                       get-oauth2credential-provider-response
                                       :errors
                                       (access-denied-exception
                                        decryption-failure
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/GetOauth2CredentialProvider")

(smithy/sdk/operation:define-operation get-token-vault :shape-name
                                       "GetTokenVault" :input
                                       get-token-vault-request :output
                                       get-token-vault-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/get-token-vault")

(smithy/sdk/operation:define-operation get-workload-identity :shape-name
                                       "GetWorkloadIdentity" :input
                                       get-workload-identity-request :output
                                       get-workload-identity-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/GetWorkloadIdentity")

(smithy/sdk/operation:define-operation list-agent-runtime-endpoints :shape-name
                                       "ListAgentRuntimeEndpoints" :input
                                       list-agent-runtime-endpoints-request
                                       :output
                                       list-agent-runtime-endpoints-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/runtimes/{agentRuntimeId}/runtime-endpoints/"
                                       :code 200)

(smithy/sdk/operation:define-operation list-agent-runtime-versions :shape-name
                                       "ListAgentRuntimeVersions" :input
                                       list-agent-runtime-versions-request
                                       :output
                                       list-agent-runtime-versions-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/runtimes/{agentRuntimeId}/versions/"
                                       :code 200)

(smithy/sdk/operation:define-operation list-agent-runtimes :shape-name
                                       "ListAgentRuntimes" :input
                                       list-agent-runtimes-request :output
                                       list-agent-runtimes-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/runtimes/" :code
                                       200)

(smithy/sdk/operation:define-operation list-api-key-credential-providers
                                       :shape-name
                                       "ListApiKeyCredentialProviders" :input
                                       list-api-key-credential-providers-request
                                       :output
                                       list-api-key-credential-providers-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/ListApiKeyCredentialProviders")

(smithy/sdk/operation:define-operation list-browsers :shape-name "ListBrowsers"
                                       :input list-browsers-request :output
                                       list-browsers-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/browsers" :code
                                       200)

(smithy/sdk/operation:define-operation list-code-interpreters :shape-name
                                       "ListCodeInterpreters" :input
                                       list-code-interpreters-request :output
                                       list-code-interpreters-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri "/code-interpreters"
                                       :code 200)

(smithy/sdk/operation:define-operation list-gateway-targets :shape-name
                                       "ListGatewayTargets" :input
                                       list-gateway-targets-request :output
                                       list-gateway-targets-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri
                                       "/gateways/{gatewayIdentifier}/targets/"
                                       :code 200)

(smithy/sdk/operation:define-operation list-gateways :shape-name "ListGateways"
                                       :input list-gateways-request :output
                                       list-gateways-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "GET" :uri "/gateways/" :code
                                       200)

(smithy/sdk/operation:define-operation list-memories :shape-name "ListMemories"
                                       :input list-memories-input :output
                                       list-memories-output :errors
                                       (access-denied-exception
                                        resource-not-found-exception
                                        service-exception throttled-exception
                                        validation-exception)
                                       :method "POST" :uri "/memories/")

(smithy/sdk/operation:define-operation list-oauth2credential-providers
                                       :shape-name
                                       "ListOauth2CredentialProviders" :input
                                       list-oauth2credential-providers-request
                                       :output
                                       list-oauth2credential-providers-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/ListOauth2CredentialProviders")

(smithy/sdk/operation:define-operation list-workload-identities :shape-name
                                       "ListWorkloadIdentities" :input
                                       list-workload-identities-request :output
                                       list-workload-identities-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/ListWorkloadIdentities")

(smithy/sdk/operation:define-operation set-token-vault-cmk :shape-name
                                       "SetTokenVaultCMK" :input
                                       set-token-vault-cmkrequest :output
                                       set-token-vault-cmkresponse :errors
                                       (access-denied-exception
                                        concurrent-modification-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/set-token-vault-cmk")

(smithy/sdk/operation:define-operation update-agent-runtime :shape-name
                                       "UpdateAgentRuntime" :input
                                       update-agent-runtime-request :output
                                       update-agent-runtime-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/runtimes/{agentRuntimeId}/" :code 201)

(smithy/sdk/operation:define-operation update-agent-runtime-endpoint
                                       :shape-name "UpdateAgentRuntimeEndpoint"
                                       :input
                                       update-agent-runtime-endpoint-request
                                       :output
                                       update-agent-runtime-endpoint-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/runtimes/{agentRuntimeId}/runtime-endpoints/{endpointName}/"
                                       :code 200)

(smithy/sdk/operation:define-operation update-api-key-credential-provider
                                       :shape-name
                                       "UpdateApiKeyCredentialProvider" :input
                                       update-api-key-credential-provider-request
                                       :output
                                       update-api-key-credential-provider-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception decryption-failure
                                        encryption-failure
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/UpdateApiKeyCredentialProvider")

(smithy/sdk/operation:define-operation update-gateway :shape-name
                                       "UpdateGateway" :input
                                       update-gateway-request :output
                                       update-gateway-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/gateways/{gatewayIdentifier}/" :code
                                       202)

(smithy/sdk/operation:define-operation update-gateway-target :shape-name
                                       "UpdateGatewayTarget" :input
                                       update-gateway-target-request :output
                                       update-gateway-target-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/gateways/{gatewayIdentifier}/targets/{targetId}/"
                                       :code 202)

(smithy/sdk/operation:define-operation update-memory :shape-name "UpdateMemory"
                                       :input update-memory-input :output
                                       update-memory-output :errors
                                       (access-denied-exception
                                        conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        service-quota-exceeded-exception
                                        throttled-exception
                                        validation-exception)
                                       :method "PUT" :uri
                                       "/memories/{memoryId}/update")

(smithy/sdk/operation:define-operation update-oauth2credential-provider
                                       :shape-name
                                       "UpdateOauth2CredentialProvider" :input
                                       update-oauth2credential-provider-request
                                       :output
                                       update-oauth2credential-provider-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception decryption-failure
                                        encryption-failure
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/UpdateOauth2CredentialProvider")

(smithy/sdk/operation:define-operation update-workload-identity :shape-name
                                       "UpdateWorkloadIdentity" :input
                                       update-workload-identity-request :output
                                       update-workload-identity-response
                                       :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        unauthorized-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/identities/UpdateWorkloadIdentity")
