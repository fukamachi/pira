(uiop/package:define-package #:pira/appflow (:use)
                             (:export #:arn #:access-key-id #:access-token
                              #:account-name #:aggregation-config
                              #:aggregation-type #:amplitude-connector-operator
                              #:amplitude-connector-profile-credentials
                              #:amplitude-connector-profile-properties
                              #:amplitude-metadata
                              #:amplitude-source-properties #:api-key
                              #:api-key-credentials #:api-secret-key
                              #:api-token #:api-version #:application-host-url
                              #:application-key #:application-service-path
                              #:application-type #:auth-code #:auth-code-url
                              #:auth-code-url-list #:auth-parameter
                              #:auth-parameter-list #:authentication-config
                              #:authentication-type #:basic-auth-credentials
                              #:boolean #:bucket-name #:bucket-prefix
                              #:business-unit-id #:cancel-flow-executions
                              #:catalog-type #:client-credentials-arn
                              #:client-id #:client-number #:client-secret
                              #:client-token #:cluster-identifier
                              #:connection-mode #:connector-configuration
                              #:connector-configurations-map
                              #:connector-description #:connector-detail
                              #:connector-entity #:connector-entity-field
                              #:connector-entity-field-list
                              #:connector-entity-list #:connector-entity-map
                              #:connector-label #:connector-list
                              #:connector-metadata #:connector-mode
                              #:connector-mode-list #:connector-name
                              #:connector-oauth-request #:connector-operator
                              #:connector-owner #:connector-profile
                              #:connector-profile-arn
                              #:connector-profile-config
                              #:connector-profile-credentials
                              #:connector-profile-detail-list
                              #:connector-profile-name
                              #:connector-profile-name-list
                              #:connector-profile-properties
                              #:connector-provisioning-config
                              #:connector-provisioning-type
                              #:connector-runtime-setting
                              #:connector-runtime-setting-data-type
                              #:connector-runtime-setting-list
                              #:connector-runtime-setting-scope
                              #:connector-supplied-value
                              #:connector-supplied-value-list
                              #:connector-supplied-value-option-list
                              #:connector-type #:connector-type-list
                              #:connector-version #:create-connector-profile
                              #:create-flow #:created-by #:credentials-map
                              #:credentials-map-key #:credentials-map-value
                              #:custom-auth-config #:custom-auth-config-list
                              #:custom-auth-credentials
                              #:custom-authentication-type
                              #:custom-connector-destination-properties
                              #:custom-connector-profile-credentials
                              #:custom-connector-profile-properties
                              #:custom-connector-source-properties
                              #:custom-properties #:custom-property-key
                              #:custom-property-value
                              #:customer-profiles-destination-properties
                              #:customer-profiles-metadata #:data-api-role-arn
                              #:data-pull-mode #:data-transfer-api
                              #:data-transfer-api-type
                              #:data-transfer-api-type-name #:database-name
                              #:database-url #:datadog-connector-operator
                              #:datadog-connector-profile-credentials
                              #:datadog-connector-profile-properties
                              #:datadog-metadata #:datadog-source-properties
                              #:date #:datetime-type-field-name
                              #:delete-connector-profile #:delete-flow
                              #:describe-connector #:describe-connector-entity
                              #:describe-connector-profiles
                              #:describe-connectors #:describe-flow
                              #:describe-flow-execution-records #:description
                              #:destination-connector-properties
                              #:destination-field
                              #:destination-field-properties
                              #:destination-flow-config
                              #:destination-flow-config-list #:document-type
                              #:domain-name #:double
                              #:dynatrace-connector-operator
                              #:dynatrace-connector-profile-credentials
                              #:dynatrace-connector-profile-properties
                              #:dynatrace-metadata
                              #:dynatrace-source-properties #:entities-path
                              #:entity-name #:error-handling-config
                              #:error-info #:error-message
                              #:event-bridge-destination-properties
                              #:event-bridge-metadata #:execution-details
                              #:execution-id #:execution-ids
                              #:execution-message #:execution-record
                              #:execution-result #:execution-status
                              #:field-type #:field-type-details #:file-type
                              #:filter-operator-list #:flow-arn
                              #:flow-definition #:flow-description
                              #:flow-error-deactivation-threshold
                              #:flow-execution-list #:flow-list #:flow-name
                              #:flow-status #:flow-status-message
                              #:glue-data-catalog-config
                              #:glue-data-catalog-database-name
                              #:glue-data-catalog-iamrole
                              #:glue-data-catalog-table-prefix
                              #:google-analytics-connector-operator
                              #:google-analytics-connector-profile-credentials
                              #:google-analytics-connector-profile-properties
                              #:google-analytics-metadata
                              #:google-analytics-source-properties #:group
                              #:honeycode-connector-profile-credentials
                              #:honeycode-connector-profile-properties
                              #:honeycode-destination-properties
                              #:honeycode-metadata #:id-field-name-list
                              #:identifier #:incremental-pull-config
                              #:infor-nexus-connector-operator
                              #:infor-nexus-connector-profile-credentials
                              #:infor-nexus-connector-profile-properties
                              #:infor-nexus-metadata
                              #:infor-nexus-source-properties #:instance-url
                              #:java-boolean #:jwt-token #:kmsarn #:key #:label
                              #:lambda-connector-provisioning-config
                              #:list-connector-entities #:list-connectors
                              #:list-entities-max-results #:list-flows
                              #:list-tags-for-resource #:logo-url
                              #:logon-language #:long
                              #:lookout-metrics-destination-properties
                              #:marketo-connector-operator
                              #:marketo-connector-profile-credentials
                              #:marketo-connector-profile-properties
                              #:marketo-destination-properties
                              #:marketo-metadata #:marketo-source-properties
                              #:max-results #:metadata-catalog-config
                              #:metadata-catalog-detail
                              #:metadata-catalog-details
                              #:most-recent-execution-message #:name
                              #:next-token #:oauth2credentials
                              #:oauth2custom-parameter #:oauth2custom-prop-type
                              #:oauth2custom-properties-list #:oauth2defaults
                              #:oauth2grant-type
                              #:oauth2grant-type-supported-list
                              #:oauth2properties #:oauth-credentials
                              #:oauth-properties #:oauth-scope
                              #:oauth-scope-list #:object #:object-type-name
                              #:operator #:operator-properties-keys #:operators
                              #:pardot-connector-operator
                              #:pardot-connector-profile-credentials
                              #:pardot-connector-profile-properties
                              #:pardot-metadata #:pardot-source-properties
                              #:password #:path-prefix #:path-prefix-hierarchy
                              #:port-number #:prefix-config #:prefix-format
                              #:prefix-type
                              #:private-connection-provisioning-failure-cause
                              #:private-connection-provisioning-failure-message
                              #:private-connection-provisioning-state
                              #:private-connection-provisioning-status
                              #:private-link-service-name
                              #:profile-properties-map #:profile-property-key
                              #:profile-property-value #:property #:range
                              #:redirect-uri
                              #:redshift-connector-profile-credentials
                              #:redshift-connector-profile-properties
                              #:redshift-destination-properties
                              #:redshift-metadata #:refresh-token #:region
                              #:region-list #:register-connector
                              #:registered-by #:registration-output
                              #:reset-connector-metadata-cache #:role-arn
                              #:s3connector-operator #:s3destination-properties
                              #:s3input-file-type #:s3input-format-config
                              #:s3metadata #:s3output-format-config
                              #:s3source-properties
                              #:sapodata-connector-operator
                              #:sapodata-connector-profile-credentials
                              #:sapodata-connector-profile-properties
                              #:sapodata-destination-properties
                              #:sapodata-max-page-size
                              #:sapodata-max-parallelism #:sapodata-metadata
                              #:sapodata-pagination-config
                              #:sapodata-parallelism-config
                              #:sapodata-source-properties
                              #:salesforce-connector-operator
                              #:salesforce-connector-profile-credentials
                              #:salesforce-connector-profile-properties
                              #:salesforce-data-transfer-api
                              #:salesforce-data-transfer-api-list
                              #:salesforce-destination-properties
                              #:salesforce-metadata
                              #:salesforce-source-properties
                              #:sandstone-configuration-service-lambda
                              #:schedule-expression #:schedule-frequency-type
                              #:schedule-offset #:scheduled-trigger-properties
                              #:scheduling-frequency-type-list #:secret-key
                              #:service-now-connector-operator
                              #:service-now-connector-profile-credentials
                              #:service-now-connector-profile-properties
                              #:service-now-metadata
                              #:service-now-source-properties
                              #:singular-connector-operator
                              #:singular-connector-profile-credentials
                              #:singular-connector-profile-properties
                              #:singular-metadata #:singular-source-properties
                              #:slack-connector-operator
                              #:slack-connector-profile-credentials
                              #:slack-connector-profile-properties
                              #:slack-metadata #:slack-source-properties
                              #:snowflake-connector-profile-credentials
                              #:snowflake-connector-profile-properties
                              #:snowflake-destination-properties
                              #:snowflake-metadata
                              #:source-connector-properties
                              #:source-field-properties #:source-fields
                              #:source-flow-config #:stage #:start-flow
                              #:stop-flow #:string
                              #:success-response-handling-config
                              #:supported-api-version
                              #:supported-api-version-list
                              #:supported-data-transfer-apis
                              #:supported-data-transfer-type
                              #:supported-data-transfer-type-list
                              #:supported-field-type-details
                              #:supported-operator-list #:supported-value-list
                              #:supported-write-operation-list #:tag-key
                              #:tag-key-list #:tag-map #:tag-resource
                              #:tag-value #:task #:task-properties-map
                              #:task-type #:tasks #:timezone #:token-url
                              #:token-url-custom-properties #:token-url-list
                              #:trendmicro-connector-operator
                              #:trendmicro-connector-profile-credentials
                              #:trendmicro-connector-profile-properties
                              #:trendmicro-metadata
                              #:trendmicro-source-properties #:trigger-config
                              #:trigger-properties #:trigger-type
                              #:trigger-type-list #:unregister-connector
                              #:untag-resource #:update-connector-profile
                              #:update-connector-registration #:update-flow
                              #:updated-by #:upsolver-bucket-name
                              #:upsolver-destination-properties
                              #:upsolver-metadata
                              #:upsolver-s3output-format-config #:username
                              #:value #:veeva-connector-operator
                              #:veeva-connector-profile-credentials
                              #:veeva-connector-profile-properties
                              #:veeva-metadata #:veeva-source-properties
                              #:warehouse #:workgroup-name
                              #:write-operation-type
                              #:zendesk-connector-operator
                              #:zendesk-connector-profile-credentials
                              #:zendesk-connector-profile-properties
                              #:zendesk-destination-properties
                              #:zendesk-metadata #:zendesk-source-properties))
(common-lisp:in-package #:pira/appflow)

(smithy/sdk/service:define-service sandstone-configuration-service-lambda
                                   :shape-name
                                   "SandstoneConfigurationServiceLambda"
                                   :version "2020-08-23" :title
                                   "Amazon Appflow" :operations
                                   '(cancel-flow-executions
                                     create-connector-profile create-flow
                                     delete-connector-profile delete-flow
                                     describe-connector
                                     describe-connector-entity
                                     describe-connector-profiles
                                     describe-connectors describe-flow
                                     describe-flow-execution-records
                                     list-connector-entities list-connectors
                                     list-flows list-tags-for-resource
                                     register-connector
                                     reset-connector-metadata-cache start-flow
                                     stop-flow tag-resource
                                     unregister-connector untag-resource
                                     update-connector-profile
                                     update-connector-registration update-flow)
                                   :traits
                                   '(("aws.api#service" ("sdkId" . "Appflow")
                                      ("arnNamespace" . "appflow")
                                      ("cloudFormationName" . "Appflow")
                                      ("cloudTrailEventSource"
                                       . "appflow.amazonaws.com")
                                      ("endpointPrefix" . "appflow"))
                                     ("aws.auth#sigv4" ("name" . "appflow"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error access-denied-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "AccessDeniedException")
                                (:error-code 403))

(smithy/sdk/shapes:define-type access-key-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type access-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type account-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure aggregation-config common-lisp:nil
                                    ((aggregation-type :target-type
                                      aggregation-type :member-name
                                      "aggregationType")
                                     (target-file-size :target-type long
                                      :member-name "targetFileSize"))
                                    (:shape-name "AggregationConfig"))

(smithy/sdk/shapes:define-enum aggregation-type
    common-lisp:nil
  (:none "None")
  (:single-file "SingleFile"))

(smithy/sdk/shapes:define-enum amplitude-connector-operator
    common-lisp:nil
  (:between "BETWEEN"))

(smithy/sdk/shapes:define-structure amplitude-connector-profile-credentials
                                    common-lisp:nil
                                    ((api-key :target-type api-key :required
                                      common-lisp:t :member-name "apiKey")
                                     (secret-key :target-type secret-key
                                      :required common-lisp:t :member-name
                                      "secretKey"))
                                    (:shape-name
                                     "AmplitudeConnectorProfileCredentials"))

(smithy/sdk/shapes:define-structure amplitude-connector-profile-properties
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "AmplitudeConnectorProfileProperties"))

(smithy/sdk/shapes:define-structure amplitude-metadata common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "AmplitudeMetadata"))

(smithy/sdk/shapes:define-structure amplitude-source-properties common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object"))
                                    (:shape-name "AmplitudeSourceProperties"))

(smithy/sdk/shapes:define-type api-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure api-key-credentials common-lisp:nil
                                    ((api-key :target-type api-key :required
                                      common-lisp:t :member-name "apiKey")
                                     (api-secret-key :target-type
                                      api-secret-key :member-name
                                      "apiSecretKey"))
                                    (:shape-name "ApiKeyCredentials"))

(smithy/sdk/shapes:define-type api-secret-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type api-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type api-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-host-url
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-service-path
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type application-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type auth-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type auth-code-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list auth-code-url-list :member auth-code-url)

(smithy/sdk/shapes:define-structure auth-parameter common-lisp:nil
                                    ((key :target-type key :member-name "key")
                                     (is-required :target-type boolean
                                      :member-name "isRequired")
                                     (label :target-type label :member-name
                                      "label")
                                     (description :target-type description
                                      :member-name "description")
                                     (is-sensitive-field :target-type boolean
                                      :member-name "isSensitiveField")
                                     (connector-supplied-values :target-type
                                      connector-supplied-value-list
                                      :member-name "connectorSuppliedValues"))
                                    (:shape-name "AuthParameter"))

(smithy/sdk/shapes:define-list auth-parameter-list :member auth-parameter)

(smithy/sdk/shapes:define-structure authentication-config common-lisp:nil
                                    ((is-basic-auth-supported :target-type
                                      boolean :member-name
                                      "isBasicAuthSupported")
                                     (is-api-key-auth-supported :target-type
                                      boolean :member-name
                                      "isApiKeyAuthSupported")
                                     (is-oauth2supported :target-type boolean
                                      :member-name "isOAuth2Supported")
                                     (is-custom-auth-supported :target-type
                                      boolean :member-name
                                      "isCustomAuthSupported")
                                     (o-auth2defaults :target-type
                                      oauth2defaults :member-name
                                      "oAuth2Defaults")
                                     (custom-auth-configs :target-type
                                      custom-auth-config-list :member-name
                                      "customAuthConfigs"))
                                    (:shape-name "AuthenticationConfig"))

(smithy/sdk/shapes:define-enum authentication-type
    common-lisp:nil
  (:oauth2 "OAUTH2")
  (:apikey "APIKEY")
  (:basic "BASIC")
  (:custom "CUSTOM"))

(smithy/sdk/shapes:define-structure basic-auth-credentials common-lisp:nil
                                    ((username :target-type username :required
                                      common-lisp:t :member-name "username")
                                     (password :target-type password :required
                                      common-lisp:t :member-name "password"))
                                    (:shape-name "BasicAuthCredentials"))

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type bucket-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type bucket-prefix smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type business-unit-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input cancel-flow-executions-request common-lisp:nil
                                ((flow-name :target-type flow-name :required
                                  common-lisp:t :member-name "flowName")
                                 (execution-ids :target-type execution-ids
                                  :member-name "executionIds"))
                                (:shape-name "CancelFlowExecutionsRequest"))

(smithy/sdk/shapes:define-output cancel-flow-executions-response
                                 common-lisp:nil
                                 ((invalid-executions :target-type
                                   execution-ids :member-name
                                   "invalidExecutions"))
                                 (:shape-name "CancelFlowExecutionsResponse"))

(smithy/sdk/shapes:define-enum catalog-type
    common-lisp:nil
  (:glue "GLUE"))

(smithy/sdk/shapes:define-type client-credentials-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-number smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-secret smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type client-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type cluster-identifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error conflict-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum connection-mode
    common-lisp:nil
  (:public "Public")
  (:private "Private"))

(smithy/sdk/shapes:define-error connector-authentication-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name
                                 "ConnectorAuthenticationException")
                                (:error-code 401))

(smithy/sdk/shapes:define-structure connector-configuration common-lisp:nil
                                    ((can-use-as-source :target-type boolean
                                      :member-name "canUseAsSource")
                                     (can-use-as-destination :target-type
                                      boolean :member-name
                                      "canUseAsDestination")
                                     (supported-destination-connectors
                                      :target-type connector-type-list
                                      :member-name
                                      "supportedDestinationConnectors")
                                     (supported-scheduling-frequencies
                                      :target-type
                                      scheduling-frequency-type-list
                                      :member-name
                                      "supportedSchedulingFrequencies")
                                     (is-private-link-enabled :target-type
                                      boolean :member-name
                                      "isPrivateLinkEnabled")
                                     (is-private-link-endpoint-url-required
                                      :target-type boolean :member-name
                                      "isPrivateLinkEndpointUrlRequired")
                                     (supported-trigger-types :target-type
                                      trigger-type-list :member-name
                                      "supportedTriggerTypes")
                                     (connector-metadata :target-type
                                      connector-metadata :member-name
                                      "connectorMetadata")
                                     (connector-type :target-type
                                      connector-type :member-name
                                      "connectorType")
                                     (connector-label :target-type
                                      connector-label :member-name
                                      "connectorLabel")
                                     (connector-description :target-type
                                      connector-description :member-name
                                      "connectorDescription")
                                     (connector-owner :target-type
                                      connector-owner :member-name
                                      "connectorOwner")
                                     (connector-name :target-type
                                      connector-name :member-name
                                      "connectorName")
                                     (connector-version :target-type
                                      connector-version :member-name
                                      "connectorVersion")
                                     (connector-arn :target-type arn
                                      :member-name "connectorArn")
                                     (connector-modes :target-type
                                      connector-mode-list :member-name
                                      "connectorModes")
                                     (authentication-config :target-type
                                      authentication-config :member-name
                                      "authenticationConfig")
                                     (connector-runtime-settings :target-type
                                      connector-runtime-setting-list
                                      :member-name "connectorRuntimeSettings")
                                     (supported-api-versions :target-type
                                      supported-api-version-list :member-name
                                      "supportedApiVersions")
                                     (supported-operators :target-type
                                      supported-operator-list :member-name
                                      "supportedOperators")
                                     (supported-write-operations :target-type
                                      supported-write-operation-list
                                      :member-name "supportedWriteOperations")
                                     (connector-provisioning-type :target-type
                                      connector-provisioning-type :member-name
                                      "connectorProvisioningType")
                                     (connector-provisioning-config
                                      :target-type
                                      connector-provisioning-config
                                      :member-name
                                      "connectorProvisioningConfig")
                                     (logo-url :target-type logo-url
                                      :member-name "logoURL")
                                     (registered-at :target-type date
                                      :member-name "registeredAt")
                                     (registered-by :target-type registered-by
                                      :member-name "registeredBy")
                                     (supported-data-transfer-types
                                      :target-type
                                      supported-data-transfer-type-list
                                      :member-name
                                      "supportedDataTransferTypes")
                                     (supported-data-transfer-apis :target-type
                                      supported-data-transfer-apis :member-name
                                      "supportedDataTransferApis"))
                                    (:shape-name "ConnectorConfiguration"))

(smithy/sdk/shapes:define-map connector-configurations-map :key connector-type
                              :value connector-configuration)

(smithy/sdk/shapes:define-type connector-description
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure connector-detail common-lisp:nil
                                    ((connector-description :target-type
                                      connector-description :member-name
                                      "connectorDescription")
                                     (connector-name :target-type
                                      connector-name :member-name
                                      "connectorName")
                                     (connector-owner :target-type
                                      connector-owner :member-name
                                      "connectorOwner")
                                     (connector-version :target-type
                                      connector-version :member-name
                                      "connectorVersion")
                                     (application-type :target-type
                                      application-type :member-name
                                      "applicationType")
                                     (connector-type :target-type
                                      connector-type :member-name
                                      "connectorType")
                                     (connector-label :target-type
                                      connector-label :member-name
                                      "connectorLabel")
                                     (registered-at :target-type date
                                      :member-name "registeredAt")
                                     (registered-by :target-type registered-by
                                      :member-name "registeredBy")
                                     (connector-provisioning-type :target-type
                                      connector-provisioning-type :member-name
                                      "connectorProvisioningType")
                                     (connector-modes :target-type
                                      connector-mode-list :member-name
                                      "connectorModes")
                                     (supported-data-transfer-types
                                      :target-type
                                      supported-data-transfer-type-list
                                      :member-name
                                      "supportedDataTransferTypes"))
                                    (:shape-name "ConnectorDetail"))

(smithy/sdk/shapes:define-structure connector-entity common-lisp:nil
                                    ((name :target-type name :required
                                      common-lisp:t :member-name "name")
                                     (label :target-type label :member-name
                                      "label")
                                     (has-nested-entities :target-type boolean
                                      :member-name "hasNestedEntities"))
                                    (:shape-name "ConnectorEntity"))

(smithy/sdk/shapes:define-structure connector-entity-field common-lisp:nil
                                    ((identifier :target-type identifier
                                      :required common-lisp:t :member-name
                                      "identifier")
                                     (parent-identifier :target-type identifier
                                      :member-name "parentIdentifier")
                                     (label :target-type label :member-name
                                      "label")
                                     (is-primary-key :target-type boolean
                                      :member-name "isPrimaryKey")
                                     (default-value :target-type string
                                      :member-name "defaultValue")
                                     (is-deprecated :target-type boolean
                                      :member-name "isDeprecated")
                                     (supported-field-type-details :target-type
                                      supported-field-type-details :member-name
                                      "supportedFieldTypeDetails")
                                     (description :target-type description
                                      :member-name "description")
                                     (source-properties :target-type
                                      source-field-properties :member-name
                                      "sourceProperties")
                                     (destination-properties :target-type
                                      destination-field-properties :member-name
                                      "destinationProperties")
                                     (custom-properties :target-type
                                      custom-properties :member-name
                                      "customProperties"))
                                    (:shape-name "ConnectorEntityField"))

(smithy/sdk/shapes:define-list connector-entity-field-list :member
                               connector-entity-field)

(smithy/sdk/shapes:define-list connector-entity-list :member connector-entity)

(smithy/sdk/shapes:define-map connector-entity-map :key group :value
                              connector-entity-list)

(smithy/sdk/shapes:define-type connector-label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list connector-list :member connector-detail)

(smithy/sdk/shapes:define-structure connector-metadata common-lisp:nil
                                    ((amplitude :target-type amplitude-metadata
                                      :member-name "Amplitude")
                                     (datadog :target-type datadog-metadata
                                      :member-name "Datadog")
                                     (dynatrace :target-type dynatrace-metadata
                                      :member-name "Dynatrace")
                                     (google-analytics :target-type
                                      google-analytics-metadata :member-name
                                      "GoogleAnalytics")
                                     (infor-nexus :target-type
                                      infor-nexus-metadata :member-name
                                      "InforNexus")
                                     (marketo :target-type marketo-metadata
                                      :member-name "Marketo")
                                     (redshift :target-type redshift-metadata
                                      :member-name "Redshift")
                                     (s3 :target-type s3metadata :member-name
                                      "S3")
                                     (salesforce :target-type
                                      salesforce-metadata :member-name
                                      "Salesforce")
                                     (service-now :target-type
                                      service-now-metadata :member-name
                                      "ServiceNow")
                                     (singular :target-type singular-metadata
                                      :member-name "Singular")
                                     (slack :target-type slack-metadata
                                      :member-name "Slack")
                                     (snowflake :target-type snowflake-metadata
                                      :member-name "Snowflake")
                                     (trendmicro :target-type
                                      trendmicro-metadata :member-name
                                      "Trendmicro")
                                     (veeva :target-type veeva-metadata
                                      :member-name "Veeva")
                                     (zendesk :target-type zendesk-metadata
                                      :member-name "Zendesk")
                                     (event-bridge :target-type
                                      event-bridge-metadata :member-name
                                      "EventBridge")
                                     (upsolver :target-type upsolver-metadata
                                      :member-name "Upsolver")
                                     (customer-profiles :target-type
                                      customer-profiles-metadata :member-name
                                      "CustomerProfiles")
                                     (honeycode :target-type honeycode-metadata
                                      :member-name "Honeycode")
                                     (sapodata :target-type sapodata-metadata
                                      :member-name "SAPOData")
                                     (pardot :target-type pardot-metadata
                                      :member-name "Pardot"))
                                    (:shape-name "ConnectorMetadata"))

(smithy/sdk/shapes:define-type connector-mode smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list connector-mode-list :member connector-mode)

(smithy/sdk/shapes:define-type connector-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure connector-oauth-request common-lisp:nil
                                    ((auth-code :target-type auth-code
                                      :member-name "authCode")
                                     (redirect-uri :target-type redirect-uri
                                      :member-name "redirectUri"))
                                    (:shape-name "ConnectorOAuthRequest"))

(smithy/sdk/shapes:define-structure connector-operator common-lisp:nil
                                    ((amplitude :target-type
                                      amplitude-connector-operator :member-name
                                      "Amplitude")
                                     (datadog :target-type
                                      datadog-connector-operator :member-name
                                      "Datadog")
                                     (dynatrace :target-type
                                      dynatrace-connector-operator :member-name
                                      "Dynatrace")
                                     (google-analytics :target-type
                                      google-analytics-connector-operator
                                      :member-name "GoogleAnalytics")
                                     (infor-nexus :target-type
                                      infor-nexus-connector-operator
                                      :member-name "InforNexus")
                                     (marketo :target-type
                                      marketo-connector-operator :member-name
                                      "Marketo")
                                     (s3 :target-type s3connector-operator
                                      :member-name "S3")
                                     (salesforce :target-type
                                      salesforce-connector-operator
                                      :member-name "Salesforce")
                                     (service-now :target-type
                                      service-now-connector-operator
                                      :member-name "ServiceNow")
                                     (singular :target-type
                                      singular-connector-operator :member-name
                                      "Singular")
                                     (slack :target-type
                                      slack-connector-operator :member-name
                                      "Slack")
                                     (trendmicro :target-type
                                      trendmicro-connector-operator
                                      :member-name "Trendmicro")
                                     (veeva :target-type
                                      veeva-connector-operator :member-name
                                      "Veeva")
                                     (zendesk :target-type
                                      zendesk-connector-operator :member-name
                                      "Zendesk")
                                     (sapodata :target-type
                                      sapodata-connector-operator :member-name
                                      "SAPOData")
                                     (custom-connector :target-type operator
                                      :member-name "CustomConnector")
                                     (pardot :target-type
                                      pardot-connector-operator :member-name
                                      "Pardot"))
                                    (:shape-name "ConnectorOperator"))

(smithy/sdk/shapes:define-type connector-owner smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure connector-profile common-lisp:nil
                                    ((connector-profile-arn :target-type
                                      connector-profile-arn :member-name
                                      "connectorProfileArn")
                                     (connector-profile-name :target-type
                                      connector-profile-name :member-name
                                      "connectorProfileName")
                                     (connector-type :target-type
                                      connector-type :member-name
                                      "connectorType")
                                     (connector-label :target-type
                                      connector-label :member-name
                                      "connectorLabel")
                                     (connection-mode :target-type
                                      connection-mode :member-name
                                      "connectionMode")
                                     (credentials-arn :target-type arn
                                      :member-name "credentialsArn")
                                     (connector-profile-properties :target-type
                                      connector-profile-properties :member-name
                                      "connectorProfileProperties")
                                     (created-at :target-type date :member-name
                                      "createdAt")
                                     (last-updated-at :target-type date
                                      :member-name "lastUpdatedAt")
                                     (private-connection-provisioning-state
                                      :target-type
                                      private-connection-provisioning-state
                                      :member-name
                                      "privateConnectionProvisioningState"))
                                    (:shape-name "ConnectorProfile"))

(smithy/sdk/shapes:define-type connector-profile-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure connector-profile-config common-lisp:nil
                                    ((connector-profile-properties :target-type
                                      connector-profile-properties :required
                                      common-lisp:t :member-name
                                      "connectorProfileProperties")
                                     (connector-profile-credentials
                                      :target-type
                                      connector-profile-credentials
                                      :member-name
                                      "connectorProfileCredentials"))
                                    (:shape-name "ConnectorProfileConfig"))

(smithy/sdk/shapes:define-structure connector-profile-credentials
                                    common-lisp:nil
                                    ((amplitude :target-type
                                      amplitude-connector-profile-credentials
                                      :member-name "Amplitude")
                                     (datadog :target-type
                                      datadog-connector-profile-credentials
                                      :member-name "Datadog")
                                     (dynatrace :target-type
                                      dynatrace-connector-profile-credentials
                                      :member-name "Dynatrace")
                                     (google-analytics :target-type
                                      google-analytics-connector-profile-credentials
                                      :member-name "GoogleAnalytics")
                                     (honeycode :target-type
                                      honeycode-connector-profile-credentials
                                      :member-name "Honeycode")
                                     (infor-nexus :target-type
                                      infor-nexus-connector-profile-credentials
                                      :member-name "InforNexus")
                                     (marketo :target-type
                                      marketo-connector-profile-credentials
                                      :member-name "Marketo")
                                     (redshift :target-type
                                      redshift-connector-profile-credentials
                                      :member-name "Redshift")
                                     (salesforce :target-type
                                      salesforce-connector-profile-credentials
                                      :member-name "Salesforce")
                                     (service-now :target-type
                                      service-now-connector-profile-credentials
                                      :member-name "ServiceNow")
                                     (singular :target-type
                                      singular-connector-profile-credentials
                                      :member-name "Singular")
                                     (slack :target-type
                                      slack-connector-profile-credentials
                                      :member-name "Slack")
                                     (snowflake :target-type
                                      snowflake-connector-profile-credentials
                                      :member-name "Snowflake")
                                     (trendmicro :target-type
                                      trendmicro-connector-profile-credentials
                                      :member-name "Trendmicro")
                                     (veeva :target-type
                                      veeva-connector-profile-credentials
                                      :member-name "Veeva")
                                     (zendesk :target-type
                                      zendesk-connector-profile-credentials
                                      :member-name "Zendesk")
                                     (sapodata :target-type
                                      sapodata-connector-profile-credentials
                                      :member-name "SAPOData")
                                     (custom-connector :target-type
                                      custom-connector-profile-credentials
                                      :member-name "CustomConnector")
                                     (pardot :target-type
                                      pardot-connector-profile-credentials
                                      :member-name "Pardot"))
                                    (:shape-name "ConnectorProfileCredentials"))

(smithy/sdk/shapes:define-list connector-profile-detail-list :member
                               connector-profile)

(smithy/sdk/shapes:define-type connector-profile-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list connector-profile-name-list :member
                               connector-profile-name)

(smithy/sdk/shapes:define-structure connector-profile-properties
                                    common-lisp:nil
                                    ((amplitude :target-type
                                      amplitude-connector-profile-properties
                                      :member-name "Amplitude")
                                     (datadog :target-type
                                      datadog-connector-profile-properties
                                      :member-name "Datadog")
                                     (dynatrace :target-type
                                      dynatrace-connector-profile-properties
                                      :member-name "Dynatrace")
                                     (google-analytics :target-type
                                      google-analytics-connector-profile-properties
                                      :member-name "GoogleAnalytics")
                                     (honeycode :target-type
                                      honeycode-connector-profile-properties
                                      :member-name "Honeycode")
                                     (infor-nexus :target-type
                                      infor-nexus-connector-profile-properties
                                      :member-name "InforNexus")
                                     (marketo :target-type
                                      marketo-connector-profile-properties
                                      :member-name "Marketo")
                                     (redshift :target-type
                                      redshift-connector-profile-properties
                                      :member-name "Redshift")
                                     (salesforce :target-type
                                      salesforce-connector-profile-properties
                                      :member-name "Salesforce")
                                     (service-now :target-type
                                      service-now-connector-profile-properties
                                      :member-name "ServiceNow")
                                     (singular :target-type
                                      singular-connector-profile-properties
                                      :member-name "Singular")
                                     (slack :target-type
                                      slack-connector-profile-properties
                                      :member-name "Slack")
                                     (snowflake :target-type
                                      snowflake-connector-profile-properties
                                      :member-name "Snowflake")
                                     (trendmicro :target-type
                                      trendmicro-connector-profile-properties
                                      :member-name "Trendmicro")
                                     (veeva :target-type
                                      veeva-connector-profile-properties
                                      :member-name "Veeva")
                                     (zendesk :target-type
                                      zendesk-connector-profile-properties
                                      :member-name "Zendesk")
                                     (sapodata :target-type
                                      sapodata-connector-profile-properties
                                      :member-name "SAPOData")
                                     (custom-connector :target-type
                                      custom-connector-profile-properties
                                      :member-name "CustomConnector")
                                     (pardot :target-type
                                      pardot-connector-profile-properties
                                      :member-name "Pardot"))
                                    (:shape-name "ConnectorProfileProperties"))

(smithy/sdk/shapes:define-structure connector-provisioning-config
                                    common-lisp:nil
                                    ((lambda :target-type
                                      lambda-connector-provisioning-config
                                      :member-name "lambda"))
                                    (:shape-name "ConnectorProvisioningConfig"))

(smithy/sdk/shapes:define-enum connector-provisioning-type
    common-lisp:nil
  (:lambda "LAMBDA"))

(smithy/sdk/shapes:define-structure connector-runtime-setting common-lisp:nil
                                    ((key :target-type key :member-name "key")
                                     (data-type :target-type
                                      connector-runtime-setting-data-type
                                      :member-name "dataType")
                                     (is-required :target-type boolean
                                      :member-name "isRequired")
                                     (label :target-type label :member-name
                                      "label")
                                     (description :target-type description
                                      :member-name "description")
                                     (scope :target-type
                                      connector-runtime-setting-scope
                                      :member-name "scope")
                                     (connector-supplied-value-options
                                      :target-type
                                      connector-supplied-value-option-list
                                      :member-name
                                      "connectorSuppliedValueOptions"))
                                    (:shape-name "ConnectorRuntimeSetting"))

(smithy/sdk/shapes:define-type connector-runtime-setting-data-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list connector-runtime-setting-list :member
                               connector-runtime-setting)

(smithy/sdk/shapes:define-type connector-runtime-setting-scope
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error connector-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ConnectorServerException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type connector-supplied-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list connector-supplied-value-list :member
                               connector-supplied-value)

(smithy/sdk/shapes:define-list connector-supplied-value-option-list :member
                               connector-supplied-value)

(smithy/sdk/shapes:define-enum connector-type
    common-lisp:nil
  (:salesforce "Salesforce")
  (:singular "Singular")
  (:slack "Slack")
  (:redshift "Redshift")
  (:s3 "S3")
  (:marketo "Marketo")
  (:googleanalytics "Googleanalytics")
  (:zendesk "Zendesk")
  (:servicenow "Servicenow")
  (:datadog "Datadog")
  (:trendmicro "Trendmicro")
  (:snowflake "Snowflake")
  (:dynatrace "Dynatrace")
  (:infornexus "Infornexus")
  (:amplitude "Amplitude")
  (:veeva "Veeva")
  (:eventbridge "EventBridge")
  (:lookoutmetrics "LookoutMetrics")
  (:upsolver "Upsolver")
  (:honeycode "Honeycode")
  (:customerprofiles "CustomerProfiles")
  (:sapodata "SAPOData")
  (:customconnector "CustomConnector")
  (:pardot "Pardot"))

(smithy/sdk/shapes:define-list connector-type-list :member connector-type)

(smithy/sdk/shapes:define-type connector-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input create-connector-profile-request
                                common-lisp:nil
                                ((connector-profile-name :target-type
                                  connector-profile-name :required
                                  common-lisp:t :member-name
                                  "connectorProfileName")
                                 (kms-arn :target-type kmsarn :member-name
                                  "kmsArn")
                                 (connector-type :target-type connector-type
                                  :required common-lisp:t :member-name
                                  "connectorType")
                                 (connector-label :target-type connector-label
                                  :member-name "connectorLabel")
                                 (connection-mode :target-type connection-mode
                                  :required common-lisp:t :member-name
                                  "connectionMode")
                                 (connector-profile-config :target-type
                                  connector-profile-config :required
                                  common-lisp:t :member-name
                                  "connectorProfileConfig")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateConnectorProfileRequest"))

(smithy/sdk/shapes:define-output create-connector-profile-response
                                 common-lisp:nil
                                 ((connector-profile-arn :target-type
                                   connector-profile-arn :member-name
                                   "connectorProfileArn"))
                                 (:shape-name "CreateConnectorProfileResponse"))

(smithy/sdk/shapes:define-input create-flow-request common-lisp:nil
                                ((flow-name :target-type flow-name :required
                                  common-lisp:t :member-name "flowName")
                                 (description :target-type flow-description
                                  :member-name "description")
                                 (kms-arn :target-type kmsarn :member-name
                                  "kmsArn")
                                 (trigger-config :target-type trigger-config
                                  :required common-lisp:t :member-name
                                  "triggerConfig")
                                 (source-flow-config :target-type
                                  source-flow-config :required common-lisp:t
                                  :member-name "sourceFlowConfig")
                                 (destination-flow-config-list :target-type
                                  destination-flow-config-list :required
                                  common-lisp:t :member-name
                                  "destinationFlowConfigList")
                                 (tasks :target-type tasks :required
                                  common-lisp:t :member-name "tasks")
                                 (tags :target-type tag-map :member-name
                                  "tags")
                                 (metadata-catalog-config :target-type
                                  metadata-catalog-config :member-name
                                  "metadataCatalogConfig")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "CreateFlowRequest"))

(smithy/sdk/shapes:define-output create-flow-response common-lisp:nil
                                 ((flow-arn :target-type flow-arn :member-name
                                   "flowArn")
                                  (flow-status :target-type flow-status
                                   :member-name "flowStatus"))
                                 (:shape-name "CreateFlowResponse"))

(smithy/sdk/shapes:define-type created-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map credentials-map :key credentials-map-key :value
                              credentials-map-value)

(smithy/sdk/shapes:define-type credentials-map-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type credentials-map-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure custom-auth-config common-lisp:nil
                                    ((custom-authentication-type :target-type
                                      custom-authentication-type :member-name
                                      "customAuthenticationType")
                                     (auth-parameters :target-type
                                      auth-parameter-list :member-name
                                      "authParameters"))
                                    (:shape-name "CustomAuthConfig"))

(smithy/sdk/shapes:define-list custom-auth-config-list :member
                               custom-auth-config)

(smithy/sdk/shapes:define-structure custom-auth-credentials common-lisp:nil
                                    ((custom-authentication-type :target-type
                                      custom-authentication-type :required
                                      common-lisp:t :member-name
                                      "customAuthenticationType")
                                     (credentials-map :target-type
                                      credentials-map :member-name
                                      "credentialsMap"))
                                    (:shape-name "CustomAuthCredentials"))

(smithy/sdk/shapes:define-type custom-authentication-type
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure custom-connector-destination-properties
                                    common-lisp:nil
                                    ((entity-name :target-type entity-name
                                      :required common-lisp:t :member-name
                                      "entityName")
                                     (error-handling-config :target-type
                                      error-handling-config :member-name
                                      "errorHandlingConfig")
                                     (write-operation-type :target-type
                                      write-operation-type :member-name
                                      "writeOperationType")
                                     (id-field-names :target-type
                                      id-field-name-list :member-name
                                      "idFieldNames")
                                     (custom-properties :target-type
                                      custom-properties :member-name
                                      "customProperties"))
                                    (:shape-name
                                     "CustomConnectorDestinationProperties"))

(smithy/sdk/shapes:define-structure custom-connector-profile-credentials
                                    common-lisp:nil
                                    ((authentication-type :target-type
                                      authentication-type :required
                                      common-lisp:t :member-name
                                      "authenticationType")
                                     (basic :target-type basic-auth-credentials
                                      :member-name "basic")
                                     (oauth2 :target-type oauth2credentials
                                      :member-name "oauth2")
                                     (api-key :target-type api-key-credentials
                                      :member-name "apiKey")
                                     (custom :target-type
                                      custom-auth-credentials :member-name
                                      "custom"))
                                    (:shape-name
                                     "CustomConnectorProfileCredentials"))

(smithy/sdk/shapes:define-structure custom-connector-profile-properties
                                    common-lisp:nil
                                    ((profile-properties :target-type
                                      profile-properties-map :member-name
                                      "profileProperties")
                                     (o-auth2properties :target-type
                                      oauth2properties :member-name
                                      "oAuth2Properties"))
                                    (:shape-name
                                     "CustomConnectorProfileProperties"))

(smithy/sdk/shapes:define-structure custom-connector-source-properties
                                    common-lisp:nil
                                    ((entity-name :target-type entity-name
                                      :required common-lisp:t :member-name
                                      "entityName")
                                     (custom-properties :target-type
                                      custom-properties :member-name
                                      "customProperties")
                                     (data-transfer-api :target-type
                                      data-transfer-api :member-name
                                      "dataTransferApi"))
                                    (:shape-name
                                     "CustomConnectorSourceProperties"))

(smithy/sdk/shapes:define-map custom-properties :key custom-property-key :value
                              custom-property-value)

(smithy/sdk/shapes:define-type custom-property-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type custom-property-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure customer-profiles-destination-properties
                                    common-lisp:nil
                                    ((domain-name :target-type domain-name
                                      :required common-lisp:t :member-name
                                      "domainName")
                                     (object-type-name :target-type
                                      object-type-name :member-name
                                      "objectTypeName"))
                                    (:shape-name
                                     "CustomerProfilesDestinationProperties"))

(smithy/sdk/shapes:define-structure customer-profiles-metadata common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "CustomerProfilesMetadata"))

(smithy/sdk/shapes:define-type data-api-role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum data-pull-mode
    common-lisp:nil
  (:incremental "Incremental")
  (:complete "Complete"))

(smithy/sdk/shapes:define-structure data-transfer-api common-lisp:nil
                                    ((name :target-type
                                      data-transfer-api-type-name :member-name
                                      "Name")
                                     (type :target-type data-transfer-api-type
                                      :member-name "Type"))
                                    (:shape-name "DataTransferApi"))

(smithy/sdk/shapes:define-enum data-transfer-api-type
    common-lisp:nil
  (:sync "SYNC")
  (:async "ASYNC")
  (:automatic "AUTOMATIC"))

(smithy/sdk/shapes:define-type data-transfer-api-type-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type database-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type database-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum datadog-connector-operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:between "BETWEEN")
  (:equal-to "EQUAL_TO")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC")
  (:no-op "NO_OP"))

(smithy/sdk/shapes:define-structure datadog-connector-profile-credentials
                                    common-lisp:nil
                                    ((api-key :target-type api-key :required
                                      common-lisp:t :member-name "apiKey")
                                     (application-key :target-type
                                      application-key :required common-lisp:t
                                      :member-name "applicationKey"))
                                    (:shape-name
                                     "DatadogConnectorProfileCredentials"))

(smithy/sdk/shapes:define-structure datadog-connector-profile-properties
                                    common-lisp:nil
                                    ((instance-url :target-type instance-url
                                      :required common-lisp:t :member-name
                                      "instanceUrl"))
                                    (:shape-name
                                     "DatadogConnectorProfileProperties"))

(smithy/sdk/shapes:define-structure datadog-metadata common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DatadogMetadata"))

(smithy/sdk/shapes:define-structure datadog-source-properties common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object"))
                                    (:shape-name "DatadogSourceProperties"))

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-type datetime-type-field-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input delete-connector-profile-request
                                common-lisp:nil
                                ((connector-profile-name :target-type
                                  connector-profile-name :required
                                  common-lisp:t :member-name
                                  "connectorProfileName")
                                 (force-delete :target-type boolean
                                  :member-name "forceDelete"))
                                (:shape-name "DeleteConnectorProfileRequest"))

(smithy/sdk/shapes:define-output delete-connector-profile-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name "DeleteConnectorProfileResponse"))

(smithy/sdk/shapes:define-input delete-flow-request common-lisp:nil
                                ((flow-name :target-type flow-name :required
                                  common-lisp:t :member-name "flowName")
                                 (force-delete :target-type boolean
                                  :member-name "forceDelete"))
                                (:shape-name "DeleteFlowRequest"))

(smithy/sdk/shapes:define-output delete-flow-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "DeleteFlowResponse"))

(smithy/sdk/shapes:define-input describe-connector-entity-request
                                common-lisp:nil
                                ((connector-entity-name :target-type
                                  entity-name :required common-lisp:t
                                  :member-name "connectorEntityName")
                                 (connector-type :target-type connector-type
                                  :member-name "connectorType")
                                 (connector-profile-name :target-type
                                  connector-profile-name :member-name
                                  "connectorProfileName")
                                 (api-version :target-type api-version
                                  :member-name "apiVersion"))
                                (:shape-name "DescribeConnectorEntityRequest"))

(smithy/sdk/shapes:define-output describe-connector-entity-response
                                 common-lisp:nil
                                 ((connector-entity-fields :target-type
                                   connector-entity-field-list :required
                                   common-lisp:t :member-name
                                   "connectorEntityFields"))
                                 (:shape-name
                                  "DescribeConnectorEntityResponse"))

(smithy/sdk/shapes:define-input describe-connector-profiles-request
                                common-lisp:nil
                                ((connector-profile-names :target-type
                                  connector-profile-name-list :member-name
                                  "connectorProfileNames")
                                 (connector-type :target-type connector-type
                                  :member-name "connectorType")
                                 (connector-label :target-type connector-label
                                  :member-name "connectorLabel")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "DescribeConnectorProfilesRequest"))

(smithy/sdk/shapes:define-output describe-connector-profiles-response
                                 common-lisp:nil
                                 ((connector-profile-details :target-type
                                   connector-profile-detail-list :member-name
                                   "connectorProfileDetails")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribeConnectorProfilesResponse"))

(smithy/sdk/shapes:define-input describe-connector-request common-lisp:nil
                                ((connector-type :target-type connector-type
                                  :required common-lisp:t :member-name
                                  "connectorType")
                                 (connector-label :target-type connector-label
                                  :member-name "connectorLabel"))
                                (:shape-name "DescribeConnectorRequest"))

(smithy/sdk/shapes:define-output describe-connector-response common-lisp:nil
                                 ((connector-configuration :target-type
                                   connector-configuration :member-name
                                   "connectorConfiguration"))
                                 (:shape-name "DescribeConnectorResponse"))

(smithy/sdk/shapes:define-input describe-connectors-request common-lisp:nil
                                ((connector-types :target-type
                                  connector-type-list :member-name
                                  "connectorTypes")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "DescribeConnectorsRequest"))

(smithy/sdk/shapes:define-output describe-connectors-response common-lisp:nil
                                 ((connector-configurations :target-type
                                   connector-configurations-map :member-name
                                   "connectorConfigurations")
                                  (connectors :target-type connector-list
                                   :member-name "connectors")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "DescribeConnectorsResponse"))

(smithy/sdk/shapes:define-input describe-flow-execution-records-request
                                common-lisp:nil
                                ((flow-name :target-type flow-name :required
                                  common-lisp:t :member-name "flowName")
                                 (max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name
                                 "DescribeFlowExecutionRecordsRequest"))

(smithy/sdk/shapes:define-output describe-flow-execution-records-response
                                 common-lisp:nil
                                 ((flow-executions :target-type
                                   flow-execution-list :member-name
                                   "flowExecutions")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name
                                  "DescribeFlowExecutionRecordsResponse"))

(smithy/sdk/shapes:define-input describe-flow-request common-lisp:nil
                                ((flow-name :target-type flow-name :required
                                  common-lisp:t :member-name "flowName"))
                                (:shape-name "DescribeFlowRequest"))

(smithy/sdk/shapes:define-output describe-flow-response common-lisp:nil
                                 ((flow-arn :target-type flow-arn :member-name
                                   "flowArn")
                                  (description :target-type flow-description
                                   :member-name "description")
                                  (flow-name :target-type flow-name
                                   :member-name "flowName")
                                  (kms-arn :target-type kmsarn :member-name
                                   "kmsArn")
                                  (flow-status :target-type flow-status
                                   :member-name "flowStatus")
                                  (flow-status-message :target-type
                                   flow-status-message :member-name
                                   "flowStatusMessage")
                                  (source-flow-config :target-type
                                   source-flow-config :member-name
                                   "sourceFlowConfig")
                                  (destination-flow-config-list :target-type
                                   destination-flow-config-list :member-name
                                   "destinationFlowConfigList")
                                  (last-run-execution-details :target-type
                                   execution-details :member-name
                                   "lastRunExecutionDetails")
                                  (trigger-config :target-type trigger-config
                                   :member-name "triggerConfig")
                                  (tasks :target-type tasks :member-name
                                   "tasks")
                                  (created-at :target-type date :member-name
                                   "createdAt")
                                  (last-updated-at :target-type date
                                   :member-name "lastUpdatedAt")
                                  (created-by :target-type created-by
                                   :member-name "createdBy")
                                  (last-updated-by :target-type updated-by
                                   :member-name "lastUpdatedBy")
                                  (tags :target-type tag-map :member-name
                                   "tags")
                                  (metadata-catalog-config :target-type
                                   metadata-catalog-config :member-name
                                   "metadataCatalogConfig")
                                  (last-run-metadata-catalog-details
                                   :target-type metadata-catalog-details
                                   :member-name
                                   "lastRunMetadataCatalogDetails")
                                  (schema-version :target-type long
                                   :member-name "schemaVersion"))
                                 (:shape-name "DescribeFlowResponse"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure destination-connector-properties
                                    common-lisp:nil
                                    ((redshift :target-type
                                      redshift-destination-properties
                                      :member-name "Redshift")
                                     (s3 :target-type s3destination-properties
                                      :member-name "S3")
                                     (salesforce :target-type
                                      salesforce-destination-properties
                                      :member-name "Salesforce")
                                     (snowflake :target-type
                                      snowflake-destination-properties
                                      :member-name "Snowflake")
                                     (event-bridge :target-type
                                      event-bridge-destination-properties
                                      :member-name "EventBridge")
                                     (lookout-metrics :target-type
                                      lookout-metrics-destination-properties
                                      :member-name "LookoutMetrics")
                                     (upsolver :target-type
                                      upsolver-destination-properties
                                      :member-name "Upsolver")
                                     (honeycode :target-type
                                      honeycode-destination-properties
                                      :member-name "Honeycode")
                                     (customer-profiles :target-type
                                      customer-profiles-destination-properties
                                      :member-name "CustomerProfiles")
                                     (zendesk :target-type
                                      zendesk-destination-properties
                                      :member-name "Zendesk")
                                     (marketo :target-type
                                      marketo-destination-properties
                                      :member-name "Marketo")
                                     (custom-connector :target-type
                                      custom-connector-destination-properties
                                      :member-name "CustomConnector")
                                     (sapodata :target-type
                                      sapodata-destination-properties
                                      :member-name "SAPOData"))
                                    (:shape-name
                                     "DestinationConnectorProperties"))

(smithy/sdk/shapes:define-type destination-field smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure destination-field-properties
                                    common-lisp:nil
                                    ((is-creatable :target-type boolean
                                      :member-name "isCreatable")
                                     (is-nullable :target-type boolean
                                      :member-name "isNullable")
                                     (is-upsertable :target-type boolean
                                      :member-name "isUpsertable")
                                     (is-updatable :target-type boolean
                                      :member-name "isUpdatable")
                                     (is-defaulted-on-create :target-type
                                      boolean :member-name
                                      "isDefaultedOnCreate")
                                     (supported-write-operations :target-type
                                      supported-write-operation-list
                                      :member-name "supportedWriteOperations"))
                                    (:shape-name "DestinationFieldProperties"))

(smithy/sdk/shapes:define-structure destination-flow-config common-lisp:nil
                                    ((connector-type :target-type
                                      connector-type :required common-lisp:t
                                      :member-name "connectorType")
                                     (api-version :target-type api-version
                                      :member-name "apiVersion")
                                     (connector-profile-name :target-type
                                      connector-profile-name :member-name
                                      "connectorProfileName")
                                     (destination-connector-properties
                                      :target-type
                                      destination-connector-properties
                                      :required common-lisp:t :member-name
                                      "destinationConnectorProperties"))
                                    (:shape-name "DestinationFlowConfig"))

(smithy/sdk/shapes:define-list destination-flow-config-list :member
                               destination-flow-config)

(smithy/sdk/shapes:define-type document-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type domain-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type double smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-enum dynatrace-connector-operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:between "BETWEEN")
  (:equal-to "EQUAL_TO")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC")
  (:no-op "NO_OP"))

(smithy/sdk/shapes:define-structure dynatrace-connector-profile-credentials
                                    common-lisp:nil
                                    ((api-token :target-type api-token
                                      :required common-lisp:t :member-name
                                      "apiToken"))
                                    (:shape-name
                                     "DynatraceConnectorProfileCredentials"))

(smithy/sdk/shapes:define-structure dynatrace-connector-profile-properties
                                    common-lisp:nil
                                    ((instance-url :target-type instance-url
                                      :required common-lisp:t :member-name
                                      "instanceUrl"))
                                    (:shape-name
                                     "DynatraceConnectorProfileProperties"))

(smithy/sdk/shapes:define-structure dynatrace-metadata common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "DynatraceMetadata"))

(smithy/sdk/shapes:define-structure dynatrace-source-properties common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object"))
                                    (:shape-name "DynatraceSourceProperties"))

(smithy/sdk/shapes:define-type entities-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type entity-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure error-handling-config common-lisp:nil
                                    ((fail-on-first-destination-error
                                      :target-type boolean :member-name
                                      "failOnFirstDestinationError")
                                     (bucket-prefix :target-type bucket-prefix
                                      :member-name "bucketPrefix")
                                     (bucket-name :target-type bucket-name
                                      :member-name "bucketName"))
                                    (:shape-name "ErrorHandlingConfig"))

(smithy/sdk/shapes:define-structure error-info common-lisp:nil
                                    ((put-failures-count :target-type long
                                      :member-name "putFailuresCount")
                                     (execution-message :target-type
                                      execution-message :member-name
                                      "executionMessage"))
                                    (:shape-name "ErrorInfo"))

(smithy/sdk/shapes:define-type error-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event-bridge-destination-properties
                                    common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object")
                                     (error-handling-config :target-type
                                      error-handling-config :member-name
                                      "errorHandlingConfig"))
                                    (:shape-name
                                     "EventBridgeDestinationProperties"))

(smithy/sdk/shapes:define-structure event-bridge-metadata common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "EventBridgeMetadata"))

(smithy/sdk/shapes:define-structure execution-details common-lisp:nil
                                    ((most-recent-execution-message
                                      :target-type
                                      most-recent-execution-message
                                      :member-name
                                      "mostRecentExecutionMessage")
                                     (most-recent-execution-time :target-type
                                      date :member-name
                                      "mostRecentExecutionTime")
                                     (most-recent-execution-status :target-type
                                      execution-status :member-name
                                      "mostRecentExecutionStatus"))
                                    (:shape-name "ExecutionDetails"))

(smithy/sdk/shapes:define-type execution-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list execution-ids :member execution-id)

(smithy/sdk/shapes:define-type execution-message smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure execution-record common-lisp:nil
                                    ((execution-id :target-type execution-id
                                      :member-name "executionId")
                                     (execution-status :target-type
                                      execution-status :member-name
                                      "executionStatus")
                                     (execution-result :target-type
                                      execution-result :member-name
                                      "executionResult")
                                     (started-at :target-type date :member-name
                                      "startedAt")
                                     (last-updated-at :target-type date
                                      :member-name "lastUpdatedAt")
                                     (data-pull-start-time :target-type date
                                      :member-name "dataPullStartTime")
                                     (data-pull-end-time :target-type date
                                      :member-name "dataPullEndTime")
                                     (metadata-catalog-details :target-type
                                      metadata-catalog-details :member-name
                                      "metadataCatalogDetails"))
                                    (:shape-name "ExecutionRecord"))

(smithy/sdk/shapes:define-structure execution-result common-lisp:nil
                                    ((error-info :target-type error-info
                                      :member-name "errorInfo")
                                     (bytes-processed :target-type long
                                      :member-name "bytesProcessed")
                                     (bytes-written :target-type long
                                      :member-name "bytesWritten")
                                     (records-processed :target-type long
                                      :member-name "recordsProcessed")
                                     (num-parallel-processes :target-type long
                                      :member-name "numParallelProcesses")
                                     (max-page-size :target-type long
                                      :member-name "maxPageSize"))
                                    (:shape-name "ExecutionResult"))

(smithy/sdk/shapes:define-enum execution-status
    common-lisp:nil
  (:inprogress "InProgress")
  (:successful "Successful")
  (:error "Error")
  (:cancelstarted "CancelStarted")
  (:canceled "Canceled"))

(smithy/sdk/shapes:define-type field-type smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure field-type-details common-lisp:nil
                                    ((field-type :target-type field-type
                                      :required common-lisp:t :member-name
                                      "fieldType")
                                     (filter-operators :target-type
                                      filter-operator-list :required
                                      common-lisp:t :member-name
                                      "filterOperators")
                                     (supported-values :target-type
                                      supported-value-list :member-name
                                      "supportedValues")
                                     (value-regex-pattern :target-type string
                                      :member-name "valueRegexPattern")
                                     (supported-date-format :target-type string
                                      :member-name "supportedDateFormat")
                                     (field-value-range :target-type range
                                      :member-name "fieldValueRange")
                                     (field-length-range :target-type range
                                      :member-name "fieldLengthRange"))
                                    (:shape-name "FieldTypeDetails"))

(smithy/sdk/shapes:define-enum file-type
    common-lisp:nil
  (:csv "CSV")
  (:json "JSON")
  (:parquet "PARQUET"))

(smithy/sdk/shapes:define-list filter-operator-list :member operator)

(smithy/sdk/shapes:define-type flow-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure flow-definition common-lisp:nil
                                    ((flow-arn :target-type flow-arn
                                      :member-name "flowArn")
                                     (description :target-type flow-description
                                      :member-name "description")
                                     (flow-name :target-type flow-name
                                      :member-name "flowName")
                                     (flow-status :target-type flow-status
                                      :member-name "flowStatus")
                                     (source-connector-type :target-type
                                      connector-type :member-name
                                      "sourceConnectorType")
                                     (source-connector-label :target-type
                                      connector-label :member-name
                                      "sourceConnectorLabel")
                                     (destination-connector-type :target-type
                                      connector-type :member-name
                                      "destinationConnectorType")
                                     (destination-connector-label :target-type
                                      connector-label :member-name
                                      "destinationConnectorLabel")
                                     (trigger-type :target-type trigger-type
                                      :member-name "triggerType")
                                     (created-at :target-type date :member-name
                                      "createdAt")
                                     (last-updated-at :target-type date
                                      :member-name "lastUpdatedAt")
                                     (created-by :target-type created-by
                                      :member-name "createdBy")
                                     (last-updated-by :target-type updated-by
                                      :member-name "lastUpdatedBy")
                                     (tags :target-type tag-map :member-name
                                      "tags")
                                     (last-run-execution-details :target-type
                                      execution-details :member-name
                                      "lastRunExecutionDetails"))
                                    (:shape-name "FlowDefinition"))

(smithy/sdk/shapes:define-type flow-description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type flow-error-deactivation-threshold
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-list flow-execution-list :member execution-record)

(smithy/sdk/shapes:define-list flow-list :member flow-definition)

(smithy/sdk/shapes:define-type flow-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum flow-status
    common-lisp:nil
  (:active "Active")
  (:deprecated "Deprecated")
  (:deleted "Deleted")
  (:draft "Draft")
  (:errored "Errored")
  (:suspended "Suspended"))

(smithy/sdk/shapes:define-type flow-status-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure glue-data-catalog-config common-lisp:nil
                                    ((role-arn :target-type
                                      glue-data-catalog-iamrole :required
                                      common-lisp:t :member-name "roleArn")
                                     (database-name :target-type
                                      glue-data-catalog-database-name :required
                                      common-lisp:t :member-name
                                      "databaseName")
                                     (table-prefix :target-type
                                      glue-data-catalog-table-prefix :required
                                      common-lisp:t :member-name
                                      "tablePrefix"))
                                    (:shape-name "GlueDataCatalogConfig"))

(smithy/sdk/shapes:define-type glue-data-catalog-database-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type glue-data-catalog-iamrole
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type glue-data-catalog-table-prefix
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum google-analytics-connector-operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:between "BETWEEN"))

(smithy/sdk/shapes:define-structure
 google-analytics-connector-profile-credentials common-lisp:nil
 ((client-id :target-type client-id :required common-lisp:t :member-name
   "clientId")
  (client-secret :target-type client-secret :required common-lisp:t
   :member-name "clientSecret")
  (access-token :target-type access-token :member-name "accessToken")
  (refresh-token :target-type refresh-token :member-name "refreshToken")
  (o-auth-request :target-type connector-oauth-request :member-name
   "oAuthRequest"))
 (:shape-name "GoogleAnalyticsConnectorProfileCredentials"))

(smithy/sdk/shapes:define-structure
 google-analytics-connector-profile-properties common-lisp:nil common-lisp:nil
 (:shape-name "GoogleAnalyticsConnectorProfileProperties"))

(smithy/sdk/shapes:define-structure google-analytics-metadata common-lisp:nil
                                    ((o-auth-scopes :target-type
                                      oauth-scope-list :member-name
                                      "oAuthScopes"))
                                    (:shape-name "GoogleAnalyticsMetadata"))

(smithy/sdk/shapes:define-structure google-analytics-source-properties
                                    common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object"))
                                    (:shape-name
                                     "GoogleAnalyticsSourceProperties"))

(smithy/sdk/shapes:define-type group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure honeycode-connector-profile-credentials
                                    common-lisp:nil
                                    ((access-token :target-type access-token
                                      :member-name "accessToken")
                                     (refresh-token :target-type refresh-token
                                      :member-name "refreshToken")
                                     (o-auth-request :target-type
                                      connector-oauth-request :member-name
                                      "oAuthRequest"))
                                    (:shape-name
                                     "HoneycodeConnectorProfileCredentials"))

(smithy/sdk/shapes:define-structure honeycode-connector-profile-properties
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "HoneycodeConnectorProfileProperties"))

(smithy/sdk/shapes:define-structure honeycode-destination-properties
                                    common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object")
                                     (error-handling-config :target-type
                                      error-handling-config :member-name
                                      "errorHandlingConfig"))
                                    (:shape-name
                                     "HoneycodeDestinationProperties"))

(smithy/sdk/shapes:define-structure honeycode-metadata common-lisp:nil
                                    ((o-auth-scopes :target-type
                                      oauth-scope-list :member-name
                                      "oAuthScopes"))
                                    (:shape-name "HoneycodeMetadata"))

(smithy/sdk/shapes:define-list id-field-name-list :member name)

(smithy/sdk/shapes:define-type identifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure incremental-pull-config common-lisp:nil
                                    ((datetime-type-field-name :target-type
                                      datetime-type-field-name :member-name
                                      "datetimeTypeFieldName"))
                                    (:shape-name "IncrementalPullConfig"))

(smithy/sdk/shapes:define-enum infor-nexus-connector-operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:between "BETWEEN")
  (:equal-to "EQUAL_TO")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC")
  (:no-op "NO_OP"))

(smithy/sdk/shapes:define-structure infor-nexus-connector-profile-credentials
                                    common-lisp:nil
                                    ((access-key-id :target-type access-key-id
                                      :required common-lisp:t :member-name
                                      "accessKeyId")
                                     (user-id :target-type username :required
                                      common-lisp:t :member-name "userId")
                                     (secret-access-key :target-type key
                                      :required common-lisp:t :member-name
                                      "secretAccessKey")
                                     (datakey :target-type key :required
                                      common-lisp:t :member-name "datakey"))
                                    (:shape-name
                                     "InforNexusConnectorProfileCredentials"))

(smithy/sdk/shapes:define-structure infor-nexus-connector-profile-properties
                                    common-lisp:nil
                                    ((instance-url :target-type instance-url
                                      :required common-lisp:t :member-name
                                      "instanceUrl"))
                                    (:shape-name
                                     "InforNexusConnectorProfileProperties"))

(smithy/sdk/shapes:define-structure infor-nexus-metadata common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "InforNexusMetadata"))

(smithy/sdk/shapes:define-structure infor-nexus-source-properties
                                    common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object"))
                                    (:shape-name "InforNexusSourceProperties"))

(smithy/sdk/shapes:define-type instance-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error internal-server-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "InternalServerException")
                                (:error-code 500))

(smithy/sdk/shapes:define-type java-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type jwt-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type kmsarn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type label smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure lambda-connector-provisioning-config
                                    common-lisp:nil
                                    ((lambda-arn :target-type arn :required
                                      common-lisp:t :member-name "lambdaArn"))
                                    (:shape-name
                                     "LambdaConnectorProvisioningConfig"))

(smithy/sdk/shapes:define-input list-connector-entities-request common-lisp:nil
                                ((connector-profile-name :target-type
                                  connector-profile-name :member-name
                                  "connectorProfileName")
                                 (connector-type :target-type connector-type
                                  :member-name "connectorType")
                                 (entities-path :target-type entities-path
                                  :member-name "entitiesPath")
                                 (api-version :target-type api-version
                                  :member-name "apiVersion")
                                 (max-results :target-type
                                  list-entities-max-results :member-name
                                  "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListConnectorEntitiesRequest"))

(smithy/sdk/shapes:define-output list-connector-entities-response
                                 common-lisp:nil
                                 ((connector-entity-map :target-type
                                   connector-entity-map :required common-lisp:t
                                   :member-name "connectorEntityMap")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListConnectorEntitiesResponse"))

(smithy/sdk/shapes:define-input list-connectors-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListConnectorsRequest"))

(smithy/sdk/shapes:define-output list-connectors-response common-lisp:nil
                                 ((connectors :target-type connector-list
                                   :member-name "connectors")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListConnectorsResponse"))

(smithy/sdk/shapes:define-type list-entities-max-results
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-input list-flows-request common-lisp:nil
                                ((max-results :target-type max-results
                                  :member-name "maxResults")
                                 (next-token :target-type next-token
                                  :member-name "nextToken"))
                                (:shape-name "ListFlowsRequest"))

(smithy/sdk/shapes:define-output list-flows-response common-lisp:nil
                                 ((flows :target-type flow-list :member-name
                                   "flows")
                                  (next-token :target-type next-token
                                   :member-name "nextToken"))
                                 (:shape-name "ListFlowsResponse"))

(smithy/sdk/shapes:define-input list-tags-for-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t))
                                (:shape-name "ListTagsForResourceRequest"))

(smithy/sdk/shapes:define-output list-tags-for-resource-response
                                 common-lisp:nil
                                 ((tags :target-type tag-map :member-name
                                   "tags"))
                                 (:shape-name "ListTagsForResourceResponse"))

(smithy/sdk/shapes:define-type logo-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type logon-language smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure lookout-metrics-destination-properties
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "LookoutMetricsDestinationProperties"))

(smithy/sdk/shapes:define-enum marketo-connector-operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:less-than "LESS_THAN")
  (:greater-than "GREATER_THAN")
  (:between "BETWEEN")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC")
  (:no-op "NO_OP"))

(smithy/sdk/shapes:define-structure marketo-connector-profile-credentials
                                    common-lisp:nil
                                    ((client-id :target-type client-id
                                      :required common-lisp:t :member-name
                                      "clientId")
                                     (client-secret :target-type client-secret
                                      :required common-lisp:t :member-name
                                      "clientSecret")
                                     (access-token :target-type access-token
                                      :member-name "accessToken")
                                     (o-auth-request :target-type
                                      connector-oauth-request :member-name
                                      "oAuthRequest"))
                                    (:shape-name
                                     "MarketoConnectorProfileCredentials"))

(smithy/sdk/shapes:define-structure marketo-connector-profile-properties
                                    common-lisp:nil
                                    ((instance-url :target-type instance-url
                                      :required common-lisp:t :member-name
                                      "instanceUrl"))
                                    (:shape-name
                                     "MarketoConnectorProfileProperties"))

(smithy/sdk/shapes:define-structure marketo-destination-properties
                                    common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object")
                                     (error-handling-config :target-type
                                      error-handling-config :member-name
                                      "errorHandlingConfig"))
                                    (:shape-name
                                     "MarketoDestinationProperties"))

(smithy/sdk/shapes:define-structure marketo-metadata common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "MarketoMetadata"))

(smithy/sdk/shapes:define-structure marketo-source-properties common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object"))
                                    (:shape-name "MarketoSourceProperties"))

(smithy/sdk/shapes:define-type max-results smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure metadata-catalog-config common-lisp:nil
                                    ((glue-data-catalog :target-type
                                      glue-data-catalog-config :member-name
                                      "glueDataCatalog"))
                                    (:shape-name "MetadataCatalogConfig"))

(smithy/sdk/shapes:define-structure metadata-catalog-detail common-lisp:nil
                                    ((catalog-type :target-type catalog-type
                                      :member-name "catalogType")
                                     (table-name :target-type string
                                      :member-name "tableName")
                                     (table-registration-output :target-type
                                      registration-output :member-name
                                      "tableRegistrationOutput")
                                     (partition-registration-output
                                      :target-type registration-output
                                      :member-name
                                      "partitionRegistrationOutput"))
                                    (:shape-name "MetadataCatalogDetail"))

(smithy/sdk/shapes:define-list metadata-catalog-details :member
                               metadata-catalog-detail)

(smithy/sdk/shapes:define-type most-recent-execution-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type next-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure oauth2credentials common-lisp:nil
                                    ((client-id :target-type client-id
                                      :member-name "clientId")
                                     (client-secret :target-type client-secret
                                      :member-name "clientSecret")
                                     (access-token :target-type access-token
                                      :member-name "accessToken")
                                     (refresh-token :target-type refresh-token
                                      :member-name "refreshToken")
                                     (o-auth-request :target-type
                                      connector-oauth-request :member-name
                                      "oAuthRequest"))
                                    (:shape-name "OAuth2Credentials"))

(smithy/sdk/shapes:define-structure oauth2custom-parameter common-lisp:nil
                                    ((key :target-type key :member-name "key")
                                     (is-required :target-type boolean
                                      :member-name "isRequired")
                                     (label :target-type label :member-name
                                      "label")
                                     (description :target-type description
                                      :member-name "description")
                                     (is-sensitive-field :target-type boolean
                                      :member-name "isSensitiveField")
                                     (connector-supplied-values :target-type
                                      connector-supplied-value-list
                                      :member-name "connectorSuppliedValues")
                                     (type :target-type oauth2custom-prop-type
                                      :member-name "type"))
                                    (:shape-name "OAuth2CustomParameter"))

(smithy/sdk/shapes:define-enum oauth2custom-prop-type
    common-lisp:nil
  (:token-url "TOKEN_URL")
  (:auth-url "AUTH_URL"))

(smithy/sdk/shapes:define-list oauth2custom-properties-list :member
                               oauth2custom-parameter)

(smithy/sdk/shapes:define-structure oauth2defaults common-lisp:nil
                                    ((oauth-scopes :target-type
                                      oauth-scope-list :member-name
                                      "oauthScopes")
                                     (token-urls :target-type token-url-list
                                      :member-name "tokenUrls")
                                     (auth-code-urls :target-type
                                      auth-code-url-list :member-name
                                      "authCodeUrls")
                                     (oauth2grant-types-supported :target-type
                                      oauth2grant-type-supported-list
                                      :member-name "oauth2GrantTypesSupported")
                                     (oauth2custom-properties :target-type
                                      oauth2custom-properties-list :member-name
                                      "oauth2CustomProperties"))
                                    (:shape-name "OAuth2Defaults"))

(smithy/sdk/shapes:define-enum oauth2grant-type
    common-lisp:nil
  (:client-credentials "CLIENT_CREDENTIALS")
  (:authorization-code "AUTHORIZATION_CODE")
  (:jwt-bearer "JWT_BEARER"))

(smithy/sdk/shapes:define-list oauth2grant-type-supported-list :member
                               oauth2grant-type)

(smithy/sdk/shapes:define-structure oauth2properties common-lisp:nil
                                    ((token-url :target-type token-url
                                      :required common-lisp:t :member-name
                                      "tokenUrl")
                                     (o-auth2grant-type :target-type
                                      oauth2grant-type :required common-lisp:t
                                      :member-name "oAuth2GrantType")
                                     (token-url-custom-properties :target-type
                                      token-url-custom-properties :member-name
                                      "tokenUrlCustomProperties"))
                                    (:shape-name "OAuth2Properties"))

(smithy/sdk/shapes:define-structure oauth-credentials common-lisp:nil
                                    ((client-id :target-type client-id
                                      :required common-lisp:t :member-name
                                      "clientId")
                                     (client-secret :target-type client-secret
                                      :required common-lisp:t :member-name
                                      "clientSecret")
                                     (access-token :target-type access-token
                                      :member-name "accessToken")
                                     (refresh-token :target-type refresh-token
                                      :member-name "refreshToken")
                                     (o-auth-request :target-type
                                      connector-oauth-request :member-name
                                      "oAuthRequest"))
                                    (:shape-name "OAuthCredentials"))

(smithy/sdk/shapes:define-structure oauth-properties common-lisp:nil
                                    ((token-url :target-type token-url
                                      :required common-lisp:t :member-name
                                      "tokenUrl")
                                     (auth-code-url :target-type auth-code-url
                                      :required common-lisp:t :member-name
                                      "authCodeUrl")
                                     (o-auth-scopes :target-type
                                      oauth-scope-list :required common-lisp:t
                                      :member-name "oAuthScopes"))
                                    (:shape-name "OAuthProperties"))

(smithy/sdk/shapes:define-type oauth-scope smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list oauth-scope-list :member oauth-scope)

(smithy/sdk/shapes:define-type object smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type object-type-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:less-than "LESS_THAN")
  (:greater-than "GREATER_THAN")
  (:contains "CONTAINS")
  (:between "BETWEEN")
  (:less-than-or-equal-to "LESS_THAN_OR_EQUAL_TO")
  (:greater-than-or-equal-to "GREATER_THAN_OR_EQUAL_TO")
  (:equal-to "EQUAL_TO")
  (:not-equal-to "NOT_EQUAL_TO")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC")
  (:no-op "NO_OP"))

(smithy/sdk/shapes:define-enum operator-properties-keys
    common-lisp:nil
  (:value "VALUE")
  (:values "VALUES")
  (:data-type "DATA_TYPE")
  (:upper-bound "UPPER_BOUND")
  (:lower-bound "LOWER_BOUND")
  (:source-data-type "SOURCE_DATA_TYPE")
  (:destination-data-type "DESTINATION_DATA_TYPE")
  (:validation-action "VALIDATION_ACTION")
  (:mask-value "MASK_VALUE")
  (:mask-length "MASK_LENGTH")
  (:truncate-length "TRUNCATE_LENGTH")
  (:math-operation-fields-order "MATH_OPERATION_FIELDS_ORDER")
  (:concat-format "CONCAT_FORMAT")
  (:subfield-category-map "SUBFIELD_CATEGORY_MAP")
  (:exclude-source-fields-list "EXCLUDE_SOURCE_FIELDS_LIST")
  (:include-new-fields "INCLUDE_NEW_FIELDS")
  (:ordered-partition-keys-list "ORDERED_PARTITION_KEYS_LIST"))

(smithy/sdk/shapes:define-enum operators
    common-lisp:nil
  (:projection "PROJECTION")
  (:less-than "LESS_THAN")
  (:greater-than "GREATER_THAN")
  (:contains "CONTAINS")
  (:between "BETWEEN")
  (:less-than-or-equal-to "LESS_THAN_OR_EQUAL_TO")
  (:greater-than-or-equal-to "GREATER_THAN_OR_EQUAL_TO")
  (:equal-to "EQUAL_TO")
  (:not-equal-to "NOT_EQUAL_TO")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC")
  (:no-op "NO_OP"))

(smithy/sdk/shapes:define-enum pardot-connector-operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:equal-to "EQUAL_TO")
  (:no-op "NO_OP")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC"))

(smithy/sdk/shapes:define-structure pardot-connector-profile-credentials
                                    common-lisp:nil
                                    ((access-token :target-type access-token
                                      :member-name "accessToken")
                                     (refresh-token :target-type refresh-token
                                      :member-name "refreshToken")
                                     (o-auth-request :target-type
                                      connector-oauth-request :member-name
                                      "oAuthRequest")
                                     (client-credentials-arn :target-type
                                      client-credentials-arn :member-name
                                      "clientCredentialsArn"))
                                    (:shape-name
                                     "PardotConnectorProfileCredentials"))

(smithy/sdk/shapes:define-structure pardot-connector-profile-properties
                                    common-lisp:nil
                                    ((instance-url :target-type instance-url
                                      :member-name "instanceUrl")
                                     (is-sandbox-environment :target-type
                                      boolean :member-name
                                      "isSandboxEnvironment")
                                     (business-unit-id :target-type
                                      business-unit-id :member-name
                                      "businessUnitId"))
                                    (:shape-name
                                     "PardotConnectorProfileProperties"))

(smithy/sdk/shapes:define-structure pardot-metadata common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "PardotMetadata"))

(smithy/sdk/shapes:define-structure pardot-source-properties common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object"))
                                    (:shape-name "PardotSourceProperties"))

(smithy/sdk/shapes:define-type password smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum path-prefix
    common-lisp:nil
  (:execution-id "EXECUTION_ID")
  (:schema-version "SCHEMA_VERSION"))

(smithy/sdk/shapes:define-list path-prefix-hierarchy :member path-prefix)

(smithy/sdk/shapes:define-type port-number smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure prefix-config common-lisp:nil
                                    ((prefix-type :target-type prefix-type
                                      :member-name "prefixType")
                                     (prefix-format :target-type prefix-format
                                      :member-name "prefixFormat")
                                     (path-prefix-hierarchy :target-type
                                      path-prefix-hierarchy :member-name
                                      "pathPrefixHierarchy"))
                                    (:shape-name "PrefixConfig"))

(smithy/sdk/shapes:define-enum prefix-format
    common-lisp:nil
  (:year "YEAR")
  (:month "MONTH")
  (:day "DAY")
  (:hour "HOUR")
  (:minute "MINUTE"))

(smithy/sdk/shapes:define-enum prefix-type
    common-lisp:nil
  (:filename "FILENAME")
  (:path "PATH")
  (:path-and-filename "PATH_AND_FILENAME"))

(smithy/sdk/shapes:define-enum private-connection-provisioning-failure-cause
    common-lisp:nil
  (:connector-authentication "CONNECTOR_AUTHENTICATION")
  (:connector-server "CONNECTOR_SERVER")
  (:internal-server "INTERNAL_SERVER")
  (:access-denied "ACCESS_DENIED")
  (:validation "VALIDATION"))

(smithy/sdk/shapes:define-type private-connection-provisioning-failure-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure private-connection-provisioning-state
                                    common-lisp:nil
                                    ((status :target-type
                                      private-connection-provisioning-status
                                      :member-name "status")
                                     (failure-message :target-type
                                      private-connection-provisioning-failure-message
                                      :member-name "failureMessage")
                                     (failure-cause :target-type
                                      private-connection-provisioning-failure-cause
                                      :member-name "failureCause"))
                                    (:shape-name
                                     "PrivateConnectionProvisioningState"))

(smithy/sdk/shapes:define-enum private-connection-provisioning-status
    common-lisp:nil
  (:failed "FAILED")
  (:pending "PENDING")
  (:created "CREATED"))

(smithy/sdk/shapes:define-type private-link-service-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map profile-properties-map :key profile-property-key
                              :value profile-property-value)

(smithy/sdk/shapes:define-type profile-property-key
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type profile-property-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type property smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure range common-lisp:nil
                                    ((maximum :target-type double :member-name
                                      "maximum")
                                     (minimum :target-type double :member-name
                                      "minimum"))
                                    (:shape-name "Range"))

(smithy/sdk/shapes:define-type redirect-uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure redshift-connector-profile-credentials
                                    common-lisp:nil
                                    ((username :target-type string :member-name
                                      "username")
                                     (password :target-type password
                                      :member-name "password"))
                                    (:shape-name
                                     "RedshiftConnectorProfileCredentials"))

(smithy/sdk/shapes:define-structure redshift-connector-profile-properties
                                    common-lisp:nil
                                    ((database-url :target-type database-url
                                      :member-name "databaseUrl")
                                     (bucket-name :target-type bucket-name
                                      :required common-lisp:t :member-name
                                      "bucketName")
                                     (bucket-prefix :target-type bucket-prefix
                                      :member-name "bucketPrefix")
                                     (role-arn :target-type role-arn :required
                                      common-lisp:t :member-name "roleArn")
                                     (data-api-role-arn :target-type
                                      data-api-role-arn :member-name
                                      "dataApiRoleArn")
                                     (is-redshift-serverless :target-type
                                      boolean :member-name
                                      "isRedshiftServerless")
                                     (cluster-identifier :target-type
                                      cluster-identifier :member-name
                                      "clusterIdentifier")
                                     (workgroup-name :target-type
                                      workgroup-name :member-name
                                      "workgroupName")
                                     (database-name :target-type database-name
                                      :member-name "databaseName"))
                                    (:shape-name
                                     "RedshiftConnectorProfileProperties"))

(smithy/sdk/shapes:define-structure redshift-destination-properties
                                    common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object")
                                     (intermediate-bucket-name :target-type
                                      bucket-name :required common-lisp:t
                                      :member-name "intermediateBucketName")
                                     (bucket-prefix :target-type bucket-prefix
                                      :member-name "bucketPrefix")
                                     (error-handling-config :target-type
                                      error-handling-config :member-name
                                      "errorHandlingConfig"))
                                    (:shape-name
                                     "RedshiftDestinationProperties"))

(smithy/sdk/shapes:define-structure redshift-metadata common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "RedshiftMetadata"))

(smithy/sdk/shapes:define-type refresh-token smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list region-list :member region)

(smithy/sdk/shapes:define-input register-connector-request common-lisp:nil
                                ((connector-label :target-type connector-label
                                  :member-name "connectorLabel")
                                 (description :target-type description
                                  :member-name "description")
                                 (connector-provisioning-type :target-type
                                  connector-provisioning-type :member-name
                                  "connectorProvisioningType")
                                 (connector-provisioning-config :target-type
                                  connector-provisioning-config :member-name
                                  "connectorProvisioningConfig")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "RegisterConnectorRequest"))

(smithy/sdk/shapes:define-output register-connector-response common-lisp:nil
                                 ((connector-arn :target-type arn :member-name
                                   "connectorArn"))
                                 (:shape-name "RegisterConnectorResponse"))

(smithy/sdk/shapes:define-type registered-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure registration-output common-lisp:nil
                                    ((message :target-type string :member-name
                                      "message")
                                     (result :target-type string :member-name
                                      "result")
                                     (status :target-type execution-status
                                      :member-name "status"))
                                    (:shape-name "RegistrationOutput"))

(smithy/sdk/shapes:define-input reset-connector-metadata-cache-request
                                common-lisp:nil
                                ((connector-profile-name :target-type
                                  connector-profile-name :member-name
                                  "connectorProfileName")
                                 (connector-type :target-type connector-type
                                  :member-name "connectorType")
                                 (connector-entity-name :target-type
                                  entity-name :member-name
                                  "connectorEntityName")
                                 (entities-path :target-type entities-path
                                  :member-name "entitiesPath")
                                 (api-version :target-type api-version
                                  :member-name "apiVersion"))
                                (:shape-name
                                 "ResetConnectorMetadataCacheRequest"))

(smithy/sdk/shapes:define-output reset-connector-metadata-cache-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "ResetConnectorMetadataCacheResponse"))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum s3connector-operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:less-than "LESS_THAN")
  (:greater-than "GREATER_THAN")
  (:between "BETWEEN")
  (:less-than-or-equal-to "LESS_THAN_OR_EQUAL_TO")
  (:greater-than-or-equal-to "GREATER_THAN_OR_EQUAL_TO")
  (:equal-to "EQUAL_TO")
  (:not-equal-to "NOT_EQUAL_TO")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC")
  (:no-op "NO_OP"))

(smithy/sdk/shapes:define-structure s3destination-properties common-lisp:nil
                                    ((bucket-name :target-type bucket-name
                                      :required common-lisp:t :member-name
                                      "bucketName")
                                     (bucket-prefix :target-type bucket-prefix
                                      :member-name "bucketPrefix")
                                     (s3output-format-config :target-type
                                      s3output-format-config :member-name
                                      "s3OutputFormatConfig"))
                                    (:shape-name "S3DestinationProperties"))

(smithy/sdk/shapes:define-enum s3input-file-type
    common-lisp:nil
  (:csv "CSV")
  (:json "JSON"))

(smithy/sdk/shapes:define-structure s3input-format-config common-lisp:nil
                                    ((s3input-file-type :target-type
                                      s3input-file-type :member-name
                                      "s3InputFileType"))
                                    (:shape-name "S3InputFormatConfig"))

(smithy/sdk/shapes:define-structure s3metadata common-lisp:nil common-lisp:nil
                                    (:shape-name "S3Metadata"))

(smithy/sdk/shapes:define-structure s3output-format-config common-lisp:nil
                                    ((file-type :target-type file-type
                                      :member-name "fileType")
                                     (prefix-config :target-type prefix-config
                                      :member-name "prefixConfig")
                                     (aggregation-config :target-type
                                      aggregation-config :member-name
                                      "aggregationConfig")
                                     (preserve-source-data-typing :target-type
                                      java-boolean :member-name
                                      "preserveSourceDataTyping"))
                                    (:shape-name "S3OutputFormatConfig"))

(smithy/sdk/shapes:define-structure s3source-properties common-lisp:nil
                                    ((bucket-name :target-type bucket-name
                                      :required common-lisp:t :member-name
                                      "bucketName")
                                     (bucket-prefix :target-type bucket-prefix
                                      :member-name "bucketPrefix")
                                     (s3input-format-config :target-type
                                      s3input-format-config :member-name
                                      "s3InputFormatConfig"))
                                    (:shape-name "S3SourceProperties"))

(smithy/sdk/shapes:define-enum sapodata-connector-operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:less-than "LESS_THAN")
  (:contains "CONTAINS")
  (:greater-than "GREATER_THAN")
  (:between "BETWEEN")
  (:less-than-or-equal-to "LESS_THAN_OR_EQUAL_TO")
  (:greater-than-or-equal-to "GREATER_THAN_OR_EQUAL_TO")
  (:equal-to "EQUAL_TO")
  (:not-equal-to "NOT_EQUAL_TO")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC")
  (:no-op "NO_OP"))

(smithy/sdk/shapes:define-structure sapodata-connector-profile-credentials
                                    common-lisp:nil
                                    ((basic-auth-credentials :target-type
                                      basic-auth-credentials :member-name
                                      "basicAuthCredentials")
                                     (o-auth-credentials :target-type
                                      oauth-credentials :member-name
                                      "oAuthCredentials"))
                                    (:shape-name
                                     "SAPODataConnectorProfileCredentials"))

(smithy/sdk/shapes:define-structure sapodata-connector-profile-properties
                                    common-lisp:nil
                                    ((application-host-url :target-type
                                      application-host-url :required
                                      common-lisp:t :member-name
                                      "applicationHostUrl")
                                     (application-service-path :target-type
                                      application-service-path :required
                                      common-lisp:t :member-name
                                      "applicationServicePath")
                                     (port-number :target-type port-number
                                      :required common-lisp:t :member-name
                                      "portNumber")
                                     (client-number :target-type client-number
                                      :required common-lisp:t :member-name
                                      "clientNumber")
                                     (logon-language :target-type
                                      logon-language :member-name
                                      "logonLanguage")
                                     (private-link-service-name :target-type
                                      private-link-service-name :member-name
                                      "privateLinkServiceName")
                                     (o-auth-properties :target-type
                                      oauth-properties :member-name
                                      "oAuthProperties")
                                     (disable-sso :target-type boolean
                                      :member-name "disableSSO"))
                                    (:shape-name
                                     "SAPODataConnectorProfileProperties"))

(smithy/sdk/shapes:define-structure sapodata-destination-properties
                                    common-lisp:nil
                                    ((object-path :target-type object :required
                                      common-lisp:t :member-name "objectPath")
                                     (success-response-handling-config
                                      :target-type
                                      success-response-handling-config
                                      :member-name
                                      "successResponseHandlingConfig")
                                     (id-field-names :target-type
                                      id-field-name-list :member-name
                                      "idFieldNames")
                                     (error-handling-config :target-type
                                      error-handling-config :member-name
                                      "errorHandlingConfig")
                                     (write-operation-type :target-type
                                      write-operation-type :member-name
                                      "writeOperationType"))
                                    (:shape-name
                                     "SAPODataDestinationProperties"))

(smithy/sdk/shapes:define-type sapodata-max-page-size
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type sapodata-max-parallelism
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure sapodata-metadata common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "SAPODataMetadata"))

(smithy/sdk/shapes:define-structure sapodata-pagination-config common-lisp:nil
                                    ((max-page-size :target-type
                                      sapodata-max-page-size :required
                                      common-lisp:t :member-name
                                      "maxPageSize"))
                                    (:shape-name "SAPODataPaginationConfig"))

(smithy/sdk/shapes:define-structure sapodata-parallelism-config common-lisp:nil
                                    ((max-parallelism :target-type
                                      sapodata-max-parallelism :required
                                      common-lisp:t :member-name
                                      "maxParallelism"))
                                    (:shape-name "SAPODataParallelismConfig"))

(smithy/sdk/shapes:define-structure sapodata-source-properties common-lisp:nil
                                    ((object-path :target-type object
                                      :member-name "objectPath")
                                     (parallelism-config :target-type
                                      sapodata-parallelism-config :member-name
                                      "parallelismConfig")
                                     (pagination-config :target-type
                                      sapodata-pagination-config :member-name
                                      "paginationConfig"))
                                    (:shape-name "SAPODataSourceProperties"))

(smithy/sdk/shapes:define-enum salesforce-connector-operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:less-than "LESS_THAN")
  (:contains "CONTAINS")
  (:greater-than "GREATER_THAN")
  (:between "BETWEEN")
  (:less-than-or-equal-to "LESS_THAN_OR_EQUAL_TO")
  (:greater-than-or-equal-to "GREATER_THAN_OR_EQUAL_TO")
  (:equal-to "EQUAL_TO")
  (:not-equal-to "NOT_EQUAL_TO")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC")
  (:no-op "NO_OP"))

(smithy/sdk/shapes:define-structure salesforce-connector-profile-credentials
                                    common-lisp:nil
                                    ((access-token :target-type access-token
                                      :member-name "accessToken")
                                     (refresh-token :target-type refresh-token
                                      :member-name "refreshToken")
                                     (o-auth-request :target-type
                                      connector-oauth-request :member-name
                                      "oAuthRequest")
                                     (client-credentials-arn :target-type
                                      client-credentials-arn :member-name
                                      "clientCredentialsArn")
                                     (o-auth2grant-type :target-type
                                      oauth2grant-type :member-name
                                      "oAuth2GrantType")
                                     (jwt-token :target-type jwt-token
                                      :member-name "jwtToken"))
                                    (:shape-name
                                     "SalesforceConnectorProfileCredentials"))

(smithy/sdk/shapes:define-structure salesforce-connector-profile-properties
                                    common-lisp:nil
                                    ((instance-url :target-type instance-url
                                      :member-name "instanceUrl")
                                     (is-sandbox-environment :target-type
                                      boolean :member-name
                                      "isSandboxEnvironment")
                                     (use-private-link-for-metadata-and-authorization
                                      :target-type boolean :member-name
                                      "usePrivateLinkForMetadataAndAuthorization"))
                                    (:shape-name
                                     "SalesforceConnectorProfileProperties"))

(smithy/sdk/shapes:define-enum salesforce-data-transfer-api
    common-lisp:nil
  (:automatic "AUTOMATIC")
  (:bulkv2 "BULKV2")
  (:rest-sync "REST_SYNC"))

(smithy/sdk/shapes:define-list salesforce-data-transfer-api-list :member
                               salesforce-data-transfer-api)

(smithy/sdk/shapes:define-structure salesforce-destination-properties
                                    common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object")
                                     (id-field-names :target-type
                                      id-field-name-list :member-name
                                      "idFieldNames")
                                     (error-handling-config :target-type
                                      error-handling-config :member-name
                                      "errorHandlingConfig")
                                     (write-operation-type :target-type
                                      write-operation-type :member-name
                                      "writeOperationType")
                                     (data-transfer-api :target-type
                                      salesforce-data-transfer-api :member-name
                                      "dataTransferApi"))
                                    (:shape-name
                                     "SalesforceDestinationProperties"))

(smithy/sdk/shapes:define-structure salesforce-metadata common-lisp:nil
                                    ((o-auth-scopes :target-type
                                      oauth-scope-list :member-name
                                      "oAuthScopes")
                                     (data-transfer-apis :target-type
                                      salesforce-data-transfer-api-list
                                      :member-name "dataTransferApis")
                                     (oauth2grant-types-supported :target-type
                                      oauth2grant-type-supported-list
                                      :member-name
                                      "oauth2GrantTypesSupported"))
                                    (:shape-name "SalesforceMetadata"))

(smithy/sdk/shapes:define-structure salesforce-source-properties
                                    common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object")
                                     (enable-dynamic-field-update :target-type
                                      boolean :member-name
                                      "enableDynamicFieldUpdate")
                                     (include-deleted-records :target-type
                                      boolean :member-name
                                      "includeDeletedRecords")
                                     (data-transfer-api :target-type
                                      salesforce-data-transfer-api :member-name
                                      "dataTransferApi"))
                                    (:shape-name "SalesforceSourceProperties"))

(smithy/sdk/shapes:define-type schedule-expression
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum schedule-frequency-type
    common-lisp:nil
  (:byminute "BYMINUTE")
  (:hourly "HOURLY")
  (:daily "DAILY")
  (:weekly "WEEKLY")
  (:monthly "MONTHLY")
  (:once "ONCE"))

(smithy/sdk/shapes:define-type schedule-offset smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-structure scheduled-trigger-properties
                                    common-lisp:nil
                                    ((schedule-expression :target-type
                                      schedule-expression :required
                                      common-lisp:t :member-name
                                      "scheduleExpression")
                                     (data-pull-mode :target-type
                                      data-pull-mode :member-name
                                      "dataPullMode")
                                     (schedule-start-time :target-type date
                                      :member-name "scheduleStartTime")
                                     (schedule-end-time :target-type date
                                      :member-name "scheduleEndTime")
                                     (timezone :target-type timezone
                                      :member-name "timezone")
                                     (schedule-offset :target-type
                                      schedule-offset :member-name
                                      "scheduleOffset")
                                     (first-execution-from :target-type date
                                      :member-name "firstExecutionFrom")
                                     (flow-error-deactivation-threshold
                                      :target-type
                                      flow-error-deactivation-threshold
                                      :member-name
                                      "flowErrorDeactivationThreshold"))
                                    (:shape-name "ScheduledTriggerProperties"))

(smithy/sdk/shapes:define-list scheduling-frequency-type-list :member
                               schedule-frequency-type)

(smithy/sdk/shapes:define-type secret-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum service-now-connector-operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:contains "CONTAINS")
  (:less-than "LESS_THAN")
  (:greater-than "GREATER_THAN")
  (:between "BETWEEN")
  (:less-than-or-equal-to "LESS_THAN_OR_EQUAL_TO")
  (:greater-than-or-equal-to "GREATER_THAN_OR_EQUAL_TO")
  (:equal-to "EQUAL_TO")
  (:not-equal-to "NOT_EQUAL_TO")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC")
  (:no-op "NO_OP"))

(smithy/sdk/shapes:define-structure service-now-connector-profile-credentials
                                    common-lisp:nil
                                    ((username :target-type username
                                      :member-name "username")
                                     (password :target-type password
                                      :member-name "password")
                                     (o-auth2credentials :target-type
                                      oauth2credentials :member-name
                                      "oAuth2Credentials"))
                                    (:shape-name
                                     "ServiceNowConnectorProfileCredentials"))

(smithy/sdk/shapes:define-structure service-now-connector-profile-properties
                                    common-lisp:nil
                                    ((instance-url :target-type instance-url
                                      :required common-lisp:t :member-name
                                      "instanceUrl"))
                                    (:shape-name
                                     "ServiceNowConnectorProfileProperties"))

(smithy/sdk/shapes:define-structure service-now-metadata common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "ServiceNowMetadata"))

(smithy/sdk/shapes:define-structure service-now-source-properties
                                    common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object"))
                                    (:shape-name "ServiceNowSourceProperties"))

(smithy/sdk/shapes:define-error service-quota-exceeded-exception
                                common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ServiceQuotaExceededException")
                                (:error-code 402))

(smithy/sdk/shapes:define-enum singular-connector-operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:equal-to "EQUAL_TO")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC")
  (:no-op "NO_OP"))

(smithy/sdk/shapes:define-structure singular-connector-profile-credentials
                                    common-lisp:nil
                                    ((api-key :target-type api-key :required
                                      common-lisp:t :member-name "apiKey"))
                                    (:shape-name
                                     "SingularConnectorProfileCredentials"))

(smithy/sdk/shapes:define-structure singular-connector-profile-properties
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "SingularConnectorProfileProperties"))

(smithy/sdk/shapes:define-structure singular-metadata common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "SingularMetadata"))

(smithy/sdk/shapes:define-structure singular-source-properties common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object"))
                                    (:shape-name "SingularSourceProperties"))

(smithy/sdk/shapes:define-enum slack-connector-operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:less-than "LESS_THAN")
  (:greater-than "GREATER_THAN")
  (:between "BETWEEN")
  (:less-than-or-equal-to "LESS_THAN_OR_EQUAL_TO")
  (:greater-than-or-equal-to "GREATER_THAN_OR_EQUAL_TO")
  (:equal-to "EQUAL_TO")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC")
  (:no-op "NO_OP"))

(smithy/sdk/shapes:define-structure slack-connector-profile-credentials
                                    common-lisp:nil
                                    ((client-id :target-type client-id
                                      :required common-lisp:t :member-name
                                      "clientId")
                                     (client-secret :target-type client-secret
                                      :required common-lisp:t :member-name
                                      "clientSecret")
                                     (access-token :target-type access-token
                                      :member-name "accessToken")
                                     (o-auth-request :target-type
                                      connector-oauth-request :member-name
                                      "oAuthRequest"))
                                    (:shape-name
                                     "SlackConnectorProfileCredentials"))

(smithy/sdk/shapes:define-structure slack-connector-profile-properties
                                    common-lisp:nil
                                    ((instance-url :target-type instance-url
                                      :required common-lisp:t :member-name
                                      "instanceUrl"))
                                    (:shape-name
                                     "SlackConnectorProfileProperties"))

(smithy/sdk/shapes:define-structure slack-metadata common-lisp:nil
                                    ((o-auth-scopes :target-type
                                      oauth-scope-list :member-name
                                      "oAuthScopes"))
                                    (:shape-name "SlackMetadata"))

(smithy/sdk/shapes:define-structure slack-source-properties common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object"))
                                    (:shape-name "SlackSourceProperties"))

(smithy/sdk/shapes:define-structure snowflake-connector-profile-credentials
                                    common-lisp:nil
                                    ((username :target-type username :required
                                      common-lisp:t :member-name "username")
                                     (password :target-type password :required
                                      common-lisp:t :member-name "password"))
                                    (:shape-name
                                     "SnowflakeConnectorProfileCredentials"))

(smithy/sdk/shapes:define-structure snowflake-connector-profile-properties
                                    common-lisp:nil
                                    ((warehouse :target-type warehouse
                                      :required common-lisp:t :member-name
                                      "warehouse")
                                     (stage :target-type stage :required
                                      common-lisp:t :member-name "stage")
                                     (bucket-name :target-type bucket-name
                                      :required common-lisp:t :member-name
                                      "bucketName")
                                     (bucket-prefix :target-type bucket-prefix
                                      :member-name "bucketPrefix")
                                     (private-link-service-name :target-type
                                      private-link-service-name :member-name
                                      "privateLinkServiceName")
                                     (account-name :target-type account-name
                                      :member-name "accountName")
                                     (region :target-type region :member-name
                                      "region"))
                                    (:shape-name
                                     "SnowflakeConnectorProfileProperties"))

(smithy/sdk/shapes:define-structure snowflake-destination-properties
                                    common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object")
                                     (intermediate-bucket-name :target-type
                                      bucket-name :required common-lisp:t
                                      :member-name "intermediateBucketName")
                                     (bucket-prefix :target-type bucket-prefix
                                      :member-name "bucketPrefix")
                                     (error-handling-config :target-type
                                      error-handling-config :member-name
                                      "errorHandlingConfig"))
                                    (:shape-name
                                     "SnowflakeDestinationProperties"))

(smithy/sdk/shapes:define-structure snowflake-metadata common-lisp:nil
                                    ((supported-regions :target-type
                                      region-list :member-name
                                      "supportedRegions"))
                                    (:shape-name "SnowflakeMetadata"))

(smithy/sdk/shapes:define-structure source-connector-properties common-lisp:nil
                                    ((amplitude :target-type
                                      amplitude-source-properties :member-name
                                      "Amplitude")
                                     (datadog :target-type
                                      datadog-source-properties :member-name
                                      "Datadog")
                                     (dynatrace :target-type
                                      dynatrace-source-properties :member-name
                                      "Dynatrace")
                                     (google-analytics :target-type
                                      google-analytics-source-properties
                                      :member-name "GoogleAnalytics")
                                     (infor-nexus :target-type
                                      infor-nexus-source-properties
                                      :member-name "InforNexus")
                                     (marketo :target-type
                                      marketo-source-properties :member-name
                                      "Marketo")
                                     (s3 :target-type s3source-properties
                                      :member-name "S3")
                                     (salesforce :target-type
                                      salesforce-source-properties :member-name
                                      "Salesforce")
                                     (service-now :target-type
                                      service-now-source-properties
                                      :member-name "ServiceNow")
                                     (singular :target-type
                                      singular-source-properties :member-name
                                      "Singular")
                                     (slack :target-type
                                      slack-source-properties :member-name
                                      "Slack")
                                     (trendmicro :target-type
                                      trendmicro-source-properties :member-name
                                      "Trendmicro")
                                     (veeva :target-type
                                      veeva-source-properties :member-name
                                      "Veeva")
                                     (zendesk :target-type
                                      zendesk-source-properties :member-name
                                      "Zendesk")
                                     (sapodata :target-type
                                      sapodata-source-properties :member-name
                                      "SAPOData")
                                     (custom-connector :target-type
                                      custom-connector-source-properties
                                      :member-name "CustomConnector")
                                     (pardot :target-type
                                      pardot-source-properties :member-name
                                      "Pardot"))
                                    (:shape-name "SourceConnectorProperties"))

(smithy/sdk/shapes:define-structure source-field-properties common-lisp:nil
                                    ((is-retrievable :target-type boolean
                                      :member-name "isRetrievable")
                                     (is-queryable :target-type boolean
                                      :member-name "isQueryable")
                                     (is-timestamp-field-for-incremental-queries
                                      :target-type boolean :member-name
                                      "isTimestampFieldForIncrementalQueries"))
                                    (:shape-name "SourceFieldProperties"))

(smithy/sdk/shapes:define-list source-fields :member string)

(smithy/sdk/shapes:define-structure source-flow-config common-lisp:nil
                                    ((connector-type :target-type
                                      connector-type :required common-lisp:t
                                      :member-name "connectorType")
                                     (api-version :target-type api-version
                                      :member-name "apiVersion")
                                     (connector-profile-name :target-type
                                      connector-profile-name :member-name
                                      "connectorProfileName")
                                     (source-connector-properties :target-type
                                      source-connector-properties :required
                                      common-lisp:t :member-name
                                      "sourceConnectorProperties")
                                     (incremental-pull-config :target-type
                                      incremental-pull-config :member-name
                                      "incrementalPullConfig"))
                                    (:shape-name "SourceFlowConfig"))

(smithy/sdk/shapes:define-type stage smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input start-flow-request common-lisp:nil
                                ((flow-name :target-type flow-name :required
                                  common-lisp:t :member-name "flowName")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "StartFlowRequest"))

(smithy/sdk/shapes:define-output start-flow-response common-lisp:nil
                                 ((flow-arn :target-type flow-arn :member-name
                                   "flowArn")
                                  (flow-status :target-type flow-status
                                   :member-name "flowStatus")
                                  (execution-id :target-type execution-id
                                   :member-name "executionId"))
                                 (:shape-name "StartFlowResponse"))

(smithy/sdk/shapes:define-input stop-flow-request common-lisp:nil
                                ((flow-name :target-type flow-name :required
                                  common-lisp:t :member-name "flowName"))
                                (:shape-name "StopFlowRequest"))

(smithy/sdk/shapes:define-output stop-flow-response common-lisp:nil
                                 ((flow-arn :target-type flow-arn :member-name
                                   "flowArn")
                                  (flow-status :target-type flow-status
                                   :member-name "flowStatus"))
                                 (:shape-name "StopFlowResponse"))

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure success-response-handling-config
                                    common-lisp:nil
                                    ((bucket-prefix :target-type bucket-prefix
                                      :member-name "bucketPrefix")
                                     (bucket-name :target-type bucket-name
                                      :member-name "bucketName"))
                                    (:shape-name
                                     "SuccessResponseHandlingConfig"))

(smithy/sdk/shapes:define-type supported-api-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list supported-api-version-list :member
                               supported-api-version)

(smithy/sdk/shapes:define-list supported-data-transfer-apis :member
                               data-transfer-api)

(smithy/sdk/shapes:define-enum supported-data-transfer-type
    common-lisp:nil
  (:record "RECORD")
  (:file "FILE"))

(smithy/sdk/shapes:define-list supported-data-transfer-type-list :member
                               supported-data-transfer-type)

(smithy/sdk/shapes:define-structure supported-field-type-details
                                    common-lisp:nil
                                    ((v1 :target-type field-type-details
                                      :required common-lisp:t :member-name
                                      "v1"))
                                    (:shape-name "SupportedFieldTypeDetails"))

(smithy/sdk/shapes:define-list supported-operator-list :member operators)

(smithy/sdk/shapes:define-list supported-value-list :member value)

(smithy/sdk/shapes:define-list supported-write-operation-list :member
                               write-operation-type)

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-map tag-map :key tag-key :value tag-value)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tags :target-type tag-map :required
                                  common-lisp:t :member-name "tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-output tag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "TagResourceResponse"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure task common-lisp:nil
                                    ((source-fields :target-type source-fields
                                      :required common-lisp:t :member-name
                                      "sourceFields")
                                     (connector-operator :target-type
                                      connector-operator :member-name
                                      "connectorOperator")
                                     (destination-field :target-type
                                      destination-field :member-name
                                      "destinationField")
                                     (task-type :target-type task-type
                                      :required common-lisp:t :member-name
                                      "taskType")
                                     (task-properties :target-type
                                      task-properties-map :member-name
                                      "taskProperties"))
                                    (:shape-name "Task"))

(smithy/sdk/shapes:define-map task-properties-map :key operator-properties-keys
                              :value property)

(smithy/sdk/shapes:define-enum task-type
    common-lisp:nil
  (:arithmetic "Arithmetic")
  (:filter "Filter")
  (:map "Map")
  (:map-all "Map_all")
  (:mask "Mask")
  (:merge "Merge")
  (:passthrough "Passthrough")
  (:truncate "Truncate")
  (:validate "Validate")
  (:partition "Partition"))

(smithy/sdk/shapes:define-list tasks :member task)

(smithy/sdk/shapes:define-error throttling-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ThrottlingException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type timezone smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type token-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map token-url-custom-properties :key
                              custom-property-key :value custom-property-value)

(smithy/sdk/shapes:define-list token-url-list :member token-url)

(smithy/sdk/shapes:define-enum trendmicro-connector-operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:equal-to "EQUAL_TO")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC")
  (:no-op "NO_OP"))

(smithy/sdk/shapes:define-structure trendmicro-connector-profile-credentials
                                    common-lisp:nil
                                    ((api-secret-key :target-type
                                      api-secret-key :required common-lisp:t
                                      :member-name "apiSecretKey"))
                                    (:shape-name
                                     "TrendmicroConnectorProfileCredentials"))

(smithy/sdk/shapes:define-structure trendmicro-connector-profile-properties
                                    common-lisp:nil common-lisp:nil
                                    (:shape-name
                                     "TrendmicroConnectorProfileProperties"))

(smithy/sdk/shapes:define-structure trendmicro-metadata common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "TrendmicroMetadata"))

(smithy/sdk/shapes:define-structure trendmicro-source-properties
                                    common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object"))
                                    (:shape-name "TrendmicroSourceProperties"))

(smithy/sdk/shapes:define-structure trigger-config common-lisp:nil
                                    ((trigger-type :target-type trigger-type
                                      :required common-lisp:t :member-name
                                      "triggerType")
                                     (trigger-properties :target-type
                                      trigger-properties :member-name
                                      "triggerProperties"))
                                    (:shape-name "TriggerConfig"))

(smithy/sdk/shapes:define-structure trigger-properties common-lisp:nil
                                    ((scheduled :target-type
                                      scheduled-trigger-properties :member-name
                                      "Scheduled"))
                                    (:shape-name "TriggerProperties"))

(smithy/sdk/shapes:define-enum trigger-type
    common-lisp:nil
  (:scheduled "Scheduled")
  (:event "Event")
  (:ondemand "OnDemand"))

(smithy/sdk/shapes:define-list trigger-type-list :member trigger-type)

(smithy/sdk/shapes:define-input unregister-connector-request common-lisp:nil
                                ((connector-label :target-type connector-label
                                  :required common-lisp:t :member-name
                                  "connectorLabel")
                                 (force-delete :target-type boolean
                                  :member-name "forceDelete"))
                                (:shape-name "UnregisterConnectorRequest"))

(smithy/sdk/shapes:define-output unregister-connector-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UnregisterConnectorResponse"))

(smithy/sdk/shapes:define-error unsupported-operation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "UnsupportedOperationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource-arn :target-type arn :required
                                  common-lisp:t :member-name "resourceArn"
                                  :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "tagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-output untag-resource-response common-lisp:nil
                                 common-lisp:nil
                                 (:shape-name "UntagResourceResponse"))

(smithy/sdk/shapes:define-input update-connector-profile-request
                                common-lisp:nil
                                ((connector-profile-name :target-type
                                  connector-profile-name :required
                                  common-lisp:t :member-name
                                  "connectorProfileName")
                                 (connection-mode :target-type connection-mode
                                  :required common-lisp:t :member-name
                                  "connectionMode")
                                 (connector-profile-config :target-type
                                  connector-profile-config :required
                                  common-lisp:t :member-name
                                  "connectorProfileConfig")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateConnectorProfileRequest"))

(smithy/sdk/shapes:define-output update-connector-profile-response
                                 common-lisp:nil
                                 ((connector-profile-arn :target-type
                                   connector-profile-arn :member-name
                                   "connectorProfileArn"))
                                 (:shape-name "UpdateConnectorProfileResponse"))

(smithy/sdk/shapes:define-input update-connector-registration-request
                                common-lisp:nil
                                ((connector-label :target-type connector-label
                                  :required common-lisp:t :member-name
                                  "connectorLabel")
                                 (description :target-type description
                                  :member-name "description")
                                 (connector-provisioning-config :target-type
                                  connector-provisioning-config :member-name
                                  "connectorProvisioningConfig")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name
                                 "UpdateConnectorRegistrationRequest"))

(smithy/sdk/shapes:define-output update-connector-registration-response
                                 common-lisp:nil
                                 ((connector-arn :target-type arn :member-name
                                   "connectorArn"))
                                 (:shape-name
                                  "UpdateConnectorRegistrationResponse"))

(smithy/sdk/shapes:define-input update-flow-request common-lisp:nil
                                ((flow-name :target-type flow-name :required
                                  common-lisp:t :member-name "flowName")
                                 (description :target-type flow-description
                                  :member-name "description")
                                 (trigger-config :target-type trigger-config
                                  :required common-lisp:t :member-name
                                  "triggerConfig")
                                 (source-flow-config :target-type
                                  source-flow-config :required common-lisp:t
                                  :member-name "sourceFlowConfig")
                                 (destination-flow-config-list :target-type
                                  destination-flow-config-list :required
                                  common-lisp:t :member-name
                                  "destinationFlowConfigList")
                                 (tasks :target-type tasks :required
                                  common-lisp:t :member-name "tasks")
                                 (metadata-catalog-config :target-type
                                  metadata-catalog-config :member-name
                                  "metadataCatalogConfig")
                                 (client-token :target-type client-token
                                  :member-name "clientToken"))
                                (:shape-name "UpdateFlowRequest"))

(smithy/sdk/shapes:define-output update-flow-response common-lisp:nil
                                 ((flow-status :target-type flow-status
                                   :member-name "flowStatus"))
                                 (:shape-name "UpdateFlowResponse"))

(smithy/sdk/shapes:define-type updated-by smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type upsolver-bucket-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure upsolver-destination-properties
                                    common-lisp:nil
                                    ((bucket-name :target-type
                                      upsolver-bucket-name :required
                                      common-lisp:t :member-name "bucketName")
                                     (bucket-prefix :target-type bucket-prefix
                                      :member-name "bucketPrefix")
                                     (s3output-format-config :target-type
                                      upsolver-s3output-format-config :required
                                      common-lisp:t :member-name
                                      "s3OutputFormatConfig"))
                                    (:shape-name
                                     "UpsolverDestinationProperties"))

(smithy/sdk/shapes:define-structure upsolver-metadata common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "UpsolverMetadata"))

(smithy/sdk/shapes:define-structure upsolver-s3output-format-config
                                    common-lisp:nil
                                    ((file-type :target-type file-type
                                      :member-name "fileType")
                                     (prefix-config :target-type prefix-config
                                      :required common-lisp:t :member-name
                                      "prefixConfig")
                                     (aggregation-config :target-type
                                      aggregation-config :member-name
                                      "aggregationConfig"))
                                    (:shape-name
                                     "UpsolverS3OutputFormatConfig"))

(smithy/sdk/shapes:define-type username smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error validation-exception common-lisp:nil
                                ((message :target-type error-message
                                  :member-name "message"))
                                (:shape-name "ValidationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum veeva-connector-operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:less-than "LESS_THAN")
  (:greater-than "GREATER_THAN")
  (:contains "CONTAINS")
  (:between "BETWEEN")
  (:less-than-or-equal-to "LESS_THAN_OR_EQUAL_TO")
  (:greater-than-or-equal-to "GREATER_THAN_OR_EQUAL_TO")
  (:equal-to "EQUAL_TO")
  (:not-equal-to "NOT_EQUAL_TO")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC")
  (:no-op "NO_OP"))

(smithy/sdk/shapes:define-structure veeva-connector-profile-credentials
                                    common-lisp:nil
                                    ((username :target-type username :required
                                      common-lisp:t :member-name "username")
                                     (password :target-type password :required
                                      common-lisp:t :member-name "password"))
                                    (:shape-name
                                     "VeevaConnectorProfileCredentials"))

(smithy/sdk/shapes:define-structure veeva-connector-profile-properties
                                    common-lisp:nil
                                    ((instance-url :target-type instance-url
                                      :required common-lisp:t :member-name
                                      "instanceUrl"))
                                    (:shape-name
                                     "VeevaConnectorProfileProperties"))

(smithy/sdk/shapes:define-structure veeva-metadata common-lisp:nil
                                    common-lisp:nil
                                    (:shape-name "VeevaMetadata"))

(smithy/sdk/shapes:define-structure veeva-source-properties common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object")
                                     (document-type :target-type document-type
                                      :member-name "documentType")
                                     (include-source-files :target-type boolean
                                      :member-name "includeSourceFiles")
                                     (include-renditions :target-type boolean
                                      :member-name "includeRenditions")
                                     (include-all-versions :target-type boolean
                                      :member-name "includeAllVersions"))
                                    (:shape-name "VeevaSourceProperties"))

(smithy/sdk/shapes:define-type warehouse smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type workgroup-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum write-operation-type
    common-lisp:nil
  (:insert "INSERT")
  (:upsert "UPSERT")
  (:update "UPDATE")
  (:delete "DELETE"))

(smithy/sdk/shapes:define-enum zendesk-connector-operator
    common-lisp:nil
  (:projection "PROJECTION")
  (:greater-than "GREATER_THAN")
  (:addition "ADDITION")
  (:multiplication "MULTIPLICATION")
  (:division "DIVISION")
  (:subtraction "SUBTRACTION")
  (:mask-all "MASK_ALL")
  (:mask-first-n "MASK_FIRST_N")
  (:mask-last-n "MASK_LAST_N")
  (:validate-non-null "VALIDATE_NON_NULL")
  (:validate-non-zero "VALIDATE_NON_ZERO")
  (:validate-non-negative "VALIDATE_NON_NEGATIVE")
  (:validate-numeric "VALIDATE_NUMERIC")
  (:no-op "NO_OP"))

(smithy/sdk/shapes:define-structure zendesk-connector-profile-credentials
                                    common-lisp:nil
                                    ((client-id :target-type client-id
                                      :required common-lisp:t :member-name
                                      "clientId")
                                     (client-secret :target-type client-secret
                                      :required common-lisp:t :member-name
                                      "clientSecret")
                                     (access-token :target-type access-token
                                      :member-name "accessToken")
                                     (o-auth-request :target-type
                                      connector-oauth-request :member-name
                                      "oAuthRequest"))
                                    (:shape-name
                                     "ZendeskConnectorProfileCredentials"))

(smithy/sdk/shapes:define-structure zendesk-connector-profile-properties
                                    common-lisp:nil
                                    ((instance-url :target-type instance-url
                                      :required common-lisp:t :member-name
                                      "instanceUrl"))
                                    (:shape-name
                                     "ZendeskConnectorProfileProperties"))

(smithy/sdk/shapes:define-structure zendesk-destination-properties
                                    common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object")
                                     (id-field-names :target-type
                                      id-field-name-list :member-name
                                      "idFieldNames")
                                     (error-handling-config :target-type
                                      error-handling-config :member-name
                                      "errorHandlingConfig")
                                     (write-operation-type :target-type
                                      write-operation-type :member-name
                                      "writeOperationType"))
                                    (:shape-name
                                     "ZendeskDestinationProperties"))

(smithy/sdk/shapes:define-structure zendesk-metadata common-lisp:nil
                                    ((o-auth-scopes :target-type
                                      oauth-scope-list :member-name
                                      "oAuthScopes"))
                                    (:shape-name "ZendeskMetadata"))

(smithy/sdk/shapes:define-structure zendesk-source-properties common-lisp:nil
                                    ((object :target-type object :required
                                      common-lisp:t :member-name "object"))
                                    (:shape-name "ZendeskSourceProperties"))

(smithy/sdk/operation:define-operation cancel-flow-executions :shape-name
                                       "CancelFlowExecutions" :input
                                       cancel-flow-executions-request :output
                                       cancel-flow-executions-response :errors
                                       (access-denied-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/cancel-flow-executions" :code 200)

(smithy/sdk/operation:define-operation create-connector-profile :shape-name
                                       "CreateConnectorProfile" :input
                                       create-connector-profile-request :output
                                       create-connector-profile-response
                                       :errors
                                       (conflict-exception
                                        connector-authentication-exception
                                        internal-server-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/create-connector-profile" :code 200)

(smithy/sdk/operation:define-operation create-flow :shape-name "CreateFlow"
                                       :input create-flow-request :output
                                       create-flow-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        connector-authentication-exception
                                        connector-server-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/create-flow" :code
                                       200)

(smithy/sdk/operation:define-operation delete-connector-profile :shape-name
                                       "DeleteConnectorProfile" :input
                                       delete-connector-profile-request :output
                                       delete-connector-profile-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/delete-connector-profile" :code 200)

(smithy/sdk/operation:define-operation delete-flow :shape-name "DeleteFlow"
                                       :input delete-flow-request :output
                                       delete-flow-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/delete-flow" :code
                                       200)

(smithy/sdk/operation:define-operation describe-connector :shape-name
                                       "DescribeConnector" :input
                                       describe-connector-request :output
                                       describe-connector-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/describe-connector" :code 200)

(smithy/sdk/operation:define-operation describe-connector-entity :shape-name
                                       "DescribeConnectorEntity" :input
                                       describe-connector-entity-request
                                       :output
                                       describe-connector-entity-response
                                       :errors
                                       (connector-authentication-exception
                                        connector-server-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/describe-connector-entity" :code 200)

(smithy/sdk/operation:define-operation describe-connector-profiles :shape-name
                                       "DescribeConnectorProfiles" :input
                                       describe-connector-profiles-request
                                       :output
                                       describe-connector-profiles-response
                                       :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/describe-connector-profiles" :code 200)

(smithy/sdk/operation:define-operation describe-connectors :shape-name
                                       "DescribeConnectors" :input
                                       describe-connectors-request :output
                                       describe-connectors-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/describe-connectors" :code 200)

(smithy/sdk/operation:define-operation describe-flow :shape-name "DescribeFlow"
                                       :input describe-flow-request :output
                                       describe-flow-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri "/describe-flow"
                                       :code 200)

(smithy/sdk/operation:define-operation describe-flow-execution-records
                                       :shape-name
                                       "DescribeFlowExecutionRecords" :input
                                       describe-flow-execution-records-request
                                       :output
                                       describe-flow-execution-records-response
                                       :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/describe-flow-execution-records" :code
                                       200)

(smithy/sdk/operation:define-operation list-connector-entities :shape-name
                                       "ListConnectorEntities" :input
                                       list-connector-entities-request :output
                                       list-connector-entities-response :errors
                                       (connector-authentication-exception
                                        connector-server-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/list-connector-entities" :code 200)

(smithy/sdk/operation:define-operation list-connectors :shape-name
                                       "ListConnectors" :input
                                       list-connectors-request :output
                                       list-connectors-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri "/list-connectors"
                                       :code 200)

(smithy/sdk/operation:define-operation list-flows :shape-name "ListFlows"
                                       :input list-flows-request :output
                                       list-flows-response :errors
                                       (internal-server-exception
                                        validation-exception)
                                       :method "POST" :uri "/list-flows" :code
                                       200)

(smithy/sdk/operation:define-operation list-tags-for-resource :shape-name
                                       "ListTagsForResource" :input
                                       list-tags-for-resource-request :output
                                       list-tags-for-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "GET" :uri "/tags/{resourceArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation register-connector :shape-name
                                       "RegisterConnector" :input
                                       register-connector-request :output
                                       register-connector-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        connector-authentication-exception
                                        connector-server-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/register-connector" :code 200)

(smithy/sdk/operation:define-operation reset-connector-metadata-cache
                                       :shape-name
                                       "ResetConnectorMetadataCache" :input
                                       reset-connector-metadata-cache-request
                                       :output
                                       reset-connector-metadata-cache-response
                                       :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/reset-connector-metadata-cache" :code
                                       200)

(smithy/sdk/operation:define-operation start-flow :shape-name "StartFlow"
                                       :input start-flow-request :output
                                       start-flow-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception)
                                       :method "POST" :uri "/start-flow" :code
                                       200)

(smithy/sdk/operation:define-operation stop-flow :shape-name "StopFlow" :input
                                       stop-flow-request :output
                                       stop-flow-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        unsupported-operation-exception)
                                       :method "POST" :uri "/stop-flow" :code
                                       200)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       tag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation unregister-connector :shape-name
                                       "UnregisterConnector" :input
                                       unregister-connector-request :output
                                       unregister-connector-response :errors
                                       (conflict-exception
                                        internal-server-exception
                                        resource-not-found-exception)
                                       :method "POST" :uri
                                       "/unregister-connector" :code 200)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       untag-resource-response :errors
                                       (internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "DELETE" :uri
                                       "/tags/{resourceArn}" :code 200)

(smithy/sdk/operation:define-operation update-connector-profile :shape-name
                                       "UpdateConnectorProfile" :input
                                       update-connector-profile-request :output
                                       update-connector-profile-response
                                       :errors
                                       (conflict-exception
                                        connector-authentication-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/update-connector-profile" :code 200)

(smithy/sdk/operation:define-operation update-connector-registration
                                       :shape-name
                                       "UpdateConnectorRegistration" :input
                                       update-connector-registration-request
                                       :output
                                       update-connector-registration-response
                                       :errors
                                       (access-denied-exception
                                        conflict-exception
                                        connector-authentication-exception
                                        connector-server-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        throttling-exception
                                        validation-exception)
                                       :method "POST" :uri
                                       "/update-connector-registration" :code
                                       200)

(smithy/sdk/operation:define-operation update-flow :shape-name "UpdateFlow"
                                       :input update-flow-request :output
                                       update-flow-response :errors
                                       (access-denied-exception
                                        conflict-exception
                                        connector-authentication-exception
                                        connector-server-exception
                                        internal-server-exception
                                        resource-not-found-exception
                                        service-quota-exceeded-exception
                                        validation-exception)
                                       :method "POST" :uri "/update-flow" :code
                                       200)
