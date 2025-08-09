(uiop/package:define-package #:pira/lambda (:use)
                             (:export #:awsgir-api-service #:account-limit
                              #:account-usage #:action
                              #:add-layer-version-permission #:add-permission
                              #:additional-version #:additional-version-weights
                              #:alias #:alias-configuration #:alias-list
                              #:alias-routing-configuration #:allow-credentials
                              #:allow-methods-list #:allow-origins-list
                              #:allowed-publishers
                              #:amazon-managed-kafka-event-source-config
                              #:application-log-level #:architecture
                              #:architectures-list #:arn #:batch-size
                              #:bisect-batch-on-function-error #:blob
                              #:blob-stream #:boolean #:code-signing-config
                              #:code-signing-config-arn
                              #:code-signing-config-id
                              #:code-signing-config-list
                              #:code-signing-config-resource
                              #:code-signing-policies #:code-signing-policy
                              #:collection-name #:compatible-architectures
                              #:compatible-runtimes #:concurrency #:cors
                              #:create-alias #:create-code-signing-config
                              #:create-event-source-mapping #:create-function
                              #:create-function-url-config #:database-name
                              #:date #:dead-letter-config #:delete-alias
                              #:delete-code-signing-config
                              #:delete-event-source-mapping #:delete-function
                              #:delete-function-code-signing-config
                              #:delete-function-concurrency
                              #:delete-function-event-invoke-config
                              #:delete-function-url-config
                              #:delete-layer-version
                              #:delete-provisioned-concurrency-config
                              #:description #:destination-arn
                              #:destination-config
                              #:document-dbevent-source-config #:enabled
                              #:end-point-type #:endpoint #:endpoint-lists
                              #:endpoints #:environment #:environment-error
                              #:environment-response
                              #:environment-variable-name
                              #:environment-variable-value
                              #:environment-variables #:ephemeral-storage
                              #:ephemeral-storage-size #:event-source-mapping
                              #:event-source-mapping-arn
                              #:event-source-mapping-configuration
                              #:event-source-mapping-metric
                              #:event-source-mapping-metric-list
                              #:event-source-mapping-metrics-config
                              #:event-source-mappings-list
                              #:event-source-position #:event-source-token
                              #:file-system-arn #:file-system-config
                              #:file-system-config-list #:filter
                              #:filter-criteria #:filter-criteria-error
                              #:filter-criteria-error-code
                              #:filter-criteria-error-message #:filter-list
                              #:full-document #:function #:function-alias
                              #:function-arn #:function-arn-list
                              #:function-code #:function-code-location
                              #:function-configuration
                              #:function-event-invoke-config
                              #:function-event-invoke-config-list
                              #:function-list #:function-name
                              #:function-response-type
                              #:function-response-type-list #:function-url
                              #:function-url-auth-type #:function-url-config
                              #:function-url-config-list
                              #:function-url-qualifier #:function-version
                              #:function-version-resource
                              #:get-account-settings #:get-alias
                              #:get-code-signing-config
                              #:get-event-source-mapping #:get-function
                              #:get-function-code-signing-config
                              #:get-function-concurrency
                              #:get-function-configuration
                              #:get-function-event-invoke-config
                              #:get-function-recursion-config
                              #:get-function-url-config #:get-layer-version
                              #:get-layer-version-by-arn
                              #:get-layer-version-policy
                              #:get-layer-version-response #:get-policy
                              #:get-provisioned-concurrency-config
                              #:get-runtime-management-config #:handler
                              #:header #:headers-list #:http-status
                              #:image-config #:image-config-error
                              #:image-config-response #:integer
                              #:invocation-type #:invoke #:invoke-async
                              #:invoke-mode #:invoke-response-stream-update
                              #:invoke-with-response-stream
                              #:invoke-with-response-stream-complete-event
                              #:invoke-with-response-stream-response-event
                              #:kmskey-arn
                              #:kafka-schema-registry-access-config
                              #:kafka-schema-registry-access-config-list
                              #:kafka-schema-registry-auth-type
                              #:kafka-schema-registry-config
                              #:kafka-schema-validation-attribute
                              #:kafka-schema-validation-config
                              #:kafka-schema-validation-config-list
                              #:last-update-status #:last-update-status-reason
                              #:last-update-status-reason-code #:layer
                              #:layer-arn #:layer-list #:layer-name
                              #:layer-permission-allowed-action
                              #:layer-permission-allowed-principal
                              #:layer-resource #:layer-version
                              #:layer-version-arn #:layer-version-content-input
                              #:layer-version-content-output
                              #:layer-version-number #:layer-versions-list
                              #:layer-versions-list-item #:layers-list
                              #:layers-list-item #:layers-reference-list
                              #:license-info #:list-aliases
                              #:list-code-signing-configs
                              #:list-event-source-mappings
                              #:list-function-event-invoke-configs
                              #:list-function-url-configs #:list-functions
                              #:list-functions-by-code-signing-config
                              #:list-layer-versions #:list-layers
                              #:list-provisioned-concurrency-configs
                              #:list-tags #:list-versions-by-function
                              #:local-mount-path #:log-format #:log-group
                              #:log-type #:logging-config #:long
                              #:master-region #:max-age
                              #:max-function-event-invoke-config-list-items
                              #:max-items #:max-layer-list-items
                              #:max-list-items
                              #:max-provisioned-concurrency-config-list-items
                              #:maximum-batching-window-in-seconds
                              #:maximum-concurrency
                              #:maximum-event-age-in-seconds
                              #:maximum-number-of-pollers
                              #:maximum-record-age-in-seconds
                              #:maximum-retry-attempts
                              #:maximum-retry-attempts-event-source-mapping
                              #:memory-size #:method
                              #:minimum-number-of-pollers
                              #:name-spaced-function-arn
                              #:namespaced-function-name
                              #:namespaced-statement-id #:non-negative-integer
                              #:nullable-boolean #:on-failure #:on-success
                              #:organization-id #:origin #:package-type
                              #:parallelization-factor #:pattern #:permission
                              #:positive-integer #:principal #:principal-org-id
                              #:provisioned-concurrency-config
                              #:provisioned-concurrency-config-list
                              #:provisioned-concurrency-config-list-item
                              #:provisioned-concurrency-status-enum
                              #:provisioned-poller-config
                              #:publish-layer-version #:publish-version
                              #:put-function-code-signing-config
                              #:put-function-concurrency
                              #:put-function-event-invoke-config
                              #:put-function-recursion-config
                              #:put-provisioned-concurrency-config
                              #:put-runtime-management-config #:qualifier
                              #:queue #:queues #:recursive-loop
                              #:remove-layer-version-permission
                              #:remove-permission
                              #:reserved-concurrent-executions #:resource-arn
                              #:resource-policy
                              #:response-streaming-invocation-type #:role-arn
                              #:runtime #:runtime-version-arn
                              #:runtime-version-config #:runtime-version-error
                              #:s3bucket #:s3key #:s3object-version
                              #:scaling-config
                              #:schema-registry-event-record-format
                              #:schema-registry-uri #:security-group-id
                              #:security-group-ids #:self-managed-event-source
                              #:self-managed-kafka-event-source-config
                              #:sensitive-string #:signing-profile-version-arns
                              #:snap-start #:snap-start-apply-on
                              #:snap-start-optimization-status
                              #:snap-start-response
                              #:source-access-configuration
                              #:source-access-configurations
                              #:source-access-type #:source-owner #:state
                              #:state-reason #:state-reason-code #:statement-id
                              #:string #:string-list #:subnet-id #:subnet-ids
                              #:system-log-level #:tag-key #:tag-key-list
                              #:tag-resource #:tag-value #:taggable-resource
                              #:tags #:tags-error #:tags-error-code
                              #:tags-error-message #:throttle-reason #:timeout
                              #:timestamp #:topic #:topics #:tracing-config
                              #:tracing-config-response #:tracing-mode
                              #:tumbling-window-in-seconds #:uri
                              #:unqualified-function-name
                              #:unreserved-concurrent-executions
                              #:untag-resource #:update-alias
                              #:update-code-signing-config
                              #:update-event-source-mapping
                              #:update-function-code
                              #:update-function-configuration
                              #:update-function-event-invoke-config
                              #:update-function-url-config #:update-runtime-on
                              #:version #:vpc-config #:vpc-config-response
                              #:vpc-id #:weight #:working-directory))
(common-lisp:in-package #:pira/lambda)

(smithy/sdk/service:define-service awsgir-api-service :shape-name
                                   "AWSGirApiService" :version "2015-03-31"
                                   :title "AWS Lambda" :traits
                                   '(("aws.api#service" ("sdkId" . "Lambda")
                                      ("arnNamespace" . "lambda")
                                      ("cloudFormationName" . "Lambda")
                                      ("cloudTrailEventSource"
                                       . "lambda.amazonaws.com")
                                      ("endpointPrefix" . "lambda"))
                                     ("aws.api#tagEnabled"
                                      ("disableDefaultOperations"
                                       . common-lisp:t))
                                     ("aws.auth#sigv4" ("name" . "lambda"))
                                     ("aws.iam#defineConditionKeys"
                                      ("lambda:VpcIds" ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the ID of the VPC configured for the AWS Lambda function")
                                       ("relativeDocumentation"
                                        . "lambda-api-permissions-ref.html")
                                       ("required" . common-lisp:t))
                                      ("lambda:SubnetIds"
                                       ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by the ID of subnets configured for the AWS Lambda function")
                                       ("relativeDocumentation"
                                        . "lambda-api-permissions-ref.html")
                                       ("required" . common-lisp:t))
                                      ("lambda:Layer"
                                       ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by the ARN of a version of an AWS Lambda layer")
                                       ("relativeDocumentation"
                                        . "lambda-api-permissions-ref.html")
                                       ("required" . common-lisp:t))
                                      ("lambda:EventSourceToken"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the ID from a non-AWS event source configured for the AWS Lambda function")
                                       ("relativeDocumentation"
                                        . "lambda-api-permissions-ref.html")
                                       ("required" . common-lisp:t))
                                      ("lambda:FunctionUrlAuthType"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by authorization type specified in request. Available during CreateFunctionUrlConfig, UpdateFunctionUrlConfig, DeleteFunctionUrlConfig, GetFunctionUrlConfig, ListFunctionUrlConfig, AddPermission and RemovePermission operations")
                                       ("relativeDocumentation"
                                        . "lambda-api-permissions-ref.html")
                                       ("required" . common-lisp:t))
                                      ("aws:RequestTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the tags that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-requesttag")
                                       ("required" . common-lisp:t))
                                      ("aws:ResourceTag/${TagKey}"
                                       ("type" . "String")
                                       ("documentation"
                                        . "Filters access by the tags associated with the resource")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-resourcetag")
                                       ("required" . common-lisp:t))
                                      ("lambda:CodeSigningConfigArn"
                                       ("type" . "ARN")
                                       ("documentation"
                                        . "Filters access by the ARN of an AWS Lambda code signing config")
                                       ("relativeDocumentation"
                                        . "lambda-api-permissions-ref.html")
                                       ("required" . common-lisp:t))
                                      ("lambda:FunctionArn" ("type" . "ARN")
                                       ("documentation"
                                        . "Filters access by the ARN of an AWS Lambda function")
                                       ("relativeDocumentation"
                                        . "lambda-api-permissions-ref.html")
                                       ("required" . common-lisp:t))
                                      ("aws:TagKeys" ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by the tag keys that are passed in the request")
                                       ("externalDocumentation"
                                        . "${DocHomeURL}/IAM/latest/UserGuide/reference_policies_condition-keys.html#condition-keys-tagkeys")
                                       ("required" . common-lisp:t))
                                      ("lambda:SourceFunctionArn"
                                       ("type" . "ARN")
                                       ("documentation"
                                        . "Filters access by the ARN of the AWS Lambda function from which the request originated")
                                       ("relativeDocumentation"
                                        . "lambda-api-permissions-ref.html")
                                       ("required" . common-lisp:t))
                                      ("lambda:SecurityGroupIds"
                                       ("type" . "ArrayOfString")
                                       ("documentation"
                                        . "Filters access by the ID of security groups configured for the AWS Lambda function")
                                       ("relativeDocumentation"
                                        . "lambda-api-permissions-ref.html")
                                       ("required" . common-lisp:t))
                                      ("lambda:Principal" ("type" . "String")
                                       ("documentation"
                                        . "Filters access by restricting the AWS service or account that can invoke a function")
                                       ("relativeDocumentation"
                                        . "lambda-api-permissions-ref.html")
                                       ("required" . common-lisp:t)))
                                     ("aws.iam#disableConditionKeyInference")
                                     ("aws.iam#supportedPrincipalTypes"
                                      . #("Root" "IAMUser" "IAMRole"
                                          "FederatedUser"))
                                     ("aws.protocols#restJson1")))

(smithy/sdk/shapes:define-structure account-limit common-lisp:nil
                                    ((total-code-size :target-type long
                                      :member-name "TotalCodeSize")
                                     (code-size-unzipped :target-type long
                                      :member-name "CodeSizeUnzipped")
                                     (code-size-zipped :target-type long
                                      :member-name "CodeSizeZipped")
                                     (concurrent-executions :target-type
                                      integer :member-name
                                      "ConcurrentExecutions")
                                     (unreserved-concurrent-executions
                                      :target-type
                                      unreserved-concurrent-executions
                                      :member-name
                                      "UnreservedConcurrentExecutions"))
                                    (:shape-name "AccountLimit"))

(smithy/sdk/shapes:define-structure account-usage common-lisp:nil
                                    ((total-code-size :target-type long
                                      :member-name "TotalCodeSize")
                                     (function-count :target-type long
                                      :member-name "FunctionCount"))
                                    (:shape-name "AccountUsage"))

(smithy/sdk/shapes:define-type action smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input add-layer-version-permission-request
                                common-lisp:nil
                                ((layer-name :target-type layer-name :required
                                  common-lisp:t :member-name "LayerName"
                                  :http-label common-lisp:t)
                                 (version-number :target-type
                                  layer-version-number :required common-lisp:t
                                  :member-name "VersionNumber" :http-label
                                  common-lisp:t)
                                 (statement-id :target-type statement-id
                                  :required common-lisp:t :member-name
                                  "StatementId")
                                 (action :target-type
                                  layer-permission-allowed-action :required
                                  common-lisp:t :member-name "Action")
                                 (principal :target-type
                                  layer-permission-allowed-principal :required
                                  common-lisp:t :member-name "Principal")
                                 (organization-id :target-type organization-id
                                  :member-name "OrganizationId")
                                 (revision-id :target-type string :member-name
                                  "RevisionId" :http-query "RevisionId"))
                                (:shape-name
                                 "AddLayerVersionPermissionRequest"))

(smithy/sdk/shapes:define-output add-layer-version-permission-response
                                 common-lisp:nil
                                 ((statement :target-type string :member-name
                                   "Statement")
                                  (revision-id :target-type string :member-name
                                   "RevisionId"))
                                 (:shape-name
                                  "AddLayerVersionPermissionResponse"))

(smithy/sdk/shapes:define-input add-permission-request common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (statement-id :target-type statement-id
                                  :required common-lisp:t :member-name
                                  "StatementId")
                                 (action :target-type action :required
                                  common-lisp:t :member-name "Action")
                                 (principal :target-type principal :required
                                  common-lisp:t :member-name "Principal")
                                 (source-arn :target-type arn :member-name
                                  "SourceArn")
                                 (source-account :target-type source-owner
                                  :member-name "SourceAccount")
                                 (event-source-token :target-type
                                  event-source-token :member-name
                                  "EventSourceToken")
                                 (qualifier :target-type qualifier :member-name
                                  "Qualifier" :http-query "Qualifier")
                                 (revision-id :target-type string :member-name
                                  "RevisionId")
                                 (principal-org-id :target-type
                                  principal-org-id :member-name
                                  "PrincipalOrgID")
                                 (function-url-auth-type :target-type
                                  function-url-auth-type :member-name
                                  "FunctionUrlAuthType"))
                                (:shape-name "AddPermissionRequest"))

(smithy/sdk/shapes:define-output add-permission-response common-lisp:nil
                                 ((statement :target-type string :member-name
                                   "Statement"))
                                 (:shape-name "AddPermissionResponse"))

(smithy/sdk/shapes:define-type additional-version
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map additional-version-weights :key
                              additional-version :value weight)

(smithy/sdk/shapes:define-type alias smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure alias-configuration common-lisp:nil
                                    ((alias-arn :target-type function-arn
                                      :member-name "AliasArn")
                                     (name :target-type alias :member-name
                                      "Name")
                                     (function-version :target-type version
                                      :member-name "FunctionVersion")
                                     (description :target-type description
                                      :member-name "Description")
                                     (routing-config :target-type
                                      alias-routing-configuration :member-name
                                      "RoutingConfig")
                                     (revision-id :target-type string
                                      :member-name "RevisionId"))
                                    (:shape-name "AliasConfiguration"))

(smithy/sdk/shapes:define-list alias-list :member alias-configuration)

(smithy/sdk/shapes:define-structure alias-routing-configuration common-lisp:nil
                                    ((additional-version-weights :target-type
                                      additional-version-weights :member-name
                                      "AdditionalVersionWeights"))
                                    (:shape-name "AliasRoutingConfiguration"))

(smithy/sdk/shapes:define-type allow-credentials
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-list allow-methods-list :member method)

(smithy/sdk/shapes:define-list allow-origins-list :member origin)

(smithy/sdk/shapes:define-structure allowed-publishers common-lisp:nil
                                    ((signing-profile-version-arns :target-type
                                      signing-profile-version-arns :required
                                      common-lisp:t :member-name
                                      "SigningProfileVersionArns"))
                                    (:shape-name "AllowedPublishers"))

(smithy/sdk/shapes:define-structure amazon-managed-kafka-event-source-config
                                    common-lisp:nil
                                    ((consumer-group-id :target-type uri
                                      :member-name "ConsumerGroupId")
                                     (schema-registry-config :target-type
                                      kafka-schema-registry-config :member-name
                                      "SchemaRegistryConfig"))
                                    (:shape-name
                                     "AmazonManagedKafkaEventSourceConfig"))

(smithy/sdk/shapes:define-enum application-log-level
    common-lisp:nil
  (:trace "TRACE")
  (:debug "DEBUG")
  (:info "INFO")
  (:warn "WARN")
  (:error "ERROR")
  (:fatal "FATAL"))

(smithy/sdk/shapes:define-enum architecture
    common-lisp:nil
  (:x86-64 "x86_64")
  (:arm64 "arm64"))

(smithy/sdk/shapes:define-list architectures-list :member architecture)

(smithy/sdk/shapes:define-type arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type batch-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type bisect-batch-on-function-error
                               smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-type blob smithy/sdk/smithy-types:blob)

(smithy/sdk/shapes:define-type blob-stream smithy/sdk/smithy-types:blob
                               :streaming common-lisp:t)

(smithy/sdk/shapes:define-type boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure code-signing-config common-lisp:nil
                                    ((code-signing-config-id :target-type
                                      code-signing-config-id :required
                                      common-lisp:t :member-name
                                      "CodeSigningConfigId")
                                     (code-signing-config-arn :target-type
                                      code-signing-config-arn :required
                                      common-lisp:t :member-name
                                      "CodeSigningConfigArn")
                                     (description :target-type description
                                      :member-name "Description")
                                     (allowed-publishers :target-type
                                      allowed-publishers :required
                                      common-lisp:t :member-name
                                      "AllowedPublishers")
                                     (code-signing-policies :target-type
                                      code-signing-policies :required
                                      common-lisp:t :member-name
                                      "CodeSigningPolicies")
                                     (last-modified :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModified"))
                                    (:shape-name "CodeSigningConfig"))

(smithy/sdk/shapes:define-type code-signing-config-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type code-signing-config-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list code-signing-config-list :member
                               code-signing-config)

(smithy/sdk/shapes:define-error code-signing-config-not-found-exception
                                common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "CodeSigningConfigNotFoundException")
                                (:error-code 404))

common-lisp:nil

(smithy/sdk/shapes:define-structure code-signing-policies common-lisp:nil
                                    ((untrusted-artifact-on-deployment
                                      :target-type code-signing-policy
                                      :member-name
                                      "UntrustedArtifactOnDeployment"))
                                    (:shape-name "CodeSigningPolicies"))

(smithy/sdk/shapes:define-enum code-signing-policy
    common-lisp:nil
  (:warn "Warn")
  (:enforce "Enforce"))

(smithy/sdk/shapes:define-error code-storage-exceeded-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "CodeStorageExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error code-verification-failed-exception
                                common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "CodeVerificationFailedException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type collection-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list compatible-architectures :member architecture)

(smithy/sdk/shapes:define-list compatible-runtimes :member runtime)

(smithy/sdk/shapes:define-structure concurrency common-lisp:nil
                                    ((reserved-concurrent-executions
                                      :target-type
                                      reserved-concurrent-executions
                                      :member-name
                                      "ReservedConcurrentExecutions"))
                                    (:shape-name "Concurrency"))

(smithy/sdk/shapes:define-structure cors common-lisp:nil
                                    ((allow-credentials :target-type
                                      allow-credentials :member-name
                                      "AllowCredentials")
                                     (allow-headers :target-type headers-list
                                      :member-name "AllowHeaders")
                                     (allow-methods :target-type
                                      allow-methods-list :member-name
                                      "AllowMethods")
                                     (allow-origins :target-type
                                      allow-origins-list :member-name
                                      "AllowOrigins")
                                     (expose-headers :target-type headers-list
                                      :member-name "ExposeHeaders")
                                     (max-age :target-type max-age :member-name
                                      "MaxAge"))
                                    (:shape-name "Cors"))

(smithy/sdk/shapes:define-input create-alias-request common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (name :target-type alias :required
                                  common-lisp:t :member-name "Name")
                                 (function-version :target-type version
                                  :required common-lisp:t :member-name
                                  "FunctionVersion")
                                 (description :target-type description
                                  :member-name "Description")
                                 (routing-config :target-type
                                  alias-routing-configuration :member-name
                                  "RoutingConfig"))
                                (:shape-name "CreateAliasRequest"))

(smithy/sdk/shapes:define-input create-code-signing-config-request
                                common-lisp:nil
                                ((description :target-type description
                                  :member-name "Description")
                                 (allowed-publishers :target-type
                                  allowed-publishers :required common-lisp:t
                                  :member-name "AllowedPublishers")
                                 (code-signing-policies :target-type
                                  code-signing-policies :member-name
                                  "CodeSigningPolicies")
                                 (tags :target-type tags :member-name "Tags"))
                                (:shape-name "CreateCodeSigningConfigRequest"))

(smithy/sdk/shapes:define-output create-code-signing-config-response
                                 common-lisp:nil
                                 ((code-signing-config :target-type
                                   code-signing-config :required common-lisp:t
                                   :member-name "CodeSigningConfig"))
                                 (:shape-name
                                  "CreateCodeSigningConfigResponse"))

(smithy/sdk/shapes:define-input create-event-source-mapping-request
                                common-lisp:nil
                                ((event-source-arn :target-type arn
                                  :member-name "EventSourceArn")
                                 (function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName")
                                 (enabled :target-type enabled :member-name
                                  "Enabled")
                                 (batch-size :target-type batch-size
                                  :member-name "BatchSize")
                                 (filter-criteria :target-type filter-criteria
                                  :member-name "FilterCriteria")
                                 (maximum-batching-window-in-seconds
                                  :target-type
                                  maximum-batching-window-in-seconds
                                  :member-name
                                  "MaximumBatchingWindowInSeconds")
                                 (parallelization-factor :target-type
                                  parallelization-factor :member-name
                                  "ParallelizationFactor")
                                 (starting-position :target-type
                                  event-source-position :member-name
                                  "StartingPosition")
                                 (starting-position-timestamp :target-type date
                                  :member-name "StartingPositionTimestamp")
                                 (destination-config :target-type
                                  destination-config :member-name
                                  "DestinationConfig")
                                 (maximum-record-age-in-seconds :target-type
                                  maximum-record-age-in-seconds :member-name
                                  "MaximumRecordAgeInSeconds")
                                 (bisect-batch-on-function-error :target-type
                                  bisect-batch-on-function-error :member-name
                                  "BisectBatchOnFunctionError")
                                 (maximum-retry-attempts :target-type
                                  maximum-retry-attempts-event-source-mapping
                                  :member-name "MaximumRetryAttempts")
                                 (tags :target-type tags :member-name "Tags")
                                 (tumbling-window-in-seconds :target-type
                                  tumbling-window-in-seconds :member-name
                                  "TumblingWindowInSeconds")
                                 (topics :target-type topics :member-name
                                  "Topics")
                                 (queues :target-type queues :member-name
                                  "Queues")
                                 (source-access-configurations :target-type
                                  source-access-configurations :member-name
                                  "SourceAccessConfigurations")
                                 (self-managed-event-source :target-type
                                  self-managed-event-source :member-name
                                  "SelfManagedEventSource")
                                 (function-response-types :target-type
                                  function-response-type-list :member-name
                                  "FunctionResponseTypes")
                                 (amazon-managed-kafka-event-source-config
                                  :target-type
                                  amazon-managed-kafka-event-source-config
                                  :member-name
                                  "AmazonManagedKafkaEventSourceConfig")
                                 (self-managed-kafka-event-source-config
                                  :target-type
                                  self-managed-kafka-event-source-config
                                  :member-name
                                  "SelfManagedKafkaEventSourceConfig")
                                 (scaling-config :target-type scaling-config
                                  :member-name "ScalingConfig")
                                 (document-dbevent-source-config :target-type
                                  document-dbevent-source-config :member-name
                                  "DocumentDBEventSourceConfig")
                                 (kmskey-arn :target-type kmskey-arn
                                  :member-name "KMSKeyArn")
                                 (metrics-config :target-type
                                  event-source-mapping-metrics-config
                                  :member-name "MetricsConfig")
                                 (provisioned-poller-config :target-type
                                  provisioned-poller-config :member-name
                                  "ProvisionedPollerConfig"))
                                (:shape-name "CreateEventSourceMappingRequest"))

(smithy/sdk/shapes:define-input create-function-request common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName")
                                 (runtime :target-type runtime :member-name
                                  "Runtime")
                                 (role :target-type role-arn :required
                                  common-lisp:t :member-name "Role")
                                 (handler :target-type handler :member-name
                                  "Handler")
                                 (code :target-type function-code :required
                                  common-lisp:t :member-name "Code")
                                 (description :target-type description
                                  :member-name "Description")
                                 (timeout :target-type timeout :member-name
                                  "Timeout")
                                 (memory-size :target-type memory-size
                                  :member-name "MemorySize")
                                 (publish :target-type boolean :member-name
                                  "Publish")
                                 (vpc-config :target-type vpc-config
                                  :member-name "VpcConfig")
                                 (package-type :target-type package-type
                                  :member-name "PackageType")
                                 (dead-letter-config :target-type
                                  dead-letter-config :member-name
                                  "DeadLetterConfig")
                                 (environment :target-type environment
                                  :member-name "Environment")
                                 (kmskey-arn :target-type kmskey-arn
                                  :member-name "KMSKeyArn")
                                 (tracing-config :target-type tracing-config
                                  :member-name "TracingConfig")
                                 (tags :target-type tags :member-name "Tags")
                                 (layers :target-type layer-list :member-name
                                  "Layers")
                                 (file-system-configs :target-type
                                  file-system-config-list :member-name
                                  "FileSystemConfigs")
                                 (image-config :target-type image-config
                                  :member-name "ImageConfig")
                                 (code-signing-config-arn :target-type
                                  code-signing-config-arn :member-name
                                  "CodeSigningConfigArn")
                                 (architectures :target-type architectures-list
                                  :member-name "Architectures")
                                 (ephemeral-storage :target-type
                                  ephemeral-storage :member-name
                                  "EphemeralStorage")
                                 (snap-start :target-type snap-start
                                  :member-name "SnapStart")
                                 (logging-config :target-type logging-config
                                  :member-name "LoggingConfig"))
                                (:shape-name "CreateFunctionRequest"))

(smithy/sdk/shapes:define-input create-function-url-config-request
                                common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (qualifier :target-type function-url-qualifier
                                  :member-name "Qualifier" :http-query
                                  "Qualifier")
                                 (auth-type :target-type function-url-auth-type
                                  :required common-lisp:t :member-name
                                  "AuthType")
                                 (cors :target-type cors :member-name "Cors")
                                 (invoke-mode :target-type invoke-mode
                                  :member-name "InvokeMode"))
                                (:shape-name "CreateFunctionUrlConfigRequest"))

(smithy/sdk/shapes:define-output create-function-url-config-response
                                 common-lisp:nil
                                 ((function-url :target-type function-url
                                   :required common-lisp:t :member-name
                                   "FunctionUrl")
                                  (function-arn :target-type function-arn
                                   :required common-lisp:t :member-name
                                   "FunctionArn")
                                  (auth-type :target-type
                                   function-url-auth-type :required
                                   common-lisp:t :member-name "AuthType")
                                  (cors :target-type cors :member-name "Cors")
                                  (creation-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "CreationTime")
                                  (invoke-mode :target-type invoke-mode
                                   :member-name "InvokeMode"))
                                 (:shape-name
                                  "CreateFunctionUrlConfigResponse"))

(smithy/sdk/shapes:define-type database-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type date smithy/sdk/smithy-types:timestamp)

(smithy/sdk/shapes:define-structure dead-letter-config common-lisp:nil
                                    ((target-arn :target-type resource-arn
                                      :member-name "TargetArn"))
                                    (:shape-name "DeadLetterConfig"))

(smithy/sdk/shapes:define-input delete-alias-request common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (name :target-type alias :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteAliasRequest"))

(smithy/sdk/shapes:define-input delete-code-signing-config-request
                                common-lisp:nil
                                ((code-signing-config-arn :target-type
                                  code-signing-config-arn :required
                                  common-lisp:t :member-name
                                  "CodeSigningConfigArn" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteCodeSigningConfigRequest"))

(smithy/sdk/shapes:define-output delete-code-signing-config-response
                                 common-lisp:nil common-lisp:nil
                                 (:shape-name
                                  "DeleteCodeSigningConfigResponse"))

(smithy/sdk/shapes:define-input delete-event-source-mapping-request
                                common-lisp:nil
                                ((uuid :target-type string :required
                                  common-lisp:t :member-name "UUID" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteEventSourceMappingRequest"))

(smithy/sdk/shapes:define-input delete-function-code-signing-config-request
                                common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteFunctionCodeSigningConfigRequest"))

(smithy/sdk/shapes:define-input delete-function-concurrency-request
                                common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t))
                                (:shape-name
                                 "DeleteFunctionConcurrencyRequest"))

(smithy/sdk/shapes:define-input delete-function-event-invoke-config-request
                                common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (qualifier :target-type qualifier :member-name
                                  "Qualifier" :http-query "Qualifier"))
                                (:shape-name
                                 "DeleteFunctionEventInvokeConfigRequest"))

(smithy/sdk/shapes:define-input delete-function-request common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (qualifier :target-type qualifier :member-name
                                  "Qualifier" :http-query "Qualifier"))
                                (:shape-name "DeleteFunctionRequest"))

(smithy/sdk/shapes:define-input delete-function-url-config-request
                                common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (qualifier :target-type function-url-qualifier
                                  :member-name "Qualifier" :http-query
                                  "Qualifier"))
                                (:shape-name "DeleteFunctionUrlConfigRequest"))

(smithy/sdk/shapes:define-input delete-layer-version-request common-lisp:nil
                                ((layer-name :target-type layer-name :required
                                  common-lisp:t :member-name "LayerName"
                                  :http-label common-lisp:t)
                                 (version-number :target-type
                                  layer-version-number :required common-lisp:t
                                  :member-name "VersionNumber" :http-label
                                  common-lisp:t))
                                (:shape-name "DeleteLayerVersionRequest"))

(smithy/sdk/shapes:define-input delete-provisioned-concurrency-config-request
                                common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (qualifier :target-type qualifier :required
                                  common-lisp:t :member-name "Qualifier"
                                  :http-query "Qualifier"))
                                (:shape-name
                                 "DeleteProvisionedConcurrencyConfigRequest"))

(smithy/sdk/shapes:define-type description smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type destination-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure destination-config common-lisp:nil
                                    ((on-success :target-type on-success
                                      :member-name "OnSuccess")
                                     (on-failure :target-type on-failure
                                      :member-name "OnFailure"))
                                    (:shape-name "DestinationConfig"))

(smithy/sdk/shapes:define-structure document-dbevent-source-config
                                    common-lisp:nil
                                    ((database-name :target-type database-name
                                      :member-name "DatabaseName")
                                     (collection-name :target-type
                                      collection-name :member-name
                                      "CollectionName")
                                     (full-document :target-type full-document
                                      :member-name "FullDocument"))
                                    (:shape-name "DocumentDBEventSourceConfig"))

(smithy/sdk/shapes:define-error ec2access-denied-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "EC2AccessDeniedException")
                                (:error-code 502))

(smithy/sdk/shapes:define-error ec2throttled-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "EC2ThrottledException")
                                (:error-code 502))

(smithy/sdk/shapes:define-error ec2unexpected-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message")
                                 (ec2error-code :target-type string
                                  :member-name "EC2ErrorCode"))
                                (:shape-name "EC2UnexpectedException")
                                (:error-code 502))

(smithy/sdk/shapes:define-error efsioexception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "EFSIOException")
                                (:error-code 410))

(smithy/sdk/shapes:define-error efsmount-connectivity-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "EFSMountConnectivityException")
                                (:error-code 408))

(smithy/sdk/shapes:define-error efsmount-failure-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "EFSMountFailureException")
                                (:error-code 403))

(smithy/sdk/shapes:define-error efsmount-timeout-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "EFSMountTimeoutException")
                                (:error-code 408))

(smithy/sdk/shapes:define-error enilimit-reached-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ENILimitReachedException")
                                (:error-code 502))

(smithy/sdk/shapes:define-type enabled smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-enum end-point-type
    common-lisp:nil
  (:kafka-bootstrap-servers "KAFKA_BOOTSTRAP_SERVERS"))

(smithy/sdk/shapes:define-type endpoint smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list endpoint-lists :member endpoint)

(smithy/sdk/shapes:define-map endpoints :key end-point-type :value
                              endpoint-lists)

(smithy/sdk/shapes:define-structure environment common-lisp:nil
                                    ((variables :target-type
                                      environment-variables :member-name
                                      "Variables"))
                                    (:shape-name "Environment"))

(smithy/sdk/shapes:define-structure environment-error common-lisp:nil
                                    ((error-code :target-type string
                                      :member-name "ErrorCode")
                                     (message :target-type sensitive-string
                                      :member-name "Message"))
                                    (:shape-name "EnvironmentError"))

(smithy/sdk/shapes:define-structure environment-response common-lisp:nil
                                    ((variables :target-type
                                      environment-variables :member-name
                                      "Variables")
                                     (error :target-type environment-error
                                      :member-name "Error"))
                                    (:shape-name "EnvironmentResponse"))

(smithy/sdk/shapes:define-type environment-variable-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type environment-variable-value
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map environment-variables :key
                              environment-variable-name :value
                              environment-variable-value)

(smithy/sdk/shapes:define-structure ephemeral-storage common-lisp:nil
                                    ((size :target-type ephemeral-storage-size
                                      :required common-lisp:t :member-name
                                      "Size"))
                                    (:shape-name "EphemeralStorage"))

(smithy/sdk/shapes:define-type ephemeral-storage-size
                               smithy/sdk/smithy-types:integer)

common-lisp:nil

(smithy/sdk/shapes:define-type event-source-mapping-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure event-source-mapping-configuration
                                    common-lisp:nil
                                    ((uuid :target-type string :member-name
                                      "UUID")
                                     (starting-position :target-type
                                      event-source-position :member-name
                                      "StartingPosition")
                                     (starting-position-timestamp :target-type
                                      date :member-name
                                      "StartingPositionTimestamp")
                                     (batch-size :target-type batch-size
                                      :member-name "BatchSize")
                                     (maximum-batching-window-in-seconds
                                      :target-type
                                      maximum-batching-window-in-seconds
                                      :member-name
                                      "MaximumBatchingWindowInSeconds")
                                     (parallelization-factor :target-type
                                      parallelization-factor :member-name
                                      "ParallelizationFactor")
                                     (event-source-arn :target-type arn
                                      :member-name "EventSourceArn")
                                     (filter-criteria :target-type
                                      filter-criteria :member-name
                                      "FilterCriteria")
                                     (function-arn :target-type function-arn
                                      :member-name "FunctionArn")
                                     (last-modified :target-type date
                                      :member-name "LastModified")
                                     (last-processing-result :target-type
                                      string :member-name
                                      "LastProcessingResult")
                                     (state :target-type string :member-name
                                      "State")
                                     (state-transition-reason :target-type
                                      string :member-name
                                      "StateTransitionReason")
                                     (destination-config :target-type
                                      destination-config :member-name
                                      "DestinationConfig")
                                     (topics :target-type topics :member-name
                                      "Topics")
                                     (queues :target-type queues :member-name
                                      "Queues")
                                     (source-access-configurations :target-type
                                      source-access-configurations :member-name
                                      "SourceAccessConfigurations")
                                     (self-managed-event-source :target-type
                                      self-managed-event-source :member-name
                                      "SelfManagedEventSource")
                                     (maximum-record-age-in-seconds
                                      :target-type
                                      maximum-record-age-in-seconds
                                      :member-name "MaximumRecordAgeInSeconds")
                                     (bisect-batch-on-function-error
                                      :target-type
                                      bisect-batch-on-function-error
                                      :member-name
                                      "BisectBatchOnFunctionError")
                                     (maximum-retry-attempts :target-type
                                      maximum-retry-attempts-event-source-mapping
                                      :member-name "MaximumRetryAttempts")
                                     (tumbling-window-in-seconds :target-type
                                      tumbling-window-in-seconds :member-name
                                      "TumblingWindowInSeconds")
                                     (function-response-types :target-type
                                      function-response-type-list :member-name
                                      "FunctionResponseTypes")
                                     (amazon-managed-kafka-event-source-config
                                      :target-type
                                      amazon-managed-kafka-event-source-config
                                      :member-name
                                      "AmazonManagedKafkaEventSourceConfig")
                                     (self-managed-kafka-event-source-config
                                      :target-type
                                      self-managed-kafka-event-source-config
                                      :member-name
                                      "SelfManagedKafkaEventSourceConfig")
                                     (scaling-config :target-type
                                      scaling-config :member-name
                                      "ScalingConfig")
                                     (document-dbevent-source-config
                                      :target-type
                                      document-dbevent-source-config
                                      :member-name
                                      "DocumentDBEventSourceConfig")
                                     (kmskey-arn :target-type kmskey-arn
                                      :member-name "KMSKeyArn")
                                     (filter-criteria-error :target-type
                                      filter-criteria-error :member-name
                                      "FilterCriteriaError")
                                     (event-source-mapping-arn :target-type
                                      event-source-mapping-arn :member-name
                                      "EventSourceMappingArn")
                                     (metrics-config :target-type
                                      event-source-mapping-metrics-config
                                      :member-name "MetricsConfig")
                                     (provisioned-poller-config :target-type
                                      provisioned-poller-config :member-name
                                      "ProvisionedPollerConfig"))
                                    (:shape-name
                                     "EventSourceMappingConfiguration"))

(smithy/sdk/shapes:define-enum event-source-mapping-metric
    common-lisp:nil
  (:event-count "EventCount"))

(smithy/sdk/shapes:define-list event-source-mapping-metric-list :member
                               event-source-mapping-metric)

(smithy/sdk/shapes:define-structure event-source-mapping-metrics-config
                                    common-lisp:nil
                                    ((metrics :target-type
                                      event-source-mapping-metric-list
                                      :member-name "Metrics"))
                                    (:shape-name
                                     "EventSourceMappingMetricsConfig"))

(smithy/sdk/shapes:define-list event-source-mappings-list :member
                               event-source-mapping-configuration)

(smithy/sdk/shapes:define-enum event-source-position
    common-lisp:nil
  (:trim-horizon "TRIM_HORIZON")
  (:latest "LATEST")
  (:at-timestamp "AT_TIMESTAMP"))

(smithy/sdk/shapes:define-type event-source-token
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type file-system-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure file-system-config common-lisp:nil
                                    ((arn :target-type file-system-arn
                                      :required common-lisp:t :member-name
                                      "Arn")
                                     (local-mount-path :target-type
                                      local-mount-path :required common-lisp:t
                                      :member-name "LocalMountPath"))
                                    (:shape-name "FileSystemConfig"))

(smithy/sdk/shapes:define-list file-system-config-list :member
                               file-system-config)

(smithy/sdk/shapes:define-structure filter common-lisp:nil
                                    ((pattern :target-type pattern :member-name
                                      "Pattern"))
                                    (:shape-name "Filter"))

(smithy/sdk/shapes:define-structure filter-criteria common-lisp:nil
                                    ((filters :target-type filter-list
                                      :member-name "Filters"))
                                    (:shape-name "FilterCriteria"))

(smithy/sdk/shapes:define-structure filter-criteria-error common-lisp:nil
                                    ((error-code :target-type
                                      filter-criteria-error-code :member-name
                                      "ErrorCode")
                                     (message :target-type
                                      filter-criteria-error-message
                                      :member-name "Message"))
                                    (:shape-name "FilterCriteriaError"))

(smithy/sdk/shapes:define-type filter-criteria-error-code
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type filter-criteria-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list filter-list :member filter)

(smithy/sdk/shapes:define-enum full-document
    common-lisp:nil
  (:update-lookup "UpdateLookup")
  (:default "Default"))

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-type function-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list function-arn-list :member function-arn)

(smithy/sdk/shapes:define-structure function-code common-lisp:nil
                                    ((zip-file :target-type blob :member-name
                                      "ZipFile")
                                     (s3bucket :target-type s3bucket
                                      :member-name "S3Bucket")
                                     (s3key :target-type s3key :member-name
                                      "S3Key")
                                     (s3object-version :target-type
                                      s3object-version :member-name
                                      "S3ObjectVersion")
                                     (image-uri :target-type string
                                      :member-name "ImageUri")
                                     (source-kmskey-arn :target-type kmskey-arn
                                      :member-name "SourceKMSKeyArn"))
                                    (:shape-name "FunctionCode"))

(smithy/sdk/shapes:define-structure function-code-location common-lisp:nil
                                    ((repository-type :target-type string
                                      :member-name "RepositoryType")
                                     (location :target-type string :member-name
                                      "Location")
                                     (image-uri :target-type string
                                      :member-name "ImageUri")
                                     (resolved-image-uri :target-type string
                                      :member-name "ResolvedImageUri")
                                     (source-kmskey-arn :target-type string
                                      :member-name "SourceKMSKeyArn"))
                                    (:shape-name "FunctionCodeLocation"))

(smithy/sdk/shapes:define-structure function-configuration common-lisp:nil
                                    ((function-name :target-type
                                      namespaced-function-name :member-name
                                      "FunctionName")
                                     (function-arn :target-type
                                      name-spaced-function-arn :member-name
                                      "FunctionArn")
                                     (runtime :target-type runtime :member-name
                                      "Runtime")
                                     (role :target-type role-arn :member-name
                                      "Role")
                                     (handler :target-type handler :member-name
                                      "Handler")
                                     (code-size :target-type long :member-name
                                      "CodeSize")
                                     (description :target-type description
                                      :member-name "Description")
                                     (timeout :target-type timeout :member-name
                                      "Timeout")
                                     (memory-size :target-type memory-size
                                      :member-name "MemorySize")
                                     (last-modified :target-type timestamp
                                      :member-name "LastModified")
                                     (code-sha256 :target-type string
                                      :member-name "CodeSha256")
                                     (version :target-type version :member-name
                                      "Version")
                                     (vpc-config :target-type
                                      vpc-config-response :member-name
                                      "VpcConfig")
                                     (dead-letter-config :target-type
                                      dead-letter-config :member-name
                                      "DeadLetterConfig")
                                     (environment :target-type
                                      environment-response :member-name
                                      "Environment")
                                     (kmskey-arn :target-type kmskey-arn
                                      :member-name "KMSKeyArn")
                                     (tracing-config :target-type
                                      tracing-config-response :member-name
                                      "TracingConfig")
                                     (master-arn :target-type function-arn
                                      :member-name "MasterArn")
                                     (revision-id :target-type string
                                      :member-name "RevisionId")
                                     (layers :target-type layers-reference-list
                                      :member-name "Layers")
                                     (state :target-type state :member-name
                                      "State")
                                     (state-reason :target-type state-reason
                                      :member-name "StateReason")
                                     (state-reason-code :target-type
                                      state-reason-code :member-name
                                      "StateReasonCode")
                                     (last-update-status :target-type
                                      last-update-status :member-name
                                      "LastUpdateStatus")
                                     (last-update-status-reason :target-type
                                      last-update-status-reason :member-name
                                      "LastUpdateStatusReason")
                                     (last-update-status-reason-code
                                      :target-type
                                      last-update-status-reason-code
                                      :member-name
                                      "LastUpdateStatusReasonCode")
                                     (file-system-configs :target-type
                                      file-system-config-list :member-name
                                      "FileSystemConfigs")
                                     (package-type :target-type package-type
                                      :member-name "PackageType")
                                     (image-config-response :target-type
                                      image-config-response :member-name
                                      "ImageConfigResponse")
                                     (signing-profile-version-arn :target-type
                                      arn :member-name
                                      "SigningProfileVersionArn")
                                     (signing-job-arn :target-type arn
                                      :member-name "SigningJobArn")
                                     (architectures :target-type
                                      architectures-list :member-name
                                      "Architectures")
                                     (ephemeral-storage :target-type
                                      ephemeral-storage :member-name
                                      "EphemeralStorage")
                                     (snap-start :target-type
                                      snap-start-response :member-name
                                      "SnapStart")
                                     (runtime-version-config :target-type
                                      runtime-version-config :member-name
                                      "RuntimeVersionConfig")
                                     (logging-config :target-type
                                      logging-config :member-name
                                      "LoggingConfig"))
                                    (:shape-name "FunctionConfiguration"))

(smithy/sdk/shapes:define-structure function-event-invoke-config
                                    common-lisp:nil
                                    ((last-modified :target-type date
                                      :member-name "LastModified")
                                     (function-arn :target-type function-arn
                                      :member-name "FunctionArn")
                                     (maximum-retry-attempts :target-type
                                      maximum-retry-attempts :member-name
                                      "MaximumRetryAttempts")
                                     (maximum-event-age-in-seconds :target-type
                                      maximum-event-age-in-seconds :member-name
                                      "MaximumEventAgeInSeconds")
                                     (destination-config :target-type
                                      destination-config :member-name
                                      "DestinationConfig"))
                                    (:shape-name "FunctionEventInvokeConfig"))

(smithy/sdk/shapes:define-list function-event-invoke-config-list :member
                               function-event-invoke-config)

(smithy/sdk/shapes:define-list function-list :member function-configuration)

(smithy/sdk/shapes:define-type function-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum function-response-type
    common-lisp:nil
  (:report-batch-item-failures "ReportBatchItemFailures"))

(smithy/sdk/shapes:define-list function-response-type-list :member
                               function-response-type)

(smithy/sdk/shapes:define-type function-url smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum function-url-auth-type
    common-lisp:nil
  (:none "NONE")
  (:aws-iam "AWS_IAM"))

(smithy/sdk/shapes:define-structure function-url-config common-lisp:nil
                                    ((function-url :target-type function-url
                                      :required common-lisp:t :member-name
                                      "FunctionUrl")
                                     (function-arn :target-type function-arn
                                      :required common-lisp:t :member-name
                                      "FunctionArn")
                                     (creation-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "CreationTime")
                                     (last-modified-time :target-type timestamp
                                      :required common-lisp:t :member-name
                                      "LastModifiedTime")
                                     (cors :target-type cors :member-name
                                      "Cors")
                                     (auth-type :target-type
                                      function-url-auth-type :required
                                      common-lisp:t :member-name "AuthType")
                                     (invoke-mode :target-type invoke-mode
                                      :member-name "InvokeMode"))
                                    (:shape-name "FunctionUrlConfig"))

(smithy/sdk/shapes:define-list function-url-config-list :member
                               function-url-config)

(smithy/sdk/shapes:define-type function-url-qualifier
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum function-version
    common-lisp:nil
  (:all "ALL"))

common-lisp:nil

(smithy/sdk/shapes:define-input get-account-settings-request common-lisp:nil
                                common-lisp:nil
                                (:shape-name "GetAccountSettingsRequest"))

(smithy/sdk/shapes:define-output get-account-settings-response common-lisp:nil
                                 ((account-limit :target-type account-limit
                                   :member-name "AccountLimit")
                                  (account-usage :target-type account-usage
                                   :member-name "AccountUsage"))
                                 (:shape-name "GetAccountSettingsResponse"))

(smithy/sdk/shapes:define-input get-alias-request common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (name :target-type alias :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t))
                                (:shape-name "GetAliasRequest"))

(smithy/sdk/shapes:define-input get-code-signing-config-request common-lisp:nil
                                ((code-signing-config-arn :target-type
                                  code-signing-config-arn :required
                                  common-lisp:t :member-name
                                  "CodeSigningConfigArn" :http-label
                                  common-lisp:t))
                                (:shape-name "GetCodeSigningConfigRequest"))

(smithy/sdk/shapes:define-output get-code-signing-config-response
                                 common-lisp:nil
                                 ((code-signing-config :target-type
                                   code-signing-config :required common-lisp:t
                                   :member-name "CodeSigningConfig"))
                                 (:shape-name "GetCodeSigningConfigResponse"))

(smithy/sdk/shapes:define-input get-event-source-mapping-request
                                common-lisp:nil
                                ((uuid :target-type string :required
                                  common-lisp:t :member-name "UUID" :http-label
                                  common-lisp:t))
                                (:shape-name "GetEventSourceMappingRequest"))

(smithy/sdk/shapes:define-input get-function-code-signing-config-request
                                common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t))
                                (:shape-name
                                 "GetFunctionCodeSigningConfigRequest"))

(smithy/sdk/shapes:define-output get-function-code-signing-config-response
                                 common-lisp:nil
                                 ((code-signing-config-arn :target-type
                                   code-signing-config-arn :required
                                   common-lisp:t :member-name
                                   "CodeSigningConfigArn")
                                  (function-name :target-type function-name
                                   :required common-lisp:t :member-name
                                   "FunctionName"))
                                 (:shape-name
                                  "GetFunctionCodeSigningConfigResponse"))

(smithy/sdk/shapes:define-input get-function-concurrency-request
                                common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t))
                                (:shape-name "GetFunctionConcurrencyRequest"))

(smithy/sdk/shapes:define-output get-function-concurrency-response
                                 common-lisp:nil
                                 ((reserved-concurrent-executions :target-type
                                   reserved-concurrent-executions :member-name
                                   "ReservedConcurrentExecutions"))
                                 (:shape-name "GetFunctionConcurrencyResponse"))

(smithy/sdk/shapes:define-input get-function-configuration-request
                                common-lisp:nil
                                ((function-name :target-type
                                  namespaced-function-name :required
                                  common-lisp:t :member-name "FunctionName"
                                  :http-label common-lisp:t)
                                 (qualifier :target-type qualifier :member-name
                                  "Qualifier" :http-query "Qualifier"))
                                (:shape-name "GetFunctionConfigurationRequest"))

(smithy/sdk/shapes:define-input get-function-event-invoke-config-request
                                common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (qualifier :target-type qualifier :member-name
                                  "Qualifier" :http-query "Qualifier"))
                                (:shape-name
                                 "GetFunctionEventInvokeConfigRequest"))

(smithy/sdk/shapes:define-input get-function-recursion-config-request
                                common-lisp:nil
                                ((function-name :target-type
                                  unqualified-function-name :required
                                  common-lisp:t :member-name "FunctionName"
                                  :http-label common-lisp:t))
                                (:shape-name
                                 "GetFunctionRecursionConfigRequest"))

(smithy/sdk/shapes:define-output get-function-recursion-config-response
                                 common-lisp:nil
                                 ((recursive-loop :target-type recursive-loop
                                   :member-name "RecursiveLoop"))
                                 (:shape-name
                                  "GetFunctionRecursionConfigResponse"))

(smithy/sdk/shapes:define-input get-function-request common-lisp:nil
                                ((function-name :target-type
                                  namespaced-function-name :required
                                  common-lisp:t :member-name "FunctionName"
                                  :http-label common-lisp:t)
                                 (qualifier :target-type qualifier :member-name
                                  "Qualifier" :http-query "Qualifier"))
                                (:shape-name "GetFunctionRequest"))

(smithy/sdk/shapes:define-output get-function-response common-lisp:nil
                                 ((configuration :target-type
                                   function-configuration :member-name
                                   "Configuration")
                                  (code :target-type function-code-location
                                   :member-name "Code")
                                  (tags :target-type tags :member-name "Tags")
                                  (tags-error :target-type tags-error
                                   :member-name "TagsError")
                                  (concurrency :target-type concurrency
                                   :member-name "Concurrency"))
                                 (:shape-name "GetFunctionResponse"))

(smithy/sdk/shapes:define-input get-function-url-config-request common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (qualifier :target-type function-url-qualifier
                                  :member-name "Qualifier" :http-query
                                  "Qualifier"))
                                (:shape-name "GetFunctionUrlConfigRequest"))

(smithy/sdk/shapes:define-output get-function-url-config-response
                                 common-lisp:nil
                                 ((function-url :target-type function-url
                                   :required common-lisp:t :member-name
                                   "FunctionUrl")
                                  (function-arn :target-type function-arn
                                   :required common-lisp:t :member-name
                                   "FunctionArn")
                                  (auth-type :target-type
                                   function-url-auth-type :required
                                   common-lisp:t :member-name "AuthType")
                                  (cors :target-type cors :member-name "Cors")
                                  (creation-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "CreationTime")
                                  (last-modified-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "LastModifiedTime")
                                  (invoke-mode :target-type invoke-mode
                                   :member-name "InvokeMode"))
                                 (:shape-name "GetFunctionUrlConfigResponse"))

(smithy/sdk/shapes:define-input get-layer-version-by-arn-request
                                common-lisp:nil
                                ((arn :target-type layer-version-arn :required
                                  common-lisp:t :member-name "Arn" :http-query
                                  "Arn"))
                                (:shape-name "GetLayerVersionByArnRequest"))

(smithy/sdk/shapes:define-input get-layer-version-policy-request
                                common-lisp:nil
                                ((layer-name :target-type layer-name :required
                                  common-lisp:t :member-name "LayerName"
                                  :http-label common-lisp:t)
                                 (version-number :target-type
                                  layer-version-number :required common-lisp:t
                                  :member-name "VersionNumber" :http-label
                                  common-lisp:t))
                                (:shape-name "GetLayerVersionPolicyRequest"))

(smithy/sdk/shapes:define-output get-layer-version-policy-response
                                 common-lisp:nil
                                 ((policy :target-type string :member-name
                                   "Policy")
                                  (revision-id :target-type string :member-name
                                   "RevisionId"))
                                 (:shape-name "GetLayerVersionPolicyResponse"))

(smithy/sdk/shapes:define-input get-layer-version-request common-lisp:nil
                                ((layer-name :target-type layer-name :required
                                  common-lisp:t :member-name "LayerName"
                                  :http-label common-lisp:t)
                                 (version-number :target-type
                                  layer-version-number :required common-lisp:t
                                  :member-name "VersionNumber" :http-label
                                  common-lisp:t))
                                (:shape-name "GetLayerVersionRequest"))

(smithy/sdk/shapes:define-structure get-layer-version-response common-lisp:nil
                                    ((content :target-type
                                      layer-version-content-output :member-name
                                      "Content")
                                     (layer-arn :target-type layer-arn
                                      :member-name "LayerArn")
                                     (layer-version-arn :target-type
                                      layer-version-arn :member-name
                                      "LayerVersionArn")
                                     (description :target-type description
                                      :member-name "Description")
                                     (created-date :target-type timestamp
                                      :member-name "CreatedDate")
                                     (version :target-type layer-version-number
                                      :member-name "Version")
                                     (compatible-runtimes :target-type
                                      compatible-runtimes :member-name
                                      "CompatibleRuntimes")
                                     (license-info :target-type license-info
                                      :member-name "LicenseInfo")
                                     (compatible-architectures :target-type
                                      compatible-architectures :member-name
                                      "CompatibleArchitectures"))
                                    (:shape-name "GetLayerVersionResponse"))

(smithy/sdk/shapes:define-input get-policy-request common-lisp:nil
                                ((function-name :target-type
                                  namespaced-function-name :required
                                  common-lisp:t :member-name "FunctionName"
                                  :http-label common-lisp:t)
                                 (qualifier :target-type qualifier :member-name
                                  "Qualifier" :http-query "Qualifier"))
                                (:shape-name "GetPolicyRequest"))

(smithy/sdk/shapes:define-output get-policy-response common-lisp:nil
                                 ((policy :target-type string :member-name
                                   "Policy")
                                  (revision-id :target-type string :member-name
                                   "RevisionId"))
                                 (:shape-name "GetPolicyResponse"))

(smithy/sdk/shapes:define-input get-provisioned-concurrency-config-request
                                common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (qualifier :target-type qualifier :required
                                  common-lisp:t :member-name "Qualifier"
                                  :http-query "Qualifier"))
                                (:shape-name
                                 "GetProvisionedConcurrencyConfigRequest"))

(smithy/sdk/shapes:define-output get-provisioned-concurrency-config-response
                                 common-lisp:nil
                                 ((requested-provisioned-concurrent-executions
                                   :target-type positive-integer :member-name
                                   "RequestedProvisionedConcurrentExecutions")
                                  (available-provisioned-concurrent-executions
                                   :target-type non-negative-integer
                                   :member-name
                                   "AvailableProvisionedConcurrentExecutions")
                                  (allocated-provisioned-concurrent-executions
                                   :target-type non-negative-integer
                                   :member-name
                                   "AllocatedProvisionedConcurrentExecutions")
                                  (status :target-type
                                   provisioned-concurrency-status-enum
                                   :member-name "Status")
                                  (status-reason :target-type string
                                   :member-name "StatusReason")
                                  (last-modified :target-type timestamp
                                   :member-name "LastModified"))
                                 (:shape-name
                                  "GetProvisionedConcurrencyConfigResponse"))

(smithy/sdk/shapes:define-input get-runtime-management-config-request
                                common-lisp:nil
                                ((function-name :target-type
                                  namespaced-function-name :required
                                  common-lisp:t :member-name "FunctionName"
                                  :http-label common-lisp:t)
                                 (qualifier :target-type qualifier :member-name
                                  "Qualifier" :http-query "Qualifier"))
                                (:shape-name
                                 "GetRuntimeManagementConfigRequest"))

(smithy/sdk/shapes:define-output get-runtime-management-config-response
                                 common-lisp:nil
                                 ((update-runtime-on :target-type
                                   update-runtime-on :member-name
                                   "UpdateRuntimeOn")
                                  (runtime-version-arn :target-type
                                   runtime-version-arn :member-name
                                   "RuntimeVersionArn")
                                  (function-arn :target-type
                                   name-spaced-function-arn :member-name
                                   "FunctionArn"))
                                 (:shape-name
                                  "GetRuntimeManagementConfigResponse"))

(smithy/sdk/shapes:define-type handler smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type header smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list headers-list :member header)

(smithy/sdk/shapes:define-type http-status smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-structure image-config common-lisp:nil
                                    ((entry-point :target-type string-list
                                      :member-name "EntryPoint")
                                     (command :target-type string-list
                                      :member-name "Command")
                                     (working-directory :target-type
                                      working-directory :member-name
                                      "WorkingDirectory"))
                                    (:shape-name "ImageConfig"))

(smithy/sdk/shapes:define-structure image-config-error common-lisp:nil
                                    ((error-code :target-type string
                                      :member-name "ErrorCode")
                                     (message :target-type sensitive-string
                                      :member-name "Message"))
                                    (:shape-name "ImageConfigError"))

(smithy/sdk/shapes:define-structure image-config-response common-lisp:nil
                                    ((image-config :target-type image-config
                                      :member-name "ImageConfig")
                                     (error :target-type image-config-error
                                      :member-name "Error"))
                                    (:shape-name "ImageConfigResponse"))

(smithy/sdk/shapes:define-type integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error invalid-code-signature-exception
                                common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidCodeSignatureException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-parameter-value-exception
                                common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidParameterValueException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-request-content-exception
                                common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "InvalidRequestContentException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error invalid-runtime-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidRuntimeException")
                                (:error-code 502))

(smithy/sdk/shapes:define-error invalid-security-group-idexception
                                common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidSecurityGroupIDException")
                                (:error-code 502))

(smithy/sdk/shapes:define-error invalid-subnet-idexception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidSubnetIDException")
                                (:error-code 502))

(smithy/sdk/shapes:define-error invalid-zip-file-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "InvalidZipFileException")
                                (:error-code 502))

(smithy/sdk/shapes:define-input invocation-request common-lisp:nil
                                ((function-name :target-type
                                  namespaced-function-name :required
                                  common-lisp:t :member-name "FunctionName"
                                  :http-label common-lisp:t)
                                 (invocation-type :target-type invocation-type
                                  :member-name "InvocationType" :http-header
                                  "X-Amz-Invocation-Type")
                                 (log-type :target-type log-type :member-name
                                  "LogType" :http-header "X-Amz-Log-Type")
                                 (client-context :target-type string
                                  :member-name "ClientContext" :http-header
                                  "X-Amz-Client-Context")
                                 (payload :target-type blob :member-name
                                  "Payload" :http-payload common-lisp:t)
                                 (qualifier :target-type qualifier :member-name
                                  "Qualifier" :http-query "Qualifier"))
                                (:shape-name "InvocationRequest"))

(smithy/sdk/shapes:define-output invocation-response common-lisp:nil
                                 ((status-code :target-type integer
                                   :member-name "StatusCode"
                                   :http-response-code common-lisp:t)
                                  (function-error :target-type string
                                   :member-name "FunctionError" :http-header
                                   "X-Amz-Function-Error")
                                  (log-result :target-type string :member-name
                                   "LogResult" :http-header "X-Amz-Log-Result")
                                  (payload :target-type blob :member-name
                                   "Payload" :http-payload common-lisp:t)
                                  (executed-version :target-type version
                                   :member-name "ExecutedVersion" :http-header
                                   "X-Amz-Executed-Version"))
                                 (:shape-name "InvocationResponse"))

(smithy/sdk/shapes:define-enum invocation-type
    common-lisp:nil
  (:event "Event")
  (:request-response "RequestResponse")
  (:dry-run "DryRun"))

(smithy/sdk/shapes:define-input invoke-async-request common-lisp:nil
                                ((function-name :target-type
                                  namespaced-function-name :required
                                  common-lisp:t :member-name "FunctionName"
                                  :http-label common-lisp:t)
                                 (invoke-args :target-type blob-stream
                                  :required common-lisp:t :member-name
                                  "InvokeArgs" :http-payload common-lisp:t))
                                (:shape-name "InvokeAsyncRequest"))

(smithy/sdk/shapes:define-output invoke-async-response common-lisp:nil
                                 ((status :target-type http-status :member-name
                                   "Status" :http-response-code common-lisp:t))
                                 (:shape-name "InvokeAsyncResponse"))

(smithy/sdk/shapes:define-enum invoke-mode
    common-lisp:nil
  (:buffered "BUFFERED")
  (:response-stream "RESPONSE_STREAM"))

(smithy/sdk/shapes:define-structure invoke-response-stream-update
                                    common-lisp:nil
                                    ((payload :target-type blob :member-name
                                      "Payload"))
                                    (:shape-name "InvokeResponseStreamUpdate"))

(smithy/sdk/shapes:define-structure invoke-with-response-stream-complete-event
                                    common-lisp:nil
                                    ((error-code :target-type string
                                      :member-name "ErrorCode")
                                     (error-details :target-type string
                                      :member-name "ErrorDetails")
                                     (log-result :target-type string
                                      :member-name "LogResult"))
                                    (:shape-name
                                     "InvokeWithResponseStreamCompleteEvent"))

(smithy/sdk/shapes:define-input invoke-with-response-stream-request
                                common-lisp:nil
                                ((function-name :target-type
                                  namespaced-function-name :required
                                  common-lisp:t :member-name "FunctionName"
                                  :http-label common-lisp:t)
                                 (invocation-type :target-type
                                  response-streaming-invocation-type
                                  :member-name "InvocationType" :http-header
                                  "X-Amz-Invocation-Type")
                                 (log-type :target-type log-type :member-name
                                  "LogType" :http-header "X-Amz-Log-Type")
                                 (client-context :target-type string
                                  :member-name "ClientContext" :http-header
                                  "X-Amz-Client-Context")
                                 (qualifier :target-type qualifier :member-name
                                  "Qualifier" :http-query "Qualifier")
                                 (payload :target-type blob :member-name
                                  "Payload" :http-payload common-lisp:t))
                                (:shape-name "InvokeWithResponseStreamRequest"))

(smithy/sdk/shapes:define-output invoke-with-response-stream-response
                                 common-lisp:nil
                                 ((status-code :target-type integer
                                   :member-name "StatusCode"
                                   :http-response-code common-lisp:t)
                                  (executed-version :target-type version
                                   :member-name "ExecutedVersion" :http-header
                                   "X-Amz-Executed-Version")
                                  (event-stream :target-type
                                   invoke-with-response-stream-response-event
                                   :member-name "EventStream" :http-payload
                                   common-lisp:t)
                                  (response-stream-content-type :target-type
                                   string :member-name
                                   "ResponseStreamContentType" :http-header
                                   "Content-Type"))
                                 (:shape-name
                                  "InvokeWithResponseStreamResponse"))

(smithy/sdk/shapes:define-union invoke-with-response-stream-response-event
                                common-lisp:nil
                                ((payload-chunk :target-type
                                  invoke-response-stream-update :member-name
                                  "PayloadChunk")
                                 (invoke-complete :target-type
                                  invoke-with-response-stream-complete-event
                                  :member-name "InvokeComplete"))
                                (:shape-name
                                 "InvokeWithResponseStreamResponseEvent"))

(smithy/sdk/shapes:define-error kmsaccess-denied-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "KMSAccessDeniedException")
                                (:error-code 502))

(smithy/sdk/shapes:define-error kmsdisabled-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "KMSDisabledException")
                                (:error-code 502))

(smithy/sdk/shapes:define-error kmsinvalid-state-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "KMSInvalidStateException")
                                (:error-code 502))

(smithy/sdk/shapes:define-type kmskey-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error kmsnot-found-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "KMSNotFoundException")
                                (:error-code 502))

(smithy/sdk/shapes:define-structure kafka-schema-registry-access-config
                                    common-lisp:nil
                                    ((type :target-type
                                      kafka-schema-registry-auth-type
                                      :member-name "Type")
                                     (uri :target-type arn :member-name "URI"))
                                    (:shape-name
                                     "KafkaSchemaRegistryAccessConfig"))

(smithy/sdk/shapes:define-list kafka-schema-registry-access-config-list :member
                               kafka-schema-registry-access-config)

(smithy/sdk/shapes:define-enum kafka-schema-registry-auth-type
    common-lisp:nil
  (:basic-auth "BASIC_AUTH")
  (:client-certificate-tls-auth "CLIENT_CERTIFICATE_TLS_AUTH")
  (:server-root-ca-certificate "SERVER_ROOT_CA_CERTIFICATE"))

(smithy/sdk/shapes:define-structure kafka-schema-registry-config
                                    common-lisp:nil
                                    ((schema-registry-uri :target-type
                                      schema-registry-uri :member-name
                                      "SchemaRegistryURI")
                                     (event-record-format :target-type
                                      schema-registry-event-record-format
                                      :member-name "EventRecordFormat")
                                     (access-configs :target-type
                                      kafka-schema-registry-access-config-list
                                      :member-name "AccessConfigs")
                                     (schema-validation-configs :target-type
                                      kafka-schema-validation-config-list
                                      :member-name "SchemaValidationConfigs"))
                                    (:shape-name "KafkaSchemaRegistryConfig"))

(smithy/sdk/shapes:define-enum kafka-schema-validation-attribute
    common-lisp:nil
  (:key "KEY")
  (:value "VALUE"))

(smithy/sdk/shapes:define-structure kafka-schema-validation-config
                                    common-lisp:nil
                                    ((attribute :target-type
                                      kafka-schema-validation-attribute
                                      :member-name "Attribute"))
                                    (:shape-name "KafkaSchemaValidationConfig"))

(smithy/sdk/shapes:define-list kafka-schema-validation-config-list :member
                               kafka-schema-validation-config)

(smithy/sdk/shapes:define-enum last-update-status
    common-lisp:nil
  (:successful "Successful")
  (:failed "Failed")
  (:in-progress "InProgress"))

(smithy/sdk/shapes:define-type last-update-status-reason
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum last-update-status-reason-code
    common-lisp:nil
  (:eni-limit-exceeded "EniLimitExceeded")
  (:insufficient-role-permissions "InsufficientRolePermissions")
  (:invalid-configuration "InvalidConfiguration")
  (:internal-error "InternalError")
  (:subnet-out-of-ipaddresses "SubnetOutOfIPAddresses")
  (:invalid-subnet "InvalidSubnet")
  (:invalid-security-group "InvalidSecurityGroup")
  (:image-deleted "ImageDeleted")
  (:image-access-denied "ImageAccessDenied")
  (:invalid-image "InvalidImage")
  (:kmskey-access-denied "KMSKeyAccessDenied")
  (:kmskey-not-found "KMSKeyNotFound")
  (:invalid-state-kmskey "InvalidStateKMSKey")
  (:disabled-kmskey "DisabledKMSKey")
  (:efsioerror "EFSIOError")
  (:efsmount-connectivity-error "EFSMountConnectivityError")
  (:efsmount-failure "EFSMountFailure")
  (:efsmount-timeout "EFSMountTimeout")
  (:invalid-runtime "InvalidRuntime")
  (:invalid-zip-file-exception "InvalidZipFileException")
  (:function-error "FunctionError"))

(smithy/sdk/shapes:define-structure layer common-lisp:nil
                                    ((arn :target-type layer-version-arn
                                      :member-name "Arn")
                                     (code-size :target-type long :member-name
                                      "CodeSize")
                                     (signing-profile-version-arn :target-type
                                      arn :member-name
                                      "SigningProfileVersionArn")
                                     (signing-job-arn :target-type arn
                                      :member-name "SigningJobArn"))
                                    (:shape-name "Layer"))

(smithy/sdk/shapes:define-type layer-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list layer-list :member layer-version-arn)

(smithy/sdk/shapes:define-type layer-name smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type layer-permission-allowed-action
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type layer-permission-allowed-principal
                               smithy/sdk/smithy-types:string)

common-lisp:nil

common-lisp:nil

(smithy/sdk/shapes:define-type layer-version-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure layer-version-content-input common-lisp:nil
                                    ((s3bucket :target-type s3bucket
                                      :member-name "S3Bucket")
                                     (s3key :target-type s3key :member-name
                                      "S3Key")
                                     (s3object-version :target-type
                                      s3object-version :member-name
                                      "S3ObjectVersion")
                                     (zip-file :target-type blob :member-name
                                      "ZipFile"))
                                    (:shape-name "LayerVersionContentInput"))

(smithy/sdk/shapes:define-structure layer-version-content-output
                                    common-lisp:nil
                                    ((location :target-type string :member-name
                                      "Location")
                                     (code-sha256 :target-type string
                                      :member-name "CodeSha256")
                                     (code-size :target-type long :member-name
                                      "CodeSize")
                                     (signing-profile-version-arn :target-type
                                      string :member-name
                                      "SigningProfileVersionArn")
                                     (signing-job-arn :target-type string
                                      :member-name "SigningJobArn"))
                                    (:shape-name "LayerVersionContentOutput"))

(smithy/sdk/shapes:define-type layer-version-number
                               smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-list layer-versions-list :member
                               layer-versions-list-item)

(smithy/sdk/shapes:define-structure layer-versions-list-item common-lisp:nil
                                    ((layer-version-arn :target-type
                                      layer-version-arn :member-name
                                      "LayerVersionArn")
                                     (version :target-type layer-version-number
                                      :member-name "Version")
                                     (description :target-type description
                                      :member-name "Description")
                                     (created-date :target-type timestamp
                                      :member-name "CreatedDate")
                                     (compatible-runtimes :target-type
                                      compatible-runtimes :member-name
                                      "CompatibleRuntimes")
                                     (license-info :target-type license-info
                                      :member-name "LicenseInfo")
                                     (compatible-architectures :target-type
                                      compatible-architectures :member-name
                                      "CompatibleArchitectures"))
                                    (:shape-name "LayerVersionsListItem"))

(smithy/sdk/shapes:define-list layers-list :member layers-list-item)

(smithy/sdk/shapes:define-structure layers-list-item common-lisp:nil
                                    ((layer-name :target-type layer-name
                                      :member-name "LayerName")
                                     (layer-arn :target-type layer-arn
                                      :member-name "LayerArn")
                                     (latest-matching-version :target-type
                                      layer-versions-list-item :member-name
                                      "LatestMatchingVersion"))
                                    (:shape-name "LayersListItem"))

(smithy/sdk/shapes:define-list layers-reference-list :member layer)

(smithy/sdk/shapes:define-type license-info smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-input list-aliases-request common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (function-version :target-type version
                                  :member-name "FunctionVersion" :http-query
                                  "FunctionVersion")
                                 (marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type max-list-items
                                  :member-name "MaxItems" :http-query
                                  "MaxItems"))
                                (:shape-name "ListAliasesRequest"))

(smithy/sdk/shapes:define-output list-aliases-response common-lisp:nil
                                 ((next-marker :target-type string :member-name
                                   "NextMarker")
                                  (aliases :target-type alias-list :member-name
                                   "Aliases"))
                                 (:shape-name "ListAliasesResponse"))

(smithy/sdk/shapes:define-input list-code-signing-configs-request
                                common-lisp:nil
                                ((marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type max-list-items
                                  :member-name "MaxItems" :http-query
                                  "MaxItems"))
                                (:shape-name "ListCodeSigningConfigsRequest"))

(smithy/sdk/shapes:define-output list-code-signing-configs-response
                                 common-lisp:nil
                                 ((next-marker :target-type string :member-name
                                   "NextMarker")
                                  (code-signing-configs :target-type
                                   code-signing-config-list :member-name
                                   "CodeSigningConfigs"))
                                 (:shape-name "ListCodeSigningConfigsResponse"))

(smithy/sdk/shapes:define-input list-event-source-mappings-request
                                common-lisp:nil
                                ((event-source-arn :target-type arn
                                  :member-name "EventSourceArn" :http-query
                                  "EventSourceArn")
                                 (function-name :target-type function-name
                                  :member-name "FunctionName" :http-query
                                  "FunctionName")
                                 (marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type max-list-items
                                  :member-name "MaxItems" :http-query
                                  "MaxItems"))
                                (:shape-name "ListEventSourceMappingsRequest"))

(smithy/sdk/shapes:define-output list-event-source-mappings-response
                                 common-lisp:nil
                                 ((next-marker :target-type string :member-name
                                   "NextMarker")
                                  (event-source-mappings :target-type
                                   event-source-mappings-list :member-name
                                   "EventSourceMappings"))
                                 (:shape-name
                                  "ListEventSourceMappingsResponse"))

(smithy/sdk/shapes:define-input list-function-event-invoke-configs-request
                                common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type
                                  max-function-event-invoke-config-list-items
                                  :member-name "MaxItems" :http-query
                                  "MaxItems"))
                                (:shape-name
                                 "ListFunctionEventInvokeConfigsRequest"))

(smithy/sdk/shapes:define-output list-function-event-invoke-configs-response
                                 common-lisp:nil
                                 ((function-event-invoke-configs :target-type
                                   function-event-invoke-config-list
                                   :member-name "FunctionEventInvokeConfigs")
                                  (next-marker :target-type string :member-name
                                   "NextMarker"))
                                 (:shape-name
                                  "ListFunctionEventInvokeConfigsResponse"))

(smithy/sdk/shapes:define-input list-function-url-configs-request
                                common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type max-items :member-name
                                  "MaxItems" :http-query "MaxItems"))
                                (:shape-name "ListFunctionUrlConfigsRequest"))

(smithy/sdk/shapes:define-output list-function-url-configs-response
                                 common-lisp:nil
                                 ((function-url-configs :target-type
                                   function-url-config-list :required
                                   common-lisp:t :member-name
                                   "FunctionUrlConfigs")
                                  (next-marker :target-type string :member-name
                                   "NextMarker"))
                                 (:shape-name "ListFunctionUrlConfigsResponse"))

(smithy/sdk/shapes:define-input list-functions-by-code-signing-config-request
                                common-lisp:nil
                                ((code-signing-config-arn :target-type
                                  code-signing-config-arn :required
                                  common-lisp:t :member-name
                                  "CodeSigningConfigArn" :http-label
                                  common-lisp:t)
                                 (marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type max-list-items
                                  :member-name "MaxItems" :http-query
                                  "MaxItems"))
                                (:shape-name
                                 "ListFunctionsByCodeSigningConfigRequest"))

(smithy/sdk/shapes:define-output list-functions-by-code-signing-config-response
                                 common-lisp:nil
                                 ((next-marker :target-type string :member-name
                                   "NextMarker")
                                  (function-arns :target-type function-arn-list
                                   :member-name "FunctionArns"))
                                 (:shape-name
                                  "ListFunctionsByCodeSigningConfigResponse"))

(smithy/sdk/shapes:define-input list-functions-request common-lisp:nil
                                ((master-region :target-type master-region
                                  :member-name "MasterRegion" :http-query
                                  "MasterRegion")
                                 (function-version :target-type
                                  function-version :member-name
                                  "FunctionVersion" :http-query
                                  "FunctionVersion")
                                 (marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type max-list-items
                                  :member-name "MaxItems" :http-query
                                  "MaxItems"))
                                (:shape-name "ListFunctionsRequest"))

(smithy/sdk/shapes:define-output list-functions-response common-lisp:nil
                                 ((next-marker :target-type string :member-name
                                   "NextMarker")
                                  (functions :target-type function-list
                                   :member-name "Functions"))
                                 (:shape-name "ListFunctionsResponse"))

(smithy/sdk/shapes:define-input list-layer-versions-request common-lisp:nil
                                ((compatible-runtime :target-type runtime
                                  :member-name "CompatibleRuntime" :http-query
                                  "CompatibleRuntime")
                                 (layer-name :target-type layer-name :required
                                  common-lisp:t :member-name "LayerName"
                                  :http-label common-lisp:t)
                                 (marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type max-layer-list-items
                                  :member-name "MaxItems" :http-query
                                  "MaxItems")
                                 (compatible-architecture :target-type
                                  architecture :member-name
                                  "CompatibleArchitecture" :http-query
                                  "CompatibleArchitecture"))
                                (:shape-name "ListLayerVersionsRequest"))

(smithy/sdk/shapes:define-output list-layer-versions-response common-lisp:nil
                                 ((next-marker :target-type string :member-name
                                   "NextMarker")
                                  (layer-versions :target-type
                                   layer-versions-list :member-name
                                   "LayerVersions"))
                                 (:shape-name "ListLayerVersionsResponse"))

(smithy/sdk/shapes:define-input list-layers-request common-lisp:nil
                                ((compatible-runtime :target-type runtime
                                  :member-name "CompatibleRuntime" :http-query
                                  "CompatibleRuntime")
                                 (marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type max-layer-list-items
                                  :member-name "MaxItems" :http-query
                                  "MaxItems")
                                 (compatible-architecture :target-type
                                  architecture :member-name
                                  "CompatibleArchitecture" :http-query
                                  "CompatibleArchitecture"))
                                (:shape-name "ListLayersRequest"))

(smithy/sdk/shapes:define-output list-layers-response common-lisp:nil
                                 ((next-marker :target-type string :member-name
                                   "NextMarker")
                                  (layers :target-type layers-list :member-name
                                   "Layers"))
                                 (:shape-name "ListLayersResponse"))

(smithy/sdk/shapes:define-input list-provisioned-concurrency-configs-request
                                common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type
                                  max-provisioned-concurrency-config-list-items
                                  :member-name "MaxItems" :http-query
                                  "MaxItems"))
                                (:shape-name
                                 "ListProvisionedConcurrencyConfigsRequest"))

(smithy/sdk/shapes:define-output list-provisioned-concurrency-configs-response
                                 common-lisp:nil
                                 ((provisioned-concurrency-configs :target-type
                                   provisioned-concurrency-config-list
                                   :member-name
                                   "ProvisionedConcurrencyConfigs")
                                  (next-marker :target-type string :member-name
                                   "NextMarker"))
                                 (:shape-name
                                  "ListProvisionedConcurrencyConfigsResponse"))

(smithy/sdk/shapes:define-input list-tags-request common-lisp:nil
                                ((resource :target-type taggable-resource
                                  :required common-lisp:t :member-name
                                  "Resource" :http-label common-lisp:t))
                                (:shape-name "ListTagsRequest"))

(smithy/sdk/shapes:define-output list-tags-response common-lisp:nil
                                 ((tags :target-type tags :member-name "Tags"))
                                 (:shape-name "ListTagsResponse"))

(smithy/sdk/shapes:define-input list-versions-by-function-request
                                common-lisp:nil
                                ((function-name :target-type
                                  namespaced-function-name :required
                                  common-lisp:t :member-name "FunctionName"
                                  :http-label common-lisp:t)
                                 (marker :target-type string :member-name
                                  "Marker" :http-query "Marker")
                                 (max-items :target-type max-list-items
                                  :member-name "MaxItems" :http-query
                                  "MaxItems"))
                                (:shape-name "ListVersionsByFunctionRequest"))

(smithy/sdk/shapes:define-output list-versions-by-function-response
                                 common-lisp:nil
                                 ((next-marker :target-type string :member-name
                                   "NextMarker")
                                  (versions :target-type function-list
                                   :member-name "Versions"))
                                 (:shape-name "ListVersionsByFunctionResponse"))

(smithy/sdk/shapes:define-type local-mount-path smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum log-format
    common-lisp:nil
  (:json "JSON")
  (:text "Text"))

(smithy/sdk/shapes:define-type log-group smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum log-type
    common-lisp:nil
  (:none "None")
  (:tail "Tail"))

(smithy/sdk/shapes:define-structure logging-config common-lisp:nil
                                    ((log-format :target-type log-format
                                      :member-name "LogFormat")
                                     (application-log-level :target-type
                                      application-log-level :member-name
                                      "ApplicationLogLevel")
                                     (system-log-level :target-type
                                      system-log-level :member-name
                                      "SystemLogLevel")
                                     (log-group :target-type log-group
                                      :member-name "LogGroup"))
                                    (:shape-name "LoggingConfig"))

(smithy/sdk/shapes:define-type long smithy/sdk/smithy-types:long)

(smithy/sdk/shapes:define-type master-region smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type max-age smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-function-event-invoke-config-list-items
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-items smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-layer-list-items
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-list-items smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type max-provisioned-concurrency-config-list-items
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-batching-window-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-concurrency
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-event-age-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-number-of-pollers
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-record-age-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-retry-attempts
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type maximum-retry-attempts-event-source-mapping
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type memory-size smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type method smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type minimum-number-of-pollers
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type name-spaced-function-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type namespaced-function-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type namespaced-statement-id
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type non-negative-integer
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type nullable-boolean smithy/sdk/smithy-types:boolean)

(smithy/sdk/shapes:define-structure on-failure common-lisp:nil
                                    ((destination :target-type destination-arn
                                      :member-name "Destination"))
                                    (:shape-name "OnFailure"))

(smithy/sdk/shapes:define-structure on-success common-lisp:nil
                                    ((destination :target-type destination-arn
                                      :member-name "Destination"))
                                    (:shape-name "OnSuccess"))

(smithy/sdk/shapes:define-type organization-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type origin smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum package-type
    common-lisp:nil
  (:zip "Zip")
  (:image "Image"))

(smithy/sdk/shapes:define-type parallelization-factor
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type pattern smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-error policy-length-exceeded-exception
                                common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "PolicyLengthExceededException")
                                (:error-code 400))

(smithy/sdk/shapes:define-type positive-integer smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error precondition-failed-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "PreconditionFailedException")
                                (:error-code 412))

(smithy/sdk/shapes:define-type principal smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type principal-org-id smithy/sdk/smithy-types:string)

common-lisp:nil

(smithy/sdk/shapes:define-list provisioned-concurrency-config-list :member
                               provisioned-concurrency-config-list-item)

(smithy/sdk/shapes:define-structure provisioned-concurrency-config-list-item
                                    common-lisp:nil
                                    ((function-arn :target-type function-arn
                                      :member-name "FunctionArn")
                                     (requested-provisioned-concurrent-executions
                                      :target-type positive-integer
                                      :member-name
                                      "RequestedProvisionedConcurrentExecutions")
                                     (available-provisioned-concurrent-executions
                                      :target-type non-negative-integer
                                      :member-name
                                      "AvailableProvisionedConcurrentExecutions")
                                     (allocated-provisioned-concurrent-executions
                                      :target-type non-negative-integer
                                      :member-name
                                      "AllocatedProvisionedConcurrentExecutions")
                                     (status :target-type
                                      provisioned-concurrency-status-enum
                                      :member-name "Status")
                                     (status-reason :target-type string
                                      :member-name "StatusReason")
                                     (last-modified :target-type timestamp
                                      :member-name "LastModified"))
                                    (:shape-name
                                     "ProvisionedConcurrencyConfigListItem"))

(smithy/sdk/shapes:define-error
 provisioned-concurrency-config-not-found-exception common-lisp:nil
 ((type :target-type string :member-name "Type")
  (message :target-type string :member-name "message"))
 (:shape-name "ProvisionedConcurrencyConfigNotFoundException")
 (:error-code 404))

(smithy/sdk/shapes:define-enum provisioned-concurrency-status-enum
    common-lisp:nil
  (:in-progress "IN_PROGRESS")
  (:ready "READY")
  (:failed "FAILED"))

(smithy/sdk/shapes:define-structure provisioned-poller-config common-lisp:nil
                                    ((minimum-pollers :target-type
                                      minimum-number-of-pollers :member-name
                                      "MinimumPollers")
                                     (maximum-pollers :target-type
                                      maximum-number-of-pollers :member-name
                                      "MaximumPollers"))
                                    (:shape-name "ProvisionedPollerConfig"))

(smithy/sdk/shapes:define-input publish-layer-version-request common-lisp:nil
                                ((layer-name :target-type layer-name :required
                                  common-lisp:t :member-name "LayerName"
                                  :http-label common-lisp:t)
                                 (description :target-type description
                                  :member-name "Description")
                                 (content :target-type
                                  layer-version-content-input :required
                                  common-lisp:t :member-name "Content")
                                 (compatible-runtimes :target-type
                                  compatible-runtimes :member-name
                                  "CompatibleRuntimes")
                                 (license-info :target-type license-info
                                  :member-name "LicenseInfo")
                                 (compatible-architectures :target-type
                                  compatible-architectures :member-name
                                  "CompatibleArchitectures"))
                                (:shape-name "PublishLayerVersionRequest"))

(smithy/sdk/shapes:define-output publish-layer-version-response common-lisp:nil
                                 ((content :target-type
                                   layer-version-content-output :member-name
                                   "Content")
                                  (layer-arn :target-type layer-arn
                                   :member-name "LayerArn")
                                  (layer-version-arn :target-type
                                   layer-version-arn :member-name
                                   "LayerVersionArn")
                                  (description :target-type description
                                   :member-name "Description")
                                  (created-date :target-type timestamp
                                   :member-name "CreatedDate")
                                  (version :target-type layer-version-number
                                   :member-name "Version")
                                  (compatible-runtimes :target-type
                                   compatible-runtimes :member-name
                                   "CompatibleRuntimes")
                                  (license-info :target-type license-info
                                   :member-name "LicenseInfo")
                                  (compatible-architectures :target-type
                                   compatible-architectures :member-name
                                   "CompatibleArchitectures"))
                                 (:shape-name "PublishLayerVersionResponse"))

(smithy/sdk/shapes:define-input publish-version-request common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (code-sha256 :target-type string :member-name
                                  "CodeSha256")
                                 (description :target-type description
                                  :member-name "Description")
                                 (revision-id :target-type string :member-name
                                  "RevisionId"))
                                (:shape-name "PublishVersionRequest"))

(smithy/sdk/shapes:define-input put-function-code-signing-config-request
                                common-lisp:nil
                                ((code-signing-config-arn :target-type
                                  code-signing-config-arn :required
                                  common-lisp:t :member-name
                                  "CodeSigningConfigArn")
                                 (function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t))
                                (:shape-name
                                 "PutFunctionCodeSigningConfigRequest"))

(smithy/sdk/shapes:define-output put-function-code-signing-config-response
                                 common-lisp:nil
                                 ((code-signing-config-arn :target-type
                                   code-signing-config-arn :required
                                   common-lisp:t :member-name
                                   "CodeSigningConfigArn")
                                  (function-name :target-type function-name
                                   :required common-lisp:t :member-name
                                   "FunctionName"))
                                 (:shape-name
                                  "PutFunctionCodeSigningConfigResponse"))

(smithy/sdk/shapes:define-input put-function-concurrency-request
                                common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (reserved-concurrent-executions :target-type
                                  reserved-concurrent-executions :required
                                  common-lisp:t :member-name
                                  "ReservedConcurrentExecutions"))
                                (:shape-name "PutFunctionConcurrencyRequest"))

(smithy/sdk/shapes:define-input put-function-event-invoke-config-request
                                common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (qualifier :target-type qualifier :member-name
                                  "Qualifier" :http-query "Qualifier")
                                 (maximum-retry-attempts :target-type
                                  maximum-retry-attempts :member-name
                                  "MaximumRetryAttempts")
                                 (maximum-event-age-in-seconds :target-type
                                  maximum-event-age-in-seconds :member-name
                                  "MaximumEventAgeInSeconds")
                                 (destination-config :target-type
                                  destination-config :member-name
                                  "DestinationConfig"))
                                (:shape-name
                                 "PutFunctionEventInvokeConfigRequest"))

(smithy/sdk/shapes:define-input put-function-recursion-config-request
                                common-lisp:nil
                                ((function-name :target-type
                                  unqualified-function-name :required
                                  common-lisp:t :member-name "FunctionName"
                                  :http-label common-lisp:t)
                                 (recursive-loop :target-type recursive-loop
                                  :required common-lisp:t :member-name
                                  "RecursiveLoop"))
                                (:shape-name
                                 "PutFunctionRecursionConfigRequest"))

(smithy/sdk/shapes:define-output put-function-recursion-config-response
                                 common-lisp:nil
                                 ((recursive-loop :target-type recursive-loop
                                   :member-name "RecursiveLoop"))
                                 (:shape-name
                                  "PutFunctionRecursionConfigResponse"))

(smithy/sdk/shapes:define-input put-provisioned-concurrency-config-request
                                common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (qualifier :target-type qualifier :required
                                  common-lisp:t :member-name "Qualifier"
                                  :http-query "Qualifier")
                                 (provisioned-concurrent-executions
                                  :target-type positive-integer :required
                                  common-lisp:t :member-name
                                  "ProvisionedConcurrentExecutions"))
                                (:shape-name
                                 "PutProvisionedConcurrencyConfigRequest"))

(smithy/sdk/shapes:define-output put-provisioned-concurrency-config-response
                                 common-lisp:nil
                                 ((requested-provisioned-concurrent-executions
                                   :target-type positive-integer :member-name
                                   "RequestedProvisionedConcurrentExecutions")
                                  (available-provisioned-concurrent-executions
                                   :target-type non-negative-integer
                                   :member-name
                                   "AvailableProvisionedConcurrentExecutions")
                                  (allocated-provisioned-concurrent-executions
                                   :target-type non-negative-integer
                                   :member-name
                                   "AllocatedProvisionedConcurrentExecutions")
                                  (status :target-type
                                   provisioned-concurrency-status-enum
                                   :member-name "Status")
                                  (status-reason :target-type string
                                   :member-name "StatusReason")
                                  (last-modified :target-type timestamp
                                   :member-name "LastModified"))
                                 (:shape-name
                                  "PutProvisionedConcurrencyConfigResponse"))

(smithy/sdk/shapes:define-input put-runtime-management-config-request
                                common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (qualifier :target-type qualifier :member-name
                                  "Qualifier" :http-query "Qualifier")
                                 (update-runtime-on :target-type
                                  update-runtime-on :required common-lisp:t
                                  :member-name "UpdateRuntimeOn")
                                 (runtime-version-arn :target-type
                                  runtime-version-arn :member-name
                                  "RuntimeVersionArn"))
                                (:shape-name
                                 "PutRuntimeManagementConfigRequest"))

(smithy/sdk/shapes:define-output put-runtime-management-config-response
                                 common-lisp:nil
                                 ((update-runtime-on :target-type
                                   update-runtime-on :required common-lisp:t
                                   :member-name "UpdateRuntimeOn")
                                  (function-arn :target-type function-arn
                                   :required common-lisp:t :member-name
                                   "FunctionArn")
                                  (runtime-version-arn :target-type
                                   runtime-version-arn :member-name
                                   "RuntimeVersionArn"))
                                 (:shape-name
                                  "PutRuntimeManagementConfigResponse"))

(smithy/sdk/shapes:define-type qualifier smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type queue smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list queues :member queue)

(smithy/sdk/shapes:define-error recursive-invocation-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "RecursiveInvocationException")
                                (:error-code 400))

(smithy/sdk/shapes:define-enum recursive-loop
    common-lisp:nil
  (:allow "Allow")
  (:terminate "Terminate"))

(smithy/sdk/shapes:define-input remove-layer-version-permission-request
                                common-lisp:nil
                                ((layer-name :target-type layer-name :required
                                  common-lisp:t :member-name "LayerName"
                                  :http-label common-lisp:t)
                                 (version-number :target-type
                                  layer-version-number :required common-lisp:t
                                  :member-name "VersionNumber" :http-label
                                  common-lisp:t)
                                 (statement-id :target-type statement-id
                                  :required common-lisp:t :member-name
                                  "StatementId" :http-label common-lisp:t)
                                 (revision-id :target-type string :member-name
                                  "RevisionId" :http-query "RevisionId"))
                                (:shape-name
                                 "RemoveLayerVersionPermissionRequest"))

(smithy/sdk/shapes:define-input remove-permission-request common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (statement-id :target-type
                                  namespaced-statement-id :required
                                  common-lisp:t :member-name "StatementId"
                                  :http-label common-lisp:t)
                                 (qualifier :target-type qualifier :member-name
                                  "Qualifier" :http-query "Qualifier")
                                 (revision-id :target-type string :member-name
                                  "RevisionId" :http-query "RevisionId"))
                                (:shape-name "RemovePermissionRequest"))

(smithy/sdk/shapes:define-error request-too-large-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "RequestTooLargeException")
                                (:error-code 413))

(smithy/sdk/shapes:define-type reserved-concurrent-executions
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type resource-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error resource-conflict-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "ResourceConflictException")
                                (:error-code 409))

(smithy/sdk/shapes:define-error resource-in-use-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceInUseException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error resource-not-found-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ResourceNotFoundException")
                                (:error-code 404))

(smithy/sdk/shapes:define-error resource-not-ready-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "ResourceNotReadyException")
                                (:error-code 502))

common-lisp:nil

(smithy/sdk/shapes:define-enum response-streaming-invocation-type
    common-lisp:nil
  (:request-response "RequestResponse")
  (:dry-run "DryRun"))

(smithy/sdk/shapes:define-type role-arn smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum runtime
    common-lisp:nil
  (:nodejs "nodejs")
  (:nodejs43 "nodejs4.3")
  (:nodejs610 "nodejs6.10")
  (:nodejs810 "nodejs8.10")
  (:nodejs10x "nodejs10.x")
  (:nodejs12x "nodejs12.x")
  (:nodejs14x "nodejs14.x")
  (:nodejs16x "nodejs16.x")
  (:java8 "java8")
  (:java8al2 "java8.al2")
  (:java11 "java11")
  (:python27 "python2.7")
  (:python36 "python3.6")
  (:python37 "python3.7")
  (:python38 "python3.8")
  (:python39 "python3.9")
  (:dotnetcore10 "dotnetcore1.0")
  (:dotnetcore20 "dotnetcore2.0")
  (:dotnetcore21 "dotnetcore2.1")
  (:dotnetcore31 "dotnetcore3.1")
  (:dotnet6 "dotnet6")
  (:dotnet8 "dotnet8")
  (:nodejs43edge "nodejs4.3-edge")
  (:go1x "go1.x")
  (:ruby25 "ruby2.5")
  (:ruby27 "ruby2.7")
  (:provided "provided")
  (:providedal2 "provided.al2")
  (:nodejs18x "nodejs18.x")
  (:python310 "python3.10")
  (:java17 "java17")
  (:ruby32 "ruby3.2")
  (:ruby33 "ruby3.3")
  (:ruby34 "ruby3.4")
  (:python311 "python3.11")
  (:nodejs20x "nodejs20.x")
  (:providedal2023 "provided.al2023")
  (:python312 "python3.12")
  (:java21 "java21")
  (:python313 "python3.13")
  (:nodejs22x "nodejs22.x"))

(smithy/sdk/shapes:define-type runtime-version-arn
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure runtime-version-config common-lisp:nil
                                    ((runtime-version-arn :target-type
                                      runtime-version-arn :member-name
                                      "RuntimeVersionArn")
                                     (error :target-type runtime-version-error
                                      :member-name "Error"))
                                    (:shape-name "RuntimeVersionConfig"))

(smithy/sdk/shapes:define-structure runtime-version-error common-lisp:nil
                                    ((error-code :target-type string
                                      :member-name "ErrorCode")
                                     (message :target-type sensitive-string
                                      :member-name "Message"))
                                    (:shape-name "RuntimeVersionError"))

(smithy/sdk/shapes:define-type s3bucket smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type s3object-version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure scaling-config common-lisp:nil
                                    ((maximum-concurrency :target-type
                                      maximum-concurrency :member-name
                                      "MaximumConcurrency"))
                                    (:shape-name "ScalingConfig"))

(smithy/sdk/shapes:define-enum schema-registry-event-record-format
    common-lisp:nil
  (:json "JSON")
  (:source "SOURCE"))

(smithy/sdk/shapes:define-type schema-registry-uri
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type security-group-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list security-group-ids :member security-group-id)

(smithy/sdk/shapes:define-structure self-managed-event-source common-lisp:nil
                                    ((endpoints :target-type endpoints
                                      :member-name "Endpoints"))
                                    (:shape-name "SelfManagedEventSource"))

(smithy/sdk/shapes:define-structure self-managed-kafka-event-source-config
                                    common-lisp:nil
                                    ((consumer-group-id :target-type uri
                                      :member-name "ConsumerGroupId")
                                     (schema-registry-config :target-type
                                      kafka-schema-registry-config :member-name
                                      "SchemaRegistryConfig"))
                                    (:shape-name
                                     "SelfManagedKafkaEventSourceConfig"))

(smithy/sdk/shapes:define-type sensitive-string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error service-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "ServiceException")
                                (:error-code 500))

(smithy/sdk/shapes:define-list signing-profile-version-arns :member arn)

(smithy/sdk/shapes:define-structure snap-start common-lisp:nil
                                    ((apply-on :target-type snap-start-apply-on
                                      :member-name "ApplyOn"))
                                    (:shape-name "SnapStart"))

(smithy/sdk/shapes:define-enum snap-start-apply-on
    common-lisp:nil
  (:published-versions "PublishedVersions")
  (:none "None"))

(smithy/sdk/shapes:define-error snap-start-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "SnapStartException")
                                (:error-code 400))

(smithy/sdk/shapes:define-error snap-start-not-ready-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "SnapStartNotReadyException")
                                (:error-code 409))

(smithy/sdk/shapes:define-enum snap-start-optimization-status
    common-lisp:nil
  (:on "On")
  (:off "Off"))

(smithy/sdk/shapes:define-structure snap-start-response common-lisp:nil
                                    ((apply-on :target-type snap-start-apply-on
                                      :member-name "ApplyOn")
                                     (optimization-status :target-type
                                      snap-start-optimization-status
                                      :member-name "OptimizationStatus"))
                                    (:shape-name "SnapStartResponse"))

(smithy/sdk/shapes:define-error snap-start-timeout-exception common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name "SnapStartTimeoutException")
                                (:error-code 408))

(smithy/sdk/shapes:define-structure source-access-configuration common-lisp:nil
                                    ((type :target-type source-access-type
                                      :member-name "Type")
                                     (uri :target-type uri :member-name "URI"))
                                    (:shape-name "SourceAccessConfiguration"))

(smithy/sdk/shapes:define-list source-access-configurations :member
                               source-access-configuration)

(smithy/sdk/shapes:define-enum source-access-type
    common-lisp:nil
  (:basic-auth "BASIC_AUTH")
  (:vpc-subnet "VPC_SUBNET")
  (:vpc-security-group "VPC_SECURITY_GROUP")
  (:sasl-scram-512-auth "SASL_SCRAM_512_AUTH")
  (:sasl-scram-256-auth "SASL_SCRAM_256_AUTH")
  (:virtual-host "VIRTUAL_HOST")
  (:client-certificate-tls-auth "CLIENT_CERTIFICATE_TLS_AUTH")
  (:server-root-ca-certificate "SERVER_ROOT_CA_CERTIFICATE"))

(smithy/sdk/shapes:define-type source-owner smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum state
    common-lisp:nil
  (:pending "Pending")
  (:active "Active")
  (:inactive "Inactive")
  (:failed "Failed"))

(smithy/sdk/shapes:define-type state-reason smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum state-reason-code
    common-lisp:nil
  (:idle "Idle")
  (:creating "Creating")
  (:restoring "Restoring")
  (:eni-limit-exceeded "EniLimitExceeded")
  (:insufficient-role-permissions "InsufficientRolePermissions")
  (:invalid-configuration "InvalidConfiguration")
  (:internal-error "InternalError")
  (:subnet-out-of-ipaddresses "SubnetOutOfIPAddresses")
  (:invalid-subnet "InvalidSubnet")
  (:invalid-security-group "InvalidSecurityGroup")
  (:image-deleted "ImageDeleted")
  (:image-access-denied "ImageAccessDenied")
  (:invalid-image "InvalidImage")
  (:kmskey-access-denied "KMSKeyAccessDenied")
  (:kmskey-not-found "KMSKeyNotFound")
  (:invalid-state-kmskey "InvalidStateKMSKey")
  (:disabled-kmskey "DisabledKMSKey")
  (:efsioerror "EFSIOError")
  (:efsmount-connectivity-error "EFSMountConnectivityError")
  (:efsmount-failure "EFSMountFailure")
  (:efsmount-timeout "EFSMountTimeout")
  (:invalid-runtime "InvalidRuntime")
  (:invalid-zip-file-exception "InvalidZipFileException")
  (:function-error "FunctionError"))

(smithy/sdk/shapes:define-type statement-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type string smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list string-list :member string)

(smithy/sdk/shapes:define-error subnet-ipaddress-limit-reached-exception
                                common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "Message"))
                                (:shape-name
                                 "SubnetIPAddressLimitReachedException")
                                (:error-code 502))

(smithy/sdk/shapes:define-type subnet-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list subnet-ids :member subnet-id)

(smithy/sdk/shapes:define-enum system-log-level
    common-lisp:nil
  (:debug "DEBUG")
  (:info "INFO")
  (:warn "WARN"))

(smithy/sdk/shapes:define-type tag-key smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list tag-key-list :member tag-key)

(smithy/sdk/shapes:define-input tag-resource-request common-lisp:nil
                                ((resource :target-type taggable-resource
                                  :required common-lisp:t :member-name
                                  "Resource" :http-label common-lisp:t)
                                 (tags :target-type tags :required
                                  common-lisp:t :member-name "Tags"))
                                (:shape-name "TagResourceRequest"))

(smithy/sdk/shapes:define-type tag-value smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type taggable-resource smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-map tags :key tag-key :value tag-value)

(smithy/sdk/shapes:define-structure tags-error common-lisp:nil
                                    ((error-code :target-type tags-error-code
                                      :required common-lisp:t :member-name
                                      "ErrorCode")
                                     (message :target-type tags-error-message
                                      :required common-lisp:t :member-name
                                      "Message"))
                                    (:shape-name "TagsError"))

(smithy/sdk/shapes:define-type tags-error-code smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type tags-error-message
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-enum throttle-reason
    common-lisp:nil
  (:concurrent-invocation-limit-exceeded "ConcurrentInvocationLimitExceeded")
  (:function-invocation-rate-limit-exceeded
   "FunctionInvocationRateLimitExceeded")
  (:reserved-function-concurrent-invocation-limit-exceeded
   "ReservedFunctionConcurrentInvocationLimitExceeded")
  (:reserved-function-invocation-rate-limit-exceeded
   "ReservedFunctionInvocationRateLimitExceeded")
  (:caller-rate-limit-exceeded "CallerRateLimitExceeded")
  (:concurrent-snapshot-create-limit-exceeded
   "ConcurrentSnapshotCreateLimitExceeded"))

(smithy/sdk/shapes:define-type timeout smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type timestamp smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-error too-many-requests-exception common-lisp:nil
                                ((retry-after-seconds :target-type string
                                  :member-name "retryAfterSeconds" :http-header
                                  "Retry-After")
                                 (type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "message")
                                 (reason :target-type throttle-reason
                                  :member-name "Reason"))
                                (:shape-name "TooManyRequestsException")
                                (:error-code 429))

(smithy/sdk/shapes:define-type topic smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-list topics :member topic)

(smithy/sdk/shapes:define-structure tracing-config common-lisp:nil
                                    ((mode :target-type tracing-mode
                                      :member-name "Mode"))
                                    (:shape-name "TracingConfig"))

(smithy/sdk/shapes:define-structure tracing-config-response common-lisp:nil
                                    ((mode :target-type tracing-mode
                                      :member-name "Mode"))
                                    (:shape-name "TracingConfigResponse"))

(smithy/sdk/shapes:define-enum tracing-mode
    common-lisp:nil
  (:active "Active")
  (:pass-through "PassThrough"))

(smithy/sdk/shapes:define-type tumbling-window-in-seconds
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-type uri smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type unqualified-function-name
                               smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type unreserved-concurrent-executions
                               smithy/sdk/smithy-types:integer)

(smithy/sdk/shapes:define-error unsupported-media-type-exception
                                common-lisp:nil
                                ((type :target-type string :member-name "Type")
                                 (message :target-type string :member-name
                                  "message"))
                                (:shape-name "UnsupportedMediaTypeException")
                                (:error-code 415))

(smithy/sdk/shapes:define-input untag-resource-request common-lisp:nil
                                ((resource :target-type taggable-resource
                                  :required common-lisp:t :member-name
                                  "Resource" :http-label common-lisp:t)
                                 (tag-keys :target-type tag-key-list :required
                                  common-lisp:t :member-name "TagKeys"
                                  :http-query "tagKeys"))
                                (:shape-name "UntagResourceRequest"))

(smithy/sdk/shapes:define-input update-alias-request common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (name :target-type alias :required
                                  common-lisp:t :member-name "Name" :http-label
                                  common-lisp:t)
                                 (function-version :target-type version
                                  :member-name "FunctionVersion")
                                 (description :target-type description
                                  :member-name "Description")
                                 (routing-config :target-type
                                  alias-routing-configuration :member-name
                                  "RoutingConfig")
                                 (revision-id :target-type string :member-name
                                  "RevisionId"))
                                (:shape-name "UpdateAliasRequest"))

(smithy/sdk/shapes:define-input update-code-signing-config-request
                                common-lisp:nil
                                ((code-signing-config-arn :target-type
                                  code-signing-config-arn :required
                                  common-lisp:t :member-name
                                  "CodeSigningConfigArn" :http-label
                                  common-lisp:t)
                                 (description :target-type description
                                  :member-name "Description")
                                 (allowed-publishers :target-type
                                  allowed-publishers :member-name
                                  "AllowedPublishers")
                                 (code-signing-policies :target-type
                                  code-signing-policies :member-name
                                  "CodeSigningPolicies"))
                                (:shape-name "UpdateCodeSigningConfigRequest"))

(smithy/sdk/shapes:define-output update-code-signing-config-response
                                 common-lisp:nil
                                 ((code-signing-config :target-type
                                   code-signing-config :required common-lisp:t
                                   :member-name "CodeSigningConfig"))
                                 (:shape-name
                                  "UpdateCodeSigningConfigResponse"))

(smithy/sdk/shapes:define-input update-event-source-mapping-request
                                common-lisp:nil
                                ((uuid :target-type string :required
                                  common-lisp:t :member-name "UUID" :http-label
                                  common-lisp:t)
                                 (function-name :target-type function-name
                                  :member-name "FunctionName")
                                 (enabled :target-type enabled :member-name
                                  "Enabled")
                                 (batch-size :target-type batch-size
                                  :member-name "BatchSize")
                                 (filter-criteria :target-type filter-criteria
                                  :member-name "FilterCriteria")
                                 (maximum-batching-window-in-seconds
                                  :target-type
                                  maximum-batching-window-in-seconds
                                  :member-name
                                  "MaximumBatchingWindowInSeconds")
                                 (destination-config :target-type
                                  destination-config :member-name
                                  "DestinationConfig")
                                 (maximum-record-age-in-seconds :target-type
                                  maximum-record-age-in-seconds :member-name
                                  "MaximumRecordAgeInSeconds")
                                 (bisect-batch-on-function-error :target-type
                                  bisect-batch-on-function-error :member-name
                                  "BisectBatchOnFunctionError")
                                 (maximum-retry-attempts :target-type
                                  maximum-retry-attempts-event-source-mapping
                                  :member-name "MaximumRetryAttempts")
                                 (parallelization-factor :target-type
                                  parallelization-factor :member-name
                                  "ParallelizationFactor")
                                 (source-access-configurations :target-type
                                  source-access-configurations :member-name
                                  "SourceAccessConfigurations")
                                 (tumbling-window-in-seconds :target-type
                                  tumbling-window-in-seconds :member-name
                                  "TumblingWindowInSeconds")
                                 (function-response-types :target-type
                                  function-response-type-list :member-name
                                  "FunctionResponseTypes")
                                 (scaling-config :target-type scaling-config
                                  :member-name "ScalingConfig")
                                 (amazon-managed-kafka-event-source-config
                                  :target-type
                                  amazon-managed-kafka-event-source-config
                                  :member-name
                                  "AmazonManagedKafkaEventSourceConfig")
                                 (self-managed-kafka-event-source-config
                                  :target-type
                                  self-managed-kafka-event-source-config
                                  :member-name
                                  "SelfManagedKafkaEventSourceConfig")
                                 (document-dbevent-source-config :target-type
                                  document-dbevent-source-config :member-name
                                  "DocumentDBEventSourceConfig")
                                 (kmskey-arn :target-type kmskey-arn
                                  :member-name "KMSKeyArn")
                                 (metrics-config :target-type
                                  event-source-mapping-metrics-config
                                  :member-name "MetricsConfig")
                                 (provisioned-poller-config :target-type
                                  provisioned-poller-config :member-name
                                  "ProvisionedPollerConfig"))
                                (:shape-name "UpdateEventSourceMappingRequest"))

(smithy/sdk/shapes:define-input update-function-code-request common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (zip-file :target-type blob :member-name
                                  "ZipFile")
                                 (s3bucket :target-type s3bucket :member-name
                                  "S3Bucket")
                                 (s3key :target-type s3key :member-name
                                  "S3Key")
                                 (s3object-version :target-type
                                  s3object-version :member-name
                                  "S3ObjectVersion")
                                 (image-uri :target-type string :member-name
                                  "ImageUri")
                                 (publish :target-type boolean :member-name
                                  "Publish")
                                 (dry-run :target-type boolean :member-name
                                  "DryRun")
                                 (revision-id :target-type string :member-name
                                  "RevisionId")
                                 (architectures :target-type architectures-list
                                  :member-name "Architectures")
                                 (source-kmskey-arn :target-type kmskey-arn
                                  :member-name "SourceKMSKeyArn"))
                                (:shape-name "UpdateFunctionCodeRequest"))

(smithy/sdk/shapes:define-input update-function-configuration-request
                                common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (role :target-type role-arn :member-name
                                  "Role")
                                 (handler :target-type handler :member-name
                                  "Handler")
                                 (description :target-type description
                                  :member-name "Description")
                                 (timeout :target-type timeout :member-name
                                  "Timeout")
                                 (memory-size :target-type memory-size
                                  :member-name "MemorySize")
                                 (vpc-config :target-type vpc-config
                                  :member-name "VpcConfig")
                                 (environment :target-type environment
                                  :member-name "Environment")
                                 (runtime :target-type runtime :member-name
                                  "Runtime")
                                 (dead-letter-config :target-type
                                  dead-letter-config :member-name
                                  "DeadLetterConfig")
                                 (kmskey-arn :target-type kmskey-arn
                                  :member-name "KMSKeyArn")
                                 (tracing-config :target-type tracing-config
                                  :member-name "TracingConfig")
                                 (revision-id :target-type string :member-name
                                  "RevisionId")
                                 (layers :target-type layer-list :member-name
                                  "Layers")
                                 (file-system-configs :target-type
                                  file-system-config-list :member-name
                                  "FileSystemConfigs")
                                 (image-config :target-type image-config
                                  :member-name "ImageConfig")
                                 (ephemeral-storage :target-type
                                  ephemeral-storage :member-name
                                  "EphemeralStorage")
                                 (snap-start :target-type snap-start
                                  :member-name "SnapStart")
                                 (logging-config :target-type logging-config
                                  :member-name "LoggingConfig"))
                                (:shape-name
                                 "UpdateFunctionConfigurationRequest"))

(smithy/sdk/shapes:define-input update-function-event-invoke-config-request
                                common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (qualifier :target-type qualifier :member-name
                                  "Qualifier" :http-query "Qualifier")
                                 (maximum-retry-attempts :target-type
                                  maximum-retry-attempts :member-name
                                  "MaximumRetryAttempts")
                                 (maximum-event-age-in-seconds :target-type
                                  maximum-event-age-in-seconds :member-name
                                  "MaximumEventAgeInSeconds")
                                 (destination-config :target-type
                                  destination-config :member-name
                                  "DestinationConfig"))
                                (:shape-name
                                 "UpdateFunctionEventInvokeConfigRequest"))

(smithy/sdk/shapes:define-input update-function-url-config-request
                                common-lisp:nil
                                ((function-name :target-type function-name
                                  :required common-lisp:t :member-name
                                  "FunctionName" :http-label common-lisp:t)
                                 (qualifier :target-type function-url-qualifier
                                  :member-name "Qualifier" :http-query
                                  "Qualifier")
                                 (auth-type :target-type function-url-auth-type
                                  :member-name "AuthType")
                                 (cors :target-type cors :member-name "Cors")
                                 (invoke-mode :target-type invoke-mode
                                  :member-name "InvokeMode"))
                                (:shape-name "UpdateFunctionUrlConfigRequest"))

(smithy/sdk/shapes:define-output update-function-url-config-response
                                 common-lisp:nil
                                 ((function-url :target-type function-url
                                   :required common-lisp:t :member-name
                                   "FunctionUrl")
                                  (function-arn :target-type function-arn
                                   :required common-lisp:t :member-name
                                   "FunctionArn")
                                  (auth-type :target-type
                                   function-url-auth-type :required
                                   common-lisp:t :member-name "AuthType")
                                  (cors :target-type cors :member-name "Cors")
                                  (creation-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "CreationTime")
                                  (last-modified-time :target-type timestamp
                                   :required common-lisp:t :member-name
                                   "LastModifiedTime")
                                  (invoke-mode :target-type invoke-mode
                                   :member-name "InvokeMode"))
                                 (:shape-name
                                  "UpdateFunctionUrlConfigResponse"))

(smithy/sdk/shapes:define-enum update-runtime-on
    common-lisp:nil
  (:auto "Auto")
  (:manual "Manual")
  (:function-update "FunctionUpdate"))

(smithy/sdk/shapes:define-type version smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-structure vpc-config common-lisp:nil
                                    ((subnet-ids :target-type subnet-ids
                                      :member-name "SubnetIds")
                                     (security-group-ids :target-type
                                      security-group-ids :member-name
                                      "SecurityGroupIds")
                                     (ipv6allowed-for-dual-stack :target-type
                                      nullable-boolean :member-name
                                      "Ipv6AllowedForDualStack"))
                                    (:shape-name "VpcConfig"))

(smithy/sdk/shapes:define-structure vpc-config-response common-lisp:nil
                                    ((subnet-ids :target-type subnet-ids
                                      :member-name "SubnetIds")
                                     (security-group-ids :target-type
                                      security-group-ids :member-name
                                      "SecurityGroupIds")
                                     (vpc-id :target-type vpc-id :member-name
                                      "VpcId")
                                     (ipv6allowed-for-dual-stack :target-type
                                      nullable-boolean :member-name
                                      "Ipv6AllowedForDualStack"))
                                    (:shape-name "VpcConfigResponse"))

(smithy/sdk/shapes:define-type vpc-id smithy/sdk/smithy-types:string)

(smithy/sdk/shapes:define-type weight smithy/sdk/smithy-types:double)

(smithy/sdk/shapes:define-type working-directory smithy/sdk/smithy-types:string)

(smithy/sdk/operation:define-operation add-layer-version-permission :shape-name
                                       "AddLayerVersionPermission" :input
                                       add-layer-version-permission-request
                                       :output
                                       add-layer-version-permission-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        policy-length-exceeded-exception
                                        precondition-failed-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy"
                                       :code 201)

(smithy/sdk/operation:define-operation add-permission :shape-name
                                       "AddPermission" :input
                                       add-permission-request :output
                                       add-permission-response :errors
                                       (invalid-parameter-value-exception
                                        policy-length-exceeded-exception
                                        precondition-failed-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/2015-03-31/functions/{FunctionName}/policy"
                                       :code 201)

(smithy/sdk/operation:define-operation create-alias :shape-name "CreateAlias"
                                       :input create-alias-request :output
                                       alias-configuration :errors
                                       (invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/2015-03-31/functions/{FunctionName}/aliases"
                                       :code 201)

(smithy/sdk/operation:define-operation create-code-signing-config :shape-name
                                       "CreateCodeSigningConfig" :input
                                       create-code-signing-config-request
                                       :output
                                       create-code-signing-config-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        service-exception)
                                       :method "POST" :uri
                                       "/2020-04-22/code-signing-configs" :code
                                       201)

(smithy/sdk/operation:define-operation create-event-source-mapping :shape-name
                                       "CreateEventSourceMapping" :input
                                       create-event-source-mapping-request
                                       :output
                                       event-source-mapping-configuration
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/2015-03-31/event-source-mappings"
                                       :code 202)

(smithy/sdk/operation:define-operation create-function :shape-name
                                       "CreateFunction" :input
                                       create-function-request :output
                                       function-configuration :errors
                                       (code-signing-config-not-found-exception
                                        code-storage-exceeded-exception
                                        code-verification-failed-exception
                                        invalid-code-signature-exception
                                        invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/2015-03-31/functions" :code 201)

(smithy/sdk/operation:define-operation create-function-url-config :shape-name
                                       "CreateFunctionUrlConfig" :input
                                       create-function-url-config-request
                                       :output
                                       create-function-url-config-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/2021-10-31/functions/{FunctionName}/url"
                                       :code 201)

(smithy/sdk/operation:define-operation delete-alias :shape-name "DeleteAlias"
                                       :input delete-alias-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        resource-conflict-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/2015-03-31/functions/{FunctionName}/aliases/{Name}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-code-signing-config :shape-name
                                       "DeleteCodeSigningConfig" :input
                                       delete-code-signing-config-request
                                       :output
                                       delete-code-signing-config-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception)
                                       :method "DELETE" :uri
                                       "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-event-source-mapping :shape-name
                                       "DeleteEventSourceMapping" :input
                                       delete-event-source-mapping-request
                                       :output
                                       event-source-mapping-configuration
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/2015-03-31/event-source-mappings/{UUID}"
                                       :code 202)

(smithy/sdk/operation:define-operation delete-function :shape-name
                                       "DeleteFunction" :input
                                       delete-function-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/2015-03-31/functions/{FunctionName}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-function-code-signing-config
                                       :shape-name
                                       "DeleteFunctionCodeSigningConfig" :input
                                       delete-function-code-signing-config-request
                                       :output common-lisp:null :errors
                                       (code-signing-config-not-found-exception
                                        invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/2020-06-30/functions/{FunctionName}/code-signing-config"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-function-concurrency :shape-name
                                       "DeleteFunctionConcurrency" :input
                                       delete-function-concurrency-request
                                       :output common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/2017-10-31/functions/{FunctionName}/concurrency"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-function-event-invoke-config
                                       :shape-name
                                       "DeleteFunctionEventInvokeConfig" :input
                                       delete-function-event-invoke-config-request
                                       :output common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/2019-09-25/functions/{FunctionName}/event-invoke-config"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-function-url-config :shape-name
                                       "DeleteFunctionUrlConfig" :input
                                       delete-function-url-config-request
                                       :output common-lisp:null :errors
                                       (resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/2021-10-31/functions/{FunctionName}/url"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-layer-version :shape-name
                                       "DeleteLayerVersion" :input
                                       delete-layer-version-request :output
                                       common-lisp:null :errors
                                       (service-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}"
                                       :code 204)

(smithy/sdk/operation:define-operation delete-provisioned-concurrency-config
                                       :shape-name
                                       "DeleteProvisionedConcurrencyConfig"
                                       :input
                                       delete-provisioned-concurrency-config-request
                                       :output common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/2019-09-30/functions/{FunctionName}/provisioned-concurrency"
                                       :code 204)

(smithy/sdk/operation:define-operation get-account-settings :shape-name
                                       "GetAccountSettings" :input
                                       get-account-settings-request :output
                                       get-account-settings-response :errors
                                       (service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2016-08-19/account-settings" :code 200)

(smithy/sdk/operation:define-operation get-alias :shape-name "GetAlias" :input
                                       get-alias-request :output
                                       alias-configuration :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2015-03-31/functions/{FunctionName}/aliases/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-code-signing-config :shape-name
                                       "GetCodeSigningConfig" :input
                                       get-code-signing-config-request :output
                                       get-code-signing-config-response :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception)
                                       :method "GET" :uri
                                       "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-event-source-mapping :shape-name
                                       "GetEventSourceMapping" :input
                                       get-event-source-mapping-request :output
                                       event-source-mapping-configuration
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2015-03-31/event-source-mappings/{UUID}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-function :shape-name "GetFunction"
                                       :input get-function-request :output
                                       get-function-response :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2015-03-31/functions/{FunctionName}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-function-code-signing-config
                                       :shape-name
                                       "GetFunctionCodeSigningConfig" :input
                                       get-function-code-signing-config-request
                                       :output
                                       get-function-code-signing-config-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2020-06-30/functions/{FunctionName}/code-signing-config"
                                       :code 200)

(smithy/sdk/operation:define-operation get-function-concurrency :shape-name
                                       "GetFunctionConcurrency" :input
                                       get-function-concurrency-request :output
                                       get-function-concurrency-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2019-09-30/functions/{FunctionName}/concurrency"
                                       :code 200)

(smithy/sdk/operation:define-operation get-function-configuration :shape-name
                                       "GetFunctionConfiguration" :input
                                       get-function-configuration-request
                                       :output function-configuration :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2015-03-31/functions/{FunctionName}/configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation get-function-event-invoke-config
                                       :shape-name
                                       "GetFunctionEventInvokeConfig" :input
                                       get-function-event-invoke-config-request
                                       :output function-event-invoke-config
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2019-09-25/functions/{FunctionName}/event-invoke-config"
                                       :code 200)

(smithy/sdk/operation:define-operation get-function-recursion-config
                                       :shape-name "GetFunctionRecursionConfig"
                                       :input
                                       get-function-recursion-config-request
                                       :output
                                       get-function-recursion-config-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2024-08-31/functions/{FunctionName}/recursion-config"
                                       :code 200)

(smithy/sdk/operation:define-operation get-function-url-config :shape-name
                                       "GetFunctionUrlConfig" :input
                                       get-function-url-config-request :output
                                       get-function-url-config-response :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2021-10-31/functions/{FunctionName}/url"
                                       :code 200)

(smithy/sdk/operation:define-operation get-layer-version :shape-name
                                       "GetLayerVersion" :input
                                       get-layer-version-request :output
                                       get-layer-version-response :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}"
                                       :code 200)

(smithy/sdk/operation:define-operation get-layer-version-by-arn :shape-name
                                       "GetLayerVersionByArn" :input
                                       get-layer-version-by-arn-request :output
                                       get-layer-version-response :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2018-10-31/layers?find=LayerVersion"
                                       :code 200)

(smithy/sdk/operation:define-operation get-layer-version-policy :shape-name
                                       "GetLayerVersionPolicy" :input
                                       get-layer-version-policy-request :output
                                       get-layer-version-policy-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation get-policy :shape-name "GetPolicy"
                                       :input get-policy-request :output
                                       get-policy-response :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2015-03-31/functions/{FunctionName}/policy"
                                       :code 200)

(smithy/sdk/operation:define-operation get-provisioned-concurrency-config
                                       :shape-name
                                       "GetProvisionedConcurrencyConfig" :input
                                       get-provisioned-concurrency-config-request
                                       :output
                                       get-provisioned-concurrency-config-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        provisioned-concurrency-config-not-found-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2019-09-30/functions/{FunctionName}/provisioned-concurrency"
                                       :code 200)

(smithy/sdk/operation:define-operation get-runtime-management-config
                                       :shape-name "GetRuntimeManagementConfig"
                                       :input
                                       get-runtime-management-config-request
                                       :output
                                       get-runtime-management-config-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2021-07-20/functions/{FunctionName}/runtime-management-config"
                                       :code 200)

(smithy/sdk/operation:define-operation invoke :shape-name "Invoke" :input
                                       invocation-request :output
                                       invocation-response :errors
                                       (ec2access-denied-exception
                                        ec2throttled-exception
                                        ec2unexpected-exception efsioexception
                                        efsmount-connectivity-exception
                                        efsmount-failure-exception
                                        efsmount-timeout-exception
                                        enilimit-reached-exception
                                        invalid-parameter-value-exception
                                        invalid-request-content-exception
                                        invalid-runtime-exception
                                        invalid-security-group-idexception
                                        invalid-subnet-idexception
                                        invalid-zip-file-exception
                                        kmsaccess-denied-exception
                                        kmsdisabled-exception
                                        kmsinvalid-state-exception
                                        kmsnot-found-exception
                                        recursive-invocation-exception
                                        request-too-large-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        resource-not-ready-exception
                                        service-exception snap-start-exception
                                        snap-start-not-ready-exception
                                        snap-start-timeout-exception
                                        subnet-ipaddress-limit-reached-exception
                                        too-many-requests-exception
                                        unsupported-media-type-exception)
                                       :method "POST" :uri
                                       "/2015-03-31/functions/{FunctionName}/invocations"
                                       :code 200)

(smithy/sdk/operation:define-operation invoke-async :shape-name "InvokeAsync"
                                       :input invoke-async-request :output
                                       invoke-async-response :errors
                                       (invalid-request-content-exception
                                        invalid-runtime-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception)
                                       :method "POST" :uri
                                       "/2014-11-13/functions/{FunctionName}/invoke-async"
                                       :code 202)

(smithy/sdk/operation:define-operation invoke-with-response-stream :shape-name
                                       "InvokeWithResponseStream" :input
                                       invoke-with-response-stream-request
                                       :output
                                       invoke-with-response-stream-response
                                       :errors
                                       (ec2access-denied-exception
                                        ec2throttled-exception
                                        ec2unexpected-exception efsioexception
                                        efsmount-connectivity-exception
                                        efsmount-failure-exception
                                        efsmount-timeout-exception
                                        enilimit-reached-exception
                                        invalid-parameter-value-exception
                                        invalid-request-content-exception
                                        invalid-runtime-exception
                                        invalid-security-group-idexception
                                        invalid-subnet-idexception
                                        invalid-zip-file-exception
                                        kmsaccess-denied-exception
                                        kmsdisabled-exception
                                        kmsinvalid-state-exception
                                        kmsnot-found-exception
                                        recursive-invocation-exception
                                        request-too-large-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        resource-not-ready-exception
                                        service-exception snap-start-exception
                                        snap-start-not-ready-exception
                                        snap-start-timeout-exception
                                        subnet-ipaddress-limit-reached-exception
                                        too-many-requests-exception
                                        unsupported-media-type-exception)
                                       :method "POST" :uri
                                       "/2021-11-15/functions/{FunctionName}/response-streaming-invocations"
                                       :code 200)

(smithy/sdk/operation:define-operation list-aliases :shape-name "ListAliases"
                                       :input list-aliases-request :output
                                       list-aliases-response :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2015-03-31/functions/{FunctionName}/aliases"
                                       :code 200)

(smithy/sdk/operation:define-operation list-code-signing-configs :shape-name
                                       "ListCodeSigningConfigs" :input
                                       list-code-signing-configs-request
                                       :output
                                       list-code-signing-configs-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        service-exception)
                                       :method "GET" :uri
                                       "/2020-04-22/code-signing-configs" :code
                                       200)

(smithy/sdk/operation:define-operation list-event-source-mappings :shape-name
                                       "ListEventSourceMappings" :input
                                       list-event-source-mappings-request
                                       :output
                                       list-event-source-mappings-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2015-03-31/event-source-mappings"
                                       :code 200)

(smithy/sdk/operation:define-operation list-function-event-invoke-configs
                                       :shape-name
                                       "ListFunctionEventInvokeConfigs" :input
                                       list-function-event-invoke-configs-request
                                       :output
                                       list-function-event-invoke-configs-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2019-09-25/functions/{FunctionName}/event-invoke-config/list"
                                       :code 200)

(smithy/sdk/operation:define-operation list-function-url-configs :shape-name
                                       "ListFunctionUrlConfigs" :input
                                       list-function-url-configs-request
                                       :output
                                       list-function-url-configs-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2021-10-31/functions/{FunctionName}/urls"
                                       :code 200)

(smithy/sdk/operation:define-operation list-functions :shape-name
                                       "ListFunctions" :input
                                       list-functions-request :output
                                       list-functions-response :errors
                                       (invalid-parameter-value-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2015-03-31/functions" :code 200)

(smithy/sdk/operation:define-operation list-functions-by-code-signing-config
                                       :shape-name
                                       "ListFunctionsByCodeSigningConfig"
                                       :input
                                       list-functions-by-code-signing-config-request
                                       :output
                                       list-functions-by-code-signing-config-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception)
                                       :method "GET" :uri
                                       "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}/functions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-layer-versions :shape-name
                                       "ListLayerVersions" :input
                                       list-layer-versions-request :output
                                       list-layer-versions-response :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2018-10-31/layers/{LayerName}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation list-layers :shape-name "ListLayers"
                                       :input list-layers-request :output
                                       list-layers-response :errors
                                       (invalid-parameter-value-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri "/2018-10-31/layers"
                                       :code 200)

(smithy/sdk/operation:define-operation list-provisioned-concurrency-configs
                                       :shape-name
                                       "ListProvisionedConcurrencyConfigs"
                                       :input
                                       list-provisioned-concurrency-configs-request
                                       :output
                                       list-provisioned-concurrency-configs-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2019-09-30/functions/{FunctionName}/provisioned-concurrency?List=ALL"
                                       :code 200)

(smithy/sdk/operation:define-operation list-tags :shape-name "ListTags" :input
                                       list-tags-request :output
                                       list-tags-response :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2017-03-31/tags/{Resource}" :code 200)

(smithy/sdk/operation:define-operation list-versions-by-function :shape-name
                                       "ListVersionsByFunction" :input
                                       list-versions-by-function-request
                                       :output
                                       list-versions-by-function-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "GET" :uri
                                       "/2015-03-31/functions/{FunctionName}/versions"
                                       :code 200)

(smithy/sdk/operation:define-operation publish-layer-version :shape-name
                                       "PublishLayerVersion" :input
                                       publish-layer-version-request :output
                                       publish-layer-version-response :errors
                                       (code-storage-exceeded-exception
                                        invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/2018-10-31/layers/{LayerName}/versions"
                                       :code 201)

(smithy/sdk/operation:define-operation publish-version :shape-name
                                       "PublishVersion" :input
                                       publish-version-request :output
                                       function-configuration :errors
                                       (code-storage-exceeded-exception
                                        invalid-parameter-value-exception
                                        precondition-failed-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/2015-03-31/functions/{FunctionName}/versions"
                                       :code 201)

(smithy/sdk/operation:define-operation put-function-code-signing-config
                                       :shape-name
                                       "PutFunctionCodeSigningConfig" :input
                                       put-function-code-signing-config-request
                                       :output
                                       put-function-code-signing-config-response
                                       :errors
                                       (code-signing-config-not-found-exception
                                        invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/2020-06-30/functions/{FunctionName}/code-signing-config"
                                       :code 200)

(smithy/sdk/operation:define-operation put-function-concurrency :shape-name
                                       "PutFunctionConcurrency" :input
                                       put-function-concurrency-request :output
                                       concurrency :errors
                                       (invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/2017-10-31/functions/{FunctionName}/concurrency"
                                       :code 200)

(smithy/sdk/operation:define-operation put-function-event-invoke-config
                                       :shape-name
                                       "PutFunctionEventInvokeConfig" :input
                                       put-function-event-invoke-config-request
                                       :output function-event-invoke-config
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/2019-09-25/functions/{FunctionName}/event-invoke-config"
                                       :code 200)

(smithy/sdk/operation:define-operation put-function-recursion-config
                                       :shape-name "PutFunctionRecursionConfig"
                                       :input
                                       put-function-recursion-config-request
                                       :output
                                       put-function-recursion-config-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/2024-08-31/functions/{FunctionName}/recursion-config"
                                       :code 200)

(smithy/sdk/operation:define-operation put-provisioned-concurrency-config
                                       :shape-name
                                       "PutProvisionedConcurrencyConfig" :input
                                       put-provisioned-concurrency-config-request
                                       :output
                                       put-provisioned-concurrency-config-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/2019-09-30/functions/{FunctionName}/provisioned-concurrency"
                                       :code 202)

(smithy/sdk/operation:define-operation put-runtime-management-config
                                       :shape-name "PutRuntimeManagementConfig"
                                       :input
                                       put-runtime-management-config-request
                                       :output
                                       put-runtime-management-config-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/2021-07-20/functions/{FunctionName}/runtime-management-config"
                                       :code 200)

(smithy/sdk/operation:define-operation remove-layer-version-permission
                                       :shape-name
                                       "RemoveLayerVersionPermission" :input
                                       remove-layer-version-permission-request
                                       :output common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        precondition-failed-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/2018-10-31/layers/{LayerName}/versions/{VersionNumber}/policy/{StatementId}"
                                       :code 204)

(smithy/sdk/operation:define-operation remove-permission :shape-name
                                       "RemovePermission" :input
                                       remove-permission-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        precondition-failed-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/2015-03-31/functions/{FunctionName}/policy/{StatementId}"
                                       :code 204)

(smithy/sdk/operation:define-operation tag-resource :shape-name "TagResource"
                                       :input tag-resource-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/2017-03-31/tags/{Resource}" :code 204)

(smithy/sdk/operation:define-operation untag-resource :shape-name
                                       "UntagResource" :input
                                       untag-resource-request :output
                                       common-lisp:null :errors
                                       (invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "DELETE" :uri
                                       "/2017-03-31/tags/{Resource}" :code 204)

(smithy/sdk/operation:define-operation update-alias :shape-name "UpdateAlias"
                                       :input update-alias-request :output
                                       alias-configuration :errors
                                       (invalid-parameter-value-exception
                                        precondition-failed-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/2015-03-31/functions/{FunctionName}/aliases/{Name}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-code-signing-config :shape-name
                                       "UpdateCodeSigningConfig" :input
                                       update-code-signing-config-request
                                       :output
                                       update-code-signing-config-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-not-found-exception
                                        service-exception)
                                       :method "PUT" :uri
                                       "/2020-04-22/code-signing-configs/{CodeSigningConfigArn}"
                                       :code 200)

(smithy/sdk/operation:define-operation update-event-source-mapping :shape-name
                                       "UpdateEventSourceMapping" :input
                                       update-event-source-mapping-request
                                       :output
                                       event-source-mapping-configuration
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-in-use-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/2015-03-31/event-source-mappings/{UUID}"
                                       :code 202)

(smithy/sdk/operation:define-operation update-function-code :shape-name
                                       "UpdateFunctionCode" :input
                                       update-function-code-request :output
                                       function-configuration :errors
                                       (code-signing-config-not-found-exception
                                        code-storage-exceeded-exception
                                        code-verification-failed-exception
                                        invalid-code-signature-exception
                                        invalid-parameter-value-exception
                                        precondition-failed-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/2015-03-31/functions/{FunctionName}/code"
                                       :code 200)

(smithy/sdk/operation:define-operation update-function-configuration
                                       :shape-name
                                       "UpdateFunctionConfiguration" :input
                                       update-function-configuration-request
                                       :output function-configuration :errors
                                       (code-signing-config-not-found-exception
                                        code-verification-failed-exception
                                        invalid-code-signature-exception
                                        invalid-parameter-value-exception
                                        precondition-failed-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/2015-03-31/functions/{FunctionName}/configuration"
                                       :code 200)

(smithy/sdk/operation:define-operation update-function-event-invoke-config
                                       :shape-name
                                       "UpdateFunctionEventInvokeConfig" :input
                                       update-function-event-invoke-config-request
                                       :output function-event-invoke-config
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "POST" :uri
                                       "/2019-09-25/functions/{FunctionName}/event-invoke-config"
                                       :code 200)

(smithy/sdk/operation:define-operation update-function-url-config :shape-name
                                       "UpdateFunctionUrlConfig" :input
                                       update-function-url-config-request
                                       :output
                                       update-function-url-config-response
                                       :errors
                                       (invalid-parameter-value-exception
                                        resource-conflict-exception
                                        resource-not-found-exception
                                        service-exception
                                        too-many-requests-exception)
                                       :method "PUT" :uri
                                       "/2021-10-31/functions/{FunctionName}/url"
                                       :code 200)
